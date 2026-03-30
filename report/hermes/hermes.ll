begin_hunk_0
  br label %_ZSt11make_uniqueIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl9HFContextEJSt8functionIFNS0_3jsi5ValueERNS6_7RuntimeERKS7_PSA_mEERS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl9HFContextC2ESt8functionIFNS_3jsi5ValueERNS5_7RuntimeERKS6_PS9_mEERS2_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !noalias !758
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !noalias !758
  store ptr %i.e, ptr %i.f, align 8, !tbaa !227, !noalias !758
  br label %_ZSt11make_uniqueIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl9HFContextEJSt8functionIFNS0_3jsi5ValueERNS6_7RuntimeERKS7_PSA_mEERS3_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

end_hunk_0
