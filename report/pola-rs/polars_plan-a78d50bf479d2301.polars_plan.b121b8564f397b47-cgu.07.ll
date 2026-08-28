Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.07?download=true
inline.NumInlined: 10851
inline.NumDeleted: 5377
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRTNtNtNtCs8RKTHBS4OBx_12object_store3gcp7builder15GoogleConfigKeyNtNtCsgZ49sUHp3tW_5alloc6string6StringENtB6_5Debug3fmtCsfcROwRM8ZtH_11polars_plan:bb.a
  call void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !dbg !157250, !noalias !157251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !157252, !noalias !157246
  store ptr %i.d, ptr %i.b, align 8, !dbg !157252, !noalias !157246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157252, !noalias !157246
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !157252
  store ptr %i.e, ptr %i.a, align 8, !dbg !157252, !noalias !157246
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @469), !dbg !157254 ; 0 uses
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @470), !dbg !157254 ; 0 uses
  %i.h = call noundef zeroext i1 @_RNvMs2_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !157256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !157257, !noalias !157246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157257, !noalias !157246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !157258, !noalias !157246
  ret i1 %i.h, !dbg !157259
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions10FunctionIRNtB6_7Display3fmtBC_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !157260 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !157262, !nonnull !13, !align !18947, !noundef !13
  %i.b = tail call noundef zeroext i1 @_RNvXs1_NtNtCsfcROwRM8ZtH_11polars_plan5plans9functionsNtB5_10FunctionIRNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !157263
  ret i1 %i.b, !dbg !157264
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr4list12ListFunctionNtB6_7Display3fmtBE_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !157265 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !157266, !nonnull !13, !align !18947, !noundef !13
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr4listNtB2_12ListFunctionNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !157267
  ret i1 %i.b, !dbg !157268
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hint6HintIRNtB6_7Display3fmtBE_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !157269 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !157270, !nonnull !13, !align !18947, !noundef !13
  %i.b = tail call noundef zeroext i1 @_RNvXs1_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions4hintNtB5_6HintIRNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !157271
  ret i1 %i.b, !dbg !157272
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtRNtNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr7struct_16IRStructFunctionNtB6_7Display3fmtBG_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 !dbg !157273 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !157274, !nonnull !13, !align !18947, !noundef !13
  %i.b = tail call noundef zeroext i1 @_RNvXs_NtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr7struct_NtB4_16IRStructFunctionNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !157275
  ret i1 %i.b, !dbg !157276
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCscgRAwXFJnXP_4core5slice3cmpNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldINtB5_14SlicePartialEqBC_E17equal_same_lengthCsfcROwRM8ZtH_11polars_plan(ptr noundef captures(address, read_provenance) %0, ptr noundef captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !157277 {
bb.a:
  %i.a = icmp eq i64 %2, 0, !dbg !157279
  br i1 %i.a, label %_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCsfcROwRM8ZtH_11polars_plan.exit.thread, label %.lr.ph, !dbg !157279

bb.b:                                             ; preds = %_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCsfcROwRM8ZtH_11polars_plan.exit
  %i.b = add nuw i64 %.sroa.01.06, 1, !dbg !157281 ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2, !dbg !157279
  br i1 %exitcond.not, label %_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCsfcROwRM8ZtH_11polars_plan.exit.thread, label %.lr.ph, !dbg !157279

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %.sroa.01.06, !dbg !157282 ; 4 uses
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %.sroa.01.06, !dbg !157285 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157287), !dbg !157290
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157291), !dbg !157290
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157293), !dbg !157296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157299), !dbg !157296
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !157301 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48, !dbg !157301 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 71, !dbg !157305
  %i.h = load i8, ptr %i.g, align 1, !dbg !157305, !range !1129, !alias.scope !157312, !noalias !157315, !noundef !13 ; 2 uses
  %i.i = icmp ugt i8 %i.h, -41, !dbg !157318
  br i1 %i.i, label %bb.d, label %bb.c, !dbg !157318

bb.c:                                             ; preds = %.lr.ph
  %i.j = add i8 %i.h, 64, !dbg !157319
  %i.k = tail call i8 @llvm.umin.i8(i8 %i.j, i8 24), !dbg !157321
  %.sroa.0.0.i.i.i.i = zext nneg i8 %i.k to i64, !dbg !157321
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i, !dbg !157324

