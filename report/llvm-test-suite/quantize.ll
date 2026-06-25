inline.NumInlined: 7
begin_hunk_0_@VBR_iteration_loop:bb.a
  %i.ey = icmp eq i32 %i.ex, 0                    ; 2 uses
  %spec.select = select i1 %i.ey, i32 125, i32 %.0300.lcssa ; 2 uses
  %spec.select328 = select i1 %i.ey, i32 1, i32 %.1285397
  %i.ez = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !25
  %i.fb = icmp eq i32 %i.fa, 2
  br i1 %i.fb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %init_outer_loop.exit.thread354
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !14 ; 2 uses
  %i.fe = fcmp olt double %i.fd, 1.100000e+03
  %i.ff = select i1 %i.fe, double 1.100000e+03, double %i.fd
  %i.fg = uitofp nneg i32 %spec.select to double
  %i.fh = fadd double %i.ff, %i.fg
  %i.fi = fptosi double %i.fh to i32
  %i.fj = call i32 @llvm.smin.i32(i32 %i.fi, i32 1800)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %init_outer_loop.exit.thread354
  %.1303 = phi i32 [ %i.fj, %bb.k ], [ %spec.select, %init_outer_loop.exit.thread354 ] ; 3 uses
  %i.fk = load i32, ptr %i.h, align 4, !tbaa !45
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !4
  %i.fo = load i32, ptr %i.ab, align 4, !tbaa !16
  %i.fp = load i32, ptr %i.y, align 8, !tbaa !8
  %i.fq = mul nsw i32 %i.fp, %i.fo
  %i.fr = sdiv i32 %i.fn, %i.fq
  %i.fs = call i32 @llvm.smin.i32(i32 %i.fr, i32 1300)
  %i.ft = add nsw i32 %i.fs, 1200
  %i.fu = call i32 @llvm.smax.i32(i32 %i.ft, i32 %.1303) ; 4 uses
  %i.fv = sub nsw i32 %i.fu, %.1303
  %i.fw = sdiv i32 %i.fv, 4
  %i.fx = add nsw i32 %i.fu, %.1303
  %i.fy = sdiv i32 %i.fx, 2
  %i.fz = add nsw i32 %i.fu, 1
  %i.ga = getelementptr inbounds nuw [2304 x i8], ptr %i.aq, i64 %indvars.iv ; 3 uses
  %i.gb = getelementptr inbounds nuw [244 x i8], ptr %i.ap, i64 %indvars.iv ; 3 uses
  %i.gc = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.r, %bb.l
  %.0298 = phi i32 [ %i.fw, %bb.l ], [ %.1299362369, %bb.r ] ; 5 uses
  %.0280 = phi i32 [ %i.fz, %bb.l ], [ %.2282, %bb.r ] ; 3 uses
  %.0 = phi i32 [ %i.fy, %bb.l ], [ %.2, %bb.r ]  ; 6 uses
  %.not325 = icmp slt i32 %.0, %.0280
  br i1 %.not325, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gd = sub nsw i32 %.0, %.0298
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.au, ptr noundef nonnull align 8 dereferenceable(120) %9, i64 120, i1 false)
  %i.ge = load i32, ptr %i.ae, align 4, !tbaa !48
  %i.gf = shl nsw i32 %i.ge, 1
  %i.gg = add nsw i32 %i.gf, -6
  %i.gh = sitofp i32 %i.gg to float
  %i.gi = add nsw i32 %.0, -125
  %i.gj = sitofp i32 %i.gi to double
  %i.gk = fdiv nnan double %i.gj, 2.375000e+03
  %i.gl = fptrunc nnan double %i.gk to float
  %i.gm = fadd nnan float %i.gl, -1.000000e+00
  %i.gn = fmul nnan float %i.gm, 4.000000e+00
  %i.go = fadd float %i.gn, %i.gh
  %i.gp = fdiv float %i.go, 1.000000e+01
  %i.gq = fpext float %i.gp to double
  %i.gr = call double @pow(double noundef 1.000000e+01, double noundef %i.gq) #11, !tbaa !4
  %i.gs = fptrunc double %i.gr to float
  store float %i.gs, ptr @masking_lower, align 4, !tbaa !43
  %i.gt = call i32 @calc_xmin(ptr noundef %0, ptr noundef nonnull %i.av, ptr noundef %i.ew, ptr noundef nonnull %i.au, ptr noundef nonnull %11) #11 ; 0 uses
  call void @outer_loop(ptr noundef %0, ptr noundef nonnull %i.av, i32 noundef %.0, ptr noundef nonnull %i.c, ptr noundef nonnull %11, ptr noundef %i.ga, ptr noundef %i.gb, ptr noundef nonnull %i.au, ptr nonnull poison, i32 noundef %i.gc)
  %i.gu = load double, ptr %i.c, align 16, !tbaa !14
  %i.gv = fptosi double %i.gu to i32
  %i.gw = load double, ptr %i.af, align 8, !tbaa !14
  %i.gx = load double, ptr %i.ag, align 16, !tbaa !14
  %i.gy = load double, ptr %i.ah, align 8, !tbaa !14
  %.not.i330 = icmp sgt i32 %i.gv, 0
  %i.gz = fcmp ugt double %i.gx, 0.000000e+00
  %or.cond.not11.i.not365 = or i1 %.not.i330, %i.gz
  %i.ha = fcmp ugt double %i.gw, 0.000000e+00
  %i.hb = fcmp ugt double %i.gy, 0.000000e+00
  %.not368 = or i1 %i.ha, %i.hb
  %narrow.i.not = or i1 %or.cond.not11.i.not365, %.not368
  br i1 %narrow.i.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hc = load i32, ptr %i.au, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %10, ptr noundef nonnull align 4 dereferenceable(244) %i.gb, i64 244, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2304) %i.a, ptr noundef nonnull align 4 dereferenceable(2304) %i.ga, i64 2304, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %8, ptr noundef nonnull align 8 dereferenceable(120) %i.au, i64 120, i1 false)
  %i.hd = sub nsw i32 %.0, %.0298
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.he = add nsw i32 %.0, %.0298
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %.2282 = phi i32 [ %.0280, %bb.n ], [ %i.hc, %bb.p ], [ %.0280, %bb.q ] ; 2 uses
  %.2 = phi i32 [ %i.gd, %bb.n ], [ %i.hd, %bb.p ], [ %i.he, %bb.q ]
  %.1299362369 = lshr i32 %.0298, 1
  %i.hf = icmp sgt i32 %.0298, 21
  br i1 %i.hf, label %bb.m, label %bb.s, !llvm.loop !49

