Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.10?download=true
inline.NumInlined: 10796
inline.NumDeleted: 4618
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutTddEEINtBZ_4IterTjRdEEEINtB5_7ZipImplBW_B1u_E3newCskY9G75ZWc4U_11polars_expr:bb.a
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e), !dbg !114417
  store ptr %1, ptr %0, align 8, !dbg !114418
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114418
  store ptr %2, ptr %i.g, align 8, !dbg !114418
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !114418
  store ptr %3, ptr %i.h, align 8, !dbg !114418
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !114418
  store ptr %4, ptr %i.i, align 8, !dbg !114418
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !114418
  store i64 0, ptr %i.j, align 8, !dbg !114418
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !114418
  store i64 %.sroa.0.0.i, ptr %i.k, align 8, !dbg !114418
  ret void, !dbg !114419
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutTfdEEINtBZ_4IterTjRdEEEINtB5_7ZipImplBW_B1u_E3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !114420 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8
  store ptr %3, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.d, align 8
  %i.e = call noundef i64 @_RNvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutTfdEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !dbg !114425
  %i.f = call noundef i64 @_RNvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterTjRdEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !dbg !114426
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.e), !dbg !114427
  store ptr %1, ptr %0, align 8, !dbg !114428
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114428
  store ptr %2, ptr %i.g, align 8, !dbg !114428
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !114428
  store ptr %3, ptr %i.h, align 8, !dbg !114428
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !114428
  store ptr %4, ptr %i.i, align 8, !dbg !114428
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !114428
  store i64 0, ptr %i.j, align 8, !dbg !114428
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !114428
  store i64 %.sroa.0.0.i, ptr %i.k, align 8, !dbg !114428
  ret void, !dbg !114429
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutyEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1r_E3newCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 72)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !114430 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8
  %i.c = call noundef i64 @_RNvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7IterMutyENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !dbg !114435
  %i.d = call noundef i64 @_RNvYINtNtNtCscgRAwXFJnXP_4core5slice4iter11ChunksExacthENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3), !dbg !114436
  %.sroa.0.0.i = call noundef i64 @llvm.umin.i64(i64 %i.d, i64 %i.c), !dbg !114437
  store ptr %1, ptr %0, align 8, !dbg !114438
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114438
  store ptr %2, ptr %i.e, align 8, !dbg !114438
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !114438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !dbg !114438
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !114438
  store i64 0, ptr %i.g, align 8, !dbg !114438
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !114438
  store i64 %.sroa.0.0.i, ptr %i.h, align 8, !dbg !114438
  ret void, !dbg !114439
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NvNtCskY9G75ZWc4U_11polars_expr8dispatch27function_expr_to_groups_udfNtB5_s3_4WrapNtB7_9GroupsUdf18evaluate_on_groups(ptr dead_on_unwind noalias noundef writable sret([272 x i8]) align 16 captures(none) dereferenceable(272) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3, ptr noundef nonnull align 8 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %5, ptr noundef nonnull align 8 %6) unnamed_addr #0 !dbg !114440 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !dbg !114443, !range !2726, !noundef !2618
  %i.b = trunc nuw i8 %i.a to i1, !dbg !114443
  tail call void @_RNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch8is_empty(ptr noalias noundef nonnull sret([272 x i8]) align 16 captures(none) dereferenceable(272) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noundef nonnull align 8 %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %5, ptr noundef nonnull align 8 %6, i1 noundef zeroext %i.b), !dbg !114444
  ret void, !dbg !114445
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs4_NtNtCs8774dFTUdNv_12polars_arrow9datatypes5fieldNtB5_5FieldNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2403 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !114485
  %i.b = load i8, ptr %i.a, align 8, !dbg !114485, !range !2726, !noundef !2618
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !114485
  %i.d = load i8, ptr %i.c, align 8, !dbg !114485, !range !2726, !noundef !2618
  %i.e = icmp eq i8 %i.b, %i.d, !dbg !114485
  br i1 %i.e, label %bb.b, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !114485

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !114486 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !114486 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 55, !dbg !114487
  %i.i = load i8, ptr %i.h, align 1, !dbg !114487, !range !2670, !alias.scope !114475, !noalias !114476, !noundef !2618 ; 2 uses
  %i.j = icmp ugt i8 %i.i, -41, !dbg !114488
  br i1 %i.j, label %bb.d, label %bb.c, !dbg !114488

