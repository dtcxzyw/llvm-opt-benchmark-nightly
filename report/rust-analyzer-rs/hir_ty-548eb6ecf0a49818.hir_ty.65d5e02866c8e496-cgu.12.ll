Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.12?download=true
inline.NumInlined: 6953
inline.NumDeleted: 4383
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_B1s_uNCINvXs8_B1u_NtB1u_7ClausesINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtB1w_8interner10DbInternerE15super_fold_withNtNtB1w_9normalize35DeeplyNormalizeForDiagnosticsFolderE0NCINvNvB2p_8for_each4callB1s_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7k_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainINtNtNtBb_5array4iter8IntoIterB1s_Kj9_EINtB38_3MapBP_B3z_EEE0E0E0EB1y_:bb.a
  resume { ptr, i32 } %i.m

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNtB2E_3map8map_foldBQ_BQ_uNCINvXs8_BS_NtBS_7ClausesINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtBU_8interner10DbInternerE15super_fold_withNtNtBU_9normalize35DeeplyNormalizeForDiagnosticsFolderE0NCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7p_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EINtB3j_3MapINtB2C_6CopiedBF_EB3J_EEE0E0E0E0EBW_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.j, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !6151
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_B1s_uNCINvXs8_B1u_NtB1u_7ClausesINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtB1w_8interner10DbInternerE15super_fold_withNtNtNtB1w_5infer7resolve24OpportunisticVarResolverE0NCINvNvB2p_8for_each4callB1s_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7f_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainINtNtNtBb_5array4iter8IntoIterB1s_Kj9_EINtB38_3MapBP_B3z_EEE0E0E0EB1y_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNtB2E_3map8map_foldBQ_BQ_uNCINvXs8_BS_NtBS_7ClausesINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtBU_8interner10DbInternerE15super_fold_withNtNtNtBU_5infer7resolve24OpportunisticVarResolverE0NCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7k_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EINtB3j_3MapINtB2C_6CopiedBF_EB3J_EEE0E0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load ptr, ptr %i.f, align 8, !noalias !6163, !nonnull !5, !noundef !5
  %i.g = invoke noundef nonnull ptr @_RINvXsl_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB6_9PredicateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtB8_8interner10DbInternerE15super_fold_withNtNtNtB8_5infer7resolve24OpportunisticVarResolverEBa_(ptr noundef nonnull %.val15.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %.sroa.9.0.copyload)
          to label %.noexc.i unwind label %bb.e, !noalias !6163

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef nonnull ptr @_RNvMsH_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_9Predicate13expect_clause(ptr noundef nonnull %i.g)
          to label %bb.d unwind label %bb.e, !noalias !6163

bb.d:                                             ; preds = %.noexc.i
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store ptr %i.h, ptr %i.i, align 8, !noalias !6164
  %i.j = add i64 %.val10.i, 1                     ; 2 uses
  %i.k = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.e
  br i1 %i.l, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNtB2E_3map8map_foldBQ_BQ_uNCINvXs8_BS_NtBS_7ClausesINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtBU_8interner10DbInternerE15super_fold_withNtNtNtBU_5infer7resolve24OpportunisticVarResolverE0NCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7k_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EINtB3j_3MapINtB2C_6CopiedBF_EB3J_EEE0E0E0E0EBW_.exit, label %bb.c

bb.e:                                             ; preds = %.noexc.i, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !6163
  resume { ptr, i32 } %i.m

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNtB2E_3map8map_foldBQ_BQ_uNCINvXs8_BS_NtBS_7ClausesINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtBU_8interner10DbInternerE15super_fold_withNtNtNtBU_5infer7resolve24OpportunisticVarResolverE0NCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7k_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EINtB3j_3MapINtB2C_6CopiedBF_EB3J_EEE0E0E0E0EBW_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.j, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !6163
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_B1s_uNCINvXs8_B1u_NtB1u_7ClausesINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtB1w_8interner10DbInternerE15super_fold_withNtNtNtNtB1w_5infer8snapshot5fudge15InferenceFudgerE0NCINvNvB2p_8for_each4callB1s_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7f_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainINtNtNtBb_5array4iter8IntoIterB1s_Kj9_EINtB38_3MapBP_B3z_EEE0E0E0EB1y_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNtB2E_3map8map_foldBQ_BQ_uNCINvXs8_BS_NtBS_7ClausesINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtBU_8interner10DbInternerE15super_fold_withNtNtNtNtBU_5infer8snapshot5fudge15InferenceFudgerE0NCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7k_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EINtB3j_3MapINtB2C_6CopiedBF_EB3J_EEE0E0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load ptr, ptr %i.f, align 8, !noalias !6175, !nonnull !5, !noundef !5
  %i.g = invoke noundef nonnull ptr @_RNvYNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer8snapshot5fudge15InferenceFudgerINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold10TypeFolderNtNtBa_8interner10DbInternerE14fold_predicateBc_(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %.sroa.9.0.copyload, ptr noundef nonnull %.val15.i)
          to label %.noexc.i unwind label %bb.e, !noalias !6175

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef nonnull ptr @_RNvMsH_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_9Predicate13expect_clause(ptr noundef nonnull %i.g)
          to label %bb.d unwind label %bb.e, !noalias !6175

