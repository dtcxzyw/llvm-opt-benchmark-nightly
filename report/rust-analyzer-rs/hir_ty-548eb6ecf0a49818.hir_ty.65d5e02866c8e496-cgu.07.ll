Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.07?download=true
inline.NumInlined: 6336
inline.NumDeleted: 2521
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesj_1__INtB5_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1o_E10visit_withNtNtNtB7_7ty_kind7closure17HasRegionsBoundAtEB1u_:bb.a
bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = tail call noundef zeroext i1 @_RINvXs1q_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB9_8interner10DbInternerE10visit_withNtNtNtB1j_7ty_kind7closure17HasRegionsBoundAtEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1)
  br i1 %i.g, label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNtNtB7_7ty_kind7closure17HasRegionsBoundAtEB1v_.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RINvXs1q_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB9_8interner10DbInternerE10visit_withNtNtNtB1j_7ty_kind7closure17HasRegionsBoundAtEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1)
  br i1 %i.h, label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNtNtB7_7ty_kind7closure17HasRegionsBoundAtEB1v_.exit.thread, label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNtNtB7_7ty_kind7closure17HasRegionsBoundAtEB1v_.exit

_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNtNtB7_7ty_kind7closure17HasRegionsBoundAtEB1v_.exit: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = tail call noundef zeroext i1 @_RINvXsj_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_4TermINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB8_8interner10DbInternerE10visit_withNtNtNtB1a_7ty_kind7closure17HasRegionsBoundAtEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1)
  br i1 %i.j, label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNtNtB7_7ty_kind7closure17HasRegionsBoundAtEB1v_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNtNtB7_7ty_kind7closure17HasRegionsBoundAtEB1v_.exit, %bb.c
  br label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNtNtB7_7ty_kind7closure17HasRegionsBoundAtEB1v_.exit.thread

