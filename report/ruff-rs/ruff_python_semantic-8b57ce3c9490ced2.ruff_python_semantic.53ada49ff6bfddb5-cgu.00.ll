Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_semantic-8b57ce3c9490ced2.ruff_python_semantic.53ada49ff6bfddb5-cgu.00?download=true
inline.NumInlined: 672
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel12resolve_name:bb.a
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel13lookup_symbol(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.b = load i32, ptr %i.a, align 8, !range !13, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.d = load i32, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = and i32 %i.d, 48
  %i.f = icmp ne i32 %i.e, 0
  %i.g = and i32 %i.d, 65
  %spec.select = icmp eq i32 %i.g, 65
  %.sroa.0.0 = or i1 %i.f, %spec.select
  %i.h = tail call { i32, i32 } @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22lookup_symbol_in_scope(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %i.b, i1 noundef zeroext %.sroa.0.0)
  ret { i32, i32 } %i.h
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel14function_scope(ptr noalias noundef readonly align 8 captures(none) dereferenceable(472) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 120
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.g = icmp eq i64 %i.d, 0
  br i1 %i.g, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtBU_5modelNtB2y_13SemanticModel14function_scope0EBU_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.b

bb.b:                                             ; preds = %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel14function_scope0B8_.exit.thread.i, %.lr.ph.i
  %i.i = phi ptr [ %i.b, %.lr.ph.i ], [ %i.j, %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel14function_scope0B8_.exit.thread.i ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.l = load i8, ptr %i.k, align 8, !range !18, !noalias !421, !noundef !4
  %i.m = icmp eq i8 %i.l, 2
  br i1 %i.m, label %bb.c, label %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel14function_scope0B8_.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !noalias !421, !nonnull !4, !align !3, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i32, ptr %i.p, align 8, !noalias !421, !noundef !4
  %i.r = load i32, ptr %i.h, align 8, !noalias !421, !noundef !4
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel14function_scope0B8_.exit.i, label %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel14function_scope0B8_.exit.thread.i

_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel14function_scope0B8_.exit.i: ; preds = %bb.c
  %i.t = load i32, ptr %i.f, align 4, !noalias !421, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %i.v = load i32, ptr %i.u, align 4, !noalias !421, !noundef !4
  %i.w = icmp eq i32 %i.v, %i.t
  br i1 %i.w, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtBU_5modelNtB2y_13SemanticModel14function_scope0EBU_.exit, label %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel14function_scope0B8_.exit.thread.i

_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel14function_scope0B8_.exit.thread.i: ; preds = %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel14function_scope0B8_.exit.i, %bb.c, %bb.b
  %i.x = icmp eq ptr %i.j, %i.e
  br i1 %i.x, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtBU_5modelNtB2y_13SemanticModel14function_scope0EBU_.exit, label %bb.b

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtBU_5modelNtB2y_13SemanticModel14function_scope0EBU_.exit: ; preds = %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel14function_scope0B8_.exit.i, %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel14function_scope0B8_.exit.thread.i, %bb.a
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel14function_scope0B8_.exit.thread.i ], [ %i.i, %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel14function_scope0B8_.exit.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel14global_binding(ptr noalias noundef align 8 dereferenceable(472) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27materialize_builtin_binding(ptr noalias noundef align 8 dereferenceable(472) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs7bpTdHNYxeX_20ruff_python_semantic5scopeNtB5_6Scopes6global(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  %i.d = tail call noundef i32 @_RNvMNtCs7bpTdHNYxeX_20ruff_python_semantic5scopeNtB2_5Scope3get(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret i32 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel14lookup_binding(ptr noalias noundef align 8 dereferenceable(472) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.b = load i32, ptr %i.a, align 8, !range !13, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.d = load i32, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = and i32 %i.d, 48
  %i.f = icmp ne i32 %i.e, 0
  %i.g = and i32 %i.d, 65
  %spec.select = icmp eq i32 %i.g, 65
  %.sroa.0.0 = or i1 %i.f, %spec.select
  %i.h = tail call { i32, i32 } @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22lookup_symbol_in_scope(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef range(i32 1, 0) %i.b, i1 noundef zeroext %.sroa.0.0) ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.h, 0
  switch i32 %i.i, label %default.unreachable.i [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel23lookup_binding_in_scope.exit
  ]

default.unreachable.i:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = extractvalue { i32, i32 } %i.h, 1
  br label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel23lookup_binding_in_scope.exit

bb.c:                                             ; preds = %bb.a
  %i.k = tail call fastcc noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27materialize_builtin_binding(ptr noalias noundef nonnull align 8 dereferenceable(472) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel23lookup_binding_in_scope.exit

_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel23lookup_binding_in_scope.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi i32 [ %i.j, %bb.b ], [ %i.k, %bb.c ], [ 0, %bb.a ]
  ret i32 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel14pop_definition(ptr noalias nofree noundef align 8 captures(none) dereferenceable(472) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !range !13, !noundef !4
  %i.e = add i32 %i.d, -1
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = icmp ugt i64 %i.b, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !19, !noundef !4
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %bb.d, label %bb.e, !prof !17

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.n = load i32, ptr %i.m, align 8, !range !13, !noundef !4
  store i32 %i.n, ptr %i.c, align 4
  ret void

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @45, ptr noundef nonnull inttoptr (i64 85 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #20
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel14typing_modules(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(472) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !3, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d
  store ptr @47, ptr %0, align 8, !alias.scope !424
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @47, i64 48), ptr %i.f, align 8, !alias.scope !424
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.g, align 8, !alias.scope !424
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.h, align 8, !alias.scope !424
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel15in_nested_union(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !443, !noalias !444, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #20, !noalias !445
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.c, align 8, !noalias !446, !noundef !4 ; 6 uses
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !4 ; 3 uses
  %i.g = add i32 %i.b, -1
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %i.i = icmp ugt i64 %i.e, %i.h
  br i1 %i.i, label %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20, !noalias !446
  unreachable

_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !noalias !446, !noundef !4 ; 2 uses
  %i.m = load i64, ptr %i.j, align 8, !range !5, !noalias !447, !noundef !4
  %1 = trunc nuw i64 %i.m to i1
  %.not.i.i = icmp ne i32 %i.l, 0
  %or.cond.not = and i1 %.not.i.i, %1
  br i1 %or.cond.not, label %bb.e, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread

bb.e:                                             ; preds = %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i
  %i.n = add i32 %i.l, -1
  %i.o = zext i32 %i.n to i64                     ; 3 uses
  %i.p = icmp ugt i64 %i.e, %i.o
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20, !noalias !448
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.o ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8, !noalias !448, !noundef !4 ; 2 uses
  %i.t = load i64, ptr %i.q, align 8, !range !5, !noalias !449, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.h, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !449, !nonnull !4, !align !3, !noundef !4 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !range !10, !noundef !4
  switch i32 %i.x, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread [
    i32 2, label %bb.i
    i32 26, label %bb.j
    i32 30, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.z = load i8, ptr %i.y, align 4, !range !450, !noundef !4
  %i.aa = icmp eq i8 %i.z, 9
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  %i.ad = tail call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17match_typing_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noundef nonnull align 8 %i.ac, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 5)
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread: ; preds = %bb.k, %bb.n, %bb.g, %bb.p, %bb.o, %bb.h, %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i, %bb.j, %bb.i
  %.sroa.0.0 = phi i1 [ false, %bb.n ], [ %i.aa, %bb.i ], [ %i.ad, %bb.j ], [ false, %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i ], [ false, %bb.h ], [ %i.aq, %bb.p ], [ false, %bb.k ], [ false, %bb.o ], [ false, %bb.g ]
  ret i1 %.sroa.0.0

bb.k:                                             ; preds = %bb.h
  %.not.i.i17 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i17, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = add i32 %i.s, -1
  %i.af = zext i32 %i.ae to i64                   ; 3 uses
  %i.ag = icmp ugt i64 %i.e, %i.af
  br i1 %i.ag, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20, !noalias !451
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.af ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !5, !noalias !452, !noundef !4
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.o, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !452, !nonnull !4, !align !3, !noundef !4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !range !10, !noundef !4
  %i.an = icmp eq i32 %i.am, 26
  br i1 %i.an, label %bb.p, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !4, !noundef !4
  %i.aq = tail call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17match_typing_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noundef nonnull align 8 %i.ap, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 5)
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel15inside_optional(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !467, !noalias !468, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #20, !noalias !469
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !noalias !470, !noundef !4 ; 4 uses
  %2 = load ptr, ptr %1, align 8, !nonnull !4     ; 2 uses
  %i.e = add i32 %i.b, -1
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20, !noalias !470
  unreachable

_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !noalias !470, !noundef !4 ; 2 uses
  %i.k = load i64, ptr %i.h, align 8, !range !5, !noalias !471, !noundef !4
  %.not = icmp eq i64 %i.k, 0
  %.not.i.i = icmp eq i32 %i.j, 0
  %or.cond = or i1 %.not.i.i, %.not
  br i1 %or.cond, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB6_8MapWhileINtNtNtBa_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1Q_NtB1Q_5Nodes12ancestor_ids0ENCNvMs_NtB1S_5modelNtB3n_13SemanticModel19current_expressions0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4h_10advance_byBT_NtB5B_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4Y_EEB1S_.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i
  %i.l = add i32 %i.j, -1
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = icmp ugt i64 %i.d, %i.m
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20, !noalias !472
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !5, !noalias !473, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.h, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB6_8MapWhileINtNtNtBa_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1Q_NtB1Q_5Nodes12ancestor_ids0ENCNvMs_NtB1S_5modelNtB3n_13SemanticModel19current_expressions0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4h_10advance_byBT_NtB5B_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4Y_EEB1S_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !473, !nonnull !4, !align !3, !noundef !4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !range !10, !noundef !4
  %i.u = icmp eq i32 %i.t, 26
  br i1 %i.u, label %bb.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB6_8MapWhileINtNtNtBa_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1Q_NtB1Q_5Nodes12ancestor_ids0ENCNvMs_NtB1S_5modelNtB3n_13SemanticModel19current_expressions0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4h_10advance_byBT_NtB5B_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4Y_EEB1S_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  %i.x = tail call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17match_typing_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noundef nonnull align 8 %i.w, ptr noalias noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 8)
  br label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB6_8MapWhileINtNtNtBa_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1Q_NtB1Q_5Nodes12ancestor_ids0ENCNvMs_NtB1S_5modelNtB3n_13SemanticModel19current_expressions0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4h_10advance_byBT_NtB5B_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4Y_EEB1S_.exit.thread

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB6_8MapWhileINtNtNtBa_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1Q_NtB1Q_5Nodes12ancestor_ids0ENCNvMs_NtB1S_5modelNtB3n_13SemanticModel19current_expressions0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCNvXs_NvB4h_10advance_byBT_NtB5B_13SpecAdvanceBy15spec_advance_by0INtNtBc_6option6OptionB4Y_EEB1S_.exit.thread: ; preds = %bb.g, %bb.i, %bb.h, %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i
  %.sroa.0.0 = phi i1 [ false, %bb.g ], [ false, %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i ], [ %i.x, %bb.i ], [ false, %bb.h ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel15push_definition(ptr noalias noundef align 8 dereferenceable(472) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = tail call noundef i32 @_RNvMs3_NtCs7bpTdHNYxeX_20ruff_python_semantic10definitionNtB5_11Definitions11push_member(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 444
  store i32 %i.b, ptr %i.c, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel16in_async_context(ptr noalias noundef readonly align 8 captures(none) dereferenceable(472) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.b = load i32, ptr %i.a, align 8, !range !13, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  %i.e = add i32 %i.b, -1
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw [120 x i8], ptr %i.i, i64 %i.f
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.i
  %.sroa.5.010 = phi ptr [ %i.j, %bb.b ], [ %.sroa.5.1.ph, %bb.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.5.010, i64 104
  %i.l = load i32, ptr %i.k, align 8, !noalias !476, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add i32 %i.l, -1
  %i.n = zext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp ugt i64 %i.d, %i.n
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [120 x i8], ptr %i.i, i64 %i.n
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20, !noalias !476
  unreachable

bb.h:                                             ; preds = %bb.d, %bb.f
  %.sroa.5.1.ph = phi ptr [ null, %bb.d ], [ %i.p, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.5.010, i64 24
  %i.r = load i8, ptr %i.q, align 8, !range !18, !noundef !4
  switch i8 %i.r, label %default.unreachable18 [
    i8 0, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsRNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeNCNvMs0_B1b_NtB1b_6Scopes9ancestors0ENtNtNtB6_6traits8iterator8Iterator4nextB1d_.exit
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.i
    i8 4, label %bb.i
    i8 5, label %bb.i
    i8 6, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsRNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeNCNvMs0_B1b_NtB1b_6Scopes9ancestors0ENtNtNtB6_6traits8iterator8Iterator4nextB1d_.exit
  ]

_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsRNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeNCNvMs0_B1b_NtB1b_6Scopes9ancestors0ENtNtNtB6_6traits8iterator8Iterator4nextB1d_.exit: ; preds = %bb.h, %bb.h, %bb.i, %bb.j
  %.sroa.0.0 = phi i1 [ %i.w, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.h ]
  ret i1 %.sroa.0.0

default.unreachable18:                            ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h
  %.not.i = icmp eq ptr %.sroa.5.1.ph, null
  br i1 %.not.i, label %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsRNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeNCNvMs0_B1b_NtB1b_6Scopes9ancestors0ENtNtNtB6_6traits8iterator8Iterator4nextB1d_.exit, label %bb.d

bb.j:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.5.010, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !align !3, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 84
  %i.v = load i8, ptr %i.u, align 4, !range !20, !noundef !4
  %i.w = trunc nuw i8 %i.v to i1
  br label %_RNvXNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successorsINtB2_10SuccessorsRNtNtCs7bpTdHNYxeX_20ruff_python_semantic5scope5ScopeNCNvMs0_B1b_NtB1b_6Scopes9ancestors0ENtNtNtB6_6traits8iterator8Iterator4nextB1d_.exit
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel16lookup_attribute(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.b = load i32, ptr %i.a, align 8, !range !13, !noundef !4
  %i.c = tail call noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel25lookup_attribute_in_scope(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noundef nonnull align 8 %1, i32 noundef %i.b)
  ret i32 %i.c
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel16rebinding_scopes(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !490, !noalias !491, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBS_5scope7ScopeIdENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.g = call noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !492)
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !494, !noalias !495, !noundef !4 ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !494, !noalias !495, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.k    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !496 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ad, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [32 x i8], ptr %i.l, i64 %i.v ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -32
  %i.y = call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdINtB2_10EquivalentBq_E10equivalentBu_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x), !noalias !497
  br i1 %i.y, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBS_5scope7ScopeIdENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit, label %bb.d, !prof !17

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBS_5scope7ScopeIdENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread, !prof !8

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ac = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ae = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i.i, %i.ae
  br label %bb.c

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBS_5scope7ScopeIdENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit: ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -16
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !4
  br label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBS_5scope7ScopeIdENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBS_5scope7ScopeIdENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBS_5scope7ScopeIdENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit
  %.sroa.3.0 = phi i64 [ %i.aj, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBS_5scope7ScopeIdENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit ], [ undef, %bb.a ], [ undef, %._crit_edge.i.i ]
  %.sroa.0.0 = phi ptr [ %i.ah, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBS_5scope7ScopeIdENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit ], [ null, %bb.a ], [ null, %._crit_edge.i.i ]
  %i.ak = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.al = insertvalue { ptr, i64 } %i.ak, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.al
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel16shadowed_binding(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !511, !noalias !512, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.g = call noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdEB1D_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.h = lshr i64 %i.g, 57
  %i.i = trunc nuw nsw i64 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !515, !noalias !516, !noundef !4 ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8, !alias.scope !515, !noalias !516, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %.pn.i.i.i = phi i64 [ %i.g, %bb.b ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.k    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !517 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.n
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ad, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.k
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.y = call noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdINtB2_10EquivalentBq_E10equivalentBu_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.x), !noalias !518
  br i1 %i.y, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit, label %bb.d, !prof !17

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread, !prof !8

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ac = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ae = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i.i, %i.ae
  br label %bb.c

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit: ; preds = %.lr.ph.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !range !13, !noundef !4
  br label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit.thread: ; preds = %._crit_edge.i.i, %bb.a, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit
  %.sroa.0.0 = phi i32 [ %i.ah, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding9BindingIdBO_NtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3getBO_EBS_.exit ], [ 0, %bb.a ], [ 0, %._crit_edge.i.i ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17current_statement(ptr noalias noundef readonly align 8 captures(none) dereferenceable(472) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !527, !noalias !528, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #20, !noalias !529
  unreachable

_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.c, align 8, !noalias !530, !noundef !4 ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !4
  br label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1k_5modelNtB34_13SemanticModel18current_statements0E0B1k_.exit.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1k_5modelNtB34_13SemanticModel18current_statements0E0B1k_.exit.i: ; preds = %bb.e, %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements.exit
  %i.g = phi i32 [ %i.m, %bb.e ], [ %i.b, %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements.exit ] ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1k_5modelNtB34_13SemanticModel18current_statements0E0B1k_.exit.i
  %i.h = add i32 %i.g, -1
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = icmp ugt i64 %i.e, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20, !noalias !530
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8, !noalias !530, !noundef !4
  %i.n = load i64, ptr %i.k, align 8, !range !5, !noalias !531, !noundef !4
  %i.o = trunc nuw i64 %i.n to i1
  br i1 %i.o, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1k_5modelNtB34_13SemanticModel18current_statements0E0B1k_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !noalias !531, !nonnull !4, !align !3, !noundef !4
  ret ptr %i.q

bb.g:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1k_5modelNtB34_13SemanticModel18current_statements0E0B1k_.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17in_nested_literal(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !550, !noalias !551, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #20, !noalias !552
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.c, align 8, !noalias !553, !noundef !4 ; 6 uses
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !4 ; 3 uses
  %i.g = add i32 %i.b, -1
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %i.i = icmp ugt i64 %i.e, %i.h
  br i1 %i.i, label %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20, !noalias !553
  unreachable

_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !noalias !553, !noundef !4 ; 2 uses
  %i.m = load i64, ptr %i.j, align 8, !range !5, !noalias !554, !noundef !4
  %1 = trunc nuw i64 %i.m to i1
  %.not.i.i = icmp ne i32 %i.l, 0
  %or.cond.not = and i1 %.not.i.i, %1
  br i1 %or.cond.not, label %bb.e, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread

bb.e:                                             ; preds = %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i
  %i.n = add i32 %i.l, -1
  %i.o = zext i32 %i.n to i64                     ; 3 uses
  %i.p = icmp ugt i64 %i.e, %i.o
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20, !noalias !555
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.o ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8, !noalias !555, !noundef !4 ; 2 uses
  %i.t = load i64, ptr %i.q, align 8, !range !5, !noalias !556, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  br i1 %i.u, label %bb.h, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !556, !nonnull !4, !align !3, !noundef !4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !range !10, !noundef !4
  switch i32 %i.x, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread [
    i32 26, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread.sink.split
    i32 30, label %bb.i
  ]

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread.sink.split: ; preds = %bb.h, %bb.m
  %.sink = phi ptr [ %i.ai, %bb.m ], [ %i.w, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.aa = tail call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17match_typing_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noundef nonnull align 8 %i.z, ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 7)
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread: ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread.sink.split, %bb.i, %bb.l, %bb.g, %bb.m, %bb.h, %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i
  %.sroa.0.0 = phi i1 [ false, %bb.l ], [ false, %bb.m ], [ false, %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.i ], [ %i.aa, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread.sink.split ]
  ret i1 %.sroa.0.0

bb.i:                                             ; preds = %bb.h
  %.not.i.i16 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i16, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = add i32 %i.s, -1
  %i.ac = zext i32 %i.ab to i64                   ; 3 uses
  %i.ad = icmp ugt i64 %i.e, %i.ac
  br i1 %i.ad, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ac, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20, !noalias !557
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.ac ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !range !5, !noalias !558, !noundef !4
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %bb.m, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !558, !nonnull !4, !align !3, !noundef !4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !range !10, !noundef !4
  %i.ak = icmp eq i32 %i.aj, 26
  br i1 %i.ak, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread.sink.split, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit.thread
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17match_typing_expr(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 7 uses
  %i.b = alloca [144 x i8], align 8               ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.d = load i32, ptr %i.c, align 4, !noundef !4
  %i.e = and i32 %i.d, 114688
  %i.f = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.h = load i64, ptr %i.g, align 8
  %.not = icmp eq i64 %i.h, 0
  %or.cond = select i1 %i.f, i1 %.not, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noundef nonnull align 8 %1)
  %i.i = load i64, ptr %i.b, align 8, !range !19, !noundef !4
  %.not1 = icmp eq i64 %i.i, 2
  br i1 %.not1, label %bb.l, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.l
  %.sroa.0.0 = phi i1 [ %.sroa.0.1, %bb.l ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i64 144, i1 false)
  %i.j = invoke noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27match_typing_qualified_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.f unwind label %bb.e, !noalias !566

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.a) #23
          to label %common.resume.i unwind label %bb.k, !noalias !566

bb.f:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !range !5, !alias.scope !567, !noalias !566, !noundef !4
  %i.m = icmp eq i64 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.n), !noalias !566
  br label %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel17match_typing_expr0B8_.exit

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i unwind label %bb.i, !noalias !566

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume.i unwind label %bb.j, !noalias !566

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !566
  unreachable

common.resume.i:                                  ; preds = %bb.i, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.o, %bb.i ], [ %i.k, %bb.e ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i: ; preds = %bb.h
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n), !noalias !566
  br label %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel17match_typing_expr0B8_.exit

bb.k:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !566
  unreachable

_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel17match_typing_expr0B8_.exit: ; preds = %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel17match_typing_expr0B8_.exit
  %.sroa.0.1 = phi i1 [ %i.j, %_RNCNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB6_13SemanticModel17match_typing_expr0B8_.exit ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel17resolve_submodule(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(472) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 -192, 72057594037927936) %2, i32 noundef range(i32 1, 0) %3, i32 noundef range(i32 1, 0) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 4 uses
  %i.g = add i32 %4, -1
  %i.h = zext i32 %i.g to i64                     ; 3 uses
  %i.i = icmp ugt i64 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.h ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8, !range !6, !noundef !4
  %cond = icmp eq i32 %i.l, 14
  br i1 %cond, label %bb.d, label %bb.r

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store i64 0, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.p = load i64, ptr %i.o, align 8, !range !5, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.u = load i64, ptr %i.t, align 8, !noundef !4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
end_hunk_0
begin_hunk_1_@_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name:bb.a
  %i.kv = icmp samesign ugt i64 %i.kq, 1
  call void @llvm.assume(i1 %i.kv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ku, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !766
  br label %_RNvMsy_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_11SegmentsVec10from_slice.exit

_RNvMsy_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_11SegmentsVec10from_slice.exit: ; preds = %bb.cl, %bb.cn
  %.sroa.7.0 = phi i64 [ 2, %bb.cn ], [ %.sroa.7.8.copyload, %bb.cl ]
  %.sroa.6150.0 = phi ptr [ %i.ku, %bb.cn ], [ %.sroa.6150.8.copyload, %bb.cl ]
  %.sroa.4149.0 = phi i64 [ %i.kq, %bb.cn ], [ %.sroa.4149.8.copyload, %bb.cl ]
  %storemerge.i = phi i64 [ 1, %bb.cn ], [ 0, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 %storemerge.i, ptr %0, align 8
  %.sroa.4152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4149.0, ptr %.sroa.4152.0..sroa_idx, align 8
  %.sroa.5153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6150.0, ptr %.sroa.5153.0..sroa_idx, align 8
  %.sroa.6154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0, ptr %.sroa.6154.0..sroa_idx, align 8
  %.sroa.7155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7155.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.8, i64 112, i1 false)
  br label %bb.j

bb.co:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @_RNvMsv_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_15UnqualifiedName9from_expr(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.ah, ptr noundef nonnull align 8 %2)
  %i.kw = load i64, ptr %i.ah, align 8, !range !19, !noundef !4
  %.not109 = icmp eq i64 %i.kw, 2
  br i1 %.not109, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i64 2, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i, %bb.ct, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %bb.j

bb.cq:                                            ; preds = %bb.cr
  %i.kx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef align 8 dereferenceable(144) %i.ai) #23
          to label %common.resume unwind label %bb.ab

bb.cr:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ai, ptr noundef nonnull align 8 dereferenceable(144) %i.ah, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.ky = load i64, ptr %i.ai, align 8, !range !5, !noundef !4
  %i.kz = trunc nuw i64 %i.ky to i1               ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !nonnull !4
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ld = load i64, ptr %i.lc, align 8
  %i.le = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 5 uses
  %i.lf = load i32, ptr %i.le, align 8
  %i.lg = zext i32 %i.lf to i64
  %.sroa.4.0 = select i1 %i.kz, i64 %i.ld, i64 %i.lg
  %.sroa.05.0 = select i1 %i.kz, ptr %i.lb, ptr %i.la ; 2 uses
  %i.lh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.05.0, i64 %.sroa.4.0
  store i64 1, ptr %i.ag, align 8, !alias.scope !768, !noalias !769
  %.sroa.4.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i131, align 8, !alias.scope !768, !noalias !769
  %.sroa.5.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i132, align 8, !alias.scope !768, !noalias !769
  %i.li = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %.sroa.05.0, ptr %i.li, align 8, !alias.scope !768, !noalias !769
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %i.lh, ptr %i.lj, align 8, !alias.scope !768, !noalias !769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke fastcc void @_RINvXsF_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB6_11SegmentsVecINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorReE9from_iterINtNtNtB17_8adapters5chain5ChainINtNtNtB17_7sources4once4OnceB20_EINtNtB2i_6copied6CopiedINtNtNtB19_5slice4iter4IterB20_EEEECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef align 8 captures(none) dereferenceable(144) %i.k, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.ag)
          to label %bb.cs unwind label %bb.cq

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.k, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  %i.lk = load i64, ptr %i.ai, align 8, !range !5, !alias.scope !770, !noundef !4
  %i.ll = icmp eq i64 %i.lk, 0
  br i1 %i.ll, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.le)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit

bb.cu:                                            ; preds = %bb.cs
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.le)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i unwind label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.le)
          to label %common.resume unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ln = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i: ; preds = %bb.cu
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.le)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel24current_statement_parent(ptr noalias noundef readonly align 8 captures(none) dereferenceable(472) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !784)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !784, !noalias !785, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements.exit, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #20, !noalias !786
  unreachable

_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.c, align 8, !noalias !787, !noundef !4 ; 4 uses
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !4 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2U_ENCNvMs_NtB1i_5modelNtB3Y_13SemanticModel18current_statements0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3R_ENtB4X_13SpecAdvanceBy15spec_advance_by0E0B1i_.exit.i, %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements.exit
  %i.g = phi i32 [ %i.b, %_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements.exit ], [ %i.m, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2U_ENCNvMs_NtB1i_5modelNtB3Y_13SemanticModel18current_statements0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3R_ENtB4X_13SpecAdvanceBy15spec_advance_by0E0B1i_.exit.i ] ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtB3f_INtNtBc_6option6OptionB3f_ENCNvMs_NtB1a_5modelNtB68_13SemanticModel18current_statements0NCNvXs_NvB2y_10advance_byINtB3Q_9FilterMapB3_B61_ENtB77_13SpecAdvanceBy15spec_advance_by0E0B5A_EB1a_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add i32 %i.g, -1
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = icmp ugt i64 %i.e, %i.i
  br i1 %i.j, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2U_ENCNvMs_NtB1i_5modelNtB3Y_13SemanticModel18current_statements0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3R_ENtB4X_13SpecAdvanceBy15spec_advance_by0E0B1i_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20, !noalias !787
  unreachable

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2U_ENCNvMs_NtB1i_5modelNtB3Y_13SemanticModel18current_statements0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3R_ENtB4X_13SpecAdvanceBy15spec_advance_by0E0B1i_.exit.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 8, !noalias !787, !noundef !4 ; 2 uses
  %i.n = load i64, ptr %i.k, align 8, !range !5, !noalias !788, !noundef !4
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1k_5modelNtB34_13SemanticModel18current_statements0E0B1k_.exit.i, label %bb.c

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1k_5modelNtB34_13SemanticModel18current_statements0E0B1k_.exit.i: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2U_ENCNvMs_NtB1i_5modelNtB3Y_13SemanticModel18current_statements0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3R_ENtB4X_13SpecAdvanceBy15spec_advance_by0E0B1i_.exit.i, %bb.h
  %i.p = phi i32 [ %i.v, %bb.h ], [ %i.m, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtINtNtNtBa_3num7nonzero7NonZerojEINtNtBa_6option6OptionB2U_ENCNvMs_NtB1i_5modelNtB3Y_13SemanticModel18current_statements0NCNvXs_NvNtNtNtB8_6traits8iterator8Iterator10advance_byINtB4_9FilterMapINtNtNtB8_7sources10successors10SuccessorsB1e_NCNvMB1g_NtB1g_5Nodes12ancestor_ids0EB3R_ENtB4X_13SpecAdvanceBy15spec_advance_by0E0B1i_.exit.i ] ; 2 uses
  %.not.i.i6 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i6, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtB3f_INtNtBc_6option6OptionB3f_ENCNvMs_NtB1a_5modelNtB68_13SemanticModel18current_statements0NCNvXs_NvB2y_10advance_byINtB3Q_9FilterMapB3_B61_ENtB77_13SpecAdvanceBy15spec_advance_by0E0B5A_EB1a_.exit, label %bb.f

bb.f:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1k_5modelNtB34_13SemanticModel18current_statements0E0B1k_.exit.i
  %i.q = add i32 %i.p, -1
  %i.r = zext i32 %i.q to i64                     ; 3 uses
  %i.s = icmp ugt i64 %i.e, %i.r
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20, !noalias !789
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.r ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i32, ptr %i.u, align 8, !noalias !789, !noundef !4
  %i.w = load i64, ptr %i.t, align 8, !range !5, !noalias !790, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1k_5modelNtB34_13SemanticModel18current_statements0E0B1k_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !790, !nonnull !4, !align !3, !noundef !4
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtB3f_INtNtBc_6option6OptionB3f_ENCNvMs_NtB1a_5modelNtB68_13SemanticModel18current_statements0NCNvXs_NvB2y_10advance_byINtB3Q_9FilterMapB3_B61_ENtB77_13SpecAdvanceBy15spec_advance_by0E0B5A_EB1a_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB18_NtB18_5Nodes12ancestor_ids0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtNtBc_3num7nonzero7NonZerojENCINvNtNtBa_8adapters10filter_map19filter_map_try_foldB16_RNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtB3f_INtNtBc_6option6OptionB3f_ENCNvMs_NtB1a_5modelNtB68_13SemanticModel18current_statements0NCNvXs_NvB2y_10advance_byINtB3Q_9FilterMapB3_B61_ENtB77_13SpecAdvanceBy15spec_advance_by0E0B5A_EB1a_.exit: ; preds = %bb.c, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1k_5modelNtB34_13SemanticModel18current_statements0E0B1k_.exit.i, %bb.i
  %.sroa.0.1 = phi ptr [ null, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtQNCNvMs_NtB1k_5modelNtB34_13SemanticModel18current_statements0E0B1k_.exit.i ], [ %i.z, %bb.i ], [ null, %bb.c ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel25current_expression_parent(ptr noalias noundef readonly align 8 captures(none) dereferenceable(472) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !805, !noalias !806, !noundef !4 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #20, !noalias !807
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load i64, ptr %i.c, align 8, !noalias !808, !noundef !4 ; 4 uses
  %2 = load ptr, ptr %1, align 8, !nonnull !4     ; 2 uses
  %i.e = add i32 %i.b, -1
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.f, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20, !noalias !808
  unreachable

_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !noalias !808, !noundef !4 ; 2 uses
  %i.k = load i64, ptr %i.h, align 8, !range !5, !noalias !809, !noundef !4
  %.not = icmp eq i64 %i.k, 0
  %.not.i.i = icmp eq i32 %i.j, 0
  %or.cond = or i1 %.not.i.i, %.not
  br i1 %or.cond, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit, label %bb.e

bb.e:                                             ; preds = %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i
  %i.l = add i32 %i.j, -1
  %i.m = zext i32 %i.l to i64                     ; 3 uses
  %i.n = icmp ugt i64 %i.d, %i.m
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20, !noalias !810
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !5, !noalias !811, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.h, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !811, !nonnull !4, !align !3, !noundef !4
  br label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtNtB9_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1P_NtB1P_5Nodes12ancestor_ids0ENCNvMs_NtB1R_5modelNtB3m_13SemanticModel19current_expressions0ENtNtNtB9_6traits8iterator8Iterator4nextB1R_.exit: ; preds = %bb.h, %bb.g, %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i
  %.sroa.0.0 = phi ptr [ %i.s, %bb.h ], [ null, %_RNCINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9map_whileINtB8_8MapWhileINtNtNtBc_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB1S_NtB1S_5Nodes12ancestor_ids0ENCNvMs_NtB1U_5modelNtB3p_13SemanticModel19current_expressions0ENtNtNtBc_6traits8iterator8Iterator8try_foldINtNtNtBe_3num7nonzero7NonZerojENCNvXs_NvB4j_10advance_byBV_NtB5D_13SpecAdvanceBy15spec_advance_by0INtNtBe_6option6OptionB50_EE0B1U_.exit.i.i ], [ null, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel25lookup_attribute_in_scope(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 1, 0) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 6 uses
  %i.b = alloca [144 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsv_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_15UnqualifiedName9from_expr(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.a, ptr noundef nonnull align 8 %1)
  %i.c = load i64, ptr %i.a, align 8, !range !19, !noundef !4
  %.not = icmp eq i64 %i.c, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = load i64, ptr %i.b, align 8, !range !5, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1                 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = zext i32 %i.k to i64
  %.sroa.55.0 = select i1 %i.e, i64 %i.i, i64 %i.l ; 2 uses
  %.sroa.02.0 = select i1 %i.e, ptr %i.g, ptr %i.f ; 2 uses
  %.not45 = icmp eq i64 %.sroa.55.0, 0
  br i1 %.not45, label %.loopexit, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %.sroa.02.0, align 8, !nonnull !4, !noundef !4
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.02.0.sroa.sel = select i1 %i.e, ptr %.sroa.gep, ptr %i.h
  %i.n = load i64, ptr %.sroa.02.0.sroa.sel, align 8, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.p = load i32, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %i.q = and i32 %i.p, 48
  %i.r = icmp ne i32 %i.q, 0
  %i.s = and i32 %i.p, 65
  %spec.select = icmp eq i32 %i.s, 65
  %.sroa.013.0 = or i1 %i.r, %spec.select
  %i.t = invoke { i32, i32 } @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22lookup_symbol_in_scope(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef %i.n, i32 noundef %2, i1 noundef zeroext %.sroa.013.0)
          to label %bb.j unwind label %.loopexit.split-lp ; 2 uses

.loopexit:                                        ; preds = %bb.q, %bb.t, %bb.j, %bb.b
  %i.u = load i64, ptr %i.b, align 8, !range !5, !alias.scope !820, !noundef !4
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit

bb.f:                                             ; preds = %.loopexit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.o, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.o ], [ %i.w, %bb.g ], [ %lpad.phi, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i: ; preds = %bb.f
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit

.loopexit52:                                      ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %.invoke, %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit52
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit52 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef align 8 dereferenceable(144) %i.b) #23
          to label %common.resume unwind label %bb.u

bb.j:                                             ; preds = %bb.d
  %i.y = extractvalue { i32, i32 } %i.t, 0
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.aa = extractvalue { i32, i32 } %i.t, 1       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4
  %.sroa.519.094 = add i64 %.sroa.55.0, -1        ; 2 uses
  %.not4696 = icmp eq i64 %.sroa.519.094, 0
  br i1 %.not4696, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %bb.t
  %.sroa.519.0 = add i64 %.sroa.519.099, -1       ; 2 uses
  %.not46 = icmp eq i64 %.sroa.519.0, 0
  br i1 %.not46, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %bb.k
  %.sroa.025.0.lcssa = phi i32 [ %i.aa, %bb.k ], [ %i.bh, %bb.l ] ; 2 uses
  %i.aj = load i64, ptr %i.b, align 8, !range !5, !alias.scope !821, !noundef !4
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit

bb.n:                                             ; preds = %._crit_edge
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i49 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i49: ; preds = %bb.n
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.sroa.519.099 = phi i64 [ %.sroa.519.0, %bb.l ], [ %.sroa.519.094, %bb.k ]
  %.sroa.02.0.pn98 = phi ptr [ %.sroa.016.0100, %bb.l ], [ %.sroa.02.0, %bb.k ] ; 2 uses
  %.sroa.025.097 = phi i32 [ %i.bh, %bb.l ], [ %i.aa, %bb.k ] ; 2 uses
  %.sroa.016.0100 = getelementptr inbounds nuw i8, ptr %.sroa.02.0.pn98, i64 16 ; 2 uses
  %i.an = add i32 %.sroa.025.097, -1
  %i.ao = icmp ne i32 %.sroa.025.097, 0
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = zext i32 %i.an to i64                   ; 3 uses
  %i.aq = icmp ugt i64 %i.ac, %i.ap
  br i1 %i.aq, label %bb.q, label %.invoke

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name15UnqualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i49, %bb.m, %bb.c, %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i
  %.sroa.0.2 = phi i32 [ 0, %bb.c ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i ], [ 0, %bb.e ], [ %.sroa.025.0.lcssa, %bb.m ], [ %.sroa.025.0.lcssa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i49 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_1
