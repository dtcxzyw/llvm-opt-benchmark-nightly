Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_afftdn?download=true
inline.NumInlined: 43
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 54
begin_hunk_0_@activate:bb.a
  %wide.load106 = load <2 x double>, ptr %i.fh, align 8, !tbaa !68
  %i.fi = fmul nsz <2 x double> %wide.load103, %wide.load105
  %i.fj = fmul nsz <2 x double> %wide.load104, %wide.load106
  %i.fk = fmul nsz <2 x double> %i.fi, splat (double f0x4160000000000000)
  %i.fl = fmul nsz <2 x double> %i.fj, splat (double f0x4160000000000000)
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %index102 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store <2 x double> %i.fk, ptr %i.fm, align 8, !tbaa !68
  store <2 x double> %i.fl, ptr %i.fn, align 8, !tbaa !68
  %index.next107 = add nuw i64 %index102, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next107, %n.vec100
  br i1 %i.fo, label %middle.block108, label %vector.body101, !llvm.loop !112

middle.block108:                                  ; preds = %vector.body101
  %cmp.n109 = icmp eq i64 %n.vec100, %wide.trip.count.i.i
  br i1 %cmp.n109, label %.preheader2.i.i, label %scalar.ph97.preheader

scalar.ph97.preheader:                            ; preds = %vector.memcheck94, %.lr.ph.i.i, %middle.block108
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck94 ], [ 0, %.lr.ph.i.i ], [ %n.vec100, %middle.block108 ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph97.prol.loopexit, label %scalar.ph97.prol

scalar.ph97.prol:                                 ; preds = %scalar.ph97.preheader
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i.i.ph
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !68
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.i.i.ph
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !68
  %i.ft = fmul nsz double %i.fq, %i.fs
  %i.fu = fmul nsz double %i.ft, f0x4160000000000000
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i.i.ph
  store double %i.fu, ptr %i.fv, align 8, !tbaa !68
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph97.prol.loopexit

scalar.ph97.prol.loopexit:                        ; preds = %scalar.ph97.prol, %scalar.ph97.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph97.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph97.prol ]
  %i.fw = add nsw i64 %wide.trip.count.i.i, -1
  %i.fx = icmp eq i64 %indvars.iv.i.i.ph, %i.fw
  br i1 %i.fx, label %.preheader2.i.i, label %scalar.ph97

.preheader1.i.i:                                  ; preds = %bb.r
  %i.fy = load i32, ptr %i.ag, align 8, !tbaa !52 ; 5 uses
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %.lr.ph10.i.i, label %.preheader.i.i

