Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/quantize?download=true
inline.NumInlined: 7
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 24
begin_hunk_0_@VBR_iteration_loop:bb.a
  %i.hf = add nsw i32 %.0306, %.0308
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n
  %.2310 = phi i32 [ %i.ge, %bb.n ], [ %i.he, %bb.p ], [ %i.hf, %bb.q ]
  %.2 = phi i32 [ %.0, %bb.n ], [ %i.hd, %bb.p ], [ %.0, %bb.q ] ; 2 uses
  %.1307362369 = lshr i32 %.0306, 1
  %i.hg = icmp sgt i32 %.0306, 21
  br i1 %i.hg, label %bb.m, label %bb.s, !llvm.loop !49

bb.s:                                             ; preds = %bb.r
  %.not327 = icmp sgt i32 %.2, %i.fv
  br i1 %.not327, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.au, ptr noundef nonnull align 8 dereferenceable(120) %8, i64 120, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %i.gc, ptr noundef nonnull align 4 dereferenceable(244) %10, i64 244, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %i.gb, ptr noundef nonnull align 16 dereferenceable(2304) %i.a, i64 2304, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.hh = load i32, ptr %i.au, align 8, !tbaa !30 ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !9
  %i.hj = add nsw i32 %i.hh, %.1300394
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %init_outer_loop.exit.thread
  %.2301 = phi i32 [ %i.hj, %bb.u ], [ %.1300394, %init_outer_loop.exit.thread ] ; 2 uses
  %.3 = phi i32 [ %spec.select328, %bb.u ], [ 1, %init_outer_loop.exit.thread ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge400, label %bb.h, !llvm.loop !50

._crit_edge400:                                   ; preds = %bb.v, %bb.g
  %.1300.lcssa = phi i32 [ %.0299403, %bb.g ], [ %.2301, %bb.v ] ; 4 uses
  %.1282.lcssa = phi i32 [ %.0281405, %bb.g ], [ %.3, %bb.v ] ; 2 uses
  %indvars.iv.next467 = add nuw nsw i64 %indvars.iv466, 1 ; 2 uses
  %i.hk = load i32, ptr %i.y, align 8, !tbaa !15  ; 4 uses
  %i.hl = sext i32 %i.hk to i64
  %i.hm = icmp slt i64 %indvars.iv.next467, %i.hl
  br i1 %i.hm, label %bb.e, label %._crit_edge408, !llvm.loop !51

._crit_edge408:                                   ; preds = %._crit_edge400
  %i.hn = icmp eq i32 %.1282.lcssa, 0
  %i.ho = load i32, ptr @reduce_sidechannel, align 4, !tbaa !9
  %.not315 = icmp ne i32 %i.ho, 0
  %i.hp = icmp sgt i32 %i.hk, 0
  %or.cond450 = and i1 %.not315, %i.hp
  br i1 %or.cond450, label %.lr.ph415.preheader, label %.loopexit380

.lr.ph415.preheader:                              ; preds = %._crit_edge408
  %wide.trip.count472 = zext nneg i32 %i.hk to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.hk, 5
  br i1 %min.iters.check, label %.lr.ph415.preheader603, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph415.preheader
  %i.hq = and i64 %wide.trip.count472, 3          ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 0
  %i.hs = select i1 %i.hr, i64 4, i64 %i.hq
  %n.vec = sub nsw i64 %wide.trip.count472, %i.hs ; 2 uses
  %i.ht = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.1300.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i32> [ %i.ht, %vector.ph ], [ %i.jf, %vector.body ]
  %vec.phi580 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.jg, %vector.body ]
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %wide.load = load <2 x double>, ptr %i.hu, align 8, !tbaa !17
  %wide.load581 = load <2 x double>, ptr %i.hv, align 8, !tbaa !17
  %i.hw = fsub <2 x double> splat (double 5.000000e-01), %wide.load
  %i.hx = fsub <2 x double> splat (double 5.000000e-01), %wide.load581
  %i.hy = fmul <2 x double> %i.hw, splat (double 3.300000e-01)
  %i.hz = fmul <2 x double> %i.hx, splat (double 3.300000e-01)
  %i.ia = fmul <2 x double> %i.hy, splat (double 2.000000e+00) ; 2 uses
  %i.ib = fmul <2 x double> %i.hz, splat (double 2.000000e+00) ; 2 uses
  %i.ic = fsub <2 x double> splat (double 1.000000e+00), %i.ia
  %i.id = fsub <2 x double> splat (double 1.000000e+00), %i.ib
  %i.ie = fadd <2 x double> %i.ia, splat (double 1.000000e+00)
  %i.if = fadd <2 x double> %i.ib, splat (double 1.000000e+00)
  %i.ig = fdiv <2 x double> %i.ic, %i.ie
  %i.ih = fdiv <2 x double> %i.id, %i.if
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index
  %i.in = load <3 x i32>, ptr %i.ii, align 16, !tbaa !9
  %strided.vec = shufflevector <3 x i32> %i.in, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.io = load <3 x i32>, ptr %i.il, align 16, !tbaa !9
  %strided.vec583 = shufflevector <3 x i32> %i.io, <3 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.ip = sitofp <2 x i32> %strided.vec to <2 x double>
  %i.iq = sitofp <2 x i32> %strided.vec583 to <2 x double>
  %i.ir = fmul <2 x double> %i.ig, %i.ip
  %i.is = fmul <2 x double> %i.ih, %i.iq
  %i.it = fptosi <2 x double> %i.ir to <2 x i32>
  %i.iu = fptosi <2 x double> %i.is to <2 x i32>
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ij, i64 12
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ik, i64 20
  %i.iy = getelementptr inbounds nuw i8, ptr %i.im, i64 28
  %i.iz = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.it, <2 x i32> splat (i32 125)) ; 3 uses
  %i.ja = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.iu, <2 x i32> splat (i32 125)) ; 3 uses
  %i.jb = extractelement <2 x i32> %i.iz, i64 0
  store i32 %i.jb, ptr %i.iv, align 4, !tbaa !9
  %i.jc = extractelement <2 x i32> %i.iz, i64 1
  store i32 %i.jc, ptr %i.iw, align 4, !tbaa !9
  %i.jd = extractelement <2 x i32> %i.ja, i64 0
  store i32 %i.jd, ptr %i.ix, align 4, !tbaa !9
  %i.je = extractelement <2 x i32> %i.ja, i64 1
  store i32 %i.je, ptr %i.iy, align 4, !tbaa !9
  %i.jf = add <2 x i32> %i.iz, %vec.phi           ; 2 uses
  %i.jg = add <2 x i32> %i.ja, %vec.phi580        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jh = icmp eq i64 %index.next, %n.vec
  br i1 %i.jh, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.jg, %i.jf
  %i.ji = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %.lr.ph415.preheader603

