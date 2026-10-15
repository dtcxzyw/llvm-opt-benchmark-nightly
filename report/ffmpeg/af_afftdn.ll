Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_afftdn?download=true
inline.NumInlined: 43
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 54
begin_hunk_0_@activate:bb.a

.preheader231.i:                                  ; preds = %.loopexit232.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 76 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !54 ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph251.i, label %.thread.i

.lr.ph251.i:                                      ; preds = %.preheader231.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aa, i64 232
  br label %bb.p

.thread.i:                                        ; preds = %bb.p, %.preheader231.i
  %i.dk = phi i32 [ %i.dh, %.preheader231.i ], [ %i.dq, %bb.p ]
  store i32 0, ptr %i.dd, align 8, !tbaa !145
  %i.dl = getelementptr inbounds nuw i8, ptr %i.aa, i64 96 ; 2 uses
  store i32 1, ptr %i.dl, align 8, !tbaa !146
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aa, i64 100
  store i32 0, ptr %i.dm, align 4, !tbaa !147
  br label %.preheader230.i

bb.p:                                             ; preds = %bb.p, %.lr.ph251.i
  %indvars.iv289.i = phi i64 [ 0, %.lr.ph251.i ], [ %indvars.iv.next290.i, %bb.p ] ; 2 uses
  %i.dn = load ptr, ptr %i.dj, align 8, !tbaa !28
  %i.do = getelementptr inbounds nuw [1072 x i8], ptr %i.dn, i64 %indvars.iv289.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 520
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %i.dp, i8 0, i64 480, i1 false)
  %indvars.iv.next290.i = add nuw nsw i64 %indvars.iv289.i, 1 ; 2 uses
  %i.dq = load i32, ptr %i.dg, align 4, !tbaa !54 ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next290.i, %i.dr
  br i1 %i.ds, label %bb.p, label %.thread.i, !llvm.loop !111

bb.q:                                             ; preds = %.loopexit232.i
  %.phi.trans.insert352.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 96 ; 3 uses
  %.pre353.i = load i32, ptr %.phi.trans.insert352.i, align 8, !tbaa !146
  %i.dt = icmp eq i32 %.pre353.i, 0
  br i1 %i.dt, label %bb.aa, label %..preheader230.i_crit_edge

..preheader230.i_crit_edge:                       ; preds = %bb.q
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !54
  br label %.preheader230.i

