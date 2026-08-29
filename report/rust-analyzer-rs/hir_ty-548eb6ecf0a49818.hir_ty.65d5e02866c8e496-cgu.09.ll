Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.09?download=true
inline.NumInlined: 5162
inline.NumDeleted: 2096
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13normalizes_to12opaque_typesINtNtB2W_9eval_ctxt8EvalCtxtNtNtB1M_6solver13SolverContextNtNtB1M_8interner10DbInternerE21normalize_opaque_types_0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_:bb.a
  %.sroa.3.0 = phi ptr [ undef, %bb.a ], [ %i.m, %bb.d ], [ null, %bb.e ], [ %i.x, %bb.g ], [ %i.ae, %bb.h ], [ null, %bb.f ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.f ]
  %i.af = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ag = insertvalue { i64, ptr } %i.af, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.ag
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEENCINvXs15_B1K_NtB1K_3TysINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB1M_8interner10DbInternerE13try_fold_withINtNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits21ReplaceProjectionWithB3P_NtNtB1M_6solver13SolverContextEE0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !align !1504, !noundef !5
  %i.c = tail call noundef ptr @_RNvXs_NtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traitsINtB4_21ReplaceProjectionWithNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1Y_6solver13SolverContextEINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold18FallibleTypeFolderB1U_E11try_fold_tyB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.c, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.d = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, ptr } %i.d, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEENCINvXs15_B1K_NtB1K_3TysINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB1M_8interner10DbInternerE13try_fold_withNtNtB1M_9normalize19NormalizationFolderE0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !align !1504, !noundef !5
  tail call void @_RNvXs_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9normalizeNtB4_19NormalizationFolderINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold18FallibleTypeFolderNtNtB6_8interner10DbInternerE11try_fold_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %.val, ptr noundef nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEENCINvXs15_B1K_NtB1K_3TysINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB1M_8interner10DbInternerE13try_fold_withNtNtNtB1O_3mir16monomorphization6FillerE0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !align !1504, !noundef !5
  tail call void @_RNvXNtNtCs8K4cjrcxBsw_6hir_ty3mir16monomorphizationNtB2_6FillerINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold18FallibleTypeFolderNtNtNtB6_11next_solver8interner10DbInternerE11try_fold_ty(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(568) %.val, ptr noundef nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 -2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEENCINvXs1d_B1K_NtB1K_6ConstsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB1M_8interner10DbInternerE13try_fold_withINtNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits21ReplaceProjectionWithB3Z_NtNtB1M_6solver13SolverContextEE0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !align !1504, !noundef !5
  %i.c = tail call noundef ptr @_RNvYINtNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits21ReplaceProjectionWithNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB1T_6solver13SolverContextEINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold18FallibleTypeFolderB1P_E14try_fold_constB1V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.c, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.d = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, ptr } %i.d, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEENCINvXs1d_B1K_NtB1K_6ConstsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB1M_8interner10DbInternerE13try_fold_withNtNtB1M_9normalize19NormalizationFolderE0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !align !1504, !noundef !5
  tail call void @_RNvXs_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9normalizeNtB4_19NormalizationFolderINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold18FallibleTypeFolderNtNtB6_8interner10DbInternerE14try_fold_const(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %.val, ptr noundef nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEENCINvXs1d_B1K_NtB1K_6ConstsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB1M_8interner10DbInternerE13try_fold_withNtNtNtB1O_3mir16monomorphization6FillerE0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !align !1504, !noundef !5
  tail call void @_RNvXNtNtCs8K4cjrcxBsw_6hir_ty3mir16monomorphizationNtB2_6FillerINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold18FallibleTypeFolderNtNtNtB6_11next_solver8interner10DbInternerE14try_fold_const(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(568) %.val, ptr noundef nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 -2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternEENCINvXs30_B1K_NtB1K_7PatListINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtB1K_10DbInternerE13try_fold_withINtNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits21ReplaceProjectionWithB44_NtNtB1M_6solver13SolverContextEE0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !align !1504, !noundef !5
  %i.c = tail call noundef ptr @_RINvXse_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB6_7PatternINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtB6_10DbInternerE13try_fold_withINtNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits21ReplaceProjectionWithB21_NtNtB8_6solver13SolverContextEEBa_(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.c, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.d = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, ptr } %i.d, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternEENCINvXs30_B1K_NtB1K_7PatListINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtB1K_10DbInternerE13try_fold_withNtNtB1M_9normalize19NormalizationFolderE0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !align !1504, !noundef !5
  tail call void @_RINvXse_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB6_7PatternINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtB6_10DbInternerE13try_fold_withNtNtB8_9normalize19NormalizationFolderEBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %.val)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternEENCINvXs30_B1K_NtB1K_7PatListINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtB1K_10DbInternerE13try_fold_withNtNtNtB1O_3mir16monomorphization6FillerE0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner7PatternEENtNtNtB8_6traits8iterator8Iterator4nextB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !align !1504, !noundef !5
  tail call void @_RINvXse_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB6_7PatternINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtB6_10DbInternerE13try_fold_withNtNtNtBa_3mir16monomorphization6FillerEBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(568) %.val)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 -2, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB26_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3U_7ty_kind5FnSigNtNtB2W_8interner10DbInternerEINtB3S_6RelateB4X_E6relateINtNtB3S_15solver_relating14SolverRelatingNtNtB2W_5infer9InferCtxtB4X_EE0EINtNtNtB9_7sources4once4OnceTTB2S_B2S_EbEEENCB3L_s_0EENCB3L_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2Y_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) initializes((0, 1)) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %.sroa.77 = alloca [7 x i8], align 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10328)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10331)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10334)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !10337, !noalias !10341, !noundef !5
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !10345, !noalias !10354, !noundef !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !10345, !noalias !10354, !noundef !5
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.e, align 8, !alias.scope !10337, !noalias !10341
  br label %bb.d