.lr.ph415.preheader603:                           ; preds = %.lr.ph415.preheader, %middle.block
  %indvars.iv469.ph = phi i64 [ 0, %.lr.ph415.preheader ], [ %n.vec, %middle.block ]
  %.3302413.ph = phi i32 [ %.1300.lcssa, %.lr.ph415.preheader ], [ %i.ji, %middle.block ]
  br label %.lr.ph415

.lr.ph415:                                        ; preds = %.lr.ph415.preheader603, %.lr.ph415
  %indvars.iv469 = phi i64 [ %indvars.iv.next470, %.lr.ph415 ], [ %indvars.iv469.ph, %.lr.ph415.preheader603 ] ; 3 uses
  %.3302413 = phi i32 [ %i.jx, %.lr.ph415 ], [ %.3302413.ph, %.lr.ph415.preheader603 ]
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv469
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !17
  %i.jl = fsub double 5.000000e-01, %i.jk
  %i.jm = fmul double %i.jl, 3.300000e-01
  %i.jn = fmul double %i.jm, 2.000000e+00         ; 2 uses
  %i.jo = fsub double 1.000000e+00, %i.jn
  %i.jp = fadd double %i.jn, 1.000000e+00
  %i.jq = fdiv double %i.jo, %i.jp
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv469 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !9
  %i.jt = sitofp i32 %i.js to double
  %i.ju = fmul double %i.jq, %i.jt
  %i.jv = fptosi double %i.ju to i32
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %spec.select329 = call i32 @llvm.smax.i32(i32 %i.jv, i32 125) ; 2 uses
  store i32 %spec.select329, ptr %i.jw, align 4, !tbaa !9
  %i.jx = add nsw i32 %spec.select329, %.3302413  ; 2 uses
  %indvars.iv.next470 = add nuw nsw i64 %indvars.iv469, 1 ; 2 uses
  %exitcond473.not = icmp eq i64 %indvars.iv.next470, %wide.trip.count472
  br i1 %exitcond473.not, label %.loopexit380, label %.lr.ph415, !llvm.loop !53

.loopexit380:                                     ; preds = %.lr.ph415, %._crit_edge408
  %.4303 = phi i32 [ %.1300.lcssa, %._crit_edge408 ], [ %i.jx, %.lr.ph415 ] ; 2 uses
  br i1 %i.hn, label %.loopexit380.thread, label %bb.w

.loopexit380.thread:                              ; preds = %._crit_edge, %.loopexit380
  %.4303544 = phi i32 [ %.4303, %.loopexit380 ], [ 0, %._crit_edge ]
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !67
  br label %bb.w

bb.w:                                             ; preds = %.loopexit380, %.loopexit380.thread
  %.4303543 = phi i32 [ %.4303544, %.loopexit380.thread ], [ %.4303, %.loopexit380 ] ; 4 uses
  %i.ka = phi i32 [ %i.jz, %.loopexit380.thread ], [ 1, %.loopexit380 ] ; 3 uses
  %i.kb = load i32, ptr %i.h, align 4, !tbaa !66  ; 3 uses
  %i.kc = icmp slt i32 %i.ka, %i.kb
  br i1 %i.kc, label %.lr.ph419.preheader, label %._crit_edge420

.lr.ph419.preheader:                              ; preds = %bb.w
  %i.kd = sext i32 %i.ka to i64
  br label %.lr.ph419

.lr.ph419:                                        ; preds = %.lr.ph419.preheader, %bb.x
  %indvars.iv474 = phi i64 [ %i.kd, %.lr.ph419.preheader ], [ %indvars.iv.next475, %bb.x ] ; 3 uses
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.d, i64 %indvars.iv474
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !9
  %.not318 = icmp sgt i32 %.4303543, %i.kf
  br i1 %.not318, label %bb.x, label %._crit_edge420.loopexit.split.loop.exit

bb.x:                                             ; preds = %.lr.ph419
  %indvars.iv.next475 = add nsw i64 %indvars.iv474, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next475 to i32
  %exitcond477.not = icmp eq i32 %i.kb, %lftr.wideiv
  br i1 %exitcond477.not, label %._crit_edge420, label %.lr.ph419, !llvm.loop !54

._crit_edge420.loopexit.split.loop.exit:          ; preds = %.lr.ph419
  %i.kg = trunc nsw i64 %indvars.iv474 to i32
  br label %._crit_edge420