bb.s:                                             ; preds = %bb.r
  %.not327 = icmp sgt i32 %.2282, %i.fu
  br i1 %.not327, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.au, ptr noundef nonnull align 8 dereferenceable(120) %8, i64 120, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %i.gb, ptr noundef nonnull align 4 dereferenceable(244) %10, i64 244, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %i.ga, ptr noundef nonnull align 16 dereferenceable(2304) %i.a, i64 2304, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.hg = load i32, ptr %i.au, align 8, !tbaa !35 ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  store i32 %i.hg, ptr %i.hh, align 4, !tbaa !4
  %i.hi = add nsw i32 %i.hg, %.1305394
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %init_outer_loop.exit.thread
  %.2306 = phi i32 [ %i.hi, %bb.u ], [ %.1305394, %init_outer_loop.exit.thread ] ; 2 uses
  %.3 = phi i32 [ %spec.select328, %bb.u ], [ 1, %init_outer_loop.exit.thread ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge400, label %bb.h, !llvm.loop !50

._crit_edge400:                                   ; preds = %bb.v, %bb.g
  %.1305.lcssa = phi i32 [ %.0304403, %bb.g ], [ %.2306, %bb.v ] ; 4 uses
  %.1285.lcssa = phi i32 [ %.0284405, %bb.g ], [ %.3, %bb.v ] ; 2 uses
  %indvars.iv.next467 = add nuw nsw i64 %indvars.iv466, 1 ; 2 uses
  %i.hj = load i32, ptr %i.y, align 8, !tbaa !8   ; 4 uses
  %i.hk = sext i32 %i.hj to i64
  %i.hl = icmp slt i64 %indvars.iv.next467, %i.hk
  br i1 %i.hl, label %bb.e, label %._crit_edge408, !llvm.loop !51

._crit_edge408:                                   ; preds = %._crit_edge400
  %i.hm = icmp eq i32 %.1285.lcssa, 0
  %i.hn = load i32, ptr @reduce_sidechannel, align 4, !tbaa !4
  %.not315 = icmp ne i32 %i.hn, 0
  %i.ho = icmp sgt i32 %i.hj, 0
  %or.cond450 = and i1 %.not315, %i.ho
  br i1 %or.cond450, label %.lr.ph415.preheader, label %.loopexit380

.lr.ph415.preheader:                              ; preds = %._crit_edge408
  %wide.trip.count472 = zext nneg i32 %i.hj to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.hj, 5
  br i1 %min.iters.check, label %.lr.ph415.preheader591, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph415.preheader
  %n.mod.vf = and i64 %wide.trip.count472, 3      ; 2 uses
  %i.hp = icmp eq i64 %n.mod.vf, 0
  %i.hq = select i1 %i.hp, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count472, %i.hq ; 2 uses
  %i.hr = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.1305.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i32> [ %i.hr, %vector.ph ], [ %i.ja, %vector.body ]
  %vec.phi580 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.jb, %vector.body ]
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %wide.load = load <2 x double>, ptr %i.hs, align 8, !tbaa !14
  %wide.load581 = load <2 x double>, ptr %i.ht, align 8, !tbaa !14
  %i.hu = fsub <2 x double> splat (double 5.000000e-01), %wide.load
  %i.hv = fsub <2 x double> splat (double 5.000000e-01), %wide.load581
  %i.hw = fmul <2 x double> %i.hu, splat (double 3.300000e-01)
  %i.hx = fmul <2 x double> %i.hv, splat (double 3.300000e-01)
  %i.hy = fmul <2 x double> %i.hw, splat (double 2.000000e+00) ; 2 uses
  %i.hz = fmul <2 x double> %i.hx, splat (double 2.000000e+00) ; 2 uses
  %i.ia = fsub <2 x double> splat (double 1.000000e+00), %i.hy
  %i.ib = fsub <2 x double> splat (double 1.000000e+00), %i.hz
  %i.ic = fadd <2 x double> %i.hy, splat (double 1.000000e+00)
  %i.id = fadd <2 x double> %i.hz, splat (double 1.000000e+00)
  %i.ie = fdiv <2 x double> %i.ia, %i.ic
  %i.if = fdiv <2 x double> %i.ib, %i.id
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index
  %i.il = load <3 x i32>, ptr %i.ig, align 16, !tbaa !4
  %strided.vec = shufflevector <3 x i32> %i.il, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.im = load <3 x i32>, ptr %i.ij, align 16, !tbaa !4
  %strided.vec583 = shufflevector <3 x i32> %i.im, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.in = sitofp <2 x i32> %strided.vec to <2 x double>
  %i.io = sitofp <2 x i32> %strided.vec583 to <2 x double>
  %i.ip = fmul <2 x double> %i.ie, %i.in
  %i.iq = fmul <2 x double> %i.if, %i.io
  %i.ir = fptosi <2 x double> %i.ip to <2 x i32>
  %i.is = fptosi <2 x double> %i.iq to <2 x i32>
  %i.it = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ii, i64 20
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ik, i64 28
  %i.ix = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ir, <2 x i32> splat (i32 125)) ; 3 uses
  %12 = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.is, <2 x i32> splat (i32 125)) ; 3 uses
  %i.iy = extractelement <2 x i32> %i.ix, i64 0
  store i32 %i.iy, ptr %i.it, align 4, !tbaa !4
  %i.iz = extractelement <2 x i32> %i.ix, i64 1
  store i32 %i.iz, ptr %i.iu, align 4, !tbaa !4
  %13 = extractelement <2 x i32> %12, i64 0
  store i32 %13, ptr %i.iv, align 4, !tbaa !4
  %14 = extractelement <2 x i32> %12, i64 1
  store i32 %14, ptr %i.iw, align 4, !tbaa !4
  %i.ja = add <2 x i32> %i.ix, %vec.phi           ; 2 uses
  %i.jb = add <2 x i32> %12, %vec.phi580          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jc = icmp eq i64 %index.next, %n.vec
  br i1 %i.jc, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.jb, %i.ja
  %i.jd = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %.lr.ph415.preheader591

