inline.NumInlined: 74
inline.NumDeleted: 13
begin_hunk_0_@_ZNK23btStridingMeshInterface27InternalProcessAllTrianglesEP31btInternalTriangleIndexCallbackRK9btVector3S4_:bb.a
  %i.ab = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ac = insertelement <4 x float> %i.ab, float 1.000000e+00, i64 3
  %i.ad = insertelement <4 x float> %i.ac, float %.sroa.27.0.copyload, i64 2
  %i.ae = shufflevector <2 x float> %i.n, <2 x float> %i.o, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.af = insertelement <4 x float> %i.ae, float 0.000000e+00, i64 3 ; 2 uses
  %i.ag = insertelement <4 x float> %i.af, float %.sroa.27.0.copyload, i64 2
  br label %bb.b

end_hunk_0
begin_hunk_1_@_ZNK23btStridingMeshInterface27InternalProcessAllTrianglesEP31btInternalTriangleIndexCallbackRK9btVector3S4_:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !15
  %i.bp = load <2 x float>, ptr %i.bm, align 4, !tbaa !15
  %i.bq = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bo, i64 2
  %i.br = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> %i.bq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bt = fmul <4 x float> %i.af, %i.bs
  store <4 x float> %i.bt, ptr %i.q, align 16, !tbaa !15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
end_hunk_1