._crit_edge420:                                   ; preds = %bb.x, %._crit_edge420.loopexit.split.loop.exit, %bb.w
  %storemerge317.lcssa = phi i32 [ %i.ka, %bb.w ], [ %i.kg, %._crit_edge420.loopexit.split.loop.exit ], [ %i.kb, %bb.x ]
  store i32 %storemerge317.lcssa, ptr %i.g, align 4, !tbaa !65
  call void @getframebits(ptr noundef nonnull %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #11
  %i.kh = load i32, ptr %i.f, align 4, !tbaa !9
  %i.ki = load i32, ptr %i.e, align 4, !tbaa !9
  %i.kj = call i32 @ResvFrameBegin(ptr noundef nonnull %0, ptr noundef %5, i32 noundef %i.kh, i32 noundef %i.ki) #11
  %.not320 = icmp sgt i32 %.4303543, %i.kj        ; 2 uses
  %.pre516 = load i32, ptr %i.y, align 8, !tbaa !15 ; 4 uses
  %i.kk = icmp sgt i32 %.pre516, 0                ; 2 uses
  br i1 %.not320, label %.preheader378, label %.loopexit

.preheader378:                                    ; preds = %._crit_edge420
  br i1 %i.kk, label %.preheader377.lr.ph, label %._crit_edge449

.preheader377.lr.ph:                              ; preds = %.preheader378
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !18 ; 3 uses
  %i.kn = icmp sgt i32 %i.km, 0
  br i1 %i.kn, label %.preheader377.lr.ph.split.us, label %.preheader374.lr.ph

.preheader377.lr.ph.split.us:                     ; preds = %.preheader377.lr.ph
  %i.ko = load i32, ptr %i.g, align 4, !tbaa !65
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !9  ; 2 uses
  %wide.trip.count481 = zext nneg i32 %i.km to i64 ; 3 uses
  %i.ks = zext nneg i32 %.pre516 to i64
  %min.iters.check585 = icmp ult i32 %i.km, 4
  %n.vec587 = and i64 %wide.trip.count481, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.kr, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert588 = insertelement <4 x i32> poison, i32 %.4303543, i64 0
  %broadcast.splat589 = shufflevector <4 x i32> %broadcast.splatinsert588, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec587, %wide.trip.count481
  br label %.preheader377.us

.preheader377.us:                                 ; preds = %._crit_edge426.us, %.preheader377.lr.ph.split.us
  %indvars.iv483 = phi i64 [ %indvars.iv.next484, %._crit_edge426.us ], [ 0, %.preheader377.lr.ph.split.us ] ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv483 ; 2 uses
  br i1 %min.iters.check585, label %scalar.ph584.preheader, label %vector.body590

vector.body590:                                   ; preds = %.preheader377.us, %vector.body590
  %index591 = phi i64 [ %index.next593, %vector.body590 ], [ 0, %.preheader377.us ] ; 2 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %index591 ; 2 uses
  %wide.load592 = load <4 x i32>, ptr %i.ku, align 8, !tbaa !9
  %i.kv = mul nsw <4 x i32> %broadcast.splat, %wide.load592
  %i.kw = sdiv <4 x i32> %i.kv, %broadcast.splat589
  store <4 x i32> %i.kw, ptr %i.ku, align 8, !tbaa !9
  %index.next593 = add nuw i64 %index591, 4       ; 2 uses
  %i.kx = icmp eq i64 %index.next593, %n.vec587
  br i1 %i.kx, label %middle.block594, label %vector.body590, !llvm.loop !55

middle.block594:                                  ; preds = %vector.body590
  br i1 %cmp.n, label %._crit_edge426.us, label %scalar.ph584.preheader

scalar.ph584.preheader:                           ; preds = %.preheader377.us, %middle.block594
  %indvars.iv478.ph = phi i64 [ 0, %.preheader377.us ], [ %n.vec587, %middle.block594 ]
  br label %scalar.ph584

scalar.ph584:                                     ; preds = %scalar.ph584.preheader, %scalar.ph584
  %indvars.iv478 = phi i64 [ %indvars.iv.next479, %scalar.ph584 ], [ %indvars.iv478.ph, %scalar.ph584.preheader ] ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %indvars.iv478 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !9
  %i.la = mul nsw i32 %i.kr, %i.kz
  %i.lb = sdiv i32 %i.la, %.4303543
  store i32 %i.lb, ptr %i.ky, align 4, !tbaa !9
  %indvars.iv.next479 = add nuw nsw i64 %indvars.iv478, 1 ; 2 uses
  %exitcond482.not = icmp eq i64 %indvars.iv.next479, %wide.trip.count481
  br i1 %exitcond482.not, label %._crit_edge426.us, label %scalar.ph584, !llvm.loop !56

._crit_edge426.us:                                ; preds = %scalar.ph584, %middle.block594
  %indvars.iv.next484 = add nuw nsw i64 %indvars.iv483, 1 ; 2 uses
  %i.lc = icmp samesign ult i64 %indvars.iv.next484, %i.ks
  br i1 %i.lc, label %.preheader377.us, label %.preheader374.lr.ph, !llvm.loop !57

.loopexit:                                        ; preds = %._crit_edge420
  br i1 %i.kk, label %.preheader374.lr.ph, label %._crit_edge449

.preheader374.lr.ph:                              ; preds = %._crit_edge426.us, %.preheader377.lr.ph, %.loopexit
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.lh = load i32, ptr %i.ld, align 4, !tbaa !18 ; 2 uses
  %i.li = icmp sgt i32 %i.lh, 0
  br i1 %i.li, label %.preheader374, label %.preheader372.lr.ph

.preheader374:                                    ; preds = %.preheader374.lr.ph, %._crit_edge439
  %i.lj = phi i32 [ %i.qu, %._crit_edge439 ], [ %.pre516, %.preheader374.lr.ph ]
  %i.lk = phi i32 [ %i.qv, %._crit_edge439 ], [ %i.lh, %.preheader374.lr.ph ] ; 2 uses
  %indvars.iv497 = phi i64 [ %indvars.iv.next498, %._crit_edge439 ], [ 0, %.preheader374.lr.ph ] ; 7 uses
  %i.ll = icmp sgt i32 %i.lk, 0
  br i1 %i.ll, label %.lr.ph438, label %._crit_edge439

.lr.ph438:                                        ; preds = %.preheader374
  %i.lm = getelementptr inbounds nuw [240 x i8], ptr %i.le, i64 %indvars.iv497
  %i.ln = getelementptr inbounds nuw [9216 x i8], ptr %3, i64 %indvars.iv497
  %i.lo = getelementptr inbounds nuw [488 x i8], ptr %7, i64 %indvars.iv497 ; 2 uses
  %i.lp = getelementptr inbounds nuw [4608 x i8], ptr %6, i64 %indvars.iv497 ; 2 uses
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv497
  %i.lr = getelementptr inbounds nuw [1952 x i8], ptr %4, i64 %indvars.iv497
  br label %bb.y

.preheader373:                                    ; preds = %._crit_edge439
  %i.ls = icmp sgt i32 %i.qu, 0
  br i1 %i.ls, label %.preheader372.lr.ph, label %._crit_edge449

.preheader372.lr.ph:                              ; preds = %.preheader374.lr.ph, %.preheader373
  %i.lt = phi i32 [ %i.qu, %.preheader373 ], [ %.pre516, %.preheader374.lr.ph ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.lw = load i32, ptr %i.lu, align 4, !tbaa !18 ; 2 uses
  %i.lx = icmp sgt i32 %i.lw, 0
  br i1 %i.lx, label %.preheader372, label %.preheader370.lr.ph

bb.y:                                             ; preds = %.lr.ph438, %bb.ad
  %indvars.iv494 = phi i64 [ 0, %.lr.ph438 ], [ %indvars.iv.next495, %bb.ad ] ; 11 uses
  br i1 %.not320, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ly = load i32, ptr @reduce_sidechannel, align 4, !tbaa !9
  %i.lz = icmp ne i32 %i.ly, 0
  %i.ma = icmp eq i64 %indvars.iv494, 1
  %or.cond = and i1 %i.ma, %i.lz
  br i1 %or.cond, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.mb = getelementptr inbounds nuw [120 x i8], ptr %i.lm, i64 %indvars.iv494 ; 14 uses
  %i.mc = getelementptr inbounds nuw [4608 x i8], ptr %i.ln, i64 %indvars.iv494 ; 8 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.md, i8 0, i64 16, i1 false), !tbaa !9
  %i.me = getelementptr inbounds nuw i8, ptr %i.mb, i64 96
  store ptr @nr_of_sfb_block, ptr %i.me, align 8, !tbaa !21
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  store i32 0, ptr %i.mf, align 8, !tbaa !22
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mb, i64 44
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mb, i64 76
  store i32 0, ptr %i.mi, align 4, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.mg, i8 0, i64 40, i1 false)
  store <4 x i32> <i32 0, i32 0, i32 0, i32 210>, ptr %i.mb, align 8, !tbaa !9
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mb, i64 72
  store i32 0, ptr %i.mj, align 8, !tbaa !24
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mb, i64 88
  store i32 0, ptr %i.mk, align 8, !tbaa !25
  %i.ml = load i32, ptr %i.lf, align 4, !tbaa !26
  %.not.i331 = icmp eq i32 %i.ml, 0
  br i1 %.not.i331, label %.thread.i333.preheader, label %bb.ab

