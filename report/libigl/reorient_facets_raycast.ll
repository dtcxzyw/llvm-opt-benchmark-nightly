inline.NumInlined: 2561
inline.NumDeleted: 1392
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN3igl6embree23reorient_facets_raycastIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IiLin1ELin1ELi0ELin1ELin1EEENS3_IiLin1ELi1ELi0ELin1ELi1EEES6_EEvRKNS2_10MatrixBaseIT_EERKNS7_IT0_EEiibbbRNS2_15PlainObjectBaseIT1_EERNSG_IT2_EE:bb.a

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit
  br i1 %or.cond, label %._crit_edge1468, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %._crit_edge
  %i.jz = shl nuw nsw i64 %i.jj, 2
  %i.ka = call noalias ptr @malloc(i64 noundef %i.jz) #21 ; 5 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.ah, label %.lr.ph1467

bb.ah:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.kc = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.kc, align 8, !tbaa !50
  invoke void @__cxa_throw(ptr nonnull %i.kc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc3.i unwind label %bb.ai

.noexc3.i:                                        ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph1467:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.ke = sitofp i32 %2 to double                 ; 2 uses
  %wide.trip.count1818 = zext i32 %i.gq to i64    ; 3 uses
  %min.iters.check2580 = icmp ult i32 %i.gq, 2
  br i1 %min.iters.check2580, label %scalar.ph2579.preheader, label %vector.ph2581

vector.ph2581:                                    ; preds = %.lr.ph1467
  %n.vec2582 = and i64 %wide.trip.count1818, 4294967294 ; 3 uses
  %broadcast.splatinsert2583 = insertelement <2 x double> poison, double %i.ke, i64 0
  %broadcast.splat2584 = shufflevector <2 x double> %broadcast.splatinsert2583, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert2585 = insertelement <2 x double> poison, double %.0.i, i64 0
  %broadcast.splat2586 = shufflevector <2 x double> %broadcast.splatinsert2585, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert2587 = insertelement <2 x i32> poison, i32 %3, i64 0
  %broadcast.splat2588 = shufflevector <2 x i32> %broadcast.splatinsert2587, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body2589

vector.body2589:                                  ; preds = %vector.body2589, %vector.ph2581
  %index2590 = phi i64 [ 0, %vector.ph2581 ], [ %index.next2592, %vector.body2589 ] ; 3 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0801.1845, i64 %index2590
  %wide.load2591 = load <2 x double>, ptr %i.kf, align 8, !tbaa !83
  %i.kg = fmul <2 x double> %wide.load2591, %broadcast.splat2584
  %i.kh = fdiv <2 x double> %i.kg, %broadcast.splat2586
  %i.ki = fptosi <2 x double> %i.kh to <2 x i32>
  %i.kj = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %broadcast.splat2588, <2 x i32> %i.ki)
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %index2590
  store <2 x i32> %i.kj, ptr %i.kk, align 4, !tbaa !18
  %index.next2592 = add nuw i64 %index2590, 2     ; 2 uses
  %i.kl = icmp eq i64 %index.next2592, %n.vec2582
  br i1 %i.kl, label %middle.block2593, label %vector.body2589, !llvm.loop !87

middle.block2593:                                 ; preds = %vector.body2589
  %cmp.n2594 = icmp eq i64 %n.vec2582, %wide.trip.count1818
  br i1 %cmp.n2594, label %._crit_edge1468.thread, label %scalar.ph2579.preheader

scalar.ph2579.preheader:                          ; preds = %.lr.ph1467, %middle.block2593
  %indvars.iv1815.ph = phi i64 [ 0, %.lr.ph1467 ], [ %n.vec2582, %middle.block2593 ]
  br label %scalar.ph2579