bb.d:                                             ; preds = %.lr.ph
  %i.l = load ptr, ptr %i.e, align 8, !dbg !157325, !alias.scope !157312, !noalias !157315, !noundef !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 56, !dbg !157326
  %i.n = load i64, ptr %i.m, align 8, !dbg !157326, !alias.scope !157312, !noalias !157315, !noundef !13
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i, !dbg !157327

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i: ; preds = %bb.d, %bb.c
  %.sroa.01.0.i.i.i = phi i64 [ %i.n, %bb.d ], [ %.sroa.0.0.i.i.i.i, %bb.c ], !dbg !157328 ; 2 uses
  %.sroa.0.0.i1.i.i = phi ptr [ %i.l, %bb.d ], [ %i.e, %bb.c ], !dbg !157329
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 71, !dbg !157330
  %i.p = load i8, ptr %i.o, align 1, !dbg !157330, !range !1129, !alias.scope !157337, !noalias !157340, !noundef !13 ; 2 uses
  %i.q = icmp ugt i8 %i.p, -41, !dbg !157341
  br i1 %i.q, label %bb.f, label %bb.e, !dbg !157341

bb.e:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i
  %i.r = add i8 %i.p, 64, !dbg !157342
  %i.s = tail call i8 @llvm.umin.i8(i8 %i.r, i8 24), !dbg !157344
  %.sroa.0.0.i.i2.i.i = zext nneg i8 %i.s to i64, !dbg !157344
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i, !dbg !157347

bb.f:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit.i.i
  %i.t = load ptr, ptr %i.f, align 8, !dbg !157348, !alias.scope !157337, !noalias !157340, !noundef !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 56, !dbg !157349
  %i.v = load i64, ptr %i.u, align 8, !dbg !157349, !alias.scope !157337, !noalias !157340, !noundef !13
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i, !dbg !157350

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i: ; preds = %bb.f, %bb.e
  %.sroa.01.0.i3.i.i = phi i64 [ %i.v, %bb.f ], [ %.sroa.0.0.i.i2.i.i, %bb.e ], !dbg !157351
  %.sroa.0.0.i4.i.i = phi ptr [ %i.t, %bb.f ], [ %i.f, %bb.e ], !dbg !157352
  %i.w = icmp eq i64 %.sroa.01.0.i.i.i, %.sroa.01.0.i3.i.i, !dbg !157353
  br i1 %i.w, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.i.i, label %_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !157353

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %.sroa.0.0.i1.i.i, ptr %.sroa.0.0.i4.i.i, i64 %.sroa.01.0.i.i.i), !dbg !157358
  %i.x = icmp eq i32 %bcmp.i.i.i, 0, !dbg !157358
  br i1 %i.x, label %_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCsfcROwRM8ZtH_11polars_plan.exit, label %_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !157301

_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.y = tail call noundef zeroext i1 @_RNvXs2_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %i.c, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %i.d), !dbg !157360
  br i1 %i.y, label %bb.b, label %_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !157361

