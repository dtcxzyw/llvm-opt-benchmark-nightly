Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.09?download=true
inline.NumInlined: 5162
inline.NumDeleted: 2096
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RINvXsi_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtNtCs39E2wp1vf7X_6intern2gc16GarbageCollectorNtB6_12WorldExposer17on_interned_sliceNtNtB8_9predicate33BoundExistentialPredicatesStorageEBa_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = tail call noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapjuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.c)
  br label %_RINvMs0_NtCs39E2wp1vf7X_6intern2gcNtB6_16GarbageCollector25mark_interned_slice_aliveNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate33BoundExistentialPredicatesStorageEB1q_.exit

_RINvMs0_NtCs39E2wp1vf7X_6intern2gcNtB6_16GarbageCollector25mark_interned_slice_aliveNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate33BoundExistentialPredicatesStorageEB1q_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.e, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsr_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB6_9ArgFolderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB8_4fold10TypeFolderB14_E11fold_binderINtNtB8_14predicate_kind13PredicateKindB14_EEB1a_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !8
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8
  tail call void @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kinds3_1__INtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_4fold12TypeFoldableB1n_E9fold_withINtNtB7_6binder9ArgFolderB1n_EEB1t_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %i.f, align 8
  %i.g = load i32, ptr %i.a, align 8, !noundef !8
  %i.h = add i32 %i.g, -1
  store i32 %i.h, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXsr_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB6_9ArgFolderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB8_4fold10TypeFolderB14_E11fold_binderINtNtB8_7ty_kind8FnSigTysB14_EEB1a_(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !8
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8
  %i.d = tail call noundef nonnull ptr @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kindsl_1__INtB5_8FnSigTysNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_4fold12TypeFoldableB19_E9fold_withINtNtB7_6binder9ArgFolderB19_EEB1f_(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
  %i.e = load i32, ptr %i.a, align 8, !noundef !8
  %i.f = add i32 %i.e, -1
  store i32 %i.f, ptr %i.a, align 8
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %2, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsr_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB6_9ArgFolderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB8_4fold10TypeFolderB14_E11fold_binderINtNtB8_9predicate20ExistentialPredicateB14_EEB1a_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !8
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %2, align 8, !nonnull !8, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvXNvNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicatesl_1__INtB5_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB7_4fold12TypeFoldableB1o_E9fold_withINtNtB7_6binder9ArgFolderB1o_EEB1u_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
  store ptr %i.e, ptr %0, align 8
  %i.g = load i32, ptr %i.a, align 8, !noundef !8
  %i.h = add i32 %i.g, -1
  store i32 %i.h, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXsr_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB6_9ArgFolderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtNtB8_4fold10TypeFolderB14_E11fold_binderNtNtB18_2ty2TyEB1a_(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !noundef !8
  %i.c = add i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8
  %i.d = tail call noundef nonnull ptr @_RINvXs6_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB6_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB8_8interner10DbInternerE9fold_withINtNtBY_6binder9ArgFolderB1Q_EEBa_(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
  %i.e = load i32, ptr %i.a, align 8, !noundef !8
  %i.f = add i32 %i.e, -1
  store i32 %i.f, ptr %i.a, align 8
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %2, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RINvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core4hash4Hash10hash_sliceNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB1d_(ptr noalias nofree noundef nonnull readonly align 4 captures(address) %0, i64 noundef range(i64 0, 461168601842738791) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %2) unnamed_addr #14 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvXs1o_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB7_17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB1k_.exit
  %.sroa.0.03 = phi ptr [ %i.c, %_RINvXs1o_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB7_17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB1k_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 20 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6981)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6982)
  %i.d = load i32, ptr %.sroa.0.03, align 4, !range !29, !alias.scope !6981, !noundef !8
  switch i32 %i.d, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

default.unreachable:                              ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 4
  %i.f = load i64, ptr %2, align 8, !alias.scope !6983, !noundef !8
  %i.g = mul i64 %i.f, -1065810590584100411
  store i64 %i.g, ptr %2, align 8, !alias.scope !6983
  tail call void @_RINvXs1i_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB7_11BoundTyKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB1e_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2), !alias.scope !6984
  br label %_RINvXs1o_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB7_17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB1k_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 4
  %i.i = load i64, ptr %2, align 8, !alias.scope !6985, !noundef !8
  %i.j = mul i64 %i.i, -1065810590584100411
  %i.k = add i64 %i.j, -1065810590584100411
  store i64 %i.k, ptr %2, align 8, !alias.scope !6985
  tail call void @_RINvXs1c_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB7_15BoundRegionKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB1i_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RINvXs1o_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB7_17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB1k_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.l = load i64, ptr %2, align 8, !alias.scope !6986, !noundef !8
  %i.m = mul i64 %i.l, -1065810590584100411
  %i.n = add i64 %i.m, -2131621181168200822
  store i64 %i.n, ptr %2, align 8, !alias.scope !6986
  br label %_RINvXs1o_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB7_17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB1k_.exit

_RINvXs1o_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB7_17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB1k_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.o = icmp eq ptr %i.c, %i.a
  br i1 %i.o, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvXs1o_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB7_17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB1k_.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB8_9predicate20ExistentialPredicateBV_EENtNtCshzWfHUSfYae_4core4hash4Hash10hash_sliceNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB11_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #1 {
bb.a:
  %.idx = mul nuw nsw i64 %1, 40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.03 = phi ptr [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6995)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.03, i64 8
  tail call void @_RINvXs1v_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB7_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB1q_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  %.val.i = load ptr, ptr %.sroa.0.03, align 8, !alias.scope !6994, !nonnull !8, !noundef !8
  %i.e = ptrtoint ptr %.val.i to i64
  %i.f = load i64, ptr %2, align 8, !alias.scope !6996, !noundef !8
  %i.g = add i64 %i.f, %i.e
  %i.h = mul i64 %i.g, -1065810590584100411
  store i64 %i.h, ptr %2, align 8, !alias.scope !6996
  %i.i = icmp eq ptr %i.c, %i.a
  br i1 %i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate7lattice9LatticeOpINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate12TypeRelationNtNtBb_8interner10DbInternerE6relateINtNtB1l_6binder6BinderB2f_INtNtB1l_7ty_kind5FnSigB2f_EEEBd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(136) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  tail call void @_RINvXs6_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB8_6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB8_7ty_kind5FnSigB1a_EEINtB6_6RelateB1a_E6relateNtNtNtNtB1e_5infer6relate7lattice9LatticeOpEB1g_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate7lattice9LatticeOpINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate12TypeRelationNtNtBb_8interner10DbInternerE6relateINtNtB1l_6binder6BinderB2f_INtNtB1l_9predicate19ExistentialTraitRefB2f_EEEBd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(136) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [40 x i8], align 8                ; 13 uses
  %i.e = alloca [32 x i8], align 16               ; 6 uses
  %i.f = alloca [32 x i8], align 16               ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7026)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7027)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7028
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7030)
  %i.o = load <2 x i32>, ptr %2, align 8, !alias.scope !7031
  %i.p = load <2 x i32>, ptr %3, align 8, !alias.scope !7032
  %i.q = icmp eq <2 x i32> %i.o, %i.p             ; 2 uses
  %4 = extractelement <2 x i1> %i.q, i64 0
  %5 = extractelement <2 x i1> %i.q, i64 1
  %.sroa.0.0.i.i.i.i.i = select i1 %5, i1 %4, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i, label %_RNvXs1B_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_19ExistentialTraitRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1o_.exit.i.i, label %_RNvXs1B_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_19ExistentialTraitRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1o_.exit.thread.i.i

_RNvXs1B_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_19ExistentialTraitRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1o_.exit.i.i: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val4.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !7031, !nonnull !8, !noundef !8
  %.val5.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !7032, !nonnull !8, !noundef !8
  %i.t = icmp eq ptr %.val4.i.i.i, %.val5.i.i.i
  br i1 %i.t, label %bb.b, label %_RNvXs1B_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_19ExistentialTraitRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1o_.exit.thread.i.i

bb.b:                                             ; preds = %_RNvXs1B_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_19ExistentialTraitRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1o_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !7033, !nonnull !8, !noundef !8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !7034, !nonnull !8, !noundef !8
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.c, label %_RNvXs1B_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_19ExistentialTraitRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1o_.exit.thread.i.i

_RNvXs1B_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_19ExistentialTraitRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1o_.exit.thread.i.i: ; preds = %bb.b, %_RNvXs1B_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_19ExistentialTraitRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1o_.exit.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 16, i1 false), !noalias !7036
  %i.z = call noundef zeroext i1 @_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitINtNtB7_9predicate19ExistentialTraitRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB5_16TypeVisitableExtB1p_E26has_vars_bound_at_or_aboveB1v_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, i32 noundef 0), !noalias !7035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7035
  br i1 %i.z, label %bb.k, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !7037
  store i8 -1, ptr %0, align 8, !alias.scope !7038
  br label %_RINvXs6_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB8_6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB8_9predicate19ExistentialTraitRefB1a_EEINtB6_6RelateB1a_E6relateNtNtNtNtB1e_5infer6relate7lattice9LatticeOpEB1g_.exit

bb.d:                                             ; preds = %_RNvXs1B_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_19ExistentialTraitRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1o_.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 16, i1 false), !noalias !7039
  %i.ab = call noundef zeroext i1 @_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitINtNtB7_9predicate19ExistentialTraitRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB5_16TypeVisitableExtB1p_E26has_vars_bound_at_or_aboveB1v_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, i32 noundef 0), !noalias !7035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7035
  br i1 %i.ab, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 16, i1 false), !noalias !7036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 16, i1 false), !noalias !7039
  call void @_RINvXs5_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB8_9predicate19ExistentialTraitRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB6_6RelateB1r_E6relateNtNtNtNtB1v_5infer6relate7lattice9LatticeOpEB1x_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.h), !noalias !7040
  %i.ac = load i8, ptr %i.j, align 8, !range !46, !noalias !7035, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ac, -1
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.438.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.539.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.542.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.542.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.539.0..sroa_idx.i.i, i64 16, i1 false), !noalias !7041
  %.sroa.441.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.441.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.438.0..sroa_idx.i.i, i64 23, i1 false), !noalias !7041
  store i8 %i.ac, ptr %0, align 8, !alias.scope !7038
  br label %_RINvXs6_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB8_6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB8_9predicate19ExistentialTraitRefB1a_EEINtB6_6RelateB1a_E6relateNtNtNtNtB1e_5infer6relate7lattice9LatticeOpEB1g_.exit

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !noalias !7035
  %i.ae = call noundef zeroext i1 @_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitINtNtB7_9predicate19ExistentialTraitRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB5_16TypeVisitableExtB1p_E26has_vars_bound_at_or_aboveB1v_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, i32 noundef 0), !noalias !7042
  br i1 %i.ae, label %bb.j, label %bb.h, !prof !17

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7043
  call void @_RNvMs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB5_10DbInterner7conjure(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f), !noalias !7042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7043
  %i.af = load <2 x ptr>, ptr %i.f, align 16, !noalias !7043
  store <2 x ptr> %i.af, ptr %i.e, align 16, !noalias !7043
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 0, ptr %i.ag, align 16, !noalias !7043
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr null, ptr %i.ah, align 8, !noalias !7043
  %i.ai = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 2424) acquire, align 8, !noalias !7044
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_RNvMs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate19ExistentialTraitRefB10_EE5dummyB16_.exit.i.i, label %bb.i, !prof !22