.thread.i333.preheader:                           ; preds = %bb.ab, %bb.aa
  br label %.thread.i333

bb.ab:                                            ; preds = %bb.aa
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !27
  %.not79.i332 = icmp eq i32 %i.mn, 2
  br i1 %.not79.i332, label %.preheader84.i338, label %.thread.i333.preheader

.preheader84.i338:                                ; preds = %bb.ab, %.preheader84.i338
  %.sroa.11.0.i340 = phi double [ %i.ne, %.preheader84.i338 ], [ 0.000000e+00, %bb.ab ]
  %indvars.iv.i342 = phi i64 [ %indvars.iv.next.i344.1, %.preheader84.i338 ], [ 0, %bb.ab ] ; 3 uses
  %.07092.i343 = phi i32 [ %i.nk, %.preheader84.i338 ], [ 0, %bb.ab ]
  %i.mo = phi <2 x double> [ %i.nj, %.preheader84.i338 ], [ zeroinitializer, %bb.ab ]
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv.i342 ; 3 uses
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !17
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !17 ; 2 uses
  %i.mt = call double @llvm.fmuladd.f64(double %i.ms, double %i.ms, double %.sroa.11.0.i340)
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !17
  %i.mw = insertelement <2 x double> poison, double %i.mv, i64 0
  %i.mx = insertelement <2 x double> %i.mw, double %i.mq, i64 1 ; 2 uses
  %i.my = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %i.mx, <2 x double> %i.mo)
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv.i342 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  %i.nb = load double, ptr %i.na, align 8, !tbaa !17
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mz, i64 32
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !17 ; 2 uses
  %i.ne = call double @llvm.fmuladd.f64(double %i.nd, double %i.nd, double %i.mt) ; 5 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mz, i64 40
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !17
  %i.nh = insertelement <2 x double> poison, double %i.ng, i64 0
  %i.ni = insertelement <2 x double> %i.nh, double %i.nb, i64 1 ; 2 uses
  %i.nj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> %i.ni, <2 x double> %i.my) ; 5 uses
  %indvars.iv.next.i344.1 = add nuw nsw i64 %indvars.iv.i342, 6
  %i.nk = add nuw nsw i32 %.07092.i343, 2         ; 2 uses
  %exitcond.not.i345.1 = icmp eq i32 %i.nk, 192
  br i1 %exitcond.not.i345.1, label %init_outer_loop.exit351, label %.preheader84.i338, !llvm.loop !0

.thread.i333.1:                                   ; preds = %.thread.i333
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv118.i334
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !17
  %i.no = call double @llvm.fabs.f64(double %i.nn)
  %i.np = fcmp ogt double %i.no, 1.000000e-99
  br i1 %i.np, label %init_outer_loop.exit351.thread359, label %.thread.i333.2

.thread.i333.2:                                   ; preds = %.thread.i333.1
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv118.i334
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !17
  %i.nt = call double @llvm.fabs.f64(double %i.ns)
  %i.nu = fcmp ogt double %i.nt, 1.000000e-99
  br i1 %i.nu, label %init_outer_loop.exit351.thread359, label %.thread.i333.3

.thread.i333.3:                                   ; preds = %.thread.i333.2
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv118.i334
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !17
  %i.ny = call double @llvm.fabs.f64(double %i.nx)
  %i.nz = fcmp ogt double %i.ny, 1.000000e-99
  br i1 %i.nz, label %init_outer_loop.exit351.thread359, label %bb.ac

bb.ac:                                            ; preds = %.thread.i333.3
  %indvars.iv.next119.i335.3 = add nuw nsw i64 %indvars.iv118.i334, 4 ; 2 uses
  %exitcond121.not.i336.3 = icmp eq i64 %indvars.iv.next119.i335.3, 576
  br i1 %exitcond121.not.i336.3, label %init_outer_loop.exit351.thread, label %.thread.i333, !llvm.loop !1

.thread.i333:                                     ; preds = %bb.ac, %.thread.i333.preheader
  %indvars.iv118.i334 = phi i64 [ 0, %.thread.i333.preheader ], [ %indvars.iv.next119.i335.3, %bb.ac ] ; 5 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv118.i334
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !17
  %i.oc = call double @llvm.fabs.f64(double %i.ob)
  %i.od = fcmp ogt double %i.oc, 1.000000e-99
  br i1 %i.od, label %init_outer_loop.exit351.thread359, label %.thread.i333.1