_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %bb.b, %_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCsfcROwRM8ZtH_11polars_plan.exit, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit5.i.i ], [ false, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.i.i ], [ false, %_RNvYNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2neCsfcROwRM8ZtH_11polars_plan.exit ], [ true, %bb.b ], !dbg !157279
  ret i1 %.lcssa, !dbg !157362
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCse67t6KqNqGQ_5rayon4iter6reduceINtB5_14ReduceConsumerNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info0s_0NCNCB13_s1_00EINtNtB7_8plumbing7ReducerINtNtCscgRAwXFJnXP_4core6result6ResultTINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEjENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEE6reduceB1f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %3, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %4) unnamed_addr #0 !dbg !157363 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157365
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false), !dbg !157365
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !157365 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false), !dbg !157365
  %.val = load ptr, ptr %2, align 8, !dbg !157365
  call fastcc void @_RNCNCNvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir5scans13csv_file_info0s_0Bd_(ptr noalias noundef align 8 captures(none) dereferenceable(80) %0, ptr %.val, ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %i.a, ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %i.b) #37, !dbg !157365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !157366
  ret void, !dbg !157367
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCsfcROwRM8ZtH_11polars_plan5plans6schemaNtB5_12CachedSchemaNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !157368 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !157370
  call void @_RNvMs5_NtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutexINtB5_5MutexINtNtCscgRAwXFJnXP_4core6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEE4lockCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %1), !dbg !157371
  call void @llvm.experimental.noalias.scope.decl(metadata !157372), !dbg !157375
  %i.c = load i64, ptr %i.b, align 8, !dbg !157376, !range !42, !alias.scope !157372, !noalias !157378, !noundef !13
  %i.d = trunc nuw i64 %i.c to i1, !dbg !157380
  br i1 %i.d, label %bb.b, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEINtBM_11PoisonErrorBH_EE6unwrapCsfcROwRM8ZtH_11polars_plan.exit, !dbg !157380, !prof !133

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157381, !noalias !157382
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !157381
  %i.f = load ptr, ptr %i.e, align 8, !dbg !157381, !alias.scope !157372, !noalias !157378, !nonnull !13, !align !18947, !noundef !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !157381
  %i.h = load i8, ptr %i.g, align 8, !dbg !157381, !range !310, !alias.scope !157372, !noalias !157378, !noundef !13
  store ptr %i.f, ptr %i.a, align 8, !dbg !157381, !noalias !157382
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !157381
  store i8 %i.h, ptr %i.i, align 8, !dbg !157381, !noalias !157382
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @336, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @338, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @493) #35
          to label %bb.d unwind label %bb.c, !dbg !157383, !noalias !157372

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsh8eZTKRCwoO_3std4sync6poison11PoisonErrorINtNtBJ_5mutex10MutexGuardINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #33
          to label %bb.f unwind label %bb.e, !dbg !157384, !noalias !157372

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #32, !dbg !157385, !noalias !157372
  unreachable, !dbg !157385

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.j, !dbg !157385

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEINtBM_11PoisonErrorBH_EE6unwrapCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !157386
  %i.m = load ptr, ptr %i.l, align 8, !dbg !157386, !alias.scope !157372, !noalias !157378, !nonnull !13, !align !18947, !noundef !13 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !157386
  %i.o = load i8, ptr %i.n, align 8, !dbg !157386, !range !310, !alias.scope !157372, !noalias !157378, !noundef !13
  %i.p = trunc nuw i8 %i.o to i1, !dbg !157386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157387
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !157388 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !dbg !157394, !noundef !13 ; 2 uses
  %.not = icmp eq ptr %i.r, null, !dbg !157394
  br i1 %.not, label %bb.h, label %bb.g, !dbg !157397

bb.g:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEINtBM_11PoisonErrorBH_EE6unwrapCsfcROwRM8ZtH_11polars_plan.exit
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8, !dbg !157398
  %i.t = icmp slt i64 %i.s, 0, !dbg !157406
  br i1 %i.t, label %bb.n, label %bb.m, !dbg !157406

bb.h:                                             ; preds = %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEINtBM_11PoisonErrorBH_EE6unwrapCsfcROwRM8ZtH_11polars_plan.exit, %bb.m
  %.sroa.02.0 = phi ptr [ %i.ab, %bb.m ], [ null, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEINtBM_11PoisonErrorBH_EE6unwrapCsfcROwRM8ZtH_11polars_plan.exit ], !dbg !157408
  store i32 0, ptr %0, align 8, !dbg !157409
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !157409
  store i8 0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 4, !dbg !157409
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !157409
  store ptr %.sroa.02.0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !157409
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 4, !dbg !157410
  br i1 %i.p, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i, !dbg !157413

bb.i:                                             ; preds = %bb.h
  %i.v = load atomic i64, ptr @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !157415
  %i.w = and i64 %i.v, 9223372036854775807, !dbg !157421
  %i.x = icmp eq i64 %i.w, 0, !dbg !157421
  br i1 %i.x, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j, !dbg !157421, !prof !887

bb.j:                                             ; preds = %bb.i
  %i.y = call noundef zeroext i1 @_RNvNtNtCsh8eZTKRCwoO_3std9panicking11panic_count17is_zero_slow_path() #36, !dbg !157422
  br i1 %i.y, label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.k, !dbg !157423

