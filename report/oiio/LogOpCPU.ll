inline.NumInlined: 867
inline.NumDeleted: 411
begin_hunk_0_@_ZNK16OpenColorIO_v2_511LogRenderer5applyEPKvPvl:bb.a
bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.019 = phi ptr [ %1, %.lr.ph ], [ %i.o, %bb.b ] ; 3 uses
  %.01518 = phi i64 [ 0, %.lr.ph ], [ %i.q, %bb.b ]
  %.01617 = phi ptr [ %2, %.lr.ph ], [ %i.p, %bb.b ] ; 7 uses
  %4 = getelementptr inbounds nuw i8, ptr %.019, i64 12
  %5 = getelementptr inbounds nuw i8, ptr %.01617, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.01617, i64 8 ; 2 uses
  %i.d = load float, ptr %4, align 4, !tbaa !114
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.01617, ptr noundef nonnull align 4 dereferenceable(16) %.019, i64 16, i1 false)
  %i.e = load float, ptr %.01617, align 4, !tbaa !114 ; 2 uses
  %i.f = fcmp ogt float %i.e, 0x3810000000000000
  %.sroa.speculated15.i = select i1 %i.f, float %i.e, float 0x3810000000000000
  %i.g = load float, ptr %5, align 4, !tbaa !114  ; 2 uses
  %i.h = fcmp ogt float %i.g, 0x3810000000000000
  %.sroa.speculated12.i = select i1 %i.h, float %i.g, float 0x3810000000000000
  %i.i = load float, ptr %i.c, align 4, !tbaa !114 ; 2 uses
  %i.j = fcmp ogt float %i.i, 0x3810000000000000
  %.sroa.speculated.i = select i1 %i.j, float %i.i, float 0x3810000000000000
  %i.k = tail call noundef float @log2f(float noundef %.sroa.speculated15.i) #22, !tbaa !3 ; 2 uses
  store float %i.k, ptr %.01617, align 4, !tbaa !114
  %i.l = tail call noundef float @log2f(float noundef %.sroa.speculated12.i) #22, !tbaa !3 ; 2 uses
  store float %i.l, ptr %5, align 4, !tbaa !114
  %i.m = tail call noundef float @log2f(float noundef %.sroa.speculated.i) #22, !tbaa !3 ; 2 uses
  store float %i.m, ptr %i.c, align 4, !tbaa !114
  %i.n = load float, ptr %i.b, align 8, !tbaa !50
  %6 = insertelement <4 x float> poison, float %i.k, i64 0
  %7 = insertelement <4 x float> %6, float %i.l, i64 1
  %8 = insertelement <4 x float> %7, float %i.m, i64 2
  %9 = insertelement <4 x float> %8, float %i.d, i64 3
  %10 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.n, i64 0
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %12 = fmul <4 x float> %9, %11
  store <4 x float> %12, ptr %.01617, align 4, !tbaa !114
  %i.o = getelementptr inbounds nuw i8, ptr %.019, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.01617, i64 16
  %i.q = add nuw nsw i64 %.01518, 1               ; 2 uses
end_hunk_0