bb.aj:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit262
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.ak:                                            ; preds = %bb.w
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.al:                                            ; preds = %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2INS0_IiLin1ELin1ELi0ELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit
  %i.kp = landingpad { ptr, i32 }
          cleanup
  %i.kq = load ptr, ptr %14, align 8, !tbaa !73
  call void @free(ptr noundef %i.kq) #20
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn = phi { ptr, i32 } [ %i.kp, %bb.am ], [ %i.ko, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.kr = load ptr, ptr %12, align 8, !tbaa !75
  call void @free(ptr noundef %i.kr) #20
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.an ], [ %i.kn, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.gb

bb.ap:                                            ; preds = %bb.x
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.aq:                                            ; preds = %bb.y
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.ar:                                            ; preds = %bb.ag
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.as:                                            ; preds = %bb.as, %.lr.ph1464.new
  %indvars.iv1810 = phi i64 [ 0, %.lr.ph1464.new ], [ %indvars.iv.next1811.1, %bb.as ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph1464.new ], [ %niter.next.1, %bb.as ]
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv1810
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !83
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv1810
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !18
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [8 x i8], ptr %.sroa.0801.1845, i64 %i.kz ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !83
  %i.lc = fadd double %i.kw, %i.lb
  store double %i.lc, ptr %i.la, align 8, !tbaa !83
  %indvars.iv.next1811 = or disjoint i64 %indvars.iv1810, 1 ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv.next1811
  %i.le = load double, ptr %i.ld, align 8, !tbaa !83
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv.next1811
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !18
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %.sroa.0801.1845, i64 %i.lh ; 2 uses
  %i.lj = load double, ptr %i.li, align 8, !tbaa !83
  %i.lk = fadd double %i.le, %i.lj
  store double %i.lk, ptr %i.li, align 8, !tbaa !83
  %indvars.iv.next1811.1 = add nuw nsw i64 %indvars.iv1810, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.as, !llvm.loop !88

._crit_edge1468:                                  ; preds = %._crit_edge
  br i1 %.not.i.i.i265.not, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %._crit_edge1468.thread

._crit_edge1468.thread:                           ; preds = %scalar.ph2579, %middle.block2593, %._crit_edge1468
  %.sroa.0794.019491955 = phi ptr [ null, %._crit_edge1468 ], [ %i.ka, %middle.block2593 ], [ %i.ka, %scalar.ph2579 ] ; 16 uses
  %i.ll = sdiv i32 %i.gq, 8
  %.sext = sext i32 %i.ll to i64
  %i.lm = shl nsw i64 %.sext, 3                   ; 3 uses
  %i.ln = sdiv i32 %i.gq, 4
  %.sext1060 = sext i32 %i.ln to i64              ; 2 uses
  %i.lo = shl nsw i64 %.sext1060, 2               ; 5 uses
  %.off.i.i.i269 = add nsw i64 %i.jj, 3
  %.not.i.i.i270 = icmp ult i64 %.off.i.i.i269, 7
  br i1 %.not.i.i.i270, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %._crit_edge1468.thread
  %i.lp = load <2 x i64>, ptr %.sroa.0794.019491955, align 16, !tbaa !55 ; 2 uses
  %i.lq = icmp sgt i32 %.3.i.i.i.i245, 6
  br i1 %i.lq, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0794.019491955, i64 16
  %i.ls = load <4 x i32>, ptr %i.lr, align 16, !tbaa !55 ; 2 uses
  %i.lt = bitcast <2 x i64> %i.lp to <4 x i32>    ; 2 uses
  %i.lu = icmp ugt i32 %i.gq, 15
  br i1 %i.lu, label %.lr.ph.i.i.i274, label %._crit_edge.i.i.i273

._crit_edge.i.i.i273:                             ; preds = %.lr.ph.i.i.i274, %bb.au
  %.lcssa.i.i.i = phi <4 x i32> [ %i.ls, %bb.au ], [ %i.mf, %.lr.ph.i.i.i274 ]
  %.sroa.064.0.lcssa.i.i.i = phi <4 x i32> [ %i.lt, %bb.au ], [ %i.mb, %.lr.ph.i.i.i274 ]
  %i.lv = add <4 x i32> %.sroa.064.0.lcssa.i.i.i, %.lcssa.i.i.i ; 2 uses
  %i.lw = bitcast <4 x i32> %i.lv to <2 x i64>
  %i.lx = icmp sgt i64 %i.lo, %i.lm
  br i1 %i.lx, label %bb.av, label %bb.aw

.lr.ph.i.i.i274:                                  ; preds = %bb.au, %.lr.ph.i.i.i274
  %.05775.i.i.i = phi i64 [ %.057.i.i.i, %.lr.ph.i.i.i274 ], [ 8, %bb.au ] ; 3 uses
  %.057.in74.i.i.i = phi i64 [ %.05775.i.i.i, %.lr.ph.i.i.i274 ], [ 0, %bb.au ]
  %.sroa.064.073.i.i.i = phi <4 x i32> [ %i.mb, %.lr.ph.i.i.i274 ], [ %i.lt, %bb.au ]
  %i.ly = phi <4 x i32> [ %i.mf, %.lr.ph.i.i.i274 ], [ %i.ls, %bb.au ]
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0794.019491955, i64 %.05775.i.i.i
  %i.ma = load <4 x i32>, ptr %i.lz, align 16, !tbaa !55
  %i.mb = add <4 x i32> %i.ma, %.sroa.064.073.i.i.i ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0794.019491955, i64 %.057.in74.i.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 48
  %i.me = load <4 x i32>, ptr %i.md, align 16, !tbaa !55
  %i.mf = add <4 x i32> %i.me, %i.ly              ; 2 uses
  %.057.i.i.i = add nuw nsw i64 %.05775.i.i.i, 8  ; 2 uses
  %i.mg = icmp slt i64 %.057.i.i.i, %i.lm
  br i1 %i.mg, label %.lr.ph.i.i.i274, label %._crit_edge.i.i.i273, !llvm.loop !89

bb.av:                                            ; preds = %._crit_edge.i.i.i273
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0794.019491955, i64 %i.lm
  %i.mi = load <4 x i32>, ptr %i.mh, align 16, !tbaa !55
  %i.mj = add <4 x i32> %i.mi, %i.lv
  %i.mk = bitcast <4 x i32> %i.mj to <2 x i64>
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge.i.i.i273, %bb.at
  %.sroa.064.2.i.i.i = phi <2 x i64> [ %i.lp, %bb.at ], [ %i.mk, %bb.av ], [ %i.lw, %._crit_edge.i.i.i273 ] ; 2 uses
  %i.ml = bitcast <2 x i64> %.sroa.064.2.i.i.i to <4 x i32>
  %i.mm = bitcast <2 x i64> %.sroa.064.2.i.i.i to <4 x i32>
  %i.mn = shufflevector <4 x i32> %i.mm, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.mo = add <4 x i32> %i.mn, %i.ml              ; 2 uses
  %shift2736 = shufflevector <4 x i32> %i.mo, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2737 = add nsw <4 x i32> %i.mo, %shift2736 ; 2 uses
  %27 = extractelement <4 x i32> %foldExtExtBinop2737, i64 0 ; 2 uses
  %i.mp = icmp slt i64 %i.lo, %i.jj
  br i1 %i.mp, label %.lr.ph80.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit

.lr.ph80.i.i.i.preheader:                         ; preds = %bb.aw
  %i.mq = shl nsw i64 %.sext1060, 2
  %i.mr = sub nsw i64 %i.jj, %i.mq                ; 3 uses
  %min.iters.check2597 = icmp ult i64 %i.mr, 8
  br i1 %min.iters.check2597, label %.lr.ph80.i.i.i.preheader2951, label %vector.ph2598

vector.ph2598:                                    ; preds = %.lr.ph80.i.i.i.preheader
  %n.vec2599 = and i64 %i.mr, -8                  ; 3 uses
  %i.ms = add nsw i64 %i.lo, %n.vec2599
  %i.mt = shufflevector <4 x i32> %foldExtExtBinop2737, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.mu = getelementptr [4 x i8], ptr %.sroa.0794.019491955, i64 %i.lo
  br label %vector.body2600

vector.body2600:                                  ; preds = %vector.body2600, %vector.ph2598
  %index2601 = phi i64 [ 0, %vector.ph2598 ], [ %index.next2606, %vector.body2600 ] ; 2 uses
  %vec.phi2602 = phi <4 x i32> [ %i.mt, %vector.ph2598 ], [ %i.mx, %vector.body2600 ]
  %vec.phi2603 = phi <4 x i32> [ zeroinitializer, %vector.ph2598 ], [ %i.my, %vector.body2600 ]
  %i.mv = getelementptr [4 x i8], ptr %i.mu, i64 %index2601 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %wide.load2604 = load <4 x i32>, ptr %i.mv, align 4, !tbaa !18
  %wide.load2605 = load <4 x i32>, ptr %i.mw, align 4, !tbaa !18
  %i.mx = add <4 x i32> %wide.load2604, %vec.phi2602 ; 2 uses
  %i.my = add <4 x i32> %wide.load2605, %vec.phi2603 ; 2 uses
  %index.next2606 = add nuw i64 %index2601, 8     ; 2 uses
  %i.mz = icmp eq i64 %index.next2606, %n.vec2599
  br i1 %i.mz, label %middle.block2607, label %vector.body2600, !llvm.loop !90

middle.block2607:                                 ; preds = %vector.body2600
  %bin.rdx = add <4 x i32> %i.my, %i.mx
  %i.na = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n2608 = icmp eq i64 %i.mr, %n.vec2599
  br i1 %cmp.n2608, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i.preheader2951

.lr.ph80.i.i.i.preheader2951:                     ; preds = %.lr.ph80.i.i.i.preheader, %middle.block2607
  %.05578.i.i.i.ph = phi i64 [ %i.lo, %.lr.ph80.i.i.i.preheader ], [ %i.ms, %middle.block2607 ]
  %.177.i.i.i.ph = phi i32 [ %27, %.lr.ph80.i.i.i.preheader ], [ %i.na, %middle.block2607 ]
  br label %.lr.ph80.i.i.i

.lr.ph80.i.i.i:                                   ; preds = %.lr.ph80.i.i.i.preheader2951, %.lr.ph80.i.i.i
  %.05578.i.i.i = phi i64 [ %i.ne, %.lr.ph80.i.i.i ], [ %.05578.i.i.i.ph, %.lr.ph80.i.i.i.preheader2951 ] ; 2 uses
  %.177.i.i.i = phi i32 [ %i.nd, %.lr.ph80.i.i.i ], [ %.177.i.i.i.ph, %.lr.ph80.i.i.i.preheader2951 ]
  %i.nb = getelementptr inbounds [4 x i8], ptr %.sroa.0794.019491955, i64 %.05578.i.i.i
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !18
  %i.nd = add nsw i32 %i.nc, %.177.i.i.i          ; 2 uses
  %i.ne = add nsw i64 %.05578.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i272 = icmp eq i64 %i.ne, %i.jj
  br i1 %exitcond.not.i.i.i272, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i, !llvm.loop !91

bb.ax:                                            ; preds = %._crit_edge1468.thread
  %i.nf = load i32, ptr %.sroa.0794.019491955, align 4, !tbaa !18 ; 3 uses
  %i.ng = icmp sgt i32 %.3.i.i.i.i245, 0
  br i1 %i.ng, label %.lr.ph85.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit

.lr.ph85.i.i.i.preheader:                         ; preds = %bb.ax
  %i.nh = add nsw i64 %i.jj, -1                   ; 2 uses
  %min.iters.check2612 = icmp ult i32 %i.gq, 9
  br i1 %min.iters.check2612, label %.lr.ph85.i.i.i.preheader2947, label %vector.ph2613

vector.ph2613:                                    ; preds = %.lr.ph85.i.i.i.preheader
  %n.vec2614 = and i64 %i.nh, -8                  ; 3 uses
  %i.ni = or disjoint i64 %n.vec2614, 1
  %i.nj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.nf, i64 0
  br label %vector.body2615

vector.body2615:                                  ; preds = %vector.body2615, %vector.ph2613
  %index2616 = phi i64 [ 0, %vector.ph2613 ], [ %index.next2621, %vector.body2615 ] ; 2 uses
  %vec.phi2617 = phi <4 x i32> [ %i.nj, %vector.ph2613 ], [ %i.nn, %vector.body2615 ]
  %vec.phi2618 = phi <4 x i32> [ zeroinitializer, %vector.ph2613 ], [ %i.no, %vector.body2615 ]
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0794.019491955, i64 %index2616 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 20
  %wide.load2619 = load <4 x i32>, ptr %i.nl, align 4, !tbaa !18
  %wide.load2620 = load <4 x i32>, ptr %i.nm, align 4, !tbaa !18
  %i.nn = add <4 x i32> %wide.load2619, %vec.phi2617 ; 2 uses
  %i.no = add <4 x i32> %wide.load2620, %vec.phi2618 ; 2 uses
  %index.next2621 = add nuw i64 %index2616, 8     ; 2 uses
  %i.np = icmp eq i64 %index.next2621, %n.vec2614
  br i1 %i.np, label %middle.block2622, label %vector.body2615, !llvm.loop !92

middle.block2622:                                 ; preds = %vector.body2615
  %bin.rdx2623 = add <4 x i32> %i.no, %i.nn
  %i.nq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx2623) ; 2 uses
  %cmp.n2624 = icmp eq i64 %i.nh, %n.vec2614
  br i1 %cmp.n2624, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph85.i.i.i.preheader2947

