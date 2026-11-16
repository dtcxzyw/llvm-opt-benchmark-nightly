Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_bm3d?download=true
inline.NumInlined: 13
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@basic_block_filtering:bb.a
  %i.gz = add i32 %i.ev, %i.gy
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ha
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !89
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.1236270.us.us285, i64 %indvars.iv408
  store float %i.hc, ptr %i.hd, align 4, !tbaa !89
  %indvars.iv.next409 = add nuw nsw i64 %indvars.iv408, 1 ; 2 uses
  %i.he = trunc i64 %indvars.iv.next409 to i32
  %i.hf = mul i32 %i.g, %i.he
  %i.hg = add i32 %i.ev, %i.hf
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.hh
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !89
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %.1236270.us.us285, i64 %indvars.iv.next409
  store float %i.hj, ptr %i.hk, align 4, !tbaa !89
  %indvars.iv.next409.1 = add nuw nsw i64 %indvars.iv408, 2 ; 2 uses
  %exitcond412.not.1 = icmp eq i64 %indvars.iv.next409.1, %wide.trip.count418
  br i1 %exitcond412.not.1, label %._crit_edge269.us.us287, label %scalar.ph539, !llvm.loop !154

._crit_edge269.us.us287:                          ; preds = %scalar.ph539.prol.loopexit, %scalar.ph539, %middle.block547
  %i.hl = getelementptr inbounds [4 x i8], ptr %.1236270.us.us285, i64 %i.ax ; 2 uses
  %i.hm = add nuw nsw i32 %.0228271.us.us284, 1   ; 2 uses
  %exitcond413.not = icmp eq i32 %i.hm, %i.k
  br i1 %exitcond413.not, label %._crit_edge272.split.us.split.us288, label %.preheader255.us.us283, !llvm.loop !148

._crit_edge272.split.us.split.us288:              ; preds = %._crit_edge269.us.us287
  %i.hn = add nuw nsw i32 %.0229280.us, 1         ; 2 uses
  %exitcond414.not = icmp eq i32 %i.hn, %i.k
  br i1 %exitcond414.not, label %._crit_edge281.split, label %.preheader256.us, !llvm.loop !149

.preheader256.us292:                              ; preds = %.preheader256.lr.ph.thread, %._crit_edge272.split.split.us.us
  %.0229280.us293 = phi i32 [ %i.hs, %._crit_edge272.split.split.us.us ], [ 0, %.preheader256.lr.ph.thread ]
  %.0235279.us294 = phi ptr [ %i.hq, %._crit_edge272.split.split.us.us ], [ %i.ae, %.preheader256.lr.ph.thread ]
  br label %.preheader255.us273.us

.preheader255.us273.us:                           ; preds = %.preheader255.us273.us, %.preheader256.us292
  %.0228271.us274.us = phi i32 [ 0, %.preheader256.us292 ], [ %i.hr, %.preheader255.us273.us ]
  %.1236270.us275.us = phi ptr [ %.0235279.us294, %.preheader256.us292 ], [ %i.hq, %.preheader255.us273.us ] ; 3 uses
  %i.ho = load ptr, ptr %i.au, align 8, !tbaa !90
  %i.hp = load ptr, ptr %i.d, align 8, !tbaa !91
  tail call void %i.ho(ptr noundef %i.hp, ptr noundef %.1236270.us275.us, ptr noundef %.1236270.us275.us, i64 noundef 4) #14
  %i.hq = getelementptr inbounds [4 x i8], ptr %.1236270.us275.us, i64 %i.av ; 2 uses
  %i.hr = add nuw nsw i32 %.0228271.us274.us, 1   ; 2 uses
  %exitcond406.not = icmp eq i32 %i.hr, %i.k
  br i1 %exitcond406.not, label %._crit_edge272.split.split.us.us, label %.preheader255.us273.us, !llvm.loop !148

._crit_edge272.split.split.us.us:                 ; preds = %.preheader255.us273.us
  %i.hs = add nuw nsw i32 %.0229280.us293, 1      ; 2 uses
  %exitcond407.not = icmp eq i32 %i.hs, %i.k
  br i1 %exitcond407.not, label %._crit_edge281.split, label %.preheader256.us292, !llvm.loop !149