bb.c:                                             ; preds = %bb.b
  %i.k = add i8 %i.i, 64, !dbg !114489
  %i.l = tail call i8 @llvm.umin.i8(i8 %i.k, i8 24), !dbg !114490
  %.sroa.0.0.i.i = zext nneg i8 %i.l to i64, !dbg !114490
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !114491

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !dbg !114492, !alias.scope !114475, !noalias !114476, !noundef !2618
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !114493
  %i.o = load i64, ptr %i.n, align 8, !dbg !114493, !alias.scope !114475, !noalias !114476, !noundef !2618
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit, !dbg !114494

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.o, %bb.d ], [ %.sroa.0.0.i.i, %bb.c ], !dbg !114495 ; 2 uses
  %.sroa.0.0.i3 = phi ptr [ %i.m, %bb.d ], [ %i.f, %bb.c ], !dbg !114496
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 55, !dbg !114497
  %i.q = load i8, ptr %i.p, align 1, !dbg !114497, !range !2670, !alias.scope !114477, !noundef !2618 ; 2 uses
  %i.r = icmp ugt i8 %i.q, -41, !dbg !114498
  br i1 %i.r, label %bb.f, label %bb.e, !dbg !114498

bb.e:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.s = add i8 %i.q, 64, !dbg !114499
  %i.t = tail call i8 @llvm.umin.i8(i8 %i.s, i8 24), !dbg !114500
  %.sroa.0.0.i.i4 = zext nneg i8 %i.t to i64, !dbg !114500
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit7, !dbg !114501

bb.f:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit
  %i.u = load ptr, ptr %i.g, align 8, !dbg !114502, !alias.scope !114477, !noundef !2618
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !114503
  %i.w = load i64, ptr %i.v, align 8, !dbg !114503, !alias.scope !114477, !noundef !2618
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit7, !dbg !114504

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit7: ; preds = %bb.e, %bb.f
  %.sroa.01.0.i5 = phi i64 [ %i.w, %bb.f ], [ %.sroa.0.0.i.i4, %bb.e ], !dbg !114505
  %.sroa.0.0.i6 = phi ptr [ %i.u, %bb.f ], [ %i.g, %bb.e ], !dbg !114506
  %i.x = icmp eq i64 %.sroa.01.0.i, %.sroa.01.0.i5, !dbg !114507
  br i1 %i.x, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr.exit, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !114507

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit7
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.0.0.i3, ptr %.sroa.0.0.i6, i64 %.sroa.01.0.i), !dbg !114508
  %i.y = icmp eq i32 %bcmp.i, 0, !dbg !114508
  br i1 %i.y, label %bb.g, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !114486

bb.g:                                             ; preds = %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr.exit
  %i.z = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCs8774dFTUdNv_12polars_arrow9datatypesNtB5_13ArrowDataTypeNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #46, !dbg !114509
  br i1 %i.z, label %bb.h, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !114509

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !114510
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !114510, !noundef !2618 ; 3 uses
  %.not = icmp eq ptr %i.ab, null, !dbg !114510   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !114510
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !114510, !noundef !2618 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null, !dbg !114510   ; 2 uses
  %brmerge = or i1 %.not, %i.ae, !dbg !114511
  %.mux = and i1 %.not, %i.ae, !dbg !114511
  br i1 %brmerge, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.i, !dbg !114511

_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr.exit.thread: ; preds = %bb.h, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit7, %bb.i, %bb.a, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr.exit, %bb.g, %bb.j
  %.sroa.0.0.shrunk = phi i1 [ %.mux, %bb.h ], [ %i.ai, %bb.j ], [ false, %bb.a ], [ false, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit7 ], [ false, %bb.g ], [ false, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr.exit ], [ true, %bb.i ]
  ret i1 %.sroa.0.0.shrunk, !dbg !114512