.preheader230.i:                                  ; preds = %..preheader230.i_crit_edge, %.thread.i
  %i.du = phi i32 [ %i.dk, %.thread.i ], [ %.pre, %..preheader230.i_crit_edge ]
  %i.dv = phi ptr [ %i.dl, %.thread.i ], [ %.phi.trans.insert352.i, %..preheader230.i_crit_edge ]
  %i.dw = phi i32 [ 0, %.thread.i ], [ %i.de, %..preheader230.i_crit_edge ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %i.dy = icmp sgt i32 %i.du, 0
  br i1 %i.dy, label %.lr.ph254.i, label %._crit_edge255.i

.lr.ph254.i:                                      ; preds = %.preheader230.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aa, i64 232
  %i.ea = getelementptr inbounds nuw i8, ptr %i.aa, i64 240
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.aa, i64 208 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.aa, i64 120 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.aa, i64 272 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.aa, i64 332
  %i.eh = getelementptr inbounds nuw i8, ptr %i.aa, i64 264
  br label %bb.r

._crit_edge255.loopexit.i:                        ; preds = %sample_noise_block.exit.i
  %.pre354.pre.i = load i32, ptr %i.dd, align 8, !tbaa !145
  br label %._crit_edge255.i

._crit_edge255.i:                                 ; preds = %._crit_edge255.loopexit.i, %.preheader230.i
  %.pre354.i = phi i32 [ %.pre354.pre.i, %._crit_edge255.loopexit.i ], [ %i.dw, %.preheader230.i ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.aa, i64 100 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !147
  %i.ek = add nsw i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ei, align 4, !tbaa !147
  br label %bb.aa

bb.r:                                             ; preds = %sample_noise_block.exit.i, %.lr.ph254.i
  %indvars.iv292.i = phi i64 [ 0, %.lr.ph254.i ], [ %indvars.iv.next293.i, %sample_noise_block.exit.i ] ; 3 uses
  %i.el = load ptr, ptr %i.dz, align 8, !tbaa !28
  %i.em = getelementptr inbounds nuw [1072 x i8], ptr %i.el, i64 %indvars.iv292.i ; 12 uses
  %i.en = load ptr, ptr %i.ea, align 8, !tbaa !55
  %i.eo = getelementptr i8, ptr %i.en, i64 96
  %.val.i = load ptr, ptr %i.eo, align 8, !tbaa !60
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %indvars.iv292.i
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !61 ; 9 uses
  %i.er = ptrtoaddr ptr %i.eq to i64              ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 480
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !64 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 472
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !65 ; 11 uses
  %i.ew = ptrtoaddr ptr %i.ev to i64              ; 3 uses
  %i.ex = load i32, ptr %i.eb, align 8, !tbaa !66
  switch i32 %i.ex, label %.loopexit.i.i [
    i32 8, label %.preheader1.i.i
    i32 9, label %.preheader4.i.i
  ]

.preheader4.i.i:                                  ; preds = %bb.r
  %i.ey = load i32, ptr %i.ag, align 8, !tbaa !52 ; 5 uses
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %.lr.ph.i.i, label %.preheader2.i.i

.lr.ph.i.i:                                       ; preds = %.preheader4.i.i
  %i.fa = load ptr, ptr %i.ec, align 8, !tbaa !67 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ey to i64 ; 5 uses
  %min.iters.check98 = icmp ult i32 %i.ey, 4
  br i1 %min.iters.check98, label %scalar.ph97.preheader, label %vector.memcheck94

vector.memcheck94:                                ; preds = %.lr.ph.i.i
  %i.fb = ptrtoaddr ptr %i.fa to i64
  %i.fc = sub i64 %i.fb, %i.ew
  %diff.check95 = icmp ugt i64 %i.fc, -32
  %i.fd = sub i64 %i.er, %i.ew
  %diff.check96 = icmp ugt i64 %i.fd, -32
  %conflict.rdx = or i1 %diff.check95, %diff.check96
  br i1 %conflict.rdx, label %scalar.ph97.preheader, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck94
  %n.vec100 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next107, %vector.body101 ] ; 4 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %index102 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load103 = load <2 x double>, ptr %i.fe, align 8, !tbaa !68
  %wide.load104 = load <2 x double>, ptr %i.ff, align 8, !tbaa !68
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %index102 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %wide.load105 = load <2 x double>, ptr %i.fg, align 8, !tbaa !68
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
  %1 = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %index
  %2 = shufflevector <2 x double> %wide.load, <2 x double> %wide.load91, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %3 = shufflevector <2 x double> %i.gg, <2 x double> %i.gh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %4 = fmul nsz <4 x double> %2, %3
  %5 = fmul nsz <4 x double> %4, splat (double f0x4160000000000000)
  %6 = fptrunc nsz <4 x double> %5 to <4 x float>
  store <4 x float> %6, ptr %1, align 4, !tbaa !71
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count39.i.i
  br i1 %cmp.n, label %.preheader.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph10.i.i, %middle.block
  %indvars.iv36.i.i.ph = phi i64 [ 0, %.lr.ph10.i.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter251 = and i64 %wide.trip.count39.i.i, 1
  %lcmp.mod252.not = icmp eq i64 %xtraiter251, 0
  br i1 %lcmp.mod252.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv36.i.i.ph
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !68
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv36.i.i.ph
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !71
  %i.gn = fpext nsz float %i.gm to double
  %i.go = fmul nsz double %i.gk, %i.gn
  %i.gp = fmul nsz double %i.go, f0x4160000000000000
  %i.gq = fptrunc nsz double %i.gp to float
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv36.i.i.ph
  store float %i.gq, ptr %i.gr, align 4, !tbaa !71
  %indvars.iv.next37.i.i.prol = or disjoint i64 %indvars.iv36.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv36.i.i.unr = phi i64 [ %indvars.iv36.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next37.i.i.prol, %scalar.ph.prol ]
  %i.gs = add nsw i64 %wide.trip.count39.i.i, -1
  %i.gt = icmp eq i64 %indvars.iv36.i.i.ph, %i.gs
  br i1 %i.gt, label %.preheader.i.i, label %scalar.ph

.preheader.i.i:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader1.i.i
  %i.gu = load i32, ptr %i.ed, align 8, !tbaa !72 ; 2 uses
  %i.gv = icmp slt i32 %i.fy, %i.gu
  br i1 %i.gv, label %.loopexit.sink.split.i.i, label %.loopexit.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv36.i.i = phi i64 [ %indvars.iv.next37.i.i.1, %scalar.ph ], [ %indvars.iv36.i.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv36.i.i
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !68
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv36.i.i
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !71
  %i.ha = fpext nsz float %i.gz to double
  %i.hb = fmul nsz double %i.gx, %i.ha
  %i.hc = fmul nsz double %i.hb, f0x4160000000000000
  %i.hd = fptrunc nsz double %i.hc to float
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv36.i.i
  store float %i.hd, ptr %i.he, align 4, !tbaa !71
  %indvars.iv.next37.i.i = add nuw nsw i64 %indvars.iv36.i.i, 1 ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv.next37.i.i
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !68
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv.next37.i.i
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !71
  %i.hj = fpext nsz float %i.hi to double
  %i.hk = fmul nsz double %i.hg, %i.hj
  %i.hl = fmul nsz double %i.hk, f0x4160000000000000
  %i.hm = fptrunc nsz double %i.hl to float
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv.next37.i.i
  store float %i.hm, ptr %i.hn, align 4, !tbaa !71
  %indvars.iv.next37.i.i.1 = add nuw nsw i64 %indvars.iv36.i.i, 2 ; 2 uses
  %exitcond40.not.i.i.1 = icmp eq i64 %indvars.iv.next37.i.i.1, %wide.trip.count39.i.i
  br i1 %exitcond40.not.i.i.1, label %.preheader.i.i, label %scalar.ph, !llvm.loop !114

.preheader2.i.i:                                  ; preds = %scalar.ph97.prol.loopexit, %scalar.ph97, %middle.block108, %.preheader4.i.i
  %i.ho = load i32, ptr %i.ed, align 8, !tbaa !72 ; 2 uses
  %i.hp = icmp slt i32 %i.ey, %i.ho
  br i1 %i.hp, label %.loopexit.sink.split.i.i, label %.loopexit.i.i

scalar.ph97:                                      ; preds = %scalar.ph97.prol.loopexit, %scalar.ph97
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph97 ], [ %indvars.iv.i.i.unr, %scalar.ph97.prol.loopexit ] ; 5 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i.i
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !68
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.i.i
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !68
  %i.hu = fmul nsz double %i.hr, %i.ht
  %i.hv = fmul nsz double %i.hu, f0x4160000000000000
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.i.i
  store double %i.hv, ptr %i.hw, align 8, !tbaa !68
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.next.i.i
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !68
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next.i.i
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !68
  %i.ib = fmul nsz double %i.hy, %i.ia
  %i.ic = fmul nsz double %i.ib, f0x4160000000000000
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.next.i.i
  store double %i.ic, ptr %i.id, align 8, !tbaa !68
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %.preheader2.i.i, label %scalar.ph97, !llvm.loop !115

.loopexit.sink.split.i.i:                         ; preds = %.preheader2.i.i, %.preheader.i.i
  %.sink67.i.i = phi i32 [ %i.fy, %.preheader.i.i ], [ %i.ey, %.preheader2.i.i ] ; 2 uses
  %.sink66.i.i = phi i64 [ 2, %.preheader.i.i ], [ 3, %.preheader2.i.i ] ; 2 uses
  %.sink.i.i = phi i32 [ %i.gu, %.preheader.i.i ], [ %i.ho, %.preheader2.i.i ]
  %.sink59.i.i = phi i64 [ 4, %.preheader.i.i ], [ 8, %.preheader2.i.i ]
  %i.ie = sext i32 %.sink67.i.i to i64
  %i.if = shl nsw i64 %i.ie, %.sink66.i.i
  %scevgep.i.i = getelementptr i8, ptr %i.ev, i64 %i.if
  %i.ig = xor i32 %.sink67.i.i, -1
  %i.ih = add i32 %.sink.i.i, %i.ig
  %i.ii = zext i32 %i.ih to i64
  %i.ij = shl nuw nsw i64 %i.ii, %.sink66.i.i
  %i.ik = add nuw nsw i64 %i.ij, %.sink59.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, i8 0, i64 %i.ik, i1 false), !tbaa !73
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.sink.split.i.i, %.preheader2.i.i, %.preheader.i.i, %bb.r
  %i.il = getelementptr inbounds nuw i8, ptr %i.em, i64 504
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !74
  %i.in = getelementptr inbounds nuw i8, ptr %i.em, i64 488
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !75
  %i.ip = load i64, ptr %i.ee, align 8, !tbaa !62
  call void %i.im(ptr noundef %i.io, ptr noundef %i.et, ptr noundef %i.ev, i64 noundef %i.ip) #14, !inline_history !116
  %i.iq = load i32, ptr %i.ef, align 8, !tbaa !76 ; 6 uses
  %i.ir = load i32, ptr %i.ed, align 8, !tbaa !72
  %i.is = sitofp nsz i32 %i.ir to double
  %i.it = load i32, ptr %i.eg, align 4, !tbaa !76
  %i.iu = sitofp nsz i32 %i.it to double
  %i.iv = call nsz double @llvm.minnum.f64(double %i.is, double %i.iu)
  %i.iw = fptosi double %i.iv to i32              ; 2 uses
  %.not14.i.i = icmp sgt i32 %i.iq, %i.iw
  br i1 %.not14.i.i, label %sample_noise_block.exit.i, label %.lr.ph24.i.i

.lr.ph24.i.i:                                     ; preds = %.loopexit.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %i.em, i64 520
  %i.iy = getelementptr inbounds nuw i8, ptr %i.em, i64 640
  %i.iz = getelementptr inbounds nuw i8, ptr %i.em, i64 760
  %i.ja = getelementptr inbounds nuw i8, ptr %i.em, i64 880
  %i.jb = load i32, ptr %i.eb, align 8, !tbaa !66
  %i.jc = sext i32 %i.iq to i64
  br label %bb.s

._crit_edge.loopexit.i.i:                         ; preds = %bb.z
  %i.jd = add nsw i32 %.1.i.i, -1
  %i.je = sext i32 %i.jd to i64
  br label %sample_noise_block.exit.i

bb.s:                                             ; preds = %bb.z, %.lr.ph24.i.i
  %indvars.iv45.i.i = phi i64 [ %i.jc, %.lr.ph24.i.i ], [ %indvars.iv.next46.i.i, %bb.z ] ; 4 uses
  %.012921.i.i = phi i32 [ 0, %.lr.ph24.i.i ], [ %.1.i.i, %bb.z ] ; 3 uses
  %.013020.i.i = phi i32 [ %i.iq, %.lr.ph24.i.i ], [ %.2.i.i, %bb.z ] ; 5 uses
  %.013219.i.i = phi i32 [ %i.iq, %.lr.ph24.i.i ], [ %.1133.i.i, %bb.z ] ; 3 uses
  %.014016.i.i = phi double [ 0.000000e+00, %.lr.ph24.i.i ], [ %i.kz, %bb.z ] ; 2 uses
  %.014215.i.i = phi double [ undef, %.lr.ph24.i.i ], [ %i.ky, %bb.z ]
  %i.jf = phi <2 x double> [ zeroinitializer, %.lr.ph24.i.i ], [ %i.kw, %bb.z ] ; 3 uses
  %indvars47.i.i = trunc i64 %indvars.iv45.i.i to i32 ; 2 uses
  %i.jg = icmp eq i32 %.013020.i.i, %indvars47.i.i
  %i.jh = icmp slt i32 %indvars47.i.i, %i.iw      ; 2 uses
  %or.cond.i.i = and i1 %i.jh, %i.jg
  br i1 %or.cond.i.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ji = icmp sgt i32 %.013020.i.i, %.013219.i.i
  br i1 %i.ji, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jj = sub nsw i32 %.013020.i.i, %.013219.i.i
  %i.jk = sitofp nsz i32 %i.jj to double
  %i.jl = add nsw i32 %.012921.i.i, -1
  %i.jm = sext i32 %i.jl to i64                   ; 4 uses
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.jm ; 2 uses
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !68
  %i.jp = fadd nsz double %i.jo, %i.jk
  store double %i.jp, ptr %i.jn, align 8, !tbaa !68
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.jm ; 2 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !68
  %i.js = extractelement <2 x double> %i.jf, i64 0
  %i.jt = fadd nsz double %i.js, %i.jr
  store double %i.jt, ptr %i.jq, align 8, !tbaa !68
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.iz, i64 %i.jm ; 2 uses
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !68
  %i.jw = extractelement <2 x double> %i.jf, i64 1
  %i.jx = fadd nsz double %i.jw, %i.jv
  store double %i.jx, ptr %i.ju, align 8, !tbaa !68
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.ja, i64 %i.jm ; 2 uses
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !68
  %i.ka = fadd nsz double %.014016.i.i, %i.jz
  store double %i.ka, ptr %i.jy, align 8, !tbaa !68
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.kb = add nsw i32 %.012921.i.i, 1             ; 3 uses
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !76
  %i.kf = icmp eq i32 %i.kb, 15
  %i.kg = zext i1 %i.kf to i32
  %spec.select.i.i = add nsw i32 %i.ke, %i.kg
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %.1141.i.i = phi nsz double [ 0.000000e+00, %bb.v ], [ %.014016.i.i, %bb.s ]
  %.1133.i.i = phi i32 [ %.013020.i.i, %bb.v ], [ %.013219.i.i, %bb.s ] ; 2 uses
  %.2.i.i = phi i32 [ %spec.select.i.i, %bb.v ], [ %.013020.i.i, %bb.s ] ; 2 uses
  %.1.i.i = phi i32 [ %i.kb, %bb.v ], [ %.012921.i.i, %bb.s ] ; 2 uses
  %i.kh = phi <2 x double> [ zeroinitializer, %bb.v ], [ %i.jf, %bb.s ] ; 3 uses
end_hunk_0
begin_hunk_1_@activate:bb.a
.lr.ph267.i.prol.loopexit:                        ; preds = %.lr.ph267.i.prol, %.lr.ph267.i.preheader
  %indvars.iv308.i.unr = phi i64 [ %indvars.iv308.i.ph, %.lr.ph267.i.preheader ], [ %indvars.iv.next309.i.prol, %.lr.ph267.i.prol ]
  %i.agg = sub nsw i64 %indvars.iv308.i.ph, %wide.trip.count311.i
  %i.agh = icmp ugt i64 %i.agg, -4
  br i1 %i.agh, label %.loopexit.i, label %.lr.ph267.i

.preheader.i:                                     ; preds = %bb.ak
  %i.agi = load i32, ptr %i.afe, align 8, !tbaa !143 ; 3 uses
  %i.agj = icmp sgt i32 %i.agi, 0
  br i1 %i.agj, label %.lr.ph269.preheader.i, label %.loopexit.i

.lr.ph269.preheader.i:                            ; preds = %.preheader.i
  %wide.trip.count316.i = zext nneg i32 %i.agi to i64 ; 5 uses
  %min.iters.check148 = icmp ult i32 %i.agi, 8
  %i.agk = sub i64 %i.afp, %i.aft
  %diff.check146 = icmp ugt i64 %i.agk, -32
  %or.cond202 = select i1 %min.iters.check148, i1 true, i1 %diff.check146
  br i1 %or.cond202, label %.lr.ph269.i.preheader, label %vector.ph149

vector.ph149:                                     ; preds = %.lr.ph269.preheader.i
  %n.vec150 = and i64 %wide.trip.count316.i, 2147483640 ; 3 uses
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph149
  %index152 = phi i64 [ 0, %vector.ph149 ], [ %index.next155, %vector.body151 ] ; 3 uses
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %index152 ; 2 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 16
  %wide.load153 = load <4 x float>, ptr %i.agl, align 4, !tbaa !71
  %wide.load154 = load <4 x float>, ptr %i.agm, align 4, !tbaa !71
  %i.agn = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %index152 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 16
  store <4 x float> %wide.load153, ptr %i.agn, align 4, !tbaa !71
  store <4 x float> %wide.load154, ptr %i.ago, align 4, !tbaa !71
  %index.next155 = add nuw i64 %index152, 8       ; 2 uses
  %i.agp = icmp eq i64 %index.next155, %n.vec150
  br i1 %i.agp, label %middle.block156, label %vector.body151, !llvm.loop !124

middle.block156:                                  ; preds = %vector.body151
  %cmp.n157 = icmp eq i64 %n.vec150, %wide.trip.count316.i
  br i1 %cmp.n157, label %.loopexit.i, label %.lr.ph269.i.preheader

.lr.ph269.i.preheader:                            ; preds = %.lr.ph269.preheader.i, %middle.block156
  %indvars.iv313.i.ph = phi i64 [ 0, %.lr.ph269.preheader.i ], [ %n.vec150, %middle.block156 ] ; 3 uses
  %xtraiter258 = and i64 %wide.trip.count316.i, 3 ; 2 uses
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
  br i1 %lcmp.mod259.not, label %.lr.ph269.i.prol.loopexit, label %.lr.ph269.i.prol

.lr.ph269.i.prol:                                 ; preds = %.lr.ph269.i.preheader, %.lr.ph269.i.prol
  %indvars.iv313.i.prol = phi i64 [ %indvars.iv.next314.i.prol, %.lr.ph269.i.prol ], [ %indvars.iv313.i.ph, %.lr.ph269.i.preheader ] ; 3 uses
  %prol.iter260 = phi i64 [ %prol.iter260.next, %.lr.ph269.i.prol ], [ 0, %.lr.ph269.i.preheader ]
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %indvars.iv313.i.prol
  %i.agr = load float, ptr %i.agq, align 4, !tbaa !71
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %indvars.iv313.i.prol
  store float %i.agr, ptr %i.ags, align 4, !tbaa !71
  %indvars.iv.next314.i.prol = add nuw nsw i64 %indvars.iv313.i.prol, 1 ; 2 uses
  %prol.iter260.next = add i64 %prol.iter260, 1   ; 2 uses
  %prol.iter260.cmp.not = icmp eq i64 %prol.iter260.next, %xtraiter258
  br i1 %prol.iter260.cmp.not, label %.lr.ph269.i.prol.loopexit, label %.lr.ph269.i.prol, !llvm.loop !125

.lr.ph269.i.prol.loopexit:                        ; preds = %.lr.ph269.i.prol, %.lr.ph269.i.preheader
  %indvars.iv313.i.unr = phi i64 [ %indvars.iv313.i.ph, %.lr.ph269.i.preheader ], [ %indvars.iv.next314.i.prol, %.lr.ph269.i.prol ]
  %i.agt = sub nsw i64 %indvars.iv313.i.ph, %wide.trip.count316.i
  %i.agu = icmp ugt i64 %i.agt, -4
  br i1 %i.agu, label %.loopexit.i, label %.lr.ph269.i

.lr.ph269.i:                                      ; preds = %.lr.ph269.i.prol.loopexit, %.lr.ph269.i
  %indvars.iv313.i = phi i64 [ %indvars.iv.next314.i.3, %.lr.ph269.i ], [ %indvars.iv313.i.unr, %.lr.ph269.i.prol.loopexit ] ; 6 uses
  %i.agv = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %indvars.iv313.i
  %i.agw = load float, ptr %i.agv, align 4, !tbaa !71
  %i.agx = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %indvars.iv313.i
  store float %i.agw, ptr %i.agx, align 4, !tbaa !71
  %indvars.iv.next314.i = add nuw nsw i64 %indvars.iv313.i, 1 ; 2 uses
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %indvars.iv.next314.i
  %i.agz = load float, ptr %i.agy, align 4, !tbaa !71
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %indvars.iv.next314.i
  store float %i.agz, ptr %i.aha, align 4, !tbaa !71
  %indvars.iv.next314.i.1 = add nuw nsw i64 %indvars.iv313.i, 2 ; 2 uses
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %indvars.iv.next314.i.1
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !71
  %i.ahd = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %indvars.iv.next314.i.1
  store float %i.ahc, ptr %i.ahd, align 4, !tbaa !71
  %indvars.iv.next314.i.2 = add nuw nsw i64 %indvars.iv313.i, 3 ; 2 uses
  %i.ahe = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %indvars.iv.next314.i.2
  %i.ahf = load float, ptr %i.ahe, align 4, !tbaa !71
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %indvars.iv.next314.i.2
  store float %i.ahf, ptr %i.ahg, align 4, !tbaa !71
  %indvars.iv.next314.i.3 = add nuw nsw i64 %indvars.iv313.i, 4 ; 2 uses
  %exitcond317.not.i.3 = icmp eq i64 %indvars.iv.next314.i.3, %wide.trip.count316.i
  br i1 %exitcond317.not.i.3, label %.loopexit.i, label %.lr.ph269.i, !llvm.loop !126

.lr.ph267.i:                                      ; preds = %.lr.ph267.i.prol.loopexit, %.lr.ph267.i
  %indvars.iv308.i = phi i64 [ %indvars.iv.next309.i.3, %.lr.ph267.i ], [ %indvars.iv308.i.unr, %.lr.ph267.i.prol.loopexit ] ; 6 uses
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr %i.afo, i64 %indvars.iv308.i
  %i.ahi = load double, ptr %i.ahh, align 8, !tbaa !68
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %indvars.iv308.i
  store double %i.ahi, ptr %i.ahj, align 8, !tbaa !68
  %indvars.iv.next309.i = add nuw nsw i64 %indvars.iv308.i, 1 ; 2 uses
  %i.ahk = getelementptr inbounds nuw [8 x i8], ptr %i.afo, i64 %indvars.iv.next309.i
  %i.ahl = load double, ptr %i.ahk, align 8, !tbaa !68
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %indvars.iv.next309.i
  store double %i.ahl, ptr %i.ahm, align 8, !tbaa !68
  %indvars.iv.next309.i.1 = add nuw nsw i64 %indvars.iv308.i, 2 ; 2 uses
  %i.ahn = getelementptr inbounds nuw [8 x i8], ptr %i.afo, i64 %indvars.iv.next309.i.1
  %i.aho = load double, ptr %i.ahn, align 8, !tbaa !68
  %i.ahp = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %indvars.iv.next309.i.1
  store double %i.aho, ptr %i.ahp, align 8, !tbaa !68
  %indvars.iv.next309.i.2 = add nuw nsw i64 %indvars.iv308.i, 3 ; 2 uses
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %i.afo, i64 %indvars.iv.next309.i.2
  %i.ahr = load double, ptr %i.ahq, align 8, !tbaa !68
  %i.ahs = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %indvars.iv.next309.i.2
  store double %i.ahr, ptr %i.ahs, align 8, !tbaa !68
  %indvars.iv.next309.i.3 = add nuw nsw i64 %indvars.iv308.i, 4 ; 2 uses
  %exitcond312.not.i.3 = icmp eq i64 %indvars.iv.next309.i.3, %wide.trip.count311.i
  br i1 %exitcond312.not.i.3, label %.loopexit.i, label %.lr.ph267.i, !llvm.loop !127

bb.al:                                            ; preds = %.lr.ph273.split.i
  switch i32 %i.afu, label %.loopexit.i [
    i32 8, label %.preheader220.i
    i32 9, label %.preheader222.i
  ]

.preheader222.i:                                  ; preds = %bb.al
  %i.aht = load i32, ptr %i.afe, align 8, !tbaa !143 ; 3 uses
  %i.ahu = icmp sgt i32 %i.aht, 0
  br i1 %i.ahu, label %.lr.ph263.preheader.i, label %.loopexit.i

.lr.ph263.preheader.i:                            ; preds = %.preheader222.i
  %wide.trip.count301.i = zext nneg i32 %i.aht to i64 ; 5 uses
  %min.iters.check188 = icmp ult i32 %i.aht, 4
  %i.ahv = sub i64 %i.afj, %i.aft
  %diff.check186 = icmp ugt i64 %i.ahv, -32
  %or.cond203 = select i1 %min.iters.check188, i1 true, i1 %diff.check186
  br i1 %or.cond203, label %.lr.ph263.i.preheader, label %vector.ph189

vector.ph189:                                     ; preds = %.lr.ph263.preheader.i
  %n.vec190 = and i64 %wide.trip.count301.i, 2147483644 ; 3 uses
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph189
  %index192 = phi i64 [ 0, %vector.ph189 ], [ %index.next195, %vector.body191 ] ; 3 uses
  %i.ahw = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %index192 ; 2 uses
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahw, i64 16
  %wide.load193 = load <2 x double>, ptr %i.ahw, align 8, !tbaa !68
  %wide.load194 = load <2 x double>, ptr %i.ahx, align 8, !tbaa !68
  %i.ahy = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %index192 ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 16
  store <2 x double> %wide.load193, ptr %i.ahy, align 8, !tbaa !68
  store <2 x double> %wide.load194, ptr %i.ahz, align 8, !tbaa !68
  %index.next195 = add nuw i64 %index192, 4       ; 2 uses
  %i.aia = icmp eq i64 %index.next195, %n.vec190
  br i1 %i.aia, label %middle.block196, label %vector.body191, !llvm.loop !128

middle.block196:                                  ; preds = %vector.body191
  %cmp.n197 = icmp eq i64 %n.vec190, %wide.trip.count301.i
  br i1 %cmp.n197, label %.loopexit.i, label %.lr.ph263.i.preheader

.lr.ph263.i.preheader:                            ; preds = %.lr.ph263.preheader.i, %middle.block196
  %indvars.iv298.i.ph = phi i64 [ 0, %.lr.ph263.preheader.i ], [ %n.vec190, %middle.block196 ] ; 3 uses
  %xtraiter253 = and i64 %wide.trip.count301.i, 3 ; 2 uses
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  br i1 %lcmp.mod254.not, label %.lr.ph263.i.prol.loopexit, label %.lr.ph263.i.prol

.lr.ph263.i.prol:                                 ; preds = %.lr.ph263.i.preheader, %.lr.ph263.i.prol
  %indvars.iv298.i.prol = phi i64 [ %indvars.iv.next299.i.prol, %.lr.ph263.i.prol ], [ %indvars.iv298.i.ph, %.lr.ph263.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph263.i.prol ], [ 0, %.lr.ph263.i.preheader ]
  %i.aib = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %indvars.iv298.i.prol
  %i.aic = load double, ptr %i.aib, align 8, !tbaa !68
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %indvars.iv298.i.prol
  store double %i.aic, ptr %i.aid, align 8, !tbaa !68
  %indvars.iv.next299.i.prol = add nuw nsw i64 %indvars.iv298.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter253
  br i1 %prol.iter.cmp.not, label %.lr.ph263.i.prol.loopexit, label %.lr.ph263.i.prol, !llvm.loop !129

.lr.ph263.i.prol.loopexit:                        ; preds = %.lr.ph263.i.prol, %.lr.ph263.i.preheader
  %indvars.iv298.i.unr = phi i64 [ %indvars.iv298.i.ph, %.lr.ph263.i.preheader ], [ %indvars.iv.next299.i.prol, %.lr.ph263.i.prol ]
  %i.aie = sub nsw i64 %indvars.iv298.i.ph, %wide.trip.count301.i
  %i.aif = icmp ugt i64 %i.aie, -4
  br i1 %i.aif, label %.loopexit.i, label %.lr.ph263.i

.preheader220.i:                                  ; preds = %bb.al
  %i.aig = load i32, ptr %i.afe, align 8, !tbaa !143 ; 3 uses
  %i.aih = icmp sgt i32 %i.aig, 0
  br i1 %i.aih, label %.lr.ph265.preheader.i, label %.loopexit.i

.lr.ph265.preheader.i:                            ; preds = %.preheader220.i
  %wide.trip.count306.i = zext nneg i32 %i.aig to i64 ; 3 uses
  %min.iters.check174 = icmp ult i32 %i.aig, 4
  br i1 %min.iters.check174, label %.lr.ph265.i.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %.lr.ph265.preheader.i
  %n.vec176 = and i64 %wide.trip.count306.i, 2147483644 ; 3 uses
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next181, %vector.body177 ] ; 3 uses
  %i.aii = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %index178 ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 16
  %wide.load179 = load <2 x double>, ptr %i.aii, align 8, !tbaa !68
  %wide.load180 = load <2 x double>, ptr %i.aij, align 8, !tbaa !68
  %i.aik = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %index178
  %7 = shufflevector <2 x double> %wide.load179, <2 x double> %wide.load180, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %8 = fptrunc nsz <4 x double> %7 to <4 x float>
  store <4 x float> %8, ptr %i.aik, align 4, !tbaa !71
  %index.next181 = add nuw i64 %index178, 4       ; 2 uses
  %i.ail = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.ail, label %middle.block182, label %vector.body177, !llvm.loop !130

