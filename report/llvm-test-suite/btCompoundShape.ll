inline.NumInlined: 334
inline.NumDeleted: 72
begin_hunk_0_@_ZNK15btCompoundShape31calculatePrincipalAxisTransformEPfR11btTransformR9btVector3:bb.a

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %.0169173 = phi float [ 0.000000e+00, %.lr.ph.new ], [ %15, %bb.b ]
  %i.g = phi <4 x float> [ zeroinitializer, %.lr.ph.new ], [ %14, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.h = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.k = load float, ptr %i.j, align 4, !tbaa !21 ; 2 uses
  %6 = load <3 x float>, ptr %i.i, align 4, !tbaa !21
  %7 = shufflevector <3 x float> %6, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %i.l = insertelement <4 x float> poison, float %i.k, i64 0
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <4 x i32> zeroinitializer
  %8 = fmul <4 x float> %7, %i.m
  %9 = fadd <4 x float> %i.g, %8
  %10 = fadd float %.0169173, %i.k
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.q = load float, ptr %i.p, align 4, !tbaa !21 ; 2 uses
  %11 = load <3 x float>, ptr %i.o, align 4, !tbaa !21
  %12 = shufflevector <3 x float> %11, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %i.r = insertelement <4 x float> poison, float %i.q, i64 0
  %i.s = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> zeroinitializer
  %13 = fmul <4 x float> %12, %i.s
  %14 = fadd <4 x float> %9, %13                  ; 3 uses
  %15 = fadd float %10, %i.q                      ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0169173.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %15, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %14, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod201 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod201)
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %i.e, i64 %indvars.iv.epil.init
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.w = load float, ptr %i.v, align 4, !tbaa !21 ; 2 uses
  %16 = load <3 x float>, ptr %i.u, align 4, !tbaa !21
  %17 = shufflevector <3 x float> %16, <3 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 0>
  %i.x = insertelement <4 x float> poison, float %i.w, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.z = fmul <4 x float> %17, %i.y
  %i.aa = fadd <4 x float> %.epil.init, %i.z
  %18 = fadd float %.0169173.epil.init, %i.w
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %.0169.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %15, %._crit_edge.loopexit.unr-lcssa ], [ %18, %.epil.preheader ]
  %i.ab = phi <4 x float> [ zeroinitializer, %bb.a ], [ %14, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %.epil.preheader ]
  %i.ac = fdiv float 1.000000e+00, %.0169.lcssa
  %i.ad = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <4 x i32> zeroinitializer
end_hunk_0