bb.i:                                             ; preds = %bb.h
  call void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE10initializeNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_(ptr noundef nonnull align 8 @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e), !noalias !7042
  br label %_RNvMs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate19ExistentialTraitRefB10_EE5dummyB16_.exit.i.i

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7043
  store ptr %i.k, ptr %i.g, align 8, !noalias !7043
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsf_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8ir_printINtNtB7_9predicate19ExistentialTraitRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtB1y_, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !7043
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @83, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #44, !noalias !7042
  unreachable

_RNvMs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate19ExistentialTraitRefB10_EE5dummyB16_.exit.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7043
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 2312), align 8, !noalias !7043, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7043
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !7041
  %.sroa.557.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ak, ptr %.sroa.557.0..sroa_idx.i.i, align 8, !alias.scope !7038
  store i8 -1, ptr %0, align 8, !alias.scope !7038
  br label %_RINvXs6_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB8_6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB8_9predicate19ExistentialTraitRefB1a_EEINtB6_6RelateB1a_E6relateNtNtNtNtB1e_5infer6relate7lattice9LatticeOpEB1g_.exit

bb.k:                                             ; preds = %bb.d, %_RNvXs1B_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_19ExistentialTraitRefNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1o_.exit.thread.i.i
  %.sroa.049.0.copyload.i.i = load i64, ptr %2, align 8, !alias.scope !7033
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !7033
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.653.0.copyload.i.i = load i64, ptr %.sroa.653.0..sroa_idx.i.i, align 8, !alias.scope !7033
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !7039
  call void @llvm.experimental.noalias.scope.decl(metadata !7045)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !7046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7046
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !7047, !nonnull !8, !align !27, !noundef !8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !7047, !nonnull !8, !noundef !8
  store ptr %i.an, ptr %i.c, align 8, !noalias !7046
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ao, ptr %i.ar, align 8, !noalias !7046
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.aq, ptr %i.as, align 8, !noalias !7046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7046
  store i64 %.sroa.049.0.copyload.i.i, ptr %i.a, align 8, !noalias !7048
  %.sroa.5.0..sroa_idx51.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx51.i.i, align 8, !noalias !7048
  %.sroa.653.0..sroa_idx54.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.653.0.copyload.i.i, ptr %.sroa.653.0..sroa_idx54.i.i, align 8, !noalias !7048
  call void @_RINvMs_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer2atNtB5_2At2eqINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtB9_8interner10DbInternerINtNtB18_9predicate19ExistentialTraitRefB1V_EEEBb_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !noalias !7049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7046
  %i.at = load i8, ptr %i.d, align 8, !range !46, !noalias !7046, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.at, -1
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.431.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.413.0..sroa_idx.i.i.i, i64 7, i1 false), !noalias !7041
  %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.413.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !7046
  %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.413.sroa.5.0.copyload.i.i.i = load ptr, ptr %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !7046
  %.sroa.413.sroa.6.0..sroa.413.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.413.sroa.6.0.copyload.i.i.i = load i64, ptr %.sroa.413.sroa.6.0..sroa.413.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !7046
  %.sroa.514.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.514.0.copyload.i.i.i = load i64, ptr %.sroa.514.0..sroa_idx.i.i.i, align 8, !noalias !7046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7035
  %i.au = inttoptr i64 %.sroa.413.sroa.6.0.copyload.i.i.i to ptr
  store i8 %i.at, ptr %0, align 8, !alias.scope !7038
  %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.sroa.4.0.copyload.i.i.i, ptr %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !7038
  %.sroa.431.sroa.5.0..sroa.431.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.413.sroa.5.0.copyload.i.i.i, ptr %.sroa.431.sroa.5.0..sroa.431.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !7038
  %.sroa.532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.au, ptr %.sroa.532.0..sroa_idx.i.i, align 8, !alias.scope !7038
  %.sroa.633.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.514.0.copyload.i.i.i, ptr %.sroa.633.0..sroa_idx.i.i, align 8, !alias.scope !7038
  br label %_RINvXs6_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB8_6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB8_9predicate19ExistentialTraitRefB1a_EEINtB6_6RelateB1a_E6relateNtNtNtNtB1e_5infer6relate7lattice9LatticeOpEB1g_.exit

bb.m:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.022.0.copyload.i.i.i = load i64, ptr %i.av, align 8, !noalias !7046 ; 2 uses
  %.sroa.423.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.423.0.copyload.i.i.i = load ptr, ptr %.sroa.423.0..sroa_idx.i.i.i, align 8, !noalias !7046, !nonnull !8, !noundef !8 ; 3 uses
  %.sroa.524.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.524.0.copyload.i.i.i = load i64, ptr %.sroa.524.0..sroa_idx.i.i.i, align 8, !noalias !7046 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7046
  %i.aw = icmp ult i64 %.sroa.524.0.copyload.i.i.i, 288230376151711744
  call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %.sroa.423.0.copyload.i.i.i, i64 %.sroa.524.0.copyload.i.i.i
  %i.ay = icmp sgt i64 %.sroa.022.0.copyload.i.i.i, -1
  call void @llvm.assume(i1 %i.ay)
  store ptr %.sroa.423.0.copyload.i.i.i, ptr %i.b, align 8, !noalias !7046
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.022.0.copyload.i.i.i, ptr %i.az, align 8, !noalias !7046
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.423.0.copyload.i.i.i, ptr %i.ba, align 8, !noalias !7046
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ax, ptr %i.bb, align 8, !noalias !7046
  call void @_RNvXs0_NtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB7_3VecINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtB11_9predicate9PredicateEEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendB13_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !noalias !7050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7035
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !alias.scope !7037
  store i8 -1, ptr %0, align 8, !alias.scope !7038
  br label %_RINvXs6_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB8_6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB8_9predicate19ExistentialTraitRefB1a_EEINtB6_6RelateB1a_E6relateNtNtNtNtB1e_5infer6relate7lattice9LatticeOpEB1g_.exit

_RINvXs6_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relateINtNtB8_6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB8_9predicate19ExistentialTraitRefB1a_EEINtB6_6RelateB1a_E6relateNtNtNtNtB1e_5infer6relate7lattice9LatticeOpEB1g_.exit: ; preds = %bb.c, %bb.f, %_RNvMs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate19ExistentialTraitRefB10_EE5dummyB16_.exit.i.i, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7028
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7028
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate7lattice9LatticeOpINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate12TypeRelationNtNtBb_8interner10DbInternerE6relateINtNtB1l_6binder6BinderB2f_INtNtB1l_9predicate21ExistentialProjectionB2f_EEEBd_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(136) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
end_hunk_0
begin_hunk_1_@_RNvMss_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_9ArgFolderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE24const_param_out_of_rangeB19_:bb.a
  store i32 %.val, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB5_10ParamConstNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB4_5ConstNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.g, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.e, ptr %i.h, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRSNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgNtB6_5Debug3fmtBD_, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @115, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #44
  unreachable
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvMss_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_9ArgFolderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE25region_param_out_of_rangeB19_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(20) %1, ptr noundef nonnull %2) unnamed_addr #19 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load i32, ptr %i.d, align 4, !noundef !8
  store i32 %.val, ptr %i.b, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB5_16EarlyParamRegionNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs2_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB5_6RegionNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.b, ptr %i.g, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.e, ptr %i.h, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRSNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgNtB6_5Debug3fmtBD_, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @117, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMst_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerE7releaseCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8600)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !30, !alias.scope !8600, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_RNvMst_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerE8release2Cs8K4cjrcxBsw_6hir_ty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.c, align 8, !alias.scope !8600
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !8600, !noundef !8 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !alias.scope !8600, !nonnull !8, !noundef !8
  %i.i = and i64 %i.g, -2251799813685248          ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.k = cmpxchg ptr %i.j, i64 %i.g, i64 %i.i acq_rel acquire, align 8, !noalias !8600 ; 2 uses
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.k, 1
  br i1 %.sroa.18.0.in.i.i, label %_RNvMst_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerE8release2Cs8K4cjrcxBsw_6hir_ty.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.l = or disjoint i64 %i.i, 3
  br label %bb.c

bb.c:                                             ; preds = %_RNvXsf_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCs8K4cjrcxBsw_6hir_ty.exit.i, %.preheader.i
  %.pn19.i = phi { i64, i1 } [ %i.o, %_RNvXsf_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCs8K4cjrcxBsw_6hir_ty.exit.i ], [ %i.k, %.preheader.i ]
  %.sroa.01.0.i.pn.i = extractvalue { i64, i1 } %.pn19.i, 0 ; 2 uses
  %i.m = and i64 %.sroa.01.0.i.pn.i, 3
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %bb.d, label %_RNvXsf_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCs8K4cjrcxBsw_6hir_ty.exit.i, !prof !57

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8600
  store i64 2, ptr %i.b, align 8, !noalias !8600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8600
  store ptr %i.b, ptr %i.a, align 8, !noalias !8600
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtNtCshzWfHUSfYae_4core3fmt3numjNtB7_6Binary3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !8600
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @233, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #44, !noalias !8600
  unreachable

_RNvXsf_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCs8K4cjrcxBsw_6hir_ty.exit.i: ; preds = %bb.c
  %i.o = cmpxchg ptr %i.j, i64 %.sroa.01.0.i.pn.i, i64 %i.l acq_rel acquire, align 8, !noalias !8600 ; 2 uses
  %.sroa.18.0.in.i12.i = extractvalue { i64, i1 } %i.o, 1
  br i1 %.sroa.18.0.in.i12.i, label %_RNvMst_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerE8release2Cs8K4cjrcxBsw_6hir_ty.exit, label %bb.c

_RNvMst_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerE8release2Cs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RNvXsf_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCs8K4cjrcxBsw_6hir_ty.exit.i, %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %_RNvXsf_NtNtCs4gx7repjoPU_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCs8K4cjrcxBsw_6hir_ty.exit.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsx_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE13expect_regionB1i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(20) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !29, !noundef !8
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @119, ptr noundef nonnull inttoptr (i64 83 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsx_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE9expect_tyB1i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(20) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !29, !noundef !8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false)
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @121, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #44
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBv_14predicate_kind13PredicateKindB1i_EEINtB2_10EquivalentBq_E10equivalentB1o_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #20 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8623)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8625)
  %i.a = load i64, ptr %0, align 8, !range !8626, !alias.scope !8627, !noundef !8 ; 3 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 8) ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !8626, !alias.scope !8628, !noundef !8 ; 3 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 8)
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.b, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %.split17.i
    i64 2, label %bb.o
    i64 3, label %bb.q
    i64 4, label %bb.r
    i64 6, label %bb.s
    i64 7, label %bb.u
    i64 5, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i
  ]

