Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/point_areas?download=true
inline.NumInlined: 12872
inline.NumDeleted: 5810
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 120
begin_hunk_0_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi1ELi3ELi1ELi1ELi3EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELin1ELi1ELi1ELin1EEEEEEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSR_:bb.a
  %i.kr = fadd double %i.kn, %i.kq
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.05385.i.i.i.i.i.i.i.2
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !44
  %i.kv = fadd double %i.kr, %i.ku
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.05385.i.i.i.i.i.i.i.2
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !44
  %i.kz = fadd double %i.kv, %i.ky
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.05385.i.i.i.i.i.i.i.2
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 32
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !44
  %i.ld = fadd double %i.kz, %i.lc
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.05385.i.i.i.i.i.i.i.2
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 40
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !44
  %i.lh = fadd double %i.ld, %i.lg
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.05385.i.i.i.i.i.i.i.2
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 48
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !44
  %i.ll = fadd double %i.lh, %i.lk
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.05385.i.i.i.i.i.i.i.2
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 56
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !44
  %i.lp = fadd double %i.ll, %i.lo                ; 3 uses
  %i.lq = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.2, 8 ; 2 uses
  %niter123.next.7 = add nuw nsw i64 %niter123, 8 ; 2 uses
  %niter123.ncmp.7 = icmp eq i64 %niter123.next.7, %unroll_iter122
  br i1 %niter123.ncmp.7, label %.preheader.i.i.i.i.i.i.i.2.loopexit.unr-lcssa, label %.lr.ph87.i.i.i.i.i.i.i.2, !llvm.loop !469

.preheader.i.i.i.i.i.i.i.2.loopexit.unr-lcssa:    ; preds = %.lr.ph87.i.i.i.i.i.i.i.2
  %lcmp.mod119.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod119.not, label %.preheader.i.i.i.i.i.i.i.2, label %.lr.ph87.i.i.i.i.i.i.i.2.epil.preheader