.lr.ph10.i.i:                                     ; preds = %.preheader1.i.i
  %i.ga = load ptr, ptr %i.ec, align 8, !tbaa !67 ; 4 uses
  %wide.trip.count39.i.i = zext nneg i32 %i.fy to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.fy, 4
  %i.gb = sub i64 %i.er, %i.ew
  %diff.check = icmp ugt i64 %i.gb, -16
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph10.i.i
  %n.vec = and i64 %wide.trip.count39.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %index ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %wide.load = load <2 x double>, ptr %i.gc, align 8, !tbaa !68
  %wide.load91 = load <2 x double>, ptr %i.gd, align 8, !tbaa !68
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %index ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %wide.load92 = load <2 x float>, ptr %i.ge, align 4, !tbaa !71
  %wide.load93 = load <2 x float>, ptr %i.gf, align 4, !tbaa !71
  %i.gg = fpext nsz <2 x float> %wide.load92 to <2 x double>
  %i.gh = fpext nsz <2 x float> %wide.load93 to <2 x double>
  %i.gi = fmul nsz <2 x double> %wide.load, %i.gg
  %i.gj = fmul nsz <2 x double> %wide.load91, %i.gh
  %i.gk = fmul nsz <2 x double> %i.gi, splat (double f0x4160000000000000)
  %i.gl = fmul nsz <2 x double> %i.gj, splat (double f0x4160000000000000)
  %i.gm = fptrunc nsz <2 x double> %i.gk to <2 x float>
  %i.gn = fptrunc nsz <2 x double> %i.gl to <2 x float>
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store <2 x float> %i.gm, ptr %i.go, align 4, !tbaa !71
  store <2 x float> %i.gn, ptr %i.gp, align 4, !tbaa !71
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gq = icmp eq i64 %index.next, %n.vec
  br i1 %i.gq, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count39.i.i
  br i1 %cmp.n, label %.preheader.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph10.i.i, %middle.block
  %indvars.iv36.i.i.ph = phi i64 [ 0, %.lr.ph10.i.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter251 = and i64 %wide.trip.count39.i.i, 1
  %lcmp.mod252.not = icmp eq i64 %xtraiter251, 0
  br i1 %lcmp.mod252.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv36.i.i.ph
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !68
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv36.i.i.ph
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !71
  %i.gv = fpext nsz float %i.gu to double
  %i.gw = fmul nsz double %i.gs, %i.gv
  %i.gx = fmul nsz double %i.gw, f0x4160000000000000
  %i.gy = fptrunc nsz double %i.gx to float
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv36.i.i.ph
  store float %i.gy, ptr %i.gz, align 4, !tbaa !71
  %indvars.iv.next37.i.i.prol = or disjoint i64 %indvars.iv36.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv36.i.i.unr = phi i64 [ %indvars.iv36.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next37.i.i.prol, %scalar.ph.prol ]
  %i.ha = add nsw i64 %wide.trip.count39.i.i, -1
  %i.hb = icmp eq i64 %indvars.iv36.i.i.ph, %i.ha
  br i1 %i.hb, label %.preheader.i.i, label %scalar.ph

.preheader.i.i:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader1.i.i
  %i.hc = load i32, ptr %i.ed, align 8, !tbaa !72 ; 2 uses
  %i.hd = icmp slt i32 %i.fy, %i.hc
  br i1 %i.hd, label %.loopexit.sink.split.i.i, label %.loopexit.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv36.i.i = phi i64 [ %indvars.iv.next37.i.i.1, %scalar.ph ], [ %indvars.iv36.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv36.i.i
  %i.hf = load double, ptr %i.he, align 8, !tbaa !68
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv36.i.i
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !71
  %i.hi = fpext nsz float %i.hh to double
  %i.hj = fmul nsz double %i.hf, %i.hi
  %i.hk = fmul nsz double %i.hj, f0x4160000000000000
  %i.hl = fptrunc nsz double %i.hk to float
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv36.i.i
  store float %i.hl, ptr %i.hm, align 4, !tbaa !71
  %indvars.iv.next37.i.i = add nuw nsw i64 %indvars.iv36.i.i, 1 ; 3 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv.next37.i.i
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !68
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next37.i.i
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !71
  %i.hr = fpext nsz float %i.hq to double
  %i.hs = fmul nsz double %i.ho, %i.hr
  %i.ht = fmul nsz double %i.hs, f0x4160000000000000
  %i.hu = fptrunc nsz double %i.ht to float
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next37.i.i
  store float %i.hu, ptr %i.hv, align 4, !tbaa !71
  %indvars.iv.next37.i.i.1 = add nuw nsw i64 %indvars.iv36.i.i, 2 ; 2 uses
  %exitcond40.not.i.i.1 = icmp eq i64 %indvars.iv.next37.i.i.1, %wide.trip.count39.i.i
  br i1 %exitcond40.not.i.i.1, label %.preheader.i.i, label %scalar.ph, !llvm.loop !114

.preheader2.i.i:                                  ; preds = %scalar.ph97.prol.loopexit, %scalar.ph97, %middle.block108, %.preheader4.i.i
  %i.hw = load i32, ptr %i.ed, align 8, !tbaa !72 ; 2 uses
  %i.hx = icmp slt i32 %i.ey, %i.hw
  br i1 %i.hx, label %.loopexit.sink.split.i.i, label %.loopexit.i.i

scalar.ph97:                                      ; preds = %scalar.ph97.prol.loopexit, %scalar.ph97
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph97 ], [ %indvars.iv.i.i.unr, %scalar.ph97.prol.loopexit ] ; 5 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i.i
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !68
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.i.i
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !68
  %i.ic = fmul nsz double %i.hz, %i.ib
  %i.id = fmul nsz double %i.ic, f0x4160000000000000
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i.i
  store double %i.id, ptr %i.ie, align 8, !tbaa !68
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.next.i.i
  %i.ig = load double, ptr %i.if, align 8, !tbaa !68
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next.i.i
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !68
  %i.ij = fmul nsz double %i.ig, %i.ii
  %i.ik = fmul nsz double %i.ij, f0x4160000000000000
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.next.i.i
  store double %i.ik, ptr %i.il, align 8, !tbaa !68
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %.preheader2.i.i, label %scalar.ph97, !llvm.loop !115

.loopexit.sink.split.i.i:                         ; preds = %.preheader2.i.i, %.preheader.i.i
  %.sink67.i.i = phi i32 [ %i.fy, %.preheader.i.i ], [ %i.ey, %.preheader2.i.i ] ; 2 uses
  %.sink66.i.i = phi i64 [ 2, %.preheader.i.i ], [ 3, %.preheader2.i.i ] ; 2 uses
  %.sink.i.i = phi i32 [ %i.hc, %.preheader.i.i ], [ %i.hw, %.preheader2.i.i ]
  %.sink59.i.i = phi i64 [ 4, %.preheader.i.i ], [ 8, %.preheader2.i.i ]
  %i.im = sext i32 %.sink67.i.i to i64
  %i.in = shl nsw i64 %i.im, %.sink66.i.i
  %scevgep.i.i = getelementptr i8, ptr %i.ev, i64 %i.in
  %i.io = xor i32 %.sink67.i.i, -1
  %i.ip = add i32 %.sink.i.i, %i.io
  %i.iq = zext i32 %i.ip to i64
  %i.ir = shl nuw nsw i64 %i.iq, %.sink66.i.i
  %i.is = add nuw nsw i64 %i.ir, %.sink59.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.is, i1 false), !tbaa !73
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.sink.split.i.i, %.preheader2.i.i, %.preheader.i.i, %bb.r
  %i.it = getelementptr inbounds nuw i8, ptr %i.em, i64 504
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !74
  %i.iv = getelementptr inbounds nuw i8, ptr %i.em, i64 488
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !75
  %i.ix = load i64, ptr %i.ee, align 8, !tbaa !62
  call void %i.iu(ptr noundef %i.iw, ptr noundef %i.et, ptr noundef %i.ev, i64 noundef %i.ix) #14, !inline_history !116
  %i.iy = load i32, ptr %i.ef, align 8, !tbaa !76 ; 6 uses
  %i.iz = load i32, ptr %i.ed, align 8, !tbaa !72
  %i.ja = load i32, ptr %i.eg, align 4, !tbaa !76
  %1 = call i32 @llvm.smin.i32(i32 %i.iz, i32 %i.ja) ; 2 uses
  %.not14.i.i = icmp sgt i32 %i.iy, %1
  br i1 %.not14.i.i, label %sample_noise_block.exit.i, label %.lr.ph24.i.i

.lr.ph24.i.i:                                     ; preds = %.loopexit.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.em, i64 520
  %i.jc = getelementptr inbounds nuw i8, ptr %i.em, i64 640
  %i.jd = getelementptr inbounds nuw i8, ptr %i.em, i64 760
  %i.je = getelementptr inbounds nuw i8, ptr %i.em, i64 880
  %i.jf = load i32, ptr %i.eb, align 8, !tbaa !66
  %i.jg = sext i32 %i.iy to i64
  br label %bb.s

._crit_edge.loopexit.i.i:                         ; preds = %bb.z
  %i.jh = add nsw i32 %.1.i.i, -1
  %i.ji = sext i32 %i.jh to i64
  br label %sample_noise_block.exit.i