bb.b:                                             ; preds = %.lr.ph266, %._crit_edge
  %indvars.iv401 = phi i64 [ 0, %.lr.ph266 ], [ %indvars.iv.next402, %._crit_edge ] ; 3 uses
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %indvars.iv401 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !79
  br i1 %i.ai, label %.lr.ph.us.preheader, label %._crit_edge

.lr.ph.us.preheader:                              ; preds = %bb.b
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !78
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv391 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next392, %._crit_edge.us ] ; 5 uses
  %i.hy = load ptr, ptr %i.aj, align 8, !tbaa !92
  %i.hz = mul nsw i64 %indvars.iv391, %i.ao
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.hz ; 2 uses
  %i.ib = trunc i64 %indvars.iv391 to i32
  %i.ic = add i32 %i.hx, %i.ib
  tail call void %i.hy(ptr noundef %1, i32 noundef %2, i32 noundef %i.ic, i32 noundef %i.hv, i32 noundef %i.k, ptr noundef %i.ia) #14
  %i.id = load ptr, ptr %i.ak, align 8, !tbaa !93
  %i.ie = load ptr, ptr %i.al, align 8, !tbaa !94
  tail call void %i.id(ptr noundef %i.ie, ptr noundef %i.z, ptr noundef %i.ia, i64 noundef 4) #14
  %invariant.gep = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv391 ; 6 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph.us
  %i.if = shl nuw nsw i64 %indvars.iv391, 2
  %.reass = add i64 %i.if, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load = load <4 x float>, ptr %i.ig, align 4, !tbaa !89
  %wide.load531 = load <4 x float>, ptr %i.ih, align 4, !tbaa !89
  %i.ii = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ii, i64 16
  store <4 x float> %wide.load, ptr %i.ii, align 4, !tbaa !89
  store <4 x float> %wide.load531, ptr %i.ij, align 4, !tbaa !89
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ik = icmp eq i64 %index.next, %n.vec
  br i1 %i.ik, label %middle.block, label %vector.body, !llvm.loop !155

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.prol
  %i.im = load float, ptr %i.il, align 4, !tbaa !89
  %i.in = mul nsw i64 %indvars.iv.prol, %i.ao
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.in
  store float %i.im, ptr %gep.prol, align 4, !tbaa !89
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !156

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.io = sub nsw i64 %indvars.iv.ph, %wide.trip.count394
  %i.ip = icmp ugt i64 %i.io, -4
  br i1 %i.ip, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !89
  %i.is = mul nsw i64 %indvars.iv, %i.ao
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.is
  store float %i.ir, ptr %gep, align 4, !tbaa !89
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next
  %i.iu = load float, ptr %i.it, align 4, !tbaa !89
  %i.iv = mul nsw i64 %indvars.iv.next, %i.ao
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.iv
  store float %i.iu, ptr %gep.1, align 4, !tbaa !89
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next.1
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !89
  %i.iy = mul nsw i64 %indvars.iv.next.1, %i.ao
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.iy
  store float %i.ix, ptr %gep.2, align 4, !tbaa !89
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.next.2
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !89
  %i.jb = mul nsw i64 %indvars.iv.next.2, %i.ao
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.jb
  store float %i.ja, ptr %gep.3, align 4, !tbaa !89
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count394
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !157

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next392 = add nuw nsw i64 %indvars.iv391, 1 ; 2 uses
  %exitcond395.not = icmp eq i64 %indvars.iv.next392, %wide.trip.count394
  br i1 %exitcond395.not, label %.lr.ph, label %.lr.ph.us, !llvm.loop !158

