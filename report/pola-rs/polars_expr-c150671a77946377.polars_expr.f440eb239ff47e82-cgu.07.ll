Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.07?download=true
inline.NumInlined: 8874
inline.NumDeleted: 3985
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 119
begin_hunk_0_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3N_8for_each4callB1s_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VecB1s_E14extend_trustedBP_E0E0ECskY9G75ZWc4U_11polars_expr:bb.a
bb.j:                                             ; preds = %_RNvXsr_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.0.48..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !84381, !noalias !84346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.i.i, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !84381, !noalias !84346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !84382, !noalias !84339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !84382, !noalias !84339
  %i.v = getelementptr inbounds nuw [80 x i8], ptr %.sroa.5.0.copyload, i64 %.val15.i, !dbg !84383 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.v, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.0.i.i, i64 72, i1 false), !dbg !84384, !noalias !84347
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 72, !dbg !84384
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !84384, !noalias !84348
  %i.w = add i64 %.val15.i, 1, !dbg !84385        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i), !dbg !84386
  %i.x = add nuw i64 %.sroa.01.0.i, 1, !dbg !84387 ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.h, !dbg !84388
  br i1 %i.y, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB3g_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB3a_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5I_3VecBQ_E14extend_trustedINtNtB42_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.d, !dbg !84388

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.q, %bb.h ], [ %i.q, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.04.0.copyload, align 8, !dbg !84389, !noalias !84338
  resume { ptr, i32 } %eh.lpad-body.i, !dbg !84390

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB3g_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB3a_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5I_3VecBQ_E14extend_trustedINtNtB42_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.j, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.w, %bb.j ], !dbg !84391
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !dbg !84391, !noalias !84338
  ret void, !dbg !84392
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VechEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB23_8for_each4callB1s_NCINvMsj_B1v_IB1t_B1s_E14extend_trustedBP_E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !84393 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8, !dbg !84459 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !84459
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !84459 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !84459
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !84459
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !84460
  %i.b = icmp eq ptr %0, %1, !dbg !84461
  br i1 %i.b, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1q_8for_each4callBQ_NCINvMsj_BT_IBR_BQ_E14extend_trustedINtNtB2i_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !84462

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64, !dbg !84463
  %i.d = ptrtoint ptr %0 to i64, !dbg !84463
  %i.e = sub nuw i64 %i.c, %i.d, !dbg !84463
  %i.f = udiv exact i64 %i.e, 24, !dbg !84463
  br label %bb.c, !dbg !84464

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ %i.i, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ], !dbg !84465 ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !84466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !84467, !noalias !84451
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.d unwind label %bb.e, !dbg !84468, !noalias !84452

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5.0.copyload, i64 %.val15.i, !dbg !84469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !84470, !noalias !84453
  %i.i = add i64 %.val15.i, 1, !dbg !84471        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !84472, !noalias !84451
  %i.j = add nuw i64 %.sroa.01.0.i, 1, !dbg !84473 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.f, !dbg !84474
  br i1 %i.k, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1q_8for_each4callBQ_NCINvMsj_BT_IBR_BQ_E14extend_trustedINtNtB2i_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !84474

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.04.0.copyload, align 8, !dbg !84475, !noalias !84452
  resume { ptr, i32 } %i.l, !dbg !84476

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsgZ49sUHp3tW_5alloc3vec3VechEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1w_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1q_8for_each4callBQ_NCINvMsj_BT_IBR_BQ_E14extend_trustedINtNtB2i_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.i, %bb.d ], !dbg !84477
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !dbg !84477, !noalias !84452
  ret void, !dbg !84478
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2i_8for_each4callB1s_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3y_3VecB1s_E14extend_trustedBP_E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #13 personality ptr @rust_eh_personality !dbg !84479 {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8, !dbg !84567 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !84567
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !84567 ; 2 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !84567
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !84567
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !84568
  %i.a = icmp eq ptr %0, %1, !dbg !84569
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1F_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4d_3VecBQ_E14extend_trustedINtNtB2x_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !84570

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !84571
  %i.c = ptrtoint ptr %0 to i64, !dbg !84571
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !84571
  %i.e = udiv exact i64 %i.d, 24, !dbg !84571
  br label %bb.c, !dbg !84572

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.f = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.s, %bb.e ], !dbg !84573 ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !84574 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84554), !dbg !84575
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84555), !dbg !84576
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84556), !dbg !84577
  %i.h = load ptr, ptr %i.g, align 8, !dbg !84578, !alias.scope !84557, !noalias !84558, !nonnull !3508, !noundef !3508 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !84579, !range !3592, !noalias !84559, !noundef !3508
  %i.j = icmp eq i64 %i.i, 3, !dbg !84580
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !84580

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !84581
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8, !dbg !84582, !noalias !84559 ; 0 uses
  br label %bb.e, !dbg !84583

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !84584
  %i.n = load ptr, ptr %i.m, align 8, !dbg !84584, !alias.scope !84557, !noalias !84558, !noundef !3508
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !84585
  %i.p = load i64, ptr %i.o, align 8, !dbg !84585, !alias.scope !84557, !noalias !84558, !noundef !3508
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.sroa.55.0.copyload, i64 %i.f, !dbg !84586 ; 3 uses
  store ptr %i.h, ptr %i.q, align 8, !dbg !84587, !noalias !84561
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !84587
  store ptr %i.n, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !dbg !84587, !noalias !84561
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !84587
  store i64 %i.p, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !dbg !84587, !noalias !84561
  %i.r = add i64 %i.f, 1, !dbg !84588             ; 2 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 1, !dbg !84589 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.e, !dbg !84590
  br i1 %i.t, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1F_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4d_3VecBQ_E14extend_trustedINtNtB2x_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.c, !dbg !84590

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1F_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4d_3VecBQ_E14extend_trustedINtNtB2x_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.r, %bb.e ], !dbg !84591
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !dbg !84591, !noalias !84558
  ret void, !dbg !84592
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4callB1s_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3t_3VecB1s_E14extend_trustedBP_E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !84593 {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8, !dbg !84654 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !84654
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !84654 ; 8 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !84654
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !84654 ; 8 uses
  %.sroa.55.0.copyload8 = ptrtoaddr ptr %.sroa.55.0.copyload to i64, !dbg !84655
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !84655
  %i.a = icmp eq ptr %0, %1, !dbg !84656
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB48_3VecBQ_E14extend_trustedINtNtB2s_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !84657

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !84658
  %i.c = ptrtoint ptr %0 to i64, !dbg !84658      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !84658      ; 4 uses
  %i.e = lshr i64 %i.d, 1, !dbg !84658            ; 7 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !84659
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !84659

vector.memcheck:                                  ; preds = %iter.check
  %i.f = shl i64 %.sroa.4.0.copyload, 1, !dbg !84659
  %i.g = add i64 %i.f, %.sroa.55.0.copyload8, !dbg !84659
  %i.h = sub i64 %i.c, %i.g, !dbg !84659
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !84659
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !84660

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check9 = icmp ult i64 %i.d, 32, !dbg !84659
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph, !dbg !84659

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 5 uses
  %i.i = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [2 x i8], ptr %.sroa.55.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body, !dbg !84659

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !84660 ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !84661 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !84662
  %wide.load = load <8 x i16>, ptr %i.k, align 2, !dbg !84662, !noalias !84647
  %wide.load10 = load <8 x i16>, ptr %i.l, align 2, !dbg !84662, !noalias !84647
  %i.m = getelementptr [2 x i8], ptr %i.j, i64 %index, !dbg !84663 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !84664
  store <8 x i16> %wide.load, ptr %i.m, align 2, !dbg !84664, !noalias !84648
  store <8 x i16> %wide.load10, ptr %i.n, align 2, !dbg !84664, !noalias !84648
  %index.next = add nuw i64 %index, 16, !dbg !84660 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !84665
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !84665, !llvm.loop !84635

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !84665
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB48_3VecBQ_E14extend_trustedINtNtB2s_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !84665

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.p = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !4226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !84660
  %n.vec11 = and i64 %i.e, 9223372036854775804    ; 4 uses
  %i.q = add i64 %.sroa.4.0.copyload, %n.vec11    ; 2 uses
  %i.r = getelementptr [2 x i8], ptr %.sroa.55.0.copyload, i64 %.sroa.4.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ], !dbg !84660 ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index12, !dbg !84661
  %wide.load13 = load <4 x i16>, ptr %i.s, align 2, !dbg !84662, !noalias !84647
  %i.t = getelementptr [2 x i8], ptr %i.r, i64 %index12, !dbg !84663
  store <4 x i16> %wide.load13, ptr %i.t, align 2, !dbg !84664, !noalias !84648
  %index.next14 = add nuw i64 %index12, 4, !dbg !84660 ; 2 uses
  %i.u = icmp eq i64 %index.next14, %n.vec11, !dbg !84665
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !84665, !llvm.loop !84636

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n15 = icmp eq i64 %i.e, %n.vec11, !dbg !84665
  br i1 %cmp.n15, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB48_3VecBQ_E14extend_trustedINtNtB2s_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !84665

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %iter.check ], [ %.sroa.4.0.copyload, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !84665        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !84665
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !84665

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.v = phi i64 [ %i.y, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !84661 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.z, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !84660 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !84661
  %.val16.i.prol = load i16, ptr %i.w, align 2, !dbg !84662, !noalias !84647, !noundef !3508
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.sroa.55.0.copyload, i64 %i.v, !dbg !84663
  store i16 %.val16.i.prol, ptr %i.x, align 2, !dbg !84664, !noalias !84648
  %i.y = add i64 %i.v, 1, !dbg !84666             ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !84667 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !84665 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !84665
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !84665, !llvm.loop !84641

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.z, %vec.epilog.scalar.ph.prol ]
  %i.aa = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !84665
  %i.ab = icmp ugt i64 %i.aa, -4, !dbg !84665
  br i1 %i.ab, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB48_3VecBQ_E14extend_trustedINtNtB2s_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !84665

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ac = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !84661 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !84660 ; 5 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !84661
  %.val16.i = load i16, ptr %i.ad, align 2, !dbg !84662, !noalias !84647, !noundef !3508
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !84663
  store i16 %.val16.i, ptr %i.ae, align 2, !dbg !84664, !noalias !84648
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !84661
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2, !dbg !84661
  %.val16.i.1 = load i16, ptr %i.ag, align 2, !dbg !84662, !noalias !84647, !noundef !3508
  %i.ah = getelementptr [2 x i8], ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !84663
  %i.ai = getelementptr i8, ptr %i.ah, i64 2, !dbg !84663
  store i16 %.val16.i.1, ptr %i.ai, align 2, !dbg !84664, !noalias !84648
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !84661
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4, !dbg !84661
  %.val16.i.2 = load i16, ptr %i.ak, align 2, !dbg !84662, !noalias !84647, !noundef !3508
  %i.al = getelementptr [2 x i8], ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !84663
  %i.am = getelementptr i8, ptr %i.al, i64 4, !dbg !84663
  store i16 %.val16.i.2, ptr %i.am, align 2, !dbg !84664, !noalias !84648
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !84661
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 6, !dbg !84661
  %.val16.i.3 = load i16, ptr %i.ao, align 2, !dbg !84662, !noalias !84647, !noundef !3508
  %i.ap = getelementptr [2 x i8], ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !84663
  %i.aq = getelementptr i8, ptr %i.ap, i64 6, !dbg !84663
  store i16 %.val16.i.3, ptr %i.aq, align 2, !dbg !84664, !noalias !84648
  %i.ar = add i64 %i.ac, 4, !dbg !84666           ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4, !dbg !84667 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.e, !dbg !84665
  br i1 %i.at, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB48_3VecBQ_E14extend_trustedINtNtB2s_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !84665, !llvm.loop !84642

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB48_3VecBQ_E14extend_trustedINtNtB2s_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ar, %vec.epilog.scalar.ph ], !dbg !84668
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !dbg !84668, !noalias !84647
  ret void, !dbg !84669
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VecaE14extend_trustedBP_E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !84670 {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8, !dbg !84734 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !84734
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !84734 ; 8 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !84734
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !84734 ; 8 uses
  %.sroa.55.0.copyload8 = ptrtoaddr ptr %.sroa.55.0.copyload to i64, !dbg !84735
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !84735
  %i.a = icmp eq ptr %0, %1, !dbg !84736
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaauNvYaNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecaE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !84737

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !84738      ; 3 uses
  %i.c = ptrtoint ptr %0 to i64, !dbg !84738      ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !84738      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !84739
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !84739

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.4.0.copyload, %.sroa.55.0.copyload8, !dbg !84739
  %i.f = sub i64 %i.c, %i.e, !dbg !84739
  %diff.check = icmp ugt i64 %i.f, -32, !dbg !84739
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !84740

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check9 = icmp ult i64 %i.d, 32, !dbg !84739
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph, !dbg !84739

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.55.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body, !dbg !84739

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !84740 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !84741 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !84742
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !dbg !84742, !alias.scope !84726, !noalias !84727
  %wide.load10 = load <16 x i8>, ptr %i.k, align 1, !dbg !84742, !alias.scope !84726, !noalias !84727
  %i.l = getelementptr i8, ptr %i.i, i64 %index, !dbg !84743 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !84744
  store <16 x i8> %wide.load, ptr %i.l, align 1, !dbg !84744, !noalias !84728
  store <16 x i8> %wide.load10, ptr %i.m, align 1, !dbg !84744, !noalias !84728
  %index.next = add nuw i64 %index, 32, !dbg !84740 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !84745
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !84745, !llvm.loop !84714

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !84745
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaauNvYaNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecaE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !84745

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !4227

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !84740
  %n.vec11 = and i64 %i.d, -4                     ; 4 uses
  %i.o = add i64 %.sroa.4.0.copyload, %n.vec11    ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.55.0.copyload, i64 %.sroa.4.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ], !dbg !84740 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index12, !dbg !84741
  %wide.load13 = load <4 x i8>, ptr %i.q, align 1, !dbg !84742, !alias.scope !84726, !noalias !84727
  %i.r = getelementptr i8, ptr %i.p, i64 %index12, !dbg !84743
  store <4 x i8> %wide.load13, ptr %i.r, align 1, !dbg !84744, !noalias !84728
  %index.next14 = add nuw i64 %index12, 4, !dbg !84740 ; 2 uses
  %i.s = icmp eq i64 %index.next14, %n.vec11, !dbg !84745
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !84745, !llvm.loop !84715

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n15 = icmp eq i64 %i.d, %n.vec11, !dbg !84745
  br i1 %cmp.n15, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaauNvYaNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecaE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !84745

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %iter.check ], [ %.sroa.4.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %i.t = sub i64 %i.b, %i.c, !dbg !84745
  %xtraiter = and i64 %i.t, 3, !dbg !84745        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !84745
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !84745

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.u = phi i64 [ %i.x, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !84741 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.y, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !84740 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.prol, !dbg !84741
  %.val16.i.prol = load i8, ptr %i.v, align 1, !dbg !84742, !alias.scope !84726, !noalias !84727, !noundef !3508
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.55.0.copyload, i64 %i.u, !dbg !84743
  store i8 %.val16.i.prol, ptr %i.w, align 1, !dbg !84744, !noalias !84728
  %i.x = add i64 %i.u, 1, !dbg !84746             ; 3 uses
  %i.y = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !84747 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !84745 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !84745
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !84745, !llvm.loop !84720

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.x, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.x, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %i.z = sub i64 %.sroa.01.0.i.ph, %i.b, !dbg !84745
  %i.aa = add i64 %i.z, %i.c, !dbg !84745
  %i.ab = icmp ugt i64 %i.aa, -4, !dbg !84745
  br i1 %i.ab, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaauNvYaNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecaE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !84745

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ac = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !84741 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !84740 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !84741
  %.val16.i = load i8, ptr %i.ad, align 1, !dbg !84742, !alias.scope !84726, !noalias !84727, !noundef !3508
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !84743
  store i8 %.val16.i, ptr %i.ae, align 1, !dbg !84744, !noalias !84728
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !84741
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1, !dbg !84741
  %.val16.i.1 = load i8, ptr %i.ag, align 1, !dbg !84742, !alias.scope !84726, !noalias !84727, !noundef !3508
  %i.ah = getelementptr i8, ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !84743
  %i.ai = getelementptr i8, ptr %i.ah, i64 1, !dbg !84743
  store i8 %.val16.i.1, ptr %i.ai, align 1, !dbg !84744, !noalias !84728
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !84741
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2, !dbg !84741
  %.val16.i.2 = load i8, ptr %i.ak, align 1, !dbg !84742, !alias.scope !84726, !noalias !84727, !noundef !3508
  %i.al = getelementptr i8, ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !84743
  %i.am = getelementptr i8, ptr %i.al, i64 2, !dbg !84743
  store i8 %.val16.i.2, ptr %i.am, align 1, !dbg !84744, !noalias !84728
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !84741
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 3, !dbg !84741
  %.val16.i.3 = load i8, ptr %i.ao, align 1, !dbg !84742, !alias.scope !84726, !noalias !84727, !noundef !3508
  %i.ap = getelementptr i8, ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !84743
  %i.aq = getelementptr i8, ptr %i.ap, i64 3, !dbg !84743
  store i8 %.val16.i.3, ptr %i.aq, align 1, !dbg !84744, !noalias !84728
  %i.ar = add i64 %i.ac, 4, !dbg !84746           ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4, !dbg !84747 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.d, !dbg !84745
  br i1 %i.at, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaauNvYaNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecaE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !84745, !llvm.loop !84721

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRaauNvYaNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecaE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ar, %vec.epilog.scalar.ph ], !dbg !84748
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !dbg !84748, !noalias !84727
  ret void, !dbg !84749
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VecdE14extend_trustedBP_E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !84750 {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8, !dbg !84813 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !84813
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !84813 ; 6 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !84813
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !84813 ; 7 uses
  %.sroa.55.0.copyload8 = ptrtoaddr ptr %.sroa.55.0.copyload to i64, !dbg !84814
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !84814
  %i.a = icmp eq ptr %0, %1, !dbg !84815
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNvYdNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecdE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !84816

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !84817
  %i.c = ptrtoint ptr %0 to i64, !dbg !84817      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !84817      ; 2 uses
  %i.e = lshr i64 %i.d, 3, !dbg !84817            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 80, !dbg !84818
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !84818

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.4.0.copyload, 3, !dbg !84818
  %i.g = add i64 %i.f, %.sroa.55.0.copyload8, !dbg !84818
  %i.h = sub i64 %i.c, %i.g, !dbg !84818
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !84818
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !84819

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693948      ; 4 uses
  %i.i = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %.sroa.55.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body, !dbg !84819

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !84819 ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !84820 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !84821
  %wide.load = load <2 x double>, ptr %i.k, align 8, !dbg !84821, !alias.scope !84805, !noalias !84806
  %wide.load9 = load <2 x double>, ptr %i.l, align 8, !dbg !84821, !alias.scope !84805, !noalias !84806
  %i.m = getelementptr [8 x i8], ptr %i.j, i64 %index, !dbg !84822 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !84823
  store <2 x double> %wide.load, ptr %i.m, align 8, !dbg !84823, !noalias !84807
  store <2 x double> %wide.load9, ptr %i.n, align 8, !dbg !84823, !noalias !84807
  %index.next = add nuw i64 %index, 4, !dbg !84819 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !84824
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !84824, !llvm.loop !84794

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !84824
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNvYdNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecdE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !84824

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !84824        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !84824
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !84824

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !84820 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !84819 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !84820
  %.val16.i.prol = load double, ptr %i.q, align 8, !dbg !84821, !alias.scope !84805, !noalias !84806, !noundef !3508
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.55.0.copyload, i64 %i.p, !dbg !84822
  store double %.val16.i.prol, ptr %i.r, align 8, !dbg !84823, !noalias !84807
  %i.s = add i64 %i.p, 1, !dbg !84825             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !84826 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !84824 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !84824
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !84824, !llvm.loop !84799

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !84824
  %i.v = icmp ugt i64 %i.u, -4, !dbg !84824
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNvYdNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecdE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !84824

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.al, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !84820 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.am, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !84819 ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !84820
  %.val16.i = load double, ptr %i.x, align 8, !dbg !84821, !alias.scope !84805, !noalias !84806, !noundef !3508
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.55.0.copyload, i64 %i.w, !dbg !84822
  store double %.val16.i, ptr %i.y, align 8, !dbg !84823, !noalias !84807
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !84820
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !84820
  %.val16.i.1 = load double, ptr %i.aa, align 8, !dbg !84821, !alias.scope !84805, !noalias !84806, !noundef !3508
  %i.ab = getelementptr [8 x i8], ptr %.sroa.55.0.copyload, i64 %i.w, !dbg !84822
  %i.ac = getelementptr i8, ptr %i.ab, i64 8, !dbg !84822
  store double %.val16.i.1, ptr %i.ac, align 8, !dbg !84823, !noalias !84807
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !84820
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !84820
  %.val16.i.2 = load double, ptr %i.ae, align 8, !dbg !84821, !alias.scope !84805, !noalias !84806, !noundef !3508
  %i.af = getelementptr [8 x i8], ptr %.sroa.55.0.copyload, i64 %i.w, !dbg !84822
  %i.ag = getelementptr i8, ptr %i.af, i64 16, !dbg !84822
  store double %.val16.i.2, ptr %i.ag, align 8, !dbg !84823, !noalias !84807
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !84820
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !84820
  %.val16.i.3 = load double, ptr %i.ai, align 8, !dbg !84821, !alias.scope !84805, !noalias !84806, !noundef !3508
  %i.aj = getelementptr [8 x i8], ptr %.sroa.55.0.copyload, i64 %i.w, !dbg !84822
  %i.ak = getelementptr i8, ptr %i.aj, i64 24, !dbg !84822
  store double %.val16.i.3, ptr %i.ak, align 8, !dbg !84823, !noalias !84807
  %i.al = add i64 %i.w, 4, !dbg !84825            ; 2 uses
  %i.am = add nuw i64 %.sroa.01.0.i, 4, !dbg !84826 ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.e, !dbg !84824
  br i1 %i.an, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNvYdNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecdE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !84824, !llvm.loop !84800

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNvYdNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecdE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.al, %scalar.ph ], !dbg !84827
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !dbg !84827, !noalias !84806
  ret void, !dbg !84828
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VecfE14extend_trustedBP_E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !84829 {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8, !dbg !84892 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !84892
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !84892 ; 6 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !84892
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !84892 ; 7 uses
  %.sroa.55.0.copyload8 = ptrtoaddr ptr %.sroa.55.0.copyload to i64, !dbg !84893
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !84893
  %i.a = icmp eq ptr %0, %1, !dbg !84894
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNvYfNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecfE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !84895

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !84896
  %i.c = ptrtoint ptr %0 to i64, !dbg !84896      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !84896      ; 2 uses
  %i.e = lshr i64 %i.d, 2, !dbg !84896            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 48, !dbg !84897
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !84897

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.4.0.copyload, 2, !dbg !84897
  %i.g = add i64 %i.f, %.sroa.55.0.copyload8, !dbg !84897
  %i.h = sub i64 %i.c, %i.g, !dbg !84897
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !84897
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !84898

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387896      ; 4 uses
  %i.i = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.55.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body, !dbg !84898

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !84898 ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !84899 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !84900
  %wide.load = load <4 x float>, ptr %i.k, align 4, !dbg !84900, !alias.scope !84884, !noalias !84885
  %wide.load9 = load <4 x float>, ptr %i.l, align 4, !dbg !84900, !alias.scope !84884, !noalias !84885
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %index, !dbg !84901 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !84902
  store <4 x float> %wide.load, ptr %i.m, align 4, !dbg !84902, !noalias !84886
  store <4 x float> %wide.load9, ptr %i.n, align 4, !dbg !84902, !noalias !84886
  %index.next = add nuw i64 %index, 8, !dbg !84898 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !84903
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !84903, !llvm.loop !84873

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !84903
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNvYfNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecfE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !84903

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !84903        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !84903
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !84903

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !84899 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !84898 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !84899
  %.val16.i.prol = load float, ptr %i.q, align 4, !dbg !84900, !alias.scope !84884, !noalias !84885, !noundef !3508
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.55.0.copyload, i64 %i.p, !dbg !84901
  store float %.val16.i.prol, ptr %i.r, align 4, !dbg !84902, !noalias !84886
  %i.s = add i64 %i.p, 1, !dbg !84904             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !84905 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !84903 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !84903
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !84903, !llvm.loop !84878

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !84903
  %i.v = icmp ugt i64 %i.u, -4, !dbg !84903
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNvYfNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecfE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !84903

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.al, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !84899 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.am, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !84898 ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !84899
  %.val16.i = load float, ptr %i.x, align 4, !dbg !84900, !alias.scope !84884, !noalias !84885, !noundef !3508
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.55.0.copyload, i64 %i.w, !dbg !84901
  store float %.val16.i, ptr %i.y, align 4, !dbg !84902, !noalias !84886
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !84899
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4, !dbg !84899
  %.val16.i.1 = load float, ptr %i.aa, align 4, !dbg !84900, !alias.scope !84884, !noalias !84885, !noundef !3508
  %i.ab = getelementptr [4 x i8], ptr %.sroa.55.0.copyload, i64 %i.w, !dbg !84901
  %i.ac = getelementptr i8, ptr %i.ab, i64 4, !dbg !84901
  store float %.val16.i.1, ptr %i.ac, align 4, !dbg !84902, !noalias !84886
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !84899
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !84899
  %.val16.i.2 = load float, ptr %i.ae, align 4, !dbg !84900, !alias.scope !84884, !noalias !84885, !noundef !3508
  %i.af = getelementptr [4 x i8], ptr %.sroa.55.0.copyload, i64 %i.w, !dbg !84901
  %i.ag = getelementptr i8, ptr %i.af, i64 8, !dbg !84901
  store float %.val16.i.2, ptr %i.ag, align 4, !dbg !84902, !noalias !84886
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !84899
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12, !dbg !84899
  %.val16.i.3 = load float, ptr %i.ai, align 4, !dbg !84900, !alias.scope !84884, !noalias !84885, !noundef !3508
  %i.aj = getelementptr [4 x i8], ptr %.sroa.55.0.copyload, i64 %i.w, !dbg !84901
  %i.ak = getelementptr i8, ptr %i.aj, i64 12, !dbg !84901
  store float %.val16.i.3, ptr %i.ak, align 4, !dbg !84902, !noalias !84886
  %i.al = add i64 %i.w, 4, !dbg !84904            ; 2 uses
  %i.am = add nuw i64 %.sroa.01.0.i, 4, !dbg !84905 ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.e, !dbg !84903
  br i1 %i.an, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNvYfNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecfE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !84903, !llvm.loop !84879

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNvYfNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecfE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.al, %scalar.ph ], !dbg !84906
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !dbg !84906, !noalias !84885
  ret void, !dbg !84907
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VechE14extend_trustedBP_E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !84908 {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8, !dbg !84972 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !84972
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !84972 ; 8 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !84972
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !84972 ; 8 uses
  %.sroa.55.0.copyload8 = ptrtoaddr ptr %.sroa.55.0.copyload to i64, !dbg !84973
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !84973
  %i.a = icmp eq ptr %0, %1, !dbg !84974
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VechE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !84975

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !84976      ; 3 uses
  %i.c = ptrtoint ptr %0 to i64, !dbg !84976      ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !84976      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !84977
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !84977

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.4.0.copyload, %.sroa.55.0.copyload8, !dbg !84977
  %i.f = sub i64 %i.c, %i.e, !dbg !84977
  %diff.check = icmp ugt i64 %i.f, -32, !dbg !84977
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !84978

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check9 = icmp ult i64 %i.d, 32, !dbg !84977
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph, !dbg !84977

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.55.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body, !dbg !84977

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !84978 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !84979 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !84980
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !dbg !84980, !alias.scope !84964, !noalias !84965
  %wide.load10 = load <16 x i8>, ptr %i.k, align 1, !dbg !84980, !alias.scope !84964, !noalias !84965
  %i.l = getelementptr i8, ptr %i.i, i64 %index, !dbg !84981 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !84982
  store <16 x i8> %wide.load, ptr %i.l, align 1, !dbg !84982, !noalias !84966
  store <16 x i8> %wide.load10, ptr %i.m, align 1, !dbg !84982, !noalias !84966
  %index.next = add nuw i64 %index, 32, !dbg !84978 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !84983
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !84983, !llvm.loop !84952

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !84983
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VechE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !84983

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !4227

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !84978
  %n.vec11 = and i64 %i.d, -4                     ; 4 uses
  %i.o = add i64 %.sroa.4.0.copyload, %n.vec11    ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.55.0.copyload, i64 %.sroa.4.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ], !dbg !84978 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index12, !dbg !84979
  %wide.load13 = load <4 x i8>, ptr %i.q, align 1, !dbg !84980, !alias.scope !84964, !noalias !84965
  %i.r = getelementptr i8, ptr %i.p, i64 %index12, !dbg !84981
  store <4 x i8> %wide.load13, ptr %i.r, align 1, !dbg !84982, !noalias !84966
  %index.next14 = add nuw i64 %index12, 4, !dbg !84978 ; 2 uses
  %i.s = icmp eq i64 %index.next14, %n.vec11, !dbg !84983
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !84983, !llvm.loop !84953

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n15 = icmp eq i64 %i.d, %n.vec11, !dbg !84983
  br i1 %cmp.n15, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VechE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !84983

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %iter.check ], [ %.sroa.4.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %i.t = sub i64 %i.b, %i.c, !dbg !84983
  %xtraiter = and i64 %i.t, 3, !dbg !84983        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !84983
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !84983

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.u = phi i64 [ %i.x, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !84979 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.y, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !84978 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.prol, !dbg !84979
  %.val16.i.prol = load i8, ptr %i.v, align 1, !dbg !84980, !alias.scope !84964, !noalias !84965, !noundef !3508
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.55.0.copyload, i64 %i.u, !dbg !84981
  store i8 %.val16.i.prol, ptr %i.w, align 1, !dbg !84982, !noalias !84966
  %i.x = add i64 %i.u, 1, !dbg !84984             ; 3 uses
  %i.y = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !84985 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !84983 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !84983
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !84983, !llvm.loop !84958

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.x, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.x, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %i.z = sub i64 %.sroa.01.0.i.ph, %i.b, !dbg !84983
  %i.aa = add i64 %i.z, %i.c, !dbg !84983
  %i.ab = icmp ugt i64 %i.aa, -4, !dbg !84983
  br i1 %i.ab, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VechE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !84983

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ac = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !84979 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !84978 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !84979
  %.val16.i = load i8, ptr %i.ad, align 1, !dbg !84980, !alias.scope !84964, !noalias !84965, !noundef !3508
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !84981
  store i8 %.val16.i, ptr %i.ae, align 1, !dbg !84982, !noalias !84966
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !84979
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1, !dbg !84979
  %.val16.i.1 = load i8, ptr %i.ag, align 1, !dbg !84980, !alias.scope !84964, !noalias !84965, !noundef !3508
  %i.ah = getelementptr i8, ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !84981
  %i.ai = getelementptr i8, ptr %i.ah, i64 1, !dbg !84981
  store i8 %.val16.i.1, ptr %i.ai, align 1, !dbg !84982, !noalias !84966
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !84979
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2, !dbg !84979
  %.val16.i.2 = load i8, ptr %i.ak, align 1, !dbg !84980, !alias.scope !84964, !noalias !84965, !noundef !3508
  %i.al = getelementptr i8, ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !84981
  %i.am = getelementptr i8, ptr %i.al, i64 2, !dbg !84981
  store i8 %.val16.i.2, ptr %i.am, align 1, !dbg !84982, !noalias !84966
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !84979
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 3, !dbg !84979
  %.val16.i.3 = load i8, ptr %i.ao, align 1, !dbg !84980, !alias.scope !84964, !noalias !84965, !noundef !3508
  %i.ap = getelementptr i8, ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !84981
  %i.aq = getelementptr i8, ptr %i.ap, i64 3, !dbg !84981
  store i8 %.val16.i.3, ptr %i.aq, align 1, !dbg !84982, !noalias !84966
  %i.ar = add i64 %i.ac, 4, !dbg !84984           ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4, !dbg !84985 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.d, !dbg !84983
  br i1 %i.at, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VechE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !84983, !llvm.loop !84959

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNvYhNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VechE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ar, %vec.epilog.scalar.ph ], !dbg !84986
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !dbg !84986, !noalias !84965
  ret void, !dbg !84987
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterlEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VeclE14extend_trustedBP_E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !84988 {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8, !dbg !85051 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !85051
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !85051 ; 6 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !85051
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !85051 ; 7 uses
  %.sroa.55.0.copyload8 = ptrtoaddr ptr %.sroa.55.0.copyload to i64, !dbg !85052
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !85052
  %i.a = icmp eq ptr %0, %1, !dbg !85053
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlluNvYlNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VeclE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !85054

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !85055
  %i.c = ptrtoint ptr %0 to i64, !dbg !85055      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !85055      ; 2 uses
  %i.e = lshr i64 %i.d, 2, !dbg !85055            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 48, !dbg !85056
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !85056

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.4.0.copyload, 2, !dbg !85056
  %i.g = add i64 %i.f, %.sroa.55.0.copyload8, !dbg !85056
  %i.h = sub i64 %i.c, %i.g, !dbg !85056
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !85056
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !85057

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387896      ; 4 uses
  %i.i = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.55.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body, !dbg !85057

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !85057 ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !85058 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !85059
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !dbg !85059, !alias.scope !85043, !noalias !85044
  %wide.load9 = load <4 x i32>, ptr %i.l, align 4, !dbg !85059, !alias.scope !85043, !noalias !85044
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %index, !dbg !85060 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !85061
  store <4 x i32> %wide.load, ptr %i.m, align 4, !dbg !85061, !noalias !85045
  store <4 x i32> %wide.load9, ptr %i.n, align 4, !dbg !85061, !noalias !85045
  %index.next = add nuw i64 %index, 8, !dbg !85057 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !85062
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !85062, !llvm.loop !85032

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !85062
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlluNvYlNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VeclE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !85062

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !85062        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !85062
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !85062

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !85058 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !85057 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !85058
  %.val16.i.prol = load i32, ptr %i.q, align 4, !dbg !85059, !alias.scope !85043, !noalias !85044, !noundef !3508
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.55.0.copyload, i64 %i.p, !dbg !85060
  store i32 %.val16.i.prol, ptr %i.r, align 4, !dbg !85061, !noalias !85045
  %i.s = add i64 %i.p, 1, !dbg !85063             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !85064 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !85062 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !85062
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !85062, !llvm.loop !85037

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !85062
  %i.v = icmp ugt i64 %i.u, -4, !dbg !85062
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlluNvYlNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VeclE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !85062

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.al, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !85058 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.am, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !85057 ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85058
  %.val16.i = load i32, ptr %i.x, align 4, !dbg !85059, !alias.scope !85043, !noalias !85044, !noundef !3508
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.55.0.copyload, i64 %i.w, !dbg !85060
  store i32 %.val16.i, ptr %i.y, align 4, !dbg !85061, !noalias !85045
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85058
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4, !dbg !85058
  %.val16.i.1 = load i32, ptr %i.aa, align 4, !dbg !85059, !alias.scope !85043, !noalias !85044, !noundef !3508
  %i.ab = getelementptr [4 x i8], ptr %.sroa.55.0.copyload, i64 %i.w, !dbg !85060
  %i.ac = getelementptr i8, ptr %i.ab, i64 4, !dbg !85060
  store i32 %.val16.i.1, ptr %i.ac, align 4, !dbg !85061, !noalias !85045
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85058
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !85058
  %.val16.i.2 = load i32, ptr %i.ae, align 4, !dbg !85059, !alias.scope !85043, !noalias !85044, !noundef !3508
  %i.af = getelementptr [4 x i8], ptr %.sroa.55.0.copyload, i64 %i.w, !dbg !85060
  %i.ag = getelementptr i8, ptr %i.af, i64 8, !dbg !85060
  store i32 %.val16.i.2, ptr %i.ag, align 4, !dbg !85061, !noalias !85045
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85058
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12, !dbg !85058
  %.val16.i.3 = load i32, ptr %i.ai, align 4, !dbg !85059, !alias.scope !85043, !noalias !85044, !noundef !3508
  %i.aj = getelementptr [4 x i8], ptr %.sroa.55.0.copyload, i64 %i.w, !dbg !85060
  %i.ak = getelementptr i8, ptr %i.aj, i64 12, !dbg !85060
  store i32 %.val16.i.3, ptr %i.ak, align 4, !dbg !85061, !noalias !85045
  %i.al = add i64 %i.w, 4, !dbg !85063            ; 2 uses
  %i.am = add nuw i64 %.sroa.01.0.i, 4, !dbg !85064 ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.e, !dbg !85062
  br i1 %i.an, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlluNvYlNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VeclE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !85062, !llvm.loop !85038

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRlluNvYlNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VeclE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.al, %scalar.ph ], !dbg !85065
end_hunk_0
begin_hunk_1_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VecmE14extend_trustedBP_E0E0ECskY9G75ZWc4U_11polars_expr:bb.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IternEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VecnE14extend_trustedBP_E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !85146 {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8, !dbg !85206 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !85206
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !85206 ; 3 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !85206
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !85206 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !85207
  %i.a = icmp eq ptr %0, %1, !dbg !85208
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRnnuNvYnNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecnE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !85209

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !85210
  %i.c = ptrtoint ptr %0 to i64, !dbg !85210
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !85210      ; 3 uses
  %i.e = lshr exact i64 %i.d, 4, !dbg !85210      ; 2 uses
  %i.f = icmp eq i64 %i.d, 16, !dbg !85211
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !85211

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974, !dbg !85211
  br label %bb.c, !dbg !85211

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.4.0.copyload, %.new ], [ %i.n, %bb.c ], !dbg !85212 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ], !dbg !85213 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85212
  %.val16.i = load i128, ptr %i.h, align 16, !dbg !85214, !alias.scope !85198, !noalias !85199, !noundef !3508
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.55.0.copyload, i64 %i.g, !dbg !85215
  store i128 %.val16.i, ptr %i.i, align 16, !dbg !85216, !noalias !85200
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85212
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !85212
  %.val16.i.1 = load i128, ptr %i.k, align 16, !dbg !85214, !alias.scope !85198, !noalias !85199, !noundef !3508
  %i.l = getelementptr [16 x i8], ptr %.sroa.55.0.copyload, i64 %i.g, !dbg !85215
  %i.m = getelementptr i8, ptr %i.l, i64 16, !dbg !85215
  store i128 %.val16.i.1, ptr %i.m, align 16, !dbg !85216, !noalias !85200
  %i.n = add i64 %i.g, 2, !dbg !85217             ; 3 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 2, !dbg !85218 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !85219  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !85219
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRnnuNvYnNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecnE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !85219

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRnnuNvYnNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecnE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.p = and i64 %i.d, 16, !dbg !85219
  %lcmp.mod.not = icmp eq i64 %i.p, 0, !dbg !85219
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRnnuNvYnNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecnE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !85219

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRnnuNvYnNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecnE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ %i.n, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRnnuNvYnNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecnE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRnnuNvYnNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecnE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = trunc i64 %i.e to i1, !dbg !85219
  tail call void @llvm.assume(i1 %lcmp.mod8), !dbg !85219
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !85212
  %.val16.i.epil = load i128, ptr %i.q, align 16, !dbg !85214, !alias.scope !85198, !noalias !85199, !noundef !3508
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.55.0.copyload, i64 %.epil.init, !dbg !85215
  store i128 %.val16.i.epil, ptr %i.r, align 16, !dbg !85216, !noalias !85200
  %i.s = add i64 %.epil.init, 1, !dbg !85217
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRnnuNvYnNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecnE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRnnuNvYnNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecnE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRnnuNvYnNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecnE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.n, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRnnuNvYnNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecnE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %i.s, %.epil.preheader ], !dbg !85220
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !dbg !85220, !noalias !85199
  ret void, !dbg !85221
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IteroEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VecoE14extend_trustedBP_E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !85222 {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8, !dbg !85282 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !85282
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !85282 ; 3 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !85282
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !85282 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !85283
  %i.a = icmp eq ptr %0, %1, !dbg !85284
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRoouNvYoNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecoE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !85285

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !85286
  %i.c = ptrtoint ptr %0 to i64, !dbg !85286
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !85286      ; 3 uses
  %i.e = lshr exact i64 %i.d, 4, !dbg !85286      ; 2 uses
  %i.f = icmp eq i64 %i.d, 16, !dbg !85287
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !85287

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974, !dbg !85287
  br label %bb.c, !dbg !85287

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.4.0.copyload, %.new ], [ %i.n, %bb.c ], !dbg !85288 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ], !dbg !85289 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85288
  %.val16.i = load i128, ptr %i.h, align 16, !dbg !85290, !alias.scope !85274, !noalias !85275, !noundef !3508
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.55.0.copyload, i64 %i.g, !dbg !85291
  store i128 %.val16.i, ptr %i.i, align 16, !dbg !85292, !noalias !85276
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85288
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !85288
  %.val16.i.1 = load i128, ptr %i.k, align 16, !dbg !85290, !alias.scope !85274, !noalias !85275, !noundef !3508
  %i.l = getelementptr [16 x i8], ptr %.sroa.55.0.copyload, i64 %i.g, !dbg !85291
  %i.m = getelementptr i8, ptr %i.l, i64 16, !dbg !85291
  store i128 %.val16.i.1, ptr %i.m, align 16, !dbg !85292, !noalias !85276
  %i.n = add i64 %i.g, 2, !dbg !85293             ; 3 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 2, !dbg !85294 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !85295  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !85295
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRoouNvYoNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecoE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, label %bb.c, !dbg !85295

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRoouNvYoNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecoE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.p = and i64 %i.d, 16, !dbg !85295
  %lcmp.mod.not = icmp eq i64 %i.p, 0, !dbg !85295
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRoouNvYoNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecoE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %.epil.preheader, !dbg !85295

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRoouNvYoNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecoE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ %i.n, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRoouNvYoNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecoE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRoouNvYoNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecoE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ]
  %lcmp.mod8 = trunc i64 %i.e to i1, !dbg !85295
  tail call void @llvm.assume(i1 %lcmp.mod8), !dbg !85295
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !85288
  %.val16.i.epil = load i128, ptr %i.q, align 16, !dbg !85290, !alias.scope !85274, !noalias !85275, !noundef !3508
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.55.0.copyload, i64 %.epil.init, !dbg !85291
  store i128 %.val16.i.epil, ptr %i.r, align 16, !dbg !85292, !noalias !85276
  %i.s = add i64 %.epil.init, 1, !dbg !85293
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRoouNvYoNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecoE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRoouNvYoNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecoE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRoouNvYoNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecoE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.n, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteroENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRoouNvYoNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calloNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecoE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit.loopexit.unr-lcssa ], [ %i.s, %.epil.preheader ], !dbg !85296
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !dbg !85296, !noalias !85275
  ret void, !dbg !85297
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VecsE14extend_trustedBP_E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !85298 {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8, !dbg !85362 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !85362
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !85362 ; 8 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !85362
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !85362 ; 8 uses
  %.sroa.55.0.copyload8 = ptrtoaddr ptr %.sroa.55.0.copyload to i64, !dbg !85363
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !85363
  %i.a = icmp eq ptr %0, %1, !dbg !85364
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRssuNvYsNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecsE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !85365

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !85366
  %i.c = ptrtoint ptr %0 to i64, !dbg !85366      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !85366      ; 4 uses
  %i.e = lshr i64 %i.d, 1, !dbg !85366            ; 7 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !85367
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !85367

vector.memcheck:                                  ; preds = %iter.check
  %i.f = shl i64 %.sroa.4.0.copyload, 1, !dbg !85367
  %i.g = add i64 %i.f, %.sroa.55.0.copyload8, !dbg !85367
  %i.h = sub i64 %i.c, %i.g, !dbg !85367
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !85367
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !85368

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check9 = icmp ult i64 %i.d, 32, !dbg !85367
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph, !dbg !85367

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 5 uses
  %i.i = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [2 x i8], ptr %.sroa.55.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body, !dbg !85367

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !85368 ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !85369 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !85370
  %wide.load = load <8 x i16>, ptr %i.k, align 2, !dbg !85370, !alias.scope !85354, !noalias !85355
  %wide.load10 = load <8 x i16>, ptr %i.l, align 2, !dbg !85370, !alias.scope !85354, !noalias !85355
  %i.m = getelementptr [2 x i8], ptr %i.j, i64 %index, !dbg !85371 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !85372
  store <8 x i16> %wide.load, ptr %i.m, align 2, !dbg !85372, !noalias !85356
  store <8 x i16> %wide.load10, ptr %i.n, align 2, !dbg !85372, !noalias !85356
  %index.next = add nuw i64 %index, 16, !dbg !85368 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !85373
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !85373, !llvm.loop !85342

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !85373
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRssuNvYsNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecsE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !85373

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.p = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !4226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !85368
  %n.vec11 = and i64 %i.e, 9223372036854775804    ; 4 uses
  %i.q = add i64 %.sroa.4.0.copyload, %n.vec11    ; 2 uses
  %i.r = getelementptr [2 x i8], ptr %.sroa.55.0.copyload, i64 %.sroa.4.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ], !dbg !85368 ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index12, !dbg !85369
  %wide.load13 = load <4 x i16>, ptr %i.s, align 2, !dbg !85370, !alias.scope !85354, !noalias !85355
  %i.t = getelementptr [2 x i8], ptr %i.r, i64 %index12, !dbg !85371
  store <4 x i16> %wide.load13, ptr %i.t, align 2, !dbg !85372, !noalias !85356
  %index.next14 = add nuw i64 %index12, 4, !dbg !85368 ; 2 uses
  %i.u = icmp eq i64 %index.next14, %n.vec11, !dbg !85373
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !85373, !llvm.loop !85343

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n15 = icmp eq i64 %i.e, %n.vec11, !dbg !85373
  br i1 %cmp.n15, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRssuNvYsNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecsE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !85373

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %iter.check ], [ %.sroa.4.0.copyload, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !85373        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !85373
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !85373

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.v = phi i64 [ %i.y, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !85369 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.z, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !85368 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !85369
  %.val16.i.prol = load i16, ptr %i.w, align 2, !dbg !85370, !alias.scope !85354, !noalias !85355, !noundef !3508
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.sroa.55.0.copyload, i64 %i.v, !dbg !85371
  store i16 %.val16.i.prol, ptr %i.x, align 2, !dbg !85372, !noalias !85356
  %i.y = add i64 %i.v, 1, !dbg !85374             ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !85375 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !85373 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !85373
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !85373, !llvm.loop !85348

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.z, %vec.epilog.scalar.ph.prol ]
  %i.aa = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !85373
  %i.ab = icmp ugt i64 %i.aa, -4, !dbg !85373
  br i1 %i.ab, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRssuNvYsNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecsE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !85373

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ac = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !85369 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !85368 ; 5 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85369
  %.val16.i = load i16, ptr %i.ad, align 2, !dbg !85370, !alias.scope !85354, !noalias !85355, !noundef !3508
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !85371
  store i16 %.val16.i, ptr %i.ae, align 2, !dbg !85372, !noalias !85356
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85369
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2, !dbg !85369
  %.val16.i.1 = load i16, ptr %i.ag, align 2, !dbg !85370, !alias.scope !85354, !noalias !85355, !noundef !3508
  %i.ah = getelementptr [2 x i8], ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !85371
  %i.ai = getelementptr i8, ptr %i.ah, i64 2, !dbg !85371
  store i16 %.val16.i.1, ptr %i.ai, align 2, !dbg !85372, !noalias !85356
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85369
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4, !dbg !85369
  %.val16.i.2 = load i16, ptr %i.ak, align 2, !dbg !85370, !alias.scope !85354, !noalias !85355, !noundef !3508
  %i.al = getelementptr [2 x i8], ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !85371
  %i.am = getelementptr i8, ptr %i.al, i64 4, !dbg !85371
  store i16 %.val16.i.2, ptr %i.am, align 2, !dbg !85372, !noalias !85356
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85369
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 6, !dbg !85369
  %.val16.i.3 = load i16, ptr %i.ao, align 2, !dbg !85370, !alias.scope !85354, !noalias !85355, !noundef !3508
  %i.ap = getelementptr [2 x i8], ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !85371
  %i.aq = getelementptr i8, ptr %i.ap, i64 6, !dbg !85371
  store i16 %.val16.i.3, ptr %i.aq, align 2, !dbg !85372, !noalias !85356
  %i.ar = add i64 %i.ac, 4, !dbg !85374           ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4, !dbg !85375 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.e, !dbg !85373
  br i1 %i.at, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRssuNvYsNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecsE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !85373, !llvm.loop !85349

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRssuNvYsNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecsE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ar, %vec.epilog.scalar.ph ], !dbg !85376
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !dbg !85376, !noalias !85355
  ret void, !dbg !85377
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VectE14extend_trustedBP_E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !85378 {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8, !dbg !85442 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !85442
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !85442 ; 8 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !85442
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !85442 ; 8 uses
  %.sroa.55.0.copyload8 = ptrtoaddr ptr %.sroa.55.0.copyload to i64, !dbg !85443
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !85443
  %i.a = icmp eq ptr %0, %1, !dbg !85444
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRttuNvYtNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VectE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %iter.check, !dbg !85445

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !85446
  %i.c = ptrtoint ptr %0 to i64, !dbg !85446      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !85446      ; 4 uses
  %i.e = lshr i64 %i.d, 1, !dbg !85446            ; 7 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !85447
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !85447

vector.memcheck:                                  ; preds = %iter.check
  %i.f = shl i64 %.sroa.4.0.copyload, 1, !dbg !85447
  %i.g = add i64 %i.f, %.sroa.55.0.copyload8, !dbg !85447
  %i.h = sub i64 %i.c, %i.g, !dbg !85447
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !85447
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !85448

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check9 = icmp ult i64 %i.d, 32, !dbg !85447
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph, !dbg !85447

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 5 uses
  %i.i = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [2 x i8], ptr %.sroa.55.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body, !dbg !85447

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !85448 ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !85449 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !85450
  %wide.load = load <8 x i16>, ptr %i.k, align 2, !dbg !85450, !alias.scope !85434, !noalias !85435
  %wide.load10 = load <8 x i16>, ptr %i.l, align 2, !dbg !85450, !alias.scope !85434, !noalias !85435
  %i.m = getelementptr [2 x i8], ptr %i.j, i64 %index, !dbg !85451 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !85452
  store <8 x i16> %wide.load, ptr %i.m, align 2, !dbg !85452, !noalias !85436
  store <8 x i16> %wide.load10, ptr %i.n, align 2, !dbg !85452, !noalias !85436
  %index.next = add nuw i64 %index, 16, !dbg !85448 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !85453
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !85453, !llvm.loop !85422

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !85453
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRttuNvYtNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VectE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.iter.check, !dbg !85453

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.p = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !4226

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ], !dbg !85448
  %n.vec11 = and i64 %i.e, 9223372036854775804    ; 4 uses
  %i.q = add i64 %.sroa.4.0.copyload, %n.vec11    ; 2 uses
  %i.r = getelementptr [2 x i8], ptr %.sroa.55.0.copyload, i64 %.sroa.4.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index12 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next14, %vec.epilog.vector.body ], !dbg !85448 ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index12, !dbg !85449
  %wide.load13 = load <4 x i16>, ptr %i.s, align 2, !dbg !85450, !alias.scope !85434, !noalias !85435
  %i.t = getelementptr [2 x i8], ptr %i.r, i64 %index12, !dbg !85451
  store <4 x i16> %wide.load13, ptr %i.t, align 2, !dbg !85452, !noalias !85436
  %index.next14 = add nuw i64 %index12, 4, !dbg !85448 ; 2 uses
  %i.u = icmp eq i64 %index.next14, %n.vec11, !dbg !85453
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !85453, !llvm.loop !85423

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n15 = icmp eq i64 %i.e, %n.vec11, !dbg !85453
  br i1 %cmp.n15, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRttuNvYtNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VectE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph.preheader, !dbg !85453

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %iter.check ], [ %.sroa.4.0.copyload, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !85453        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !85453
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !85453

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.v = phi i64 [ %i.y, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !85449 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.z, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !85448 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !85449
  %.val16.i.prol = load i16, ptr %i.w, align 2, !dbg !85450, !alias.scope !85434, !noalias !85435, !noundef !3508
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.sroa.55.0.copyload, i64 %i.v, !dbg !85451
  store i16 %.val16.i.prol, ptr %i.x, align 2, !dbg !85452, !noalias !85436
  %i.y = add i64 %i.v, 1, !dbg !85454             ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !85455 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !85453 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !85453
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !85453, !llvm.loop !85428

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.z, %vec.epilog.scalar.ph.prol ]
  %i.aa = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !85453
  %i.ab = icmp ugt i64 %i.aa, -4, !dbg !85453
  br i1 %i.ab, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRttuNvYtNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VectE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !85453

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ac = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !85449 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !85448 ; 5 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85449
  %.val16.i = load i16, ptr %i.ad, align 2, !dbg !85450, !alias.scope !85434, !noalias !85435, !noundef !3508
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !85451
  store i16 %.val16.i, ptr %i.ae, align 2, !dbg !85452, !noalias !85436
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85449
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2, !dbg !85449
  %.val16.i.1 = load i16, ptr %i.ag, align 2, !dbg !85450, !alias.scope !85434, !noalias !85435, !noundef !3508
  %i.ah = getelementptr [2 x i8], ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !85451
  %i.ai = getelementptr i8, ptr %i.ah, i64 2, !dbg !85451
  store i16 %.val16.i.1, ptr %i.ai, align 2, !dbg !85452, !noalias !85436
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85449
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4, !dbg !85449
  %.val16.i.2 = load i16, ptr %i.ak, align 2, !dbg !85450, !alias.scope !85434, !noalias !85435, !noundef !3508
  %i.al = getelementptr [2 x i8], ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !85451
  %i.am = getelementptr i8, ptr %i.al, i64 4, !dbg !85451
  store i16 %.val16.i.2, ptr %i.am, align 2, !dbg !85452, !noalias !85436
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85449
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 6, !dbg !85449
  %.val16.i.3 = load i16, ptr %i.ao, align 2, !dbg !85450, !alias.scope !85434, !noalias !85435, !noundef !3508
  %i.ap = getelementptr [2 x i8], ptr %.sroa.55.0.copyload, i64 %i.ac, !dbg !85451
  %i.aq = getelementptr i8, ptr %i.ap, i64 6, !dbg !85451
  store i16 %.val16.i.3, ptr %i.aq, align 2, !dbg !85452, !noalias !85436
  %i.ar = add i64 %i.ac, 4, !dbg !85454           ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4, !dbg !85455 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.e, !dbg !85453
  br i1 %i.at, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRttuNvYtNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VectE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %vec.epilog.scalar.ph, !dbg !85453, !llvm.loop !85429

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRttuNvYtNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VectE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ar, %vec.epilog.scalar.ph ], !dbg !85456
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !dbg !85456, !noalias !85435
  ret void, !dbg !85457
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterxEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VecxE14extend_trustedBP_E0E0ECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #14 personality ptr @rust_eh_personality !dbg !85458 {
bb.a:
  %.sroa.04.0.copyload = load ptr, ptr %2, align 8, !dbg !85521 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !85521
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !85521 ; 6 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !85521
  %.sroa.55.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx, align 8, !dbg !85521 ; 7 uses
  %.sroa.55.0.copyload8 = ptrtoaddr ptr %.sroa.55.0.copyload to i64, !dbg !85522
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !85522
  %i.a = icmp eq ptr %0, %1, !dbg !85523
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxxuNvYxNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecxE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !85524

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !85525
  %i.c = ptrtoint ptr %0 to i64, !dbg !85525      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !85525      ; 2 uses
  %i.e = lshr i64 %i.d, 3, !dbg !85525            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 80, !dbg !85526
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !85526

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.4.0.copyload, 3, !dbg !85526
  %i.g = add i64 %i.f, %.sroa.55.0.copyload8, !dbg !85526
  %i.h = sub i64 %i.c, %i.g, !dbg !85526
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !85526
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !85527

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693948      ; 4 uses
  %i.i = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %.sroa.55.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body, !dbg !85527

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !85527 ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !85528 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !85529
  %wide.load = load <2 x i64>, ptr %i.k, align 8, !dbg !85529, !alias.scope !85513, !noalias !85514
  %wide.load9 = load <2 x i64>, ptr %i.l, align 8, !dbg !85529, !alias.scope !85513, !noalias !85514
  %i.m = getelementptr [8 x i8], ptr %i.j, i64 %index, !dbg !85530 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !85531
  store <2 x i64> %wide.load, ptr %i.m, align 8, !dbg !85531, !noalias !85515
  store <2 x i64> %wide.load9, ptr %i.n, align 8, !dbg !85531, !noalias !85515
  %index.next = add nuw i64 %index, 4, !dbg !85527 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !85532
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !85532, !llvm.loop !85502

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !85532
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxxuNvYxNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecxE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph.preheader, !dbg !85532

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !85532        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !85532
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !85532

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !85528 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !85527 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !85528
  %.val16.i.prol = load i64, ptr %i.q, align 8, !dbg !85529, !alias.scope !85513, !noalias !85514, !noundef !3508
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.55.0.copyload, i64 %i.p, !dbg !85530
  store i64 %.val16.i.prol, ptr %i.r, align 8, !dbg !85531, !noalias !85515
  %i.s = add i64 %i.p, 1, !dbg !85533             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !85534 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !85532 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !85532
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !85532, !llvm.loop !85507

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !85532
  %i.v = icmp ugt i64 %i.u, -4, !dbg !85532
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxxuNvYxNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecxE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !85532

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.al, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !85528 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.am, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !85527 ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85528
  %.val16.i = load i64, ptr %i.x, align 8, !dbg !85529, !alias.scope !85513, !noalias !85514, !noundef !3508
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.sroa.55.0.copyload, i64 %i.w, !dbg !85530
  store i64 %.val16.i, ptr %i.y, align 8, !dbg !85531, !noalias !85515
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85528
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !85528
  %.val16.i.1 = load i64, ptr %i.aa, align 8, !dbg !85529, !alias.scope !85513, !noalias !85514, !noundef !3508
  %i.ab = getelementptr [8 x i8], ptr %.sroa.55.0.copyload, i64 %i.w, !dbg !85530
  %i.ac = getelementptr i8, ptr %i.ab, i64 8, !dbg !85530
  store i64 %.val16.i.1, ptr %i.ac, align 8, !dbg !85531, !noalias !85515
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85528
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !85528
  %.val16.i.2 = load i64, ptr %i.ae, align 8, !dbg !85529, !alias.scope !85513, !noalias !85514, !noundef !3508
  %i.af = getelementptr [8 x i8], ptr %.sroa.55.0.copyload, i64 %i.w, !dbg !85530
  %i.ag = getelementptr i8, ptr %i.af, i64 16, !dbg !85530
  store i64 %.val16.i.2, ptr %i.ag, align 8, !dbg !85531, !noalias !85515
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !85528
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !85528
  %.val16.i.3 = load i64, ptr %i.ai, align 8, !dbg !85529, !alias.scope !85513, !noalias !85514, !noundef !3508
  %i.aj = getelementptr [8 x i8], ptr %.sroa.55.0.copyload, i64 %i.w, !dbg !85530
  %i.ak = getelementptr i8, ptr %i.aj, i64 24, !dbg !85530
  store i64 %.val16.i.3, ptr %i.ak, align 8, !dbg !85531, !noalias !85515
  %i.al = add i64 %i.w, 4, !dbg !85533            ; 2 uses
  %i.am = add nuw i64 %.sroa.01.0.i, 4, !dbg !85534 ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.e, !dbg !85532
  br i1 %i.an, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxxuNvYxNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecxE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit, label %scalar.ph, !dbg !85532, !llvm.loop !85508

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxxuNvYxNtNtBb_5clone5Clone5cloneNCINvNvBS_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3g_3VecxE14extend_trustedINtNtB1K_6cloned6ClonedBF_EE0E0E0ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.al, %scalar.ph ], !dbg !85535
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.04.0.copyload, align 8, !dbg !85535, !noalias !85514
end_hunk_1