.thread.i.i:                                      ; preds = %bb.b
  %i.l = add nuw i64 %i.h, 1
  store i64 %i.l, ptr %i.g, align 8, !alias.scope !10345, !noalias !10354
  %i.m = tail call noundef nonnull ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %i.h), !noalias !10354
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = tail call noundef nonnull ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, i64 noundef %i.h), !noalias !10354
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10357)
  %.val29.i.i = load ptr, ptr %i.d, align 8, !alias.scope !10360, !noalias !10361, !nonnull !5, !noundef !5
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10362)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !range !10365, !alias.scope !10366, !noalias !10369, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.q, -1
  br i1 %.not.i.i.i.i.i, label %bb.l, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1v_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3j_7ty_kind5FnSigNtNtB2l_8interner10DbInternerEINtB3h_6RelateB4m_E6relateINtNtB3h_15solver_relating14SolverRelatingNtNtB2l_5infer9InferCtxtB4m_EE0EINtNtNtB8_7sources4once4OnceTTB2h_B2h_EbEEENtNtNtB8_6traits8iterator8Iterator4nextB2n_.exit.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1v_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3j_7ty_kind5FnSigNtNtB2l_8interner10DbInternerEINtB3h_6RelateB4m_E6relateINtNtB3h_15solver_relating14SolverRelatingNtNtB2l_5infer9InferCtxtB4m_EE0EINtNtNtB8_7sources4once4OnceTTB2h_B2h_EbEEENtNtNtB8_6traits8iterator8Iterator4nextB2n_.exit.i.i: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10371)
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.r, align 8, !alias.scope !10374, !noalias !10376 ; 3 uses
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.5.0.copyload3.i.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !10374, !noalias !10376 ; 3 uses
  store i8 2, ptr %i.p, align 8, !alias.scope !10377, !noalias !10378
  %.not.i.i = icmp eq i8 %i.q, 2
  br i1 %.not.i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1v_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3j_7ty_kind5FnSigNtNtB2l_8interner10DbInternerEINtB3h_6RelateB4m_E6relateINtNtB3h_15solver_relating14SolverRelatingNtNtB2l_5infer9InferCtxtB4m_EE0EINtNtNtB8_7sources4once4OnceTTB2h_B2h_EbEEENtNtNtB8_6traits8iterator8Iterator4nextB2n_.exit.i.i
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !10360, !noalias !10361, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload1.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload3.i.i) ]
  %i.s = trunc nuw i8 %i.q to i1
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.i.i
  %.val32.i.i = phi ptr [ %.val29.i.i, %.thread.i.i ], [ %.val.i.i, %bb.e ]
  %.sroa.5.02331.i.i = phi ptr [ %i.o, %.thread.i.i ], [ %.sroa.5.0.copyload3.i.i, %bb.e ]
  %.sroa.0.02430.i.i = phi ptr [ %i.m, %.thread.i.i ], [ %.sroa.0.0.copyload1.i.i, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10379
  store i32 0, ptr %i.a, align 8, !noalias !10379
  call void @_RINvXs0_NtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate15solver_relatingINtB6_14SolverRelatingNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1x_8interner10DbInternerEINtB8_12TypeRelationB2n_E20relate_with_varianceNtNtB1x_2ty2TyEB1z_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %.val32.i.i, i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull %.sroa.0.02430.i.i, ptr noundef nonnull %.sroa.5.02331.i.i), !noalias !10383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10379
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1A_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3o_7ty_kind5FnSigNtNtB2q_8interner10DbInternerEINtB3m_6RelateB4r_E6relateINtNtB3m_15solver_relating14SolverRelatingNtNtB2q_5infer9InferCtxtB4r_EE0EINtNtNtB9_7sources4once4OnceTTB2m_B2m_EbEEENCB3f_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.i

