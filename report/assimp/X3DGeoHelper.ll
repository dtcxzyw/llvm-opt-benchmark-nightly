inline.NumInlined: 1138
inline.NumDeleted: 495
begin_hunk_0_@_ZN6Assimp12X3DGeoHelper12make_point2DEff
define hidden { <2 x float>, float } @_ZN6Assimp12X3DGeoHelper12make_point2DEff(float noundef %0, float noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef float @cosf(float noundef %0) #22
  %2 = fmul float %1, %i.a
  %3 = tail call noundef float @sinf(float noundef %0) #22
  %4 = fmul float %1, %3
  %i.b = insertelement <2 x float> poison, float %2, i64 0
  %i.c = insertelement <2 x float> %i.b, float %4, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.c, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float 0.000000e+00, 1
  ret { <2 x float>, float } %.fca.1.insert
}
end_hunk_0
begin_hunk_1_@_ZN6Assimp12X3DGeoHelper10make_arc2DEfffmRNSt7__cxx114listI10aiVector3tIfESaIS4_EEE:bb.a
  %i.n = uitofp i64 %3 to float
  %i.o = fdiv float %spec.store.select, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.o
end_hunk_1
begin_hunk_2_@_ZN6Assimp12X3DGeoHelper10make_arc2DEfffmRNSt7__cxx114listI10aiVector3tIfESaIS4_EEE:bb.a
  %i.r = uitofp i64 %.03036 to float
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float %i.o, float %0) ; 2 uses
  %i.t = tail call noundef float @cosf(float noundef %i.s) #22
  %5 = fmul float %2, %i.t
  %i.u = tail call noundef float @sinf(float noundef %i.s) #22
  %6 = fmul float %2, %i.u
  %i.v = insertelement <2 x float> poison, float %5, i64 0
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %i.v, float %6, i64 1
  %i.w = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.x, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx, align 4
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %4) #22
end_hunk_2
