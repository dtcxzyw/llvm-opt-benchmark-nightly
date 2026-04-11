inline.NumInlined: 1453
inline.NumDeleted: 624
begin_hunk_0_@_ZN16OpenColorIO_v2_520build_vonkries_adaptERKNS_12MatrixOpData7OffsetsES3_NS_16AdaptationMethodE
; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_511ACES_OUTPUT30Generate_nit_normalization_opsERNS_10OpRcPtrVecEd(ptr noundef nonnull align 8 dereferenceable(144) %0, double noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 7 uses
  %2 = fmul double %1, 1.000000e-02               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store double %2, ptr %i.a, align 16, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %2, ptr %i.b, align 8, !tbaa !59
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %2, ptr %3, align 16, !tbaa !59
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double 1.000000e+00, ptr %4, align 8, !tbaa !59
  call void @_ZN16OpenColorIO_v2_513CreateScaleOpERNS_10OpRcPtrVecEPKdNS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %i.a, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
end_hunk_0