init_outer_loop.exit351:                          ; preds = %.preheader84.i338
  %i.oe = extractelement <2 x double> %i.nj, i64 1 ; 2 uses
  %i.of = fcmp olt double %i.oe, f0x3D719799812DEA11
  %.068..i347 = select i1 %i.of, double f0x3D719799812DEA11, double %i.oe ; 2 uses
  %i.og = fcmp ogt double %.068..i347, %i.ne
  %.068..1.i348 = select i1 %i.og, double %.068..i347, double %i.ne ; 2 uses
  %i.oh = extractelement <2 x double> %i.nj, i64 0 ; 2 uses
  %i.oi = fcmp ogt double %.068..1.i348, %i.oh
  %.068..2.i349 = select i1 %i.oi, double %.068..1.i348, double %i.oh ; 2 uses
  %i.oj = fcmp ogt <2 x double> %i.nj, splat (double f0x3D719799812DEA11)
  %i.ok = fcmp ogt double %i.ne, f0x3D719799812DEA11
  %i.ol = select i1 %i.ok, double %i.ne, double f0x3D719799812DEA11
  %i.om = fdiv double %i.ol, %.068..2.i349        ; 2 uses
  %i.on = select <2 x i1> %i.oj, <2 x double> %i.nj, <2 x double> splat (double f0x3D719799812DEA11)
  %i.oo = insertelement <2 x double> poison, double %.068..2.i349, i64 0
  %i.op = shufflevector <2 x double> %i.oo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oq = fdiv <2 x double> %i.on, %i.op          ; 2 uses
  %i.or = extractelement <2 x double> %i.oq, i64 1 ; 2 uses
  %i.os = call double @log(double noundef %i.or) #11, !tbaa !9
  %i.ot = fmul double %i.os, 5.000000e-01
  %i.ou = fdiv double %i.ot, f0x3FE62E42FEFA39EF
  %i.ov = fsub double 5.000000e-01, %i.ou
  %i.ow = fptosi double %i.ov to i32
  %i.ox = call i32 @llvm.smax.i32(i32 %i.ow, i32 0)
  %i.oy = call i32 @llvm.umin.i32(i32 %i.ox, i32 2)
  store i32 %i.oy, ptr %i.mh, align 4, !tbaa !9
  %i.oz = call double @log(double noundef %i.om) #11, !tbaa !9
  %i.pa = fmul double %i.oz, 5.000000e-01
  %i.pb = fdiv double %i.pa, f0x3FE62E42FEFA39EF
  %i.pc = fsub double 5.000000e-01, %i.pb
  %i.pd = fptosi double %i.pc to i32
  %i.pe = getelementptr inbounds nuw i8, ptr %i.mb, i64 48
  %i.pf = call i32 @llvm.smax.i32(i32 %i.pd, i32 0)
  %i.pg = call i32 @llvm.umin.i32(i32 %i.pf, i32 2)
  store i32 %i.pg, ptr %i.pe, align 8, !tbaa !9
  %i.ph = extractelement <2 x double> %i.oq, i64 0 ; 2 uses
  %i.pi = call double @log(double noundef %i.ph) #11, !tbaa !9
  %i.pj = fmul double %i.pi, 5.000000e-01
  %i.pk = fdiv double %i.pj, f0x3FE62E42FEFA39EF
  %i.pl = fsub double 5.000000e-01, %i.pk
  %i.pm = fptosi double %i.pl to i32
  %i.pn = getelementptr inbounds nuw i8, ptr %i.mb, i64 52
  %i.po = call i32 @llvm.smax.i32(i32 %i.pm, i32 0)
  %i.pp = call i32 @llvm.umin.i32(i32 %i.po, i32 2)
  store i32 %i.pp, ptr %i.pn, align 4, !tbaa !9
  %i.pq = fadd double %i.or, %i.om
  %i.pr = fadd double %i.ph, %i.pq
  %i.ps = fcmp ule double %i.pr, 1.000000e-99
  br i1 %i.ps, label %init_outer_loop.exit351.thread, label %init_outer_loop.exit351.thread359

init_outer_loop.exit351.thread:                   ; preds = %bb.ac, %init_outer_loop.exit351
  %i.pt = getelementptr inbounds nuw [244 x i8], ptr %i.lo, i64 %indvars.iv494
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(244) %i.pt, i8 0, i64 244, i1 false)
  %i.pu = getelementptr inbounds nuw [2304 x i8], ptr %i.lp, i64 %indvars.iv494
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2304) %i.pu, i8 0, i64 2304, i1 false)
  br label %bb.ad

init_outer_loop.exit351.thread359:                ; preds = %.thread.i333, %.thread.i333.1, %.thread.i333.2, %.thread.i333.3, %init_outer_loop.exit351
  %i.pv = load i32, ptr %i.lg, align 4, !tbaa !68
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.lq, i64 %indvars.iv494
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !9  ; 2 uses
  %i.py = shl nsw i32 %i.pv, 1
  %i.pz = add nsw i32 %i.py, -6
  %i.qa = sitofp i32 %i.pz to float
  %i.qb = add nsw i32 %i.px, -125
  %i.qc = sitofp i32 %i.qb to double
  %i.qd = fdiv nnan double %i.qc, 2.375000e+03
  %i.qe = fptrunc nnan double %i.qd to float
  %i.qf = fadd nnan float %i.qe, -1.000000e+00
  %i.qg = fmul nnan float %i.qf, 4.000000e+00
  %i.qh = fadd float %i.qg, %i.qa
  %i.qi = fdiv float %i.qh, 1.000000e+01
  %i.qj = fpext float %i.qi to double
  %i.qk = call double @pow(double noundef 1.000000e+01, double noundef %i.qj) #11, !tbaa !9
  %i.ql = fptrunc double %i.qk to float
  store float %i.ql, ptr @masking_lower, align 4, !tbaa !32
  %i.qm = getelementptr inbounds nuw [976 x i8], ptr %i.lr, i64 %indvars.iv494
  %i.qn = call i32 @calc_xmin(ptr noundef %0, ptr noundef nonnull %i.mc, ptr noundef %i.qm, ptr noundef nonnull %i.mb, ptr noundef nonnull %11) #11 ; 0 uses
  %i.qo = getelementptr inbounds nuw [2304 x i8], ptr %i.lp, i64 %indvars.iv494
  %i.qp = getelementptr inbounds nuw [244 x i8], ptr %i.lo, i64 %indvars.iv494
  %i.qq = trunc nuw nsw i64 %indvars.iv494 to i32
  call void @outer_loop(ptr noundef %0, ptr noundef nonnull %i.mc, i32 noundef %i.px, ptr noundef nonnull %i.c, ptr noundef nonnull %11, ptr noundef %i.qo, ptr noundef %i.qp, ptr noundef nonnull %i.mb, ptr nonnull poison, i32 noundef %i.qq)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %init_outer_loop.exit351.thread359, %init_outer_loop.exit351.thread
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 2 uses
  %i.qr = load i32, ptr %i.ld, align 4, !tbaa !18 ; 2 uses
  %i.qs = sext i32 %i.qr to i64
  %i.qt = icmp slt i64 %indvars.iv.next495, %i.qs
  br i1 %i.qt, label %bb.y, label %._crit_edge439.loopexit, !llvm.loop !58