.lr.ph85.i.i.i.preheader2947:                     ; preds = %.lr.ph85.i.i.i.preheader, %middle.block2622
  %.083.i.i.i.ph = phi i64 [ 1, %.lr.ph85.i.i.i.preheader ], [ %i.ni, %middle.block2622 ]
  %.282.i.i.i.ph = phi i32 [ %i.nf, %.lr.ph85.i.i.i.preheader ], [ %i.nq, %middle.block2622 ]
  br label %.lr.ph85.i.i.i

.lr.ph85.i.i.i:                                   ; preds = %.lr.ph85.i.i.i.preheader2947, %.lr.ph85.i.i.i
  %.083.i.i.i = phi i64 [ %i.nu, %.lr.ph85.i.i.i ], [ %.083.i.i.i.ph, %.lr.ph85.i.i.i.preheader2947 ] ; 2 uses
  %.282.i.i.i = phi i32 [ %i.nt, %.lr.ph85.i.i.i ], [ %.282.i.i.i.ph, %.lr.ph85.i.i.i.preheader2947 ]
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0794.019491955, i64 %.083.i.i.i
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !18
  %i.nt = add nsw i32 %i.ns, %.282.i.i.i          ; 2 uses
  %i.nu = add nuw nsw i64 %.083.i.i.i, 1          ; 2 uses
  %exitcond92.not.i.i.i = icmp eq i64 %i.nu, %i.jj
  br i1 %exitcond92.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph85.i.i.i, !llvm.loop !93