.lr.ph415.preheader591:                           ; preds = %.lr.ph415.preheader, %middle.block
  %indvars.iv469.ph = phi i64 [ 0, %.lr.ph415.preheader ], [ %n.vec, %middle.block ]
  %.3307413.ph = phi i32 [ %.1305.lcssa, %.lr.ph415.preheader ], [ %i.jd, %middle.block ]
  br label %.lr.ph415

.lr.ph415:                                        ; preds = %.lr.ph415.preheader591, %.lr.ph415
  %indvars.iv469 = phi i64 [ %indvars.iv.next470, %.lr.ph415 ], [ %indvars.iv469.ph, %.lr.ph415.preheader591 ] ; 3 uses
  %.3307413 = phi i32 [ %i.js, %.lr.ph415 ], [ %.3307413.ph, %.lr.ph415.preheader591 ]
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv469
  %i.jf = load double, ptr %i.je, align 8, !tbaa !14
  %i.jg = fsub double 5.000000e-01, %i.jf
  %i.jh = fmul double %i.jg, 3.300000e-01
  %i.ji = fmul double %i.jh, 2.000000e+00         ; 2 uses
  %i.jj = fsub double 1.000000e+00, %i.ji
  %i.jk = fadd double %i.ji, 1.000000e+00
  %i.jl = fdiv double %i.jj, %i.jk
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv469 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !4
  %i.jo = sitofp i32 %i.jn to double
  %i.jp = fmul double %i.jl, %i.jo
  %i.jq = fptosi double %i.jp to i32
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %spec.select329 = call i32 @llvm.smax.i32(i32 %i.jq, i32 125) ; 2 uses
  store i32 %spec.select329, ptr %i.jr, align 4, !tbaa !4
  %i.js = add nsw i32 %spec.select329, %.3307413  ; 2 uses
  %indvars.iv.next470 = add nuw nsw i64 %indvars.iv469, 1 ; 2 uses
  %exitcond473.not = icmp eq i64 %indvars.iv.next470, %wide.trip.count472
  br i1 %exitcond473.not, label %.loopexit380, label %.lr.ph415, !llvm.loop !55