middle.block182:                                  ; preds = %vector.body177
  %cmp.n183 = icmp eq i64 %n.vec176, %wide.trip.count306.i
  br i1 %cmp.n183, label %.loopexit.i, label %.lr.ph265.i.preheader

.lr.ph265.i.preheader:                            ; preds = %.lr.ph265.preheader.i, %middle.block182
  %indvars.iv303.i.ph = phi i64 [ 0, %.lr.ph265.preheader.i ], [ %n.vec176, %middle.block182 ]
  br label %.lr.ph265.i

.lr.ph265.i:                                      ; preds = %.lr.ph265.i.preheader, %.lr.ph265.i
  %indvars.iv303.i = phi i64 [ %indvars.iv.next304.i, %.lr.ph265.i ], [ %indvars.iv303.i.ph, %.lr.ph265.i.preheader ] ; 3 uses
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %indvars.iv303.i
  %i.ain = load double, ptr %i.aim, align 8, !tbaa !68
  %i.aio = fptrunc nsz double %i.ain to float
  %i.aip = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %indvars.iv303.i
  store float %i.aio, ptr %i.aip, align 4, !tbaa !71
  %indvars.iv.next304.i = add nuw nsw i64 %indvars.iv303.i, 1 ; 2 uses
  %exitcond307.not.i = icmp eq i64 %indvars.iv.next304.i, %wide.trip.count306.i
  br i1 %exitcond307.not.i, label %.loopexit.i, label %.lr.ph265.i, !llvm.loop !131