._crit_edge439.loopexit:                          ; preds = %bb.ad
  %.pre517 = load i32, ptr %i.y, align 8, !tbaa !15
  br label %._crit_edge439

._crit_edge439:                                   ; preds = %._crit_edge439.loopexit, %.preheader374
  %i.qu = phi i32 [ %.pre517, %._crit_edge439.loopexit ], [ %i.lj, %.preheader374 ] ; 4 uses
  %i.qv = phi i32 [ %i.qr, %._crit_edge439.loopexit ], [ %i.lk, %.preheader374 ]
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1 ; 2 uses
  %i.qw = sext i32 %i.qu to i64
  %i.qx = icmp slt i64 %indvars.iv.next498, %i.qw
  br i1 %i.qx, label %.preheader374, label %.preheader373, !llvm.loop !59

.preheader372:                                    ; preds = %.preheader372.lr.ph, %._crit_edge443
  %i.qy = phi i32 [ %i.rt, %._crit_edge443 ], [ %i.lt, %.preheader372.lr.ph ]
  %i.qz = phi i32 [ %i.ru, %._crit_edge443 ], [ %i.lw, %.preheader372.lr.ph ] ; 2 uses
  %indvars.iv503 = phi i64 [ %indvars.iv.next504, %._crit_edge443 ], [ 0, %.preheader372.lr.ph ] ; 4 uses
  %i.ra = icmp sgt i32 %i.qz, 0
  br i1 %i.ra, label %.lr.ph442, label %._crit_edge443

.lr.ph442:                                        ; preds = %.preheader372
  %i.rb = getelementptr inbounds nuw [240 x i8], ptr %i.lv, i64 %indvars.iv503
  %i.rc = getelementptr inbounds nuw [4608 x i8], ptr %6, i64 %indvars.iv503
  %i.rd = trunc nuw nsw i64 %indvars.iv503 to i32 ; 2 uses
  br label %bb.ae

.preheader371:                                    ; preds = %._crit_edge443
  %i.re = icmp sgt i32 %i.rt, 0
  br i1 %i.re, label %.preheader370.lr.ph, label %._crit_edge449

.preheader370.lr.ph:                              ; preds = %.preheader372.lr.ph, %.preheader371
  %i.rf = phi i32 [ %i.rt, %.preheader371 ], [ %i.lt, %.preheader372.lr.ph ]
  %i.rg = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !18 ; 2 uses
  %i.ri = icmp sgt i32 %i.rh, 0
  br i1 %i.ri, label %.preheader370, label %._crit_edge449

bb.ae:                                            ; preds = %.lr.ph442, %bb.ag
  %indvars.iv500 = phi i64 [ 0, %.lr.ph442 ], [ %indvars.iv.next501, %bb.ag ] ; 4 uses
  %i.rj = getelementptr inbounds nuw [120 x i8], ptr %i.rb, i64 %indvars.iv500 ; 3 uses
  %i.rk = trunc nuw nsw i64 %indvars.iv500 to i32 ; 2 uses
  call void @best_scalefac_store(ptr noundef nonnull %0, i32 noundef %i.rd, i32 noundef %i.rk, ptr noundef %6, ptr noundef %5, ptr noundef %7) #11
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !27
  %i.rn = icmp eq i32 %i.rm, 0
  br i1 %i.rn, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ro = getelementptr inbounds nuw [2304 x i8], ptr %i.rc, i64 %indvars.iv500
  call void @best_huffman_divide(i32 noundef %i.rd, i32 noundef %i.rk, ptr noundef nonnull %i.rj, ptr noundef %i.ro) #11
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.rp = load i32, ptr %i.f, align 4, !tbaa !9
  call void @ResvAdjust(ptr noundef nonnull %0, ptr noundef nonnull %i.rj, ptr noundef nonnull %5, i32 noundef %i.rp) #11
  %indvars.iv.next501 = add nuw nsw i64 %indvars.iv500, 1 ; 2 uses
  %i.rq = load i32, ptr %i.lu, align 4, !tbaa !18 ; 2 uses
  %i.rr = sext i32 %i.rq to i64
  %i.rs = icmp slt i64 %indvars.iv.next501, %i.rr
  br i1 %i.rs, label %bb.ae, label %._crit_edge443.loopexit, !llvm.loop !60

._crit_edge443.loopexit:                          ; preds = %bb.ag
  %.pre518 = load i32, ptr %i.y, align 8, !tbaa !15
  br label %._crit_edge443

._crit_edge443:                                   ; preds = %._crit_edge443.loopexit, %.preheader372
  %i.rt = phi i32 [ %.pre518, %._crit_edge443.loopexit ], [ %i.qy, %.preheader372 ] ; 4 uses
  %i.ru = phi i32 [ %i.rq, %._crit_edge443.loopexit ], [ %i.qz, %.preheader372 ]
  %indvars.iv.next504 = add nuw nsw i64 %indvars.iv503, 1 ; 2 uses
  %i.rv = sext i32 %i.rt to i64
  %i.rw = icmp slt i64 %indvars.iv.next504, %i.rv
  br i1 %i.rw, label %.preheader372, label %.preheader371, !llvm.loop !61