bb.k:                                             ; preds = %bb.j
  store atomic i8 1, ptr %i.u monotonic, align 4, !dbg !157424
  br label %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, !dbg !157427

_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.z = atomicrmw xchg ptr %i.m, i32 0 release, align 4, !dbg !157428
  %i.aa = icmp eq i32 %i.z, 2, !dbg !157432
  br i1 %i.aa, label %bb.l, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !157432, !prof !133

bb.l:                                             ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m), !dbg !157433
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEECsfcROwRM8ZtH_11polars_plan.exit, !dbg !157433

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCsh8eZTKRCwoO_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtCshe0pyuXM1S4_13polars_schema6schema6SchemaNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuEEEEECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNvMNtNtCsh8eZTKRCwoO_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.l
  ret void, !dbg !157434

bb.m:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.q, align 8, !dbg !157435, !nonnull !13, !noundef !13
  br label %bb.h, !dbg !157436

bb.n:                                             ; preds = %bb.g
  call void @llvm.trap(), !dbg !157437
  unreachable, !dbg !157437
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scans2_1__NtBg_11FileScanDslNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1p_7Visitor10visit_enumNtB5_s_9___VisitorB2A_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !157438 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @494, i64 noundef 34), !dbg !157440
  ret i1 %i.a, !dbg !157441
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scans4_1__NtBg_10FileScanIRNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1o_7Visitor10visit_enumNtB5_s_9___VisitorB2z_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !157442 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @495, i64 noundef 33), !dbg !157443
  ret i1 %i.a, !dbg !157444
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NvXs0_NvXNvNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr4lists_1__NtBg_12ListFunctionNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1B_7Visitor10visit_enumNtB5_s_9___VisitorB2M_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !157445 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 35), !dbg !157447
  ret i1 %i.a, !dbg !157448
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scans2_1__NtBg_11FileScanDslNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1p_7Visitor10visit_enumNtB5_s0_14___FieldVisitorB2A_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !157449 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 16), !dbg !157450
  ret i1 %i.a, !dbg !157451
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scans4_1__NtBg_10FileScanIRNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1o_7Visitor10visit_enumNtB5_s0_14___FieldVisitorB2z_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !157452 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 16), !dbg !157453
  ret i1 %i.a, !dbg !157454
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NvXs0_NvXNvNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr4lists_1__NtBg_12ListFunctionNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1B_7Visitor10visit_enumNtB5_s0_14___FieldVisitorB2M_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !157455 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 16), !dbg !157456
  ret i1 %i.a, !dbg !157457
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs6_NtNtNtCsh8eZTKRCwoO_3std11collections4hash3mapINtB5_7HashMapNtNtCsgZ49sUHp3tW_5alloc6string6StringB13_ENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !157458 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !157464
  call void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9debug_map(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !dbg !157465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !157466
  call void @llvm.experimental.noalias.scope.decl(metadata !157467), !dbg !157470
  call void @llvm.experimental.noalias.scope.decl(metadata !157471), !dbg !157470
  %i.c = load ptr, ptr %0, align 8, !dbg !157473, !alias.scope !157471, !noalias !157467, !nonnull !13, !noundef !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !157490
  %i.e = load i64, ptr %i.d, align 8, !dbg !157490, !alias.scope !157471, !noalias !157467, !noundef !13
  %i.f = add i64 %i.e, 1, !dbg !157490
  call void @_RNvMsi_NtCseTQckN36Kfc_9hashbrown3rawINtB5_12RawIterRangeTNtNtCsgZ49sUHp3tW_5alloc6string6StringBU_EE3newCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, i64 noundef %i.f), !dbg !157494, !noalias !157471
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !157495
  %i.h = load i64, ptr %i.g, align 8, !dbg !157495, !alias.scope !157471, !noalias !157467, !noundef !13
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !157496
  store i64 %i.h, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !157496, !alias.scope !157467, !noalias !157471
  %i.i = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCsgZ49sUHp3tW_5alloc6string6StringB12_INtNtNtNtCsh8eZTKRCwoO_3std11collections4hash3map4IterB13_B13_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !157497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !157498
  %i.j = call noundef zeroext i1 @_RNvMs6_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_8DebugMap6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i), !dbg !157499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !157500
  ret i1 %i.j, !dbg !157501
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scans2_1__NtBg_11FileScanDslNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1p_7Visitor10visit_enumNtB5_s0_9___VisitorB2A_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !157502 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @500, i64 noundef 35), !dbg !157504
  ret i1 %i.a, !dbg !157505
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scans4_1__NtBg_10FileScanIRNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1o_7Visitor10visit_enumNtB5_s0_9___VisitorB2z_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !157506 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @501, i64 noundef 34), !dbg !157507
  ret i1 %i.a, !dbg !157508
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NvXs0_NvXNvNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13function_expr4lists_1__NtBg_12ListFunctionNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1B_7Visitor10visit_enumNtB5_s0_9___VisitorB2M_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !157509 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @502, i64 noundef 33), !dbg !157511
  ret i1 %i.a, !dbg !157512
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scans2_1__NtBg_11FileScanDslNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1p_7Visitor10visit_enumNtB5_s1_14___FieldVisitorB2A_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !157513 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 16), !dbg !157514
  ret i1 %i.a, !dbg !157515
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scans4_1__NtBg_10FileScanIRNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1o_7Visitor10visit_enumNtB5_s1_14___FieldVisitorB2z_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !157516 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @448, i64 noundef 16), !dbg !157517
  ret i1 %i.a, !dbg !157518
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs9_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scans2_1__NtBg_11FileScanDslNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1p_7Visitor10visit_enumNtB5_s1_9___VisitorB2A_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !157519 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @503, i64 noundef 31), !dbg !157521
  ret i1 %i.a, !dbg !157522
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs9_NvXs0_NvXNvNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scans4_1__NtBg_10FileScanIRNtNtCs40veMcpUDl8_10serde_core2de11Deserialize11deserializeNtBb_9___VisitorNtB1o_7Visitor10visit_enumNtB5_s1_9___VisitorB2z_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !157523 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @504, i64 noundef 30), !dbg !157524
  ret i1 %i.a, !dbg !157525
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXsB_NtNtNtCslpwjCj2YNBy_9polars_io3csv4read7optionsNtB5_10NullValuesNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !157526 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !157528, !range !36980, !noundef !13 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !dbg !157529, !range !36980, !noundef !13
  %i.c = icmp eq i64 %i.a, %i.b, !dbg !157531
  br i1 %i.c, label %bb.b, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit, !dbg !157531