bb.g:                                             ; preds = %bb.e
  call void @_RINvYINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate15solver_relating14SolverRelatingNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1r_8interner10DbInternerEINtB8_12TypeRelationB2h_E6relateNtNtB1r_2ty2TyEB1t_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %.val.i.i, ptr noundef nonnull %.sroa.0.0.copyload1.i.i, ptr noundef nonnull %.sroa.5.0.copyload3.i.i), !noalias !10384
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1A_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3o_7ty_kind5FnSigNtNtB2q_8interner10DbInternerEINtB3m_6RelateB4r_E6relateINtNtB3m_15solver_relating14SolverRelatingNtNtB2q_5infer9InferCtxtB4r_EE0EINtNtNtB9_7sources4once4OnceTTB2m_B2m_EbEEENCB3f_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.i

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1A_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3o_7ty_kind5FnSigNtNtB2q_8interner10DbInternerEINtB3m_6RelateB4r_E6relateINtNtB3m_15solver_relating14SolverRelatingNtNtB2q_5infer9InferCtxtB4r_EE0EINtNtNtB9_7sources4once4OnceTTB2m_B2m_EbEEENCB3f_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.copyload1.i = load i8, ptr %i.b, align 8, !noalias !10384 ; 4 uses
  %.not.i = icmp eq i8 %.sroa.0.0.copyload1.i, -2
  br i1 %.not.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1A_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3o_7ty_kind5FnSigNtNtB2q_8interner10DbInternerEINtB3m_6RelateB4r_E6relateINtNtB3m_15solver_relating14SolverRelatingNtNtB2q_5infer9InferCtxtB4r_EE0EINtNtNtB9_7sources4once4OnceTTB2m_B2m_EbEEENCB3f_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.77)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.77, ptr noundef nonnull align 1 dereferenceable(7) %i.c, i64 7, i1 false)
  %.sroa.7.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.7.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.sroa.4.0.copyload = load i64, ptr %.sroa.7.sroa.4.0..sroa_idx, align 8, !noalias !10328
  %2 = load <2 x i64>, ptr %.sroa.7.sroa.4.0..sroa_idx, align 8, !noalias !10328
  %3 = load <2 x i64>, ptr %.sroa.7.sroa.5.0..sroa_idx, align 8, !noalias !10328 ; 3 uses
  %.sroa.7.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.sroa.7.0.copyload = load i64, ptr %.sroa.7.sroa.7.0..sroa_idx, align 8, !noalias !10328
  %i.t = load i64, ptr %1, align 8, !alias.scope !10328, !noalias !10383, !noundef !5 ; 4 uses
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %1, align 8, !alias.scope !10328, !noalias !10383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  switch i8 %.sroa.0.0.copyload1.i, label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit [
    i8 13, label %bb.j
    i8 4, label %bb.i
    i8 5, label %bb.i
    i8 12, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit

bb.j:                                             ; preds = %bb.h
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit

bb.k:                                             ; preds = %bb.h
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit

_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit: ; preds = %bb.j, %bb.h, %bb.i, %bb.k
  %.sroa.79.0 = phi i64 [ %.sroa.7.sroa.4.0.copyload, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ], [ %i.t, %bb.k ]
  %.sroa.05.0 = phi i8 [ %.sroa.0.0.copyload1.i, %bb.h ], [ 5, %bb.i ], [ %.sroa.0.0.copyload1.i, %bb.j ], [ 13, %bb.k ]
  %4 = phi <2 x i64> [ %3, %bb.h ], [ %3, %bb.i ], [ %3, %bb.j ], [ %2, %bb.k ]
  store i8 %.sroa.05.0, ptr %0, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.77.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.77, i64 7, i1 false)
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.79.0, ptr %.sroa.79.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %4, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7.sroa.7.0.copyload, ptr %.sroa.15.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.77)
  br label %bb.m

bb.l:                                             ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1A_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3o_7ty_kind5FnSigNtNtB2q_8interner10DbInternerEINtB3m_6RelateB4r_E6relateINtNtB3m_15solver_relating14SolverRelatingNtNtB2q_5infer9InferCtxtB4r_EE0EINtNtNtB9_7sources4once4OnceTTB2m_B2m_EbEEENCB3f_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1v_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3j_7ty_kind5FnSigNtNtB2l_8interner10DbInternerEINtB3h_6RelateB4m_E6relateINtNtB3h_15solver_relating14SolverRelatingNtNtB2l_5infer9InferCtxtB4m_EE0EINtNtNtB8_7sources4once4OnceTTB2h_B2h_EbEEENtNtNtB8_6traits8iterator8Iterator4nextB2n_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 -2, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateINtNtB8_15solver_relating14SolverRelatingNtNtB1g_5infer9InferCtxtB1c_EEs0_0B1i_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB26_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3U_7ty_kind5FnSigNtNtB2W_8interner10DbInternerEINtB3S_6RelateB4X_E6relateNtNtNtNtB2W_5infer6relate10generalize11GeneralizerE0EINtNtNtB9_7sources4once4OnceTTB2S_B2S_EbEEENCB3L_s_0EENCB3L_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2Y_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) initializes((0, 1)) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 10 uses
  %.sroa.77 = alloca [7 x i8], align 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10385)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10388)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10391)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !10394, !noalias !10398, !noundef !5
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !10402, !noalias !10411, !noundef !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !10402, !noalias !10411, !noundef !5
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.e, align 8, !alias.scope !10394, !noalias !10398
  br label %bb.d