.lr.ph87.i.i.i.i.i.i.i.2.epil.preheader:          ; preds = %.preheader.i.i.i.i.i.i.i.2.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.2.preheader
  %.05385.i.i.i.i.i.i.i.2.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.2.preheader ], [ %i.lq, %.preheader.i.i.i.i.i.i.i.2.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i.2.epil.init = phi double [ %i.ki, %.lr.ph87.i.i.i.i.i.i.i.2.preheader ], [ %i.lp, %.preheader.i.i.i.i.i.i.i.2.loopexit.unr-lcssa ]
  %lcmp.mod121 = icmp ne i64 %xtraiter117, 0
  tail call void @llvm.assume(i1 %lcmp.mod121)
  br label %.lr.ph87.i.i.i.i.i.i.i.2.epil

.lr.ph87.i.i.i.i.i.i.i.2.epil:                    ; preds = %.lr.ph87.i.i.i.i.i.i.i.2.epil, %.lr.ph87.i.i.i.i.i.i.i.2.epil.preheader
  %.05385.i.i.i.i.i.i.i.2.epil = phi i64 [ %i.lu, %.lr.ph87.i.i.i.i.i.i.i.2.epil ], [ %.05385.i.i.i.i.i.i.i.2.epil.init, %.lr.ph87.i.i.i.i.i.i.i.2.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i.2.epil = phi double [ %i.lt, %.lr.ph87.i.i.i.i.i.i.i.2.epil ], [ %.07284.i.i.i.i.i.i.i.2.epil.init, %.lr.ph87.i.i.i.i.i.i.i.2.epil.preheader ]
  %epil.iter118 = phi i64 [ %epil.iter118.next, %.lr.ph87.i.i.i.i.i.i.i.2.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i.2.epil.preheader ]
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.05385.i.i.i.i.i.i.i.2.epil
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !44
  %i.lt = fadd double %.07284.i.i.i.i.i.i.i.2.epil, %i.ls ; 2 uses
  %i.lu = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.2.epil, 1
  %epil.iter118.next = add i64 %epil.iter118, 1   ; 2 uses
  %epil.iter118.cmp.not = icmp eq i64 %epil.iter118.next, %xtraiter117
  br i1 %epil.iter118.cmp.not, label %.preheader.i.i.i.i.i.i.i.2, label %.lr.ph87.i.i.i.i.i.i.i.2.epil, !llvm.loop !475

.preheader.i.i.i.i.i.i.i.2:                       ; preds = %.preheader.i.i.i.i.i.i.i.2.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.2.epil, %bb.r
  %.072.lcssa.i.i.i.i.i.i.i.2 = phi double [ %i.ki, %bb.r ], [ %i.lp, %.preheader.i.i.i.i.i.i.i.2.loopexit.unr-lcssa ], [ %i.lt, %.lr.ph87.i.i.i.i.i.i.i.2.epil ] ; 2 uses
  %i.lv = icmp slt i64 %i.jo, %i.i
  br i1 %i.lv, label %.lr.ph91.i.i.i.i.i.i.i.2, label %.split12.us

.lr.ph91.i.i.i.i.i.i.i.2:                         ; preds = %.preheader.i.i.i.i.i.i.i.2, %.lr.ph91.i.i.i.i.i.i.i.2
  %.05290.i.i.i.i.i.i.i.2 = phi i64 [ %i.lz, %.lr.ph91.i.i.i.i.i.i.i.2 ], [ %i.jo, %.preheader.i.i.i.i.i.i.i.2 ] ; 2 uses
  %.189.i.i.i.i.i.i.i.2 = phi double [ %i.ly, %.lr.ph91.i.i.i.i.i.i.i.2 ], [ %.072.lcssa.i.i.i.i.i.i.i.2, %.preheader.i.i.i.i.i.i.i.2 ]
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %.05290.i.i.i.i.i.i.i.2
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !44
  %i.ly = fadd double %.189.i.i.i.i.i.i.i.2, %i.lx ; 2 uses
  %i.lz = add nsw i64 %.05290.i.i.i.i.i.i.i.2, 1  ; 2 uses
  %i.ma = icmp slt i64 %i.lz, %i.i
  br i1 %i.ma, label %.lr.ph91.i.i.i.i.i.i.i.2, label %.split12.us, !llvm.loop !470

bb.s:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.2
  %i.mb = load double, ptr %i.jc, align 8, !tbaa !44 ; 3 uses
  br i1 %i.l, label %.lr.ph96.i.i.i.i.i.i.i.2.preheader, label %.split12.us

.lr.ph96.i.i.i.i.i.i.i.2.preheader:               ; preds = %bb.s
  %i.mc = add nsw i64 %i.i, -1                    ; 2 uses
  %i.md = add nsw i64 %i.i, -2
  %xtraiter124 = and i64 %i.mc, 7                 ; 3 uses
  %i.me = icmp ult i64 %i.md, 7
  br i1 %i.me, label %.lr.ph96.i.i.i.i.i.i.i.2.epil.preheader, label %.lr.ph96.i.i.i.i.i.i.i.2.preheader.new

.lr.ph96.i.i.i.i.i.i.i.2.preheader.new:           ; preds = %.lr.ph96.i.i.i.i.i.i.i.2.preheader
  %unroll_iter129 = and i64 %i.mc, -8
  br label %.lr.ph96.i.i.i.i.i.i.i.2

.lr.ph96.i.i.i.i.i.i.i.2:                         ; preds = %.lr.ph96.i.i.i.i.i.i.i.2, %.lr.ph96.i.i.i.i.i.i.i.2.preheader.new
  %.094.i.i.i.i.i.i.i.2 = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.2.preheader.new ], [ %i.nk, %.lr.ph96.i.i.i.i.i.i.i.2 ] ; 9 uses
  %.293.i.i.i.i.i.i.i.2 = phi double [ %i.mb, %.lr.ph96.i.i.i.i.i.i.i.2.preheader.new ], [ %i.nj, %.lr.ph96.i.i.i.i.i.i.i.2 ]
  %niter130 = phi i64 [ 0, %.lr.ph96.i.i.i.i.i.i.i.2.preheader.new ], [ %niter130.next.7, %.lr.ph96.i.i.i.i.i.i.i.2 ]
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.094.i.i.i.i.i.i.i.2
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !44
  %i.mh = fadd double %.293.i.i.i.i.i.i.i.2, %i.mg
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.094.i.i.i.i.i.i.i.2
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !44
  %i.ml = fadd double %i.mh, %i.mk
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.094.i.i.i.i.i.i.i.2
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !44
  %i.mp = fadd double %i.ml, %i.mo
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.094.i.i.i.i.i.i.i.2
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !44
  %i.mt = fadd double %i.mp, %i.ms
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.094.i.i.i.i.i.i.i.2
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 32
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !44
  %i.mx = fadd double %i.mt, %i.mw
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.094.i.i.i.i.i.i.i.2
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 40
  %i.na = load double, ptr %i.mz, align 8, !tbaa !44
  %i.nb = fadd double %i.mx, %i.na
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.094.i.i.i.i.i.i.i.2
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 48
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !44
  %i.nf = fadd double %i.nb, %i.ne
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.094.i.i.i.i.i.i.i.2
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 56
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !44
  %i.nj = fadd double %i.nf, %i.ni                ; 3 uses
  %i.nk = add nuw nsw i64 %.094.i.i.i.i.i.i.i.2, 8 ; 2 uses
  %niter130.next.7 = add i64 %niter130, 8         ; 2 uses
  %niter130.ncmp.7 = icmp eq i64 %niter130.next.7, %unroll_iter129
  br i1 %niter130.ncmp.7, label %.split12.us.loopexit.unr-lcssa, label %.lr.ph96.i.i.i.i.i.i.i.2, !llvm.loop !471
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS_9ReplicateINS1_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !96   ; 3 uses
  %i.c = icmp sgt i64 %i.b, 3074457345618258602
  br i1 %i.c, label %.noexc.i.i.i.i.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.a
  %i.d = mul nsw i64 %i.b, 3
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 3)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS_9ReplicateINS1_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.c

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS_9ReplicateINS1_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.e = load ptr, ptr %1, align 8, !tbaa !496, !nonnull !64, !align !65 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !39   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !497, !nonnull !64, !align !65 ; 3 uses
  %i.k = load i64, ptr %i.a, align 8, !tbaa !96   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !39
  %.not.i.i.i.i.i = icmp eq i64 %i.m, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %.not8.i.i.i.i.i = icmp eq i64 %i.o, 3
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not8.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS_9ReplicateINS1_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.p = icmp sgt i64 %i.k, 3074457345618258602
  br i1 %i.p, label %.noexc.i.i.i.i.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i