.loopexit380:                                     ; preds = %.lr.ph415, %._crit_edge408
  %.4308 = phi i32 [ %.1305.lcssa, %._crit_edge408 ], [ %i.js, %.lr.ph415 ] ; 2 uses
  br i1 %i.hm, label %.loopexit380.thread, label %bb.w

.loopexit380.thread:                              ; preds = %._crit_edge, %.loopexit380
  %.4308544 = phi i32 [ %.4308, %.loopexit380 ], [ 0, %._crit_edge ]
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ju = load i32, ptr %i.jt, align 8, !tbaa !46
  br label %bb.w

bb.w:                                             ; preds = %.loopexit380, %.loopexit380.thread
  %.4308543 = phi i32 [ %.4308544, %.loopexit380.thread ], [ %.4308, %.loopexit380 ] ; 5 uses
  %i.jv = phi i32 [ %i.ju, %.loopexit380.thread ], [ 1, %.loopexit380 ] ; 3 uses
  %i.jw = load i32, ptr %i.h, align 4, !tbaa !45  ; 3 uses
  %i.jx = icmp slt i32 %i.jv, %i.jw
  br i1 %i.jx, label %.lr.ph419.preheader, label %._crit_edge420

.lr.ph419.preheader:                              ; preds = %bb.w
  %i.jy = sext i32 %i.jv to i64
  br label %.lr.ph419