scalar.ph2579:                                    ; preds = %scalar.ph2579.preheader, %scalar.ph2579
  %indvars.iv1815 = phi i64 [ %indvars.iv.next1816, %scalar.ph2579 ], [ %indvars.iv1815.ph, %scalar.ph2579.preheader ] ; 3 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0801.1845, i64 %indvars.iv1815
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !83
  %i.nx = fmul double %i.nw, %i.ke
  %i.ny = fdiv double %i.nx, %.0.i
  %i.nz = fptosi double %i.ny to i32
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %3, i32 %i.nz)
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv1815
  store i32 %.sroa.speculated, ptr %i.oa, align 4, !tbaa !18
  %indvars.iv.next1816 = add nuw nsw i64 %indvars.iv1815, 1 ; 2 uses
  %exitcond1819.not = icmp eq i64 %indvars.iv.next1816, %wide.trip.count1818
  br i1 %exitcond1819.not, label %._crit_edge1468.thread, label %scalar.ph2579, !llvm.loop !94

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit: ; preds = %.lr.ph80.i.i.i, %.lr.ph85.i.i.i, %middle.block2607, %middle.block2622, %bb.ax, %bb.aw, %._crit_edge1468
  %.sroa.0794.019491956 = phi ptr [ null, %._crit_edge1468 ], [ %.sroa.0794.019491955, %middle.block2622 ], [ %.sroa.0794.019491955, %bb.ax ], [ %.sroa.0794.019491955, %bb.aw ], [ %.sroa.0794.019491955, %middle.block2607 ], [ %.sroa.0794.019491955, %.lr.ph85.i.i.i ], [ %.sroa.0794.019491955, %.lr.ph80.i.i.i ] ; 3 uses
  %.not146519501954 = phi i1 [ true, %._crit_edge1468 ], [ %or.cond, %middle.block2622 ], [ %or.cond, %bb.ax ], [ %or.cond, %bb.aw ], [ %or.cond, %middle.block2607 ], [ %or.cond, %.lr.ph85.i.i.i ], [ %or.cond, %.lr.ph80.i.i.i ]
  %.0.i271 = phi i32 [ 0, %._crit_edge1468 ], [ %i.nq, %middle.block2622 ], [ %i.nf, %bb.ax ], [ %27, %bb.aw ], [ %i.na, %middle.block2607 ], [ %i.nt, %.lr.ph85.i.i.i ], [ %i.nd, %.lr.ph80.i.i.i ] ; 4 uses
  br i1 %6, label %bb.ay, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276

bb.ay:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit
  %i.ob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276 unwind label %bb.az ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276: ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  store i64 5489, ptr %17, align 8, !tbaa !95
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276
  %store_forwarded2728 = phi i64 [ 5489, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276 ], [ %i.op, %bb.bb ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276 ], [ %i.oq, %bb.bb ] ; 4 uses
  %i.od = getelementptr [8 x i8], ptr %17, i64 %.011.i.i.i
  %i.oe = lshr i64 %store_forwarded2728, 30
  %i.of = xor i64 %i.oe, %store_forwarded2728
  %i.og = mul nuw nsw i64 %i.of, 1812433253
  %i.oh = add nuw i64 %i.og, %.011.i.i.i          ; 2 uses
  %i.oi = and i64 %i.oh, 4294967295               ; 2 uses
  store i64 %i.oi, ptr %i.od, align 8, !tbaa !95
  %i.oj = add nuw nsw i64 %.011.i.i.i, 1          ; 3 uses
  %exitcond.not.i.i.i277 = icmp eq i64 %i.oj, 624
  br i1 %exitcond.not.i.i.i277, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ok = getelementptr [8 x i8], ptr %17, i64 %i.oj
  %i.ol = lshr i64 %i.oi, 30
  %i.om = xor i64 %i.ol, %i.oh
  %i.on = mul i64 %i.om, 1812433253
  %i.oo = add i64 %i.on, %i.oj
  %i.op = and i64 %i.oo, 4294967295               ; 2 uses
  store i64 %i.op, ptr %i.ok, align 8, !tbaa !95
  %i.oq = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.ba

bb.bc:                                            ; preds = %bb.ba
  %i.or = getelementptr inbounds nuw i8, ptr %17, i64 4992 ; 6 uses
  store i64 624, ptr %i.or, align 8, !tbaa !96
  %i.os = call i64 @time(ptr noundef null) #20
  %i.ot = and i64 %i.os, 4294967295               ; 2 uses
  store i64 %i.ot, ptr %17, align 8, !tbaa !95
  br label %bb.bd

bb.bd:                                            ; preds = %bb.be, %bb.bc
  %store_forwarded = phi i64 [ %i.ot, %bb.bc ], [ %i.pg, %bb.be ] ; 2 uses
  %.011.i = phi i64 [ 1, %bb.bc ], [ %i.ph, %bb.be ] ; 4 uses
  %i.ou = getelementptr [8 x i8], ptr %17, i64 %.011.i
  %i.ov = lshr i64 %store_forwarded, 30
  %i.ow = xor i64 %i.ov, %store_forwarded
  %i.ox = mul nuw nsw i64 %i.ow, 1812433253
  %i.oy = add nuw i64 %i.ox, %.011.i              ; 2 uses
  %i.oz = and i64 %i.oy, 4294967295               ; 2 uses
  store i64 %i.oz, ptr %i.ou, align 8, !tbaa !95
  %i.pa = add nuw nsw i64 %.011.i, 1              ; 3 uses
  %exitcond.not.i = icmp eq i64 %i.pa, 624
  br i1 %exitcond.not.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.pb = getelementptr [8 x i8], ptr %17, i64 %i.pa
  %i.pc = lshr i64 %i.oz, 30
  %i.pd = xor i64 %i.pc, %i.oy
  %i.pe = mul i64 %i.pd, 1812433253
  %i.pf = add i64 %i.pe, %i.pa
  %i.pg = and i64 %i.pf, 4294967295               ; 2 uses
  store i64 %i.pg, ptr %i.pb, align 8, !tbaa !95
  %i.ph = add nuw nsw i64 %.011.i, 2
  br label %bb.bd

bb.bf:                                            ; preds = %bb.bd
  store i64 624, ptr %i.or, align 8, !tbaa !96
  %i.pi = sext i32 %.0.i271 to i64                ; 5 uses
  %i.pj = icmp slt i32 %.0.i271, 0
  br i1 %i.pj, label %bb.bg, label %bb.bh