.lr.ph263.i:                                      ; preds = %.lr.ph263.i.prol.loopexit, %.lr.ph263.i
  %indvars.iv298.i = phi i64 [ %indvars.iv.next299.i.3, %.lr.ph263.i ], [ %indvars.iv298.i.unr, %.lr.ph263.i.prol.loopexit ] ; 6 uses
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %indvars.iv298.i
  %i.air = load double, ptr %i.aiq, align 8, !tbaa !68
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %indvars.iv298.i
  store double %i.air, ptr %i.ais, align 8, !tbaa !68
  %indvars.iv.next299.i = add nuw nsw i64 %indvars.iv298.i, 1 ; 2 uses
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %indvars.iv.next299.i
  %i.aiu = load double, ptr %i.ait, align 8, !tbaa !68
  %i.aiv = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %indvars.iv.next299.i
  store double %i.aiu, ptr %i.aiv, align 8, !tbaa !68
  %indvars.iv.next299.i.1 = add nuw nsw i64 %indvars.iv298.i, 2 ; 2 uses
  %i.aiw = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %indvars.iv.next299.i.1
  %i.aix = load double, ptr %i.aiw, align 8, !tbaa !68
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %indvars.iv.next299.i.1
  store double %i.aix, ptr %i.aiy, align 8, !tbaa !68
  %indvars.iv.next299.i.2 = add nuw nsw i64 %indvars.iv298.i, 3 ; 2 uses
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %indvars.iv.next299.i.2
  %i.aja = load double, ptr %i.aiz, align 8, !tbaa !68
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %indvars.iv.next299.i.2
  store double %i.aja, ptr %i.ajb, align 8, !tbaa !68
  %indvars.iv.next299.i.3 = add nuw nsw i64 %indvars.iv298.i, 4 ; 2 uses
  %exitcond302.not.i.3 = icmp eq i64 %indvars.iv.next299.i.3, %wide.trip.count301.i
  br i1 %exitcond302.not.i.3, label %.loopexit.i, label %.lr.ph263.i, !llvm.loop !132

bb.am:                                            ; preds = %.lr.ph273.split.i
  switch i32 %i.afu, label %.loopexit.i [
    i32 8, label %.preheader224.i
    i32 9, label %.preheader226.i
  ]