.lr.ph419:                                        ; preds = %.lr.ph419.preheader, %bb.x
  %indvars.iv474 = phi i64 [ %i.jy, %.lr.ph419.preheader ], [ %indvars.iv.next475, %bb.x ] ; 3 uses
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv474
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !4
  %.not318 = icmp sgt i32 %.4308543, %i.ka
  br i1 %.not318, label %bb.x, label %._crit_edge420.loopexit.split.loop.exit

bb.x:                                             ; preds = %.lr.ph419
  %indvars.iv.next475 = add nsw i64 %indvars.iv474, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next475 to i32
  %exitcond477.not = icmp eq i32 %i.jw, %lftr.wideiv
  br i1 %exitcond477.not, label %._crit_edge420, label %.lr.ph419, !llvm.loop !56

._crit_edge420.loopexit.split.loop.exit:          ; preds = %.lr.ph419
  %i.kb = trunc nsw i64 %indvars.iv474 to i32
  br label %._crit_edge420

._crit_edge420:                                   ; preds = %bb.x, %._crit_edge420.loopexit.split.loop.exit, %bb.w
  %storemerge317.lcssa = phi i32 [ %i.jv, %bb.w ], [ %i.kb, %._crit_edge420.loopexit.split.loop.exit ], [ %i.jw, %bb.x ]
  store i32 %storemerge317.lcssa, ptr %i.g, align 4, !tbaa !44
  call void @getframebits(ptr noundef nonnull %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #11
  %i.kc = load i32, ptr %i.f, align 4, !tbaa !4
  %i.kd = load i32, ptr %i.e, align 4, !tbaa !4
  %i.ke = call i32 @ResvFrameBegin(ptr noundef nonnull %0, ptr noundef %5, i32 noundef %i.kc, i32 noundef %i.kd) #11
  %.not320 = icmp sgt i32 %.4308543, %i.ke        ; 2 uses
  %.pre516 = load i32, ptr %i.y, align 8, !tbaa !8 ; 4 uses
  %i.kf = icmp sgt i32 %.pre516, 0                ; 2 uses
  br i1 %.not320, label %.preheader378, label %.loopexit

.preheader378:                                    ; preds = %._crit_edge420
  br i1 %i.kf, label %.preheader377.lr.ph, label %._crit_edge449

.preheader377.lr.ph:                              ; preds = %.preheader378
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !16 ; 4 uses
  %i.ki = icmp sgt i32 %i.kh, 0
  br i1 %i.ki, label %.preheader377.lr.ph.split.us, label %.preheader374.lr.ph

.preheader377.lr.ph.split.us:                     ; preds = %.preheader377.lr.ph
  %i.kj = load i32, ptr %i.g, align 4, !tbaa !44
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.kk
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !4  ; 3 uses
  %wide.trip.count481 = zext nneg i32 %i.kh to i64 ; 2 uses
  %i.kn = zext nneg i32 %.pre516 to i64
  %xtraiter = and i64 %wide.trip.count481, 1
  %i.ko = icmp eq i32 %i.kh, 1
  %unroll_iter = and i64 %wide.trip.count481, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod599 = trunc i32 %i.kh to i1
  br label %.preheader377.us

.preheader377.us:                                 ; preds = %._crit_edge426.us, %.preheader377.lr.ph.split.us
  %indvars.iv483 = phi i64 [ %indvars.iv.next484, %._crit_edge426.us ], [ 0, %.preheader377.lr.ph.split.us ] ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv483 ; 3 uses
  br i1 %i.ko, label %.epil.preheader, label %.preheader377.us.new

.preheader377.us.new:                             ; preds = %.preheader377.us, %.preheader377.us.new
  %indvars.iv478 = phi i64 [ %indvars.iv.next479.1, %.preheader377.us.new ], [ 0, %.preheader377.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader377.us.new ], [ 0, %.preheader377.us ]
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv478 ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !4
  %i.ks = mul nsw i32 %i.km, %i.kr
  %i.kt = sdiv i32 %i.ks, %.4308543
  store i32 %i.kt, ptr %i.kq, align 8, !tbaa !4
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv478
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4 ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !4
  %i.kx = mul nsw i32 %i.km, %i.kw
  %i.ky = sdiv i32 %i.kx, %.4308543
  store i32 %i.ky, ptr %i.kv, align 4, !tbaa !4
  %indvars.iv.next479.1 = add nuw nsw i64 %indvars.iv478, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge426.us.unr-lcssa, label %.preheader377.us.new, !llvm.loop !57

._crit_edge426.us.unr-lcssa:                      ; preds = %.preheader377.us.new
  br i1 %lcmp.mod.not, label %._crit_edge426.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge426.us.unr-lcssa, %.preheader377.us
  %indvars.iv478.epil.init = phi i64 [ 0, %.preheader377.us ], [ %indvars.iv.next479.1, %._crit_edge426.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod599)
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv478.epil.init ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !4
  %i.lb = mul nsw i32 %i.km, %i.la
  %i.lc = sdiv i32 %i.lb, %.4308543
  store i32 %i.lc, ptr %i.kz, align 4, !tbaa !4
  br label %._crit_edge426.us

._crit_edge426.us:                                ; preds = %._crit_edge426.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %i.ld = icmp samesign ult i64 %indvars.iv.next484, %i.kn
  br i1 %i.ld, label %.preheader377.us, label %.preheader374.lr.ph, !llvm.loop !58

.loopexit:                                        ; preds = %._crit_edge420
  br i1 %i.kf, label %.preheader374.lr.ph, label %._crit_edge449

.preheader374.lr.ph:                              ; preds = %._crit_edge426.us, %.preheader377.lr.ph, %.loopexit
  %i.le = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.li = load i32, ptr %i.le, align 4, !tbaa !16 ; 2 uses
  %i.lj = icmp sgt i32 %i.li, 0
  br i1 %i.lj, label %.preheader374, label %.preheader372.lr.ph

.preheader374:                                    ; preds = %.preheader374.lr.ph, %._crit_edge439
  %i.lk = phi i32 [ %i.qu, %._crit_edge439 ], [ %.pre516, %.preheader374.lr.ph ]
  %i.ll = phi i32 [ %i.qv, %._crit_edge439 ], [ %i.li, %.preheader374.lr.ph ] ; 2 uses
  %indvars.iv497 = phi i64 [ %indvars.iv.next498, %._crit_edge439 ], [ 0, %.preheader374.lr.ph ] ; 7 uses
  %i.lm = icmp sgt i32 %i.ll, 0
  br i1 %i.lm, label %.lr.ph438, label %._crit_edge439

.lr.ph438:                                        ; preds = %.preheader374
  %i.ln = getelementptr inbounds nuw [240 x i8], ptr %i.lf, i64 %indvars.iv497
  %i.lo = getelementptr inbounds nuw [9216 x i8], ptr %3, i64 %indvars.iv497
  %i.lp = getelementptr inbounds nuw [488 x i8], ptr %7, i64 %indvars.iv497 ; 2 uses
  %i.lq = getelementptr inbounds nuw [4608 x i8], ptr %6, i64 %indvars.iv497 ; 2 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv497
  %i.ls = getelementptr inbounds nuw [1952 x i8], ptr %4, i64 %indvars.iv497
  br label %bb.y

.preheader373:                                    ; preds = %._crit_edge439
  %i.lt = icmp sgt i32 %i.qu, 0
  br i1 %i.lt, label %.preheader372.lr.ph, label %._crit_edge449

.preheader372.lr.ph:                              ; preds = %.preheader374.lr.ph, %.preheader373
  %i.lu = phi i32 [ %i.qu, %.preheader373 ], [ %.pre516, %.preheader374.lr.ph ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.lx = load i32, ptr %i.lv, align 4, !tbaa !16 ; 2 uses
  %i.ly = icmp sgt i32 %i.lx, 0
  br i1 %i.ly, label %.preheader372, label %.preheader370.lr.ph

bb.y:                                             ; preds = %.lr.ph438, %bb.ad
  %indvars.iv494 = phi i64 [ 0, %.lr.ph438 ], [ %indvars.iv.next495, %bb.ad ] ; 11 uses
  br i1 %.not320, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.lz = load i32, ptr @reduce_sidechannel, align 4, !tbaa !4
  %i.ma = icmp ne i32 %i.lz, 0
end_hunk_0