.lr.ph:                                           ; preds = %._crit_edge.us
  %i.jc = mul nuw nsw i64 %indvars.iv401, %i.ap
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.jc
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 1 ; 2 uses
  %exitcond405.not = icmp eq i64 %indvars.iv.next402, %wide.trip.count404
  br i1 %exitcond405.not, label %.preheader257, label %bb.b, !llvm.loop !159

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv396 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next397, %bb.c ] ; 2 uses
  %i.je = load ptr, ptr %i.ak, align 8, !tbaa !93
  %i.jf = load ptr, ptr %i.al, align 8, !tbaa !94
  %i.jg = mul nsw i64 %indvars.iv396, %i.ao       ; 2 uses
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.jg
  tail call void %i.je(ptr noundef %i.jf, ptr noundef nonnull %i.z, ptr noundef %i.jh, i64 noundef 4) #14
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.jg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ji, ptr nonnull align 4 %i.z, i64 %i.an, i1 false)
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396, 1 ; 2 uses
  %exitcond400.not = icmp eq i64 %indvars.iv.next397, %wide.trip.count399
  br i1 %exitcond400.not, label %._crit_edge, label %bb.c, !llvm.loop !160

._crit_edge281.split:                             ; preds = %._crit_edge272.split.split.us.us, %._crit_edge272.split.us.split.us288, %._crit_edge272.split.us.split.us.us.us, %.preheader256.lr.ph.thread, %.preheader257.thread, %.preheader257
  %i.jj = phi i1 [ false, %.preheader257.thread ], [ false, %.preheader257 ], [ true, %._crit_edge272.split.us.split.us288 ], [ true, %.preheader256.lr.ph.thread ], [ true, %._crit_edge272.split.us.split.us.us.us ], [ true, %._crit_edge272.split.split.us.us ] ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !185
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jn = load float, ptr %i.jm, align 8, !tbaa !29
  %i.jo = fmul nsz float %i.jl, %i.jn
  %i.jp = fpext nsz float %i.jo to double
  %i.jq = fmul nsz double %i.jp, f0x3FF6A09E667F3BCD
  %i.jr = fmul nsz double %i.jq, 4.000000e+00
  %i.js = sitofp nsz i32 %i.k to double           ; 2 uses
  %i.jt = fmul nsz double %i.jr, %i.js
  %i.ju = fmul nsz double %i.jt, %i.js
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !56
  %i.jx = add nsw i32 %i.jw, -8
  %i.jy = shl nuw i32 1, %i.jx
  %i.jz = sitofp nsz i32 %i.jy to double
  %i.ka = fmul nsz double %i.ju, %i.jz
  %i.kb = fdiv nsz double %i.ka, 2.550000e+02
  %i.kc = fptrunc nsz double %i.kb to float       ; 2 uses
  %i.kd = insertelement <4 x float> poison, float %i.kc, i64 0
  %9 = shufflevector <4 x float> %i.kd, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>
  %i.ke = fmul nsz <4 x float> %9, <float poison, float f0x3FB504F3, float 2.000000e+00, float f0x403504F3>
  %10 = insertelement <4 x float> %i.ke, float %i.kc, i64 0
  store <4 x float> %10, ptr %i.a, align 16, !tbaa !89
  %i.kf = load ptr, ptr %i.ad, align 8, !tbaa !88 ; 4 uses
  br i1 %i.jj, label %.preheader254.lr.ph, label %._crit_edge336.split.thread

.preheader254.lr.ph:                              ; preds = %._crit_edge281.split
  %i.kg = sext i32 %i.q to i64
  br i1 %i.af, label %.preheader254.us.us.preheader, label %.preheader252.lr.ph.thread

.preheader252.lr.ph.thread:                       ; preds = %.preheader254.lr.ph
  %i.kh = icmp sgt i32 %i.s, 1
  %i.ki = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.kj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.kk = sext i32 %i.q to i64
  br i1 %i.kh, label %.preheader252.us347, label %._crit_edge336.split.thread

.preheader254.us.us.preheader:                    ; preds = %.preheader254.lr.ph
  %wide.trip.count425 = zext nneg i32 %.fr373 to i64 ; 5 uses
  %exitcond426.peel.not = icmp eq i32 %.fr373, 1
  %i.kl = add nsw i64 %wide.trip.count425, -1     ; 5 uses
  %xtraiter660 = and i64 %i.kl, 1
  %i.km = icmp eq i32 %.fr373, 2
  %unroll_iter = and i64 %i.kl, -2
  %lcmp.mod661.not = icmp eq i64 %xtraiter660, 0
  %lcmp.mod663 = trunc i64 %i.kl to i1
  br label %.preheader254.us.us