.thread.i.i:                                      ; preds = %bb.b
  %i.l = add nuw i64 %i.h, 1
  store i64 %i.l, ptr %i.g, align 8, !alias.scope !10402, !noalias !10411
  %i.m = tail call noundef nonnull ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %i.h), !noalias !10411
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = tail call noundef nonnull ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, i64 noundef %i.h), !noalias !10411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10414)
  %.val29.i.i = load ptr, ptr %i.d, align 8, !alias.scope !10417, !noalias !10418, !nonnull !5, !noundef !5
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10419)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !range !10365, !alias.scope !10422, !noalias !10425, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.q, -1
  br i1 %.not.i.i.i.i.i, label %bb.l, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1v_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3j_7ty_kind5FnSigNtNtB2l_8interner10DbInternerEINtB3h_6RelateB4m_E6relateNtNtNtNtB2l_5infer6relate10generalize11GeneralizerE0EINtNtNtB8_7sources4once4OnceTTB2h_B2h_EbEEENtNtNtB8_6traits8iterator8Iterator4nextB2n_.exit.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1v_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3j_7ty_kind5FnSigNtNtB2l_8interner10DbInternerEINtB3h_6RelateB4m_E6relateNtNtNtNtB2l_5infer6relate10generalize11GeneralizerE0EINtNtNtB8_7sources4once4OnceTTB2h_B2h_EbEEENtNtNtB8_6traits8iterator8Iterator4nextB2n_.exit.i.i: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10427)
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.r, align 8, !alias.scope !10430, !noalias !10432 ; 3 uses
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.5.0.copyload3.i.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !10430, !noalias !10432 ; 3 uses
  store i8 2, ptr %i.p, align 8, !alias.scope !10433, !noalias !10434
  %.not.i.i = icmp eq i8 %i.q, 2
  br i1 %.not.i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1v_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3j_7ty_kind5FnSigNtNtB2l_8interner10DbInternerEINtB3h_6RelateB4m_E6relateNtNtNtNtB2l_5infer6relate10generalize11GeneralizerE0EINtNtNtB8_7sources4once4OnceTTB2h_B2h_EbEEENtNtNtB8_6traits8iterator8Iterator4nextB2n_.exit.i.i
  %.val.i.i = load ptr, ptr %i.d, align 8, !alias.scope !10417, !noalias !10418, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload1.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload3.i.i) ]
  %i.s = trunc nuw i8 %i.q to i1
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.i.i
  %.val32.i.i = phi ptr [ %.val29.i.i, %.thread.i.i ], [ %.val.i.i, %bb.e ]
  %.sroa.5.02331.i.i = phi ptr [ %i.o, %.thread.i.i ], [ %.sroa.5.0.copyload3.i.i, %bb.e ]
  %.sroa.0.02430.i.i = phi ptr [ %i.m, %.thread.i.i ], [ %.sroa.0.0.copyload1.i.i, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10435
  store i32 0, ptr %i.a, align 8, !noalias !10435
  call void @_RINvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate10generalizeNtB6_11GeneralizerINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate12TypeRelationNtNtBc_8interner10DbInternerE20relate_with_varianceNtNtBc_2ty2TyEBe_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.val32.i.i, i8 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %.sroa.0.02430.i.i, ptr noundef nonnull %.sroa.5.02331.i.i), !noalias !10439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10435
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1A_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3o_7ty_kind5FnSigNtNtB2q_8interner10DbInternerEINtB3m_6RelateB4r_E6relateNtNtNtNtB2q_5infer6relate10generalize11GeneralizerE0EINtNtNtB9_7sources4once4OnceTTB2m_B2m_EbEEENCB3f_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.i

bb.g:                                             ; preds = %bb.e
  call void @_RINvYNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate10generalize11GeneralizerINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate12TypeRelationNtNtBb_8interner10DbInternerE6relateNtNtBb_2ty2TyEBd_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.val.i.i, ptr noundef nonnull %.sroa.0.0.copyload1.i.i, ptr noundef nonnull %.sroa.5.0.copyload3.i.i), !noalias !10440
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1A_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3o_7ty_kind5FnSigNtNtB2q_8interner10DbInternerEINtB3m_6RelateB4r_E6relateNtNtNtNtB2q_5infer6relate10generalize11GeneralizerE0EINtNtNtB9_7sources4once4OnceTTB2m_B2m_EbEEENCB3f_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.i

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1A_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3o_7ty_kind5FnSigNtNtB2q_8interner10DbInternerEINtB3m_6RelateB4r_E6relateNtNtNtNtB2q_5infer6relate10generalize11GeneralizerE0EINtNtNtB9_7sources4once4OnceTTB2m_B2m_EbEEENCB3f_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.copyload1.i = load i8, ptr %i.b, align 8, !noalias !10440 ; 4 uses
  %.not.i = icmp eq i8 %.sroa.0.0.copyload1.i, -2
  br i1 %.not.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1A_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3o_7ty_kind5FnSigNtNtB2q_8interner10DbInternerEINtB3m_6RelateB4r_E6relateNtNtNtNtB2q_5infer6relate10generalize11GeneralizerE0EINtNtNtB9_7sources4once4OnceTTB2m_B2m_EbEEENCB3f_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.77)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.77, ptr noundef nonnull align 1 dereferenceable(7) %i.c, i64 7, i1 false)
  %.sroa.7.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.7.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.sroa.4.0.copyload = load i64, ptr %.sroa.7.sroa.4.0..sroa_idx, align 8, !noalias !10385
  %2 = load <2 x i64>, ptr %.sroa.7.sroa.4.0..sroa_idx, align 8, !noalias !10385
  %3 = load <2 x i64>, ptr %.sroa.7.sroa.5.0..sroa_idx, align 8, !noalias !10385 ; 3 uses
  %.sroa.7.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7.sroa.7.0.copyload = load i64, ptr %.sroa.7.sroa.7.0..sroa_idx, align 8, !noalias !10385
  %i.t = load i64, ptr %1, align 8, !alias.scope !10385, !noalias !10439, !noundef !5 ; 4 uses
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %1, align 8, !alias.scope !10385, !noalias !10439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  switch i8 %.sroa.0.0.copyload1.i, label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit [
    i8 13, label %bb.j
    i8 4, label %bb.i
    i8 5, label %bb.i
    i8 12, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit

bb.j:                                             ; preds = %bb.h
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit

bb.k:                                             ; preds = %bb.h
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit

_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit: ; preds = %bb.j, %bb.h, %bb.i, %bb.k
  %.sroa.79.0 = phi i64 [ %.sroa.7.sroa.4.0.copyload, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ], [ %i.t, %bb.k ]
  %.sroa.05.0 = phi i8 [ %.sroa.0.0.copyload1.i, %bb.h ], [ 5, %bb.i ], [ %.sroa.0.0.copyload1.i, %bb.j ], [ 13, %bb.k ]
  %4 = phi <2 x i64> [ %3, %bb.h ], [ %3, %bb.i ], [ %3, %bb.j ], [ %2, %bb.k ]
  store i8 %.sroa.05.0, ptr %0, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.77.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.77, i64 7, i1 false)
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.79.0, ptr %.sroa.79.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %4, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7.sroa.7.0.copyload, ptr %.sroa.15.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.77)
  br label %bb.m