bb.i:                                             ; preds = %bb.h
  %i.af = icmp eq ptr %i.ab, %i.ad, !dbg !114513
  br i1 %i.af, label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr.exit.thread, label %bb.j, !dbg !114481

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16, !dbg !114514
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !114515
  %i.ai = tail call noundef zeroext i1 @_RNvXs1t_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB18_ENtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah), !dbg !114483
  br label %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCskY9G75ZWc4U_11polars_expr.exit.thread, !dbg !114483
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerINtNtB7_4fold12FoldConsumerIBD_INtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB2J_6series6SeriesEEENvMs5_NtNtB40_11collections11linked_listINtB5z_10LinkedListB3V_E3newEINvB2F_7as_listB3V_EENvMB3Y_B3V_3newINvB2F_8vec_pushB4s_EEENCINvNvB2F_22try_list_from_par_iter2okB4s_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE0ENCNvMNtNtCskY9G75ZWc4U_11polars_expr11expressions5applyNtB92_9ApplyExpr24apply_single_group_aware0EINtNtB7_8plumbing8ConsumerB4s_E11into_folderB96_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 !dbg !1529 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !114522
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114520), !dbg !114523
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114521), !dbg !114523
  call void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter10while_someINtB5_17WhileSomeConsumerINtNtB7_4fold12FoldConsumerINtNtB7_3map11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB2B_6series6SeriesEEENvMs5_NtNtB3S_11collections11linked_listINtB5r_10LinkedListB3N_E3newEINvB2x_7as_listB3N_EENvMB3Q_B3N_3newINvB2x_8vec_pushB4k_EEEINtNtB7_8plumbing8ConsumerIB4l_B4k_EE11into_folderCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(88) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1), !dbg !114524
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !114525
  %i.c = load ptr, ptr %i.b, align 8, !dbg !114525, !alias.scope !114521, !noalias !114520, !nonnull !2618, !align !2672, !noundef !2618
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !114526
  store ptr %i.c, ptr %i.d, align 8, !dbg !114526, !alias.scope !114520, !noalias !114521
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !114527
  %i.f = load ptr, ptr %i.e, align 8, !dbg !114527, !nonnull !2618, !align !2672, !noundef !2618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !dbg !114528
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !114528
  store ptr %i.f, ptr %i.g, align 8, !dbg !114528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !114529
  ret void, !dbg !114530
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerINtNtB7_4fold12FoldConsumerIBD_INtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB2J_6series6SeriesEEENvMs5_NtNtB40_11collections11linked_listINtB5z_10LinkedListB3V_E3newEINvB2F_7as_listB3V_EENvMB3Y_B3V_3newINvB2F_8vec_pushB4s_EEENCINvNvB2F_22try_list_from_par_iter2okB4s_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE0ENCNvMNtNtCskY9G75ZWc4U_11polars_expr11expressions5applyNtB92_9ApplyExpr24apply_single_group_aware0EINtNtB7_8plumbing8ConsumerB4s_E4fullB96_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0) unnamed_addr #0 !dbg !1527 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter10while_someINtB5_17WhileSomeConsumerINtNtB7_4fold12FoldConsumerINtNtB7_3map11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB2B_6series6SeriesEEENvMs5_NtNtB3S_11collections11linked_listINtB5r_10LinkedListB3N_E3newEINvB2x_7as_listB3N_EENvMB3Q_B3N_3newINvB2x_8vec_pushB4k_EEEINtNtB7_8plumbing8ConsumerIB4l_B4k_EE4fullCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0), !dbg !114532
  ret i1 %i.a, !dbg !114533
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerINtNtB7_4fold12FoldConsumerIBD_INtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB2J_6series6SeriesEEENvMs5_NtNtB40_11collections11linked_listINtB5z_10LinkedListB3V_E3newEINvB2F_7as_listB3V_EENvMB3Y_B3V_3newINvB2F_8vec_pushB4s_EEENCINvNvB2F_22try_list_from_par_iter2okB4s_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE0ENCNvMNtNtCskY9G75ZWc4U_11polars_expr11expressions5applyNtB92_9ApplyExpr24apply_single_group_aware0EINtNtB7_8plumbing8ConsumerB4s_E8split_atB96_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) initializes((0, 144)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, i64 noundef %2) unnamed_addr #0 !dbg !1533 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter10while_someINtB5_17WhileSomeConsumerINtNtB7_4fold12FoldConsumerINtNtB7_3map11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB2B_6series6SeriesEEENvMs5_NtNtB3S_11collections11linked_listINtB5r_10LinkedListB3N_E3newEINvB2x_7as_listB3N_EENvMB3Q_B3N_3newINvB2x_8vec_pushB4k_EEEINtNtB7_8plumbing8ConsumerIB4l_B4k_EE8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, i64 noundef %2), !dbg !114540
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !114541
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !114542
  %3 = load ptr, ptr %i.d, align 8, !dbg !114542, !alias.scope !114538, !noalias !114539, !nonnull !2618, !align !2672, !noundef !2618 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !114543
  %4 = load ptr, ptr %i.e, align 8, !dbg !114543, !nonnull !2618, !align !2672, !noundef !2618 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !114544
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !114544
  store ptr %3, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !dbg !114544
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !114544
  store ptr %4, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !114544
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !114544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !114544
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !114544
  store ptr %3, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8, !dbg !114544
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !114544
  store ptr %4, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !114544
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !114544
  %6 = load <2 x ptr>, ptr %i.c, align 8, !dbg !114541
  store <2 x ptr> %6, ptr %5, align 8, !dbg !114544
  ret void, !dbg !114545
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerINtNtB7_4fold12FoldConsumerIBD_INtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB2J_6series6SeriesEEENvMs5_NtNtB40_11collections11linked_listINtB5z_10LinkedListB3V_E3newEINvB2F_7as_listB3V_EENvMB3Y_B3V_3newINvB2F_8vec_pushB4s_EEENCINvNvXs9_B2F_INtNtB4x_6result6ResultppEINtB2F_20FromParIterWithDtypeIB7N_ppEE24from_par_iter_with_dtype2okB4s_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE0ENCNvMNtNtCskY9G75ZWc4U_11polars_expr11expressions5applyNtBaa_9ApplyExpr24apply_single_group_aware0EINtNtB7_8plumbing8ConsumerB4s_E11into_folderBae_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 !dbg !1537 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !114552
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114550), !dbg !114553
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114551), !dbg !114553
  call void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter10while_someINtB5_17WhileSomeConsumerINtNtB7_4fold12FoldConsumerINtNtB7_3map11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB2B_6series6SeriesEEENvMs5_NtNtB3S_11collections11linked_listINtB5r_10LinkedListB3N_E3newEINvB2x_7as_listB3N_EENvMB3Q_B3N_3newINvB2x_8vec_pushB4k_EEEINtNtB7_8plumbing8ConsumerIB4l_B4k_EE11into_folderCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(88) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1), !dbg !114554
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !114555
  %i.c = load ptr, ptr %i.b, align 8, !dbg !114555, !alias.scope !114551, !noalias !114550, !nonnull !2618, !align !2672, !noundef !2618
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80, !dbg !114556
  store ptr %i.c, ptr %i.d, align 8, !dbg !114556, !alias.scope !114550, !noalias !114551
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !114557
  %i.f = load ptr, ptr %i.e, align 8, !dbg !114557, !nonnull !2618, !align !2672, !noundef !2618
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 88, i1 false), !dbg !114558
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !114558
  store ptr %i.f, ptr %i.g, align 8, !dbg !114558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !114559
  ret void, !dbg !114560
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerINtNtB7_4fold12FoldConsumerIBD_INtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB2J_6series6SeriesEEENvMs5_NtNtB40_11collections11linked_listINtB5z_10LinkedListB3V_E3newEINvB2F_7as_listB3V_EENvMB3Y_B3V_3newINvB2F_8vec_pushB4s_EEENCINvNvXs9_B2F_INtNtB4x_6result6ResultppEINtB2F_20FromParIterWithDtypeIB7N_ppEE24from_par_iter_with_dtype2okB4s_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE0ENCNvMNtNtCskY9G75ZWc4U_11polars_expr11expressions5applyNtBaa_9ApplyExpr24apply_single_group_aware0EINtNtB7_8plumbing8ConsumerB4s_E4fullBae_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0) unnamed_addr #0 !dbg !1536 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter10while_someINtB5_17WhileSomeConsumerINtNtB7_4fold12FoldConsumerINtNtB7_3map11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB2B_6series6SeriesEEENvMs5_NtNtB3S_11collections11linked_listINtB5r_10LinkedListB3N_E3newEINvB2x_7as_listB3N_EENvMB3Q_B3N_3newINvB2x_8vec_pushB4k_EEEINtNtB7_8plumbing8ConsumerIB4l_B4k_EE4fullCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0), !dbg !114562
  ret i1 %i.a, !dbg !114563
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerIBD_INtNtB7_10while_some17WhileSomeConsumerINtNtB7_4fold12FoldConsumerIBD_INtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB2J_6series6SeriesEEENvMs5_NtNtB40_11collections11linked_listINtB5z_10LinkedListB3V_E3newEINvB2F_7as_listB3V_EENvMB3Y_B3V_3newINvB2F_8vec_pushB4s_EEENCINvNvXs9_B2F_INtNtB4x_6result6ResultppEINtB2F_20FromParIterWithDtypeIB7N_ppEE24from_par_iter_with_dtype2okB4s_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorE0ENCNvMNtNtCskY9G75ZWc4U_11polars_expr11expressions5applyNtBaa_9ApplyExpr24apply_single_group_aware0EINtNtB7_8plumbing8ConsumerB4s_E8split_atBae_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) initializes((0, 144)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1, i64 noundef %2) unnamed_addr #0 !dbg !1539 {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter10while_someINtB5_17WhileSomeConsumerINtNtB7_4fold12FoldConsumerINtNtB7_3map11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB2B_6series6SeriesEEENvMs5_NtNtB3S_11collections11linked_listINtB5r_10LinkedListB3N_E3newEINvB2x_7as_listB3N_EENvMB3Q_B3N_3newINvB2x_8vec_pushB4k_EEEINtNtB7_8plumbing8ConsumerIB4l_B4k_EE8split_atCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1, i64 noundef %2), !dbg !114570
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 96, !dbg !114571
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !114572
  %3 = load ptr, ptr %i.d, align 8, !dbg !114572, !alias.scope !114568, !noalias !114569, !nonnull !2618, !align !2672, !noundef !2618 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !114573
  %4 = load ptr, ptr %i.e, align 8, !dbg !114573, !nonnull !2618, !align !2672, !noundef !2618 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !114574
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !114574
  store ptr %3, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !dbg !114574
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !114574
  store ptr %4, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !114574
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !114574
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !114574
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !114574
  store ptr %3, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8, !dbg !114574
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !114574
  store ptr %4, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !114574
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !114574
  %6 = load <2 x ptr>, ptr %i.c, align 8, !dbg !114571
  store <2 x ptr> %6, ptr %5, align 8, !dbg !114574
  ret void, !dbg !114575
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB1x_6series6SeriesEEENvMs5_NtNtB2O_11collections11linked_listINtB4n_10LinkedListB2J_E3newEINvB1t_7as_listB2J_EEINtNtB7_8plumbing8ConsumerB2J_E11into_folderCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !114576 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !114577, !nonnull !2618, !noundef !2618
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !114577
  %i.c = load ptr, ptr %i.b, align 8, !dbg !114577, !nonnull !2618, !noundef !2618
  tail call void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter6reduceINtB5_14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB18_6series6SeriesEEENvMs5_NtNtB2p_11collections11linked_listINtB3Y_10LinkedListB2k_E3newEINtNtB7_8plumbing8ConsumerB4w_E11into_folderCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c), !dbg !114578
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !114579
  %i.e = load ptr, ptr %i.d, align 8, !dbg !114579, !nonnull !2618, !noundef !2618
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !114580
  store ptr %i.e, ptr %i.f, align 8, !dbg !114580
  ret void, !dbg !114581
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB1x_6series6SeriesEEENvMs5_NtNtB2O_11collections11linked_listINtB4n_10LinkedListB2J_E3newEINvB1t_7as_listB2J_EEINtNtB7_8plumbing8ConsumerB2J_E4fullCskY9G75ZWc4U_11polars_expr(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 !dbg !114582 {
bb.a:
  ret i1 false, !dbg !114583
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCscgRAwXFJnXP_4core6option6OptionNtNtB1x_6series6SeriesEEENvMs5_NtNtB2O_11collections11linked_listINtB4n_10LinkedListB2J_E3newEINvB1t_7as_listB2J_EEINtNtB7_8plumbing8ConsumerB2J_E8split_atCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #6 !dbg !114584 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !114586, !nonnull !2618, !noundef !2618 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !114586
  %i.c = load ptr, ptr %i.b, align 8, !dbg !114586, !nonnull !2618, !noundef !2618 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !114587
  %i.e = load ptr, ptr %i.d, align 8, !dbg !114587, !nonnull !2618, !noundef !2618 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !dbg !114588
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114588
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !114588
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !114588
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !114588
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !114588
  store ptr %i.a, ptr %i.f, align 8, !dbg !114588
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !114588
  store ptr %i.c, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !114588
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !114588
  store ptr %i.e, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !114588
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !114588
  store ptr %i.a, ptr %i.g, align 8, !dbg !114588
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !114588
  store ptr %i.c, ptr %i.h, align 8, !dbg !114588
  ret void, !dbg !114589
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEENvMs5_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB3X_10LinkedListB2J_E3newENCINvB1t_24collect_into_linked_listINtB5_3MapINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtB9_5slice4ItermEEIB6A_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10moment_aggNtNtCslFlrwjHoTci_14polars_compute6moment13KurtosisStateNvMs2_B97_B95_10insert_oneNvBa1_10from_arrayNCNvB7Y_8kurtosis0Es_0s0_0EINtNtB2M_7mutable21MutablePrimitiveArraydENvMs0_Bbb_Bb8_3newEs_0EINtNtB7_8plumbing8ConsumerBb8_E11into_folderB82_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !114590 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !114591, !nonnull !2618, !noundef !2618
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !114591
  %i.c = load ptr, ptr %i.b, align 8, !dbg !114591, !nonnull !2618, !noundef !2618
  tail call void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter6reduceINtB5_14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEENvMs5_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB3y_10LinkedListB2k_E3newEINtNtB7_8plumbing8ConsumerB4m_E11into_folderCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c), !dbg !114592
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !114593
  %i.e = load ptr, ptr %i.d, align 8, !dbg !114593, !nonnull !2618, !noundef !2618
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !114594
  store ptr %i.e, ptr %i.f, align 8, !dbg !114594
  ret void, !dbg !114595
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEENvMs5_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB3X_10LinkedListB2J_E3newENCINvB1t_24collect_into_linked_listINtB5_3MapINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtB9_5slice4ItermEEIB6A_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10moment_aggNtNtCslFlrwjHoTci_14polars_compute6moment13KurtosisStateNvMs2_B97_B95_10insert_oneNvBa1_10from_arrayNCNvB7Y_8kurtosis0Es_0s0_0EINtNtB2M_7mutable21MutablePrimitiveArraydENvMs0_Bbb_Bb8_3newEs_0EINtNtB7_8plumbing8ConsumerBb8_E4fullB82_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 !dbg !114596 {
bb.a:
  ret i1 false, !dbg !114597
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEENvMs5_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB3X_10LinkedListB2J_E3newENCINvB1t_24collect_into_linked_listINtB5_3MapINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtB9_5slice4ItermEEIB6A_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10moment_aggNtNtCslFlrwjHoTci_14polars_compute6moment13KurtosisStateNvMs2_B97_B95_10insert_oneNvBa1_10from_arrayNCNvB7Y_8kurtosis0Es_0s0_0EINtNtB2M_7mutable21MutablePrimitiveArraydENvMs0_Bbb_Bb8_3newEs_0EINtNtB7_8plumbing8ConsumerBb8_E8split_atB82_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #6 !dbg !114598 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !114600, !nonnull !2618, !noundef !2618 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !114600
  %i.c = load ptr, ptr %i.b, align 8, !dbg !114600, !nonnull !2618, !noundef !2618 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !114601
  %i.e = load ptr, ptr %i.d, align 8, !dbg !114601, !nonnull !2618, !noundef !2618 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !dbg !114602
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114602
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !114602
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !114602
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !114602
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !114602
  store ptr %i.a, ptr %i.f, align 8, !dbg !114602
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !114602
  store ptr %i.c, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !114602
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !114602
  store ptr %i.e, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !114602
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !114602
  store ptr %i.a, ptr %i.g, align 8, !dbg !114602
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !114602
  store ptr %i.c, ptr %i.h, align 8, !dbg !114602
  ret void, !dbg !114603
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEENvMs5_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB3X_10LinkedListB2J_E3newENCINvB1t_24collect_into_linked_listINtB5_3MapINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtB9_5slice4ItermEEIB6A_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10moment_aggNtNtCslFlrwjHoTci_14polars_compute6moment13KurtosisStateNvMs2_B97_B95_10insert_oneNvBa1_10from_arrayNCNvB7Y_8kurtosis0Es_0s_0EINtNtB2M_7mutable21MutablePrimitiveArraydENvMs0_Bba_Bb7_3newEs_0EINtNtB7_8plumbing8ConsumerBb7_E11into_folderB82_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !114604 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !114605, !nonnull !2618, !noundef !2618
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !114605
  %i.c = load ptr, ptr %i.b, align 8, !dbg !114605, !nonnull !2618, !noundef !2618
  tail call void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter6reduceINtB5_14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEENvMs5_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB3y_10LinkedListB2k_E3newEINtNtB7_8plumbing8ConsumerB4m_E11into_folderCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c), !dbg !114606
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !114607
  %i.e = load ptr, ptr %i.d, align 8, !dbg !114607, !nonnull !2618, !noundef !2618
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !114608
  store ptr %i.e, ptr %i.f, align 8, !dbg !114608
  ret void, !dbg !114609
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEENvMs5_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB3X_10LinkedListB2J_E3newENCINvB1t_24collect_into_linked_listINtB5_3MapINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtB9_5slice4ItermEEIB6A_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10moment_aggNtNtCslFlrwjHoTci_14polars_compute6moment13KurtosisStateNvMs2_B97_B95_10insert_oneNvBa1_10from_arrayNCNvB7Y_8kurtosis0Es_0s_0EINtNtB2M_7mutable21MutablePrimitiveArraydENvMs0_Bba_Bb7_3newEs_0EINtNtB7_8plumbing8ConsumerBb7_E4fullB82_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 !dbg !114610 {
bb.a:
  ret i1 false, !dbg !114611
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEENvMs5_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB3X_10LinkedListB2J_E3newENCINvB1t_24collect_into_linked_listINtB5_3MapINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtB9_5slice4ItermEEIB6A_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10moment_aggNtNtCslFlrwjHoTci_14polars_compute6moment13KurtosisStateNvMs2_B97_B95_10insert_oneNvBa1_10from_arrayNCNvB7Y_8kurtosis0Es_0s_0EINtNtB2M_7mutable21MutablePrimitiveArraydENvMs0_Bba_Bb7_3newEs_0EINtNtB7_8plumbing8ConsumerBb7_E8split_atB82_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #6 !dbg !114612 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !114614, !nonnull !2618, !noundef !2618 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !114614
  %i.c = load ptr, ptr %i.b, align 8, !dbg !114614, !nonnull !2618, !noundef !2618 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !114615
  %i.e = load ptr, ptr %i.d, align 8, !dbg !114615, !nonnull !2618, !noundef !2618 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !dbg !114616
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114616
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !114616
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !114616
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !114616
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !114616
  store ptr %i.a, ptr %i.f, align 8, !dbg !114616
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !114616
  store ptr %i.c, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !114616
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !114616
  store ptr %i.e, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !114616
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !114616
  store ptr %i.a, ptr %i.g, align 8, !dbg !114616
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !114616
  store ptr %i.c, ptr %i.h, align 8, !dbg !114616
  ret void, !dbg !114617
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEENvMs5_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB3X_10LinkedListB2J_E3newENCINvB1t_24collect_into_linked_listINtB5_3MapINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtB9_5slice4ItermEEIB6A_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10moment_aggNtNtCslFlrwjHoTci_14polars_compute6moment9SkewStateNvMs1_B97_B95_10insert_oneNvB9W_10from_arrayNCNvB7Y_4skew0Es_0s0_0EINtNtB2M_7mutable21MutablePrimitiveArraydENvMs0_Bb2_BaZ_3newEs_0EINtNtB7_8plumbing8ConsumerBaZ_E11into_folderB82_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !114618 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !114619, !nonnull !2618, !noundef !2618
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !114619
  %i.c = load ptr, ptr %i.b, align 8, !dbg !114619, !nonnull !2618, !noundef !2618
  tail call void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter6reduceINtB5_14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEENvMs5_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB3y_10LinkedListB2k_E3newEINtNtB7_8plumbing8ConsumerB4m_E11into_folderCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c), !dbg !114620
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !114621
  %i.e = load ptr, ptr %i.d, align 8, !dbg !114621, !nonnull !2618, !noundef !2618
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !114622
  store ptr %i.e, ptr %i.f, align 8, !dbg !114622
  ret void, !dbg !114623
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEENvMs5_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB3X_10LinkedListB2J_E3newENCINvB1t_24collect_into_linked_listINtB5_3MapINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtB9_5slice4ItermEEIB6A_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10moment_aggNtNtCslFlrwjHoTci_14polars_compute6moment9SkewStateNvMs1_B97_B95_10insert_oneNvB9W_10from_arrayNCNvB7Y_4skew0Es_0s0_0EINtNtB2M_7mutable21MutablePrimitiveArraydENvMs0_Bb2_BaZ_3newEs_0EINtNtB7_8plumbing8ConsumerBaZ_E4fullB82_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #15 !dbg !114624 {
bb.a:
  ret i1 false, !dbg !114625
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEENvMs5_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB3X_10LinkedListB2J_E3newENCINvB1t_24collect_into_linked_listINtB5_3MapINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtB9_5slice4ItermEEIB6A_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10moment_aggNtNtCslFlrwjHoTci_14polars_compute6moment9SkewStateNvMs1_B97_B95_10insert_oneNvB9W_10from_arrayNCNvB7Y_4skew0Es_0s0_0EINtNtB2M_7mutable21MutablePrimitiveArraydENvMs0_Bb2_BaZ_3newEs_0EINtNtB7_8plumbing8ConsumerBaZ_E8split_atB82_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 64)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #6 !dbg !114626 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !114628, !nonnull !2618, !noundef !2618 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !114628
  %i.c = load ptr, ptr %i.b, align 8, !dbg !114628, !nonnull !2618, !noundef !2618 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !114629
  %i.e = load ptr, ptr %i.d, align 8, !dbg !114629, !nonnull !2618, !noundef !2618 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !dbg !114630
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !114630
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !114630
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !114630
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !114630
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !114630
  store ptr %i.a, ptr %i.f, align 8, !dbg !114630
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !114630
  store ptr %i.c, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !114630
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !114630
  store ptr %i.e, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !114630
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !114630
  store ptr %i.a, ptr %i.g, align 8, !dbg !114630
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !114630
  store ptr %i.c, ptr %i.h, align 8, !dbg !114630
  ret void, !dbg !114631
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs4_NtNtCse67t6KqNqGQ_5rayon4iter3mapINtB5_11MapConsumerINtNtB7_6reduce14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEENvMs5_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB3X_10LinkedListB2J_E3newENCINvB1t_24collect_into_linked_listINtB5_3MapINtNtB7_3zip3ZipINtNtB7_6copied6CopiedINtNtB9_5slice4ItermEEIB6A_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENCNCINvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10moment_aggNtNtCslFlrwjHoTci_14polars_compute6moment9SkewStateNvMs1_B97_B95_10insert_oneNvB9W_10from_arrayNCNvB7Y_4skew0Es_0s_0EINtNtB2M_7mutable21MutablePrimitiveArraydENvMs0_Bb1_BaY_3newEs_0EINtNtB7_8plumbing8ConsumerBaY_E11into_folderB82_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !114632 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !114633, !nonnull !2618, !noundef !2618
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !114633
  %i.c = load ptr, ptr %i.b, align 8, !dbg !114633, !nonnull !2618, !noundef !2618
  tail call void @_RNvXs0_NtNtCse67t6KqNqGQ_5rayon4iter6reduceINtB5_14ReduceConsumerINvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array17from_iterator_par11list_appendINtNtNtCs8774dFTUdNv_12polars_arrow5array9primitive14PrimitiveArraydEENvMs5_NtNtCsgZ49sUHp3tW_5alloc11collections11linked_listINtB3y_10LinkedListB2k_E3newEINtNtB7_8plumbing8ConsumerB4m_E11into_folderCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c), !dbg !114634
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !114635
  %i.e = load ptr, ptr %i.d, align 8, !dbg !114635, !nonnull !2618, !noundef !2618
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !114636
  store ptr %i.e, ptr %i.f, align 8, !dbg !114636
  ret void, !dbg !114637
}
end_hunk_0