.preheader254.us.us:                              ; preds = %.preheader254.us.us.preheader, %._crit_edge303.split.us.us.us
  %.0226309.us.us = phi i32 [ %i.lu, %._crit_edge303.split.us.us.us ], [ 0, %.preheader254.us.us.preheader ] ; 2 uses
  %.0234308.us.us = phi i32 [ %.3.us.us.us.lcssa, %._crit_edge303.split.us.us.us ], [ 0, %.preheader254.us.us.preheader ]
  %.2237307.us.us = phi ptr [ %i.ls, %._crit_edge303.split.us.us.us ], [ %i.kf, %.preheader254.us.us.preheader ]
  %i.kn = icmp eq i32 %.0226309.us.us, 0
  %i.ko = zext i1 %i.kn to i64
  %invariant.gep701 = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ko
  br label %.preheader253.us.us.us

.preheader253.us.us.us:                           ; preds = %._crit_edge298.us.us.us, %.preheader254.us.us
  %.0225302.us.us.us = phi i32 [ 0, %.preheader254.us.us ], [ %i.lt, %._crit_edge298.us.us.us ] ; 2 uses
  %.1301.us.us.us = phi i32 [ %.0234308.us.us, %.preheader254.us.us ], [ %.3.us.us.us.lcssa, %._crit_edge298.us.us.us ] ; 2 uses
  %.3238300.us.us.us = phi ptr [ %.2237307.us.us, %.preheader254.us.us ], [ %i.ls, %._crit_edge298.us.us.us ] ; 6 uses
  %i.kp = icmp eq i32 %.0225302.us.us.us, 0
  %.sroa.sel.us.us.us.idx.sroa.sel.idx = select i1 %i.kp, i64 4, i64 0
  %gep702 = getelementptr inbounds i8, ptr %invariant.gep701, i64 %.sroa.sel.us.us.us.idx.sroa.sel.idx ; 4 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %gep702, i64 4
  %i.kq = load float, ptr %.sroa.gep, align 4, !tbaa !89 ; 2 uses
  %i.kr = load float, ptr %.3238300.us.us.us, align 4, !tbaa !89 ; 2 uses
  %i.ks = fcmp nsz ogt float %i.kr, %i.kq
  %i.kt = fneg nsz float %i.kq
  %i.ku = fcmp nsz olt float %i.kr, %i.kt
  %or.cond.us.us.us.peel = or i1 %i.ks, %i.ku
  br i1 %or.cond.us.us.us.peel, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader253.us.us.us
  store float 0.000000e+00, ptr %.3238300.us.us.us, align 4, !tbaa !89
  br label %bb.f

bb.e:                                             ; preds = %.preheader253.us.us.us
  %i.kv = add nsw i32 %.1301.us.us.us, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3.us.us.us.peel = phi i32 [ %i.kv, %bb.e ], [ %.1301.us.us.us, %bb.d ] ; 3 uses
  br i1 %exitcond426.peel.not, label %._crit_edge298.us.us.us, label %.peel.next

.peel.next:                                       ; preds = %bb.f
  %.pre477 = load float, ptr %gep702, align 4, !tbaa !89 ; 2 uses
  br i1 %i.km, label %.epil.preheader, label %.peel.next.new

.peel.next.new:                                   ; preds = %.peel.next, %bb.l
  %i.kw = phi float [ %i.ll, %bb.l ], [ %.pre477, %.peel.next ] ; 3 uses
  %indvars.iv422 = phi i64 [ %indvars.iv.next423.1, %bb.l ], [ 1, %.peel.next ] ; 3 uses
  %.2295.us.us.us = phi i32 [ %.3.us.us.us.1, %bb.l ], [ %.3.us.us.us.peel, %.peel.next ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %bb.l ], [ 0, %.peel.next ]
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.3238300.us.us.us, i64 %indvars.iv422 ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !89 ; 2 uses
  %i.kz = fcmp nsz ogt float %i.ky, %i.kw
  %i.la = fneg nsz float %i.kw
  %i.lb = fcmp nsz olt float %i.ky, %i.la
  %or.cond.us.us.us = or i1 %i.kz, %i.lb
  br i1 %or.cond.us.us.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.peel.next.new
  store float 0.000000e+00, ptr %i.kx, align 4, !tbaa !89
  %.pre = load float, ptr %gep702, align 4, !tbaa !89
  br label %bb.i

