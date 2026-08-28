Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_core-0a05b3f6bc14d2fb.ty_python_core.20b1ebb04e7d5127-cgu.06?download=true
inline.NumInlined: 910
inline.NumDeleted: 459
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNSNvYRNvMs14_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtBc_4Expr13is_named_exprINtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRBT_EE9call_once6vtableCs2O29vuvTAEJ_14ty_python_core, ptr @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsRNvMs14_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtBU_4Expr13is_named_exprINtB6_5FnMutTRB1B_EE8call_mutCs2O29vuvTAEJ_14ty_python_core }>, align 8
@1 = private unnamed_addr constant [98 x i8] c"/rustc/8bab26f4f68e0e26f0bb7960be334d5b520ea452/library/core/src/slice/sort/unstable/quicksort.rs\00", align 1
@2 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"a\00\00\00\00\00\00\00o\00\00\00\0B\00\00\00" }>, align 8
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"a\00\00\00\00\00\00\00\85\00\00\00\0B\00\00\00" }>, align 8
@_RNvNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL = external thread_local global { { { [2 x i64] } }, i8, [7 x i8] }
@4 = private unnamed_addr constant [37 x i8] c"crates/ty_python_core/src/builder.rs\00", align 1
@5 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"$\00\00\00\00\00\00\00`\02\00\005\00\00\00" }>, align 8
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @4, [16 x i8] c"$\00\00\00\00\00\00\00b\02\00\00\1D\00\00\00" }>, align 8
@7 = private unnamed_addr constant [36 x i8] c"crates/ty_python_core/src/frozen.rs\00", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"#\00\00\00\00\00\00\00F\00\00\00\1B\00\00\00" }>, align 8
@9 = private unnamed_addr constant [51 x i8] c"assertion failed: value <= Self::MAX_VALUE as usize", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"#\00\00\00\00\00\00\00u\00\00\00\01\00\00\00" }>, align 8
@11 = private unnamed_addr constant [42 x i8] c"assertion failed: value <= Self::MAX_VALUE", align 1
@12 = private unnamed_addr constant [101 x i8] c"salsa::tracked_struct::tracked_field::FieldIngredientImpl<ty_python_core::definition::Definition<'_>>", align 1
@13 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXsd_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_15IngredientIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@14 = private unnamed_addr constant [16 x i8] c"ingredient_index", align 1
@15 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@16 = private unnamed_addr constant [11 x i8] c"field_index", align 1
@17 = private unnamed_addr constant [101 x i8] c"salsa::tracked_struct::tracked_field::FieldIngredientImpl<ty_python_core::expression::Expression<'_>>", align 1
@18 = private unnamed_addr constant [93 x i8] c"salsa::tracked_struct::tracked_field::FieldIngredientImpl<ty_python_core::scope::ScopeId<'_>>", align 1
@19 = private unnamed_addr constant [93 x i8] c"salsa::tracked_struct::tracked_field::FieldIngredientImpl<ty_python_core::unpack::Unpack<'_>>", align 1
@20 = private unnamed_addr constant [106 x i8] c"salsa::tracked_struct::tracked_field::FieldIngredientImpl<ty_python_core::predicate::PatternPredicate<'_>>", align 1
@21 = private unnamed_addr constant [120 x i8] c"salsa::tracked_struct::tracked_field::FieldIngredientImpl<ty_python_core::predicate::StarImportPlaceholderPredicate<'_>>", align 1
@22 = private unnamed_addr constant [104 x i8] c"salsa::tracked_struct::tracked_field::FieldIngredientImpl<ty_python_core::statement::StatementInner<'_>>", align 1
@23 = private unnamed_addr constant [13 x i8] c"key not found", align 1
@24 = private unnamed_addr constant [4 x i8] c"kind", align 1
@25 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @24, [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@26 = private unnamed_addr constant [118 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.28.2/src/tracked_struct/tracked_field.rs\00", align 1
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"u\00\00\00\00\00\00\00k\00\00\00\09\00\00\00" }>, align 8
@28 = private unnamed_addr constant [79 x i8] c"internal error: entered unreachable code: tracked field does not allocate pages", align 1
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"u\00\00\00\00\00\00\00s\00\00\00\09\00\00\00" }>, align 8
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"u\00\00\00\00\00\00\00G\00\00\00=\00\00\00" }>, align 8
@31 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"u\00\00\00\00\00\00\00w\00\00\00\09\00\00\00" }>, align 8
@32 = private unnamed_addr constant [10 x i8] c"Definition", align 1
@33 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @32, [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@34 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @26, [16 x i8] c"u\00\00\00\00\00\00\00e\00\00\00\0D\00\00\00" }>, align 8
@35 = private unnamed_addr constant [10 x i8] c"\C0\01.\C0\01(\C0\01)\00", align 1
@36 = private unnamed_addr constant [8 x i8] c"node_ref", align 1
@37 = private unnamed_addr constant [11 x i8] c"assigned_to", align 1
@38 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr @36, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @37, [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
@39 = private unnamed_addr constant [10 x i8] c"Expression", align 1
@40 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @39, [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@41 = private unnamed_addr constant [7 x i8] c"_target", align 1
@42 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @41, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@43 = private unnamed_addr constant [6 x i8] c"Unpack", align 1
@44 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @43, [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@45 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @36, [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@46 = private unnamed_addr constant [14 x i8] c"StatementInner", align 1
@47 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @46, [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@48 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRmNtB6_5Debug3fmtCs2O29vuvTAEJ_14ty_python_core }>, align 8
@49 = private unnamed_addr constant [15 x i8] c"IngredientIndex", align 1
@50 = private unnamed_addr constant [16 x i8] c"FrozenValueIndex", align 1
@51 = private unnamed_addr constant ptr @_RNvYNCNKNvNvMNtNtCs2AWtUsOyxgP_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCs2O29vuvTAEJ_14ty_python_core, align 8
@52 = private unnamed_addr constant [16 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16
@53 = private unnamed_addr constant <{ ptr, [24 x i8] }> <{ ptr @52, [24 x i8] zeroinitializer }>, align 8
@54 = private unnamed_addr constant [96 x i8] c"internal error: entered unreachable code: only tracked struct ingredients can have stale outputs", align 1
@55 = private unnamed_addr constant [100 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/salsa-0.28.2/src/ingredient.rs\00", align 1
@56 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c"c\00\00\00\00\00\00\00Y\00\00\00\09\00\00\00" }>, align 8
@57 = private unnamed_addr constant [115 x i8] c"internal error: entered unreachable code: only tracked struct and function ingredients can have validatable outputs", align 1
@58 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c"c\00\00\00\00\00\00\00P\00\00\00\09\00\00\00" }>, align 8
@59 = private unnamed_addr constant [135 x i8] c"\0CIngredient `\C0w` set `Ingredient::requires_reset_for_new_revision` to true but does not overwrite `Ingredient::reset_for_new_revision`\00", align 1
@60 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @55, [16 x i8] c"c\00\00\00\00\00\00\00q\00\00\00\09\00\00\00" }>, align 8

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 6) i8 @_RINvMs4_NtCskLngH8kgpZI_15ruff_python_ast7helpersNtB6_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0EB1i_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !3, !noundef !4
  switch i32 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit [
    i32 4, label %bb.b
    i32 6, label %bb.c
    i32 7, label %bb.l
    i32 11, label %bb.b
    i32 30, label %bb.l
    i32 17, label %bb.d
    i32 18, label %bb.b
    i32 19, label %bb.e
    i32 20, label %bb.f
    i32 21, label %bb.g
    i32 22, label %bb.h
    i32 23, label %bb.i
    i32 24, label %bb.b
    i32 29, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp ult i64 %i.c, 64051194700380388
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit, label %.lr.ph31

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = tail call noundef zeroext i1 @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers17is_empty_f_string(ptr noundef nonnull align 8 %i.f)
  br i1 %i.g, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit, label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = tail call noundef zeroext i1 @_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue8is_empty(ptr noundef nonnull align 8 %i.h)
  %spec.select = select i1 %i.i, i8 2, i8 3
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = tail call noundef zeroext i1 @_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue8is_empty(ptr noundef nonnull align 8 %i.j)
  %spec.select8 = select i1 %i.k, i8 2, i8 3
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !5, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  switch i64 %i.m, label %default.unreachable24 [
    i64 0, label %bb.n
    i64 1, label %bb.o
    i64 2, label %bb.p
  ]

bb.h:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !6, !noundef !4
  %not. = xor i8 %i.p, 1
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit

bb.i:                                             ; preds = %bb.a
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit

.lr.ph31:                                         ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx35 = mul nuw nsw i64 %i.c, 144
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx35
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.v, i64 144 ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.s
  br i1 %i.u, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph31, %bb.j
  %i.v = phi ptr [ %i.r, %.lr.ph31 ], [ %i.t, %bb.j ] ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 72
  %.val.i = load i32, ptr %i.w, align 8, !range !7, !noalias !8, !noundef !4
  %i.x = icmp eq i32 %.val.i, -1
  br i1 %i.x, label %bb.j, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !4 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 128102389400760776
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.z, 0
  br i1 %i.ab, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit, label %.lr.ph

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit: ; preds = %bb.s, %bb.t, %bb.j, %bb.k, %bb.r, %bb.q, %bb.m, %bb.f, %bb.e, %bb.l, %bb.p, %bb.n, %bb.o, %bb.d, %bb.c, %bb.h, %bb.a, %bb.b, %bb.i
  %.sroa.0.0 = phi i8 [ %spec.select, %bb.e ], [ 3, %bb.b ], [ 3, %bb.n ], [ 2, %bb.l ], [ %spec.select11, %bb.q ], [ %spec.select10, %bb.m ], [ %.7, %bb.o ], [ %spec.select8, %bb.f ], [ 5, %bb.a ], [ %not., %bb.h ], [ %spec.select12, %bb.r ], [ 3, %bb.p ], [ 4, %bb.i ], [ 2, %bb.d ], [ 2, %bb.c ], [ 3, %bb.k ], [ 5, %bb.j ], [ 3, %bb.t ], [ 5, %bb.s ]
  ret i8 %.sroa.0.0

bb.m:                                             ; preds = %bb.d
  %i.ac = tail call noundef zeroext i1 @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers21is_non_empty_f_string(ptr noundef nonnull align 8 %i.f)
  %spec.select10 = select i1 %i.ac, i8 3, i8 5
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit

default.unreachable24:                            ; preds = %bb.g
  unreachable

bb.n:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.n, align 8, !noundef !4
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.q, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit

bb.o:                                             ; preds = %bb.g
  %i.ae = load double, ptr %i.n, align 8, !noundef !4
  %i.af = fcmp oeq double %i.ae, 0.000000e+00
  %.7 = select i1 %i.af, i8 2, i8 3
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit

bb.p:                                             ; preds = %bb.g
  %i.ag = load double, ptr %i.n, align 8, !noundef !4
  %i.ah = fcmp oeq double %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.r, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit

bb.q:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !4
  %or.cond = icmp eq i64 %i.aj, 0
  %spec.select11 = select i1 %or.cond, i8 2, i8 3
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit

bb.r:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load double, ptr %i.ak, align 8, !noundef !4
  %i.am = fcmp oeq double %i.al, 0.000000e+00
  %spec.select12 = select i1 %i.am, i8 2, i8 3
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit

.lr.ph:                                           ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.z, 72
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %i.as, i64 72 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ap
  br i1 %i.ar, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.s
  %i.as = phi ptr [ %i.ao, %.lr.ph ], [ %i.aq, %bb.s ] ; 2 uses
  %.val.i14 = load i32, ptr %i.as, align 8, !range !3, !noalias !11, !noundef !4
  %i.at = icmp eq i32 %.val.i14, 27
  br i1 %i.at, label %bb.s, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCINvMs4_NtBU_7helpersNtB2x_10Truthiness9from_exprNCNvNtCs2O29vuvTAEJ_14ty_python_core7builder27literal_iterable_truthiness0E0EB3i_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdEEB1i_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs2O29vuvTAEJ_14ty_python_core5scope11FileScopeIdEEB1i_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEECs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEECs2O29vuvTAEJ_14ty_python_core.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameEECs2O29vuvTAEJ_14ty_python_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB1c_7use_def23DefinitionsAtDefinitionNtB27_18InternedBindingsIdNtB27_22InternedDeclarationsIdEEEEB1c_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtBJ_7use_def23DefinitionsAtDefinitionNtB1E_18InternedBindingsIdNtB1E_22InternedDeclarationsIdEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtBQ_7use_def23DefinitionsAtDefinitionNtB1L_18InternedBindingsIdNtB1L_22InternedDeclarationsIdEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB1j_7use_def23DefinitionsAtDefinitionNtB2e_18InternedBindingsIdNtB2e_22InternedDeclarationsIdEEEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtBQ_7use_def23DefinitionsAtDefinitionNtB1L_18InternedBindingsIdNtB1L_22InternedDeclarationsIdEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB1j_7use_def23DefinitionsAtDefinitionNtB2e_18InternedBindingsIdNtB2e_22InternedDeclarationsIdEEEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtBG_5boxed3BoxSTNtNtB1c_9statement9StatementNtNtNtB1c_7ast_ids8node_key17ExpressionNodeKeyEEEEEB1c_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB7_5boxed3BoxSTNtNtBJ_9statement9StatementNtNtNtBJ_7ast_ids8node_key17ExpressionNodeKeyEEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB7_5boxed3BoxSTNtNtBQ_9statement9StatementNtNtNtBQ_7ast_ids8node_key17ExpressionNodeKeyEEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtBG_5boxed3BoxSTNtNtB1j_9statement9StatementNtNtNtB1j_7ast_ids8node_key17ExpressionNodeKeyEEEEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtB7_5boxed3BoxSTNtNtBQ_9statement9StatementNtNtNtBQ_7ast_ids8node_key17ExpressionNodeKeyEEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionINtNtBG_5boxed3BoxSTNtNtB1j_9statement9StatementNtNtNtB1j_7ast_ids8node_key17ExpressionNodeKeyEEEEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtBG_5boxed3BoxSNtB1a_10DefinitionEEEEB1c_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtB7_5boxed3BoxSNtBH_10DefinitionEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtB7_5boxed3BoxSNtBO_10DefinitionEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtBG_5boxed3BoxSNtB1h_10DefinitionEEEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtB7_5boxed3BoxSNtBO_10DefinitionEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyINtNtBG_5boxed3BoxSNtB1h_10DefinitionEEEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1a_10DefinitionEEEB1c_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtBH_10DefinitionEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtBO_10DefinitionEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1h_10DefinitionEEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtBO_10DefinitionEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core10definition17DefinitionNodeKeyNtB1h_10DefinitionEEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB1a_25ScopedEnclosingSnapshotIdEEEB1c_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBH_25ScopedEnclosingSnapshotIdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBO_25ScopedEnclosingSnapshotIdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB1h_25ScopedEnclosingSnapshotIdEEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtBO_25ScopedEnclosingSnapshotIdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCs2O29vuvTAEJ_14ty_python_core7use_def20EnclosingSnapshotKeyNtB1h_25ScopedEnclosingSnapshotIdEEEB1j_.exit: ; preds = %bb.b
end_hunk_0