default.unreachable:                              ; preds = %bb.e, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %i.c, 9
  br i1 %i.f, label %bb.d, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8630)
  %i.g = icmp eq i64 %i.a, %i.c
  br i1 %i.g, label %bb.e, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.e:                                             ; preds = %bb.d
  switch i64 %i.a, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.l
    i64 5, label %.split6.i
    i64 6, label %.split.i
    i64 7, label %bb.m
    i64 8, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8632)
  %i.j = load <2 x i32>, ptr %i.h, align 8, !alias.scope !8633
  %i.k = load <2 x i32>, ptr %i.i, align 8, !alias.scope !8634
  %i.l = icmp eq <2 x i32> %i.j, %i.k             ; 2 uses
  %2 = extractelement <2 x i1> %i.l, i64 0
  %3 = extractelement <2 x i1> %i.l, i64 1
  %.sroa.0.0.i.i.i.i.i.i = select i1 %3, i1 %2, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.g, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !8633, !nonnull !8, !noundef !8
  %.val5.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !8634, !nonnull !8, !noundef !8
  %i.o = icmp eq ptr %.val4.i.i.i.i, %.val5.i.i.i.i
  br i1 %i.o, label %.split13.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split13.i:                                       ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i8, ptr %i.p, align 8, !range !30, !alias.scope !8633, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i8, ptr %i.r, align 8, !range !30, !alias.scope !8634, !noundef !8
  %i.t = icmp eq i8 %i.q, %i.s
  br i1 %i.t, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.h:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !8635, !nonnull !8, !noundef !8
  %.val12.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !8636, !nonnull !8, !noundef !8
  %i.w = icmp eq ptr %.val11.i.i.i, %.val12.i.i.i
  br i1 %i.w, label %.split7.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.i:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !8635, !nonnull !8, !noundef !8
  %.val6.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !8636, !nonnull !8, !noundef !8
  %i.z = icmp eq ptr %.val5.i.i.i, %.val6.i.i.i
  br i1 %i.z, label %.split15.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.j:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8637)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8638)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i17.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !8639, !nonnull !8, !noundef !8
  %.val1.i18.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !8640, !nonnull !8, !noundef !8
  %i.ae = icmp eq ptr %.val.i17.i.i.i, %.val1.i18.i.i.i
  br i1 %i.ae, label %bb.k, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = tail call fastcc noundef zeroext i1 @_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.ag, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.af) #40
  br i1 %i.ah, label %.split8.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split8.i:                                        ; preds = %bb.k
  %.val2.i20.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !8639, !nonnull !8, !noundef !8
  %.val3.i21.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !8640, !nonnull !8, !noundef !8
  %i.ai = icmp eq ptr %.val2.i20.i.i.i, %.val3.i21.i.i.i
  br i1 %i.ai, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.l:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !8635, !nonnull !8, !noundef !8
  %.val16.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !8636, !nonnull !8, !noundef !8
  %i.al = icmp eq ptr %.val15.i.i.i, %.val16.i.i.i
  br i1 %i.al, label %.split11.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split6.i:                                        ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i.i = load ptr, ptr %i.am, align 8, !alias.scope !8635, !nonnull !8, !noundef !8
  %.val2.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !8636, !nonnull !8, !noundef !8
  %i.ao = icmp eq ptr %.val.i.i.i, %.val2.i.i.i
  br i1 %i.ao, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split.i:                                         ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val13.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !8635, !nonnull !8, !noundef !8
  %.val14.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !8636, !nonnull !8, !noundef !8
  %i.ar = icmp eq ptr %.val13.i.i.i, %.val14.i.i.i
  br i1 %i.ar, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.m:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8642)
  %i.au = load <2 x i32>, ptr %i.as, align 8, !alias.scope !8643
  %i.av = load <2 x i32>, ptr %i.at, align 8, !alias.scope !8644
  %i.aw = icmp eq <2 x i32> %i.au, %i.av          ; 2 uses
  %4 = extractelement <2 x i1> %i.aw, i64 0
  %5 = extractelement <2 x i1> %i.aw, i64 1
  %.sroa.0.0.i.i.i26.i.i.i = select i1 %5, i1 %4, i1 false
  br i1 %.sroa.0.0.i.i.i26.i.i.i, label %bb.n, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4.i28.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !8643, !nonnull !8, !noundef !8
  %.val5.i29.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !8644, !nonnull !8, !noundef !8
  %i.az = icmp eq ptr %.val4.i28.i.i.i, %.val5.i29.i.i.i
  br i1 %i.az, label %.split10.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split10.i:                                       ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bb = load i8, ptr %i.ba, align 8, !range !30, !alias.scope !8643, !noundef !8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load i8, ptr %i.bc, align 8, !range !30, !alias.scope !8644, !noundef !8
  %i.be = icmp eq i8 %i.bb, %i.bd
  br i1 %i.be, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split7.i:                                        ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9.i.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !8635, !nonnull !8, !noundef !8
  %.val10.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !8636, !nonnull !8, !noundef !8
  %i.bh = icmp eq ptr %.val9.i.i.i, %.val10.i.i.i
  br i1 %i.bh, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split15.i:                                       ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val7.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !8635, !nonnull !8, !noundef !8
  %.val8.i.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !8636, !nonnull !8, !noundef !8
  %i.bk = icmp eq ptr %.val7.i.i.i, %.val8.i.i.i
  br i1 %i.bk, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split11.i:                                       ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !8635, !nonnull !8, !noundef !8
  %.val4.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !8636, !nonnull !8, !noundef !8
  %i.bn = icmp eq ptr %.val3.i.i.i, %.val4.i.i.i
  br i1 %i.bn, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split17.i:                                       ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load <2 x i32>, ptr %i.bo, align 8, !alias.scope !8627
  %i.br = load <2 x i32>, ptr %i.bp, align 8, !alias.scope !8628
  %i.bs = icmp eq <2 x i32> %i.bq, %i.br          ; 2 uses
  %6 = extractelement <2 x i1> %i.bs, i64 0
  %7 = extractelement <2 x i1> %i.bs, i64 1
  %.sroa.0.0.i.i.i.i = select i1 %7, i1 %6, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.o:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load i8, ptr %i.bv, align 8, !range !30, !alias.scope !8627, !noundef !8
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load i8, ptr %i.bx, align 8, !range !30, !alias.scope !8628, !noundef !8
  %i.bz = icmp eq i8 %i.bw, %i.by
  br i1 %i.bz, label %bb.p, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val15.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !8627, !nonnull !8, !noundef !8
  %.val16.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !8628, !nonnull !8, !noundef !8
  %i.cc = icmp eq ptr %.val15.i.i, %.val16.i.i
  br i1 %i.cc, label %.split16.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split16.i:                                       ; preds = %bb.p
  %.val13.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !8627, !nonnull !8, !noundef !8
  %.val14.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !8628, !nonnull !8, !noundef !8
  %i.cd = icmp eq ptr %.val13.i.i, %.val14.i.i
  br i1 %i.cd, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.q:                                             ; preds = %bb.b
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11.i.i = load ptr, ptr %i.ce, align 8, !alias.scope !8627, !nonnull !8, !noundef !8
  %.val12.i.i = load ptr, ptr %i.cf, align 8, !alias.scope !8628, !nonnull !8, !noundef !8
  %i.cg = icmp eq ptr %.val11.i.i, %.val12.i.i
  br i1 %i.cg, label %.split14.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split14.i:                                       ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !8627, !nonnull !8, !noundef !8
  %.val10.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !8628, !nonnull !8, !noundef !8
  %i.cj = icmp eq ptr %.val9.i.i, %.val10.i.i
  br i1 %i.cj, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.r:                                             ; preds = %bb.b
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val19.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !8627, !nonnull !8, !noundef !8
  %.val20.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !8628, !nonnull !8, !noundef !8
  %i.cm = icmp eq ptr %.val19.i.i, %.val20.i.i
  br i1 %i.cm, label %.split12.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split12.i:                                       ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17.i.i = load ptr, ptr %i.co, align 8, !alias.scope !8627, !nonnull !8, !noundef !8
  %.val18.i.i = load ptr, ptr %i.cn, align 8, !alias.scope !8628, !nonnull !8, !noundef !8
  %i.cp = icmp eq ptr %.val17.i.i, %.val18.i.i
  br i1 %i.cp, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.s:                                             ; preds = %bb.b
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8646)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i21.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !8647, !nonnull !8, !noundef !8
  %.val1.i.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !8648, !nonnull !8, !noundef !8
  %i.cu = icmp eq ptr %.val.i21.i.i, %.val1.i.i.i
  br i1 %i.cu, label %bb.t, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.t:                                             ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cx = tail call fastcc noundef zeroext i1 @_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cw, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.cv) #40
  br i1 %i.cx, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.u:                                             ; preds = %bb.b
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !8627, !nonnull !8, !noundef !8
  %.val8.i.i = load ptr, ptr %i.cz, align 8, !alias.scope !8628, !nonnull !8, !noundef !8
  %i.da = icmp eq ptr %.val7.i.i, %.val8.i.i
  br i1 %i.da, label %bb.v, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

bb.v:                                             ; preds = %bb.u
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i.i = load ptr, ptr %i.dc, align 8, !alias.scope !8627, !nonnull !8, !noundef !8
  %.val6.i.i = load ptr, ptr %i.db, align 8, !alias.scope !8628, !nonnull !8, !noundef !8
  %i.dd = icmp eq ptr %.val5.i.i, %.val6.i.i
  br i1 %i.dd, label %.split9.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

.split9.i:                                        ; preds = %bb.v
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.df = load i8, ptr %i.de, align 8, !range !30, !alias.scope !8627, !noundef !8
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dh = load i8, ptr %i.dg, align 8, !range !30, !alias.scope !8628, !noundef !8
  %i.di = icmp eq i8 %i.df, %i.dh
  br i1 %i.di, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.i: ; preds = %bb.t
  %.val2.i22.i.i = load ptr, ptr %i.cs, align 8, !alias.scope !8647, !nonnull !8, !noundef !8
  %.val3.i23.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !8648, !nonnull !8, !noundef !8
  %i.dj = icmp eq ptr %.val2.i22.i.i, %.val3.i23.i.i
  br i1 %i.dj, label %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i, label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i: ; preds = %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.i, %.split9.i, %.split12.i, %.split14.i, %.split16.i, %.split17.i, %.split11.i, %.split15.i, %.split7.i, %.split10.i, %.split.i, %.split6.i, %.split8.i, %.split13.i, %bb.e, %bb.c, %bb.b
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i = load ptr, ptr %i.dl, align 8, !alias.scope !8622, !nonnull !8, !noundef !8
  %.val1.i = load ptr, ptr %i.dk, align 8, !alias.scope !8623, !nonnull !8, !noundef !8
  %i.dm = icmp eq ptr %.val.i, %.val1.i
  br label %_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit

_RNvXsK_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB16_.exit: ; preds = %bb.a, %bb.d, %bb.f, %bb.g, %.split13.i, %bb.h, %bb.i, %bb.j, %bb.k, %.split8.i, %bb.l, %.split6.i, %.split.i, %bb.m, %bb.n, %.split10.i, %.split7.i, %.split15.i, %.split11.i, %.split17.i, %bb.o, %bb.p, %.split16.i, %bb.q, %.split14.i, %bb.r, %.split12.i, %bb.s, %bb.t, %bb.u, %bb.v, %.split9.i, %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.i, %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i
  %.sroa.0.0.i = phi i1 [ %i.dm, %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.thread4.i ], [ false, %_RNvXsa_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1n_.exit.i ], [ false, %.split17.i ], [ false, %.split.i ], [ false, %.split6.i ], [ false, %.split7.i ], [ false, %.split8.i ], [ false, %.split9.i ], [ false, %.split10.i ], [ false, %.split11.i ], [ false, %.split12.i ], [ false, %.split13.i ], [ false, %.split14.i ], [ false, %.split15.i ], [ false, %.split16.i ], [ false, %bb.u ], [ false, %bb.a ], [ false, %bb.o ], [ false, %bb.q ], [ false, %bb.r ], [ false, %bb.t ], [ false, %bb.s ], [ false, %bb.m ], [ false, %bb.j ], [ false, %bb.p ], [ false, %bb.v ], [ false, %bb.l ], [ false, %bb.d ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.i ], [ false, %bb.k ], [ false, %bb.n ], [ false, %bb.f ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6upcastINtNtB4_6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB4_14predicate_kind13PredicateKindB16_EEINtB2_6UpcastB16_NtNtB1a_9predicate9PredicateE6upcastB1c_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvXsq_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_9PredicateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6upcast10UpcastFromNtNtB7_8interner10DbInternerINtNtB1b_6binder6BinderB23_INtNtB1b_14predicate_kind13PredicateKindB23_EEE11upcast_from(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6upcastINtNtB4_6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB4_9predicate8TraitRefB16_EEINtB2_6UpcastB16_NtNtB1a_9predicate9PredicateE6upcastB1c_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef nonnull ptr @_RNvXsw_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_9PredicateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6upcast10UpcastFromNtNtB7_8interner10DbInternerINtNtB1b_6binder6BinderB23_INtNtB1b_9predicate8TraitRefB23_EEE11upcast_from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RNvXNtCs39E2wp1vf7X_6intern2gcINtB2_15InternedStorageNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedENtB2_7Storage3lenBV_(ptr noalias nofree noundef nonnull readonly captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsi_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocationNtB7_18AllocationInternedNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, i64 24) acquire, align 8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE10initializeNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4A_13InternStorageB20_E3get0E0zEB26_(ptr noundef nonnull align 8 @_RNvNvXsi_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocationNtB7_18AllocationInternedNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE)
  br label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit

_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit: ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr @_RNvNvXsi_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocationNtB7_18AllocationInternedNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, align 8, !nonnull !8, !noundef !8
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsi_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocationNtB7_18AllocationInternedNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, i64 8), align 8, !noundef !8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2B_4util11SharedValueuEEEEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB6q_8adapters3map8map_foldRBQ_jjNCNvXs2_B2B_INtB2B_7DashMapB41_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2B_1t3MapB41_uB8g_E4__len0NCINvXsK_NtB6o_5accumjNtB9D_3Sum3sumINtB7a_3MapBF_B7K_EE0E0EB4H_.exit, label %.preheader

.preheader:                                       ; preds = %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2G_4util11SharedValueuEEEEEjjNCNvXs2_B2G_INtB2G_7DashMapB46_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2G_1t3MapB46_uB6W_E4__len0NCINvXsK_NtNtB8_6traits5accumjNtB8j_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB6q_EE0E0B4M_.exit.i
  %.sroa.04.0.i = phi i64 [ %i.q, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2G_4util11SharedValueuEEEEEjjNCNvXs2_B2G_INtB2G_7DashMapB46_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2G_1t3MapB46_uB6W_E4__len0NCINvXsK_NtNtB8_6traits5accumjNtB8j_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB6q_EE0E0B4M_.exit.i ], [ 0, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.p, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2G_4util11SharedValueuEEEEEjjNCNvXs2_B2G_INtB2G_7DashMapB46_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2G_1t3MapB46_uB6W_E4__len0NCINvXsK_NtNtB8_6traits5accumjNtB8j_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB6q_EE0E0B4M_.exit.i ], [ 0, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit ]
  %i.f = getelementptr inbounds nuw [128 x i8], ptr %i.c, i64 %.sroa.04.0.i ; 6 uses
  %i.g = load atomic i64, ptr %i.f monotonic, align 8 ; 3 uses
  %i.h = icmp ugt i64 %i.g, -9
  br i1 %i.h, label %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, label %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, !prof !20

_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i: ; preds = %.preheader
  %i.i = add nuw i64 %i.g, 4
  %i.j = cmpxchg weak ptr %i.f, i64 %i.g, i64 %i.i acquire monotonic, align 8
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.c, label %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, !prof !58

_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i: ; preds = %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i, %.preheader
  tail call void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock16lock_shared_slow(ptr noundef nonnull align 128 %i.f)
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.thread.i.i.i, %_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock20try_lock_shared_fast.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.m = load i64, ptr %i.l, align 8, !noundef !8
  %i.n = atomicrmw add ptr %i.f, i64 -4 release, align 8
  %i.o = icmp eq i64 %i.n, 6
  br i1 %i.o, label %bb.d, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2G_4util11SharedValueuEEEEEjjNCNvXs2_B2G_INtB2G_7DashMapB46_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2G_1t3MapB46_uB6W_E4__len0NCINvXsK_NtNtB8_6traits5accumjNtB8j_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB6q_EE0E0B4M_.exit.i, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 128 %i.f)
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2G_4util11SharedValueuEEEEEjjNCNvXs2_B2G_INtB2G_7DashMapB46_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2G_1t3MapB46_uB6W_E4__len0NCINvXsK_NtNtB8_6traits5accumjNtB8j_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB6q_EE0E0B4M_.exit.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2G_4util11SharedValueuEEEEEjjNCNvXs2_B2G_INtB2G_7DashMapB46_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2G_1t3MapB46_uB6W_E4__len0NCINvXsK_NtNtB8_6traits5accumjNtB8j_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB6q_EE0E0B4M_.exit.i: ; preds = %bb.d, %bb.c
  %i.p = add i64 %i.m, %.sroa.02.0.i              ; 2 uses
  %i.q = add nuw i64 %.sroa.04.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.d
  br i1 %i.r, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2B_4util11SharedValueuEEEEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB6q_8adapters3map8map_foldRBQ_jjNCNvXs2_B2B_INtB2B_7DashMapB41_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2B_1t3MapB41_uB8g_E4__len0NCINvXsK_NtB6o_5accumjNtB9D_3Sum3sumINtB7a_3MapBF_B7K_EE0E0EB4H_.exit, label %.preheader

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2B_4util11SharedValueuEEEEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB6q_8adapters3map8map_foldRBQ_jjNCNvXs2_B2B_INtB2B_7DashMapB41_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2B_1t3MapB41_uB8g_E4__len0NCINvXsK_NtB6o_5accumjNtB9D_3Sum3sumINtB7a_3MapBF_B7K_EE0E0EB4H_.exit: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2G_4util11SharedValueuEEEEEjjNCNvXs2_B2G_INtB2G_7DashMapB46_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2G_1t3MapB46_uB6W_E4__len0NCINvXsK_NtNtB8_6traits5accumjNtB8j_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB6q_EE0E0B4M_.exit.i, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit
  %.sroa.0.0.i = phi i64 [ 0, %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit ], [ %i.p, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtCsldOuP8y2tPE_15crossbeam_utils12cache_padded11CachePaddedINtNtCs8E1BR24LTvI_8lock_api6rwlock6RwLockNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEINtNtB2G_4util11SharedValueuEEEEEjjNCNvXs2_B2G_INtB2G_7DashMapB46_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtB2G_1t3MapB46_uB6W_E4__len0NCINvXsK_NtNtB8_6traits5accumjNtB8j_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB6q_EE0E0B4M_.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCs39E2wp1vf7X_6intern2gcINtB2_15InternedStorageNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedENtB2_7Storage4markBV_(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXsi_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocationNtB7_18AllocationInternedNtNtCs39E2wp1vf7X_6intern6intern10Internable7storage7STORAGE, i64 24) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockINtCs2WklPA5QxgX_7dashmap7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10allocation18AllocationInternedEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEE15get_or_try_initNCINvB2_11get_or_initNCNvMsj_NtCs39E2wp1vf7X_6intern6internINtB4F_13InternStorageB20_E3get0E0zEB26_.exit, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_9enumerate9EnumerateINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEEB1E_EENCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtB2u_5infer9InferCtxtNtNtB2u_8interner10DbInternerNtNtNtB4R_6relate7lattice9LatticeOpNCNCINvB3I_23structurally_relate_tysB5d_B5G_E0s0_0E0ENtNtNtB9_6traits8iterator8Iterator4nextB2w_:bb.a
    i8 0, label %_RNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1h_8interner10DbInternerNtNtNtB1f_6relate7lattice9LatticeOpNCNCINvB6_23structurally_relate_tysB27_B2A_E0s0_0E0B1j_.exit
    i8 1, label %bb.d
    i8 2, label %_RNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1h_8interner10DbInternerNtNtNtB1f_6relate7lattice9LatticeOpNCNCINvB6_23structurally_relate_tysB27_B2A_E0s0_0E0B1j_.exit
    i8 3, label %bb.f
  ], !prof !60

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #44, !noalias !9790
  unreachable

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = icmp ugt i64 %i.p, 4294967295
  br i1 %i.v, label %bb.e, label %_RNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1h_8interner10DbInternerNtNtNtB1f_6relate7lattice9LatticeOpNCNCINvB6_23structurally_relate_tysB27_B2A_E0s0_0E0B1j_.exit, !prof !17

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9790
  store i8 2, ptr %i.e, align 1, !noalias !9790
  call void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #44, !noalias !9790
  unreachable

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !9789, !nonnull !8, !align !27, !noundef !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9790
  store ptr %i.l, ptr %i.d, align 8, !noalias !9790
  %i.y = call noundef zeroext i1 @_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgINtB5_16TypeVisitableExtNtNtBQ_8interner10DbInternerE14has_type_flagsBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, i32 noundef 40), !noalias !9790
  br i1 %i.y, label %_RNCNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1j_8interner10DbInternerNtNtNtB1h_6relate7lattice9LatticeOpNCNCINvB8_23structurally_relate_tysB29_B2C_E0s0_0E00B1l_.exit.i, label %_RNCNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1j_8interner10DbInternerNtNtNtB1h_6relate7lattice9LatticeOpNCNCINvB8_23structurally_relate_tysB29_B2C_E0s0_0E00B1l_.exit.thread.i

_RNCNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1j_8interner10DbInternerNtNtNtB1h_6relate7lattice9LatticeOpNCNCINvB8_23structurally_relate_tysB29_B2C_E0s0_0E00B1l_.exit.thread.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9790
  br label %bb.g

_RNCNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1j_8interner10DbInternerNtNtNtB1h_6relate7lattice9LatticeOpNCNCINvB8_23structurally_relate_tysB29_B2C_E0s0_0E00B1l_.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9790
  %i.z = call noundef nonnull ptr @_RINvXNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer7contextNtB5_9InferCtxtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir10infer_ctxt13InferCtxtLike24resolve_vars_if_possibleNtNtB7_11generic_arg10GenericArgEB9_(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.l), !noalias !9790
  store ptr %i.z, ptr %i.c, align 8, !noalias !9790
  %i.aa = call noundef zeroext i1 @_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgINtB5_16TypeVisitableExtNtNtBQ_8interner10DbInternerE14has_type_flagsBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i32 noundef 40), !noalias !9790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9790
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNCNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1j_8interner10DbInternerNtNtNtB1h_6relate7lattice9LatticeOpNCNCINvB8_23structurally_relate_tysB29_B2C_E0s0_0E00B1l_.exit.i, %_RNCNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1j_8interner10DbInternerNtNtNtB1h_6relate7lattice9LatticeOpNCNCINvB8_23structurally_relate_tysB29_B2C_E0s0_0E00B1l_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9790
  store ptr %i.n, ptr %i.b, align 8, !noalias !9790
  %i.ab = call noundef zeroext i1 @_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgINtB5_16TypeVisitableExtNtNtBQ_8interner10DbInternerE14has_type_flagsBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i32 noundef 40), !noalias !9790
  br i1 %i.ab, label %_RNCNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1j_8interner10DbInternerNtNtNtB1h_6relate7lattice9LatticeOpNCNCINvB8_23structurally_relate_tysB29_B2C_E0s0_0E00B1l_.exit9.i, label %_RNCNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1j_8interner10DbInternerNtNtNtB1h_6relate7lattice9LatticeOpNCNCINvB8_23structurally_relate_tysB29_B2C_E0s0_0E00B1l_.exit9.thread.i

_RNCNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1j_8interner10DbInternerNtNtNtB1h_6relate7lattice9LatticeOpNCNCINvB8_23structurally_relate_tysB29_B2C_E0s0_0E00B1l_.exit9.thread.i: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9790
  br label %_RNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1h_8interner10DbInternerNtNtNtB1f_6relate7lattice9LatticeOpNCNCINvB6_23structurally_relate_tysB27_B2A_E0s0_0E0B1j_.exit

_RNCNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1j_8interner10DbInternerNtNtNtB1h_6relate7lattice9LatticeOpNCNCINvB8_23structurally_relate_tysB29_B2C_E0s0_0E00B1l_.exit9.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9790
  %i.ac = call noundef nonnull ptr @_RINvXNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer7contextNtB5_9InferCtxtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir10infer_ctxt13InferCtxtLike24resolve_vars_if_possibleNtNtB7_11generic_arg10GenericArgEB9_(ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.n), !noalias !9790
  store ptr %i.ac, ptr %i.a, align 8, !noalias !9790
  %i.ad = call noundef zeroext i1 @_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgINtB5_16TypeVisitableExtNtNtBQ_8interner10DbInternerE14has_type_flagsBS_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, i32 noundef 40), !noalias !9790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9790
  br i1 %i.ad, label %bb.h, label %_RNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1h_8interner10DbInternerNtNtNtB1f_6relate7lattice9LatticeOpNCNCINvB6_23structurally_relate_tysB27_B2A_E0s0_0E0B1j_.exit

bb.h:                                             ; preds = %_RNCNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1j_8interner10DbInternerNtNtNtB1h_6relate7lattice9LatticeOpNCNCINvB8_23structurally_relate_tysB29_B2C_E0s0_0E00B1l_.exit9.i, %_RNCNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1j_8interner10DbInternerNtNtNtB1h_6relate7lattice9LatticeOpNCNCINvB8_23structurally_relate_tysB29_B2C_E0s0_0E00B1l_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !9789, !nonnull !8, !noundef !8
  store i8 1, ptr %i.af, align 1, !noalias !9790
  br label %_RNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1h_8interner10DbInternerNtNtNtB1f_6relate7lattice9LatticeOpNCNCINvB6_23structurally_relate_tysB27_B2A_E0s0_0E0B1j_.exit

_RNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1h_8interner10DbInternerNtNtNtB1f_6relate7lattice9LatticeOpNCNCINvB6_23structurally_relate_tysB27_B2A_E0s0_0E0B1j_.exit: ; preds = %bb.d, %bb.b, %bb.b, %_RNCNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1j_8interner10DbInternerNtNtNtB1h_6relate7lattice9LatticeOpNCNCINvB8_23structurally_relate_tysB29_B2C_E0s0_0E00B1l_.exit9.thread.i, %_RNCNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1j_8interner10DbInternerNtNtNtB1h_6relate7lattice9LatticeOpNCNCINvB8_23structurally_relate_tysB29_B2C_E0s0_0E00B1l_.exit9.i, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !9789, !nonnull !8, !align !27, !noundef !8
  call void @_RINvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate7latticeNtB6_9LatticeOpINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate12TypeRelationNtNtBc_8interner10DbInternerE20relate_with_varianceNtNtBc_11generic_arg10GenericArgEBe_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.ah, i8 noundef %i.u, ptr noalias nofree nonnull readonly align 8 captures(none) poison, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  store i8 -2, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNCINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine15combine_ty_argsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1h_8interner10DbInternerNtNtNtB1f_6relate7lattice9LatticeOpNCNCINvB6_23structurally_relate_tysB27_B2A_E0s0_0E0B1j_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5slice4iter4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEENCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB2y_17TyLoweringContext18lower_pattern_type0ENtNtNtB9_6traits8iterator8Iterator4nextB2A_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !9793, !nonnull !8, !noundef !8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !9793, !nonnull !8, !noundef !8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store ptr %i.e, ptr %0, align 8, !alias.scope !9793
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.f, align 8, !nonnull !8, !align !27, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3 = load ptr, ptr %i.g, align 8, !nonnull !8, !align !27, !noundef !8
  %.val4 = load i32, ptr %i.a, align 4, !noundef !8
  %i.h = load ptr, ptr %.val3, align 8, !nonnull !8, !noundef !8
  %i.i = tail call noundef ptr @_RNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB5_17TyLoweringContext18lower_pattern_type(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %.val, i32 noundef %.val4, ptr noundef nonnull %i.h)
  br label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8K4cjrcxBsw_6hir_ty.exit.thread: ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.i, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.j = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, ptr } %i.j, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate7latticeNtB5_9LatticeOpINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate12TypeRelationNtNtBb_8interner10DbInternerE3tys(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(136) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = icmp eq ptr %2, %3
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !27, !noundef !8 ; 6 uses
  %i.f = tail call noundef nonnull ptr @_RNvMs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver5inferNtB5_9InferCtxt15shallow_resolve(ptr noundef nonnull align 8 %i.e, ptr noundef nonnull %2) ; 8 uses
  %i.g = tail call noundef nonnull ptr @_RNvMs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver5inferNtB5_9InferCtxt15shallow_resolve(ptr noundef nonnull align 8 %i.e, ptr noundef nonnull %3) ; 8 uses
  %.sroa.029.0.copyload = load i32, ptr %i.f, align 8 ; 3 uses
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.434.0.copyload = load i32, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.039.0.copyload = load i32, ptr %i.g, align 8 ; 5 uses
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.442.0.copyload = load i32, ptr %.sroa.442.0..sroa_idx, align 4 ; 2 uses
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.645.0.copyload = load i32, ptr %.sroa.645.0..sroa_idx, align 8
  %.sroa.747.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.h = load <2 x i32>, ptr %.sroa.536.0..sroa_idx, align 4
  %i.i = load <2 x i32>, ptr %.sroa.747.0..sroa_idx, align 4
  %i.j = icmp ne i32 %.sroa.029.0.copyload, 27
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nsw i32 %.sroa.029.0.copyload, -2
  %i.l = icmp samesign ugt i32 %.sroa.029.0.copyload, 1
  %narrow = select i1 %i.l, i32 %i.k, i32 25      ; 2 uses
  %i.m = icmp eq i32 %narrow, 27
  br i1 %i.m, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.n, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.q

bb.d:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4
  %i.o = icmp eq i32 %.sroa.3.0.copyload, 0
  br i1 %i.o, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.p = icmp ne i32 %.sroa.039.0.copyload, 27
  tail call void @llvm.assume(i1 %i.p)
  %i.q = add nsw i32 %.sroa.039.0.copyload, -2
  %i.r = icmp samesign ugt i32 %.sroa.039.0.copyload, 1
  %narrow11 = select i1 %i.r, i32 %i.q, i32 25
  switch i32 %narrow11, label %bb.j [
    i32 23, label %bb.l
    i32 27, label %bb.k
  ]

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val25 = load i32, ptr %i.s, align 8, !range !42, !noundef !8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val26 = load i32, ptr %i.t, align 4
  %i.u = tail call noundef nonnull ptr @_RNvMs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver5inferNtB5_9InferCtxt11next_ty_var(ptr noundef nonnull align 8 %i.e, i32 noundef %.val25, i32 %.val26) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate7latticeNtB5_9LatticeOp12relate_bound(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef align 8 dereferenceable(136) %1, ptr noundef nonnull %i.u, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f)
  %i.v = load i8, ptr %i.b, align 8, !range !46, !noundef !8
  %.not14 = icmp eq i8 %i.v, -1
  br i1 %.not14, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.w = icmp ne i32 %.sroa.039.0.copyload, 27
  tail call void @llvm.assume(i1 %i.w)
  %cond13 = icmp eq i32 %.sroa.039.0.copyload, 29
  %i.x = icmp eq i32 %.sroa.442.0.copyload, 0
  %or.cond17 = select i1 %cond13, i1 %i.x, i1 false
  br i1 %or.cond17, label %bb.n, label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.y, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.q

bb.j:                                             ; preds = %4, %bb.g, %bb.l, %bb.k, %bb.e
  tail call void @_RINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine17super_combine_tysNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1h_8interner10DbInternerNtNtNtB1f_6relate7lattice9LatticeOpEB1j_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br label %bb.q

bb.k:                                             ; preds = %bb.e
  %.old16 = icmp eq i32 %.sroa.442.0.copyload, 0
  br i1 %.old16, label %bb.n, label %bb.j

bb.l:                                             ; preds = %bb.e
  %i.z = icmp eq i32 %narrow, 23
  %i.aa = icmp eq i32 %.sroa.645.0.copyload, 2
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  %i.ab = icmp eq i32 %.sroa.434.0.copyload, 2
  %or.cond9 = select i1 %or.cond, i1 %i.ab, i1 false
  br i1 %or.cond9, label %4, label %bb.j

4:                                                ; preds = %bb.l
  %5 = icmp eq <2 x i32> %i.h, %i.i               ; 2 uses
  %6 = extractelement <2 x i1> %5, i64 0
  %7 = extractelement <2 x i1> %5, i64 1
  %.sroa.0.0.i.i = select i1 %7, i1 %6, i1 false
  br i1 %.sroa.0.0.i.i, label %bb.m, label %bb.j

bb.m:                                             ; preds = %4
  tail call void @_RINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine17super_combine_tysNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1h_8interner10DbInternerNtNtNtB1f_6relate7lattice9LatticeOpEB1j_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br label %bb.q

bb.n:                                             ; preds = %bb.g, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val23 = load i32, ptr %i.ac, align 8, !range !42, !noundef !8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val24 = load i32, ptr %i.ad, align 4
  %i.ae = tail call noundef nonnull ptr @_RNvMs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver5inferNtB5_9InferCtxt11next_ty_var(ptr noundef nonnull align 8 %i.e, i32 noundef %.val23, i32 %.val24) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMs1_NtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate7latticeNtB5_9LatticeOp12relate_bound(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef align 8 dereferenceable(136) %1, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  %i.af = load i8, ptr %i.a, align 8, !range !46, !noundef !8
  %.not = icmp eq i8 %i.af, -1
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.ag, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.h, %bb.o, %bb.i, %bb.j, %bb.m, %bb.p, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate7latticeNtB5_9LatticeOpINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate12TypeRelationNtNtBb_8interner10DbInternerE6consts(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(136) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !8, !align !27, !noundef !8
  tail call void @_RINvNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine20super_combine_constsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer9InferCtxtNtNtB1k_8interner10DbInternerNtNtNtB1i_6relate7lattice9LatticeOpEB1m_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate7latticeNtB5_9LatticeOpINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate12TypeRelationNtNtBb_8interner10DbInternerE7regions(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !align !27, !noundef !8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 336 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !14, !noundef !8
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.e, label %bb.d, !prof !17

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #44
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.i, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.n = load i8, ptr %i.m, align 8, !range !30, !noundef !8
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @166, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #41
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.s = load i32, ptr %i.q, align 8, !range !42, !noundef !8
  %i.t = load i32, ptr %i.r, align 4
  %i.u = invoke noundef nonnull ptr @_RNvMs0_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraintsNtB5_25RegionConstraintCollector11glb_regions(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, i32 noundef %i.s, i32 %i.t, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %bb.k unwind label %bb.l

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.v = load i32, ptr %i.q, align 8, !range !42, !noundef !8
  %i.w = load i32, ptr %i.r, align 4
  %i.x = invoke noundef nonnull ptr @_RNvMs0_NtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraintsNtB5_25RegionConstraintCollector11lub_regions(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i32 noundef %i.v, i32 %i.w, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.sroa.0.0 = phi ptr [ %i.u, %bb.k ], [ %i.x, %bb.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0, ptr %i.y, align 8
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = load i64, ptr %i.f, align 8, !noundef !8
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.f, align 8
  ret void

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.l:                                             ; preds = %bb.e, %bb.g, %bb.h
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load i64, ptr %i.f, align 8, !noundef !8
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.f, align 8
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvXs12_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_11SolverDefIdINtNtCshzWfHUSfYae_4core7convert4FromNtCsileJQcQObtj_7hir_def12GenericDefIdE4from(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !range !56, !noundef !8 ; 2 uses
  %i.b = icmp samesign ugt i32 %i.a, 2
  %i.c = zext nneg i32 %i.a to i64
  %i.d = add nsw i64 %i.c, -2
  %i.e = select i1 %i.b, i64 %i.d, i64 0
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false)
  br label %bb.j

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load <2 x i32>, ptr %i.g, align 4
  store <2 x i32> %i.i, ptr %i.h, align 4
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load <2 x i32>, ptr %i.j, align 4
  store <2 x i32> %i.l, ptr %i.k, align 4
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load <2 x i32>, ptr %i.m, align 4
  store <2 x i32> %i.o, ptr %i.n, align 4
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load <2 x i32>, ptr %i.p, align 4
  store <2 x i32> %i.r, ptr %i.q, align 4
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load <2 x i32>, ptr %i.s, align 4
  store <2 x i32> %i.u, ptr %i.t, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load <2 x i32>, ptr %i.v, align 4
  store <2 x i32> %i.x, ptr %i.w, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i32 [ 8, %bb.i ], [ 7, %bb.h ], [ 5, %bb.g ], [ 3, %bb.f ], [ 2, %bb.e ], [ 1, %bb.d ], [ 0, %bb.c ]
  store i32 %.sink, ptr %0, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1C_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB6_10BoundConstNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtB1c_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 10)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 3, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @171) ; 0 uses
  %i.c = call noundef zeroext i1 @_RNvMs2_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1G_NtCshzWfHUSfYae_4core3fmtTINtNtB8_6result6ResultINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical9CanonicalNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBX_5solve8ResponseB1Q_EENtB2S_10NoSolutionEINtB2S_15AccessedOpaquesB1Q_EENtB6_5Debug3fmtB1W_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @175) ; 0 uses
  %i.f = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @176) ; 0 uses
  %i.g = call noundef zeroext i1 @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.g
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1J_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_13AliasTermKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1i_(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #22 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !9800, !noundef !8 ; 5 uses
  %i.b = icmp ne i32 %i.a, 7
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i32 %i.a, -3
  %i.d = icmp samesign ugt i32 %i.a, 2
  %narrow = select i1 %i.d, i32 %i.c, i32 4       ; 2 uses
  %i.e = load i32, ptr %1, align 4, !range !9800, !noundef !8 ; 4 uses
  %i.f = icmp ne i32 %i.e, 7
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i32 %i.e, -3
  %i.h = icmp samesign ugt i32 %i.e, 2
  %narrow2 = select i1 %i.h, i32 %i.g, i32 4
  %i.i = icmp eq i32 %narrow, %narrow2
  br i1 %i.i, label %bb.b, label %_RNvXs5C_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_21GeneralConstIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i32 %narrow, label %bb.c [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.p
    i32 6, label %bb.q
    i32 7, label %bb.r
  ]

_RNvXs5C_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_21GeneralConstIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %bb.a, %bb.r, %bb.q, %bb.p, %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.0.0.shrunk = phi i1 [ %.sroa.0.0.i.i, %bb.d ], [ %.sroa.0.0.i.i30, %bb.e ], [ %.sroa.0.0.i.i31, %bb.f ], [ %.sroa.0.0.i.i32, %bb.g ], [ false, %bb.a ], [ %.sroa.0.0.i.i33, %bb.p ], [ %.sroa.0.0.i.i34, %bb.q ], [ %.sroa.0.0.i.i35, %bb.r ], [ %i.an, %bb.m ], [ false, %bb.h ], [ %i.as, %bb.n ], [ false, %bb.j ], [ %i.ax, %bb.o ], [ false, %bb.k ], [ false, %bb.l ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load <2 x i32>, ptr %i.j, align 4
  %i.m = load <2 x i32>, ptr %i.k, align 4
  %i.n = icmp eq <2 x i32> %i.l, %i.m             ; 2 uses
  %2 = extractelement <2 x i1> %i.n, i64 0
  %3 = extractelement <2 x i1> %i.n, i64 1
  %.sroa.0.0.i.i = select i1 %3, i1 %2, i1 false
  br label %_RNvXs5C_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_21GeneralConstIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load <2 x i32>, ptr %i.o, align 4
  %i.r = load <2 x i32>, ptr %i.p, align 4
  %i.s = icmp eq <2 x i32> %i.q, %i.r             ; 2 uses
  %4 = extractelement <2 x i1> %i.s, i64 0
  %5 = extractelement <2 x i1> %i.s, i64 1
  %.sroa.0.0.i.i30 = select i1 %5, i1 %4, i1 false
  br label %_RNvXs5C_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_21GeneralConstIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load <2 x i32>, ptr %i.t, align 4
  %i.w = load <2 x i32>, ptr %i.u, align 4
  %i.x = icmp eq <2 x i32> %i.v, %i.w             ; 2 uses
  %6 = extractelement <2 x i1> %i.x, i64 0
  %7 = extractelement <2 x i1> %i.x, i64 1
  %.sroa.0.0.i.i31 = select i1 %7, i1 %6, i1 false
  br label %_RNvXs5C_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_21GeneralConstIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load <2 x i32>, ptr %i.y, align 4
  %i.ab = load <2 x i32>, ptr %i.z, align 4
  %i.ac = icmp eq <2 x i32> %i.aa, %i.ab          ; 2 uses
  %8 = extractelement <2 x i1> %i.ac, i64 0
  %9 = extractelement <2 x i1> %i.ac, i64 1
  %.sroa.0.0.i.i32 = select i1 %9, i1 %8, i1 false
  br label %_RNvXs5C_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_21GeneralConstIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9804)
  %i.ad = icmp eq i32 %i.a, %i.e
  br i1 %i.ad, label %bb.i, label %_RNvXs5C_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_21GeneralConstIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !alias.scope !9805, !noundef !8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !alias.scope !9806, !noundef !8
  %i.ai = icmp eq i32 %i.af, %i.ah                ; 3 uses
  switch i32 %i.a, label %default.unreachable.i [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

default.unreachable.i:                            ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  br i1 %i.ai, label %bb.m, label %_RNvXs5C_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_21GeneralConstIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.i
  br i1 %i.ai, label %bb.n, label %_RNvXs5C_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_21GeneralConstIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.i
  br i1 %i.ai, label %bb.o, label %_RNvXs5C_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_21GeneralConstIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !range !39, !alias.scope !9805, !noundef !8
  %i.am = load i32, ptr %i.aj, align 4, !range !39, !alias.scope !9806, !noundef !8
  %i.an = icmp eq i32 %i.al, %i.am
  br label %_RNvXs5C_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_21GeneralConstIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !range !39, !alias.scope !9805, !noundef !8
  %i.ar = load i32, ptr %i.ao, align 4, !range !39, !alias.scope !9806, !noundef !8
  %i.as = icmp eq i32 %i.aq, %i.ar
  br label %_RNvXs5C_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_21GeneralConstIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.av = load i32, ptr %i.au, align 4, !range !39, !alias.scope !9805, !noundef !8
  %i.aw = load i32, ptr %i.at, align 4, !range !39, !alias.scope !9806, !noundef !8
  %i.ax = icmp eq i32 %i.av, %i.aw
  br label %_RNvXs5C_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_21GeneralConstIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = load <2 x i32>, ptr %i.ay, align 4
  %i.bb = load <2 x i32>, ptr %i.az, align 4
  %i.bc = icmp eq <2 x i32> %i.ba, %i.bb          ; 2 uses
  %10 = extractelement <2 x i1> %i.bc, i64 0
  %11 = extractelement <2 x i1> %i.bc, i64 1
  %.sroa.0.0.i.i33 = select i1 %11, i1 %10, i1 false
  br label %_RNvXs5C_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_21GeneralConstIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.b
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = load <2 x i32>, ptr %i.bd, align 4
  %i.bg = load <2 x i32>, ptr %i.be, align 4
  %i.bh = icmp eq <2 x i32> %i.bf, %i.bg          ; 2 uses
  %12 = extractelement <2 x i1> %i.bh, i64 0
  %13 = extractelement <2 x i1> %i.bh, i64 1
  %.sroa.0.0.i.i34 = select i1 %13, i1 %12, i1 false
  br label %_RNvXs5C_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_21GeneralConstIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bk = load <2 x i32>, ptr %i.bi, align 4
  %i.bl = load <2 x i32>, ptr %i.bj, align 4
  %i.bm = icmp eq <2 x i32> %i.bk, %i.bl          ; 2 uses
  %14 = extractelement <2 x i1> %i.bm, i64 0
  %15 = extractelement <2 x i1> %i.bm, i64 1
  %.sroa.0.0.i.i35 = select i1 %15, i1 %14, i1 false
  br label %_RNvXs5C_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_21GeneralConstIdWrapperNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQDG_INtB7_5FnMutTRL0_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution10TraitImplsEEp6OutputuEL_IBS_TRB18_EE8call_mutB1c_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !27, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !8, !nonnull !8
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #40
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQDG_INtB7_5FnMutTRL0_NtNtCs8K4cjrcxBsw_6hir_ty17method_resolution13InherentImplsEEp6OutputuEL_IBS_TRB18_EE8call_mutB1c_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !27, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !8, !nonnull !8
  tail call void %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #40
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMsG_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtBW_11PlaceholderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtBW_10BoundConstB1X_EE22find_const_ty_from_env0INtB7_5FnMutTNtNtB21_9predicate6ClauseEE8call_mutB23_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !align !27, !noundef !8
  %.val = load ptr, ptr %i.c, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXsK_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB5_6ClauseNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent8IntoKind4kind(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %1)
  %.sroa.01.0.copyload.i = load i64, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = icmp eq i64 %.sroa.01.0.copyload.i, 4
  br i1 %i.d, label %bb.b, label %_RNCNvMsG_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB7_11PlaceholderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtB7_10BoundConstB18_EE22find_const_ty_from_env0B1e_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i), "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.4.0.copyload.i, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.e, align 8
  %i.f = call noundef zeroext i1 @_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6consts5ConstNtNtBR_2ty2TyEINtB5_16TypeVisitableExtNtNtBR_8interner10DbInternerE26has_vars_bound_at_or_aboveBT_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.f, label %bb.d, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i = load i32, ptr %.sroa.4.0.copyload.i, align 8
  %.sroa.5.0..sroa.4.0.copyload.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 8
  %.sroa.5.0.copyload2.i = load i32, ptr %.sroa.5.0..sroa.4.0.copyload.sroa_idx.i, align 8
  %i.g = icmp eq i32 %.sroa.0.0.copyload.i, 3
  br i1 %i.g, label %bb.e, label %_RNCNvMsG_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB7_11PlaceholderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtB7_10BoundConstB18_EE22find_const_ty_from_env0B1e_.exit

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 65, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @67) #44
  unreachable

bb.e:                                             ; preds = %bb.c
  %.sroa.4.0..sroa.4.0.copyload.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 4
  %.sroa.4.0.copyload1.i = load i32, ptr %.sroa.4.0..sroa.4.0.copyload.sroa_idx.i, align 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.h = load i32, ptr %.val, align 4, !noundef !8
  %i.i = icmp eq i32 %.sroa.4.0.copyload1.i, %i.h
  br i1 %i.i, label %bb.f, label %_RNCNvMsG_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB7_11PlaceholderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtB7_10BoundConstB18_EE22find_const_ty_from_env0B1e_.exit

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.k = load i32, ptr %i.j, align 4, !noundef !8
  %i.l = icmp eq i32 %.sroa.5.0.copyload2.i, %i.k
  %spec.select.i = select i1 %i.l, ptr %.sroa.5.0.copyload.i, ptr null
  br label %_RNCNvMsG_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB7_11PlaceholderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtB7_10BoundConstB18_EE22find_const_ty_from_env0B1e_.exit

_RNCNvMsG_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB7_11PlaceholderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtB7_10BoundConstB18_EE22find_const_ty_from_env0B1e_.exit: ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.sroa.0.1.i = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %spec.select.i, %bb.f ], [ null, %bb.e ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtB8_6result6ResultIBx_uINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9coherence14OrphanCheckErrNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB2f_2ty2TyEENtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10NoSolutionENtB6_5Debug3fmtB2h_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !align !27, !noundef !8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9810)
  %i.d = load i64, ptr %i.c, align 8, !range !9811, !alias.scope !9810, !noundef !8
  %i.e = icmp eq i64 %i.d, -3
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9812
  store ptr %i.c, ptr %i.a, align 8, !noalias !9812
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @242)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9812
  br label %_RNvXst_NtCshzWfHUSfYae_4core6resultINtB5_6ResultIBy_uINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9coherence14OrphanCheckErrNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB27_2ty2TyEENtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10NoSolutionENtNtB7_3fmt5Debug3fmtB29_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9812
  store ptr %i.c, ptr %i.b, align 8, !noalias !9812
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 2, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @240)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9812
  br label %_RNvXst_NtCshzWfHUSfYae_4core6resultINtB5_6ResultIBy_uINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9coherence14OrphanCheckErrNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB27_2ty2TyEENtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10NoSolutionENtNtB7_3fmt5Debug3fmtB29_.exit