.preheader370:                                    ; preds = %.preheader370.lr.ph, %._crit_edge447
  %i.rx = phi i32 [ %i.st, %._crit_edge447 ], [ %i.rf, %.preheader370.lr.ph ]
  %i.ry = phi i32 [ %i.su, %._crit_edge447 ], [ %i.rh, %.preheader370.lr.ph ] ; 2 uses
  %indvars.iv513 = phi i64 [ %indvars.iv.next514, %._crit_edge447 ], [ 0, %.preheader370.lr.ph ] ; 3 uses
  %i.rz = icmp sgt i32 %i.ry, 0
  br i1 %i.rz, label %.preheader.lr.ph, label %._crit_edge447

.preheader.lr.ph:                                 ; preds = %.preheader370
  %i.sa = getelementptr inbounds nuw [9216 x i8], ptr %3, i64 %indvars.iv513
  %i.sb = getelementptr inbounds nuw [4608 x i8], ptr %6, i64 %indvars.iv513
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.am
  %indvars.iv510 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next511, %bb.am ] ; 3 uses
  %i.sc = getelementptr inbounds nuw [4608 x i8], ptr %i.sa, i64 %indvars.iv510 ; 2 uses
  %i.sd = getelementptr inbounds nuw [2304 x i8], ptr %i.sb, i64 %indvars.iv510 ; 2 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.al, %.preheader
  %indvars.iv506 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next507.1, %bb.al ] ; 4 uses
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv506
  %i.sf = load double, ptr %i.se, align 8, !tbaa !17
  %i.sg = fcmp olt double %i.sf, 0.000000e+00
  br i1 %i.sg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv506 ; 2 uses
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !9
  %i.sj = sub nsw i32 0, %i.si
  store i32 %i.sj, ptr %i.sh, align 4, !tbaa !9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %indvars.iv.next507 = or disjoint i64 %indvars.iv506, 1 ; 2 uses
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.sc, i64 %indvars.iv.next507
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !17
  %i.sm = fcmp olt double %i.sl, 0.000000e+00
  br i1 %i.sm, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv.next507 ; 2 uses
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !9
  %i.sp = sub nsw i32 0, %i.so
  store i32 %i.sp, ptr %i.sn, align 4, !tbaa !9
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %indvars.iv.next507.1 = add nuw nsw i64 %indvars.iv506, 2 ; 2 uses
  %exitcond509.not.1 = icmp eq i64 %indvars.iv.next507.1, 576
  br i1 %exitcond509.not.1, label %bb.am, label %bb.ah, !llvm.loop !62

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1 ; 2 uses
  %i.sq = load i32, ptr %i.rg, align 4, !tbaa !18 ; 2 uses
  %i.sr = sext i32 %i.sq to i64
  %i.ss = icmp slt i64 %indvars.iv.next511, %i.sr
  br i1 %i.ss, label %.preheader, label %._crit_edge447.loopexit, !llvm.loop !63

._crit_edge447.loopexit:                          ; preds = %bb.am
  %.pre519 = load i32, ptr %i.y, align 8, !tbaa !15
  br label %._crit_edge447

._crit_edge447:                                   ; preds = %._crit_edge447.loopexit, %.preheader370
  %i.st = phi i32 [ %.pre519, %._crit_edge447.loopexit ], [ %i.rx, %.preheader370 ] ; 2 uses
  %i.su = phi i32 [ %i.sq, %._crit_edge447.loopexit ], [ %i.ry, %.preheader370 ]
  %indvars.iv.next514 = add nuw nsw i64 %indvars.iv513, 1 ; 2 uses
  %i.sv = sext i32 %i.st to i64
  %i.sw = icmp slt i64 %indvars.iv.next514, %i.sv
  br i1 %i.sw, label %.preheader370, label %._crit_edge449, !llvm.loop !64

._crit_edge449:                                   ; preds = %._crit_edge447, %.preheader378, %.loopexit, %.preheader373, %.preheader370.lr.ph, %.preheader371
  %i.sx = load i32, ptr %i.f, align 4, !tbaa !9
  call void @ResvFrameEnd(ptr noundef nonnull %0, ptr noundef %5, i32 noundef %i.sx) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @VBR_compare(i32 noundef %0, double noundef %1, double noundef %2, double noundef %3, i32 noundef %4, double noundef %5, double noundef %6, double noundef %7) local_unnamed_addr #7 {
bb.a:
  %.not = icmp sle i32 %4, %0
  %i.a = fcmp ole double %6, %2
  %or.cond.not11 = and i1 %.not, %i.a
  %i.b = fcmp ole double %5, %1
  %i.c = fcmp ole double %7, %3
  %i.d = and i1 %i.b, %i.c
  %narrow = and i1 %or.cond.not11, %i.d
  %i.e = zext i1 %narrow to i32
  ret i32 %i.e
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #6