bb.h:                                             ; preds = %.peel.next.new
  %i.lc = add nsw i32 %.2295.us.us.us, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ld = phi float [ %i.kw, %bb.h ], [ %.pre, %bb.g ] ; 3 uses
  %.3.us.us.us = phi i32 [ %i.lc, %bb.h ], [ %.2295.us.us.us, %bb.g ] ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.3238300.us.us.us, i64 %indvars.iv422
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4 ; 2 uses
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !89 ; 2 uses
  %i.lh = fcmp nsz ogt float %i.lg, %i.ld
  %i.li = fneg nsz float %i.ld
  %i.lj = fcmp nsz olt float %i.lg, %i.li
  %or.cond.us.us.us.1 = or i1 %i.lh, %i.lj
  br i1 %or.cond.us.us.us.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store float 0.000000e+00, ptr %i.lf, align 4, !tbaa !89
  %.pre.1 = load float, ptr %gep702, align 4, !tbaa !89
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.lk = add nsw i32 %.3.us.us.us, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ll = phi float [ %i.ld, %bb.k ], [ %.pre.1, %bb.j ] ; 2 uses
  %.3.us.us.us.1 = phi i32 [ %i.lk, %bb.k ], [ %.3.us.us.us, %bb.j ] ; 3 uses
  %indvars.iv.next423.1 = add nuw nsw i64 %indvars.iv422, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge298.us.us.us.loopexit.unr-lcssa, label %.peel.next.new, !llvm.loop !161

._crit_edge298.us.us.us.loopexit.unr-lcssa:       ; preds = %bb.l
  br i1 %lcmp.mod661.not, label %._crit_edge298.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge298.us.us.us.loopexit.unr-lcssa, %.peel.next
  %.epil.init = phi float [ %.pre477, %.peel.next ], [ %i.ll, %._crit_edge298.us.us.us.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv422.epil.init = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next423.1, %._crit_edge298.us.us.us.loopexit.unr-lcssa ]
  %.2295.us.us.us.epil.init = phi i32 [ %.3.us.us.us.peel, %.peel.next ], [ %.3.us.us.us.1, %._crit_edge298.us.us.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod663)
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.3238300.us.us.us, i64 %indvars.iv422.epil.init ; 2 uses
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !89 ; 2 uses
  %i.lo = fcmp nsz ogt float %i.ln, %.epil.init
  %i.lp = fneg nsz float %.epil.init
  %i.lq = fcmp nsz olt float %i.ln, %i.lp
  %or.cond.us.us.us.epil = or i1 %i.lo, %i.lq
  br i1 %or.cond.us.us.us.epil, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.epil.preheader
  store float 0.000000e+00, ptr %i.lm, align 4, !tbaa !89
  br label %._crit_edge298.us.us.us

bb.n:                                             ; preds = %.epil.preheader
  %i.lr = add nsw i32 %.2295.us.us.us.epil.init, 1
  br label %._crit_edge298.us.us.us

._crit_edge298.us.us.us:                          ; preds = %._crit_edge298.us.us.us.loopexit.unr-lcssa, %bb.n, %bb.m, %bb.f
  %.3.us.us.us.lcssa = phi i32 [ %.3.us.us.us.peel, %bb.f ], [ %.3.us.us.us.1, %._crit_edge298.us.us.us.loopexit.unr-lcssa ], [ %i.lr, %bb.n ], [ %.2295.us.us.us.epil.init, %bb.m ] ; 4 uses
  %i.ls = getelementptr inbounds [4 x i8], ptr %.3238300.us.us.us, i64 %i.kg ; 2 uses
  %i.lt = add nuw nsw i32 %.0225302.us.us.us, 1   ; 2 uses
  %exitcond428.not = icmp eq i32 %i.lt, %i.k
  br i1 %exitcond428.not, label %._crit_edge303.split.us.us.us, label %.preheader253.us.us.us, !llvm.loop !162