.preheader226.i:                                  ; preds = %bb.am
  %i.ajc = load i32, ptr %i.afe, align 8, !tbaa !143 ; 3 uses
  %i.ajd = icmp sgt i32 %i.ajc, 0
  br i1 %i.ajd, label %.lr.ph259.preheader.i, label %.loopexit.i

.lr.ph259.preheader.i:                            ; preds = %.preheader226.i
  %wide.trip.count321.i = zext nneg i32 %i.ajc to i64 ; 5 uses
  %min.iters.check132 = icmp ult i32 %i.ajc, 6
  br i1 %min.iters.check132, label %.lr.ph259.i.preheader, label %vector.memcheck127

vector.memcheck127:                               ; preds = %.lr.ph259.preheader.i
  %i.aje = sub i64 %i.afp, %i.aft
  %diff.check128 = icmp ugt i64 %i.aje, -32
  %i.ajf = sub i64 %i.afj, %i.aft
  %diff.check129 = icmp ugt i64 %i.ajf, -32
  %conflict.rdx130 = or i1 %diff.check128, %diff.check129
  br i1 %conflict.rdx130, label %.lr.ph259.i.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %vector.memcheck127
  %n.vec134 = and i64 %wide.trip.count321.i, 2147483644 ; 3 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next141, %vector.body135 ] ; 4 uses
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %i.afo, i64 %index136 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 16
  %wide.load137 = load <2 x double>, ptr %i.ajg, align 8, !tbaa !68
  %wide.load138 = load <2 x double>, ptr %i.ajh, align 8, !tbaa !68
  %i.aji = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %index136 ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %wide.load139 = load <2 x double>, ptr %i.aji, align 8, !tbaa !68
  %wide.load140 = load <2 x double>, ptr %i.ajj, align 8, !tbaa !68
  %i.ajk = fsub nsz <2 x double> %wide.load137, %wide.load139
  %i.ajl = fsub nsz <2 x double> %wide.load138, %wide.load140
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %index136 ; 2 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 16
  store <2 x double> %i.ajk, ptr %i.ajm, align 8, !tbaa !68
  store <2 x double> %i.ajl, ptr %i.ajn, align 8, !tbaa !68
  %index.next141 = add nuw i64 %index136, 4       ; 2 uses
  %i.ajo = icmp eq i64 %index.next141, %n.vec134
  br i1 %i.ajo, label %middle.block142, label %vector.body135, !llvm.loop !133

middle.block142:                                  ; preds = %vector.body135
  %cmp.n143 = icmp eq i64 %n.vec134, %wide.trip.count321.i
  br i1 %cmp.n143, label %.loopexit.i, label %.lr.ph259.i.preheader

.lr.ph259.i.preheader:                            ; preds = %vector.memcheck127, %.lr.ph259.preheader.i, %middle.block142
  %indvars.iv318.i.ph = phi i64 [ 0, %vector.memcheck127 ], [ 0, %.lr.ph259.preheader.i ], [ %n.vec134, %middle.block142 ] ; 3 uses
  %xtraiter261 = and i64 %wide.trip.count321.i, 3 ; 2 uses
  %lcmp.mod262.not = icmp eq i64 %xtraiter261, 0
  br i1 %lcmp.mod262.not, label %.lr.ph259.i.prol.loopexit, label %.lr.ph259.i.prol

.lr.ph259.i.prol:                                 ; preds = %.lr.ph259.i.preheader, %.lr.ph259.i.prol
  %indvars.iv318.i.prol = phi i64 [ %indvars.iv.next319.i.prol, %.lr.ph259.i.prol ], [ %indvars.iv318.i.ph, %.lr.ph259.i.preheader ] ; 4 uses
  %prol.iter263 = phi i64 [ %prol.iter263.next, %.lr.ph259.i.prol ], [ 0, %.lr.ph259.i.preheader ]
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %i.afo, i64 %indvars.iv318.i.prol
  %i.ajq = load double, ptr %i.ajp, align 8, !tbaa !68
  %i.ajr = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %indvars.iv318.i.prol
  %i.ajs = load double, ptr %i.ajr, align 8, !tbaa !68
  %i.ajt = fsub nsz double %i.ajq, %i.ajs
  %i.aju = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %indvars.iv318.i.prol
  store double %i.ajt, ptr %i.aju, align 8, !tbaa !68
  %indvars.iv.next319.i.prol = add nuw nsw i64 %indvars.iv318.i.prol, 1 ; 2 uses
  %prol.iter263.next = add i64 %prol.iter263, 1   ; 2 uses
  %prol.iter263.cmp.not = icmp eq i64 %prol.iter263.next, %xtraiter261
  br i1 %prol.iter263.cmp.not, label %.lr.ph259.i.prol.loopexit, label %.lr.ph259.i.prol, !llvm.loop !134

.lr.ph259.i.prol.loopexit:                        ; preds = %.lr.ph259.i.prol, %.lr.ph259.i.preheader
  %indvars.iv318.i.unr = phi i64 [ %indvars.iv318.i.ph, %.lr.ph259.i.preheader ], [ %indvars.iv.next319.i.prol, %.lr.ph259.i.prol ]
  %i.ajv = sub nsw i64 %indvars.iv318.i.ph, %wide.trip.count321.i
  %i.ajw = icmp ugt i64 %i.ajv, -4
  br i1 %i.ajw, label %.loopexit.i, label %.lr.ph259.i

.preheader224.i:                                  ; preds = %bb.am
  %i.ajx = load i32, ptr %i.afe, align 8, !tbaa !143 ; 3 uses
  %i.ajy = icmp sgt i32 %i.ajx, 0
  br i1 %i.ajy, label %.lr.ph261.preheader.i, label %.loopexit.i

.lr.ph261.preheader.i:                            ; preds = %.preheader224.i
  %wide.trip.count326.i = zext nneg i32 %i.ajx to i64 ; 5 uses
  %min.iters.check114 = icmp ult i32 %i.ajx, 4
  %i.ajz = sub i64 %i.afp, %i.aft
  %diff.check112 = icmp ugt i64 %i.ajz, -16
  %or.cond204 = select i1 %min.iters.check114, i1 true, i1 %diff.check112
  br i1 %or.cond204, label %.lr.ph261.i.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %.lr.ph261.preheader.i
  %n.vec116 = and i64 %wide.trip.count326.i, 2147483644 ; 3 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph115
  %index118 = phi i64 [ 0, %vector.ph115 ], [ %index.next123, %vector.body117 ] ; 4 uses
  %i.aka = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %index118 ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  %wide.load119 = load <2 x float>, ptr %i.aka, align 4, !tbaa !71
  %wide.load120 = load <2 x float>, ptr %i.akb, align 4, !tbaa !71
  %i.akc = fpext nsz <2 x float> %wide.load119 to <2 x double>
  %i.akd = fpext nsz <2 x float> %wide.load120 to <2 x double>
  %i.ake = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %index118 ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 16
  %wide.load121 = load <2 x double>, ptr %i.ake, align 8, !tbaa !68
  %wide.load122 = load <2 x double>, ptr %i.akf, align 8, !tbaa !68
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %index118
  %10 = shufflevector <2 x double> %i.akc, <2 x double> %i.akd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %11 = shufflevector <2 x double> %wide.load121, <2 x double> %wide.load122, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %12 = fsub nsz <4 x double> %10, %11
  %13 = fptrunc nsz <4 x double> %12 to <4 x float>
  store <4 x float> %13, ptr %9, align 4, !tbaa !71
  %index.next123 = add nuw i64 %index118, 4       ; 2 uses
  %i.akg = icmp eq i64 %index.next123, %n.vec116
  br i1 %i.akg, label %middle.block124, label %vector.body117, !llvm.loop !135

middle.block124:                                  ; preds = %vector.body117
  %cmp.n125 = icmp eq i64 %n.vec116, %wide.trip.count326.i
  br i1 %cmp.n125, label %.loopexit.i, label %.lr.ph261.i.preheader

.lr.ph261.i.preheader:                            ; preds = %.lr.ph261.preheader.i, %middle.block124
  %indvars.iv323.i.ph = phi i64 [ 0, %.lr.ph261.preheader.i ], [ %n.vec116, %middle.block124 ] ; 6 uses
  %xtraiter264 = and i64 %wide.trip.count326.i, 1
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  br i1 %lcmp.mod265.not, label %.lr.ph261.i.prol.loopexit, label %.lr.ph261.i.prol

.lr.ph261.i.prol:                                 ; preds = %.lr.ph261.i.preheader
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %indvars.iv323.i.ph
  %i.aki = load float, ptr %i.akh, align 4, !tbaa !71
  %i.akj = fpext nsz float %i.aki to double
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %indvars.iv323.i.ph
  %i.akl = load double, ptr %i.akk, align 8, !tbaa !68
  %i.akm = fsub nsz double %i.akj, %i.akl
  %i.akn = fptrunc nsz double %i.akm to float
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %indvars.iv323.i.ph
  store float %i.akn, ptr %i.ako, align 4, !tbaa !71
  %indvars.iv.next324.i.prol = or disjoint i64 %indvars.iv323.i.ph, 1
  br label %.lr.ph261.i.prol.loopexit