bb.l:                                             ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1A_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3o_7ty_kind5FnSigNtNtB2q_8interner10DbInternerEINtB3m_6RelateB4r_E6relateNtNtNtNtB2q_5infer6relate10generalize11GeneralizerE0EINtNtNtB9_7sources4once4OnceTTB2m_B2m_EbEEENCB3f_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1v_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3j_7ty_kind5FnSigNtNtB2l_8interner10DbInternerEINtB3h_6RelateB4m_E6relateNtNtNtNtB2l_5infer6relate10generalize11GeneralizerE0EINtNtNtB8_7sources4once4OnceTTB2h_B2h_EbEEENtNtNtB8_6traits8iterator8Iterator4nextB2n_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 -2, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate10generalize11GeneralizerEs0_0B1i_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateIBN_INtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB26_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3U_7ty_kind5FnSigNtNtB2W_8interner10DbInternerEINtB3S_6RelateB4X_E6relateNtNtNtNtB2W_5infer6relate7lattice9LatticeOpE0EINtNtNtB9_7sources4once4OnceTTB2S_B2S_EbEEENCB3L_s_0EENCB3L_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2Y_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) initializes((0, 1)) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 10 uses
  %.sroa.77 = alloca [7 x i8], align 1            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10441)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10444)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !10447, !noalias !10453, !noundef !5
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !10457, !noalias !10466, !noundef !5 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !10457, !noalias !10466, !noundef !5
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.d, align 8, !alias.scope !10447, !noalias !10453
  br label %bb.d

.thread.i.i:                                      ; preds = %bb.b
  %i.k = add nuw i64 %i.g, 1
  store i64 %i.k, ptr %i.f, align 8, !alias.scope !10457, !noalias !10466
  %i.l = tail call noundef nonnull ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d, i64 noundef %i.g), !noalias !10466
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = tail call noundef nonnull ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef %i.g), !noalias !10466
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10469)
  %.val29.i.i = load ptr, ptr %i.c, align 8, !alias.scope !10472, !noalias !10473, !nonnull !5, !noundef !5
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10474)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !range !10365, !alias.scope !10477, !noalias !10480, !noundef !5 ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.p, -1
  br i1 %.not.i.i.i.i.i, label %bb.l, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1v_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3j_7ty_kind5FnSigNtNtB2l_8interner10DbInternerEINtB3h_6RelateB4m_E6relateNtNtNtNtB2l_5infer6relate7lattice9LatticeOpE0EINtNtNtB8_7sources4once4OnceTTB2h_B2h_EbEEENtNtNtB8_6traits8iterator8Iterator4nextB2n_.exit.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1v_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3j_7ty_kind5FnSigNtNtB2l_8interner10DbInternerEINtB3h_6RelateB4m_E6relateNtNtNtNtB2l_5infer6relate7lattice9LatticeOpE0EINtNtNtB8_7sources4once4OnceTTB2h_B2h_EbEEENtNtNtB8_6traits8iterator8Iterator4nextB2n_.exit.i.i: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10482)
  %.sroa.0.0.copyload1.i.i = load ptr, ptr %i.q, align 8, !alias.scope !10485, !noalias !10487 ; 3 uses
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.5.0.copyload3.i.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !alias.scope !10485, !noalias !10487 ; 3 uses
  store i8 2, ptr %i.o, align 8, !alias.scope !10488, !noalias !10489
  %.not.i.i = icmp eq i8 %i.p, 2
  br i1 %.not.i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1v_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3j_7ty_kind5FnSigNtNtB2l_8interner10DbInternerEINtB3h_6RelateB4m_E6relateNtNtNtNtB2l_5infer6relate7lattice9LatticeOpE0EINtNtNtB8_7sources4once4OnceTTB2h_B2h_EbEEENtNtNtB8_6traits8iterator8Iterator4nextB2n_.exit.i.i
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !10472, !noalias !10473, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload1.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload3.i.i) ]
  %i.r = trunc nuw i8 %i.p to i1
  br i1 %i.r, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.i.i
  %.val32.i.i = phi ptr [ %.val29.i.i, %.thread.i.i ], [ %.val.i.i, %bb.e ] ; 2 uses
  %.sroa.5.02331.i.i = phi ptr [ %i.n, %.thread.i.i ], [ %.sroa.5.0.copyload3.i.i, %bb.e ]
  %.sroa.0.02430.i.i = phi ptr [ %i.l, %.thread.i.i ], [ %.sroa.0.0.copyload1.i.i, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %.val32.i.i, i64 128 ; 4 uses
  %i.t = load i8, ptr %i.s, align 8, !range !1517, !alias.scope !10490, !noalias !10493, !noundef !5
  %not..i.i.i.i = xor i8 %i.t, 1
  store i8 %not..i.i.i.i, ptr %i.s, align 8, !alias.scope !10490, !noalias !10493
  call void @_RINvXs9_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB6_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate6RelateNtNtB8_8interner10DbInternerE6relateNtNtNtNtB8_5infer6relate7lattice9LatticeOpEBa_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %.val32.i.i, ptr noundef nonnull %.sroa.0.02430.i.i, ptr noundef nonnull %.sroa.5.02331.i.i), !noalias !10498
  %i.u = load i8, ptr %i.s, align 8, !range !1517, !alias.scope !10490, !noalias !10493, !noundef !5
  %not.25.i.i.i.i = xor i8 %i.u, 1
  store i8 %not.25.i.i.i.i, ptr %i.s, align 8, !alias.scope !10490, !noalias !10493
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1A_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3o_7ty_kind5FnSigNtNtB2q_8interner10DbInternerEINtB3m_6RelateB4r_E6relateNtNtNtNtB2q_5infer6relate7lattice9LatticeOpE0EINtNtNtB9_7sources4once4OnceTTB2m_B2m_EbEEENCB3f_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.i