end_hunk_0
begin_hunk_1_@_ZN3igl6embree23reorient_facets_raycastIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IiLin1ELin1ELi0ELin1ELin1EEENS3_IbLin1ELi1ELi0ELin1ELi1EEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS2_10MatrixBaseIT_EERKNS8_IT0_EEiibbbRNS2_15PlainObjectBaseIT1_EERNSH_IT2_EE:bb.a

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit
  br i1 %or.cond, label %._crit_edge1465, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %._crit_edge
  %i.jz = shl nuw nsw i64 %i.jj, 2
  %i.ka = call noalias ptr @malloc(i64 noundef %i.jz) #21 ; 5 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.ah, label %.lr.ph1464

bb.ah:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.kc = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.kc, align 8, !tbaa !50
  invoke void @__cxa_throw(ptr nonnull %i.kc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc3.i unwind label %bb.ai

.noexc3.i:                                        ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ah
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph1464:                                       ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.ke = sitofp i32 %2 to double                 ; 2 uses
  %wide.trip.count1815 = zext i32 %i.gq to i64    ; 3 uses
  %min.iters.check2577 = icmp ult i32 %i.gq, 2
  br i1 %min.iters.check2577, label %scalar.ph2576.preheader, label %vector.ph2578

vector.ph2578:                                    ; preds = %.lr.ph1464
  %n.vec2579 = and i64 %wide.trip.count1815, 4294967294 ; 3 uses
  %broadcast.splatinsert2580 = insertelement <2 x double> poison, double %i.ke, i64 0
  %broadcast.splat2581 = shufflevector <2 x double> %broadcast.splatinsert2580, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert2582 = insertelement <2 x double> poison, double %.0.i, i64 0
  %broadcast.splat2583 = shufflevector <2 x double> %broadcast.splatinsert2582, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert2584 = insertelement <2 x i32> poison, i32 %3, i64 0
  %broadcast.splat2585 = shufflevector <2 x i32> %broadcast.splatinsert2584, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %vector.body2586

vector.body2586:                                  ; preds = %vector.body2586, %vector.ph2578
  %index2587 = phi i64 [ 0, %vector.ph2578 ], [ %index.next2589, %vector.body2586 ] ; 3 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0798.1842, i64 %index2587
  %wide.load2588 = load <2 x double>, ptr %i.kf, align 8, !tbaa !83
  %i.kg = fmul <2 x double> %wide.load2588, %broadcast.splat2581
  %i.kh = fdiv <2 x double> %i.kg, %broadcast.splat2583
  %i.ki = fptosi <2 x double> %i.kh to <2 x i32>
  %i.kj = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %broadcast.splat2585, <2 x i32> %i.ki)
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %index2587
  store <2 x i32> %i.kj, ptr %i.kk, align 4, !tbaa !18
  %index.next2589 = add nuw i64 %index2587, 2     ; 2 uses
  %i.kl = icmp eq i64 %index.next2589, %n.vec2579
  br i1 %i.kl, label %middle.block2590, label %vector.body2586, !llvm.loop !215

middle.block2590:                                 ; preds = %vector.body2586
  %cmp.n2591 = icmp eq i64 %n.vec2579, %wide.trip.count1815
  br i1 %cmp.n2591, label %._crit_edge1465.thread, label %scalar.ph2576.preheader

scalar.ph2576.preheader:                          ; preds = %.lr.ph1464, %middle.block2590
  %indvars.iv1812.ph = phi i64 [ 0, %.lr.ph1464 ], [ %n.vec2579, %middle.block2590 ]
  br label %scalar.ph2576