bb.d:                                             ; preds = %.noexc.i
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store ptr %i.h, ptr %i.i, align 8, !noalias !6176
  %i.j = add i64 %.val10.i, 1                     ; 2 uses
  %i.k = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.e
  br i1 %i.l, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNtB2E_3map8map_foldBQ_BQ_uNCINvXs8_BS_NtBS_7ClausesINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtBU_8interner10DbInternerE15super_fold_withNtNtNtNtBU_5infer8snapshot5fudge15InferenceFudgerE0NCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7k_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EINtB3j_3MapINtB2C_6CopiedBF_EB3J_EEE0E0E0E0EBW_.exit, label %bb.c

bb.e:                                             ; preds = %.noexc.i, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !6175
  resume { ptr, i32 } %i.m

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNtB2E_3map8map_foldBQ_BQ_uNCINvXs8_BS_NtBS_7ClausesINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtBU_8interner10DbInternerE15super_fold_withNtNtNtNtBU_5infer8snapshot5fudge15InferenceFudgerE0NCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7k_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EINtB3j_3MapINtB2C_6CopiedBF_EB3J_EEE0E0E0E0EBW_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.j, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !6175
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_B1s_uNCINvXs8_B1u_NtB1u_7ClausesINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtB1w_8interner10DbInternerE15super_fold_withNtNtNtNtB1w_5infer9canonical11instantiate21CanonicalInstantiatorE0NCINvNvB2p_8for_each4callB1s_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7t_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainINtNtNtBb_5array4iter8IntoIterB1s_Kj9_EINtB38_3MapBP_B3z_EEE0E0E0EB1y_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNtB2E_3map8map_foldBQ_BQ_uNCINvXs8_BS_NtBS_7ClausesINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtBU_8interner10DbInternerE15super_fold_withNtNtNtNtBU_5infer9canonical11instantiate21CanonicalInstantiatorE0NCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7y_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EINtB3j_3MapINtB2C_6CopiedBF_EB3J_EEE0E0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.d ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val15.i = load ptr, ptr %i.f, align 8, !noalias !6187, !nonnull !5, !noundef !5
  %i.g = invoke noundef nonnull ptr @_RNvXs_NtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9canonical11instantiateNtB4_21CanonicalInstantiatorINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold10TypeFolderNtNtBa_8interner10DbInternerE14fold_predicate(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %.sroa.9.0.copyload, ptr noundef nonnull %.val15.i)
          to label %.noexc.i unwind label %bb.e, !noalias !6187

.noexc.i:                                         ; preds = %bb.c
  %i.h = invoke noundef nonnull ptr @_RNvMsH_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_9Predicate13expect_clause(ptr noundef nonnull %i.g)
          to label %bb.d unwind label %bb.e, !noalias !6187

bb.d:                                             ; preds = %.noexc.i
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store ptr %i.h, ptr %i.i, align 8, !noalias !6188
  %i.j = add i64 %.val10.i, 1                     ; 2 uses
  %i.k = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.e
  br i1 %i.l, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNtB2E_3map8map_foldBQ_BQ_uNCINvXs8_BS_NtBS_7ClausesINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtBU_8interner10DbInternerE15super_fold_withNtNtNtNtBU_5infer9canonical11instantiate21CanonicalInstantiatorE0NCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7y_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EINtB3j_3MapINtB2C_6CopiedBF_EB3J_EEE0E0E0E0EBW_.exit, label %bb.c