.lr.ph261.i.prol.loopexit:                        ; preds = %.lr.ph261.i.prol, %.lr.ph261.i.preheader
  %indvars.iv323.i.unr = phi i64 [ %indvars.iv323.i.ph, %.lr.ph261.i.preheader ], [ %indvars.iv.next324.i.prol, %.lr.ph261.i.prol ]
  %i.akp = add nsw i64 %wide.trip.count326.i, -1
  %i.akq = icmp eq i64 %indvars.iv323.i.ph, %i.akp
  br i1 %i.akq, label %.loopexit.i, label %.lr.ph261.i

.lr.ph261.i:                                      ; preds = %.lr.ph261.i.prol.loopexit, %.lr.ph261.i
  %indvars.iv323.i = phi i64 [ %indvars.iv.next324.i.1, %.lr.ph261.i ], [ %indvars.iv323.i.unr, %.lr.ph261.i.prol.loopexit ] ; 5 uses
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %indvars.iv323.i
  %i.aks = load float, ptr %i.akr, align 4, !tbaa !71
  %i.akt = fpext nsz float %i.aks to double
  %i.aku = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %indvars.iv323.i
  %i.akv = load double, ptr %i.aku, align 8, !tbaa !68
  %i.akw = fsub nsz double %i.akt, %i.akv
  %i.akx = fptrunc nsz double %i.akw to float
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %indvars.iv323.i
  store float %i.akx, ptr %i.aky, align 4, !tbaa !71
  %indvars.iv.next324.i = add nuw nsw i64 %indvars.iv323.i, 1 ; 3 uses
  %i.akz = getelementptr inbounds nuw [4 x i8], ptr %i.afo, i64 %indvars.iv.next324.i
  %i.ala = load float, ptr %i.akz, align 4, !tbaa !71
  %i.alb = fpext nsz float %i.ala to double
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %indvars.iv.next324.i
  %i.ald = load double, ptr %i.alc, align 8, !tbaa !68
  %i.ale = fsub nsz double %i.alb, %i.ald
  %i.alf = fptrunc nsz double %i.ale to float
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %i.afs, i64 %indvars.iv.next324.i
  store float %i.alf, ptr %i.alg, align 4, !tbaa !71
  %indvars.iv.next324.i.1 = add nuw nsw i64 %indvars.iv323.i, 2 ; 2 uses
  %exitcond327.not.i.1 = icmp eq i64 %indvars.iv.next324.i.1, %wide.trip.count326.i
  br i1 %exitcond327.not.i.1, label %.loopexit.i, label %.lr.ph261.i, !llvm.loop !136

.lr.ph259.i:                                      ; preds = %.lr.ph259.i.prol.loopexit, %.lr.ph259.i
  %indvars.iv318.i = phi i64 [ %indvars.iv.next319.i.3, %.lr.ph259.i ], [ %indvars.iv318.i.unr, %.lr.ph259.i.prol.loopexit ] ; 7 uses
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %i.afo, i64 %indvars.iv318.i
  %i.ali = load double, ptr %i.alh, align 8, !tbaa !68
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %indvars.iv318.i
  %i.alk = load double, ptr %i.alj, align 8, !tbaa !68
  %i.all = fsub nsz double %i.ali, %i.alk
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %indvars.iv318.i
  store double %i.all, ptr %i.alm, align 8, !tbaa !68
  %indvars.iv.next319.i = add nuw nsw i64 %indvars.iv318.i, 1 ; 3 uses
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %i.afo, i64 %indvars.iv.next319.i
  %i.alo = load double, ptr %i.aln, align 8, !tbaa !68
  %i.alp = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %indvars.iv.next319.i
  %i.alq = load double, ptr %i.alp, align 8, !tbaa !68
  %i.alr = fsub nsz double %i.alo, %i.alq
  %i.als = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %indvars.iv.next319.i
  store double %i.alr, ptr %i.als, align 8, !tbaa !68
  %indvars.iv.next319.i.1 = add nuw nsw i64 %indvars.iv318.i, 2 ; 3 uses
  %i.alt = getelementptr inbounds nuw [8 x i8], ptr %i.afo, i64 %indvars.iv.next319.i.1
  %i.alu = load double, ptr %i.alt, align 8, !tbaa !68
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %indvars.iv.next319.i.1
  %i.alw = load double, ptr %i.alv, align 8, !tbaa !68
  %i.alx = fsub nsz double %i.alu, %i.alw
  %i.aly = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %indvars.iv.next319.i.1
  store double %i.alx, ptr %i.aly, align 8, !tbaa !68
  %indvars.iv.next319.i.2 = add nuw nsw i64 %indvars.iv318.i, 3 ; 3 uses
  %i.alz = getelementptr inbounds nuw [8 x i8], ptr %i.afo, i64 %indvars.iv.next319.i.2
  %i.ama = load double, ptr %i.alz, align 8, !tbaa !68
  %i.amb = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %indvars.iv.next319.i.2
  %i.amc = load double, ptr %i.amb, align 8, !tbaa !68
  %i.amd = fsub nsz double %i.ama, %i.amc
  %i.ame = getelementptr inbounds nuw [8 x i8], ptr %i.afs, i64 %indvars.iv.next319.i.2
  store double %i.amd, ptr %i.ame, align 8, !tbaa !68
  %indvars.iv.next319.i.3 = add nuw nsw i64 %indvars.iv318.i, 4 ; 2 uses
  %exitcond322.not.i.3 = icmp eq i64 %indvars.iv.next319.i.3, %wide.trip.count321.i
  br i1 %exitcond322.not.i.3, label %.loopexit.i, label %.lr.ph259.i, !llvm.loop !137

bb.an:                                            ; preds = %.lr.ph273.i
  %.not200.i = icmp eq ptr %i.aem, %i.aey
  br i1 %.not200.i, label %.critedge204.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @av_frame_free(ptr noundef nonnull %i.a) #14
  br label %.critedge204.i

.critedge204.i:                                   ; preds = %bb.ao, %bb.an
  call void @av_frame_free(ptr noundef nonnull %i.b) #14
  br label %output_frame.exit

.loopexit.i:                                      ; preds = %.lr.ph263.i.prol.loopexit, %.lr.ph263.i, %.lr.ph265.i, %.lr.ph267.i.prol.loopexit, %.lr.ph267.i, %.lr.ph269.i.prol.loopexit, %.lr.ph269.i, %.lr.ph259.i.prol.loopexit, %.lr.ph259.i, %.lr.ph261.i.prol.loopexit, %.lr.ph261.i, %middle.block196, %middle.block182, %middle.block170, %middle.block156, %middle.block142, %middle.block124, %.preheader224.i, %.preheader226.i, %bb.am, %.preheader220.i, %.preheader222.i, %bb.al, %.preheader.i, %.preheader218.i, %bb.ak
  %i.amf = load i32, ptr %i.ai, align 4, !tbaa !42 ; 2 uses
  %i.amg = sext i32 %i.amf to i64
  %i.amh = getelementptr inbounds [8 x i8], ptr %i.afi, i64 %i.amg
  %i.ami = load i32, ptr %i.ag, align 8, !tbaa !52
  %i.amj = sub nsw i32 %i.ami, %i.amf
  %i.amk = sext i32 %i.amj to i64
  %i.aml = shl nsw i64 %i.amk, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.afi, ptr align 8 %i.amh, i64 %i.aml, i1 false)
  %i.amm = load i32, ptr %i.ag, align 8, !tbaa !52
  %i.amn = load i32, ptr %i.ai, align 4, !tbaa !42 ; 2 uses
  %i.amo = sub nsw i32 %i.amm, %i.amn
  %i.amp = sext i32 %i.amo to i64
  %i.amq = getelementptr inbounds [8 x i8], ptr %i.afi, i64 %i.amp
  %i.amr = sext i32 %i.amn to i64
  %i.ams = shl nsw i64 %i.amr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.amq, i8 0, i64 %i.ams, i1 false)
  %indvars.iv.next329.i = add nuw nsw i64 %indvars.iv328.i, 1 ; 2 uses
  %i.amt = load i32, ptr %i.aez, align 4, !tbaa !54
  %i.amu = sext i32 %i.amt to i64
  %.not201.i = icmp slt i64 %indvars.iv.next329.i, %i.amu
  br i1 %.not201.i, label %.lr.ph273.split.i, label %.critedge206.i, !llvm.loop !138

.critedge206.i:                                   ; preds = %.loopexit.i, %bb.aj
  %.not202.i = icmp eq ptr %i.aey, %i.aem
  br i1 %.not202.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.critedge206.i
  call void @av_frame_free(ptr noundef nonnull %i.a) #14
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.critedge206.i
  %i.amv = call i32 @ff_filter_frame(ptr noundef %i.y, ptr noundef %i.aey) #14
  br label %output_frame.exit