bb.aj:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE8maxCoeffEv.exit262
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.ak:                                            ; preds = %bb.w
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.al:                                            ; preds = %_ZN5Eigen6MatrixIfLin1ELi3ELi0ELin1ELi3EEC2INS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdfEEKNS0_IdLin1ELin1ELi0ELin1ELin1EEEEEEERKNS_9EigenBaseIT_EE.exit
  %i.ko = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.am:                                            ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2INS0_IiLin1ELin1ELi0ELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit
  %i.kp = landingpad { ptr, i32 }
          cleanup
  %i.kq = load ptr, ptr %14, align 8, !tbaa !73
  call void @free(ptr noundef %i.kq) #20
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.pn = phi { ptr, i32 } [ %i.kp, %bb.am ], [ %i.ko, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  %i.kr = load ptr, ptr %12, align 8, !tbaa !75
  call void @free(ptr noundef %i.kr) #20
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.an ], [ %i.kn, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.gc

bb.ap:                                            ; preds = %bb.x
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.aq:                                            ; preds = %bb.y
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ga

bb.ar:                                            ; preds = %bb.ag
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.as:                                            ; preds = %bb.as, %.lr.ph1461.new
  %indvars.iv1807 = phi i64 [ 0, %.lr.ph1461.new ], [ %indvars.iv.next1808.1, %bb.as ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph1461.new ], [ %niter.next.1, %bb.as ]
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv1807
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !83
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv1807
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !18
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [8 x i8], ptr %.sroa.0798.1842, i64 %i.kz ; 2 uses
  %i.lb = load double, ptr %i.la, align 8, !tbaa !83
  %i.lc = fadd double %i.kw, %i.lb
  store double %i.lc, ptr %i.la, align 8, !tbaa !83
  %indvars.iv.next1808 = or disjoint i64 %indvars.iv1807, 1 ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %indvars.iv.next1808
  %i.le = load double, ptr %i.ld, align 8, !tbaa !83
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv.next1808
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !18
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %.sroa.0798.1842, i64 %i.lh ; 2 uses
  %i.lj = load double, ptr %i.li, align 8, !tbaa !83
  %i.lk = fadd double %i.le, %i.lj
  store double %i.lk, ptr %i.li, align 8, !tbaa !83
  %indvars.iv.next1808.1 = add nuw nsw i64 %indvars.iv1807, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.as, !llvm.loop !216

._crit_edge1465:                                  ; preds = %._crit_edge
  br i1 %.not.i.i.i265.not, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %._crit_edge1465.thread

._crit_edge1465.thread:                           ; preds = %scalar.ph2576, %middle.block2590, %._crit_edge1465
  %.sroa.0791.019461952 = phi ptr [ null, %._crit_edge1465 ], [ %i.ka, %middle.block2590 ], [ %i.ka, %scalar.ph2576 ] ; 16 uses
  %i.ll = sdiv i32 %i.gq, 8
  %.sext = sext i32 %i.ll to i64
  %i.lm = shl nsw i64 %.sext, 3                   ; 3 uses
  %i.ln = sdiv i32 %i.gq, 4
  %.sext1057 = sext i32 %i.ln to i64              ; 2 uses
  %i.lo = shl nsw i64 %.sext1057, 2               ; 5 uses
  %.off.i.i.i269 = add nsw i64 %i.jj, 3
  %.not.i.i.i270 = icmp ult i64 %.off.i.i.i269, 7
  br i1 %.not.i.i.i270, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %._crit_edge1465.thread
  %i.lp = load <2 x i64>, ptr %.sroa.0791.019461952, align 16, !tbaa !55 ; 2 uses
  %i.lq = icmp sgt i32 %.3.i.i.i.i245, 6
  br i1 %i.lq, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0791.019461952, i64 16
  %i.ls = load <4 x i32>, ptr %i.lr, align 16, !tbaa !55 ; 2 uses
  %i.lt = bitcast <2 x i64> %i.lp to <4 x i32>    ; 2 uses
  %i.lu = icmp ugt i32 %i.gq, 15
  br i1 %i.lu, label %.lr.ph.i.i.i274, label %._crit_edge.i.i.i273

._crit_edge.i.i.i273:                             ; preds = %.lr.ph.i.i.i274, %bb.au
  %.lcssa.i.i.i = phi <4 x i32> [ %i.ls, %bb.au ], [ %i.mf, %.lr.ph.i.i.i274 ]
  %.sroa.064.0.lcssa.i.i.i = phi <4 x i32> [ %i.lt, %bb.au ], [ %i.mb, %.lr.ph.i.i.i274 ]
  %i.lv = add <4 x i32> %.sroa.064.0.lcssa.i.i.i, %.lcssa.i.i.i ; 2 uses
  %i.lw = bitcast <4 x i32> %i.lv to <2 x i64>
  %i.lx = icmp sgt i64 %i.lo, %i.lm
  br i1 %i.lx, label %bb.av, label %bb.aw

.lr.ph.i.i.i274:                                  ; preds = %bb.au, %.lr.ph.i.i.i274
  %.05775.i.i.i = phi i64 [ %.057.i.i.i, %.lr.ph.i.i.i274 ], [ 8, %bb.au ] ; 3 uses
  %.057.in74.i.i.i = phi i64 [ %.05775.i.i.i, %.lr.ph.i.i.i274 ], [ 0, %bb.au ]
  %.sroa.064.073.i.i.i = phi <4 x i32> [ %i.mb, %.lr.ph.i.i.i274 ], [ %i.lt, %bb.au ]
  %i.ly = phi <4 x i32> [ %i.mf, %.lr.ph.i.i.i274 ], [ %i.ls, %bb.au ]
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0791.019461952, i64 %.05775.i.i.i
  %i.ma = load <4 x i32>, ptr %i.lz, align 16, !tbaa !55
  %i.mb = add <4 x i32> %i.ma, %.sroa.064.073.i.i.i ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0791.019461952, i64 %.057.in74.i.i.i
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 48
  %i.me = load <4 x i32>, ptr %i.md, align 16, !tbaa !55
  %i.mf = add <4 x i32> %i.me, %i.ly              ; 2 uses
  %.057.i.i.i = add nuw nsw i64 %.05775.i.i.i, 8  ; 2 uses
  %i.mg = icmp slt i64 %.057.i.i.i, %i.lm
  br i1 %i.mg, label %.lr.ph.i.i.i274, label %._crit_edge.i.i.i273, !llvm.loop !89

bb.av:                                            ; preds = %._crit_edge.i.i.i273
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0791.019461952, i64 %i.lm
  %i.mi = load <4 x i32>, ptr %i.mh, align 16, !tbaa !55
  %i.mj = add <4 x i32> %i.mi, %i.lv
  %i.mk = bitcast <4 x i32> %i.mj to <2 x i64>
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %._crit_edge.i.i.i273, %bb.at
  %.sroa.064.2.i.i.i = phi <2 x i64> [ %i.lp, %bb.at ], [ %i.mk, %bb.av ], [ %i.lw, %._crit_edge.i.i.i273 ] ; 2 uses
  %i.ml = bitcast <2 x i64> %.sroa.064.2.i.i.i to <4 x i32>
  %i.mm = bitcast <2 x i64> %.sroa.064.2.i.i.i to <4 x i32>
  %i.mn = shufflevector <4 x i32> %i.mm, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.mo = add <4 x i32> %i.mn, %i.ml              ; 2 uses
  %shift2733 = shufflevector <4 x i32> %i.mo, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop2734 = add nsw <4 x i32> %i.mo, %shift2733 ; 2 uses
  %27 = extractelement <4 x i32> %foldExtExtBinop2734, i64 0 ; 2 uses
  %i.mp = icmp slt i64 %i.lo, %i.jj
  br i1 %i.mp, label %.lr.ph80.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit

.lr.ph80.i.i.i.preheader:                         ; preds = %bb.aw
  %i.mq = shl nsw i64 %.sext1057, 2
  %i.mr = sub nsw i64 %i.jj, %i.mq                ; 3 uses
  %min.iters.check2594 = icmp ult i64 %i.mr, 8
  br i1 %min.iters.check2594, label %.lr.ph80.i.i.i.preheader2948, label %vector.ph2595

vector.ph2595:                                    ; preds = %.lr.ph80.i.i.i.preheader
  %n.vec2596 = and i64 %i.mr, -8                  ; 3 uses
  %i.ms = add nsw i64 %i.lo, %n.vec2596
  %i.mt = shufflevector <4 x i32> %foldExtExtBinop2734, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.mu = getelementptr [4 x i8], ptr %.sroa.0791.019461952, i64 %i.lo
  br label %vector.body2597

vector.body2597:                                  ; preds = %vector.body2597, %vector.ph2595
  %index2598 = phi i64 [ 0, %vector.ph2595 ], [ %index.next2603, %vector.body2597 ] ; 2 uses
  %vec.phi2599 = phi <4 x i32> [ %i.mt, %vector.ph2595 ], [ %i.mx, %vector.body2597 ]
  %vec.phi2600 = phi <4 x i32> [ zeroinitializer, %vector.ph2595 ], [ %i.my, %vector.body2597 ]
  %i.mv = getelementptr [4 x i8], ptr %i.mu, i64 %index2598 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %wide.load2601 = load <4 x i32>, ptr %i.mv, align 4, !tbaa !18
  %wide.load2602 = load <4 x i32>, ptr %i.mw, align 4, !tbaa !18
  %i.mx = add <4 x i32> %wide.load2601, %vec.phi2599 ; 2 uses
  %i.my = add <4 x i32> %wide.load2602, %vec.phi2600 ; 2 uses
  %index.next2603 = add nuw i64 %index2598, 8     ; 2 uses
  %i.mz = icmp eq i64 %index.next2603, %n.vec2596
  br i1 %i.mz, label %middle.block2604, label %vector.body2597, !llvm.loop !217

middle.block2604:                                 ; preds = %vector.body2597
  %bin.rdx = add <4 x i32> %i.my, %i.mx
  %i.na = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n2605 = icmp eq i64 %i.mr, %n.vec2596
  br i1 %cmp.n2605, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i.preheader2948

.lr.ph80.i.i.i.preheader2948:                     ; preds = %.lr.ph80.i.i.i.preheader, %middle.block2604
  %.05578.i.i.i.ph = phi i64 [ %i.lo, %.lr.ph80.i.i.i.preheader ], [ %i.ms, %middle.block2604 ]
  %.177.i.i.i.ph = phi i32 [ %27, %.lr.ph80.i.i.i.preheader ], [ %i.na, %middle.block2604 ]
  br label %.lr.ph80.i.i.i

.lr.ph80.i.i.i:                                   ; preds = %.lr.ph80.i.i.i.preheader2948, %.lr.ph80.i.i.i
  %.05578.i.i.i = phi i64 [ %i.ne, %.lr.ph80.i.i.i ], [ %.05578.i.i.i.ph, %.lr.ph80.i.i.i.preheader2948 ] ; 2 uses
  %.177.i.i.i = phi i32 [ %i.nd, %.lr.ph80.i.i.i ], [ %.177.i.i.i.ph, %.lr.ph80.i.i.i.preheader2948 ]
  %i.nb = getelementptr inbounds [4 x i8], ptr %.sroa.0791.019461952, i64 %.05578.i.i.i
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !18
  %i.nd = add nsw i32 %i.nc, %.177.i.i.i          ; 2 uses
  %i.ne = add nsw i64 %.05578.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i272 = icmp eq i64 %i.ne, %i.jj
  br i1 %exitcond.not.i.i.i272, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i, !llvm.loop !218

bb.ax:                                            ; preds = %._crit_edge1465.thread
  %i.nf = load i32, ptr %.sroa.0791.019461952, align 4, !tbaa !18 ; 3 uses
  %i.ng = icmp sgt i32 %.3.i.i.i.i245, 0
  br i1 %i.ng, label %.lr.ph85.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit

.lr.ph85.i.i.i.preheader:                         ; preds = %bb.ax
  %i.nh = add nsw i64 %i.jj, -1                   ; 2 uses
  %min.iters.check2609 = icmp ult i32 %i.gq, 9
  br i1 %min.iters.check2609, label %.lr.ph85.i.i.i.preheader2944, label %vector.ph2610

vector.ph2610:                                    ; preds = %.lr.ph85.i.i.i.preheader
  %n.vec2611 = and i64 %i.nh, -8                  ; 3 uses
  %i.ni = or disjoint i64 %n.vec2611, 1
  %i.nj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.nf, i64 0
  br label %vector.body2612

vector.body2612:                                  ; preds = %vector.body2612, %vector.ph2610
  %index2613 = phi i64 [ 0, %vector.ph2610 ], [ %index.next2618, %vector.body2612 ] ; 2 uses
  %vec.phi2614 = phi <4 x i32> [ %i.nj, %vector.ph2610 ], [ %i.nn, %vector.body2612 ]
  %vec.phi2615 = phi <4 x i32> [ zeroinitializer, %vector.ph2610 ], [ %i.no, %vector.body2612 ]
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0791.019461952, i64 %index2613 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 20
  %wide.load2616 = load <4 x i32>, ptr %i.nl, align 4, !tbaa !18
  %wide.load2617 = load <4 x i32>, ptr %i.nm, align 4, !tbaa !18
  %i.nn = add <4 x i32> %wide.load2616, %vec.phi2614 ; 2 uses
  %i.no = add <4 x i32> %wide.load2617, %vec.phi2615 ; 2 uses
  %index.next2618 = add nuw i64 %index2613, 8     ; 2 uses
  %i.np = icmp eq i64 %index.next2618, %n.vec2611
  br i1 %i.np, label %middle.block2619, label %vector.body2612, !llvm.loop !219

middle.block2619:                                 ; preds = %vector.body2612
  %bin.rdx2620 = add <4 x i32> %i.no, %i.nn
  %i.nq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx2620) ; 2 uses
  %cmp.n2621 = icmp eq i64 %i.nh, %n.vec2611
  br i1 %cmp.n2621, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph85.i.i.i.preheader2944

