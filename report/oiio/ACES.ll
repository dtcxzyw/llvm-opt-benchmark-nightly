inline.NumInlined: 1453
inline.NumDeleted: 624
begin_hunk_0_@_ZN16OpenColorIO_v2_520build_vonkries_adaptERKNS_12MatrixOpData7OffsetsES3_NS_16AdaptationMethodE
; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511ACES_OUTPUT30Generate_nit_normalization_opsERNS_10OpRcPtrVecEd(ptr noundef nonnull align 8 dereferenceable(144) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.scalar = fmul double %1, 1.000000e-02         ; 3 uses
  %3 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.scalar, i64 0
  store double %.scalar, ptr %i.a, align 16, !tbaa !59
  store double %.scalar, ptr %2, align 8, !tbaa !59
  store <2 x double> %3, ptr %i.b, align 16, !tbaa !59
  call void @_ZN16OpenColorIO_v2_513CreateScaleOpERNS_10OpRcPtrVecEPKdNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.a, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
end_hunk_0