output_frame.exit:                                ; preds = %bb.ah, %.critedge204.i, %bb.aq
  %.3.i = phi i32 [ %i.amv, %bb.aq ], [ -558323010, %.critedge204.i ], [ -12, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aw

bb.ar:                                            ; preds = %bb.c
  %i.amw = call i32 @ff_inlink_queued_samples(ptr noundef %i.i) #14
  %i.amx = load i32, ptr %i.p, align 4, !tbaa !42
  %.not30 = icmp slt i32 %i.amw, %i.amx
  br i1 %.not30, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @ff_filter_set_ready(ptr noundef nonnull %0, i32 noundef 10) #14
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  %i.amy = call i32 @ff_inlink_acknowledge_status(ptr noundef %i.i, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #14
  %.not31 = icmp eq i32 %i.amy, 0
  br i1 %.not31, label %.critedge34, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.amz = load i32, ptr %i.e, align 4, !tbaa !76
  %i.ana = load i64, ptr %i.f, align 8, !tbaa !82
  call void @ff_avfilter_link_set_in_status(ptr noundef %i.l, i32 noundef %i.amz, i64 noundef %i.ana) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.aw

.critedge34:                                      ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  %i.anb = call i32 @ff_outlink_frame_wanted(ptr noundef %i.l) #14
  %.not32 = icmp eq i32 %i.anb, 0
  br i1 %.not32, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.critedge34
  call void @ff_inlink_request_frame(ptr noundef %i.i) #14
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.b, %.critedge34, %.critedge, %bb.av, %bb.as, %output_frame.exit
  %.2 = phi i32 [ 0, %bb.b ], [ %.3.i, %output_frame.exit ], [ 0, %bb.as ], [ 0, %bb.av ], [ %i.r, %.critedge ], [ 0, %bb.au ], [ -1497649742, %.critedge34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_input(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [15 x double], align 16           ; 6 uses
  %i.c = alloca float, align 4                    ; 9 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51   ; 2 uses
end_hunk_1
begin_hunk_2_@ff_inlink_queued_samples

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #3

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @filter_channel(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 388
  %i.d = load i32, ptr %i.c, align 4, !tbaa !248
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = sext i32 %2 to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = sdiv i64 %i.g, %i.h                      ; 2 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = add nsw i32 %2, 1
  %i.l = sext i32 %i.k to i64
  %i.m = mul nsw i64 %i.e, %i.l
  %i.n = sdiv i64 %i.m, %i.h
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.q = load i32, ptr %i.p, align 8, !tbaa !52   ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !67   ; 9 uses
  %i.t = icmp slt i32 %i.j, %i.o
  br i1 %i.t, label %.lr.ph118, label %._crit_edge

.lr.ph118:                                        ; preds = %bb.a
  %i.u = ptrtoaddr ptr %i.s to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.y = icmp sgt i32 %i.q, 0                     ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.ac = getelementptr i8, ptr %0, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 124 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.an = sext i32 %i.q to i64                    ; 2 uses
  %i.ao = shl nsw i64 %i.an, 3
  %i.ap = xor i32 %i.q, -1
  %i.aq = shl nsw i64 %i.an, 2
  %sext = shl i64 %i.i, 32
  %i.ar = ashr exact i64 %sext, 32
  %.pre = load i32, ptr %i.x, align 8, !tbaa !66
  %wide.trip.count = zext i32 %i.q to i64         ; 18 uses
  %wide.trip.count131 = zext nneg i32 %i.q to i64
  %wide.trip.count140 = zext nneg i32 %i.q to i64
  %wide.trip.count145 = zext nneg i32 %i.q to i64
  %i.as = shl nuw nsw i64 %wide.trip.count, 3     ; 5 uses
  %min.iters.check323 = icmp ult i32 %i.q, 4
  %n.vec325 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n334 = icmp eq i64 %n.vec325, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.at = add nsw i64 %wide.trip.count, -1
  %min.iters.check305 = icmp ult i32 %i.q, 4
  %n.vec307 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n316 = icmp eq i64 %n.vec307, %wide.trip.count
  %xtraiter347 = and i64 %wide.trip.count, 1
  %lcmp.mod348.not = icmp eq i64 %xtraiter347, 0
  %i.au = add nsw i64 %wide.trip.count, -1
  %min.iters.check203 = icmp ult i32 %i.q, 4
  %n.vec205 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n216 = icmp eq i64 %n.vec205, %wide.trip.count
  %xtraiter378 = and i64 %wide.trip.count, 1
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  %i.av = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i32 %i.q, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter380 = and i64 %wide.trip.count, 1
  %lcmp.mod381.not = icmp eq i64 %xtraiter380, 0
  %i.aw = add nsw i64 %wide.trip.count, -1
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret i32 0

bb.b:                                             ; preds = %.lr.ph118, %.loopexit
  %i.ax = phi i32 [ %.pre, %.lr.ph118 ], [ %i.th, %.loopexit ]
  %indvars.iv147 = phi i64 [ %i.ar, %.lr.ph118 ], [ %indvars.iv.next148, %.loopexit ] ; 3 uses
  %i.ay = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.az = getelementptr inbounds [1072 x i8], ptr %i.ay, i64 %indvars.iv147 ; 23 uses
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %indvars.iv147
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !61 ; 9 uses
  %i.bd = ptrtoaddr ptr %i.bc to i64              ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 432
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !80 ; 13 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 472 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !65 ; 21 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64              ; 3 uses
  switch i32 %i.ax, label %.loopexit99 [
    i32 8, label %.preheader100
    i32 9, label %.preheader103
  ]

.preheader103:                                    ; preds = %bb.b
  br i1 %i.y, label %.lr.ph.preheader, label %.preheader101

.lr.ph.preheader:                                 ; preds = %.preheader103
  br i1 %min.iters.check323, label %.lr.ph.preheader340, label %vector.memcheck318

vector.memcheck318:                               ; preds = %.lr.ph.preheader
  %i.bj = sub i64 %i.u, %i.bi
  %diff.check319 = icmp ugt i64 %i.bj, -32
  %i.bk = sub i64 %i.bd, %i.bi
  %diff.check320 = icmp ugt i64 %i.bk, -32
  %conflict.rdx321 = or i1 %diff.check319, %diff.check320
  br i1 %conflict.rdx321, label %.lr.ph.preheader340, label %vector.body326

vector.body326:                                   ; preds = %vector.memcheck318, %vector.body326
  %index327 = phi i64 [ %index.next332, %vector.body326 ], [ 0, %vector.memcheck318 ] ; 4 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index327 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load328 = load <2 x double>, ptr %i.bl, align 8, !tbaa !68
  %wide.load329 = load <2 x double>, ptr %i.bm, align 8, !tbaa !68
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index327 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load330 = load <2 x double>, ptr %i.bn, align 8, !tbaa !68
  %wide.load331 = load <2 x double>, ptr %i.bo, align 8, !tbaa !68
  %i.bp = fmul nsz <2 x double> %wide.load328, %wide.load330
  %i.bq = fmul nsz <2 x double> %wide.load329, %wide.load331
  %i.br = fmul nsz <2 x double> %i.bp, splat (double f0x4160000000000000)
  %i.bs = fmul nsz <2 x double> %i.bq, splat (double f0x4160000000000000)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index327 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <2 x double> %i.br, ptr %i.bt, align 8, !tbaa !68
  store <2 x double> %i.bs, ptr %i.bu, align 8, !tbaa !68
  %index.next332 = add nuw i64 %index327, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next332, %n.vec325
  br i1 %i.bv, label %middle.block333, label %vector.body326, !llvm.loop !206

middle.block333:                                  ; preds = %vector.body326
  br i1 %cmp.n334, label %.preheader101, label %.lr.ph.preheader340

.lr.ph.preheader340:                              ; preds = %vector.memcheck318, %.lr.ph.preheader, %middle.block333
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck318 ], [ 0, %.lr.ph.preheader ], [ %n.vec325, %middle.block333 ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader340
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.ph
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !68
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.ph
  %i.bz = load double, ptr %i.by, align 8, !tbaa !68
  %i.ca = fmul nsz double %i.bx, %i.bz
  %i.cb = fmul nsz double %i.ca, f0x4160000000000000
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.ph
  store double %i.cb, ptr %i.cc, align 8, !tbaa !68
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader340
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader340 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.cd = icmp eq i64 %indvars.iv.ph, %i.at
  br i1 %i.cd, label %.preheader101, label %.lr.ph

.preheader100:                                    ; preds = %bb.b
  br i1 %i.y, label %.lr.ph110.preheader, label %.preheader98

.lr.ph110.preheader:                              ; preds = %.preheader100
  %i.ce = sub i64 %i.bd, %i.bi
  %diff.check = icmp ugt i64 %i.ce, -16
  %or.cond = select i1 %min.iters.check305, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph110.preheader339, label %vector.body308

vector.body308:                                   ; preds = %.lr.ph110.preheader, %vector.body308
  %index309 = phi i64 [ %index.next314, %vector.body308 ], [ 0, %.lr.ph110.preheader ] ; 4 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index309 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load310 = load <2 x double>, ptr %i.cf, align 8, !tbaa !68
  %wide.load311 = load <2 x double>, ptr %i.cg, align 8, !tbaa !68
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index309 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %wide.load312 = load <2 x float>, ptr %i.ch, align 4, !tbaa !71
  %wide.load313 = load <2 x float>, ptr %i.ci, align 4, !tbaa !71
  %i.cj = fpext nsz <2 x float> %wide.load312 to <2 x double>
  %i.ck = fpext nsz <2 x float> %wide.load313 to <2 x double>
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index309
  %5 = shufflevector <2 x double> %wide.load310, <2 x double> %wide.load311, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %6 = shufflevector <2 x double> %i.cj, <2 x double> %i.ck, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %7 = fmul nsz <4 x double> %5, %6
  %8 = fmul nsz <4 x double> %7, splat (double f0x4160000000000000)
  %9 = fptrunc nsz <4 x double> %8 to <4 x float>
  store <4 x float> %9, ptr %4, align 4, !tbaa !71
  %index.next314 = add nuw i64 %index309, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next314, %n.vec307
  br i1 %i.cl, label %middle.block315, label %vector.body308, !llvm.loop !207

middle.block315:                                  ; preds = %vector.body308
  br i1 %cmp.n316, label %.preheader98, label %.lr.ph110.preheader339

.lr.ph110.preheader339:                           ; preds = %.lr.ph110.preheader, %middle.block315
  %indvars.iv128.ph = phi i64 [ 0, %.lr.ph110.preheader ], [ %n.vec307, %middle.block315 ] ; 6 uses
  br i1 %lcmp.mod348.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader339
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv128.ph
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !68
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv128.ph
  %i.cp = load float, ptr %i.co, align 4, !tbaa !71
  %i.cq = fpext nsz float %i.cp to double
  %i.cr = fmul nsz double %i.cn, %i.cq
  %i.cs = fmul nsz double %i.cr, f0x4160000000000000
  %i.ct = fptrunc nsz double %i.cs to float
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv128.ph
  store float %i.ct, ptr %i.cu, align 4, !tbaa !71
  %indvars.iv.next129.prol = or disjoint i64 %indvars.iv128.ph, 1
  br label %.lr.ph110.prol.loopexit

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader339
  %indvars.iv128.unr = phi i64 [ %indvars.iv128.ph, %.lr.ph110.preheader339 ], [ %indvars.iv.next129.prol, %.lr.ph110.prol ]
  %i.cv = icmp eq i64 %indvars.iv128.ph, %i.au
  br i1 %i.cv, label %.preheader98, label %.lr.ph110

.preheader98:                                     ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block315, %.preheader100
  %i.cw = load i32, ptr %i.z, align 8, !tbaa !72  ; 2 uses
  %i.cx = icmp slt i32 %i.q, %i.cw
  br i1 %i.cx, label %.loopexit99.sink.split, label %.loopexit99

.lr.ph110:                                        ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110
  %indvars.iv128 = phi i64 [ %indvars.iv.next129.1, %.lr.ph110 ], [ %indvars.iv128.unr, %.lr.ph110.prol.loopexit ] ; 5 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv128
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !68
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv128
  %i.db = load float, ptr %i.da, align 4, !tbaa !71
  %i.dc = fpext nsz float %i.db to double
  %i.dd = fmul nsz double %i.cz, %i.dc
  %i.de = fmul nsz double %i.dd, f0x4160000000000000
  %i.df = fptrunc nsz double %i.de to float
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv128
  store float %i.df, ptr %i.dg, align 4, !tbaa !71
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next129
  %i.di = load double, ptr %i.dh, align 8, !tbaa !68
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next129
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !71
  %i.dl = fpext nsz float %i.dk to double
  %i.dm = fmul nsz double %i.di, %i.dl
  %i.dn = fmul nsz double %i.dm, f0x4160000000000000
  %i.do = fptrunc nsz double %i.dn to float
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next129
  store float %i.do, ptr %i.dp, align 4, !tbaa !71
  %indvars.iv.next129.1 = add nuw nsw i64 %indvars.iv128, 2 ; 2 uses
  %exitcond132.not.1 = icmp eq i64 %indvars.iv.next129.1, %wide.trip.count131
  br i1 %exitcond132.not.1, label %.preheader98, label %.lr.ph110, !llvm.loop !208

.preheader101:                                    ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block333, %.preheader103
  %i.dq = load i32, ptr %i.z, align 8, !tbaa !72  ; 2 uses
  %i.dr = icmp slt i32 %i.q, %i.dq
  br i1 %i.dr, label %.loopexit99.sink.split, label %.loopexit99

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !68
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.dv = load double, ptr %i.du, align 8, !tbaa !68
  %i.dw = fmul nsz double %i.dt, %i.dv
  %i.dx = fmul nsz double %i.dw, f0x4160000000000000
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  store double %i.dx, ptr %i.dy, align 8, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !68
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !68
  %i.ed = fmul nsz double %i.ea, %i.ec
  %i.ee = fmul nsz double %i.ed, f0x4160000000000000
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next
  store double %i.ee, ptr %i.ef, align 8, !tbaa !68
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader101, label %.lr.ph, !llvm.loop !209

.loopexit99.sink.split:                           ; preds = %.preheader101, %.preheader98
  %.sink180 = phi i64 [ %i.aq, %.preheader98 ], [ %i.ao, %.preheader101 ]
  %.sink = phi i32 [ %i.cw, %.preheader98 ], [ %i.dq, %.preheader101 ]
  %.sink178 = phi i64 [ 2, %.preheader98 ], [ 3, %.preheader101 ]
  %.sink177 = phi i64 [ 4, %.preheader98 ], [ 8, %.preheader101 ]
  %scevgep = getelementptr i8, ptr %i.bh, i64 %.sink180
  %i.eg = add i32 %.sink, %i.ap
  %i.eh = zext i32 %i.eg to i64
  %i.ei = shl nuw nsw i64 %i.eh, %.sink178
  %i.ej = add nuw nsw i64 %i.ei, %.sink177
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.ej, i1 false), !tbaa !73
  br label %.loopexit99

.loopexit99:                                      ; preds = %.loopexit99.sink.split, %.preheader101, %.preheader98, %bb.b
  %i.ek = getelementptr inbounds nuw i8, ptr %i.az, i64 504
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !74
  %i.em = getelementptr inbounds nuw i8, ptr %i.az, i64 488
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !75
  %i.eo = getelementptr inbounds nuw i8, ptr %i.az, i64 480 ; 3 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !64
  %i.eq = load i64, ptr %i.aa, align 8, !tbaa !62
  tail call void %i.el(ptr noundef %i.en, ptr noundef %i.ep, ptr noundef %i.bh, i64 noundef %i.eq) #14
  %i.er = getelementptr inbounds nuw i8, ptr %i.az, i64 400
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !95
  %i.et = getelementptr inbounds nuw i8, ptr %i.az, i64 408
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !96 ; 6 uses
  %i.ev = load i32, ptr %i.ab, align 4, !tbaa !53 ; 2 uses
  %.val = load ptr, ptr %i.ac, align 8, !tbaa !41
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !40
  %i.ew = getelementptr i8, ptr %.val.val, i64 256
  %.val.val.val = load i64, ptr %i.ew, align 8, !tbaa !250
  %i.ex = getelementptr inbounds nuw i8, ptr %i.az, i64 448
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !99 ; 2 uses
  %.not.i = icmp eq i64 %.val.val.val, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit99
  %i.ez = load float, ptr %i.ad, align 4, !tbaa !251
  %i.fa = fpext nsz float %i.ez to double
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.loopexit99
  %i.fb = phi nsz double [ %i.fa, %bb.c ], [ 1.000000e+00, %.loopexit99 ] ; 2 uses
  %i.fc = fsub nsz double 1.000000e+00, %i.fb
  %i.fd = load ptr, ptr %i.ae, align 8, !tbaa !86 ; 8 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.az, i64 424
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !98 ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.az, i64 376
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !92 ; 13 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.az, i64 368
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !91 ; 7 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.az, i64 392
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !94 ; 11 uses
  %i.fm = load ptr, ptr %i.eo, align 8, !tbaa !64 ; 11 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.az, i64 384
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !93 ; 6 uses
  %i.fp = load i32, ptr %i.af, align 4, !tbaa !85 ; 6 uses
  %i.fq = icmp sgt i32 %i.fp, 0                   ; 2 uses
  br i1 %i.fq, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.fr = load i32, ptr %i.x, align 8, !tbaa !66  ; 2 uses
  %i.fs = and i32 %i.fr, -2
  %switch.i = icmp eq i32 %i.fs, 8
  br i1 %switch.i, label %.lr.ph.split.i, label %bb.h

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.az, i64 416
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !97
  %wide.trip.count.i = zext nneg i32 %i.fp to i64 ; 3 uses
  %cond.i = icmp eq i32 %i.fr, 8
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.i
  %.not222.i = icmp eq i32 %i.ev, 0
  br i1 %.not222.i, label %bb.p, label %bb.j

._crit_edge.thread.i:                             ; preds = %bb.d
  %.not222135.i = icmp eq i32 %i.ev, 0
  br i1 %.not222135.i, label %bb.p, label %spectral_flatness.exit.i

bb.e:                                             ; preds = %bb.i, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.i ], [ %indvars.iv.next.i, %bb.i ] ; 8 uses
  br i1 %cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.i
  %i.fw = load <2 x float>, ptr %i.fv, align 4, !tbaa !71
  %i.fx = fpext <2 x float> %i.fw to <2 x double> ; 2 uses
  %i.fy = extractelement <2 x double> %i.fx, i64 0
  %i.fz = extractelement <2 x double> %i.fx, i64 1
  %i.ga = tail call nsz double @hypot(double noundef %i.fy, double noundef %i.fz) #16
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %indvars.iv.i ; 2 uses
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !253
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !254
  %i.gf = tail call nsz double @hypot(double noundef %i.gc, double noundef %i.ge) #16
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef 382) #14
  tail call void @abort() #17
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi double [ %i.ga, %bb.f ], [ %i.gf, %bb.g ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %indvars.iv.i
end_hunk_2