.lr.ph85.i.i.i.preheader2944:                     ; preds = %.lr.ph85.i.i.i.preheader, %middle.block2619
  %.083.i.i.i.ph = phi i64 [ 1, %.lr.ph85.i.i.i.preheader ], [ %i.ni, %middle.block2619 ]
  %.282.i.i.i.ph = phi i32 [ %i.nf, %.lr.ph85.i.i.i.preheader ], [ %i.nq, %middle.block2619 ]
  br label %.lr.ph85.i.i.i

.lr.ph85.i.i.i:                                   ; preds = %.lr.ph85.i.i.i.preheader2944, %.lr.ph85.i.i.i
  %.083.i.i.i = phi i64 [ %i.nu, %.lr.ph85.i.i.i ], [ %.083.i.i.i.ph, %.lr.ph85.i.i.i.preheader2944 ] ; 2 uses
  %.282.i.i.i = phi i32 [ %i.nt, %.lr.ph85.i.i.i ], [ %.282.i.i.i.ph, %.lr.ph85.i.i.i.preheader2944 ]
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0791.019461952, i64 %.083.i.i.i
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !18
  %i.nt = add nsw i32 %i.ns, %.282.i.i.i          ; 2 uses
  %i.nu = add nuw nsw i64 %.083.i.i.i, 1          ; 2 uses
  %exitcond92.not.i.i.i = icmp eq i64 %i.nu, %i.jj
  br i1 %exitcond92.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph85.i.i.i, !llvm.loop !220

