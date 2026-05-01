inline.NumInlined: 334
inline.NumDeleted: 72
begin_hunk_0_@_ZNK15btCompoundShape31calculatePrincipalAxisTransformEPfR11btTransformR9btVector3:bb.a

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %i.g = phi <4 x float> [ zeroinitializer, %.lr.ph.new ], [ %21, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.h = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %6 = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.k = load float, ptr %6, align 4, !tbaa !21
  %7 = load float, ptr %i.j, align 4, !tbaa !21
  %8 = load <2 x float>, ptr %i.i, align 4, !tbaa !21
  %i.l = insertelement <4 x float> poison, float %7, i64 0
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> zeroinitializer
  %9 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.k, i64 1
  %10 = shufflevector <2 x float> %8, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %11 = shufflevector <4 x float> %9, <4 x float> %10, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %12 = fmul <4 x float> %i.m, %11
  %13 = fadd <4 x float> %i.g, %12
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv.next ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %14 = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.q = load float, ptr %14, align 4, !tbaa !21
  %15 = load float, ptr %i.p, align 4, !tbaa !21
  %16 = load <2 x float>, ptr %i.o, align 4, !tbaa !21
  %i.r = insertelement <4 x float> poison, float %15, i64 0
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> zeroinitializer
  %17 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.q, i64 1
  %18 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %19 = shufflevector <4 x float> %17, <4 x float> %18, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %20 = fmul <4 x float> %i.s, %19
  %21 = fadd <4 x float> %13, %20                 ; 4 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %22 = extractelement <4 x float> %21, i64 0
  %23 = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %21, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod201 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod201)
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv.epil.init ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %24 = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.w = load float, ptr %24, align 4, !tbaa !21
  %25 = load float, ptr %i.v, align 4, !tbaa !21
  %26 = load <2 x float>, ptr %i.u, align 4, !tbaa !21
  %i.x = insertelement <4 x float> poison, float %25, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %27 = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.w, i64 1
  %28 = shufflevector <2 x float> %26, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %29 = shufflevector <4 x float> %27, <4 x float> %28, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.z = fmul <4 x float> %i.y, %29
  %i.aa = fadd <4 x float> %.epil.init, %i.z      ; 2 uses
  %30 = shufflevector <4 x float> %i.aa, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %31 = extractelement <4 x float> %i.aa, i64 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0169.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %22, %._crit_edge.loopexit.unr-lcssa ], [ %31, %.epil.preheader ]
  %i.ab = phi <4 x float> [ zeroinitializer, %bb.a ], [ %23, %._crit_edge.loopexit.unr-lcssa ], [ %30, %.epil.preheader ]
  %i.ac = fdiv float 1.000000e+00, %.0169.lcssa
  %i.ad = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_0
