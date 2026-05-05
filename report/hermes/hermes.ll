inline.NumInlined: 5074
inline.NumDeleted: 2523
begin_hunk_0_@_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl30createFunctionFromHostFunctionERKNS_3jsi10PropNameIDEjSt8functionIFNS3_5ValueERNS3_7RuntimeERKS8_PSB_mEE:bb.a
  br label %_ZSt11make_uniqueIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl9HFContextEJSt8functionIFNS0_3jsi5ValueERNS6_7RuntimeERKS7_PSA_mEERS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl9HFContextC2ESt8functionIFNS_3jsi5ValueERNS5_7RuntimeERKS6_PS9_mEERS2_.exit.i: ; preds = %bb.a
  %.sroa.0.0.copyload.i = load <2 x i64>, ptr %4, align 8, !tbaa !50, !noalias !774
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !774
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x i64> %.sroa.0.0.copyload.i, ptr %i.a, align 8, !tbaa !50, !noalias !774
  store ptr %i.e, ptr %i.f, align 8, !tbaa !231, !noalias !774
  br label %_ZSt11make_uniqueIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl9HFContextEJSt8functionIFNS0_3jsi5ValueERNS6_7RuntimeERKS7_PSA_mEERS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

end_hunk_0