bb.s:                                             ; preds = %bb.z, %.lr.ph24.i.i
  %indvars.iv45.i.i = phi i64 [ %i.jg, %.lr.ph24.i.i ], [ %indvars.iv.next46.i.i, %bb.z ] ; 4 uses
  %.012921.i.i = phi i32 [ 0, %.lr.ph24.i.i ], [ %.1.i.i, %bb.z ] ; 3 uses
  %.013020.i.i = phi i32 [ %i.iy, %.lr.ph24.i.i ], [ %.2.i.i, %bb.z ] ; 5 uses
  %.013219.i.i = phi i32 [ %i.iy, %.lr.ph24.i.i ], [ %.1133.i.i, %bb.z ] ; 3 uses
  %.014016.i.i = phi double [ 0.000000e+00, %.lr.ph24.i.i ], [ %i.lc, %bb.z ] ; 2 uses
  %.014215.i.i = phi double [ undef, %.lr.ph24.i.i ], [ %i.lb, %bb.z ]
  %i.jj = phi <2 x double> [ zeroinitializer, %.lr.ph24.i.i ], [ %i.kz, %bb.z ] ; 3 uses
  %indvars47.i.i = trunc i64 %indvars.iv45.i.i to i32 ; 2 uses
  %i.jk = icmp eq i32 %.013020.i.i, %indvars47.i.i
  %2 = icmp sgt i32 %1, %indvars47.i.i            ; 2 uses
  %or.cond.i.i = and i1 %2, %i.jk
  br i1 %or.cond.i.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.jl = icmp sgt i32 %.013020.i.i, %.013219.i.i
  br i1 %i.jl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jm = sub nsw i32 %.013020.i.i, %.013219.i.i
  %i.jn = sitofp nsz i32 %i.jm to double
  %i.jo = add nsw i32 %.012921.i.i, -1
  %i.jp = sext i32 %i.jo to i64                   ; 4 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.jp ; 2 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !68
  %i.js = fadd nsz double %i.jr, %i.jn
  store double %i.js, ptr %i.jq, align 8, !tbaa !68
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %i.jp ; 2 uses
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !68
  %i.jv = extractelement <2 x double> %i.jj, i64 0
  %i.jw = fadd nsz double %i.jv, %i.ju
  store double %i.jw, ptr %i.jt, align 8, !tbaa !68
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.jp ; 2 uses
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !68
  %i.jz = extractelement <2 x double> %i.jj, i64 1
  %i.ka = fadd nsz double %i.jz, %i.jy
  store double %i.ka, ptr %i.jx, align 8, !tbaa !68
  %i.kb = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.jp ; 2 uses
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !68
  %i.kd = fadd nsz double %.014016.i.i, %i.kc
  store double %i.kd, ptr %i.kb, align 8, !tbaa !68
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ke = add nsw i32 %.012921.i.i, 1             ; 3 uses
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !76
  %i.ki = icmp eq i32 %i.ke, 15
  %i.kj = zext i1 %i.ki to i32
  %spec.select.i.i = add nsw i32 %i.kh, %i.kj
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.1141.i.i = phi nsz double [ 0.000000e+00, %bb.v ], [ %.014016.i.i, %bb.s ]
  %.1133.i.i = phi i32 [ %.013020.i.i, %bb.v ], [ %.013219.i.i, %bb.s ] ; 2 uses
  %.2.i.i = phi i32 [ %spec.select.i.i, %bb.v ], [ %.013020.i.i, %bb.s ] ; 2 uses
  %.1.i.i = phi i32 [ %i.ke, %bb.v ], [ %.012921.i.i, %bb.s ] ; 2 uses
  %i.kk = phi <2 x double> [ zeroinitializer, %bb.v ], [ %i.jj, %bb.s ] ; 3 uses
  switch i32 %i.jf, label %bb.z [
    i32 8, label %bb.x
    i32 9, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.et, i64 %indvars.iv45.i.i
  %i.km = load <2 x float>, ptr %i.kl, align 4, !tbaa !71 ; 4 uses
  %i.kn = fpext <2 x float> %i.km to <2 x double>
  %i.ko = fadd nsz <2 x double> %i.kk, %i.kn
  %foldExtExtBinop = fmul nsz <2 x float> %i.km, %i.km
  %i.kp = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.kq = extractelement <2 x float> %i.km, i64 0 ; 2 uses
  %i.kr = call nsz float @llvm.fmuladd.f32(float %i.kq, float %i.kq, float %i.kp)
  %i.ks = fpext nsz float %i.kr to double
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.kt = getelementptr inbounds [16 x i8], ptr %i.et, i64 %indvars.iv45.i.i
  %i.ku = load <2 x double>, ptr %i.kt, align 8, !tbaa !68 ; 4 uses
  %i.kv = fadd nsz <2 x double> %i.kk, %i.ku
  %foldExtExtBinop206 = fmul nsz <2 x double> %i.ku, %i.ku
  %i.kw = extractelement <2 x double> %foldExtExtBinop206, i64 1
  %i.kx = extractelement <2 x double> %i.ku, i64 0 ; 2 uses
  %i.ky = call nsz double @llvm.fmuladd.f64(double %i.kx, double %i.kx, double %i.kw)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %.1143.i.i = phi nsz double [ %.014215.i.i, %bb.w ], [ %i.ks, %bb.x ], [ %i.ky, %bb.y ]
  %i.kz = phi <2 x double> [ %i.kk, %bb.w ], [ %i.ko, %bb.x ], [ %i.kv, %bb.y ] ; 2 uses
  %i.la = load double, ptr %i.eh, align 8, !tbaa !77
  %i.lb = call nsz double @llvm.maxnum.f64(double %.1143.i.i, double %i.la) ; 2 uses
  %i.lc = fadd nsz double %.1141.i.i, %i.lb       ; 2 uses
  %indvars.iv.next46.i.i = add nsw i64 %indvars.iv45.i.i, 1
  br i1 %2, label %bb.s, label %._crit_edge.loopexit.i.i, !llvm.loop !117

sample_noise_block.exit.i:                        ; preds = %._crit_edge.loopexit.i.i, %.loopexit.i.i
  %.0140.lcssa.i.i = phi double [ 0.000000e+00, %.loopexit.i.i ], [ %i.lc, %._crit_edge.loopexit.i.i ]
  %.0132.lcssa.i.i = phi i32 [ %i.iy, %.loopexit.i.i ], [ %.1133.i.i, %._crit_edge.loopexit.i.i ]
  %.0130.lcssa.i.i = phi i32 [ %i.iy, %.loopexit.i.i ], [ %.2.i.i, %._crit_edge.loopexit.i.i ]
  %.0129.lcssa.i.i = phi i64 [ -1, %.loopexit.i.i ], [ %i.ji, %._crit_edge.loopexit.i.i ] ; 4 uses
  %i.ld = phi <2 x double> [ zeroinitializer, %.loopexit.i.i ], [ %i.kz, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.le = sub nsw i32 %.0130.lcssa.i.i, %.0132.lcssa.i.i
  %i.lf = sitofp nsz i32 %i.le to double
  %i.lg = getelementptr inbounds nuw i8, ptr %i.em, i64 520
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.lg, i64 %.0129.lcssa.i.i ; 2 uses
  %i.li = load double, ptr %i.lh, align 8, !tbaa !68
  %i.lj = fadd nsz double %i.li, %i.lf
  store double %i.lj, ptr %i.lh, align 8, !tbaa !68
  %i.lk = getelementptr inbounds nuw i8, ptr %i.em, i64 640
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.lk, i64 %.0129.lcssa.i.i ; 2 uses
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !68
  %i.ln = extractelement <2 x double> %i.ld, i64 0
  %i.lo = fadd nsz double %i.ln, %i.lm
  store double %i.lo, ptr %i.ll, align 8, !tbaa !68
  %i.lp = getelementptr inbounds nuw i8, ptr %i.em, i64 760
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.lp, i64 %.0129.lcssa.i.i ; 2 uses
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !68
  %i.ls = extractelement <2 x double> %i.ld, i64 1
  %i.lt = fadd nsz double %i.ls, %i.lr
  store double %i.lt, ptr %i.lq, align 8, !tbaa !68
  %i.lu = getelementptr inbounds nuw i8, ptr %i.em, i64 880
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %.0129.lcssa.i.i ; 2 uses
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !68
  %i.lx = fadd nsz double %.0140.lcssa.i.i, %i.lw
  store double %i.lx, ptr %i.lv, align 8, !tbaa !68
  %indvars.iv.next293.i = add nuw nsw i64 %indvars.iv292.i, 1 ; 2 uses
  %i.ly = load i32, ptr %i.dx, align 4, !tbaa !54
  %i.lz = sext i32 %i.ly to i64
  %i.ma = icmp slt i64 %indvars.iv.next293.i, %i.lz
  br i1 %i.ma, label %bb.r, label %._crit_edge255.loopexit.i, !llvm.loop !118

bb.aa:                                            ; preds = %._crit_edge255.i, %bb.q
  %i.mb = phi ptr [ %i.dv, %._crit_edge255.i ], [ %.phi.trans.insert352.i, %bb.q ]
  %i.mc = phi i32 [ %.pre354.i, %._crit_edge255.i ], [ %i.de, %bb.q ]
  %i.md = icmp eq i32 %i.mc, 2
  br i1 %i.md, label %.preheader228.i, label %bb.ae

.preheader228.i:                                  ; preds = %bb.aa
  %i.me = getelementptr inbounds nuw i8, ptr %i.i, i64 76 ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !54
  %i.mg = icmp sgt i32 %i.mf, 0
  br i1 %i.mg, label %.lr.ph257.i, label %.loopexit229.i

.lr.ph257.i:                                      ; preds = %.preheader228.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.aa, i64 232
  %i.mi = getelementptr inbounds nuw i8, ptr %i.aa, i64 100
  %i.mj = getelementptr inbounds nuw i8, ptr %i.aa, i64 340
  %i.mk = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %.sroa.30.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %.sroa.36.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %.sroa.39.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %scevgep = getelementptr i8, ptr %i.c, i64 -8
  br label %bb.ab

bb.ab:                                            ; preds = %finish_sample_noise.exit.i, %.lr.ph257.i
  %indvars.iv295.i = phi i64 [ 0, %.lr.ph257.i ], [ %indvars.iv.next296.i, %finish_sample_noise.exit.i ] ; 2 uses
  %i.ml = load ptr, ptr %i.mh, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.mm = load i32, ptr %i.mi, align 4, !tbaa !147
  %i.mn = icmp sgt i32 %i.mm, 0
  br i1 %i.mn, label %bb.ac, label %.critedge.i

bb.ac:                                            ; preds = %bb.ab
  %i.mo = getelementptr inbounds nuw [1072 x i8], ptr %i.ml, i64 %indvars.iv295.i ; 14 uses
  %i.mp = load i32, ptr %i.mj, align 4, !tbaa !78 ; 6 uses
  %i.mq = icmp sgt i32 %i.mp, 0
  br i1 %i.mq, label %.lr.ph.i209.i, label %.preheader.i207.i.lver.check

.lr.ph.i209.i:                                    ; preds = %bb.ac
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 520
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 640
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mo, i64 760
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mo, i64 880
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mo, i64 120
  %wide.trip.count.i210.i = zext nneg i32 %i.mp to i64
  br label %bb.ad

._crit_edge.i.i:                                  ; preds = %bb.ad
  %i.mw = icmp samesign ult i32 %i.mp, 15
  br i1 %i.mw, label %.preheader.i207.i.lver.check, label %finish_sample_noise.exit.i

.preheader.i207.i.lver.check:                     ; preds = %._crit_edge.i.i, %bb.ac
  %i.mx = sext i32 %i.mp to i64                   ; 3 uses
  %i.my = add i32 %i.mp, 1
  %i.mz = zext i32 %i.my to i64
  %i.na = sub nsw i64 15, %i.mz                   ; 2 uses
  %i.nb = trunc i64 %i.na to i32
  %i.nc = sub i32 -2, %i.mp
  %i.nd = icmp ult i32 %i.nc, %i.nb
  %i.ne = icmp ugt i64 %i.na, 4294967295
  %i.nf = or i1 %i.nd, %i.ne
  br i1 %i.nf, label %.preheader.i207.i.lver.orig, label %.preheader.i207.i.ph

.preheader.i207.i.lver.orig:                      ; preds = %.preheader.i207.i.lver.check, %.preheader.i207.i.lver.orig
  %indvars.iv47.i.i.lver.orig = phi i64 [ %indvars.iv.next48.i.i.lver.orig, %.preheader.i207.i.lver.orig ], [ %i.mx, %.preheader.i207.i.lver.check ] ; 2 uses
  %i.ng = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv47.i.i.lver.orig ; 2 uses
  %i.nh = getelementptr i8, ptr %i.ng, i64 -8
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !68
  store double %i.ni, ptr %i.ng, align 8, !tbaa !68
  %indvars.iv.next48.i.i.lver.orig = add nsw i64 %indvars.iv47.i.i.lver.orig, 1 ; 2 uses
  %i.nj = and i64 %indvars.iv.next48.i.i.lver.orig, 4294967295
  %exitcond50.not.i.i.lver.orig = icmp eq i64 %i.nj, 15
  br i1 %exitcond50.not.i.i.lver.orig, label %finish_sample_noise.exit.i, label %.preheader.i207.i.lver.orig, !llvm.loop !119

.preheader.i207.i.ph:                             ; preds = %.preheader.i207.i.lver.check
  %i.nk = shl nsw i64 %i.mx, 3
  %scevgep200 = getelementptr i8, ptr %scevgep, i64 %i.nk
  %load_initial = load double, ptr %scevgep200, align 8
  br label %.preheader.i207.i

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i209.i
  %indvars.iv.i211.i = phi i64 [ 0, %.lr.ph.i209.i ], [ %indvars.iv.next.i212.i, %bb.ad ] ; 7 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %indvars.iv.i211.i
  %i.nm = load double, ptr %i.nl, align 8, !tbaa !68 ; 3 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %indvars.iv.i211.i ; 2 uses
  %i.no = load double, ptr %i.nn, align 8, !tbaa !68
  %i.np = fdiv nsz double %i.no, %i.nm            ; 3 uses
  store double %i.np, ptr %i.nn, align 8, !tbaa !68
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %indvars.iv.i211.i ; 2 uses
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !68
  %i.ns = fdiv nsz double %i.nr, %i.nm            ; 3 uses
  store double %i.ns, ptr %i.nq, align 8, !tbaa !68
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %indvars.iv.i211.i ; 2 uses
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !68
  %i.nv = fdiv nsz double %i.nu, %i.nm
  %i.nw = fmul nsz double %i.ns, %i.ns
  %i.nx = call nsz double @llvm.fmuladd.f64(double %i.np, double %i.np, double %i.nw)
  %i.ny = fsub nsz double %i.nv, %i.nx            ; 3 uses
  store double %i.ny, ptr %i.nt, align 8, !tbaa !68
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %indvars.iv.i211.i
  store double %i.ny, ptr %i.nz, align 8, !tbaa !68
  %i.oa = load double, ptr %i.mk, align 8, !tbaa !79
  %i.ob = fdiv nsz double %i.ny, %i.oa
  %i.oc = call nsz double @llvm.log10.f64(double %i.ob)
  %i.od = call nsz double @llvm.fmuladd.f64(double %i.oc, double 1.000000e+01, double -1.000000e+02)
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i211.i
  store double %i.od, ptr %i.oe, align 8, !tbaa !68
  %indvars.iv.next.i212.i = add nuw nsw i64 %indvars.iv.i211.i, 1 ; 2 uses
  %exitcond.not.i213.i = icmp eq i64 %indvars.iv.next.i212.i, %wide.trip.count.i210.i
  br i1 %exitcond.not.i213.i, label %._crit_edge.i.i, label %bb.ad, !llvm.loop !120

.preheader.i207.i:                                ; preds = %.preheader.i207.i, %.preheader.i207.i.ph
  %indvars.iv47.i.i = phi i64 [ %i.mx, %.preheader.i207.i.ph ], [ %indvars.iv.next48.i.i, %.preheader.i207.i ] ; 2 uses
  %i.of = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv47.i.i
  store double %load_initial, ptr %i.of, align 8, !tbaa !68
  %indvars.iv.next48.i.i = add nsw i64 %indvars.iv47.i.i, 1 ; 2 uses
  %i.og = and i64 %indvars.iv.next48.i.i, 4294967295
  %exitcond50.not.i.i = icmp eq i64 %i.og, 15
  br i1 %exitcond50.not.i.i, label %finish_sample_noise.exit.i, label %.preheader.i207.i, !llvm.loop !119

finish_sample_noise.exit.i:                       ; preds = %.preheader.i207.i, %.preheader.i207.i.lver.orig, %._crit_edge.i.i
  %i.oh = load ptr, ptr %i.z, align 8, !tbaa !19  ; 72 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 584
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 544 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oh, i64 600
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 616
  %i.om = getelementptr inbounds nuw i8, ptr %i.oh, i64 632
  %i.on = getelementptr inbounds nuw i8, ptr %i.oh, i64 648
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oh, i64 664
  %i.op = getelementptr inbounds nuw i8, ptr %i.oh, i64 680
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oh, i64 696
  %i.or = load double, ptr %i.oq, align 8, !tbaa !68
  %i.os = getelementptr inbounds nuw i8, ptr %i.oh, i64 704
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oh, i64 720
  %i.ou = load <2 x double>, ptr %i.oi, align 8, !tbaa !68 ; 2 uses
  %i.ov = load <2 x double>, ptr %i.ok, align 8, !tbaa !68 ; 2 uses
  %i.ow = load <2 x double>, ptr %i.os, align 8, !tbaa !68 ; 2 uses
  %i.ox = shufflevector <2 x double> %i.ou, <2 x double> %i.ow, <2 x i32> <i32 0, i32 2>
  %i.oy = shufflevector <2 x double> %i.ou, <2 x double> %i.ow, <2 x i32> <i32 1, i32 3>
  %i.oz = load <2 x double>, ptr %i.ot, align 8, !tbaa !68 ; 2 uses
  %i.pa = shufflevector <2 x double> %i.ov, <2 x double> %i.oz, <2 x i32> <i32 0, i32 2>
  %i.pb = shufflevector <2 x double> %i.ov, <2 x double> %i.oz, <2 x i32> <i32 1, i32 3>
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oh, i64 736
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oh, i64 752
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oh, i64 768
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oh, i64 784
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oh, i64 800
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oh, i64 816
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !68
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oh, i64 552
  %i.pk = load <2 x double>, ptr %i.ol, align 8, !tbaa !68 ; 2 uses
  %i.pl = load <2 x double>, ptr %i.om, align 8, !tbaa !68 ; 2 uses
  %i.pm = load <2 x double>, ptr %i.on, align 8, !tbaa !68 ; 2 uses
end_hunk_0
begin_hunk_1_@filter_channel:bb.a
  %i.tx = fmul nsz <2 x double> %i.tv, splat (double f0x3E80000000000000)
  %i.ty = fmul nsz <2 x double> %i.tw, splat (double f0x3E80000000000000)
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index207 ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16 ; 2 uses
  %wide.load212 = load <2 x double>, ptr %i.tz, align 8, !tbaa !68, !alias.scope !268, !noalias !269
  %wide.load213 = load <2 x double>, ptr %i.ua, align 8, !tbaa !68, !alias.scope !268, !noalias !269
  %i.ub = fadd nsz <2 x double> %wide.load212, %i.tx
  %i.uc = fadd nsz <2 x double> %wide.load213, %i.ty
  store <2 x double> %i.ub, ptr %i.tz, align 8, !tbaa !68, !alias.scope !268, !noalias !269
  store <2 x double> %i.uc, ptr %i.ua, align 8, !tbaa !68, !alias.scope !268, !noalias !269
  %index.next214 = add nuw i64 %index207, 4       ; 2 uses
  %i.ud = icmp eq i64 %index.next214, %n.vec205
  br i1 %i.ud, label %middle.block215, label %vector.body206, !llvm.loop !240

middle.block215:                                  ; preds = %vector.body206
  br i1 %cmp.n216, label %.loopexit, label %scalar.ph202.preheader

scalar.ph202.preheader:                           ; preds = %vector.memcheck192, %.lr.ph114, %middle.block215
  %indvars.iv137.ph = phi i64 [ 0, %vector.memcheck192 ], [ 0, %.lr.ph114 ], [ %n.vec205, %middle.block215 ] ; 6 uses
  br i1 %lcmp.mod379.not, label %scalar.ph202.prol.loopexit, label %scalar.ph202.prol

scalar.ph202.prol:                                ; preds = %scalar.ph202.preheader
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv137.ph
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !68
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv137.ph
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !68
  %i.ui = fmul nsz double %i.uf, %i.uh
  %i.uj = fmul nsz double %i.ui, f0x3E80000000000000
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv137.ph ; 2 uses
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !68
  %i.um = fadd nsz double %i.ul, %i.uj
  store double %i.um, ptr %i.uk, align 8, !tbaa !68
  %indvars.iv.next138.prol = or disjoint i64 %indvars.iv137.ph, 1
  br label %scalar.ph202.prol.loopexit

scalar.ph202.prol.loopexit:                       ; preds = %scalar.ph202.prol, %scalar.ph202.preheader
  %indvars.iv137.unr = phi i64 [ %indvars.iv137.ph, %scalar.ph202.preheader ], [ %indvars.iv.next138.prol, %scalar.ph202.prol ]
  %i.un = icmp eq i64 %indvars.iv137.ph, %i.av
  br i1 %i.un, label %.loopexit, label %scalar.ph202

.preheader:                                       ; preds = %process_frame.exit
  br i1 %i.y, label %.lr.ph116, label %.loopexit

.lr.ph116:                                        ; preds = %.preheader
  %i.uo = load ptr, ptr %i.r, align 8, !tbaa !67  ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph116
  %scevgep185 = getelementptr i8, ptr %i.bf, i64 %i.as
  %scevgep186 = getelementptr i8, ptr %i.uo, i64 %i.as
  %bound0 = icmp ult ptr %i.bf, %scevgep186
  %bound1 = icmp ult ptr %i.uo, %scevgep185
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 4 uses
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %index ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %wide.load = load <2 x double>, ptr %i.up, align 8, !tbaa !68, !alias.scope !270
  %wide.load187 = load <2 x double>, ptr %i.uq, align 8, !tbaa !68, !alias.scope !270
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %wide.load188 = load <2 x float>, ptr %i.ur, align 4, !tbaa !71
  %wide.load189 = load <2 x float>, ptr %i.us, align 4, !tbaa !71
  %i.ut = fpext nsz <2 x float> %wide.load188 to <2 x double>
  %i.uu = fpext nsz <2 x float> %wide.load189 to <2 x double>
  %i.uv = fmul nsz <2 x double> %wide.load, %i.ut
  %i.uw = fmul nsz <2 x double> %wide.load187, %i.uu
  %i.ux = fmul nsz <2 x double> %i.uv, splat (double f0x3E80000000000000)
  %i.uy = fmul nsz <2 x double> %i.uw, splat (double f0x3E80000000000000)
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16 ; 2 uses
  %wide.load190 = load <2 x double>, ptr %i.uz, align 8, !tbaa !68, !alias.scope !271, !noalias !270
  %wide.load191 = load <2 x double>, ptr %i.va, align 8, !tbaa !68, !alias.scope !271, !noalias !270
  %i.vb = fadd nsz <2 x double> %wide.load190, %i.ux
  %i.vc = fadd nsz <2 x double> %wide.load191, %i.uy
  store <2 x double> %i.vb, ptr %i.uz, align 8, !tbaa !68, !alias.scope !271, !noalias !270
  store <2 x double> %i.vc, ptr %i.va, align 8, !tbaa !68, !alias.scope !271, !noalias !270
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vd = icmp eq i64 %index.next, %n.vec
  br i1 %i.vd, label %middle.block, label %vector.body, !llvm.loop !244

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph116, %middle.block
  %indvars.iv142.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph116 ], [ %n.vec, %middle.block ] ; 6 uses
  br i1 %lcmp.mod381.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %indvars.iv142.ph
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !68
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv142.ph
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !71
  %i.vi = fpext nsz float %i.vh to double
  %i.vj = fmul nsz double %i.vf, %i.vi
  %i.vk = fmul nsz double %i.vj, f0x3E80000000000000
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv142.ph ; 2 uses
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !68
  %i.vn = fadd nsz double %i.vm, %i.vk
  store double %i.vn, ptr %i.vl, align 8, !tbaa !68
  %indvars.iv.next143.prol = or disjoint i64 %indvars.iv142.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv142.ph, %scalar.ph.preheader ], [ %indvars.iv.next143.prol, %scalar.ph.prol ]
  %i.vo = icmp eq i64 %indvars.iv142.ph, %i.aw
  br i1 %i.vo, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv142 = phi i64 [ %indvars.iv.next143.1, %scalar.ph ], [ %indvars.iv142.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %indvars.iv142
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !68
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv142
  %i.vs = load float, ptr %i.vr, align 4, !tbaa !71
  %i.vt = fpext nsz float %i.vs to double
  %i.vu = fmul nsz double %i.vq, %i.vt
  %i.vv = fmul nsz double %i.vu, f0x3E80000000000000
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv142 ; 2 uses
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !68
  %i.vy = fadd nsz double %i.vx, %i.vv
  store double %i.vy, ptr %i.vw, align 8, !tbaa !68
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 3 uses
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %indvars.iv.next143
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !68
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next143
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !71
  %i.wd = fpext nsz float %i.wc to double
  %i.we = fmul nsz double %i.wa, %i.wd
  %i.wf = fmul nsz double %i.we, f0x3E80000000000000
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next143 ; 2 uses
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !68
  %i.wi = fadd nsz double %i.wh, %i.wf
  store double %i.wi, ptr %i.wg, align 8, !tbaa !68
  %indvars.iv.next143.1 = add nuw nsw i64 %indvars.iv142, 2 ; 2 uses
  %exitcond146.not.1 = icmp eq i64 %indvars.iv.next143.1, %wide.trip.count145
  br i1 %exitcond146.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !245

scalar.ph202:                                     ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202
  %indvars.iv137 = phi i64 [ %indvars.iv.next138.1, %scalar.ph202 ], [ %indvars.iv137.unr, %scalar.ph202.prol.loopexit ] ; 5 uses
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv137
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !68
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv137
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !68
  %i.wn = fmul nsz double %i.wk, %i.wm
  %i.wo = fmul nsz double %i.wn, f0x3E80000000000000
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv137 ; 2 uses
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !68
  %i.wr = fadd nsz double %i.wq, %i.wo
  store double %i.wr, ptr %i.wp, align 8, !tbaa !68
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 3 uses
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv.next138
  %i.wt = load double, ptr %i.ws, align 8, !tbaa !68
  %i.wu = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next138
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !68
  %i.ww = fmul nsz double %i.wt, %i.wv
  %i.wx = fmul nsz double %i.ww, f0x3E80000000000000
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next138 ; 2 uses
  %i.wz = load double, ptr %i.wy, align 8, !tbaa !68
  %i.xa = fadd nsz double %i.wz, %i.wx
  store double %i.xa, ptr %i.wy, align 8, !tbaa !68
  %indvars.iv.next138.1 = add nuw nsw i64 %indvars.iv137, 2 ; 2 uses
  %exitcond141.not.1 = icmp eq i64 %indvars.iv.next138.1, %wide.trip.count140
  br i1 %exitcond141.not.1, label %.loopexit, label %scalar.ph202, !llvm.loop !246

.loopexit:                                        ; preds = %scalar.ph202.prol.loopexit, %scalar.ph202, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block215, %middle.block, %.preheader95, %.preheader, %process_frame.exit
  %indvars.iv.next148 = add nsw i64 %indvars.iv147, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next148 to i32
  %exitcond150.not = icmp eq i32 %lftr.wideiv, %i.o
  br i1 %exitcond150.not, label %._crit_edge, label %bb.b, !llvm.loop !247
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #10

declare i32 @av_frame_is_writable(ptr noundef) local_unnamed_addr #3

declare i32 @av_frame_copy_props(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp2.f64(double) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.atan.v4f64(<4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.lrint.v4i64.v4f64(<4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.log.v2f64(<2 x double>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.exp.v2f64(<2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmax.v2f64(<2 x double>) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"long", !5, i64 0}
!21 = !{!"float", !5, i64 0}
!22 = !{!"p1 int", !9, i64 0}
!23 = !{!"p1 double", !9, i64 0}
!24 = !{!"p1 _ZTS14DeNoiseChannel", !9, i64 0}
!25 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!26 = !{!"double", !5, i64 0}
!27 = !{!"AudioFFTDeNoiseContext", !10, i64 0, !6, i64 8, !20, i64 16, !20, i64 24, !21, i64 32, !21, i64 36, !6, i64 40, !12, i64 48, !21, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !21, i64 76, !6, i64 80, !21, i64 84, !21, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !21, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !5, i64 140, !22, i64 200, !23, i64 208, !23, i64 216, !23, i64 224, !24, i64 232, !25, i64 240, !26, i64 248, !26, i64 256, !26, i64 264, !5, i64 272, !6, i64 340, !5, i64 344, !5, i64 544, !5, i64 584, !5, i64 1184}
!28 = !{!27, !24, i64 232}
!29 = !{!27, !6, i64 92}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!27, !21, i64 32}
!32 = !{!"p1 _ZTS11AVTXContext", !9, i64 0}
!33 = !{!"DeNoiseChannel", !5, i64 0, !5, i64 120, !5, i64 240, !23, i64 360, !23, i64 368, !23, i64 376, !23, i64 384, !23, i64 392, !23, i64 400, !23, i64 408, !23, i64 416, !23, i64 424, !23, i64 432, !23, i64 440, !23, i64 448, !23, i64 456, !23, i64 464, !9, i64 472, !9, i64 480, !32, i64 488, !32, i64 496, !9, i64 504, !9, i64 512, !5, i64 520, !5, i64 640, !5, i64 760, !5, i64 880, !26, i64 1000, !26, i64 1008, !26, i64 1016, !26, i64 1024, !26, i64 1032, !26, i64 1040, !26, i64 1048, !26, i64 1056, !26, i64 1064}
!34 = !{!33, !26, i64 1000}
!35 = !{!27, !21, i64 36}
!36 = !{!33, !26, i64 1016}
!37 = !{!27, !21, i64 56}
!38 = !{!33, !26, i64 1032}
!39 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!18, !15, i64 56}
!42 = !{!27, !6, i64 132}
!43 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!44 = !{!"AVRational", !6, i64 0, !6, i64 4}
!45 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!46 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!47 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!48 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!49 = !{!"AVFilterFormatsConfig", !47, i64 0, !47, i64 8, !48, i64 16, !47, i64 24, !47, i64 32, !47, i64 40}
!50 = !{!"AVFilterLink", !43, i64 0, !13, i64 8, !43, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !44, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !45, i64 72, !44, i64 96, !46, i64 104, !6, i64 112, !6, i64 116, !49, i64 120, !49, i64 168}
!51 = !{!50, !43, i64 16}
!52 = !{!27, !6, i64 128}
!53 = !{!27, !6, i64 60}
!54 = !{!50, !6, i64 76}
!55 = !{!27, !25, i64 240}
!56 = !{!"p2 omnipotent char", !14, i64 0}
!57 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!58 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!59 = !{!"AVFrame", !5, i64 0, !5, i64 64, !56, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !44, i64 124, !20, i64 136, !20, i64 144, !44, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !57, i64 248, !6, i64 256, !46, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !20, i64 304, !58, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !20, i64 344, !20, i64 352, !20, i64 360, !20, i64 368, !9, i64 376, !45, i64 384, !20, i64 408, !6, i64 416}
!60 = !{!59, !56, i64 96}
!61 = !{!12, !12, i64 0}
!62 = !{!27, !20, i64 16}
!63 = !{!33, !26, i64 1024}
!64 = !{!33, !9, i64 480}
!65 = !{!33, !9, i64 472}
!66 = !{!27, !6, i64 8}
!67 = !{!27, !23, i64 208}
!68 = !{!26, !26, i64 0}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!21, !21, i64 0}
!72 = !{!27, !6, i64 120}
!73 = !{!5, !5, i64 0}
!74 = !{!33, !9, i64 504}
!75 = !{!33, !32, i64 488}
!76 = !{!6, !6, i64 0}
!77 = !{!27, !26, i64 264}
!78 = !{!27, !6, i64 340}
!79 = !{!27, !26, i64 256}
!80 = !{!33, !23, i64 432}
!81 = !{!"llvm.loop.unroll.disable"}
!82 = !{!20, !20, i64 0}
!83 = !{!27, !21, i64 108}
!84 = !{!27, !6, i64 116}
!85 = !{!27, !6, i64 124}
!86 = !{!27, !22, i64 200}
!87 = !{!27, !6, i64 136}
!88 = !{!27, !23, i64 216}
!89 = !{!27, !23, i64 224}
!90 = !{!33, !23, i64 360}
!91 = !{!33, !23, i64 368}
!92 = !{!33, !23, i64 376}
!93 = !{!33, !23, i64 384}
!94 = !{!33, !23, i64 392}
!95 = !{!33, !23, i64 400}
!96 = !{!33, !23, i64 408}
!97 = !{!33, !23, i64 416}
!98 = !{!33, !23, i64 424}
!99 = !{!33, !23, i64 448}
!100 = !{!33, !23, i64 456}
!101 = !{!33, !23, i64 464}
!102 = !{!27, !20, i64 24}
!103 = !{!33, !23, i64 440}
!104 = !{!33, !32, i64 496}
!105 = !{!33, !26, i64 1048}
!106 = distinct !{!106, !30}
!107 = distinct !{!107, !30}
!108 = distinct !{!108, !30}
!109 = distinct !{!109, !30}
!110 = distinct !{!110, !30}
!111 = distinct !{!111, !30}
!112 = distinct !{!112, !30, !69, !70}
!113 = distinct !{!113, !30, !69, !70}
!114 = distinct !{!114, !30, !69}
!115 = distinct !{!115, !30, !69}
!116 = distinct !{null, null}
!117 = distinct !{!117, !30}
!118 = distinct !{!118, !30}
!119 = distinct !{!119, !30}
!120 = distinct !{!120, !30}
!121 = distinct !{!121, !30}
!122 = distinct !{!122, !30, !69, !70}
!123 = distinct !{!123, !81}
!124 = distinct !{!124, !30, !69, !70}
!125 = distinct !{!125, !81}
!126 = distinct !{!126, !30, !69}
!127 = distinct !{!127, !30, !69}
!128 = distinct !{!128, !30, !69, !70}
!129 = distinct !{!129, !81}
!130 = distinct !{!130, !30, !69, !70}
!131 = distinct !{!131, !30, !70, !69}
!132 = distinct !{!132, !30, !69}
!133 = distinct !{!133, !30, !69, !70}
!134 = distinct !{!134, !81}
!135 = distinct !{!135, !30, !69, !70}
!136 = distinct !{!136, !30, !69}
!137 = distinct !{!137, !30, !69}
!138 = distinct !{!138, !30}
!139 = !{!18, !15, i64 32}
end_hunk_1