_RNvXst_NtCshzWfHUSfYae_4core6resultINtB5_6ResultIBy_uINtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9coherence14OrphanCheckErrNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB27_2ty2TyEENtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10NoSolutionENtNtB7_3fmt5Debug3fmtB29_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtB8_6result6ResultIBx_uNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9coherence8ConflictENtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10NoSolutionENtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9816)
  %i.d = load i8, ptr %i.c, align 1, !range !59, !alias.scope !9816, !noundef !8
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9817
  store ptr %i.c, ptr %i.a, align 8, !noalias !9817
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @242)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9817
  br label %_RNvXst_NtCshzWfHUSfYae_4core6resultINtB5_6ResultIBy_uNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9coherence8ConflictENtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10NoSolutionENtNtB7_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9817
  store ptr %i.c, ptr %i.b, align 8, !noalias !9817
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 2, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @244)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9817
  br label %_RNvXst_NtCshzWfHUSfYae_4core6resultINtB5_6ResultIBy_uNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9coherence8ConflictENtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10NoSolutionENtNtB7_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty.exit

_RNvXst_NtCshzWfHUSfYae_4core6resultINtB5_6ResultIBy_uNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver9coherence8ConflictENtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5solve10NoSolutionENtNtB7_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtB8_6result6ResultINtNtB8_6option6OptionNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph8PathKindEuENtB6_5Debug3fmtCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9821)
  %i.d = load i8, ptr %i.c, align 1, !range !9822, !alias.scope !9821, !noundef !8
  %i.e = icmp eq i8 %i.d, -2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9823
  store ptr %i.c, ptr %i.a, align 8, !noalias !9823
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @246)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9823
  br label %_RNvXst_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph8PathKindEuENtNtB7_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9823
  store ptr %i.c, ptr %i.b, align 8, !noalias !9823
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 2, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @245)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9823
  br label %_RNvXst_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph8PathKindEuENtNtB7_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty.exit

_RNvXst_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtB7_6option6OptionNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph8PathKindEuENtNtB7_3fmt5Debug3fmtCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRINtNtB8_6result6ResultINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBX_7ty_kind5FnSigB1K_EEINtNtBX_5error9TypeErrorB1K_EENtB6_5Debug3fmtB1Q_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !8, !align !27, !noundef !8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9827)
  %i.d = load i8, ptr %i.c, align 8, !range !46, !alias.scope !9827, !noundef !8
  %.not.i = icmp eq i8 %i.d, -1
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9828
  store ptr %i.c, ptr %i.a, align 8, !noalias !9828
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @248)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9828
  br label %_RNvXst_NtCshzWfHUSfYae_4core6resultINtB5_6ResultINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBP_7ty_kind5FnSigB1C_EEINtNtBP_5error9TypeErrorB1C_EENtNtB7_3fmt5Debug3fmtB1I_.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9828
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !noalias !9828
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 2, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @247)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9828
end_hunk_2
begin_hunk_3_@_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRTINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerTNtNtB1t_2ty2TyB2p_EENtNtB1t_6def_id11SolverDefIdNtNtB1t_11generic_arg11GenericArgsENtB6_5Debug3fmtB1v_:bb.a
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1h_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB6_11BoundTyKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtB1d_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = load i32, ptr %0, align 4, !range !48, !noundef !8
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @178, i64 noundef 5)
  %i.c = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @179) ; 0 uses
  %i.d = call noundef zeroext i1 @_RNvMs3_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @177, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRDNtNtB8_5error5ErrorEL_NtB6_7Display3fmtCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !align !27, !noundef !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !8, !nonnull !8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #40
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs22_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB6_6ClauseNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @185)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs26_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB6_8ParamEnvNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @189, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @187)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB5_14SlicePartialEqBC_E17equal_same_lengthB1M_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #23 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread7
  %.sroa.01.010 = phi i64 [ %i.ab, %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread7 ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.sroa.01.010 ; 3 uses
  %i.c = getelementptr inbounds nuw [20 x i8], ptr %1, i64 %.sroa.01.010 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10074)
  %i.d = load i32, ptr %i.b, align 4, !range !29, !alias.scope !10075, !noundef !8 ; 2 uses
  %i.e = load i32, ptr %i.c, align 4, !range !29, !alias.scope !10076, !noundef !8
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread

bb.b:                                             ; preds = %.lr.ph
  switch i32 %i.d, label %default.unreachable [
    i32 0, label %bb.c
    i32 1, label %bb.e
    i32 2, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread7
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !range !48, !alias.scope !10075, !noundef !8
  %i.i = icmp ne i32 %i.h, -1                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !range !48, !alias.scope !10076, !noundef !8
  %i.l = icmp ne i32 %i.k, -1                     ; 2 uses
  %i.m = xor i1 %i.i, %i.l
  br i1 %i.m, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %brmerge.demorgan.i.i = and i1 %i.i, %i.l
  br i1 %brmerge.demorgan.i.i, label %.split, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread7

.split:                                           ; preds = %bb.d
  %i.n = tail call fastcc noundef zeroext i1 @_RNvXsG_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB5_11SolverDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.j) #40
  br i1 %i.n, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread7, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10078)
  %i.q = load i32, ptr %i.o, align 4, !range !47, !alias.scope !10079, !noundef !8 ; 3 uses
  %i.r = icmp ne i32 %i.q, 17
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add nsw i32 %i.q, -15
  %i.t = icmp samesign ugt i32 %i.q, 14
  %narrow.i.i.i = select i1 %i.t, i32 %i.s, i32 2 ; 2 uses
  %i.u = load i32, ptr %i.p, align 4, !range !47, !alias.scope !10080, !noundef !8 ; 3 uses
  %i.v = icmp ne i32 %i.u, 17
  tail call void @llvm.assume(i1 %i.v)
  %i.w = add nsw i32 %i.u, -15
  %i.x = icmp samesign ugt i32 %i.u, 14
  %narrow2.i.i.i = select i1 %i.x, i32 %i.w, i32 2
  %i.y = icmp eq i32 %narrow.i.i.i, %narrow2.i.i.i
  br i1 %i.y, label %bb.f, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.z = icmp eq i32 %narrow.i.i.i, 2
  br i1 %i.z, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread7

_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit: ; preds = %bb.f
  %i.aa = tail call fastcc noundef zeroext i1 @_RNvXsG_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB5_11SolverDefIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.p) #40
  br i1 %i.aa, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread7, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread

_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread: ; preds = %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread7, %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit, %bb.c, %.lr.ph, %bb.e, %.split, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.split ], [ false, %bb.e ], [ false, %.lr.ph ], [ false, %bb.c ], [ false, %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit ], [ true, %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread7 ]
  ret i1 %.lcssa