._crit_edge303.split.us.us.us:                    ; preds = %._crit_edge298.us.us.us
  %i.lu = add nuw nsw i32 %.0226309.us.us, 1      ; 2 uses
  %exitcond429.not = icmp eq i32 %i.lu, %i.k
  br i1 %exitcond429.not, label %._crit_edge310, label %.preheader254.us.us, !llvm.loop !163

._crit_edge310:                                   ; preds = %._crit_edge303.split.us.us.us
  %i.lv = load ptr, ptr %i.t, align 8, !tbaa !84  ; 6 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.lx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ly = sext i32 %i.q to i64                    ; 2 uses
  %i.lz = icmp sgt i32 %i.s, 1
  br i1 %i.lz, label %.preheader252.us.us.preheader, label %.preheader252.us.preheader

.preheader252.us.preheader:                       ; preds = %._crit_edge310
  %xtraiter665 = and i64 %wide.trip.count425, 1
  %i.ma = icmp eq i64 %i.kl, 0
  %unroll_iter668 = and i64 %wide.trip.count425, 2147483646
  %lcmp.mod666.not = icmp eq i64 %xtraiter665, 0
  %lcmp.mod667 = trunc i32 %.fr373 to i1
  br label %.preheader252.us

.preheader252.us.us.preheader:                    ; preds = %._crit_edge310
  %xtraiter671 = and i64 %wide.trip.count425, 1
  %i.mb = icmp eq i64 %i.kl, 0
  %unroll_iter674 = and i64 %wide.trip.count425, 2147483646
  %lcmp.mod672.not = icmp eq i64 %xtraiter671, 0
  %lcmp.mod673 = trunc i32 %.fr373 to i1
  br label %.preheader252.us.us

.preheader252.us.us:                              ; preds = %.preheader252.us.us.preheader, %._crit_edge326.split.us.split.us.us.us
  %.0223335.us.us = phi i32 [ %i.nd, %._crit_edge326.split.us.split.us.us.us ], [ 0, %.preheader252.us.us.preheader ] ; 2 uses
  %.4334.us.us = phi ptr [ %i.nb, %._crit_edge326.split.us.split.us.us.us ], [ %i.kf, %.preheader252.us.us.preheader ]
  %i.mc = mul nsw i32 %.0223335.us.us, %i.f
  br label %.lr.ph321.us.us.us.us

.lr.ph321.us.us.us.us:                            ; preds = %._crit_edge322.us.us.us.us, %.preheader252.us.us
  %.0222324.us.us.us.us = phi i32 [ 0, %.preheader252.us.us ], [ %i.nc, %._crit_edge322.us.us.us.us ] ; 2 uses
  %.5323.us.us.us.us = phi ptr [ %.4334.us.us, %.preheader252.us.us ], [ %i.nb, %._crit_edge322.us.us.us.us ] ; 6 uses
  %i.md = load ptr, ptr %i.lw, align 8, !tbaa !96
  %i.me = load ptr, ptr %i.lx, align 8, !tbaa !97
  tail call void %i.md(ptr noundef %i.me, ptr noundef %.5323.us.us.us.us, ptr noundef %.5323.us.us.us.us, i64 noundef 4) #14
  %i.mf = add i32 %.0222324.us.us.us.us, %i.mc    ; 3 uses
  br i1 %i.mb, label %.epil.preheader670, label %.lr.ph321.us.us.us.us.new

.lr.ph321.us.us.us.us.new:                        ; preds = %.lr.ph321.us.us.us.us, %.lr.ph321.us.us.us.us.new
  %indvars.iv439 = phi i64 [ %indvars.iv.next440.1, %.lr.ph321.us.us.us.us.new ], [ 0, %.lr.ph321.us.us.us.us ] ; 4 uses
  %niter675 = phi i64 [ %niter675.next.1, %.lr.ph321.us.us.us.us.new ], [ 0, %.lr.ph321.us.us.us.us ]
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.5323.us.us.us.us, i64 %indvars.iv439
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !89
  %i.mi = trunc i64 %indvars.iv439 to i32
  %i.mj = mul i32 %i.g, %i.mi
  %i.mk = add i32 %i.mf, %i.mj
end_hunk_0