scalar.ph2576:                                    ; preds = %scalar.ph2576.preheader, %scalar.ph2576
  %indvars.iv1812 = phi i64 [ %indvars.iv.next1813, %scalar.ph2576 ], [ %indvars.iv1812.ph, %scalar.ph2576.preheader ] ; 3 uses
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0798.1842, i64 %indvars.iv1812
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !83
  %i.nx = fmul double %i.nw, %i.ke
  %i.ny = fdiv double %i.nx, %.0.i
  %i.nz = fptosi double %i.ny to i32
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %3, i32 %i.nz)
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv1812
  store i32 %.sroa.speculated, ptr %i.oa, align 4, !tbaa !18
  %indvars.iv.next1813 = add nuw nsw i64 %indvars.iv1812, 1 ; 2 uses
  %exitcond1816.not = icmp eq i64 %indvars.iv.next1813, %wide.trip.count1815
  br i1 %exitcond1816.not, label %._crit_edge1465.thread, label %scalar.ph2576, !llvm.loop !221

_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit: ; preds = %.lr.ph80.i.i.i, %.lr.ph85.i.i.i, %middle.block2604, %middle.block2619, %bb.ax, %bb.aw, %._crit_edge1465
  %.sroa.0791.019461953 = phi ptr [ null, %._crit_edge1465 ], [ %.sroa.0791.019461952, %middle.block2619 ], [ %.sroa.0791.019461952, %bb.ax ], [ %.sroa.0791.019461952, %bb.aw ], [ %.sroa.0791.019461952, %middle.block2604 ], [ %.sroa.0791.019461952, %.lr.ph85.i.i.i ], [ %.sroa.0791.019461952, %.lr.ph80.i.i.i ] ; 3 uses
  %.not146219471951 = phi i1 [ true, %._crit_edge1465 ], [ %or.cond, %middle.block2619 ], [ %or.cond, %bb.ax ], [ %or.cond, %bb.aw ], [ %or.cond, %middle.block2604 ], [ %or.cond, %.lr.ph85.i.i.i ], [ %or.cond, %.lr.ph80.i.i.i ]
  %.0.i271 = phi i32 [ 0, %._crit_edge1465 ], [ %i.nq, %middle.block2619 ], [ %i.nf, %bb.ax ], [ %27, %bb.aw ], [ %i.na, %middle.block2604 ], [ %i.nt, %.lr.ph85.i.i.i ], [ %i.nd, %.lr.ph80.i.i.i ] ; 4 uses
  br i1 %6, label %bb.ay, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276

bb.ay:                                            ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit
  %i.ob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276 unwind label %bb.az ; 0 uses

bb.az:                                            ; preds = %bb.ay
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276: ; preds = %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  store i64 5489, ptr %17, align 8, !tbaa !95
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276
  %store_forwarded2725 = phi i64 [ 5489, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276 ], [ %i.op, %bb.bb ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit276 ], [ %i.oq, %bb.bb ] ; 4 uses
  %i.od = getelementptr [8 x i8], ptr %17, i64 %.011.i.i.i
  %i.oe = lshr i64 %store_forwarded2725, 30
  %i.of = xor i64 %i.oe, %store_forwarded2725
  %i.og = mul nuw nsw i64 %i.of, 1812433253
  %i.oh = add nuw i64 %i.og, %.011.i.i.i          ; 2 uses
  %i.oi = and i64 %i.oh, 4294967295               ; 2 uses
  store i64 %i.oi, ptr %i.od, align 8, !tbaa !95
  %i.oj = add nuw nsw i64 %.011.i.i.i, 1          ; 3 uses
  %exitcond.not.i.i.i277 = icmp eq i64 %i.oj, 624
  br i1 %exitcond.not.i.i.i277, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ok = getelementptr [8 x i8], ptr %17, i64 %i.oj
  %i.ol = lshr i64 %i.oi, 30
  %i.om = xor i64 %i.ol, %i.oh
  %i.on = mul i64 %i.om, 1812433253
  %i.oo = add i64 %i.on, %i.oj
  %i.op = and i64 %i.oo, 4294967295               ; 2 uses
  store i64 %i.op, ptr %i.ok, align 8, !tbaa !95
  %i.oq = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.ba

bb.bc:                                            ; preds = %bb.ba
  %i.or = getelementptr inbounds nuw i8, ptr %17, i64 4992 ; 6 uses
  store i64 624, ptr %i.or, align 8, !tbaa !96
  %i.os = call i64 @time(ptr noundef null) #20
  %i.ot = and i64 %i.os, 4294967295               ; 2 uses
  store i64 %i.ot, ptr %17, align 8, !tbaa !95
  br label %bb.bd

bb.bd:                                            ; preds = %bb.be, %bb.bc
  %store_forwarded = phi i64 [ %i.ot, %bb.bc ], [ %i.pg, %bb.be ] ; 2 uses
  %.011.i = phi i64 [ 1, %bb.bc ], [ %i.ph, %bb.be ] ; 4 uses
  %i.ou = getelementptr [8 x i8], ptr %17, i64 %.011.i
  %i.ov = lshr i64 %store_forwarded, 30
  %i.ow = xor i64 %i.ov, %store_forwarded
  %i.ox = mul nuw nsw i64 %i.ow, 1812433253
  %i.oy = add nuw i64 %i.ox, %.011.i              ; 2 uses
  %i.oz = and i64 %i.oy, 4294967295               ; 2 uses
  store i64 %i.oz, ptr %i.ou, align 8, !tbaa !95
  %i.pa = add nuw nsw i64 %.011.i, 1              ; 3 uses
  %exitcond.not.i = icmp eq i64 %i.pa, 624
  br i1 %exitcond.not.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.pb = getelementptr [8 x i8], ptr %17, i64 %i.pa
  %i.pc = lshr i64 %i.oz, 30
  %i.pd = xor i64 %i.pc, %i.oy
  %i.pe = mul i64 %i.pd, 1812433253
  %i.pf = add i64 %i.pe, %i.pa
  %i.pg = and i64 %i.pf, 4294967295               ; 2 uses
  store i64 %i.pg, ptr %i.pb, align 8, !tbaa !95
  %i.ph = add nuw nsw i64 %.011.i, 2
  br label %bb.bd

bb.bf:                                            ; preds = %bb.bd
  store i64 624, ptr %i.or, align 8, !tbaa !96
  %i.pi = sext i32 %.0.i271 to i64                ; 5 uses
  %i.pj = icmp slt i32 %.0.i271, 0
  br i1 %i.pj, label %bb.bg, label %bb.bh
end_hunk_1