bb.b:                                             ; preds = %bb.a
  switch i64 %i.a, label %default.unreachable13 [
    i64 0, label %bb.c
    i64 1, label %bb.i
    i64 2, label %bb.j
  ], !dbg !157531

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.h, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit8, %bb.j, %bb.i, %bb.a, %bb.l, %bb.k
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.j ], [ %i.al, %bb.k ], [ false, %bb.a ], [ %i.aq, %bb.l ], [ false, %bb.i ], [ %i.w, %bb.h ], [ false, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit8 ]
  ret i1 %.sroa.0.0.shrunk, !dbg !157533

default.unreachable13:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !157534 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !157534 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 31, !dbg !157535
  %i.g = load i8, ptr %i.f, align 1, !dbg !157535, !range !1129, !alias.scope !157545, !noalias !157548, !noundef !13 ; 2 uses
  %i.h = icmp ugt i8 %i.g, -41, !dbg !157551
  br i1 %i.h, label %bb.e, label %bb.d, !dbg !157551

bb.d:                                             ; preds = %bb.c
  %i.i = add i8 %i.g, 64, !dbg !157552
  %i.j = tail call i8 @llvm.umin.i8(i8 %i.i, i8 24), !dbg !157554
  %.sroa.0.0.i.i = zext nneg i8 %i.j to i64, !dbg !157554
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !157557

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.d, align 8, !dbg !157558, !alias.scope !157545, !noalias !157548, !noundef !13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !157559
  %i.m = load i64, ptr %i.l, align 8, !dbg !157559, !alias.scope !157545, !noalias !157548, !noundef !13
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !157560

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.d, %bb.e
end_hunk_0