.noexc.i.i.i.i.invoke:                            ; preds = %bb.b, %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !48
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #37
          to label %.noexc.i.i.i.i.cont unwind label %bb.c

.noexc.i.i.i.i.cont:                              ; preds = %.noexc.i.i.i.i.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i: ; preds = %bb.b
  %i.r = mul nsw i64 %i.k, 3
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.r, i64 noundef %i.k, i64 noundef 3)
          to label %.noexc6 unwind label %bb.c

.noexc6:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i
  %.pr.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !45 ; 2 uses
  %i.s = icmp sgt i64 %.pr.i.i.i.i, 0
  br i1 %i.s, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i..preheader.lr.ph.i_crit_edge.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS_9ReplicateINS1_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i..preheader.lr.ph.i_crit_edge.i.i.i.i: ; preds = %.noexc6
  %.pre.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !39
  br label %.preheader.lr.ph.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i:                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i..preheader.lr.ph.i_crit_edge.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS_9ReplicateINS1_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.t = phi i64 [ %.pre.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i..preheader.lr.ph.i_crit_edge.i.i.i.i ], [ %i.k, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS_9ReplicateINS1_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 11 uses
  %i.u = phi i64 [ %.pr.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i..preheader.lr.ph.i_crit_edge.i.i.i.i ], [ 3, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS_9ReplicateINS1_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 4 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !46     ; 4 uses
  %i.w = icmp sgt i64 %i.t, 0
  br i1 %i.w, label %.preheader.i.i.i.i.i.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS_9ReplicateINS1_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.preheader:                   ; preds = %.preheader.lr.ph.i.i.i.i.i
  %i.x = mul i64 %i.t, %i.u
  %i.y = shl i64 %i.x, 3
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.y ; 2 uses
  %i.z = shl i64 %i.u, 3
  %scevgep10 = getelementptr i8, ptr %i.j, i64 %i.z
  %i.aa = add nuw i64 %i.u, 2305843009213693951
  %i.ab = mul i64 %i.h, %i.aa
  %i.ac = add i64 %i.ab, %i.t
  %i.ad = shl i64 %i.ac, 3
  %scevgep11 = getelementptr i8, ptr %i.f, i64 %i.ad
  %min.iters.check = icmp ult i64 %i.t, 10
  %bound0 = icmp ult ptr %i.v, %scevgep10
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound012 = icmp ult ptr %i.v, %scevgep11
  %bound113.a = icmp ult ptr %i.f, %scevgep
  %found.conflict14 = and i1 %bound012, %bound113.a
  %2 = or i64 %i.h, %i.t
  %i.ae = and i64 %2, 1152921504606846976
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = or i1 %found.conflict14, %i.af
  %conflict.rdx = or i1 %found.conflict, %i.ag
  %n.vec = and i64 %i.t, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.t, %n.vec
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i
  %.0812.i.i.i.i.i = phi i64 [ %i.ay, %._crit_edge.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.preheader ] ; 4 uses
  %i.ah = mul nuw nsw i64 %.0812.i.i.i.i.i, %i.t
  %invariant.gep.i.i.i.i.i = getelementptr [8 x i8], ptr %i.v, i64 %i.ah ; 6 uses
  %i.ai = mul nsw i64 %.0812.i.i.i.i.i, %i.h
  %invariant.gep10.i.i.i.i.i = getelementptr [8 x i8], ptr %i.f, i64 %i.ai ; 6 uses
  %i.aj = getelementptr [8 x i8], ptr %i.j, i64 %.0812.i.i.i.i.i ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !44, !alias.scope !498
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %index ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !44, !alias.scope !499
  %wide.load17 = load <2 x double>, ptr %i.an, align 8, !tbaa !44, !alias.scope !499
  %i.ao = fsub <2 x double> %wide.load, %broadcast.splat
  %i.ap = fsub <2 x double> %wide.load17, %broadcast.splat
  %i.aq = getelementptr i8, ptr %i.al, i64 16
  store <2 x double> %i.ao, ptr %i.al, align 8, !tbaa !44, !alias.scope !500, !noalias !501
  store <2 x double> %i.ap, ptr %i.aq, align 8, !tbaa !44, !alias.scope !500, !noalias !501
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !489

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.av, %scalar.ph.prol ], [ %.09.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.09.i.i.i.i.i.prol
  %gep11.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %.09.i.i.i.i.i.prol
  %i.as = load double, ptr %i.aj, align 8, !tbaa !44
  %i.at = load double, ptr %gep11.i.i.i.i.i.prol, align 8, !tbaa !44
  %i.au = fsub double %i.at, %i.as
  store double %i.au, ptr %gep.i.i.i.i.i.prol, align 8, !tbaa !44
  %i.av = add nuw nsw i64 %.09.i.i.i.i.i.prol, 1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !490

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.av, %scalar.ph.prol ]
  %i.aw = sub nsw i64 %.09.i.i.i.i.i.ph, %i.t
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %._crit_edge.i.i.i.i.i, label %scalar.ph

._crit_edge.i.i.i.i.i:                            ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ay = add nuw nsw i64 %.0812.i.i.i.i.i, 1     ; 2 uses
  %exitcond14.not.i.i.i.i.i = icmp eq i64 %i.ay, %i.u
  br i1 %exitcond14.not.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS_9ReplicateINS1_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i, !llvm.loop !491

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i = phi i64 [ %i.bo, %scalar.ph ], [ %.09.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.09.i.i.i.i.i
  %gep11.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %.09.i.i.i.i.i
  %i.az = load double, ptr %i.aj, align 8, !tbaa !44
  %i.ba = load double, ptr %gep11.i.i.i.i.i, align 8, !tbaa !44
  %i.bb = fsub double %i.ba, %i.az
  store double %i.bb, ptr %gep.i.i.i.i.i, align 8, !tbaa !44
  %i.bc = add nuw nsw i64 %.09.i.i.i.i.i, 1       ; 2 uses
  %gep.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.bc
  %gep11.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %i.bc
  %i.bd = load double, ptr %i.aj, align 8, !tbaa !44
  %i.be = load double, ptr %gep11.i.i.i.i.i.1, align 8, !tbaa !44
  %i.bf = fsub double %i.be, %i.bd
  store double %i.bf, ptr %gep.i.i.i.i.i.1, align 8, !tbaa !44
  %i.bg = add nuw nsw i64 %.09.i.i.i.i.i, 2       ; 2 uses
  %gep.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.bg
  %gep11.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %i.bg
  %i.bh = load double, ptr %i.aj, align 8, !tbaa !44
  %i.bi = load double, ptr %gep11.i.i.i.i.i.2, align 8, !tbaa !44
  %i.bj = fsub double %i.bi, %i.bh
  store double %i.bj, ptr %gep.i.i.i.i.i.2, align 8, !tbaa !44
  %i.bk = add nuw nsw i64 %.09.i.i.i.i.i, 3       ; 2 uses
  %gep.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.bk
  %gep11.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %i.bk
  %i.bl = load double, ptr %i.aj, align 8, !tbaa !44
  %i.bm = load double, ptr %gep11.i.i.i.i.i.3, align 8, !tbaa !44
  %i.bn = fsub double %i.bm, %i.bl
  store double %i.bn, ptr %gep.i.i.i.i.i.3, align 8, !tbaa !44
  %i.bo = add nuw nsw i64 %.09.i.i.i.i.i, 4       ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.bo, %i.t
  br i1 %exitcond.not.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i, label %scalar.ph, !llvm.loop !492

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS2_KNS_9ReplicateINS1_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i, %.preheader.lr.ph.i.i.i.i.i, %.noexc6
  ret void

bb.c:                                             ; preds = %.noexc.i.i.i.i.invoke, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %0, align 8, !tbaa !46
  tail call void @free(ptr noundef %i.bq) #32
  resume { ptr, i32 } %i.bp
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(544) ptr @_ZN5Eigen9JacobiSVDINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE7computeERKS2_j(ptr noundef nonnull align 8 dereferenceable(544) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %4 = alloca %"class.Eigen::CwiseBinaryOp.511", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  tail call void @_ZN5Eigen9JacobiSVDINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi2EE8allocateEllj(ptr noundef nonnull align 8 dereferenceable(544) %0, i64 noundef %i.b, i64 noundef %i.d, i32 noundef %2)
  %i.e = load ptr, ptr %1, align 8, !tbaa !46     ; 18 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = load i64, ptr %i.a, align 8, !tbaa !39   ; 6 uses
  %i.h = load i64, ptr %i.c, align 8, !tbaa !45   ; 5 uses
  %i.i = mul nsw i64 %i.h, %i.g                   ; 11 uses
  %i.j = sdiv i64 %i.i, 4
  %i.k = shl nsw i64 %i.j, 2                      ; 3 uses
  %i.l = sdiv i64 %i.i, 2
  %i.m = shl nsw i64 %i.l, 1                      ; 7 uses
  %.off.i.i.i = add i64 %i.i, 1
  %.not.i.i.i = icmp ult i64 %.off.i.i.i, 3
  br i1 %.not.i.i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load <2 x i64>, ptr %i.e, align 16, !tbaa !87
  %i.o = and <2 x i64> %i.n, splat (i64 9223372036854775807)
  %i.p = bitcast <2 x i64> %i.o to <2 x double>   ; 3 uses
  %i.q = icmp sgt i64 %i.i, 3
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.s = load <2 x i64>, ptr %i.r, align 16, !tbaa !87
  %i.t = and <2 x i64> %i.s, splat (i64 9223372036854775807)
  %i.u = bitcast <2 x i64> %i.t to <2 x double>   ; 2 uses
  %i.v = icmp samesign ugt i64 %i.i, 7
  br i1 %i.v, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.077.lcssa.i.i.i = phi <2 x double> [ %i.u, %bb.c ], [ %i.ao, %.lr.ph.i.i.i ]
  %.074.lcssa.i.i.i = phi <2 x double> [ %i.p, %bb.c ], [ %i.ag, %.lr.ph.i.i.i ] ; 3 uses
  %i.w = fcmp uno <2 x double> %.074.lcssa.i.i.i, zeroinitializer
  %i.x = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %.077.lcssa.i.i.i, <2 x double> %.074.lcssa.i.i.i) #31, !srcloc !155
  %i.y = select <2 x i1> %i.w, <2 x double> %.074.lcssa.i.i.i, <2 x double> %i.x ; 4 uses
  %i.z = icmp sgt i64 %i.m, %i.k
  br i1 %i.z, label %bb.d, label %bb.e

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.05482.i.i.i = phi i64 [ %.054.i.i.i, %.lr.ph.i.i.i ], [ 4, %bb.c ] ; 3 uses
  %.054.in81.i.i.i = phi i64 [ %.05482.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.c ]
  %.07480.i.i.i = phi <2 x double> [ %i.ag, %.lr.ph.i.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.07779.i.i.i = phi <2 x double> [ %i.ao, %.lr.ph.i.i.i ], [ %i.u, %bb.c ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.05482.i.i.i
  %i.ab = load <2 x i64>, ptr %i.aa, align 16, !tbaa !87
  %i.ac = and <2 x i64> %i.ab, splat (i64 9223372036854775807)
  %i.ad = bitcast <2 x i64> %i.ac to <2 x double>
  %i.ae = fcmp uno <2 x double> %.07480.i.i.i, zeroinitializer
  %i.af = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ad, <2 x double> %.07480.i.i.i) #31, !srcloc !155
  %i.ag = select <2 x i1> %i.ae, <2 x double> %.07480.i.i.i, <2 x double> %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.054.in81.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  %i.aj = load <2 x i64>, ptr %i.ai, align 16, !tbaa !87
  %i.ak = and <2 x i64> %i.aj, splat (i64 9223372036854775807)
  %i.al = bitcast <2 x i64> %i.ak to <2 x double>
  %i.am = fcmp uno <2 x double> %.07779.i.i.i, zeroinitializer
  %i.an = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.al, <2 x double> %.07779.i.i.i) #31, !srcloc !155
  %i.ao = select <2 x i1> %i.am, <2 x double> %.07779.i.i.i, <2 x double> %i.an ; 2 uses
  %.054.i.i.i = add nuw nsw i64 %.05482.i.i.i, 4  ; 2 uses
  %i.ap = icmp slt i64 %.054.i.i.i, %i.k
  br i1 %i.ap, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !502

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k
  %i.ar = load <2 x i64>, ptr %i.aq, align 16, !tbaa !87
  %i.as = and <2 x i64> %i.ar, splat (i64 9223372036854775807)
  %i.at = bitcast <2 x i64> %i.as to <2 x double>
  %i.au = fcmp uno <2 x double> %i.y, zeroinitializer
  %i.av = tail call noundef <2 x double> asm "maxpd $1, $0", "=x,x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.at, <2 x double> %i.y) #31, !srcloc !155
  %i.aw = select <2 x i1> %i.au, <2 x double> %i.y, <2 x double> %i.av
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i, %bb.b
  %.276.i.i.i = phi <2 x double> [ %i.p, %bb.b ], [ %i.aw, %bb.d ], [ %i.y, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.0.0.vec.extract.i.i.i.i.i = extractelement <2 x double> %.276.i.i.i, i64 0 ; 3 uses
  %i.ax = fcmp uno double %.sroa.0.0.vec.extract.i.i.i.i.i, 0.000000e+00
  %.sroa.0.8.vec.extract.i.i.i.i.i = extractelement <2 x double> %.276.i.i.i, i64 1 ; 3 uses
  %i.ay = fcmp ord double %.sroa.0.8.vec.extract.i.i.i.i.i, 0.000000e+00
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal27queryCacheSizes_intel_codesERiS1_S1_:bb.a
bb.ah:                                            ; preds = %bb.c
  store i32 3072, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.ai:                                            ; preds = %bb.c
  %i.m = load i32, ptr %1, align 4, !tbaa !60
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 4096, ptr %2, align 4, !tbaa !60
  br label %bb.bj

bb.ak:                                            ; preds = %bb.c
  store i32 6144, ptr %2, align 4, !tbaa !60
  br label %bb.bj

bb.al:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !60
  br label %bb.bj

bb.am:                                            ; preds = %bb.c
  store i32 12288, ptr %2, align 4, !tbaa !60
  br label %bb.bj

bb.an:                                            ; preds = %bb.c
  store i32 16384, ptr %2, align 4, !tbaa !60
  br label %bb.bj

bb.ao:                                            ; preds = %bb.c
  store i32 6144, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.ap:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.aq:                                            ; preds = %bb.c
  store i32 128, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.ar:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.as:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.at:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.au:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.av:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.aw:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.ax:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.ay:                                            ; preds = %bb.c
  store i32 128, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.az:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.ba:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.bb:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.bc:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.bd:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.be:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !60
  br label %bb.bj

bb.bf:                                            ; preds = %bb.c
  store i32 2048, ptr %2, align 4, !tbaa !60
  br label %bb.bj

bb.bg:                                            ; preds = %bb.c
  store i32 4096, ptr %2, align 4, !tbaa !60
  br label %bb.bj

bb.bh:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !60
  br label %bb.bj

bb.bi:                                            ; preds = %bb.c
  store i32 3072, ptr %2, align 4, !tbaa !60
  br label %bb.bj

bb.bj:                                            ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.aj, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !1079

.thread:                                          ; preds = %bb.ai
  store i32 4096, ptr %1, align 4, !tbaa !60
  store i32 4096, ptr %2, align 4, !tbaa !60
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not78 = icmp eq i64 %indvars.iv.next77, 14
  br i1 %exitcond.not78, label %.thread80, label %.outer, !llvm.loop !1079

.thread80:                                        ; preds = %.thread, %bb.b
  %i.n = load i32, ptr %1, align 4, !tbaa !60
  %i.o = load i32, ptr %2, align 4, !tbaa !60
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.thread80
  store i32 0, ptr %2, align 4, !tbaa !60
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread80, %bb.b
  %i.q = load i32, ptr %0, align 4, !tbaa !60
  %i.r = shl nsw i32 %i.q, 10
  store i32 %i.r, ptr %0, align 4, !tbaa !60
  %i.s = load i32, ptr %1, align 4, !tbaa !60
  %i.t = shl nsw i32 %i.s, 10
  store i32 %i.t, ptr %1, align 4, !tbaa !60
  %i.u = load i32, ptr %2, align 4, !tbaa !60
  %i.v = shl nsw i32 %i.u, 10
  store i32 %i.v, ptr %2, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #29 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #32, !srcloc !1094
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !225    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !226  ; 12 uses
  %i.h = icmp sgt i64 %3, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph62
  %i.i = add nsw i64 %3, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep81 = getelementptr i8, ptr %1, i64 16
  %scevgep83 = getelementptr i8, ptr %1, i64 24
  %i.j = shl i64 %3, 5
  %scevgep86 = getelementptr i8, ptr %1, i64 %i.j
  %i.k = mul i64 %i.g, 24
  %scevgep88 = getelementptr i8, ptr %i.e, i64 %i.k
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.l = add nsw i64 %smax, -4                    ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = shl i64 %i.l, 3                          ; 3 uses
  %i.o = or disjoint i64 %i.n, 24
  %i.p = mul i64 %i.g, %i.o
  %i.q = shl i64 %3, 3                            ; 4 uses
  %i.r = getelementptr i8, ptr %i.e, i64 %i.p
  %scevgep89 = getelementptr i8, ptr %i.r, i64 %i.q
  %i.s = shl i64 %i.g, 4
  %scevgep90 = getelementptr i8, ptr %i.e, i64 %i.s
  %i.t = or disjoint i64 %i.n, 16
  %i.u = mul i64 %i.g, %i.t
  %i.v = getelementptr i8, ptr %i.e, i64 %i.u
  %scevgep91 = getelementptr i8, ptr %i.v, i64 %i.q
  %i.w = shl i64 %i.g, 3
  %scevgep92 = getelementptr i8, ptr %i.e, i64 %i.w
  %i.x = or disjoint i64 %i.n, 8
  %i.y = mul i64 %i.g, %i.x
  %i.z = getelementptr i8, ptr %i.e, i64 %i.y
  %scevgep93 = getelementptr i8, ptr %i.z, i64 %i.q
  %i.aa = mul i64 %i.g, %i.m
  %i.ab = shl i64 %i.aa, 5
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.ab
  %scevgep94 = getelementptr i8, ptr %i.ac, i64 %i.q
  %i.ad = insertelement <4 x ptr> poison, ptr %scevgep91, i64 0
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %scevgep89, i64 1
  %i.af = insertelement <4 x ptr> %i.ae, ptr %scevgep93, i64 2
  %i.ag = insertelement <4 x ptr> %i.af, ptr %scevgep94, i64 3
  %i.ah = insertelement <4 x ptr> poison, ptr %scevgep90, i64 0
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %scevgep88, i64 1
  %i.aj = insertelement <4 x ptr> %i.ai, ptr %scevgep92, i64 2
  %i.ak = insertelement <4 x ptr> %i.aj, ptr %i.e, i64 3
  %min.iters.check = icmp ult i64 %3, 30
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check98 = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.ds, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa79, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %i.am = mul nsw i64 %i.g, %.04460.us
  %i.an = getelementptr [8 x i8], ptr %i.e, i64 %i.am ; 4 uses
  %i.ao = or disjoint i64 %.04460.us, 1
  %i.ap = mul nsw i64 %i.g, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.e, i64 %i.ap ; 4 uses
  %i.ar = or disjoint i64 %.04460.us, 2
  %i.as = mul nsw i64 %i.g, %i.ar
  %i.at = getelementptr [8 x i8], ptr %i.e, i64 %i.as ; 4 uses
  %i.au = or disjoint i64 %.04460.us, 3
  %i.av = mul nsw i64 %i.g, %i.au
  %i.aw = getelementptr [8 x i8], ptr %i.e, i64 %i.av ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.ax = shl i64 %.04559.us, 3                   ; 3 uses
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %scevgep80, i64 %mul.result
  %i.az = icmp ult ptr %i.ay, %scevgep80
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.ax ; 2 uses
  %i.ba = getelementptr i8, ptr %scevgep82, i64 %mul.result
  %i.bb = icmp ult ptr %i.ba, %scevgep82
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.ax ; 2 uses
  %i.bc = getelementptr i8, ptr %scevgep84, i64 %mul.result
  %i.bd = icmp ult ptr %i.bc, %scevgep84
  %i.be = or i1 %i.bd, %mul.overflow
  %i.bf = or i1 %i.bb, %i.az
  %i.bg = or i1 %i.bf, %i.be
  br i1 %i.bg, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bh = shl i64 %.04559.us, 3                   ; 2 uses
  %scevgep85 = getelementptr i8, ptr %1, i64 %i.bh
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.bh
  %i.bi = insertelement <4 x ptr> poison, ptr %scevgep85, i64 0
  %i.bj = shufflevector <4 x ptr> %i.bi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bk = icmp ult <4 x ptr> %i.bj, %i.ag
  %i.bl = insertelement <4 x ptr> poison, ptr %scevgep87, i64 0
  %i.bm = shufflevector <4 x ptr> %i.bl, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bn = icmp ult <4 x ptr> %i.ak, %i.bm
  %i.bo = and <4 x i1> %i.bk, %i.bn
  %i.bp = bitcast <4 x i1> %i.bo to i4
  %i.bq = icmp ne i4 %i.bp, 0
  %op.rdx = or i1 %i.bq, %stride.check98
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.br = add i64 %.04559.us, %i.al               ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %1, i64 %.04559.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index
  %wide.load = load <2 x double>, ptr %i.bt, align 8, !tbaa !44, !alias.scope !1095
  %.idx = shl i64 %index, 5
  %i.bu = getelementptr i8, ptr %i.bs, i64 %.idx
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %wide.load109 = load <2 x double>, ptr %i.bv, align 8, !tbaa !44, !alias.scope !1096
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index
  %wide.load110 = load <2 x double>, ptr %i.bw, align 8, !tbaa !44, !alias.scope !1097
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index
  %wide.load111 = load <2 x double>, ptr %i.bx, align 8, !tbaa !44, !alias.scope !1098
  %i.by = shufflevector <2 x double> %wide.load, <2 x double> %wide.load109, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bz = shufflevector <2 x double> %wide.load110, <2 x double> %wide.load111, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.by, <4 x double> %i.bz, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bu, align 8, !tbaa !44, !alias.scope !1099, !noalias !1100
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !1087

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.br, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us.ph
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !44
  %i.cd = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.cc, ptr %i.cd, align 8, !tbaa !44
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us.ph
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !44
  %i.cg = getelementptr i8, ptr %i.cd, i64 8
  store double %i.cf, ptr %i.cg, align 8, !tbaa !44
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us.ph
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !44
  %i.cj = getelementptr i8, ptr %i.cd, i64 16
  store double %i.ci, ptr %i.cj, align 8, !tbaa !44
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us.ph
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !44
  %i.cm = getelementptr i8, ptr %i.cd, i64 24
  store double %i.cl, ptr %i.cm, align 8, !tbaa !44
  %i.cn = add nsw i64 %.157.us.ph, 4              ; 2 uses
  %i.co = or disjoint i64 %.04358.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa128.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cn, %scalar.ph.prol ]
  %.04358.us.unr = phi i64 [ %.04358.us.ph, %scalar.ph.preheader ], [ %i.co, %scalar.ph.prol ]
  %.157.us.unr = phi i64 [ %.157.us.ph, %scalar.ph.preheader ], [ %i.cn, %scalar.ph.prol ]
  %i.cp = icmp eq i64 %3, %.neg
  br i1 %i.cp, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04358.us = phi i64 [ %i.dr, %scalar.ph ], [ %.04358.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.157.us = phi i64 [ %i.dq, %scalar.ph ], [ %.157.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !44
  %i.cs = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.cr, ptr %i.cs, align 8, !tbaa !44
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !44
  %i.cv = getelementptr i8, ptr %i.cs, i64 8
  store double %i.cu, ptr %i.cv, align 8, !tbaa !44
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !44
  %i.cy = getelementptr i8, ptr %i.cs, i64 16
  store double %i.cx, ptr %i.cy, align 8, !tbaa !44
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us
  %i.da = load double, ptr %i.cz, align 8, !tbaa !44
  %i.db = getelementptr i8, ptr %i.cs, i64 24
  store double %i.da, ptr %i.db, align 8, !tbaa !44
  %i.dc = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !44
  %i.df = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 32
  store double %i.de, ptr %i.dg, align 8, !tbaa !44
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.dc
  %i.di = load double, ptr %i.dh, align 8, !tbaa !44
  %i.dj = getelementptr i8, ptr %i.df, i64 40
  store double %i.di, ptr %i.dj, align 8, !tbaa !44
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dc
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !44
  %i.dm = getelementptr i8, ptr %i.df, i64 48
  store double %i.dl, ptr %i.dm, align 8, !tbaa !44
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.dc
  %i.do = load double, ptr %i.dn, align 8, !tbaa !44
  %i.dp = getelementptr i8, ptr %i.df, i64 56
  store double %i.do, ptr %i.dp, align 8, !tbaa !44
  %i.dq = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.dr = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dr, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1088

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.br, %middle.block ], [ %.lcssa128.unr, %scalar.ph.prol.loopexit ], [ %i.dq, %scalar.ph ] ; 2 uses
  %i.ds = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.c
  br i1 %i.dt, label %.lr.ph.us, label %.preheader, !llvm.loop !1089

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.du = icmp slt i64 %i.c, %4
  br i1 %i.du, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.dv = load ptr, ptr %2, align 8, !tbaa !225   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !226 ; 3 uses
  %i.dy = icmp sgt i64 %3, 0
  br i1 %i.dy, label %.lr.ph.preheader, label %._crit_edge69.split

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.dz = ptrtoaddr ptr %i.dv to i64
  %i.ea = mul i64 %i.dx, %i.b
  %i.eb = shl i64 %i.ea, 5
  %i.ec = add i64 %i.eb, %i.dz
  %i.ed = sub i64 %i.a, %i.ec
  %i.ee = mul i64 %i.dx, -8
  %min.iters.check115 = icmp ult i64 %3, 4
  %n.vec117 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n124 = icmp eq i64 %3, %n.vec117
  %xtraiter129 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br label %.lr.ph

._crit_edge69.split:                              ; preds = %._crit_edge, %.lr.ph68, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
end_hunk_1