bb.g:                                             ; preds = %bb.e
  call void @_RINvXs9_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB6_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate6RelateNtNtB8_8interner10DbInternerE6relateNtNtNtNtB8_5infer6relate7lattice9LatticeOpEBa_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %.val.i.i, ptr noundef nonnull %.sroa.0.0.copyload1.i.i, ptr noundef nonnull %.sroa.5.0.copyload3.i.i), !noalias !10499
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1A_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3o_7ty_kind5FnSigNtNtB2q_8interner10DbInternerEINtB3m_6RelateB4r_E6relateNtNtNtNtB2q_5infer6relate7lattice9LatticeOpE0EINtNtNtB9_7sources4once4OnceTTB2m_B2m_EbEEENCB3f_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.i

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1A_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3o_7ty_kind5FnSigNtNtB2q_8interner10DbInternerEINtB3m_6RelateB4r_E6relateNtNtNtNtB2q_5infer6relate7lattice9LatticeOpE0EINtNtNtB9_7sources4once4OnceTTB2m_B2m_EbEEENCB3f_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.0.copyload1.i = load i8, ptr %i.a, align 8, !noalias !10499 ; 4 uses
  %.not.i = icmp eq i8 %.sroa.0.0.copyload1.i, -2
  br i1 %.not.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1A_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3o_7ty_kind5FnSigNtNtB2q_8interner10DbInternerEINtB3m_6RelateB4r_E6relateNtNtNtNtB2q_5infer6relate7lattice9LatticeOpE0EINtNtNtB9_7sources4once4OnceTTB2m_B2m_EbEEENCB3f_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.77)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.77, ptr noundef nonnull align 1 dereferenceable(7) %i.b, i64 7, i1 false)
  %.sroa.7.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.7.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.7.sroa.4.0.copyload = load i64, ptr %.sroa.7.sroa.4.0..sroa_idx, align 8, !noalias !10441
  %2 = load <2 x i64>, ptr %.sroa.7.sroa.4.0..sroa_idx, align 8, !noalias !10441
  %3 = load <2 x i64>, ptr %.sroa.7.sroa.5.0..sroa_idx, align 8, !noalias !10441 ; 3 uses
  %.sroa.7.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.sroa.7.0.copyload = load i64, ptr %.sroa.7.sroa.7.0..sroa_idx, align 8, !noalias !10441
  %i.v = load i64, ptr %1, align 8, !alias.scope !10441, !noalias !10498, !noundef !5 ; 4 uses
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %1, align 8, !alias.scope !10441, !noalias !10498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  switch i8 %.sroa.0.0.copyload1.i, label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit [
    i8 13, label %bb.j
    i8 4, label %bb.i
    i8 5, label %bb.i
    i8 12, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit

bb.j:                                             ; preds = %bb.h
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit

bb.k:                                             ; preds = %bb.h
  br label %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit

_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit: ; preds = %bb.j, %bb.h, %bb.i, %bb.k
  %.sroa.79.0 = phi i64 [ %.sroa.7.sroa.4.0.copyload, %bb.h ], [ %i.v, %bb.i ], [ %i.v, %bb.j ], [ %i.v, %bb.k ]
  %.sroa.05.0 = phi i8 [ %.sroa.0.0.copyload1.i, %bb.h ], [ 5, %bb.i ], [ %.sroa.0.0.copyload1.i, %bb.j ], [ 13, %bb.k ]
  %4 = phi <2 x i64> [ %3, %bb.h ], [ %3, %bb.i ], [ %3, %bb.j ], [ %2, %bb.k ]
  store i8 %.sroa.05.0, ptr %0, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.77.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.77, i64 7, i1 false)
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.79.0, ptr %.sroa.79.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %4, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.7.sroa.7.0.copyload, ptr %.sroa.15.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.77)
  br label %bb.m