bb.e:                                             ; preds = %.noexc.i, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !6187
  resume { ptr, i32 } %i.m

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNtB2E_3map8map_foldBQ_BQ_uNCINvXs8_BS_NtBS_7ClausesINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtBU_8interner10DbInternerE15super_fold_withNtNtNtNtBU_5infer9canonical11instantiate21CanonicalInstantiatorE0NCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB7y_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EINtB3j_3MapINtB2C_6CopiedBF_EB3J_EEE0E0E0E0EBW_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.j, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !6187
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_INtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalized12UnnormalizedNtNtB1w_8interner10DbInternerB1s_EuNvMB3x_B3u_3newNCIB36_B3u_B1s_uNvB5b_13skip_norm_wipQQNCINvNvB2p_8for_each4callB1s_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6D_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainINtNtNtBb_5array4iter8IntoIterB1s_Kj9_EIB7A_IB7A_INtB38_3MapIB8H_BP_B59_EB5E_EIB7U_B1s_Kj2_EEINtNtNtB9_7sources4once4OnceB1s_EEEE0E0E0E0EB1y_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6213)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNtB2E_3map8map_foldBQ_INtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalized12UnnormalizedNtNtBU_8interner10DbInternerBQ_EuNvMB3I_B3F_3newNCIB3h_B3F_BQ_uNvB5k_13skip_norm_wipQQNCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6K_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EIB7G_IB7G_INtB3j_3MapIB8N_INtB2C_6CopiedBF_EB5i_EB5M_EIB81_BQ_Kj2_EEINtNtNtB1S_7sources4once4OnceBQ_EEEE0E0E0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %i.f = load ptr, ptr %2, align 8, !alias.scope !6214, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 9 uses
  %.promoted.i = load i64, ptr %i.h, align 8, !alias.scope !6215, !noalias !6214 ; 6 uses
  %.pre.i = load ptr, ptr %i.g, align 8, !alias.scope !6215, !noalias !6214 ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 192
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.promoted.i, 3                  ; 2 uses
  %i.j = getelementptr nuw i8, ptr %.pre.i, i64 %i.i ; 2 uses
  %scevgep2 = getelementptr i8, ptr %.pre.i, i64 %i.i
  %scevgep3 = getelementptr i8, ptr %scevgep2, i64 %i.d ; 2 uses
  %bound0 = icmp ult ptr %i.j, %i.g
  %bound1 = icmp ult ptr %i.h, %scevgep3
  %found.conflict = and i1 %bound0, %bound1
  %bound04 = icmp ult ptr %i.j, %1
  %bound15 = icmp ult ptr %0, %scevgep3
  %found.conflict6 = and i1 %bound04, %bound15
  %conflict.rdx = or i1 %found.conflict, %found.conflict6
  %bound07 = icmp ult ptr %i.h, %1
  %bound18 = icmp ult ptr %0, %i.g
  %found.conflict9 = and i1 %bound07, %bound18
  %conflict.rdx10 = or i1 %conflict.rdx, %found.conflict9
  br i1 %conflict.rdx10, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693948      ; 4 uses
  %i.k = add i64 %.promoted.i, %n.vec
  %i.l = add i64 %.promoted.i, 1
  %i.m = getelementptr [8 x i8], ptr %.pre.i, i64 %.promoted.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = phi i64 [ %i.l, %vector.ph ], [ %i.t, %vector.body ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x ptr>, ptr %i.o, align 8, !alias.scope !6216, !noalias !6213
  %wide.load11 = load <2 x ptr>, ptr %i.p, align 8, !alias.scope !6216, !noalias !6213
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6219)
  %i.q = getelementptr [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x ptr> %wide.load, ptr %i.q, align 8, !alias.scope !6220, !noalias !6221
  store <2 x ptr> %wide.load11, ptr %i.r, align 8, !alias.scope !6220, !noalias !6221
  %i.s = add i64 %i.n, 3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = add i64 %i.n, 4
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !6201

middle.block:                                     ; preds = %vector.body
  store i64 %i.s, ptr %i.h, align 8, !alias.scope !6222, !noalias !6223
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNtB2E_3map8map_foldBQ_INtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalized12UnnormalizedNtNtBU_8interner10DbInternerBQ_EuNvMB3I_B3F_3newNCIB3h_B3F_BQ_uNvB5k_13skip_norm_wipQQNCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6K_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EIB7G_IB7G_INtB3j_3MapIB8N_INtB2C_6CopiedBF_EB5i_EB5M_EIB81_BQ_Kj2_EEINtNtNtB1S_7sources4once4OnceBQ_EEEE0E0E0E0E0EBW_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.promoted.i, %vector.memcheck ], [ %.promoted.i, %bb.b ], [ %i.k, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.v = phi i64 [ %i.y, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.z, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val8.i.prol = load ptr, ptr %i.w, align 8, !noalias !6213, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6219)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.v
  store ptr %.val8.i.prol, ptr %i.x, align 8, !noalias !6224
  %i.y = add i64 %i.v, 1                          ; 3 uses
  store i64 %i.y, ptr %i.h, align 8, !alias.scope !6215, !noalias !6214
  %i.z = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !6202

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNtB2E_3map8map_foldBQ_INtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalized12UnnormalizedNtNtBU_8interner10DbInternerBQ_EuNvMB3I_B3F_3newNCIB3h_B3F_BQ_uNvB5k_13skip_norm_wipQQNCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6K_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EIB7G_IB7G_INtB3j_3MapIB8N_INtB2C_6CopiedBF_EB5i_EB5M_EIB81_BQ_Kj2_EEINtNtNtB1S_7sources4once4OnceBQ_EEEE0E0E0E0E0EBW_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ac = phi i64 [ %i.ar, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %.val8.i = load ptr, ptr %i.ad, align 8, !noalias !6213, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6219)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.ac
  store ptr %.val8.i, ptr %i.ae, align 8, !noalias !6224
  %i.af = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.af, ptr %i.h, align 8, !alias.scope !6215, !noalias !6214
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val8.i.1 = load ptr, ptr %i.ah, align 8, !noalias !6213, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6226)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.af
  store ptr %.val8.i.1, ptr %i.ai, align 8, !noalias !6227
  %i.aj = add i64 %i.ac, 2                        ; 2 uses
  store i64 %i.aj, ptr %i.h, align 8, !alias.scope !6228, !noalias !6229
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val8.i.2 = load ptr, ptr %i.al, align 8, !noalias !6213, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6231)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.aj
  store ptr %.val8.i.2, ptr %i.am, align 8, !noalias !6232
  %i.an = add i64 %i.ac, 3                        ; 2 uses
  store i64 %i.an, ptr %i.h, align 8, !alias.scope !6233, !noalias !6234
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.val8.i.3 = load ptr, ptr %i.ap, align 8, !noalias !6213, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6236)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.an
  store ptr %.val8.i.3, ptr %i.aq, align 8, !noalias !6237
  %i.ar = add i64 %i.ac, 4                        ; 2 uses
  store i64 %i.ar, ptr %i.h, align 8, !alias.scope !6238, !noalias !6239
  %i.as = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.e
  br i1 %i.at, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNtB2E_3map8map_foldBQ_INtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalized12UnnormalizedNtNtBU_8interner10DbInternerBQ_EuNvMB3I_B3F_3newNCIB3h_B3F_BQ_uNvB5k_13skip_norm_wipQQNCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6K_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EIB7G_IB7G_INtB3j_3MapIB8N_INtB2C_6CopiedBF_EB5i_EB5M_EIB81_BQ_Kj2_EEINtNtNtB1S_7sources4once4OnceBQ_EEEE0E0E0E0E0EBW_.exit, label %scalar.ph, !llvm.loop !6212

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNtB2E_3map8map_foldBQ_INtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12unnormalized12UnnormalizedNtNtBU_8interner10DbInternerBQ_EuNvMB3I_B3F_3newNCIB3h_B3F_BQ_uNvB5k_13skip_norm_wipQQNCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6K_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EIB7G_IB7G_INtB3j_3MapIB8N_INtB2C_6CopiedBF_EB5i_EB5M_EIB81_BQ_Kj2_EEINtNtNtB1S_7sources4once4OnceBQ_EEEE0E0E0E0E0EBW_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2p_8for_each4callB1s_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB3F_3VecB1s_E14extend_trustedINtNtB7_5chain5ChainINtNtNtBb_5array4iter8IntoIterB1s_Kj9_EBP_EE0E0EB1y_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0.copyload2 = ptrtoaddr ptr %.sroa.7.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB3P_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EINtB2C_6CopiedBF_EEE0E0E0EBW_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c                   ; 2 uses
  %i.e = lshr i64 %i.d, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3
  %i.g = add i64 %i.f, %.sroa.7.0.copyload2
  %i.h = sub i64 %i.c, %i.g
  %diff.check = icmp ugt i64 %i.h, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693948      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <2 x ptr>, ptr %i.k, align 8, !noalias !6251
  %wide.load3 = load <2 x ptr>, ptr %i.l, align 8, !noalias !6251
  %i.m = getelementptr [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <2 x ptr> %wide.load, ptr %i.m, align 8, !noalias !6252
  store <2 x ptr> %wide.load3, ptr %i.n, align 8, !noalias !6252
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !6248

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB3P_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EINtB2C_6CopiedBF_EEE0E0E0EBW_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load ptr, ptr %i.q, align 8, !noalias !6251, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.p
  store ptr %.val15.i.prol, ptr %i.r, align 8, !noalias !6252
  %i.s = add i64 %i.p, 1                          ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !6249

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.ph, %i.e
  %i.v = icmp ugt i64 %i.u, -4
  br i1 %i.v, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters6copied9copy_foldBQ_uNCINvNvB1M_8for_each4callBQ_NCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB3P_3VecBQ_E14extend_trustedINtNtB2E_5chain5ChainINtNtNtBb_5array4iter8IntoIterBQ_Kj9_EINtB2C_6CopiedBF_EEE0E0E0EBW_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.al, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.am, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
end_hunk_0
