inline.NumInlined: 867
inline.NumDeleted: 411
begin_hunk_0_@_ZNK16OpenColorIO_v2_511LogRenderer5applyEPKvPvl:bb.a
  %i.f = fcmp ogt float %i.e, 0x3810000000000000
  %.sroa.speculated15.i = select i1 %i.f, float %i.e, float 0x3810000000000000
  %i.g = getelementptr inbounds nuw i8, ptr %.01617, i64 4 ; 3 uses
  %4 = load float, ptr %i.g, align 4, !tbaa !114  ; 2 uses
  %5 = fcmp ogt float %4, 0x3810000000000000
  %.sroa.speculated12.i = select i1 %5, float %4, float 0x3810000000000000
  %6 = getelementptr inbounds nuw i8, ptr %.01617, i64 8 ; 3 uses
  %7 = load float, ptr %6, align 4, !tbaa !114    ; 2 uses
  %8 = fcmp ogt float %7, 0x3810000000000000
  %.sroa.speculated.i = select i1 %8, float %7, float 0x3810000000000000
  %i.h = tail call noundef float @log2f(float noundef %.sroa.speculated15.i) #22, !tbaa !3 ; 2 uses
  store float %i.h, ptr %.01617, align 4, !tbaa !114
  %9 = tail call noundef float @log2f(float noundef %.sroa.speculated12.i) #22, !tbaa !3 ; 2 uses
  store float %9, ptr %i.g, align 4, !tbaa !114
  %i.i = tail call noundef float @log2f(float noundef %.sroa.speculated.i) #22, !tbaa !3 ; 2 uses
  store float %i.i, ptr %6, align 4, !tbaa !114
  %i.j = load float, ptr %i.b, align 8, !tbaa !50 ; 3 uses
  %i.k = fmul float %i.h, %i.j
  store float %i.k, ptr %.01617, align 4, !tbaa !114
  %i.l = fmul float %9, %i.j
  store float %i.l, ptr %i.g, align 4, !tbaa !114
  %i.m = fmul float %i.i, %i.j
  store float %i.m, ptr %6, align 4, !tbaa !114
  %i.n = getelementptr inbounds nuw i8, ptr %.01617, i64 12
  store float %i.d, ptr %i.n, align 4, !tbaa !114
  %i.o = getelementptr inbounds nuw i8, ptr %.019, i64 16
end_hunk_0