bb.l:                                             ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1A_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3o_7ty_kind5FnSigNtNtB2q_8interner10DbInternerEINtB3m_6RelateB4r_E6relateNtNtNtNtB2q_5infer6relate7lattice9LatticeOpE0EINtNtNtB9_7sources4once4OnceTTB2m_B2m_EbEEENCB3f_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB2s_.exit.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_3zip3ZipINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyEEB1v_ENCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB3j_7ty_kind5FnSigNtNtB2l_8interner10DbInternerEINtB3h_6RelateB4m_E6relateNtNtNtNtB2l_5infer6relate7lattice9LatticeOpE0EINtNtNtB8_7sources4once4OnceTTB2h_B2h_EbEEENtNtNtB8_6traits8iterator8Iterator4nextB2n_.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 -2, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNCINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtBa_7ty_kind5FnSigNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB8_6RelateB1c_E6relateNtNtNtNtB1g_5infer6relate7lattice9LatticeOpEs0_0B1i_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEEB1E_EENCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate26relate_args_with_variancesNtNtB2u_8interner10DbInternerINtNtB3G_15solver_relating14SolverRelatingNtNtB2u_5infer9InferCtxtB4Q_EE0ENtNtNtB9_6traits8iterator8Iterator4nextB2w_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !10500, !noalias !10507, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !10500, !noalias !10507, !noundef !5
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw i64 %i.c, 1
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !10500, !noalias !10507
  %i.h = tail call noundef nonnull ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.c), !noalias !10507
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = tail call noundef nonnull ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %i.c), !noalias !10507
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !10509, !noalias !10507, !noundef !5 ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !alias.scope !10509, !noalias !10507
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load ptr, ptr %i.n, align 8, !nonnull !5, !align !1504, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val1 = load ptr, ptr %i.o, align 8            ; 2 uses
  %i.p = load ptr, ptr %.val, align 8, !noalias !10510, !nonnull !5, !noundef !5
  %i.q = tail call noundef i8 @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner11VariancesOfNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent9SliceLike3getB8_(ptr noundef nonnull %i.p, i64 noundef %i.l), !noalias !10510 ; 2 uses
  %.not.i = icmp eq i8 %i.q, -1
  br i1 %.not.i, label %bb.c, label %_RNCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate26relate_args_with_variancesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB4_15solver_relating14SolverRelatingNtNtB1i_5infer9InferCtxtB1e_EE0B1k_.exit, !prof !164

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #44, !noalias !10510
  unreachable

_RNCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate26relate_args_with_variancesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB4_15solver_relating14SolverRelatingNtNtB1i_5infer9InferCtxtB1e_EE0B1k_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10510
  store i32 0, ptr %i.a, align 8, !noalias !10510
  call void @_RINvXs0_NtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate15solver_relatingINtB6_14SolverRelatingNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1x_8interner10DbInternerEINtB8_12TypeRelationB2n_E20relate_with_varianceNtNtB1x_11generic_arg10GenericArgEB1z_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %.val1, i8 noundef %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10510
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i8 -2, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate26relate_args_with_variancesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB4_15solver_relating14SolverRelatingNtNtB1i_5infer9InferCtxtB1e_EE0B1k_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEEB1E_EENCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate26relate_args_with_variancesNtNtB2u_8interner10DbInternerNtNtNtNtB2u_5infer6relate10generalize11GeneralizerE0ENtNtNtB9_6traits8iterator8Iterator4nextB2w_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !10514, !noalias !10521, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !10514, !noalias !10521, !noundef !5
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nuw i64 %i.c, 1
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !10514, !noalias !10521
  %i.h = tail call noundef nonnull ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.c), !noalias !10521
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = tail call noundef nonnull ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, i64 noundef %i.c), !noalias !10521
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !10523, !noalias !10521, !noundef !5 ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.k, align 8, !alias.scope !10523, !noalias !10521
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load ptr, ptr %i.n, align 8, !nonnull !5, !align !1504, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val1 = load ptr, ptr %i.o, align 8            ; 2 uses
  %i.p = load ptr, ptr %.val, align 8, !noalias !10524, !nonnull !5, !noundef !5
  %i.q = tail call noundef i8 @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner11VariancesOfNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent9SliceLike3getB8_(ptr noundef nonnull %i.p, i64 noundef %i.l), !noalias !10524 ; 2 uses
  %.not.i = icmp eq i8 %i.q, -1
  br i1 %.not.i, label %bb.c, label %_RNCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate26relate_args_with_variancesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtNtNtB1i_5infer6relate10generalize11GeneralizerE0B1k_.exit, !prof !164

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #44, !noalias !10524
  unreachable

_RNCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate26relate_args_with_variancesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtNtNtB1i_5infer6relate10generalize11GeneralizerE0B1k_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10524
  store i32 0, ptr %i.a, align 8, !noalias !10524
  call void @_RINvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate10generalizeNtB6_11GeneralizerINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate12TypeRelationNtNtBc_8interner10DbInternerE20relate_with_varianceNtNtBc_11generic_arg10GenericArgEBe_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.val1, i8 noundef %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10524
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i8 -2, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate26relate_args_with_variancesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtNtNtB1i_5infer6relate10generalize11GeneralizerE0B1k_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEEB1E_EENCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate26relate_args_with_variancesNtNtB2u_8interner10DbInternerNtNtNtNtB2u_5infer6relate7lattice9LatticeOpE0ENtNtNtB9_6traits8iterator8Iterator4nextB2w_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10528, !noalias !10535, !noundef !5 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !10528, !noalias !10535, !noundef !5
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i64 %i.b, 1
  store i64 %i.f, ptr %i.a, align 8, !alias.scope !10528, !noalias !10535
  %i.g = tail call noundef nonnull ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.b), !noalias !10535
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = tail call noundef nonnull ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef %i.b), !noalias !10535
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !10537, !noalias !10535, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !10537, !noalias !10535
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load ptr, ptr %i.m, align 8, !nonnull !5, !align !1504, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val1 = load ptr, ptr %i.n, align 8            ; 2 uses
  %i.o = load ptr, ptr %.val, align 8, !noalias !10538, !nonnull !5, !noundef !5
  %i.p = tail call noundef i8 @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner11VariancesOfNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent9SliceLike3getB8_(ptr noundef nonnull %i.o, i64 noundef %i.k), !noalias !10538 ; 2 uses
  %.not.i = icmp eq i8 %i.p, -1
  br i1 %.not.i, label %bb.c, label %_RNCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate26relate_args_with_variancesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtNtNtB1i_5infer6relate7lattice9LatticeOpE0B1k_.exit, !prof !164

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #44, !noalias !10538
  unreachable

_RNCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate26relate_args_with_variancesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtNtNtB1i_5infer6relate7lattice9LatticeOpE0B1k_.exit: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  tail call void @_RINvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate7latticeNtB6_9LatticeOpINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate12TypeRelationNtNtBc_8interner10DbInternerE20relate_with_varianceNtNtBc_11generic_arg10GenericArgEBe_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %.val1, i8 noundef %i.p, ptr noalias nofree nonnull readonly align 8 captures(none) poison, ptr noundef nonnull %i.g, ptr noundef nonnull %i.i)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  store i8 -2, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNCINvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate26relate_args_with_variancesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtNtNtB1i_5infer6relate7lattice9LatticeOpE0B1k_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEEB1E_EENCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtB2u_5infer9InferCtxtNtNtB2u_8interner10DbInternerINtNtB3I_15solver_relating14SolverRelatingB4P_B5d_ENCINvXs0_B5J_B5G_INtB3I_12TypeRelationB5d_E14relate_ty_argsNCNCINvB3I_23structurally_relate_tysB5d_B5G_E00E0E0ENtNtNtB9_6traits8iterator8Iterator4nextB2w_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !10542, !noalias !10549, !noundef !5 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !10542, !noalias !10549, !noundef !5
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw i64 %i.h, 1
  store i64 %i.l, ptr %i.g, align 8, !alias.scope !10542, !noalias !10549
  %i.m = tail call noundef nonnull ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.h), !noalias !10549 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = tail call noundef nonnull ptr @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENtNtNtB8_6traits8iterator8Iterator24___iterator_get_uncheckedB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, i64 noundef %i.h), !noalias !10549 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !10551, !noalias !10549, !noundef !5 ; 4 uses
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.p, align 8, !alias.scope !10551, !noalias !10549
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10552)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !10552, !noalias !10555, !nonnull !5, !align !1504, !noundef !5
  %i.u = load ptr, ptr %i.t, align 8, !noalias !10558, !nonnull !5, !noundef !5
  %i.v = tail call noundef i8 @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner11VariancesOfNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent9SliceLike3getB8_(ptr noundef nonnull %i.u, i64 noundef %i.q), !noalias !10558 ; 2 uses
  switch i8 %i.v, label %default.unreachable [
    i8 -1, label %bb.c
    i8 0, label %_RNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1h_8interner10DbInternerINtNtB6_15solver_relating14SolverRelatingB1d_B27_ENCINvXs0_B2D_B2A_INtB6_12TypeRelationB27_E14relate_ty_argsNCNCINvB6_23structurally_relate_tysB27_B2A_E00E0E0B1j_.exit
    i8 1, label %bb.d
    i8 2, label %_RNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1h_8interner10DbInternerINtNtB6_15solver_relating14SolverRelatingB1d_B27_ENCINvXs0_B2D_B2A_INtB6_12TypeRelationB27_E14relate_ty_argsNCNCINvB6_23structurally_relate_tysB27_B2A_E00E0E0B1j_.exit
    i8 3, label %bb.f
  ], !prof !10559

end_hunk_0