declare i32 @bin_search_StepSize2(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @inner_loop(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @calc_noise1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef captures(none) initializes((0, 8)) %7, ptr nofree noundef captures(none) initializes((0, 8)) %8, ptr nofree noundef captures(none) initializes((0, 8)) %9) local_unnamed_addr #9 {
bb.a:
  store double 0.000000e+00, ptr %7, align 8, !tbaa !17
  store double 0.000000e+00, ptr %8, align 8, !tbaa !17
  store double -9.990000e+02, ptr %9, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35   ; 4 uses
  %.not181 = icmp eq i32 %i.b, 0
  br i1 %.not181, label %.preheader, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !74
  %.not = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !31
  %i.i = add i32 %i.h, 1
  %wide.trip.count192 = zext i32 %i.b to i64
  br label %bb.n

.preheader:                                       ; preds = %bb.s, %bb.a
  %.0134.lcssa = phi i32 [ 0, %bb.a ], [ %.1135, %bb.s ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !36   ; 3 uses
  %i.l = icmp ult i32 %i.k, 12
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 176
  br i1 %i.l, label %.preheader.split.us, label %.split.us

.preheader.split.us:                              ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.r = load i32, ptr %i.q, align 4, !tbaa !31
  %i.s = add i32 %i.r, 1                          ; 3 uses
  %i.t = load i32, ptr %i.p, align 4, !tbaa !29   ; 3 uses
  %i.u = zext nneg i32 %i.k to i64                ; 4 uses
  %i.v = load i32, ptr %i.o, align 4, !tbaa !9
  %i.w = shl i32 %i.v, 3
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 168 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %i.u
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !9 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.split.us, %bb.e
  %i.z = phi i32 [ %.pre, %.preheader.split.us ], [ %i.ah, %bb.e ] ; 3 uses
  %indvars.iv199 = phi i64 [ %i.u, %.preheader.split.us ], [ %indvars.iv.next200, %bb.e ] ; 6 uses
  %.3167.us = phi i32 [ %.0134.lcssa, %.preheader.split.us ], [ %.4.us, %bb.e ] ; 3 uses
  %gep.us = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %indvars.iv199
  %i.aa = load i32, ptr %gep.us, align 4, !tbaa !9
  %i.ab = shl i32 %i.aa, %i.s
  %i.ac = add i32 %i.w, %i.ab
  %.reass.us = sub i32 %i.t, %i.ac
  %i.ad = sext i32 %.reass.us to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr @pow20, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !17 ; 3 uses
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 92), i64 %indvars.iv.next200
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !9  ; 4 uses
  %i.ai = sub nsw i32 %i.ah, %i.z
  %i.aj = sitofp i32 %i.ai to double
  %i.ak = icmp slt i32 %i.z, %i.ah
  br i1 %i.ak, label %.lr.ph164.us.preheader, label %._crit_edge165.us

.lr.ph164.us.preheader:                           ; preds = %bb.b
  %i.al = sext i32 %i.z to i64                    ; 5 uses
  %wide.trip.count197 = sext i32 %i.ah to i64     ; 3 uses
  %i.am = sub nsw i64 %wide.trip.count197, %i.al
  %xtraiter237 = and i64 %i.am, 1
  %lcmp.mod238.not = icmp eq i64 %xtraiter237, 0
  br i1 %lcmp.mod238.not, label %.lr.ph164.us.prol.loopexit, label %.lr.ph164.us.prol

.lr.ph164.us.prol:                                ; preds = %.lr.ph164.us.preheader
  %i.an = mul nsw i64 %i.al, 3                    ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %0, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !17
  %i.aq = tail call double @llvm.fabs.f64(double %i.ap)
  %i.ar = getelementptr inbounds [4 x i8], ptr %1, i64 %i.an
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !9
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr @pow43, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !17
  %i.aw = fneg double %i.av
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.af, double %i.aq) ; 2 uses
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ax, double 0.000000e+00) ; 2 uses
  %indvars.iv.next195.prol = add nsw i64 %i.al, 1
  br label %.lr.ph164.us.prol.loopexit

.lr.ph164.us.prol.loopexit:                       ; preds = %.lr.ph164.us.prol, %.lr.ph164.us.preheader
  %.lcssa235.unr = phi double [ poison, %.lr.ph164.us.preheader ], [ %i.ay, %.lr.ph164.us.prol ]
  %indvars.iv194.unr = phi i64 [ %i.al, %.lr.ph164.us.preheader ], [ %indvars.iv.next195.prol, %.lr.ph164.us.prol ]
  %.1131162.us.unr = phi double [ 0.000000e+00, %.lr.ph164.us.preheader ], [ %i.ay, %.lr.ph164.us.prol ]
  %i.az = add nsw i64 %wide.trip.count197, -1
  %i.ba = icmp eq i64 %i.az, %i.al
  br i1 %i.ba, label %._crit_edge165.us, label %.lr.ph164.us

.lr.ph164.us:                                     ; preds = %.lr.ph164.us.prol.loopexit, %.lr.ph164.us
  %indvars.iv194 = phi i64 [ %indvars.iv.next195.1241, %.lr.ph164.us ], [ %indvars.iv194.unr, %.lr.ph164.us.prol.loopexit ] ; 3 uses
  %.1131162.us = phi double [ %i.bz, %.lr.ph164.us ], [ %.1131162.us.unr, %.lr.ph164.us.prol.loopexit ]
  %i.bb = mul nsw i64 %indvars.iv194, 3           ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bb
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !17
  %i.be = tail call double @llvm.fabs.f64(double %i.bd)
  %i.bf = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bb
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !9
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [8 x i8], ptr @pow43, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !17
  %i.bk = fneg double %i.bj
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.af, double %i.be) ; 2 uses
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bl, double %.1131162.us)
  %i.bn = mul i64 %indvars.iv194, 3
  %i.bo = add i64 %i.bn, 3                        ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !17
  %i.br = tail call double @llvm.fabs.f64(double %i.bq)
  %i.bs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bo
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !9
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr @pow43, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !17
  %i.bx = fneg double %i.bw
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.af, double %i.br) ; 2 uses
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.by, double %i.by, double %i.bm) ; 2 uses
  %indvars.iv.next195.1241 = add nsw i64 %indvars.iv194, 2 ; 2 uses
  %exitcond198.not.1 = icmp eq i64 %indvars.iv.next195.1241, %wide.trip.count197
  br i1 %exitcond198.not.1, label %._crit_edge165.us, label %.lr.ph164.us, !llvm.loop !70

._crit_edge165.us:                                ; preds = %.lr.ph164.us.prol.loopexit, %.lr.ph164.us, %bb.b
  %.1131.lcssa.us = phi double [ 0.000000e+00, %bb.b ], [ %.lcssa235.unr, %.lr.ph164.us.prol.loopexit ], [ %i.bz, %.lr.ph164.us ]
  %i.ca = fdiv double %.1131.lcssa.us, %i.aj      ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv199
  store double %i.ca, ptr %i.cb, align 8, !tbaa !17
  %gep176.us = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %indvars.iv199
  %i.cc = load double, ptr %gep176.us, align 8, !tbaa !17
  %i.cd = fdiv double %i.ca, %i.cc                ; 2 uses
  %i.ce = fcmp olt double %i.cd, 1.000000e-03
  br i1 %i.ce, label %.thread149.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge165.us
  %i.cf = tail call double @llvm.log10.f64(double %i.cd)
  %i.cg = fmul double %i.cf, 1.000000e+01         ; 5 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv199
  store double %i.cg, ptr %i.ch, align 8, !tbaa !17
  %i.ci = fcmp ogt double %i.cg, 0.000000e+00
  br i1 %i.ci, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_0