_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread7: ; preds = %.split, %bb.d, %bb.f, %bb.b, %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit
  %i.ab = add nuw i64 %.sroa.01.010, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %2
  br i1 %exitcond.not, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder17BoundVariableKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB1c_.exit.thread, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBH_9predicate20ExistentialPredicateB1u_EEINtB5_14SlicePartialEqBC_E17equal_same_lengthB1A_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #23 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit
  %i.b = add nuw i64 %.sroa.01.07, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.07 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.01.07 ; 8 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %.sroa.01.07 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10102)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10104)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = load i32, ptr %i.g, align 8, !range !42, !alias.scope !10105, !noundef !8 ; 5 uses
  %i.i = icmp ne i32 %i.h, 3
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i32 %i.h, -2
  %i.k = icmp samesign ugt i32 %i.h, 1
  %narrow.i.i.i = select i1 %i.k, i32 %i.j, i32 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.m = load i32, ptr %i.l, align 8, !range !42, !alias.scope !10106, !noundef !8 ; 4 uses
  %i.n = icmp ne i32 %i.m, 3
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nsw i32 %i.m, -2
  %i.p = icmp samesign ugt i32 %i.m, 1
  %narrow2.i.i.i = select i1 %i.p, i32 %i.o, i32 1
  %i.q = icmp eq i32 %narrow.i.i.i, %narrow2.i.i.i
  br i1 %i.q, label %bb.c, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit.thread

bb.c:                                             ; preds = %.lr.ph
  switch i32 %narrow.i.i.i, label %bb.d [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %_RNvXs1w_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1p_.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load <2 x i32>, ptr %i.e, align 8, !alias.scope !10105
  %i.s = load <2 x i32>, ptr %i.f, align 8, !alias.scope !10106
  %i.t = icmp eq <2 x i32> %i.r, %i.s             ; 2 uses
  %3 = extractelement <2 x i1> %i.t, i64 0
  %4 = extractelement <2 x i1> %i.t, i64 1
  %.sroa.0.0.i.i.i.i.i = select i1 %4, i1 %3, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i, label %.split.i.i, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit.thread

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10108)
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10112)
  %i.w = icmp eq i32 %i.h, %i.m
  br i1 %i.w, label %bb.g, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.x = trunc nuw i32 %i.h to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.z = load i32, ptr %i.y, align 8, !alias.scope !10113, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !alias.scope !10114, !noundef !8
  %i.ac = icmp eq i32 %i.z, %i.ab                 ; 2 uses
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.ac, label %.split.i.i.i.i, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit.thread

bb.i:                                             ; preds = %bb.g
  br i1 %i.ac, label %_RNvXs3b_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_16TraitAssocTermIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit.thread

.split.i.i.i.i:                                   ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !range !39, !alias.scope !10113, !noundef !8
  %i.ag = load i32, ptr %i.ad, align 4, !range !39, !alias.scope !10114, !noundef !8
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit.thread

_RNvXs3b_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_16TraitAssocTermIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ak = load i32, ptr %i.aj, align 4, !range !39, !alias.scope !10113, !noundef !8
  %i.al = load i32, ptr %i.ai, align 4, !range !39, !alias.scope !10114, !noundef !8
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.j, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit.thread

bb.j:                                             ; preds = %_RNvXs3b_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_16TraitAssocTermIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i, %.split.i.i.i.i
  %.val.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !10115, !nonnull !8, !noundef !8
  %.val1.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !10116, !nonnull !8, !noundef !8
  %i.an = icmp eq ptr %.val.i.i.i.i, %.val1.i.i.i.i
  br i1 %i.an, label %.split3.i.i, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit.thread

.split3.i.i:                                      ; preds = %bb.j
  %.val2.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !10115, !nonnull !8, !noundef !8
  %.val3.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !10116, !nonnull !8, !noundef !8
  %i.ao = icmp eq ptr %.val2.i.i.i.i, %.val3.i.i.i.i
  br i1 %i.ao, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit.thread

.split.i.i:                                       ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val10.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !10105, !nonnull !8, !noundef !8
  %.val11.i.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !10106, !nonnull !8, !noundef !8
  %i.ar = icmp eq ptr %.val10.i.i.i, %.val11.i.i.i
  br i1 %i.ar, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit.thread

_RNvXs1w_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1p_.exit.i.i: ; preds = %bb.c
  %i.as = load <2 x i32>, ptr %i.e, align 8, !alias.scope !10105
  %i.at = load <2 x i32>, ptr %i.f, align 8, !alias.scope !10106
  %i.au = icmp eq <2 x i32> %i.as, %i.at          ; 2 uses
  %5 = extractelement <2 x i1> %i.au, i64 0
  %6 = extractelement <2 x i1> %i.au, i64 1
  %.sroa.0.0.i.i12.i.i.i = select i1 %6, i1 %5, i1 false
  br i1 %.sroa.0.0.i.i12.i.i.i, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit.thread

_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit: ; preds = %.split3.i.i, %.split.i.i, %_RNvXs1w_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1p_.exit.i.i
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !10117, !nonnull !8, !noundef !8
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !10118, !nonnull !8, !noundef !8
  %.not = icmp eq ptr %.val.i.i, %.val1.i.i
  br i1 %.not, label %bb.b, label %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit.thread

_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit.thread: ; preds = %bb.b, %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit, %_RNvXs1w_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1p_.exit.i.i, %.split3.i.i, %.split.i.i, %.lr.ph, %bb.e, %_RNvXs3b_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_16TraitAssocTermIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i, %bb.j, %.split.i.i.i.i, %bb.i, %bb.f, %bb.h, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.i ], [ false, %.split.i.i.i.i ], [ false, %bb.j ], [ false, %_RNvXs3b_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_16TraitAssocTermIdNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit.i.i.i.i ], [ false, %bb.e ], [ false, %.lr.ph ], [ false, %.split.i.i ], [ false, %.split3.i.i ], [ false, %_RNvXs1w_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB6_20ExistentialPredicateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqB1p_.exit.i.i ], [ false, %_RNvYINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_9predicate20ExistentialPredicateBU_EENtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB10_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6relate7latticeNtB5_9LatticeOpINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6relate7combine25PredicateEmittingRelationNtB9_9InferCtxtNtNtBb_8interner10DbInternerE31register_alias_relate_predicate(ptr noalias nofree noundef align 8 dereferenceable(136) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE14offset_of_dataBT_(ptr noundef nonnull %1)
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds i8, ptr %1, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty10TyInternedE14offset_of_dataBT_(ptr noundef nonnull %2)
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds i8, ptr %2, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 0, ptr %i.p, align 8
  store i64 15, ptr %i.e, align 8
  %i.q = call noundef zeroext i1 @_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitINtNtB7_14predicate_kind13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB5_16TypeVisitableExtB1p_E26has_vars_bound_at_or_aboveB1v_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e, i32 noundef 0), !noalias !10132
  br i1 %i.q, label %bb.d, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10133
  call void @_RNvMs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB5_10DbInterner7conjure(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c), !noalias !10132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10133
  %i.r = load <2 x ptr>, ptr %i.c, align 16, !noalias !10133
  store <2 x ptr> %i.r, ptr %i.b, align 16, !noalias !10133
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 0, ptr %i.s, align 16, !noalias !10133
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr null, ptr %i.t, align 8, !noalias !10133
  %i.u = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 2424) acquire, align 8, !noalias !10134
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_RNvMs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EE5dummyB16_.exit, label %bb.c, !prof !22

bb.c:                                             ; preds = %bb.b
  call void @_RINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB3_8OnceLockNtNtCs8K4cjrcxBsw_6hir_ty11next_solver10DefaultAnyE10initializeNCINvB2_11get_or_initNCNvBV_13default_types0E0zEBX_(ptr noundef nonnull align 8 @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b), !noalias !10132
  br label %_RNvMs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EE5dummyB16_.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10133
  store ptr %i.e, ptr %i.d, align 8, !noalias !10133
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs2_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir14predicate_kindINtB5_13PredicateKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtB1n_, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !10133
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @83, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #44, !noalias !10135
  unreachable

_RNvMs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binderINtB5_6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB7_14predicate_kind13PredicateKindB10_EE5dummyB16_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10133
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs8K4cjrcxBsw_6hir_ty11next_solver13default_types5TYPES, i64 2312), align 8, !noalias !10133, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10133
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !10137)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !10137, !nonnull !8, !align !27, !noundef !8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.experimental.noalias.scope.decl(metadata !10138)
  call void @llvm.experimental.noalias.scope.decl(metadata !10139)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.ab, align 8, !alias.scope !10140, !noalias !10136
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !10140, !noalias !10136
  %.sroa.43.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.w, ptr %.sroa.43.0..sroa.5.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !10140, !noalias !10137
  store ptr %i.y, ptr %i.a, align 8, !alias.scope !10141, !noalias !10136
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.z, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !10141, !noalias !10136
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.aa, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !10141, !noalias !10136
  call void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB6_3VecINtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer6traits10ObligationNtNtB10_9predicate9PredicateEEINtB4_10SpecExtendBT_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB2X_5array4iter8IntoIterINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtB10_8interner10DbInternerINtNtB4c_14predicate_kind13PredicateKindB4Z_EEKj1_ENCINvXs2_NtNtBY_6relate7latticeNtB6q_9LatticeOpINtNtNtB4c_6relate7combine25PredicateEmittingRelationNtBY_9InferCtxtB4Z_E19register_predicatesAB47_B6d_E0EE11spec_extendB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a), !noalias !10142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10136
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2b_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB6_6SymbolNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 6)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtCslRtAOKA59qD_8bitflags4iterINtB5_9IterNamesNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner8AdtFlagsENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.c = load i64, ptr %i.a, align 8, !noundef !8
  %i.d = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.e = icmp ult i64 %i.d, %i.c
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

._crit_edge:                                      ; preds = %.backedge, %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.h = phi i64 [ %i.d, %.lr.ph ], [ %i.u, %.backedge ]
  %i.i = load ptr, ptr %1, align 8, !nonnull !8, !align !27, !noundef !8
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h ; 4 uses
  %i.k = tail call noundef zeroext i1 @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner8AdtFlagsNtNtCslRtAOKA59qD_8bitflags6traits5Flags8is_emptyB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f)
  br i1 %i.k, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.e, %bb.h, %._crit_edge
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.b, align 8, !noundef !8
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !8
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.backedge, label %bb.f

bb.e:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.val = load i8, ptr %i.q, align 8, !noundef !8 ; 4 uses
  %i.r = tail call noundef zeroext i1 @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner8AdtFlagsNtNtCslRtAOKA59qD_8bitflags6traits5Flags8containsB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.g, i8 noundef %.val)
  br i1 %i.r, label %bb.g, label %.backedge

bb.g:                                             ; preds = %bb.f
  %i.s = tail call noundef zeroext i1 @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner8AdtFlagsNtNtCslRtAOKA59qD_8bitflags6traits5Flags10intersectsB8_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.f, i8 noundef %.val)
  br i1 %i.s, label %bb.h, label %.backedge

.backedge:                                        ; preds = %bb.f, %bb.g, %bb.d
  %i.t = load i64, ptr %i.a, align 8, !noundef !8
  %i.u = load i64, ptr %i.b, align 8, !noundef !8 ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %bb.b, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  tail call void @_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner8AdtFlagsNtNtCslRtAOKA59qD_8bitflags6traits5Flags6removeB8_(ptr noalias nofree noundef nonnull dereferenceable(1) %i.f, i8 noundef %.val)
  %i.x = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  %i.y = load i64, ptr %i.w, align 8, !noundef !8
  store ptr %i.x, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.val, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCshzWfHUSfYae_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @192)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorNtB5_14ProjectionKindNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !42, !noundef !8
  switch i32 %i.b, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
end_hunk_3