_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNtNtB7_7ty_kind7closure17HasRegionsBoundAtEB1v_.exit.thread: ; preds = %bb.d, %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNtNtB7_7ty_kind7closure17HasRegionsBoundAtEB1v_.exit, %bb.c, %bb.e
  %.sroa.0.0 = phi i1 [ true, %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNtNtB7_7ty_kind7closure17HasRegionsBoundAtEB1v_.exit ], [ false, %bb.e ], [ true, %bb.c ], [ true, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesj_1__INtB5_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1o_E10visit_withNtNvMNtNtB1u_5infer7closureNtB3f_16InferenceContext40deduce_closure_signature_from_predicates10MentionsTyEB1u_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !range !34, !noundef !4 ; 3 uses
  %i.c = icmp ne i32 %i.b, 3
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i32 %i.b, -2
  %i.e = icmp samesign ugt i32 %i.b, 1
  %narrow = select i1 %i.e, i32 %i.d, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = tail call noundef zeroext i1 @_RINvXs1q_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB9_8interner10DbInternerE10visit_withNtNvMNtNtBb_5infer7closureNtB2Z_16InferenceContext40deduce_closure_signature_from_predicates10MentionsTyEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.g, label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvMNtNtB1v_5infer7closureNtB3g_16InferenceContext40deduce_closure_signature_from_predicates10MentionsTyEB1v_.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RINvXs1q_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB9_8interner10DbInternerE10visit_withNtNvMNtNtBb_5infer7closureNtB2Z_16InferenceContext40deduce_closure_signature_from_predicates10MentionsTyEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.h, label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvMNtNtB1v_5infer7closureNtB3g_16InferenceContext40deduce_closure_signature_from_predicates10MentionsTyEB1v_.exit.thread, label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvMNtNtB1v_5infer7closureNtB3g_16InferenceContext40deduce_closure_signature_from_predicates10MentionsTyEB1v_.exit

_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvMNtNtB1v_5infer7closureNtB3g_16InferenceContext40deduce_closure_signature_from_predicates10MentionsTyEB1v_.exit: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = tail call noundef zeroext i1 @_RINvXsj_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_4TermINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB8_8interner10DbInternerE10visit_withNtNvMNtNtBa_5infer7closureNtB2Q_16InferenceContext40deduce_closure_signature_from_predicates10MentionsTyEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %i.j, label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvMNtNtB1v_5infer7closureNtB3g_16InferenceContext40deduce_closure_signature_from_predicates10MentionsTyEB1v_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvMNtNtB1v_5infer7closureNtB3g_16InferenceContext40deduce_closure_signature_from_predicates10MentionsTyEB1v_.exit, %bb.c
  br label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvMNtNtB1v_5infer7closureNtB3g_16InferenceContext40deduce_closure_signature_from_predicates10MentionsTyEB1v_.exit.thread

_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvMNtNtB1v_5infer7closureNtB3g_16InferenceContext40deduce_closure_signature_from_predicates10MentionsTyEB1v_.exit.thread: ; preds = %bb.d, %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvMNtNtB1v_5infer7closureNtB3g_16InferenceContext40deduce_closure_signature_from_predicates10MentionsTyEB1v_.exit, %bb.c, %bb.e
  %.sroa.0.0 = phi i1 [ true, %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvMNtNtB1v_5infer7closureNtB3g_16InferenceContext40deduce_closure_signature_from_predicates10MentionsTyEB1v_.exit ], [ false, %bb.e ], [ true, %bb.c ], [ true, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesj_1__INtB5_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1o_E10visit_withNtNvNtB1u_14builtin_derive24extend_assoc_type_bounds16ProjectionFinderEB1u_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !range !34, !noundef !4 ; 3 uses
  %i.c = icmp ne i32 %i.b, 3
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i32 %i.b, -2
  %i.e = icmp samesign ugt i32 %i.b, 1
  %narrow = select i1 %i.e, i32 %i.d, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXs1q_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB9_8interner10DbInternerE10visit_withNtNvNtBb_14builtin_derive24extend_assoc_type_bounds16ProjectionFinderEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXs1q_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB9_8interner10DbInternerE10visit_withNtNvNtBb_14builtin_derive24extend_assoc_type_bounds16ProjectionFinderEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_RINvXsj_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_4TermINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB8_8interner10DbInternerE10visit_withNtNvNtBa_14builtin_derive24extend_assoc_type_bounds16ProjectionFinderEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesj_1__INtB5_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1o_E10visit_withNtNvNtB1u_17dyn_compatibility36contains_illegal_impl_trait_in_trait19OpaqueTypeCollectorEB1u_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !range !34, !noundef !4 ; 3 uses
  %i.c = icmp ne i32 %i.b, 3
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i32 %i.b, -2
  %i.e = icmp samesign ugt i32 %i.b, 1
  %narrow = select i1 %i.e, i32 %i.d, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = tail call noundef zeroext i1 @_RINvXs1q_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB9_8interner10DbInternerE10visit_withNtNvNtBb_17dyn_compatibility36contains_illegal_impl_trait_in_trait19OpaqueTypeCollectorEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.g, label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_impl_trait_in_trait19OpaqueTypeCollectorEB1v_.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RINvXs1q_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB9_8interner10DbInternerE10visit_withNtNvNtBb_17dyn_compatibility36contains_illegal_impl_trait_in_trait19OpaqueTypeCollectorEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.h, label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_impl_trait_in_trait19OpaqueTypeCollectorEB1v_.exit.thread, label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_impl_trait_in_trait19OpaqueTypeCollectorEB1v_.exit

_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_impl_trait_in_trait19OpaqueTypeCollectorEB1v_.exit: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = tail call noundef zeroext i1 @_RINvXsj_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_4TermINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB8_8interner10DbInternerE10visit_withNtNvNtBa_17dyn_compatibility36contains_illegal_impl_trait_in_trait19OpaqueTypeCollectorEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br i1 %i.j, label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_impl_trait_in_trait19OpaqueTypeCollectorEB1v_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_impl_trait_in_trait19OpaqueTypeCollectorEB1v_.exit, %bb.c
  br label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_impl_trait_in_trait19OpaqueTypeCollectorEB1v_.exit.thread

_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_impl_trait_in_trait19OpaqueTypeCollectorEB1v_.exit.thread: ; preds = %bb.d, %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_impl_trait_in_trait19OpaqueTypeCollectorEB1v_.exit, %bb.c, %bb.e
  %.sroa.0.0 = phi i1 [ true, %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_impl_trait_in_trait19OpaqueTypeCollectorEB1v_.exit ], [ false, %bb.e ], [ true, %bb.c ], [ true, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesj_1__INtB5_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1o_E10visit_withNtNvNtB1u_17dyn_compatibility36contains_illegal_self_type_reference22IllegalSelfTypeVisitorEB1u_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !range !34, !noundef !4 ; 3 uses
  %i.c = icmp ne i32 %i.b, 3
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i32 %i.b, -2
  %i.e = icmp samesign ugt i32 %i.b, 1
  %narrow = select i1 %i.e, i32 %i.d, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = tail call noundef zeroext i1 @_RINvXs1q_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB9_8interner10DbInternerE10visit_withNtNvNtBb_17dyn_compatibility36contains_illegal_self_type_reference22IllegalSelfTypeVisitorEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.g, label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_self_type_reference22IllegalSelfTypeVisitorEB1v_.exit.thread, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RINvXs1q_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB9_8interner10DbInternerE10visit_withNtNvNtBb_17dyn_compatibility36contains_illegal_self_type_reference22IllegalSelfTypeVisitorEBb_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.h, label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_self_type_reference22IllegalSelfTypeVisitorEB1v_.exit.thread, label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_self_type_reference22IllegalSelfTypeVisitorEB1v_.exit

_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_self_type_reference22IllegalSelfTypeVisitorEB1v_.exit: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = tail call noundef zeroext i1 @_RINvXsj_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_4TermINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visit13TypeVisitableNtNtB8_8interner10DbInternerE10visit_withNtNvNtBa_17dyn_compatibility36contains_illegal_self_type_reference22IllegalSelfTypeVisitorEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %i.j, label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_self_type_reference22IllegalSelfTypeVisitorEB1v_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_self_type_reference22IllegalSelfTypeVisitorEB1v_.exit, %bb.c
  br label %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_self_type_reference22IllegalSelfTypeVisitorEB1v_.exit.thread

_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_self_type_reference22IllegalSelfTypeVisitorEB1v_.exit.thread: ; preds = %bb.d, %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_self_type_reference22IllegalSelfTypeVisitorEB1v_.exit, %bb.c, %bb.e
  %.sroa.0.0 = phi i1 [ true, %_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesr_1__INtB5_21ExistentialProjectionNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_5visit13TypeVisitableB1p_E10visit_withNtNvNtB1v_17dyn_compatibility36contains_illegal_self_type_reference22IllegalSelfTypeVisitorEB1v_.exit ], [ false, %bb.e ], [ true, %bb.c ], [ true, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesl_1__INtB5_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_4fold12TypeFoldableB1o_E13try_fold_withINtNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits21ReplaceProjectionWithB1o_NtNtB1s_6solver13SolverContextEEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(56) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !range !34, !noundef !4 ; 5 uses
  %i.c = icmp ne i32 %i.b, 3
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i32 %i.b, -2
  %i.e = icmp samesign ugt i32 %i.b, 1
  %narrow = select i1 %i.e, i32 %i.d, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2470)
  %3 = load <2 x i32>, ptr %1, align 8, !alias.scope !2470, !noalias !2471
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2470, !noalias !2471, !nonnull !4, !noundef !4
  %i.h = tail call noundef ptr @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE13try_fold_withINtNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits21ReplaceProjectionWithB2b_NtNtB9_6solver13SolverContextEEBb_(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2), !noalias !2472 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.h, label %bb.i

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2473)
  %.sroa.516.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.516.0.copyload.i = load i64, ptr %.sroa.516.0..sroa_idx.i, align 4, !alias.scope !2473, !noalias !2474
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !2473, !noalias !2474, !nonnull !4, !noundef !4
  %i.l = icmp eq i32 %i.b, 2
  br i1 %i.l, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %1, align 8, !alias.scope !2473, !noalias !2474, !nonnull !4, !noundef !4
  %i.n = tail call noundef ptr @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE13try_fold_withINtNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits21ReplaceProjectionWithB2b_NtNtB9_6solver13SolverContextEEBb_(ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2), !noalias !2475 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call noundef ptr @_RINvXsl_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_4TermINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB8_8interner10DbInternerE13try_fold_withINtNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve8assembly17structural_traits21ReplaceProjectionWithB22_NtNtB8_6solver13SolverContextEEBa_(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %2), !noalias !2475 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.a
  %4 = load <2 x i32>, ptr %1, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.r, align 8
  br label %bb.m

bb.i:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %i.h to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.l, %bb.i
  %.sroa.10.sroa.0.0 = phi i64 [ undef, %bb.i ], [ %.sroa.516.0.copyload.i, %bb.l ], [ undef, %bb.g ]
  %.sroa.811.0 = phi i32 [ 2, %bb.i ], [ %i.b, %bb.l ], [ 4, %bb.g ]
  %.sroa.8.0 = phi i64 [ %i.s, %bb.i ], [ %i.u, %bb.l ], [ undef, %bb.g ]
  %5 = phi <2 x i32> [ %3, %bb.i ], [ %6, %bb.l ], [ %4, %bb.g ]
  store <2 x i32> %5, ptr %0, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.811.0, ptr %.sroa.811.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i64 %.sroa.10.sroa.0.0, ptr %.sroa.10.0..sroa_idx, align 4
  br label %bb.m

bb.k:                                             ; preds = %bb.d, %bb.e, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1, ptr %i.t, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = ptrtoint ptr %i.n to i64
  %6 = bitcast i64 %i.v to <2 x i32>
  br label %bb.j

bb.m:                                             ; preds = %bb.h, %bb.k, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesl_1__INtB5_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_4fold12TypeFoldableB1o_E13try_fold_withNtNtB1s_9normalize19NormalizationFolderEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(160) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !range !34, !noundef !4 ; 3 uses
  %i.f = icmp ne i32 %i.e, 3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i32 %i.e, -2
  %i.h = icmp samesign ugt i32 %i.e, 1
  %narrow = select i1 %i.h, i32 %i.g, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2484)
  %3 = load <2 x i32>, ptr %1, align 8, !alias.scope !2484, !noalias !2485
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2484, !noalias !2485, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2486
  call void @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE13try_fold_withNtNtB9_9normalize19NormalizationFolderEBb_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %2), !noalias !2487
  %i.k = load i64, ptr %i.c, align 8, !range !25, !noalias !2486, !noundef !4 ; 2 uses
  %.not45.i = icmp eq i64 %i.k, -1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !2486 ; 2 uses
  br i1 %.not45.i, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2489)
  %i.n = load ptr, ptr %1, align 8, !alias.scope !2489, !noalias !2490, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2489, !noalias !2490, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2491
  call void @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE13try_fold_withNtNtB9_9normalize19NormalizationFolderEBb_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %2), !noalias !2492
  %i.q = load i64, ptr %i.b, align 8, !range !25, !noalias !2491, !noundef !4 ; 2 uses
  %.not58.i = icmp eq i64 %i.q, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !2491 ; 2 uses
  br i1 %.not58.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.545.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.545.0.copyload.i = load i64, ptr %.sroa.545.0..sroa_idx.i, align 8, !noalias !2491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2491
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2491
  call void @_RINvXsl_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_4TermINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB8_8interner10DbInternerE13try_fold_withNtNtB8_9normalize19NormalizationFolderEBa_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %2), !noalias !2492
  %i.t = load i64, ptr %i.a, align 8, !range !25, !noalias !2491, !noundef !4 ; 2 uses
  %.not59.i = icmp eq i64 %i.t, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !2491 ; 2 uses
  br i1 %.not59.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.554.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.554.0.copyload.i = load i64, ptr %.sroa.554.0..sroa_idx.i, align 8, !noalias !2491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2491
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.541.0.copyload.i = load i64, ptr %.sroa.541.0..sroa_idx.i, align 8, !noalias !2486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2486
  %i.w = ptrtoint ptr %i.m to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.x, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.w, ptr %.sroa.481.0..sroa_idx, align 8
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2486
  %i.y = ptrtoint ptr %i.m to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.l, %bb.i
  %.sroa.10.sroa.0.0 = phi i32 [ undef, %bb.i ], [ %.sroa.15.sroa.7.0.extract.trunc136, %bb.l ], [ undef, %bb.m ]
  %.sroa.10.sroa.5.0 = phi i64 [ undef, %bb.i ], [ %.sroa.21.24.insert.ext, %bb.l ], [ undef, %bb.m ]
  %.sroa.811.0 = phi i32 [ 2, %bb.i ], [ %.sroa.15.sroa.0.0.extract.trunc134, %bb.l ], [ 4, %bb.m ]
  %.sroa.8.0 = phi i64 [ %i.y, %bb.i ], [ %i.ad, %bb.l ], [ undef, %bb.m ]
  %4 = phi <2 x i32> [ %3, %bb.i ], [ %5, %bb.l ], [ %6, %bb.m ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i32> %4, ptr %i.z, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.811.0, ptr %.sroa.811.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.10.sroa.0.0, ptr %.sroa.10.0..sroa_idx, align 4
  br label %bb.n

bb.k:                                             ; preds = %bb.e, %bb.g
  %.sink63.i = phi i64 [ %i.q, %bb.e ], [ %i.t, %bb.g ]
  %.sink.i = phi ptr [ %i.s, %bb.e ], [ %i.v, %bb.g ]
  %.sroa.545.0.copyload.sink.i = phi i64 [ %.sroa.545.0.copyload.i, %bb.e ], [ %.sroa.554.0.copyload.i, %bb.g ]
  %i.aa = ptrtoint ptr %.sink.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink63.i, ptr %i.ab, align 8
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aa, ptr %.sroa.5102.0..sroa_idx, align 8
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2491
  %.sroa.15.24.copyload = load i64, ptr %i.d, align 8, !alias.scope !2492, !noalias !2493 ; 2 uses
  %.sroa.15.sroa.0.0.extract.trunc134 = trunc i64 %.sroa.15.24.copyload to i32
  %.sroa.15.sroa.7.0.extract.shift135 = lshr i64 %.sroa.15.24.copyload, 32
  %.sroa.15.sroa.7.0.extract.trunc136 = trunc nuw i64 %.sroa.15.sroa.7.0.extract.shift135 to i32
  %.sroa.21.24..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.21.24.copyload = load i32, ptr %.sroa.21.24..sroa_idx, align 8, !alias.scope !2492, !noalias !2493
  %.sroa.21.24.insert.ext = zext i32 %.sroa.21.24.copyload to i64
  %i.ac = ptrtoint ptr %i.s to i64
  %i.ad = ptrtoint ptr %i.v to i64
  %5 = bitcast i64 %i.ac to <2 x i32>
  br label %bb.j

bb.m:                                             ; preds = %bb.a
  %6 = load <2 x i32>, ptr %1, align 8
  br label %bb.j

bb.n:                                             ; preds = %bb.h, %bb.k, %bb.j
  %.sink158 = phi i64 [ 24, %bb.h ], [ 24, %bb.k ], [ 32, %bb.j ]
  %.sroa.541.0.copyload.i.sink = phi i64 [ %.sroa.541.0.copyload.i, %bb.h ], [ %.sroa.545.0.copyload.sink.i, %bb.k ], [ %.sroa.10.sroa.5.0, %bb.j ]
  %.sink = phi i64 [ 1, %bb.h ], [ 1, %bb.k ], [ 0, %bb.j ]
  %.sroa.683.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 %.sink158
  store i64 %.sroa.541.0.copyload.i.sink, ptr %.sroa.683.0..sroa_idx, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesl_1__INtB5_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_4fold12TypeFoldableB1o_E13try_fold_withNtNtNtB1u_3mir16monomorphization6FillerEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(568) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !range !34, !noundef !4 ; 4 uses
  %i.f = icmp ne i32 %i.e, 3
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i32 %i.e, -2
  %i.h = icmp samesign ugt i32 %i.e, 1
  %narrow = select i1 %i.h, i32 %i.g, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2502)
  %3 = load <2 x i32>, ptr %1, align 8, !alias.scope !2502, !noalias !2503
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2502, !noalias !2503, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2504
  call void @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE13try_fold_withNtNtNtBb_3mir16monomorphization6FillerEBb_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c, ptr noundef nonnull %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(568) %2), !noalias !2505
  %i.k = load i32, ptr %i.c, align 8, !range !35, !noalias !2504, !noundef !4 ; 2 uses
  %.not50.i = icmp eq i32 %i.k, -1
  br i1 %.not50.i, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2507)
  %i.l = load ptr, ptr %1, align 8, !alias.scope !2507, !noalias !2508, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2507, !noalias !2508, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2509
  call void @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE13try_fold_withNtNtNtBb_3mir16monomorphization6FillerEBb_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(568) %2), !noalias !2510
  %i.o = load i32, ptr %i.b, align 8, !range !35, !noalias !2509, !noundef !4 ; 2 uses
  %.not69.i = icmp eq i32 %i.o, -1
  br i1 %.not69.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.450.0.copyload.i = load i32, ptr %.sroa.450.0..sroa_idx.i, align 4, !noalias !2509
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.551.0.copyload.i = load ptr, ptr %.sroa.551.0..sroa_idx.i, align 8, !noalias !2509
  %.sroa.652.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.19.24.copyload = load i32, ptr %.sroa.652.0..sroa_idx.i, align 8, !noalias !2511
  %.sroa.24.24..sroa.652.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.24.sroa.0.0.copyload = load i64, ptr %.sroa.24.24..sroa.652.0..sroa_idx.i.sroa_idx, align 4, !noalias !2511
  %.sroa.24.sroa.8.0..sroa.24.24..sroa.652.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.sroa.24.sroa.8.0.copyload = load i32, ptr %.sroa.24.sroa.8.0..sroa.24.24..sroa.652.0..sroa_idx.i.sroa_idx.sroa_idx, align 4, !noalias !2511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2509
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !2509, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2509
  call void @_RINvXsl_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_4TermINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB8_8interner10DbInternerE13try_fold_withNtNtNtBa_3mir16monomorphization6FillerEBa_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(568) %2), !noalias !2510
  %i.r = load i32, ptr %i.a, align 8, !range !35, !noalias !2509, !noundef !4 ; 2 uses
  %.not70.i = icmp eq i32 %i.r, -1
  br i1 %.not70.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.462.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.462.0.copyload.i = load i32, ptr %.sroa.462.0..sroa_idx.i, align 4, !noalias !2509
  %.sroa.563.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.563.0.copyload.i = load ptr, ptr %.sroa.563.0..sroa_idx.i, align 8, !noalias !2509
  %.sroa.664.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.19.24.copyload148 = load i32, ptr %.sroa.664.0..sroa_idx.i, align 8, !noalias !2511
  %.sroa.24.24..sroa.664.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.24.sroa.0.0.copyload168 = load i64, ptr %.sroa.24.24..sroa.664.0..sroa_idx.i.sroa_idx, align 4, !noalias !2511
  %.sroa.24.sroa.8.0..sroa.24.24..sroa.664.0..sroa_idx.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.24.sroa.8.0.copyload171 = load i32, ptr %.sroa.24.sroa.8.0..sroa.24.24..sroa.664.0..sroa_idx.i.sroa_idx.sroa_idx, align 4, !noalias !2511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2509
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.443.0.copyload.i = load i32, ptr %.sroa.443.0..sroa_idx.i, align 4, !noalias !2504
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.544.0.copyload.i = load ptr, ptr %.sroa.544.0..sroa_idx.i, align 8, !noalias !2504
  %.sroa.645.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = ptrtoint ptr %.sroa.544.0.copyload.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.788.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load <2 x i64>, ptr %.sroa.645.0..sroa_idx.i, align 8, !noalias !2512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2504
  store i32 %i.k, ptr %i.t, align 8
  store i32 %.sroa.443.0.copyload.i, ptr %.sroa.485.0..sroa_idx, align 4
  store i64 %i.s, ptr %.sroa.586.0..sroa_idx, align 8
  store <2 x i64> %i.u, ptr %.sroa.788.0..sroa_idx, align 8
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !2504, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2504
  %i.x = ptrtoint ptr %i.w to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.l, %bb.i
  %.sroa.10.sroa.0.0 = phi i64 [ undef, %bb.i ], [ %i.ac, %bb.l ], [ undef, %bb.m ]
  %.sroa.811.0 = phi i32 [ 2, %bb.i ], [ %i.e, %bb.l ], [ 4, %bb.m ]
  %.sroa.8.0 = phi i64 [ %i.x, %bb.i ], [ %i.ad, %bb.l ], [ undef, %bb.m ]
  %4 = phi <2 x i32> [ %3, %bb.i ], [ %5, %bb.l ], [ %6, %bb.m ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i32> %4, ptr %i.y, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.811.0, ptr %.sroa.811.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i64 %.sroa.10.sroa.0.0, ptr %.sroa.10.0..sroa_idx, align 4
  br label %bb.n

bb.k:                                             ; preds = %bb.g, %bb.e
  %.sink = phi i32 [ %i.r, %bb.g ], [ %i.o, %bb.e ]
  %.sroa.462.0.copyload.i.sink = phi i32 [ %.sroa.462.0.copyload.i, %bb.g ], [ %.sroa.450.0.copyload.i, %bb.e ]
  %.sroa.24.sroa.8.0 = phi i32 [ %.sroa.24.sroa.8.0.copyload171, %bb.g ], [ %.sroa.24.sroa.8.0.copyload, %bb.e ]
  %.sroa.24.sroa.0.0 = phi i64 [ %.sroa.24.sroa.0.0.copyload168, %bb.g ], [ %.sroa.24.sroa.0.0.copyload, %bb.e ]
  %.sroa.19.1.ph = phi i32 [ %.sroa.19.24.copyload148, %bb.g ], [ %.sroa.19.24.copyload, %bb.e ]
  %.sroa.14146.1.ph.in = phi ptr [ %.sroa.563.0.copyload.i, %bb.g ], [ %.sroa.551.0.copyload.i, %bb.e ]
  %.sroa.5131.8.insert.ext135 = zext nneg i32 %.sink to i64
  %.sroa.5131.12.insert.ext142 = zext i32 %.sroa.462.0.copyload.i.sink to i64
  %.sroa.5131.12.insert.shift143 = shl nuw i64 %.sroa.5131.12.insert.ext142, 32
  %.sroa.5131.12.insert.insert145 = or disjoint i64 %.sroa.5131.12.insert.shift143, %.sroa.5131.8.insert.ext135
  %.sroa.14146.1.ph = ptrtoint ptr %.sroa.14146.1.ph.in to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5131.12.insert.insert145, ptr %i.z, align 8
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.14146.1.ph, ptr %.sroa.5107.0..sroa_idx, align 8
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.19.1.ph, ptr %.sroa.6108.0..sroa_idx, align 8
  %.sroa.7109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i64 %.sroa.24.sroa.0.0, ptr %.sroa.7109.0..sroa_idx, align 4
  %.sroa.7109.sroa.4.0..sroa.7109.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.24.sroa.8.0, ptr %.sroa.7109.sroa.4.0..sroa.7109.0..sroa_idx.sroa_idx, align 4
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !2509, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2509
  %.sroa.24.24..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ac = load i64, ptr %.sroa.24.24..sroa_idx, align 4, !alias.scope !2510, !noalias !2513
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.q to i64
  %5 = bitcast i64 %i.ae to <2 x i32>
  br label %bb.j

bb.m:                                             ; preds = %bb.a
  %6 = load <2 x i32>, ptr %1, align 8
  br label %bb.j

bb.n:                                             ; preds = %bb.h, %bb.k, %bb.j
  %storemerge = phi i64 [ 0, %bb.j ], [ 1, %bb.k ], [ 1, %bb.h ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesl_1__INtB5_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_4fold12TypeFoldableB1o_E13try_fold_withNtNvB1u_29replace_errors_with_variables13ErrorReplacerEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(64) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !range !34, !noundef !4 ; 4 uses
  %i.c = icmp ne i32 %i.b, 3
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i32 %i.b, -2
  %i.e = icmp samesign ugt i32 %i.b, 1
  %narrow = select i1 %i.e, i32 %i.d, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2522)
  %3 = load <2 x i32>, ptr %1, align 8, !alias.scope !2522, !noalias !2523
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2522, !noalias !2523, !nonnull !4, !noundef !4
  %i.h = tail call noundef nonnull ptr @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE13try_fold_withNtNvBb_29replace_errors_with_variables13ErrorReplacerEBb_(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2), !noalias !2524
  %i.i = ptrtoint ptr %i.h to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2526)
  %.sroa.944.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = load i64, ptr %.sroa.944.16..sroa_idx, align 4, !alias.scope !2527, !noalias !2528
  %i.k = load ptr, ptr %1, align 8, !alias.scope !2526, !noalias !2529, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !2526, !noalias !2529, !nonnull !4, !noundef !4
  %i.n = tail call noundef nonnull ptr @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE13try_fold_withNtNvBb_29replace_errors_with_variables13ErrorReplacerEBb_(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2), !noalias !2527
  %i.o = tail call noundef nonnull ptr @_RINvXsl_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_4TermINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB8_8interner10DbInternerE13try_fold_withNtNvBa_29replace_errors_with_variables13ErrorReplacerEBa_(ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2), !noalias !2527
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %4 = bitcast i64 %i.q to <2 x i32>
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %5 = load <2 x i32>, ptr %1, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.9.sroa.0.0 = phi i64 [ undef, %bb.c ], [ %i.j, %bb.d ], [ undef, %bb.e ]
  %.sroa.711.0 = phi i32 [ 2, %bb.c ], [ %i.b, %bb.d ], [ 4, %bb.e ]
  %.sroa.7.0 = phi i64 [ %i.i, %bb.c ], [ %i.p, %bb.d ], [ undef, %bb.e ]
  %6 = phi <2 x i32> [ %3, %bb.c ], [ %4, %bb.d ], [ %5, %bb.e ]
  store <2 x i32> %6, ptr %0, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.711.0, ptr %.sroa.711.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i64 %.sroa.9.sroa.0.0, ptr %.sroa.9.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesl_1__INtB5_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_4fold12TypeFoldableB1o_E9fold_withINtB2r_12RegionFolderB1o_NCNCNvMs0_NtNtB1u_5infer7opaquesNtB3F_16InferenceContext24consider_opaque_type_use00EEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !range !34, !noundef !4 ; 3 uses
  %i.c = icmp ne i32 %i.b, 3
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i32 %i.b, -2
  %i.e = icmp samesign ugt i32 %i.b, 1
  %narrow = select i1 %i.e, i32 %i.d, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2538)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2538, !noalias !2539, !nonnull !4, !noundef !4
  %i.h = tail call noundef nonnull ptr @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE9fold_withINtB1h_12RegionFolderB2b_NCNCNvMs0_NtNtBb_5infer7opaquesNtB3p_16InferenceContext24consider_opaque_type_use00EEBb_(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2), !noalias !2540
  %i.i = load <2 x i32>, ptr %1, align 8, !alias.scope !2538, !noalias !2539
  store <2 x i32> %i.i, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.j, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2541)
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  %i.k = load ptr, ptr %1, align 8, !alias.scope !2541, !noalias !2542, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !2541, !noalias !2542, !nonnull !4, !noundef !4
  %i.n = tail call noundef nonnull ptr @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE9fold_withINtB1h_12RegionFolderB2b_NCNCNvMs0_NtNtBb_5infer7opaquesNtB3p_16InferenceContext24consider_opaque_type_use00EEBb_(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2), !noalias !2543
  %i.o = tail call noundef nonnull ptr @_RINvXsl_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_4TermINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB8_8interner10DbInternerE9fold_withINtB18_12RegionFolderB22_NCNCNvMs0_NtNtBa_5infer7opaquesNtB3g_16InferenceContext24consider_opaque_type_use00EEBa_(ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2), !noalias !2543
  store ptr %i.n, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %.sroa.42.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.p = load <2 x i32>, ptr %1, align 8
  store <2 x i32> %i.p, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 4, ptr %i.q, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesl_1__INtB5_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_4fold12TypeFoldableB1o_E9fold_withINtB2r_12RegionFolderB1o_NCNvMNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13normalizes_to12opaque_typesINtNtB3C_9eval_ctxt8EvalCtxtNtNtB1s_6solver13SolverContextB1o_E21normalize_opaque_types0_0EEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !range !34, !noundef !4 ; 3 uses
  %i.c = icmp ne i32 %i.b, 3
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i32 %i.b, -2
  %i.e = icmp samesign ugt i32 %i.b, 1
  %narrow = select i1 %i.e, i32 %i.d, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2552)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2552, !noalias !2553, !nonnull !4, !noundef !4
  %i.h = tail call noundef nonnull ptr @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE9fold_withINtB1h_12RegionFolderB2b_NCNvMNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13normalizes_to12opaque_typesINtNtB3m_9eval_ctxt8EvalCtxtNtNtB9_6solver13SolverContextB2b_E21normalize_opaque_types0_0EEBb_(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2), !noalias !2554
  %i.i = load <2 x i32>, ptr %1, align 8, !alias.scope !2552, !noalias !2553
  store <2 x i32> %i.i, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.j, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2555)
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  %i.k = load ptr, ptr %1, align 8, !alias.scope !2555, !noalias !2556, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !2555, !noalias !2556, !nonnull !4, !noundef !4
  %i.n = tail call noundef nonnull ptr @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE9fold_withINtB1h_12RegionFolderB2b_NCNvMNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13normalizes_to12opaque_typesINtNtB3m_9eval_ctxt8EvalCtxtNtNtB9_6solver13SolverContextB2b_E21normalize_opaque_types0_0EEBb_(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2), !noalias !2557
  %i.o = tail call noundef nonnull ptr @_RINvXsl_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_4TermINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB8_8interner10DbInternerE9fold_withINtB18_12RegionFolderB22_NCNvMNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13normalizes_to12opaque_typesINtNtB3d_9eval_ctxt8EvalCtxtNtNtB8_6solver13SolverContextB22_E21normalize_opaque_types0_0EEBa_(ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2), !noalias !2557
  store ptr %i.n, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %.sroa.42.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.p = load <2 x i32>, ptr %1, align 8
  store <2 x i32> %i.p, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 4, ptr %i.q, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesl_1__INtB5_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_4fold12TypeFoldableB1o_E9fold_withINtB2r_12RegionFolderB1o_NCNvMNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13normalizes_to12opaque_typesINtNtB3C_9eval_ctxt8EvalCtxtNtNtB1s_6solver13SolverContextB1o_E21normalize_opaque_types2_0EEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !range !34, !noundef !4 ; 3 uses
  %i.c = icmp ne i32 %i.b, 3
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i32 %i.b, -2
  %i.e = icmp samesign ugt i32 %i.b, 1
  %narrow = select i1 %i.e, i32 %i.d, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2566)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2566, !noalias !2567, !nonnull !4, !noundef !4
  %i.h = tail call noundef nonnull ptr @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE9fold_withINtB1h_12RegionFolderB2b_NCNvMNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13normalizes_to12opaque_typesINtNtB3m_9eval_ctxt8EvalCtxtNtNtB9_6solver13SolverContextB2b_E21normalize_opaque_types2_0EEBb_(ptr noundef nonnull %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2), !noalias !2568
  %i.i = load <2 x i32>, ptr %1, align 8, !alias.scope !2566, !noalias !2567
  store <2 x i32> %i.i, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 2, ptr %i.j, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2569)
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  %i.k = load ptr, ptr %1, align 8, !alias.scope !2569, !noalias !2570, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !2569, !noalias !2570, !nonnull !4, !noundef !4
  %i.n = tail call noundef nonnull ptr @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE9fold_withINtB1h_12RegionFolderB2b_NCNvMNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13normalizes_to12opaque_typesINtNtB3m_9eval_ctxt8EvalCtxtNtNtB9_6solver13SolverContextB2b_E21normalize_opaque_types2_0EEBb_(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2), !noalias !2571
  %i.o = tail call noundef nonnull ptr @_RINvXsl_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB6_4TermINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB8_8interner10DbInternerE9fold_withINtB18_12RegionFolderB22_NCNvMNtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve13normalizes_to12opaque_typesINtNtB3d_9eval_ctxt8EvalCtxtNtNtB8_6solver13SolverContextB22_E21normalize_opaque_types2_0EEBa_(ptr noundef nonnull %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2), !noalias !2571
  store ptr %i.n, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %.sroa.42.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.p = load <2 x i32>, ptr %1, align 8
  store <2 x i32> %i.p, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 4, ptr %i.q, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesl_1__INtB5_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_4fold12TypeFoldableB1o_E9fold_withINtB2r_7ShifterB1o_EEB1u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !range !34, !noundef !4 ; 3 uses
  %i.c = icmp ne i32 %i.b, 3
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i32 %i.b, -2
  %i.e = icmp samesign ugt i32 %i.b, 1
  %narrow = select i1 %i.e, i32 %i.d, i32 1
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_0
