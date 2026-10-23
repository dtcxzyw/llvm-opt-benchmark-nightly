Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.05?download=true
inline.NumInlined: 2523
inline.NumDeleted: 1103
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterAmj3_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_xuNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain30decode_no_incompact_predicatesB1s_xINtB2N_22ClosureDecoderFunctionB1s_xNCNvNtB2P_6simple9timestamp0EEs2_0NCINvNvB1z_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6l_3VecxE14extend_trustedINtB2i_3MapBP_B2G_EE0E0E0EB2V_:bb.a
; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterAmj3_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_xuNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain30decode_no_incompact_predicatesB1s_xINtB2N_22ClosureDecoderFunctionB1s_xNCNvNtB2P_6simple9timestamps0_0EEs2_0NCINvNvB1z_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6o_3VecxE14extend_trustedINtB2i_3MapBP_B2G_EE0E0E0EB2V_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !26340 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !26418 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !26418
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !26418 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !26418
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !26418
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !26419
  %i.a = icmp eq ptr %0, %1, !dbg !26420
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj3_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters6copied9copy_foldBQ_uNCINvNtB1O_3map8map_foldBQ_xuNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain30decode_no_incompact_predicatesBQ_xINtB2Y_22ClosureDecoderFunctionBQ_xNCNvNtB30_6simple9timestamps0_0EEs2_0NCINvNvBW_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6w_3VecxE14extend_trustedINtB2t_3MapINtB1M_6CopiedBF_EB2R_EE0E0E0E0EB36_.exit, label %bb.b, !dbg !26421

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !26422
  %i.c = ptrtoint ptr %0 to i64, !dbg !26422
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !26422
  %i.e = udiv exact i64 %i.d, 12, !dbg !26422
  br label %bb.c, !dbg !26423

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %bb.c ], !dbg !26424 ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ], !dbg !26425 ; 2 uses
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !26424 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26409), !dbg !26426
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.g, align 4, !dbg !26427, !alias.scope !26409, !noalias !26410
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !26427
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !dbg !26427, !alias.scope !26409, !noalias !26410
  %i.h = zext i32 %.sroa.4.0.copyload.i.i to i64, !dbg !26428
  %i.i = sdiv i64 %.sroa.0.0.copyload.i.i, 1000000, !dbg !26429
  %i.j = mul nuw nsw i64 %i.h, 86400000, !dbg !26430
  %i.k = add nsw i64 %i.i, -210866803200000, !dbg !26430
  %i.l = add nsw i64 %i.k, %i.j, !dbg !26430
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !26431
  store i64 %i.l, ptr %i.m, align 8, !dbg !26432, !noalias !26411
  %i.n = add i64 %i.f, 1, !dbg !26433             ; 2 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 1, !dbg !26434 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e, !dbg !26435
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj3_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters6copied9copy_foldBQ_uNCINvNtB1O_3map8map_foldBQ_xuNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain30decode_no_incompact_predicatesBQ_xINtB2Y_22ClosureDecoderFunctionBQ_xNCNvNtB30_6simple9timestamps0_0EEs2_0NCINvNvBW_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6w_3VecxE14extend_trustedINtB2t_3MapINtB1M_6CopiedBF_EB2R_EE0E0E0E0EB36_.exit, label %bb.c, !dbg !26435

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj3_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters6copied9copy_foldBQ_uNCINvNtB1O_3map8map_foldBQ_xuNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain30decode_no_incompact_predicatesBQ_xINtB2Y_22ClosureDecoderFunctionBQ_xNCNvNtB30_6simple9timestamps0_0EEs2_0NCINvNvBW_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6w_3VecxE14extend_trustedINtB2t_3MapINtB1M_6CopiedBF_EB2R_EE0E0E0E0EB36_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %bb.c ], !dbg !26436
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !26436, !noalias !26410
  ret void, !dbg !26437
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterAmj3_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_xuNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain30decode_no_incompact_predicatesB1s_xINtB2N_22ClosureDecoderFunctionB1s_xNCNvNtB2P_6simple9timestamps1_0EEs2_0NCINvNvB1z_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6o_3VecxE14extend_trustedINtB2i_3MapBP_B2G_EE0E0E0EB2V_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !26438 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !26516 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !26516
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !26516 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !26516
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !26516
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !26517
  %i.a = icmp eq ptr %0, %1, !dbg !26518
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj3_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters6copied9copy_foldBQ_uNCINvNtB1O_3map8map_foldBQ_xuNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain30decode_no_incompact_predicatesBQ_xINtB2Y_22ClosureDecoderFunctionBQ_xNCNvNtB30_6simple9timestamps1_0EEs2_0NCINvNvBW_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6w_3VecxE14extend_trustedINtB2t_3MapINtB1M_6CopiedBF_EB2R_EE0E0E0E0EB36_.exit, label %bb.b, !dbg !26519

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !26520
  %i.c = ptrtoint ptr %0 to i64, !dbg !26520
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !26520
  %i.e = udiv exact i64 %i.d, 12, !dbg !26520
  br label %bb.c, !dbg !26521

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %bb.c ], !dbg !26522 ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ], !dbg !26523 ; 2 uses
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !26522 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26507), !dbg !26524
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.g, align 4, !dbg !26525, !alias.scope !26507, !noalias !26508
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !26525
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !dbg !26525, !alias.scope !26507, !noalias !26508
  %i.h = zext i32 %.sroa.4.0.copyload.i.i to i64, !dbg !26526
  %i.i = sdiv i64 %.sroa.0.0.copyload.i.i, 1000000000, !dbg !26527
  %i.j = mul nuw nsw i64 %i.h, 86400, !dbg !26528
  %i.k = add nsw i64 %i.i, -210866803200, !dbg !26528
  %i.l = add nsw i64 %i.k, %i.j, !dbg !26529
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !26530
  store i64 %i.l, ptr %i.m, align 8, !dbg !26531, !noalias !26509
  %i.n = add i64 %i.f, 1, !dbg !26532             ; 2 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 1, !dbg !26533 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e, !dbg !26534
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj3_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters6copied9copy_foldBQ_uNCINvNtB1O_3map8map_foldBQ_xuNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain30decode_no_incompact_predicatesBQ_xINtB2Y_22ClosureDecoderFunctionBQ_xNCNvNtB30_6simple9timestamps1_0EEs2_0NCINvNvBW_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6w_3VecxE14extend_trustedINtB2t_3MapINtB1M_6CopiedBF_EB2R_EE0E0E0E0EB36_.exit, label %bb.c, !dbg !26534

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj3_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters6copied9copy_foldBQ_uNCINvNtB1O_3map8map_foldBQ_xuNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain30decode_no_incompact_predicatesBQ_xINtB2Y_22ClosureDecoderFunctionBQ_xNCNvNtB30_6simple9timestamps1_0EEs2_0NCINvNvBW_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6w_3VecxE14extend_trustedINtB2t_3MapINtB1M_6CopiedBF_EB2R_EE0E0E0E0EB36_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %bb.c ], !dbg !26535
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !26535, !noalias !26508
  ret void, !dbg !26536
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterAmj3_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_xuNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain30decode_no_incompact_predicatesB1s_xINtB2N_22ClosureDecoderFunctionB1s_xNCNvNtB2P_6simple9timestamps_0EEs2_0NCINvNvB1z_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6n_3VecxE14extend_trustedINtB2i_3MapBP_B2G_EE0E0E0EB2V_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !26537 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !26615 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !26615
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !26615 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !26615
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !26615
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !26616
  %i.a = icmp eq ptr %0, %1, !dbg !26617
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj3_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters6copied9copy_foldBQ_uNCINvNtB1O_3map8map_foldBQ_xuNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain30decode_no_incompact_predicatesBQ_xINtB2Y_22ClosureDecoderFunctionBQ_xNCNvNtB30_6simple9timestamps_0EEs2_0NCINvNvBW_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6v_3VecxE14extend_trustedINtB2t_3MapINtB1M_6CopiedBF_EB2R_EE0E0E0E0EB36_.exit, label %bb.b, !dbg !26618

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !26619
  %i.c = ptrtoint ptr %0 to i64, !dbg !26619
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !26619
  %i.e = udiv exact i64 %i.d, 12, !dbg !26619
  br label %bb.c, !dbg !26620

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %bb.c ], !dbg !26621 ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.o, %bb.c ], !dbg !26622 ; 2 uses
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !26621 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26606), !dbg !26623
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.g, align 4, !dbg !26624, !alias.scope !26606, !noalias !26607
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !26624
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !dbg !26624, !alias.scope !26606, !noalias !26607
  %i.h = zext i32 %.sroa.4.0.copyload.i.i to i64, !dbg !26625
  %i.i = sdiv i64 %.sroa.0.0.copyload.i.i, 1000, !dbg !26626
  %i.j = mul i64 %i.h, 86400000000, !dbg !26627
  %i.k = add nsw i64 %i.i, -210866803200000000, !dbg !26627
  %i.l = add i64 %i.k, %i.j, !dbg !26627
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.f, !dbg !26628
  store i64 %i.l, ptr %i.m, align 8, !dbg !26629, !noalias !26608
  %i.n = add i64 %i.f, 1, !dbg !26630             ; 2 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 1, !dbg !26631 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.e, !dbg !26632
  br i1 %i.p, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj3_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters6copied9copy_foldBQ_uNCINvNtB1O_3map8map_foldBQ_xuNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain30decode_no_incompact_predicatesBQ_xINtB2Y_22ClosureDecoderFunctionBQ_xNCNvNtB30_6simple9timestamps_0EEs2_0NCINvNvBW_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6v_3VecxE14extend_trustedINtB2t_3MapINtB1M_6CopiedBF_EB2R_EE0E0E0E0EB36_.exit, label %bb.c, !dbg !26632

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterAmj3_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters6copied9copy_foldBQ_uNCINvNtB1O_3map8map_foldBQ_xuNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain30decode_no_incompact_predicatesBQ_xINtB2Y_22ClosureDecoderFunctionBQ_xNCNvNtB30_6simple9timestamps_0EEs2_0NCINvNvBW_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6v_3VecxE14extend_trustedINtB2t_3MapINtB1M_6CopiedBF_EB2R_EE0E0E0E0EB36_.exit: ; preds = %bb.c, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %bb.c ], !dbg !26633
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !26633, !noalias !26607
  ret void, !dbg !26634
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4callB1s_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3t_3VecB1s_E14extend_trustedBP_E0E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !26635 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !26697 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !26697
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !26697 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !26697
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !26697 ; 8 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !26698
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !26698
  %i.a = icmp eq ptr %0, %1, !dbg !26699
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3D_3VecBQ_E14extend_trustedINtB2q_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %iter.check, !dbg !26700

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !26701
  %i.c = ptrtoint ptr %0 to i64, !dbg !26701      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !26701      ; 4 uses
  %i.e = lshr i64 %i.d, 1, !dbg !26701            ; 7 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !26702
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !26702

vector.memcheck:                                  ; preds = %iter.check
  %i.f = shl i64 %.sroa.5.0.copyload, 1, !dbg !26702
  %i.g = add i64 %i.f, %.sroa.7.0.copyload3, !dbg !26702
  %i.h = sub i64 %i.c, %i.g, !dbg !26702
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !26702
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !26703

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.d, 32, !dbg !26702
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !26702

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 5 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !26702

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !26703 ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !26704 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !26705
  %wide.load = load <8 x i16>, ptr %i.k, align 2, !dbg !26705, !noalias !26690
  %wide.load5 = load <8 x i16>, ptr %i.l, align 2, !dbg !26705, !noalias !26690
  %i.m = getelementptr [2 x i8], ptr %i.j, i64 %index, !dbg !26706 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !26707
  store <8 x i16> %wide.load, ptr %i.m, align 2, !dbg !26707, !noalias !26691
  store <8 x i16> %wide.load5, ptr %i.n, align 2, !dbg !26707, !noalias !26691
  %index.next = add nuw i64 %index, 16, !dbg !26703 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !26708
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !26708, !llvm.loop !26678

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !26708
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3D_3VecBQ_E14extend_trustedINtB2q_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.iter.check, !dbg !26708

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.p = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1451

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %i.e, 9223372036854775804     ; 4 uses
  %i.q = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.r = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !26703 ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index7, !dbg !26704
  %wide.load8 = load <4 x i16>, ptr %i.s, align 2, !dbg !26705, !noalias !26690
  %i.t = getelementptr [2 x i8], ptr %i.r, i64 %index7, !dbg !26706
  store <4 x i16> %wide.load8, ptr %i.t, align 2, !dbg !26707, !noalias !26691
  %index.next9 = add nuw i64 %index7, 4, !dbg !26703 ; 2 uses
  %i.u = icmp eq i64 %index.next9, %n.vec6, !dbg !26708
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !26708, !llvm.loop !26679

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.e, %n.vec6, !dbg !26708
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3D_3VecBQ_E14extend_trustedINtB2q_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph.preheader, !dbg !26708

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !26708        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !26708
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !26708

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.v = phi i64 [ %i.y, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !26704 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.z, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !26703 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !26704
  %.val16.i.prol = load i16, ptr %i.w, align 2, !dbg !26705, !noalias !26690, !noundef !1032
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.v, !dbg !26706
  store i16 %.val16.i.prol, ptr %i.x, align 2, !dbg !26707, !noalias !26691
  %i.y = add i64 %i.v, 1, !dbg !26709             ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !26710 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !26708 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !26708
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !26708, !llvm.loop !26684

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.z, %vec.epilog.scalar.ph.prol ]
  %i.aa = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !26708
  %i.ab = icmp ugt i64 %i.aa, -4, !dbg !26708
  br i1 %i.ab, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3D_3VecBQ_E14extend_trustedINtB2q_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph, !dbg !26708

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ac = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !26704 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !26703 ; 5 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !26704
  %.val16.i = load i16, ptr %i.ad, align 2, !dbg !26705, !noalias !26690, !noundef !1032
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !26706
  store i16 %.val16.i, ptr %i.ae, align 2, !dbg !26707, !noalias !26691
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !26704
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2, !dbg !26704
  %.val16.i.1 = load i16, ptr %i.ag, align 2, !dbg !26705, !noalias !26690, !noundef !1032
  %i.ah = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !26706
  %i.ai = getelementptr i8, ptr %i.ah, i64 2, !dbg !26706
  store i16 %.val16.i.1, ptr %i.ai, align 2, !dbg !26707, !noalias !26691
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !26704
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4, !dbg !26704
  %.val16.i.2 = load i16, ptr %i.ak, align 2, !dbg !26705, !noalias !26690, !noundef !1032
  %i.al = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !26706
  %i.am = getelementptr i8, ptr %i.al, i64 4, !dbg !26706
  store i16 %.val16.i.2, ptr %i.am, align 2, !dbg !26707, !noalias !26691
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !26704
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 6, !dbg !26704
  %.val16.i.3 = load i16, ptr %i.ao, align 2, !dbg !26705, !noalias !26690, !noundef !1032
  %i.ap = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !26706
  %i.aq = getelementptr i8, ptr %i.ap, i64 6, !dbg !26706
  store i16 %.val16.i.3, ptr %i.aq, align 2, !dbg !26707, !noalias !26691
  %i.ar = add i64 %i.ac, 4, !dbg !26709           ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4, !dbg !26710 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.e, !dbg !26708
  br i1 %i.at, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3D_3VecBQ_E14extend_trustedINtB2q_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph, !dbg !26708, !llvm.loop !26685

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtCs2mZqlW55729_12polars_utils7float164pf16ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1G_8adapters6copied9copy_foldBQ_uNCINvNvB1A_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3D_3VecBQ_E14extend_trustedINtB2q_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ar, %vec.epilog.scalar.ph ], !dbg !26711
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !26711, !noalias !26690
  ret void, !dbg !26712
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2k_8for_each4callB1s_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3A_3VecB1s_E14extend_trustedBP_E0E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !26713 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !26771 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !26771
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !26771 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !26771
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !26771 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !26772
  %i.a = icmp eq ptr %0, %1, !dbg !26773
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters6copied9copy_foldBQ_uNCINvNvB1H_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3K_3VecBQ_E14extend_trustedINtB2x_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.b, !dbg !26774

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !26775
  %i.c = ptrtoint ptr %0 to i64, !dbg !26775
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !26775      ; 3 uses
  %i.e = lshr exact i64 %i.d, 5, !dbg !26775      ; 2 uses
  %i.f = icmp eq i64 %i.d, 32, !dbg !26776
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !26776

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 576460752303423486, !dbg !26776
  br label %bb.c, !dbg !26776

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.n, %bb.c ], !dbg !26777 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ], !dbg !26778 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !26777
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !26779
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !26780, !noalias !26764
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !26777
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32, !dbg !26777
  %i.l = getelementptr [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !26779
  %i.m = getelementptr i8, ptr %i.l, i64 32, !dbg !26779
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.m, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.k, i64 32, i1 false), !dbg !26780, !noalias !26764
  %i.n = add i64 %i.g, 2, !dbg !26781             ; 3 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 2, !dbg !26782 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !26783  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !26783
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters6copied9copy_foldBQ_uNCINvNvB1H_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3K_3VecBQ_E14extend_trustedINtB2x_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa, label %bb.c, !dbg !26783

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters6copied9copy_foldBQ_uNCINvNvB1H_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3K_3VecBQ_E14extend_trustedINtB2x_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.p = and i64 %i.d, 32, !dbg !26783
  %lcmp.mod.not = icmp eq i64 %i.p, 0, !dbg !26783
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters6copied9copy_foldBQ_uNCINvNvB1H_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3K_3VecBQ_E14extend_trustedINtB2x_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %.epil.preheader, !dbg !26783

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters6copied9copy_foldBQ_uNCINvNvB1H_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3K_3VecBQ_E14extend_trustedINtB2x_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters6copied9copy_foldBQ_uNCINvNvB1H_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3K_3VecBQ_E14extend_trustedINtB2x_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters6copied9copy_foldBQ_uNCINvNvB1H_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3K_3VecBQ_E14extend_trustedINtB2x_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !26783
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !26783
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !26777
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !26779
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.r, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.q, i64 32, i1 false), !dbg !26780, !noalias !26764
  %i.s = add i64 %.epil.init, 1, !dbg !26781
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters6copied9copy_foldBQ_uNCINvNvB1H_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3K_3VecBQ_E14extend_trustedINtB2x_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters6copied9copy_foldBQ_uNCINvNvB1H_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3K_3VecBQ_E14extend_trustedINtB2x_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters6copied9copy_foldBQ_uNCINvNvB1H_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3K_3VecBQ_E14extend_trustedINtB2x_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters6copied9copy_foldBQ_uNCINvNvB1H_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3K_3VecBQ_E14extend_trustedINtB2x_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa ], [ %i.s, %.epil.preheader ], !dbg !26784
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !26784, !noalias !26770
  ret void, !dbg !26785
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2s_8for_each4callB1s_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3I_3VecB1s_E14extend_trustedBP_E0E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !26786 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !26844 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !26844
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !26844 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !26844
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !26844 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !26845
  %i.a = icmp eq ptr %0, %1, !dbg !26846
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters6copied9copy_foldBQ_uNCINvNvB1P_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3S_3VecBQ_E14extend_trustedINtB2F_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.b, !dbg !26847

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !26848
  %i.c = ptrtoint ptr %0 to i64, !dbg !26848
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !26848      ; 3 uses
  %i.e = lshr exact i64 %i.d, 4, !dbg !26848      ; 2 uses
  %i.f = icmp eq i64 %i.d, 16, !dbg !26849
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !26849

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974, !dbg !26849
  br label %bb.c, !dbg !26849

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.n, %bb.c ], !dbg !26850 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ], !dbg !26851 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !26850
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !26852
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.h, i64 16, i1 false), !dbg !26853, !noalias !26837
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !26850
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !26850
  %i.l = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !26852
  %i.m = getelementptr i8, ptr %i.l, i64 16, !dbg !26852
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.k, i64 16, i1 false), !dbg !26853, !noalias !26837
  %i.n = add i64 %i.g, 2, !dbg !26854             ; 3 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 2, !dbg !26855 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !26856  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !26856
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters6copied9copy_foldBQ_uNCINvNvB1P_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3S_3VecBQ_E14extend_trustedINtB2F_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa, label %bb.c, !dbg !26856

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters6copied9copy_foldBQ_uNCINvNvB1P_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3S_3VecBQ_E14extend_trustedINtB2F_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.p = and i64 %i.d, 16, !dbg !26856
  %lcmp.mod.not = icmp eq i64 %i.p, 0, !dbg !26856
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters6copied9copy_foldBQ_uNCINvNvB1P_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3S_3VecBQ_E14extend_trustedINtB2F_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %.epil.preheader, !dbg !26856

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters6copied9copy_foldBQ_uNCINvNvB1P_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3S_3VecBQ_E14extend_trustedINtB2F_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters6copied9copy_foldBQ_uNCINvNvB1P_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3S_3VecBQ_E14extend_trustedINtB2F_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters6copied9copy_foldBQ_uNCINvNvB1P_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3S_3VecBQ_E14extend_trustedINtB2F_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !26856
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !26856
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !26850
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !26852
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.r, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.q, i64 16, i1 false), !dbg !26853, !noalias !26837
  %i.s = add i64 %.epil.init, 1, !dbg !26854
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters6copied9copy_foldBQ_uNCINvNvB1P_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3S_3VecBQ_E14extend_trustedINtB2F_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters6copied9copy_foldBQ_uNCINvNvB1P_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3S_3VecBQ_E14extend_trustedINtB2F_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters6copied9copy_foldBQ_uNCINvNvB1P_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3S_3VecBQ_E14extend_trustedINtB2F_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1V_8adapters6copied9copy_foldBQ_uNCINvNvB1P_8for_each4callBQ_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB3S_3VecBQ_E14extend_trustedINtB2F_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa ], [ %i.s, %.epil.preheader ], !dbg !26857
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !26857, !noalias !26843
  ret void, !dbg !26858
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterReEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNvYB1s_INtNtBb_7convert4IntoB2B_E4intoNCINvNvB1w_8for_each4callB2B_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4F_3VecB2B_E14extend_trustedINtB2f_3MapBP_B3r_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !26859 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !27008 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !27008
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !27008 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !27008
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !27008
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !27009
  %i.b = icmp eq ptr %0, %1, !dbg !27010
  br i1 %i.b, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNtB1L_3map8map_foldBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNvYBQ_INtNtBb_7convert4IntoB2L_E4intoNCINvNvBT_8for_each4callB2L_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4N_3VecB2L_E14extend_trustedINtB2p_3MapINtB1J_6CopiedBF_EB3B_EE0E0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.b, !dbg !27011

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64, !dbg !27012
  %i.d = ptrtoint ptr %0 to i64, !dbg !27012
  %i.e = sub nuw i64 %i.c, %i.d, !dbg !27012
  %i.f = lshr exact i64 %i.e, 4, !dbg !27012
  %.23..23..23..23..23..23..23..23..23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %.8..8..8..8..8..8..8..8..8..8..8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..16..16..16..16..16..16..16..16..16..16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c, !dbg !27013

bb.c:                                             ; preds = %bb.h, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.r, %bb.h ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.s, %bb.h ], !dbg !27014 ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !27015 ; 2 uses
  %.val16.i = load ptr, ptr %i.g, align 8, !dbg !27016, !noalias !26987, !nonnull !1032, !noundef !1032 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8, !dbg !27016
  %.val17.i = load i64, ptr %i.h, align 8, !dbg !27016, !noalias !26987, !noundef !1032 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !27017
  %i.i = icmp eq i64 %.val17.i, 0, !dbg !27017
  br i1 %i.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread6.i.i.i.i.i.i, label %bb.d, !dbg !27017

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread6.i.i.i.i.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !27018
  br label %bb.h, !dbg !27019

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ult i64 %.val17.i, 25, !dbg !27020
  br i1 %i.j, label %bb.f, label %bb.e, !dbg !27020

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 25, 0) %.val17.i, i64 32), !dbg !27021 ; 2 uses
  %i.k = invoke noundef ptr @_RNvNtNtNtCs7VARH73bmU_11compact_str4repr4heap15inline_capacity5alloc(i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !dbg !27022, !noalias !26987 ; 3 uses

.noexc.i:                                         ; preds = %bb.e
  %i.l = icmp eq ptr %i.k, null, !dbg !27023
  br i1 %i.l, label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i.i.i.i.i, label %bb.g, !dbg !27024

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i.i.i.i.i: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !27018
  br label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread.i.i.i.i.i.i, !dbg !27025

bb.f:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.a, i8 0, i64 23, i1 false), !dbg !27026, !noalias !26994
  %i.m = trunc nuw nsw i64 %.val17.i to i8, !dbg !27027
  %i.n = or disjoint i8 %i.m, -64, !dbg !27028
  store i8 %i.n, ptr %.23..23..23..23..23..23..23..23..23..23..23..23..23..23..23..23..23..23..23..23..sroa_idx, align 1, !dbg !27028, !noalias !26994
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull readonly align 1 %.val16.i, i64 %.val17.i, i1 false), !dbg !27029, !noalias !26995
  %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !dbg !27030, !noalias !26996
  %.8..8..8..8..8..8..8..8..8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i.i.i.i.i = load i64, ptr %.8..8..8..8..8..8..8..8..8..8..8..8..8..8..8..8..8..sroa_idx, align 8, !dbg !27030, !noalias !26996
  %.16..16..16..16..16..16..16..16..16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i.i.i.i.i = load i64, ptr %.16..16..16..16..16..16..16..16..16..16..16..16..16..16..16..16..16..sroa_idx, align 8, !dbg !27030, !noalias !26996
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i.i.i.i.i, !dbg !27031

bb.g:                                             ; preds = %.noexc.i
  %i.o = or i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, -2882303761517117440, !dbg !27032
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(1) %.val16.i, i64 range(i64 25, 0) %.val17.i, i1 false), !dbg !27033, !noalias !27000
  br label %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i.i.i.i.i, !dbg !27034

_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.sroa.02.0.i.i.i.i.i.i.i = phi ptr [ %i.k, %bb.g ], [ %.0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..0..sroa.02.0.copyload3.i.i.i.i.i.i.i, %bb.f ], !dbg !27035
  %.sroa.6.0.i.i.i.i.i.i.i = phi i64 [ %.val17.i, %bb.g ], [ %.8..8..8..8..8..8..8..8..8..8..8..8..8..8..8..8..8..sroa.6.0.copyload6.i.i.i.i.i.i.i, %bb.f ], !dbg !27035
  %.sroa.7.0.i.i.i.i.i.i.i = phi i64 [ %i.o, %bb.g ], [ %.16..16..16..16..16..16..16..16..16..16..16..16..16..16..16..16..16..sroa.7.0.copyload9.i.i.i.i.i.i.i, %bb.f ], !dbg !27036 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !27018
  %i.p = and i64 %.sroa.7.0.i.i.i.i.i.i.i, -72057594037927936, !dbg !27025
  %or.cond.i.i.i.i.i.i = icmp eq i64 %i.p, -2738188573441261568, !dbg !27025
  br i1 %or.cond.i.i.i.i.i.i, label %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread.i.i.i.i.i.i, label %bb.h, !dbg !27025, !prof !1458

_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread.i.i.i.i.i.i: ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i.i.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.thread.i.i.i.i.i.i.i
  invoke void @_RINvCs7VARH73bmU_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @199) #43
          to label %.noexc18.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !dbg !27037, !noalias !26987

.noexc18.i:                                       ; preds = %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread.i.i.i.i.i.i
  unreachable, !dbg !27037

bb.h:                                             ; preds = %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i.i.i.i.i, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread6.i.i.i.i.i.i
  %.sroa.0.014.i.i.i.i.i.i = phi ptr [ null, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread6.i.i.i.i.i.i ], [ %.sroa.02.0.i.i.i.i.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i.i.i.i.i ]
  %.sroa.4.013.i.i.i.i.i.i = phi i64 [ 0, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread6.i.i.i.i.i.i ], [ %.sroa.6.0.i.i.i.i.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i.i.i.i.i ]
  %.sroa.5.012.i.i.i.i.i.i = phi i64 [ -4611686018427387904, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread6.i.i.i.i.i.i ], [ %.sroa.7.0.i.i.i.i.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr3new.exit.i.i.i.i.i.i.i ]
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i, !dbg !27038 ; 3 uses
  store ptr %.sroa.0.014.i.i.i.i.i.i, ptr %i.q, align 8, !dbg !27039, !noalias !27001
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !27039
  store i64 %.sroa.4.013.i.i.i.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !dbg !27039, !noalias !27001
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !27039
  store i64 %.sroa.5.012.i.i.i.i.i.i, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !dbg !27039, !noalias !27001
  %i.r = add i64 %.val15.i, 1, !dbg !27040        ; 2 uses
  %i.s = add nuw i64 %.sroa.01.0.i, 1, !dbg !27041 ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.f, !dbg !27042
  br i1 %i.t, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNtB1L_3map8map_foldBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNvYBQ_INtNtBb_7convert4IntoB2L_E4intoNCINvNvBT_8for_each4callB2L_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4N_3VecB2L_E14extend_trustedINtB2p_3MapINtB1J_6CopiedBF_EB3B_EE0E0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.c, !dbg !27042

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %_RINvMCs7VARH73bmU_11compact_strNtB3_13CompactString7try_newReECsfISxE4fmY1Y_14polars_parquet.exit.thread.i.i.i.i.i.i
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !dbg !27043, !noalias !26987
  resume { ptr, i32 } %lpad.loopexit.split-lp24, !dbg !27044

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterReENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters6copied9copy_foldBQ_uNCINvNtB1L_3map8map_foldBQ_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNvYBQ_INtNtBb_7convert4IntoB2L_E4intoNCINvNvBT_8for_each4callB2L_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4N_3VecB2L_E14extend_trustedINtB2p_3MapINtB1J_6CopiedBF_EB3B_EE0E0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.h, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.r, %bb.h ], !dbg !27045
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !27045, !noalias !26987
  ret void, !dbg !27046
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i8, i8 } @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4foldTaaENCINvNtB7_3map8map_foldaB28_B28_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsaINvB2N_18min_max_ignore_nanaEE0B3U_E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2, i8 noundef %3) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !27047 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !27086
  %i.a = icmp eq ptr %0, %1, !dbg !27087
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTaaENCINvNtNtBY_8adapters6copied9copy_foldaB1C_NCINvNtB1N_3map8map_foldaB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsaINvB2Z_18min_max_ignore_nanaEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %iter.check, !dbg !27088

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !27089
  %i.c = ptrtoint ptr %0 to i64, !dbg !27089
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !27089      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !27090
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !27090

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !27090
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !27090

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 24
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %3, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3 = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat4 = shufflevector <16 x i8> %broadcast.splatinsert3, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !27090

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !27091 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi5 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi6 = phi <16 x i8> [ %broadcast.splat4, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi7 = phi <16 x i8> [ %broadcast.splat4, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !27092 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !27093
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !27093 ; 2 uses
  %wide.load8 = load <16 x i8>, ptr %i.g, align 1, !dbg !27093 ; 2 uses
  %i.h = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %vec.phi6, <16 x i8> %wide.load), !dbg !27094 ; 2 uses
  %i.i = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %vec.phi7, <16 x i8> %wide.load8), !dbg !27094 ; 2 uses
  %i.j = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !27095 ; 2 uses
  %i.k = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %vec.phi5, <16 x i8> %wide.load8), !dbg !27095 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !27091 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !27096
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !27096, !llvm.loop !27080

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.j, <16 x i8> %i.k), !dbg !27096
  %i.m = tail call i8 @llvm.vector.reduce.smax.v16i8(<16 x i8> %rdx.minmax), !dbg !27096 ; 3 uses
  %rdx.minmax9 = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %i.h, <16 x i8> %i.i), !dbg !27096
  %i.n = tail call i8 @llvm.vector.reduce.smin.v16i8(<16 x i8> %rdx.minmax9), !dbg !27096 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !27096
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTaaENCINvNtNtBY_8adapters6copied9copy_foldaB1C_NCINvNtB1N_3map8map_foldaB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsaINvB2Z_18min_max_ignore_nanaEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.iter.check, !dbg !27096

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !27085

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.m, %vec.epilog.iter.check ], [ %3, %vector.main.loop.iter.check ]
  %bc.merge.rdx10 = phi i8 [ %i.n, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ]
  %broadcast.splatinsert12 = insertelement <8 x i8> poison, i8 %bc.merge.rdx10, i64 0
  %broadcast.splat13 = shufflevector <8 x i8> %broadcast.splatinsert12, <8 x i8> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <8 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat15 = shufflevector <8 x i8> %broadcast.splatinsert14, <8 x i8> poison, <8 x i32> zeroinitializer
  %n.vec11 = and i64 %i.d, -8                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ], !dbg !27091 ; 2 uses
  %vec.phi17 = phi <8 x i8> [ %broadcast.splat15, %vec.epilog.ph ], [ %i.q, %vec.epilog.vector.body ]
  %vec.phi18 = phi <8 x i8> [ %broadcast.splat13, %vec.epilog.ph ], [ %i.p, %vec.epilog.vector.body ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %index16, !dbg !27092
  %wide.load19 = load <8 x i8>, ptr %i.o, align 1, !dbg !27093 ; 2 uses
  %i.p = tail call <8 x i8> @llvm.smin.v8i8(<8 x i8> %vec.phi18, <8 x i8> %wide.load19), !dbg !27094 ; 2 uses
  %i.q = tail call <8 x i8> @llvm.smax.v8i8(<8 x i8> %vec.phi17, <8 x i8> %wide.load19), !dbg !27095 ; 2 uses
  %index.next20 = add nuw i64 %index16, 8, !dbg !27091 ; 2 uses
  %i.r = icmp eq i64 %index.next20, %n.vec11, !dbg !27096
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !27096, !llvm.loop !27081

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.s = tail call i8 @llvm.vector.reduce.smax.v8i8(<8 x i8> %i.q), !dbg !27096 ; 2 uses
  %i.t = tail call i8 @llvm.vector.reduce.smin.v8i8(<8 x i8> %i.p), !dbg !27096 ; 2 uses
  %cmp.n21 = icmp eq i64 %i.d, %n.vec11, !dbg !27096
  br i1 %cmp.n21, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTaaENCINvNtNtBY_8adapters6copied9copy_foldaB1C_NCINvNtB1N_3map8map_foldaB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsaINvB2Z_18min_max_ignore_nanaEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph.preheader, !dbg !27096

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.05.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ]
  %.sroa.6.0.i.ph = phi i8 [ %3, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !27096

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.05.0.i = phi i64 [ %i.v, %vec.epilog.scalar.ph ], [ %.sroa.05.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !27091 ; 2 uses
  %.sroa.6.0.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.6.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !27097
  %.sroa.02.0.i = phi i8 [ %.sroa.0.0.i1.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !27097
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.05.0.i, !dbg !27092
  %.val.i = load i8, ptr %i.u, align 1, !dbg !27093, !noundef !1032 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i = tail call i8 @llvm.smin.i8(i8 %.sroa.02.0.i, i8 %.val.i), !dbg !27094 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = tail call i8 @llvm.smax.i8(i8 %.sroa.6.0.i, i8 %.val.i), !dbg !27095 ; 2 uses
  %i.v = add nuw i64 %.sroa.05.0.i, 1, !dbg !27098 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d, !dbg !27096
  br i1 %i.w, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTaaENCINvNtNtBY_8adapters6copied9copy_foldaB1C_NCINvNtB1N_3map8map_foldaB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsaINvB2Z_18min_max_ignore_nanaEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph, !dbg !27096, !llvm.loop !27084

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTaaENCINvNtNtBY_8adapters6copied9copy_foldaB1C_NCINvNtB1N_3map8map_foldaB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsaINvB2Z_18min_max_ignore_nanaEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.pn21.i = phi i8 [ %2, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %.sroa.0.0.i1.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn19.i = phi i8 [ %3, %bb.a ], [ %i.s, %vec.epilog.middle.block ], [ %i.m, %middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn.i = insertvalue { i8, i8 } poison, i8 %.pn21.i, 0, !dbg !27097
  %.merged.i = insertvalue { i8, i8 } %.pn.i, i8 %.pn19.i, 1, !dbg !27097
  ret { i8, i8 } %.merged.i, !dbg !27099
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IteraEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VecaE14extend_trustedBP_E0E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !27100 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !27162 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !27162
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !27162 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !27162
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !27162 ; 8 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !27163
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !27163
  %i.a = icmp eq ptr %0, %1, !dbg !27164
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecaE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %iter.check, !dbg !27165

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !27166      ; 3 uses
  %i.c = ptrtoint ptr %0 to i64, !dbg !27166      ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !27166      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !27167
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !27167

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload3, !dbg !27167
  %i.f = sub i64 %i.c, %i.e, !dbg !27167
  %diff.check = icmp ugt i64 %i.f, -32, !dbg !27167
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !27168

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.d, 32, !dbg !27167
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !27167

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !27167

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !27168 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !27169 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !27170
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !dbg !27170, !noalias !27155
  %wide.load5 = load <16 x i8>, ptr %i.k, align 1, !dbg !27170, !noalias !27155
  %i.l = getelementptr i8, ptr %i.i, i64 %index, !dbg !27171 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !27172
  store <16 x i8> %wide.load, ptr %i.l, align 1, !dbg !27172, !noalias !27156
  store <16 x i8> %wide.load5, ptr %i.m, align 1, !dbg !27172, !noalias !27156
  %index.next = add nuw i64 %index, 32, !dbg !27168 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !27173
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !27173, !llvm.loop !27143

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !27173
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecaE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.iter.check, !dbg !27173

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1459

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %i.d, -4                      ; 4 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !27168 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index7, !dbg !27169
  %wide.load8 = load <4 x i8>, ptr %i.q, align 1, !dbg !27170, !noalias !27155
  %i.r = getelementptr i8, ptr %i.p, i64 %index7, !dbg !27171
  store <4 x i8> %wide.load8, ptr %i.r, align 1, !dbg !27172, !noalias !27156
  %index.next9 = add nuw i64 %index7, 4, !dbg !27168 ; 2 uses
  %i.s = icmp eq i64 %index.next9, %n.vec6, !dbg !27173
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !27173, !llvm.loop !27144

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.d, %n.vec6, !dbg !27173
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecaE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph.preheader, !dbg !27173

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %i.t = sub i64 %i.b, %i.c, !dbg !27173
  %xtraiter = and i64 %i.t, 3, !dbg !27173        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !27173
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !27173

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.u = phi i64 [ %i.x, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !27169 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.y, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !27168 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.prol, !dbg !27169
  %.val16.i.prol = load i8, ptr %i.v, align 1, !dbg !27170, !noalias !27155, !noundef !1032
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.u, !dbg !27171
  store i8 %.val16.i.prol, ptr %i.w, align 1, !dbg !27172, !noalias !27156
  %i.x = add i64 %i.u, 1, !dbg !27174             ; 3 uses
  %i.y = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !27175 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !27173 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !27173
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !27173, !llvm.loop !27149

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.x, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.x, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %i.z = sub i64 %.sroa.01.0.i.ph, %i.b, !dbg !27173
  %i.aa = add i64 %i.z, %i.c, !dbg !27173
  %i.ab = icmp ugt i64 %i.aa, -4, !dbg !27173
  br i1 %i.ab, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecaE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph, !dbg !27173

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ac = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !27169 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !27168 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !27169
  %.val16.i = load i8, ptr %i.ad, align 1, !dbg !27170, !noalias !27155, !noundef !1032
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !27171
  store i8 %.val16.i, ptr %i.ae, align 1, !dbg !27172, !noalias !27156
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !27169
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1, !dbg !27169
  %.val16.i.1 = load i8, ptr %i.ag, align 1, !dbg !27170, !noalias !27155, !noundef !1032
  %i.ah = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !27171
  %i.ai = getelementptr i8, ptr %i.ah, i64 1, !dbg !27171
  store i8 %.val16.i.1, ptr %i.ai, align 1, !dbg !27172, !noalias !27156
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !27169
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2, !dbg !27169
  %.val16.i.2 = load i8, ptr %i.ak, align 1, !dbg !27170, !noalias !27155, !noundef !1032
  %i.al = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !27171
  %i.am = getelementptr i8, ptr %i.al, i64 2, !dbg !27171
  store i8 %.val16.i.2, ptr %i.am, align 1, !dbg !27172, !noalias !27156
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !27169
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 3, !dbg !27169
  %.val16.i.3 = load i8, ptr %i.ao, align 1, !dbg !27170, !noalias !27155, !noundef !1032
  %i.ap = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !27171
  %i.aq = getelementptr i8, ptr %i.ap, i64 3, !dbg !27171
  store i8 %.val16.i.3, ptr %i.aq, align 1, !dbg !27172, !noalias !27156
  %i.ar = add i64 %i.ac, 4, !dbg !27174           ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4, !dbg !27175 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.d, !dbg !27173
  br i1 %i.at, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecaE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph, !dbg !27173, !llvm.loop !27150

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IteraENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldauNCINvNvBS_8for_each4callaNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecaE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ar, %vec.epilog.scalar.ph ], !dbg !27176
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !27176, !noalias !27155
  ret void, !dbg !27177
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterbEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_NtB7_9enumerateINtB2j_9EnumeratepEB1v_4fold9enumeratebuNCINvNvB1v_8for_each4callTjbENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle6bitmap11encode_boolINtNtCsgZ49sUHp3tW_5alloc3vec3VechEBP_Es_0E0E0EB3S_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef captures(none) dereferenceable(1) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !27178 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27222), !dbg !27225
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !27226
  %i.a = icmp eq ptr %0, %1, !dbg !27227
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldbuNCINvNvXs_NtB1K_9enumerateINtB2r_9EnumeratepEBS_4fold9enumeratebuNCINvNvBS_8for_each4callTjbENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle6bitmap11encode_boolINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtB1I_6CopiedBF_EEs_0E0E0E0EB3Z_.exit, label %bb.b, !dbg !27228

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !27229
  %i.c = ptrtoint ptr %0 to i64, !dbg !27229
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !27229
  %.promoted.i = load i8, ptr %2, align 1, !alias.scope !27222
  br label %bb.c, !dbg !27230

bb.c:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldbuNCINvNvXs_NtB6_9enumerateINtB1a_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumeratebuNCINvNvB1I_8for_each4callTjbENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle6bitmap11encode_boolINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtB4_6CopiedINtNtNtBa_5slice4iter4IterbEEEs_0E0E0E0B3d_.exit.i, %bb.b
  %i.e = phi i8 [ %.promoted.i, %bb.b ], [ %i.l, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldbuNCINvNvXs_NtB6_9enumerateINtB1a_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumeratebuNCINvNvB1I_8for_each4callTjbENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle6bitmap11encode_boolINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtB4_6CopiedINtNtNtBa_5slice4iter4IterbEEEs_0E0E0E0B3d_.exit.i ] ; 2 uses
  %.sroa.2.0.i = phi i64 [ %3, %bb.b ], [ %i.m, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldbuNCINvNvXs_NtB6_9enumerateINtB1a_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumeratebuNCINvNvB1I_8for_each4callTjbENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle6bitmap11encode_boolINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtB4_6CopiedINtNtNtBa_5slice4iter4IterbEEEs_0E0E0E0B3d_.exit.i ] ; 4 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.n, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldbuNCINvNvXs_NtB6_9enumerateINtB1a_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumeratebuNCINvNvB1I_8for_each4callTjbENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle6bitmap11encode_boolINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtB4_6CopiedINtNtNtBa_5slice4iter4IterbEEEs_0E0E0E0B3d_.exit.i ], !dbg !27231 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !27232
  %.val.i = load i8, ptr %i.f, align 1, !dbg !27233, !range !1301, !noalias !27222, !noundef !1032
  %i.g = trunc nuw i8 %.val.i to i1, !dbg !27234
  br i1 %i.g, label %bb.d, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldbuNCINvNvXs_NtB6_9enumerateINtB1a_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumeratebuNCINvNvB1I_8for_each4callTjbENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle6bitmap11encode_boolINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtB4_6CopiedINtNtNtBa_5slice4iter4IterbEEEs_0E0E0E0B3d_.exit.i, !dbg !27235

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %.sroa.2.0.i, 8, !dbg !27236
  br i1 %i.h, label %bb.e, label %bb.f, !dbg !27236

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr @56, i64 %.sroa.2.0.i, !dbg !27236
  %i.j = load i8, ptr %i.i, align 1, !dbg !27236, !noalias !27223, !noundef !1032
  %i.k = or i8 %i.j, %i.e, !dbg !27237            ; 2 uses
  store i8 %i.k, ptr %2, align 1, !dbg !27238, !alias.scope !27222, !noalias !27224
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldbuNCINvNvXs_NtB6_9enumerateINtB1a_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumeratebuNCINvNvB1I_8for_each4callTjbENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle6bitmap11encode_boolINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtB4_6CopiedINtNtNtBa_5slice4iter4IterbEEEs_0E0E0E0B3d_.exit.i, !dbg !27239

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.2.0.i, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #43, !dbg !27236, !noalias !27223
  unreachable, !dbg !27236

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldbuNCINvNvXs_NtB6_9enumerateINtB1a_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumeratebuNCINvNvB1I_8for_each4callTjbENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle6bitmap11encode_boolINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtB4_6CopiedINtNtNtBa_5slice4iter4IterbEEEs_0E0E0E0B3d_.exit.i: ; preds = %bb.e, %bb.c
  %i.l = phi i8 [ %i.e, %bb.c ], [ %i.k, %bb.e ]
  %i.m = add i64 %.sroa.2.0.i, 1, !dbg !27240
  %i.n = add nuw i64 %.sroa.01.0.i, 1, !dbg !27241 ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.d, !dbg !27242
  br i1 %i.o, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldbuNCINvNvXs_NtB1K_9enumerateINtB2r_9EnumeratepEBS_4fold9enumeratebuNCINvNvBS_8for_each4callTjbENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle6bitmap11encode_boolINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtB1I_6CopiedBF_EEs_0E0E0E0EB3Z_.exit, label %bb.c, !dbg !27242

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterbENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldbuNCINvNvXs_NtB1K_9enumerateINtB2r_9EnumeratepEBS_4fold9enumeratebuNCINvNvBS_8for_each4callTjbENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle6bitmap11encode_boolINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtB1I_6CopiedBF_EEs_0E0E0E0EB3Z_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6copied9copy_foldbuNCINvNvXs_NtB6_9enumerateINtB1a_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumeratebuNCINvNvB1I_8for_each4callTjbENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding10hybrid_rle6bitmap11encode_boolINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtB4_6CopiedINtNtNtBa_5slice4iter4IterbEEEs_0E0E0E0B3d_.exit.i, %bb.a
  ret void, !dbg !27243
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VecdE14extend_trustedBP_E0E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !27244 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !27305 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !27305
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !27305 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !27305
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !27305 ; 7 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !27306
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !27306
  %i.a = icmp eq ptr %0, %1, !dbg !27307
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecdE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.b, !dbg !27308

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !27309
  %i.c = ptrtoint ptr %0 to i64, !dbg !27309      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !27309      ; 2 uses
  %i.e = lshr i64 %i.d, 3, !dbg !27309            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 80, !dbg !27310
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !27310

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 3, !dbg !27310
  %i.g = add i64 %i.f, %.sroa.7.0.copyload3, !dbg !27310
  %i.h = sub i64 %i.c, %i.g, !dbg !27310
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !27310
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !27311

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 2305843009213693948      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !27311

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !27311 ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index, !dbg !27312 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !27313
  %wide.load = load <2 x double>, ptr %i.k, align 8, !dbg !27313, !noalias !27298
  %wide.load4 = load <2 x double>, ptr %i.l, align 8, !dbg !27313, !noalias !27298
  %i.m = getelementptr [8 x i8], ptr %i.j, i64 %index, !dbg !27314 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !27315
  store <2 x double> %wide.load, ptr %i.m, align 8, !dbg !27315, !noalias !27299
  store <2 x double> %wide.load4, ptr %i.n, align 8, !dbg !27315, !noalias !27299
  %index.next = add nuw i64 %index, 4, !dbg !27311 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !27316
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !27316, !llvm.loop !27287

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !27316
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecdE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %scalar.ph.preheader, !dbg !27316

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !27316        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !27316
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !27316

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !27312 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !27311 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
end_hunk_0
begin_hunk_1_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VecdE14extend_trustedBP_E0E0ECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !27312
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !27312
  %.val16.i.2 = load double, ptr %i.ae, align 8, !dbg !27313, !noalias !27298, !noundef !1032
  %i.af = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !27314
  %i.ag = getelementptr i8, ptr %i.af, i64 16, !dbg !27314
  store double %.val16.i.2, ptr %i.ag, align 8, !dbg !27315, !noalias !27299
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !27312
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24, !dbg !27312
  %.val16.i.3 = load double, ptr %i.ai, align 8, !dbg !27313, !noalias !27298, !noundef !1032
  %i.aj = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !27314
  %i.ak = getelementptr i8, ptr %i.aj, i64 24, !dbg !27314
  store double %.val16.i.3, ptr %i.ak, align 8, !dbg !27315, !noalias !27299
  %i.al = add i64 %i.w, 4, !dbg !27317            ; 2 uses
  %i.am = add nuw i64 %.sroa.01.0.i, 4, !dbg !27318 ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.e, !dbg !27316
  br i1 %i.an, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecdE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %scalar.ph, !dbg !27316, !llvm.loop !27293

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldduNCINvNvBS_8for_each4calldNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecdE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.al, %scalar.ph ], !dbg !27319
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !27319, !noalias !27298
  ret void, !dbg !27320
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterfEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VecfE14extend_trustedBP_E0E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !27321 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !27382 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !27382
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !27382 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !27382
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !27382 ; 7 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !27383
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !27383
  %i.a = icmp eq ptr %0, %1, !dbg !27384
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecfE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.b, !dbg !27385

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !27386
  %i.c = ptrtoint ptr %0 to i64, !dbg !27386      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !27386      ; 2 uses
  %i.e = lshr i64 %i.d, 2, !dbg !27386            ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 48, !dbg !27387
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !27387

vector.memcheck:                                  ; preds = %bb.b
  %i.f = shl i64 %.sroa.5.0.copyload, 2, !dbg !27387
  %i.g = add i64 %i.f, %.sroa.7.0.copyload3, !dbg !27387
  %i.h = sub i64 %i.c, %i.g, !dbg !27387
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !27387
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph, !dbg !27388

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 4611686018427387896      ; 4 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !27388

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !27388 ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !27389 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !27390
  %wide.load = load <4 x float>, ptr %i.k, align 4, !dbg !27390, !noalias !27375
  %wide.load4 = load <4 x float>, ptr %i.l, align 4, !dbg !27390, !noalias !27375
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %index, !dbg !27391 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !27392
  store <4 x float> %wide.load, ptr %i.m, align 4, !dbg !27392, !noalias !27376
  store <4 x float> %wide.load4, ptr %i.n, align 4, !dbg !27392, !noalias !27376
  %index.next = add nuw i64 %index, 8, !dbg !27388 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !27393
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !27393, !llvm.loop !27364

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !27393
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecfE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %scalar.ph.preheader, !dbg !27393

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !27393        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !27393
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !27393

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !27389 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !27388 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !27389
  %.val16.i.prol = load float, ptr %i.q, align 4, !dbg !27390, !noalias !27375, !noundef !1032
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !27391
  store float %.val16.i.prol, ptr %i.r, align 4, !dbg !27392, !noalias !27376
  %i.s = add i64 %i.p, 1, !dbg !27394             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !27395 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !27393 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !27393
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !27393, !llvm.loop !27369

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !27393
  %i.v = icmp ugt i64 %i.u, -4, !dbg !27393
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecfE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %scalar.ph, !dbg !27393

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.al, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !27389 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.am, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !27388 ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !27389
  %.val16.i = load float, ptr %i.x, align 4, !dbg !27390, !noalias !27375, !noundef !1032
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !27391
  store float %.val16.i, ptr %i.y, align 4, !dbg !27392, !noalias !27376
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !27389
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4, !dbg !27389
  %.val16.i.1 = load float, ptr %i.aa, align 4, !dbg !27390, !noalias !27375, !noundef !1032
  %i.ab = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !27391
  %i.ac = getelementptr i8, ptr %i.ab, i64 4, !dbg !27391
  store float %.val16.i.1, ptr %i.ac, align 4, !dbg !27392, !noalias !27376
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !27389
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !27389
  %.val16.i.2 = load float, ptr %i.ae, align 4, !dbg !27390, !noalias !27375, !noundef !1032
  %i.af = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !27391
  %i.ag = getelementptr i8, ptr %i.af, i64 8, !dbg !27391
  store float %.val16.i.2, ptr %i.ag, align 4, !dbg !27392, !noalias !27376
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !27389
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12, !dbg !27389
  %.val16.i.3 = load float, ptr %i.ai, align 4, !dbg !27390, !noalias !27375, !noundef !1032
  %i.aj = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !27391
  %i.ak = getelementptr i8, ptr %i.aj, i64 12, !dbg !27391
  store float %.val16.i.3, ptr %i.ak, align 4, !dbg !27392, !noalias !27376
  %i.al = add i64 %i.w, 4, !dbg !27394            ; 2 uses
  %i.am = add nuw i64 %.sroa.01.0.i, 4, !dbg !27395 ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.e, !dbg !27393
  br i1 %i.an, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecfE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %scalar.ph, !dbg !27393, !llvm.loop !27370

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldfuNCINvNvBS_8for_each4callfNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecfE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.al, %scalar.ph ], !dbg !27396
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !27396, !noalias !27375
  ret void, !dbg !27397
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i8, i8 } @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4foldThhENCINvNtB7_3map8map_foldhB28_B28_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valshINvB2N_18min_max_ignore_nanhEE0B3U_E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %0, ptr noundef %1, i8 noundef %2, i8 noundef %3) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !27398 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !27436
  %i.a = icmp eq ptr %0, %1, !dbg !27437
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldThhENCINvNtNtBY_8adapters6copied9copy_foldhB1C_NCINvNtB1N_3map8map_foldhB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valshINvB2Z_18min_max_ignore_nanhEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %iter.check, !dbg !27438

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !27439
  %i.c = ptrtoint ptr %0 to i64, !dbg !27439
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !27439      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !27440
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !27440

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !27440
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !27440

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.e = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %3, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3 = insertelement <16 x i8> poison, i8 %2, i64 0
  %broadcast.splat4 = shufflevector <16 x i8> %broadcast.splatinsert3, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !27440

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !27441 ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi5 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi6 = phi <16 x i8> [ %broadcast.splat4, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi7 = phi <16 x i8> [ %broadcast.splat4, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !27442 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !27443
  %wide.load = load <16 x i8>, ptr %i.f, align 1, !dbg !27443 ; 2 uses
  %wide.load8 = load <16 x i8>, ptr %i.g, align 1, !dbg !27443 ; 2 uses
  %i.h = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %vec.phi6, <16 x i8> %wide.load), !dbg !27444 ; 2 uses
  %i.i = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %vec.phi7, <16 x i8> %wide.load8), !dbg !27444 ; 2 uses
  %i.j = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi, <16 x i8> %wide.load), !dbg !27445 ; 2 uses
  %i.k = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %vec.phi5, <16 x i8> %wide.load8), !dbg !27445 ; 2 uses
  %index.next = add nuw i64 %index, 32, !dbg !27441 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !27446
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !27446, !llvm.loop !27431

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.umax.v16i8(<16 x i8> %i.j, <16 x i8> %i.k), !dbg !27446
  %i.m = tail call i8 @llvm.vector.reduce.umax.v16i8(<16 x i8> %rdx.minmax), !dbg !27446 ; 3 uses
  %rdx.minmax9 = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.h, <16 x i8> %i.i), !dbg !27446
  %i.n = tail call i8 @llvm.vector.reduce.umin.v16i8(<16 x i8> %rdx.minmax9), !dbg !27446 ; 3 uses
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !27446
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldThhENCINvNtNtBY_8adapters6copied9copy_foldhB1C_NCINvNtB1N_3map8map_foldhB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valshINvB2Z_18min_max_ignore_nanhEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.iter.check, !dbg !27446

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.e, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1459

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.m, %vec.epilog.iter.check ], [ %3, %vector.main.loop.iter.check ]
  %bc.merge.rdx10 = phi i8 [ %i.n, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ]
  %broadcast.splatinsert12 = insertelement <4 x i8> poison, i8 %bc.merge.rdx10, i64 0
  %broadcast.splat13 = shufflevector <4 x i8> %broadcast.splatinsert12, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <4 x i8> poison, i8 %bc.merge.rdx, i64 0
  %broadcast.splat15 = shufflevector <4 x i8> %broadcast.splatinsert14, <4 x i8> poison, <4 x i32> zeroinitializer
  %n.vec11 = and i64 %i.d, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ], !dbg !27441 ; 2 uses
  %vec.phi17 = phi <4 x i8> [ %broadcast.splat15, %vec.epilog.ph ], [ %i.q, %vec.epilog.vector.body ]
  %vec.phi18 = phi <4 x i8> [ %broadcast.splat13, %vec.epilog.ph ], [ %i.p, %vec.epilog.vector.body ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %index16, !dbg !27442
  %wide.load19 = load <4 x i8>, ptr %i.o, align 1, !dbg !27443 ; 2 uses
  %i.p = tail call <4 x i8> @llvm.umin.v4i8(<4 x i8> %vec.phi18, <4 x i8> %wide.load19), !dbg !27444 ; 2 uses
  %i.q = tail call <4 x i8> @llvm.umax.v4i8(<4 x i8> %vec.phi17, <4 x i8> %wide.load19), !dbg !27445 ; 2 uses
  %index.next20 = add nuw i64 %index16, 4, !dbg !27441 ; 2 uses
  %i.r = icmp eq i64 %index.next20, %n.vec11, !dbg !27446
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !27446, !llvm.loop !27432

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.s = tail call i8 @llvm.vector.reduce.umax.v4i8(<4 x i8> %i.q), !dbg !27446 ; 2 uses
  %i.t = tail call i8 @llvm.vector.reduce.umin.v4i8(<4 x i8> %i.p), !dbg !27446 ; 2 uses
  %cmp.n21 = icmp eq i64 %i.d, %n.vec11, !dbg !27446
  br i1 %cmp.n21, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldThhENCINvNtNtBY_8adapters6copied9copy_foldhB1C_NCINvNtB1N_3map8map_foldhB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valshINvB2Z_18min_max_ignore_nanhEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph.preheader, !dbg !27446

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.05.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ]
  %.sroa.6.0.i.ph = phi i8 [ %3, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.s, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i8 [ %2, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !27446

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.05.0.i = phi i64 [ %i.v, %vec.epilog.scalar.ph ], [ %.sroa.05.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !27441 ; 2 uses
  %.sroa.6.0.i = phi i8 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.6.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !27447
  %.sroa.02.0.i = phi i8 [ %.sroa.0.0.i1.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !27447
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.05.0.i, !dbg !27442
  %.val.i = load i8, ptr %i.u, align 1, !dbg !27443, !noundef !1032 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i = tail call i8 @llvm.umin.i8(i8 %.sroa.02.0.i, i8 %.val.i), !dbg !27444 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = tail call i8 @llvm.umax.i8(i8 %.sroa.6.0.i, i8 %.val.i), !dbg !27445 ; 2 uses
  %i.v = add nuw i64 %.sroa.05.0.i, 1, !dbg !27448 ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d, !dbg !27446
  br i1 %i.w, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldThhENCINvNtNtBY_8adapters6copied9copy_foldhB1C_NCINvNtB1N_3map8map_foldhB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valshINvB2Z_18min_max_ignore_nanhEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph, !dbg !27446, !llvm.loop !27435

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldThhENCINvNtNtBY_8adapters6copied9copy_foldhB1C_NCINvNtB1N_3map8map_foldhB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valshINvB2Z_18min_max_ignore_nanhEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.pn21.i = phi i8 [ %2, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %.sroa.0.0.i1.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn19.i = phi i8 [ %3, %bb.a ], [ %i.s, %vec.epilog.middle.block ], [ %i.m, %middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn.i = insertvalue { i8, i8 } poison, i8 %.pn21.i, 0, !dbg !27447
  %.merged.i = insertvalue { i8, i8 } %.pn.i, i8 %.pn19.i, 1, !dbg !27447
  ret { i8, i8 } %.merged.i, !dbg !27449
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterhEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VechE14extend_trustedBP_E0E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !27450 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !27512 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !27512
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !27512 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !27512
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !27512 ; 8 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !27513
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !27513
  %i.a = icmp eq ptr %0, %1, !dbg !27514
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VechE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %iter.check, !dbg !27515

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !27516      ; 3 uses
  %i.c = ptrtoint ptr %0 to i64, !dbg !27516      ; 4 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !27516      ; 8 uses
  %min.iters.check = icmp ult i64 %i.d, 4, !dbg !27517
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !27517

vector.memcheck:                                  ; preds = %iter.check
  %i.e = add i64 %.sroa.5.0.copyload, %.sroa.7.0.copyload3, !dbg !27517
  %i.f = sub i64 %i.c, %i.e, !dbg !27517
  %diff.check = icmp ugt i64 %i.f, -32, !dbg !27517
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !27518

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.d, 32, !dbg !27517
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !27517

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %i.d, 28
  %n.vec = and i64 %i.d, -32                      ; 5 uses
  %i.h = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !27517

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !27518 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %index, !dbg !27519 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !27520
  %wide.load = load <16 x i8>, ptr %i.j, align 1, !dbg !27520, !noalias !27505
  %wide.load5 = load <16 x i8>, ptr %i.k, align 1, !dbg !27520, !noalias !27505
  %i.l = getelementptr i8, ptr %i.i, i64 %index, !dbg !27521 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !27522
  store <16 x i8> %wide.load, ptr %i.l, align 1, !dbg !27522, !noalias !27506
  store <16 x i8> %wide.load5, ptr %i.m, align 1, !dbg !27522, !noalias !27506
  %index.next = add nuw i64 %index, 32, !dbg !27518 ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec, !dbg !27523
  br i1 %i.n, label %middle.block, label %vector.body, !dbg !27523, !llvm.loop !27493

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.d, %n.vec, !dbg !27523
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VechE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.iter.check, !dbg !27523

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.g, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1459

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %i.d, -4                      ; 4 uses
  %i.o = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.p = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !27518 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %index7, !dbg !27519
  %wide.load8 = load <4 x i8>, ptr %i.q, align 1, !dbg !27520, !noalias !27505
  %i.r = getelementptr i8, ptr %i.p, i64 %index7, !dbg !27521
  store <4 x i8> %wide.load8, ptr %i.r, align 1, !dbg !27522, !noalias !27506
  %index.next9 = add nuw i64 %index7, 4, !dbg !27518 ; 2 uses
  %i.s = icmp eq i64 %index.next9, %n.vec6, !dbg !27523
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !27523, !llvm.loop !27494

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.d, %n.vec6, !dbg !27523
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VechE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph.preheader, !dbg !27523

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.h, %vec.epilog.iter.check ], [ %i.o, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %i.t = sub i64 %i.b, %i.c, !dbg !27523
  %xtraiter = and i64 %i.t, 3, !dbg !27523        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !27523
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !27523

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.u = phi i64 [ %i.x, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !27519 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.y, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !27518 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i.prol, !dbg !27519
  %.val16.i.prol = load i8, ptr %i.v, align 1, !dbg !27520, !noalias !27505, !noundef !1032
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.u, !dbg !27521
  store i8 %.val16.i.prol, ptr %i.w, align 1, !dbg !27522, !noalias !27506
  %i.x = add i64 %i.u, 1, !dbg !27524             ; 3 uses
  %i.y = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !27525 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !27523 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !27523
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !27523, !llvm.loop !27499

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.x, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.x, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %i.z = sub i64 %.sroa.01.0.i.ph, %i.b, !dbg !27523
  %i.aa = add i64 %i.z, %i.c, !dbg !27523
  %i.ab = icmp ugt i64 %i.aa, -4, !dbg !27523
  br i1 %i.ab, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VechE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph, !dbg !27523

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ac = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !27519 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !27518 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !27519
  %.val16.i = load i8, ptr %i.ad, align 1, !dbg !27520, !noalias !27505, !noundef !1032
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !27521
  store i8 %.val16.i, ptr %i.ae, align 1, !dbg !27522, !noalias !27506
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !27519
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1, !dbg !27519
  %.val16.i.1 = load i8, ptr %i.ag, align 1, !dbg !27520, !noalias !27505, !noundef !1032
  %i.ah = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !27521
  %i.ai = getelementptr i8, ptr %i.ah, i64 1, !dbg !27521
  store i8 %.val16.i.1, ptr %i.ai, align 1, !dbg !27522, !noalias !27506
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !27519
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2, !dbg !27519
  %.val16.i.2 = load i8, ptr %i.ak, align 1, !dbg !27520, !noalias !27505, !noundef !1032
  %i.al = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !27521
  %i.am = getelementptr i8, ptr %i.al, i64 2, !dbg !27521
  store i8 %.val16.i.2, ptr %i.am, align 1, !dbg !27522, !noalias !27506
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i, !dbg !27519
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 3, !dbg !27519
  %.val16.i.3 = load i8, ptr %i.ao, align 1, !dbg !27520, !noalias !27505, !noundef !1032
  %i.ap = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !27521
  %i.aq = getelementptr i8, ptr %i.ap, i64 3, !dbg !27521
  store i8 %.val16.i.3, ptr %i.aq, align 1, !dbg !27522, !noalias !27506
  %i.ar = add i64 %i.ac, 4, !dbg !27524           ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4, !dbg !27525 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.d, !dbg !27523
  br i1 %i.at, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VechE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph, !dbg !27523, !llvm.loop !27500

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldhuNCINvNvBS_8for_each4callhNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VechE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.o, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ar, %vec.epilog.scalar.ph ], !dbg !27526
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !27526, !noalias !27505
  ret void, !dbg !27527
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i32, i32 } @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterlEENtNtNtB9_6traits8iterator8Iterator4foldTllENCINvNtB7_3map8map_foldlB28_B28_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valslINvB2N_18min_max_ignore_nanlEE0B3U_E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !27528 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !27565
  %i.a = icmp eq ptr %0, %1, !dbg !27566
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTllENCINvNtNtBY_8adapters6copied9copy_foldlB1C_NCINvNtB1N_3map8map_foldlB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valslINvB2Z_18min_max_ignore_nanlEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.b, !dbg !27567

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !27568
  %i.c = ptrtoint ptr %0 to i64, !dbg !27568
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !27568      ; 2 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !27568      ; 3 uses
  %min.iters.check = icmp ult i64 %i.d, 32, !dbg !27569
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph, !dbg !27569

vector.ph:                                        ; preds = %bb.b
  %n.vec = and i64 %i.e, 4611686018427387896      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat3 = shufflevector <4 x i32> %broadcast.splatinsert2, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !27569

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !27570 ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi4 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi5 = phi <4 x i32> [ %broadcast.splat3, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi6 = phi <4 x i32> [ %broadcast.splat3, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index, !dbg !27571 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !27572
  %wide.load = load <4 x i32>, ptr %i.f, align 4, !dbg !27572 ; 2 uses
  %wide.load7 = load <4 x i32>, ptr %i.g, align 4, !dbg !27572 ; 2 uses
  %i.h = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi5, <4 x i32> %wide.load), !dbg !27573 ; 2 uses
  %i.i = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi6, <4 x i32> %wide.load7), !dbg !27573 ; 2 uses
  %i.j = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load), !dbg !27574 ; 2 uses
  %i.k = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi4, <4 x i32> %wide.load7), !dbg !27574 ; 2 uses
  %index.next = add nuw i64 %index, 8, !dbg !27570 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !27575
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !27575, !llvm.loop !27561

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.j, <4 x i32> %i.k), !dbg !27575
  %i.m = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax), !dbg !27575 ; 2 uses
  %rdx.minmax8 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.h, <4 x i32> %i.i), !dbg !27575
  %i.n = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax8), !dbg !27575 ; 2 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !27575
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTllENCINvNtNtBY_8adapters6copied9copy_foldlB1C_NCINvNtB1N_3map8map_foldlB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valslINvB2Z_18min_max_ignore_nanlEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %scalar.ph.preheader, !dbg !27575

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.sroa.05.0.i.ph = phi i64 [ 0, %bb.b ], [ %n.vec, %middle.block ]
  %.sroa.6.0.i.ph = phi i32 [ %3, %bb.b ], [ %i.m, %middle.block ]
  %.sroa.02.0.i.ph = phi i32 [ %2, %bb.b ], [ %i.n, %middle.block ]
  br label %scalar.ph, !dbg !27575

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.05.0.i = phi i64 [ %i.p, %scalar.ph ], [ %.sroa.05.0.i.ph, %scalar.ph.preheader ], !dbg !27570 ; 2 uses
  %.sroa.6.0.i = phi i32 [ %.sroa.0.0.i.i.i.i.i.i, %scalar.ph ], [ %.sroa.6.0.i.ph, %scalar.ph.preheader ], !dbg !27576
  %.sroa.02.0.i = phi i32 [ %.sroa.0.0.i1.i.i.i.i.i, %scalar.ph ], [ %.sroa.02.0.i.ph, %scalar.ph.preheader ], !dbg !27576
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.05.0.i, !dbg !27571
  %.val.i = load i32, ptr %i.o, align 4, !dbg !27572, !noundef !1032 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i = tail call i32 @llvm.smin.i32(i32 %.sroa.02.0.i, i32 %.val.i), !dbg !27573 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %.sroa.6.0.i, i32 %.val.i), !dbg !27574 ; 2 uses
  %i.p = add nuw i64 %.sroa.05.0.i, 1, !dbg !27577 ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.e, !dbg !27575
  br i1 %i.q, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTllENCINvNtNtBY_8adapters6copied9copy_foldlB1C_NCINvNtB1N_3map8map_foldlB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valslINvB2Z_18min_max_ignore_nanlEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %scalar.ph, !dbg !27575, !llvm.loop !27564

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTllENCINvNtNtBY_8adapters6copied9copy_foldlB1C_NCINvNtB1N_3map8map_foldlB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valslINvB2Z_18min_max_ignore_nanlEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.pn20.i = phi i32 [ %2, %bb.a ], [ %i.n, %middle.block ], [ %.sroa.0.0.i1.i.i.i.i.i, %scalar.ph ]
  %.pn18.i = phi i32 [ %3, %bb.a ], [ %i.m, %middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %scalar.ph ]
  %.pn.i = insertvalue { i32, i32 } poison, i32 %.pn20.i, 0, !dbg !27576
  %.merged.i = insertvalue { i32, i32 } %.pn.i, i32 %.pn18.i, 1, !dbg !27576
  ret { i32, i32 } %.merged.i, !dbg !27578
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterlEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldlNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256uNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain30decode_no_incompact_predicateslB2x_INtB3v_22ClosureDecoderFunctionlB2x_NCNvNtB3x_6simple18page_iter_to_arrays6_0EEs2_0NCINvNvB1v_8for_each4callB2x_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB7j_3VecB2x_E14extend_trustedINtB2e_3MapBP_B3o_EE0E0E0EB3D_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !27579 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !27648 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !27648
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !27648 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !27648
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !27648 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !27649
  %i.a = icmp eq ptr %0, %1, !dbg !27650
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterlENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldluNCINvNtB1K_3map8map_foldlNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256uNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain30decode_no_incompact_predicateslB2G_INtB3E_22ClosureDecoderFunctionlB2G_NCNvNtB3G_6simple18page_iter_to_arrays6_0EEs2_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB7r_3VecB2G_E14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB3x_EE0E0E0E0EB3M_.exit, label %bb.b, !dbg !27651

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !27652
  %i.c = ptrtoint ptr %0 to i64, !dbg !27652
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !27652      ; 3 uses
  %i.e = lshr exact i64 %i.d, 2, !dbg !27652      ; 2 uses
  %i.f = icmp eq i64 %i.d, 4, !dbg !27653
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !27653

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 4611686018427387902, !dbg !27653
  br label %bb.c, !dbg !27653

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.r, %bb.c ], !dbg !27654 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.s, %bb.c ], !dbg !27655 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !27654
  %.val16.i = load i32, ptr %i.h, align 4, !dbg !27656, !noalias !27640, !noundef !1032
  %i.i = sext i32 %.val16.i to i128, !dbg !27657  ; 2 uses
  %i.j = ashr i128 %i.i, 127, !dbg !27658
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !27659 ; 2 uses
  store i128 %i.i, ptr %i.k, align 16, !dbg !27660, !noalias !27641
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !27660
  store i128 %i.j, ptr %.sroa.43.0..sroa_idx.i.i.i, align 16, !dbg !27660, !noalias !27641
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !27654
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4, !dbg !27654
end_hunk_1
begin_hunk_2_@_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItermEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VecmE14extend_trustedBP_E0E0ECsfISxE4fmY1Y_14polars_parquet:bb.a
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !28412
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !28412, !llvm.loop !28383

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !28412
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecmE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %scalar.ph.preheader, !dbg !28412

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.i, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !28412        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !28412
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !28412

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.p = phi i64 [ %i.s, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ], !dbg !28408 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.t, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], !dbg !28407 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !28408
  %.val16.i.prol = load i32, ptr %i.q, align 4, !dbg !28409, !noalias !28394, !noundef !1032
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.p, !dbg !28410
  store i32 %.val16.i.prol, ptr %i.r, align 4, !dbg !28411, !noalias !28395
  %i.s = add i64 %i.p, 1, !dbg !28413             ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !28414 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !28412 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !28412
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !dbg !28412, !llvm.loop !28388

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.s, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.t, %scalar.ph.prol ]
  %i.u = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !28412
  %i.v = icmp ugt i64 %i.u, -4, !dbg !28412
  br i1 %i.v, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecmE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %scalar.ph, !dbg !28412

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.w = phi i64 [ %i.al, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ], !dbg !28408 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.am, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ], !dbg !28407 ; 5 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !28408
  %.val16.i = load i32, ptr %i.x, align 4, !dbg !28409, !noalias !28394, !noundef !1032
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !28410
  store i32 %.val16.i, ptr %i.y, align 4, !dbg !28411, !noalias !28395
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !28408
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4, !dbg !28408
  %.val16.i.1 = load i32, ptr %i.aa, align 4, !dbg !28409, !noalias !28394, !noundef !1032
  %i.ab = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !28410
  %i.ac = getelementptr i8, ptr %i.ab, i64 4, !dbg !28410
  store i32 %.val16.i.1, ptr %i.ac, align 4, !dbg !28411, !noalias !28395
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !28408
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8, !dbg !28408
  %.val16.i.2 = load i32, ptr %i.ae, align 4, !dbg !28409, !noalias !28394, !noundef !1032
  %i.af = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !28410
  %i.ag = getelementptr i8, ptr %i.af, i64 8, !dbg !28410
  store i32 %.val16.i.2, ptr %i.ag, align 4, !dbg !28411, !noalias !28395
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !28408
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12, !dbg !28408
  %.val16.i.3 = load i32, ptr %i.ai, align 4, !dbg !28409, !noalias !28394, !noundef !1032
  %i.aj = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.w, !dbg !28410
  %i.ak = getelementptr i8, ptr %i.aj, i64 12, !dbg !28410
  store i32 %.val16.i.3, ptr %i.ak, align 4, !dbg !28411, !noalias !28395
  %i.al = add i64 %i.w, 4, !dbg !28413            ; 2 uses
  %i.am = add nuw i64 %.sroa.01.0.i, 4, !dbg !28414 ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.e, !dbg !28412
  br i1 %i.an, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecmE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %scalar.ph, !dbg !28412, !llvm.loop !28389

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldmuNCINvNvBS_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecmE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.al, %scalar.ph ], !dbg !28415
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !28415, !noalias !28394
  ret void, !dbg !28416
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IternEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VecnE14extend_trustedBP_E0E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !28417 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !28475 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !28475
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !28475 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !28475
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !28475 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !28476
  %i.a = icmp eq ptr %0, %1, !dbg !28477
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecnE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.b, !dbg !28478

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !28479
  %i.c = ptrtoint ptr %0 to i64, !dbg !28479
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !28479      ; 3 uses
  %i.e = lshr exact i64 %i.d, 4, !dbg !28479      ; 2 uses
  %i.f = icmp eq i64 %i.d, 16, !dbg !28480
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !28480

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 1152921504606846974, !dbg !28480
  br label %bb.c, !dbg !28480

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.n, %bb.c ], !dbg !28481 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.o, %bb.c ], !dbg !28482 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !28481
  %.val16.i = load i128, ptr %i.h, align 16, !dbg !28483, !noalias !28468, !noundef !1032
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !28484
  store i128 %.val16.i, ptr %i.i, align 16, !dbg !28485, !noalias !28469
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !28481
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !28481
  %.val16.i.1 = load i128, ptr %i.k, align 16, !dbg !28483, !noalias !28468, !noundef !1032
  %i.l = getelementptr [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.g, !dbg !28484
  %i.m = getelementptr i8, ptr %i.l, i64 16, !dbg !28484
  store i128 %.val16.i.1, ptr %i.m, align 16, !dbg !28485, !noalias !28469
  %i.n = add i64 %i.g, 2, !dbg !28486             ; 3 uses
  %i.o = add nuw i64 %.sroa.01.0.i, 2, !dbg !28487 ; 2 uses
  %niter.next.1 = add i64 %niter, 2, !dbg !28488  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter, !dbg !28488
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecnE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa, label %bb.c, !dbg !28488

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecnE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.p = and i64 %i.d, 16, !dbg !28488
  %lcmp.mod.not = icmp eq i64 %i.p, 0, !dbg !28488
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecnE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %.epil.preheader, !dbg !28488

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecnE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecnE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.o, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecnE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.e to i1, !dbg !28488
  tail call void @llvm.assume(i1 %lcmp.mod3), !dbg !28488
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i.epil.init, !dbg !28481
  %.val16.i.epil = load i128, ptr %i.q, align 16, !dbg !28483, !noalias !28468, !noundef !1032
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init, !dbg !28484
  store i128 %.val16.i.epil, ptr %i.r, align 16, !dbg !28485, !noalias !28469
  %i.s = add i64 %.epil.init, 1, !dbg !28486
  br label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecnE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecnE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecnE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IternENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldnuNCINvNvBS_8for_each4callnNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecnE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa ], [ %i.s, %.epil.preheader ], !dbg !28489
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !28489, !noalias !28468
  ret void, !dbg !28490
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i16, i16 } @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4foldTssENCINvNtB7_3map8map_foldsB28_B28_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valssINvB2N_18min_max_ignore_nansEE0B3U_E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2, i16 noundef %3) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !28491 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !28529
  %i.a = icmp eq ptr %0, %1, !dbg !28530
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTssENCINvNtNtBY_8adapters6copied9copy_foldsB1C_NCINvNtB1N_3map8map_foldsB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valssINvB2Z_18min_max_ignore_nansEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %iter.check, !dbg !28531

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !28532
  %i.c = ptrtoint ptr %0 to i64, !dbg !28532
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !28532      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !28532      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !28533
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !28533

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !28533
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !28533

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %3, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3 = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat4 = shufflevector <8 x i16> %broadcast.splatinsert3, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !28533

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28534 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi5 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi6 = phi <8 x i16> [ %broadcast.splat4, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi7 = phi <8 x i16> [ %broadcast.splat4, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !28535 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !28536
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !28536 ; 2 uses
  %wide.load8 = load <8 x i16>, ptr %i.g, align 2, !dbg !28536 ; 2 uses
  %i.h = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi6, <8 x i16> %wide.load), !dbg !28537 ; 2 uses
  %i.i = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %vec.phi7, <8 x i16> %wide.load8), !dbg !28537 ; 2 uses
  %i.j = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !28538 ; 2 uses
  %i.k = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %vec.phi5, <8 x i16> %wide.load8), !dbg !28538 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !28534 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !28539
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !28539, !llvm.loop !28524

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.j, <8 x i16> %i.k), !dbg !28539
  %i.m = tail call i16 @llvm.vector.reduce.smax.v8i16(<8 x i16> %rdx.minmax), !dbg !28539 ; 3 uses
  %rdx.minmax9 = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.h, <8 x i16> %i.i), !dbg !28539
  %i.n = tail call i16 @llvm.vector.reduce.smin.v8i16(<8 x i16> %rdx.minmax9), !dbg !28539 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !28539
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTssENCINvNtNtBY_8adapters6copied9copy_foldsB1C_NCINvNtB1N_3map8map_foldsB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valssINvB2Z_18min_max_ignore_nansEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.iter.check, !dbg !28539

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.o = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1451

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.m, %vec.epilog.iter.check ], [ %3, %vector.main.loop.iter.check ]
  %bc.merge.rdx10 = phi i16 [ %i.n, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ]
  %broadcast.splatinsert12 = insertelement <4 x i16> poison, i16 %bc.merge.rdx10, i64 0
  %broadcast.splat13 = shufflevector <4 x i16> %broadcast.splatinsert12, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat15 = shufflevector <4 x i16> %broadcast.splatinsert14, <4 x i16> poison, <4 x i32> zeroinitializer
  %n.vec11 = and i64 %i.e, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ], !dbg !28534 ; 2 uses
  %vec.phi17 = phi <4 x i16> [ %broadcast.splat15, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %vec.phi18 = phi <4 x i16> [ %broadcast.splat13, %vec.epilog.ph ], [ %i.q, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index16, !dbg !28535
  %wide.load19 = load <4 x i16>, ptr %i.p, align 2, !dbg !28536 ; 2 uses
  %i.q = tail call <4 x i16> @llvm.smin.v4i16(<4 x i16> %vec.phi18, <4 x i16> %wide.load19), !dbg !28537 ; 2 uses
  %i.r = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %vec.phi17, <4 x i16> %wide.load19), !dbg !28538 ; 2 uses
  %index.next20 = add nuw i64 %index16, 4, !dbg !28534 ; 2 uses
  %i.s = icmp eq i64 %index.next20, %n.vec11, !dbg !28539
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !28539, !llvm.loop !28525

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.smax.v4i16(<4 x i16> %i.r), !dbg !28539 ; 2 uses
  %i.u = tail call i16 @llvm.vector.reduce.smin.v4i16(<4 x i16> %i.q), !dbg !28539 ; 2 uses
  %cmp.n21 = icmp eq i64 %i.e, %n.vec11, !dbg !28539
  br i1 %cmp.n21, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTssENCINvNtNtBY_8adapters6copied9copy_foldsB1C_NCINvNtB1N_3map8map_foldsB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valssINvB2Z_18min_max_ignore_nansEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph.preheader, !dbg !28539

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.05.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ]
  %.sroa.6.0.i.ph = phi i16 [ %3, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !28539

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.05.0.i = phi i64 [ %i.w, %vec.epilog.scalar.ph ], [ %.sroa.05.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28534 ; 2 uses
  %.sroa.6.0.i = phi i16 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.6.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28540
  %.sroa.02.0.i = phi i16 [ %.sroa.0.0.i1.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28540
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.05.0.i, !dbg !28535
  %.val.i = load i16, ptr %i.v, align 2, !dbg !28536, !noundef !1032 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i = tail call i16 @llvm.smin.i16(i16 %.sroa.02.0.i, i16 %.val.i), !dbg !28537 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = tail call i16 @llvm.smax.i16(i16 %.sroa.6.0.i, i16 %.val.i), !dbg !28538 ; 2 uses
  %i.w = add nuw i64 %.sroa.05.0.i, 1, !dbg !28541 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.e, !dbg !28539
  br i1 %i.x, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTssENCINvNtNtBY_8adapters6copied9copy_foldsB1C_NCINvNtB1N_3map8map_foldsB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valssINvB2Z_18min_max_ignore_nansEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph, !dbg !28539, !llvm.loop !28528

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTssENCINvNtNtBY_8adapters6copied9copy_foldsB1C_NCINvNtB1N_3map8map_foldsB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valssINvB2Z_18min_max_ignore_nansEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.pn21.i = phi i16 [ %2, %bb.a ], [ %i.u, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %.sroa.0.0.i1.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn19.i = phi i16 [ %3, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.m, %middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn.i = insertvalue { i16, i16 } poison, i16 %.pn21.i, 0, !dbg !28540
  %.merged.i = insertvalue { i16, i16 } %.pn.i, i16 %.pn19.i, 1, !dbg !28540
  ret { i16, i16 } %.merged.i, !dbg !28542
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItersEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VecsE14extend_trustedBP_E0E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !28543 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !28605 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !28605
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !28605 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !28605
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !28605 ; 8 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !28606
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !28606
  %i.a = icmp eq ptr %0, %1, !dbg !28607
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecsE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %iter.check, !dbg !28608

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !28609
  %i.c = ptrtoint ptr %0 to i64, !dbg !28609      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !28609      ; 4 uses
  %i.e = lshr i64 %i.d, 1, !dbg !28609            ; 7 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !28610
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !28610

vector.memcheck:                                  ; preds = %iter.check
  %i.f = shl i64 %.sroa.5.0.copyload, 1, !dbg !28610
  %i.g = add i64 %i.f, %.sroa.7.0.copyload3, !dbg !28610
  %i.h = sub i64 %i.c, %i.g, !dbg !28610
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !28610
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !28611

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.d, 32, !dbg !28610
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !28610

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 5 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !28610

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28611 ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !28612 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !28613
  %wide.load = load <8 x i16>, ptr %i.k, align 2, !dbg !28613, !noalias !28598
  %wide.load5 = load <8 x i16>, ptr %i.l, align 2, !dbg !28613, !noalias !28598
  %i.m = getelementptr [2 x i8], ptr %i.j, i64 %index, !dbg !28614 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !28615
  store <8 x i16> %wide.load, ptr %i.m, align 2, !dbg !28615, !noalias !28599
  store <8 x i16> %wide.load5, ptr %i.n, align 2, !dbg !28615, !noalias !28599
  %index.next = add nuw i64 %index, 16, !dbg !28611 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !28616
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !28616, !llvm.loop !28586

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !28616
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecsE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.iter.check, !dbg !28616

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.p = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1451

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %i.e, 9223372036854775804     ; 4 uses
  %i.q = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.r = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !28611 ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index7, !dbg !28612
  %wide.load8 = load <4 x i16>, ptr %i.s, align 2, !dbg !28613, !noalias !28598
  %i.t = getelementptr [2 x i8], ptr %i.r, i64 %index7, !dbg !28614
  store <4 x i16> %wide.load8, ptr %i.t, align 2, !dbg !28615, !noalias !28599
  %index.next9 = add nuw i64 %index7, 4, !dbg !28611 ; 2 uses
  %i.u = icmp eq i64 %index.next9, %n.vec6, !dbg !28616
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !28616, !llvm.loop !28587

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.e, %n.vec6, !dbg !28616
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecsE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph.preheader, !dbg !28616

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !28616        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !28616
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !28616

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.v = phi i64 [ %i.y, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28612 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.z, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28611 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !28612
  %.val16.i.prol = load i16, ptr %i.w, align 2, !dbg !28613, !noalias !28598, !noundef !1032
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.v, !dbg !28614
  store i16 %.val16.i.prol, ptr %i.x, align 2, !dbg !28615, !noalias !28599
  %i.y = add i64 %i.v, 1, !dbg !28617             ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !28618 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !28616 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !28616
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !28616, !llvm.loop !28592

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.z, %vec.epilog.scalar.ph.prol ]
  %i.aa = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !28616
  %i.ab = icmp ugt i64 %i.aa, -4, !dbg !28616
  br i1 %i.ab, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecsE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph, !dbg !28616

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ac = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !28612 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !28611 ; 5 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !28612
  %.val16.i = load i16, ptr %i.ad, align 2, !dbg !28613, !noalias !28598, !noundef !1032
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !28614
  store i16 %.val16.i, ptr %i.ae, align 2, !dbg !28615, !noalias !28599
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !28612
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2, !dbg !28612
  %.val16.i.1 = load i16, ptr %i.ag, align 2, !dbg !28613, !noalias !28598, !noundef !1032
  %i.ah = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !28614
  %i.ai = getelementptr i8, ptr %i.ah, i64 2, !dbg !28614
  store i16 %.val16.i.1, ptr %i.ai, align 2, !dbg !28615, !noalias !28599
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !28612
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4, !dbg !28612
  %.val16.i.2 = load i16, ptr %i.ak, align 2, !dbg !28613, !noalias !28598, !noundef !1032
  %i.al = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !28614
  %i.am = getelementptr i8, ptr %i.al, i64 4, !dbg !28614
  store i16 %.val16.i.2, ptr %i.am, align 2, !dbg !28615, !noalias !28599
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !28612
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 6, !dbg !28612
  %.val16.i.3 = load i16, ptr %i.ao, align 2, !dbg !28613, !noalias !28598, !noundef !1032
  %i.ap = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !28614
  %i.aq = getelementptr i8, ptr %i.ap, i64 6, !dbg !28614
  store i16 %.val16.i.3, ptr %i.aq, align 2, !dbg !28615, !noalias !28599
  %i.ar = add i64 %i.ac, 4, !dbg !28617           ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4, !dbg !28618 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.e, !dbg !28616
  br i1 %i.at, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecsE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph, !dbg !28616, !llvm.loop !28593

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItersENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldsuNCINvNvBS_8for_each4callsNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VecsE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ar, %vec.epilog.scalar.ph ], !dbg !28619
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !28619, !noalias !28598
  ret void, !dbg !28620
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i16, i16 } @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4foldTttENCINvNtB7_3map8map_foldtB28_B28_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valstINvB2N_18min_max_ignore_nantEE0B3U_E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %0, ptr noundef %1, i16 noundef %2, i16 noundef %3) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !28621 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !28659
  %i.a = icmp eq ptr %0, %1, !dbg !28660
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTttENCINvNtNtBY_8adapters6copied9copy_foldtB1C_NCINvNtB1N_3map8map_foldtB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valstINvB2Z_18min_max_ignore_nantEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %iter.check, !dbg !28661

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !28662
  %i.c = ptrtoint ptr %0 to i64, !dbg !28662
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !28662      ; 4 uses
  %i.e = lshr exact i64 %i.d, 1, !dbg !28662      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !28663
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !28663

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2 = icmp ult i64 %i.d, 32, !dbg !28663
  br i1 %min.iters.check2, label %vec.epilog.ph, label %vector.ph, !dbg !28663

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %3, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert3 = insertelement <8 x i16> poison, i16 %2, i64 0
  %broadcast.splat4 = shufflevector <8 x i16> %broadcast.splatinsert3, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body, !dbg !28663

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28664 ; 2 uses
  %vec.phi = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi5 = phi <8 x i16> [ %broadcast.splat, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi6 = phi <8 x i16> [ %broadcast.splat4, %vector.ph ], [ %i.h, %vector.body ]
  %vec.phi7 = phi <8 x i16> [ %broadcast.splat4, %vector.ph ], [ %i.i, %vector.body ]
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !28665 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !28666
  %wide.load = load <8 x i16>, ptr %i.f, align 2, !dbg !28666 ; 2 uses
  %wide.load8 = load <8 x i16>, ptr %i.g, align 2, !dbg !28666 ; 2 uses
  %i.h = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %vec.phi6, <8 x i16> %wide.load), !dbg !28667 ; 2 uses
  %i.i = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %vec.phi7, <8 x i16> %wide.load8), !dbg !28667 ; 2 uses
  %i.j = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi, <8 x i16> %wide.load), !dbg !28668 ; 2 uses
  %i.k = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %vec.phi5, <8 x i16> %wide.load8), !dbg !28668 ; 2 uses
  %index.next = add nuw i64 %index, 16, !dbg !28664 ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec, !dbg !28669
  br i1 %i.l, label %middle.block, label %vector.body, !dbg !28669, !llvm.loop !28654

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.j, <8 x i16> %i.k), !dbg !28669
  %i.m = tail call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax), !dbg !28669 ; 3 uses
  %rdx.minmax9 = tail call <8 x i16> @llvm.umin.v8i16(<8 x i16> %i.h, <8 x i16> %i.i), !dbg !28669
  %i.n = tail call i16 @llvm.vector.reduce.umin.v8i16(<8 x i16> %rdx.minmax9), !dbg !28669 ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !28669
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTttENCINvNtNtBY_8adapters6copied9copy_foldtB1C_NCINvNtB1N_3map8map_foldtB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valstINvB2Z_18min_max_ignore_nantEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.iter.check, !dbg !28669

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.o = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1451

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.m, %vec.epilog.iter.check ], [ %3, %vector.main.loop.iter.check ]
  %bc.merge.rdx10 = phi i16 [ %i.n, %vec.epilog.iter.check ], [ %2, %vector.main.loop.iter.check ]
  %broadcast.splatinsert12 = insertelement <4 x i16> poison, i16 %bc.merge.rdx10, i64 0
  %broadcast.splat13 = shufflevector <4 x i16> %broadcast.splatinsert12, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <4 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat15 = shufflevector <4 x i16> %broadcast.splatinsert14, <4 x i16> poison, <4 x i32> zeroinitializer
  %n.vec11 = and i64 %i.e, 9223372036854775804    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ], !dbg !28664 ; 2 uses
  %vec.phi17 = phi <4 x i16> [ %broadcast.splat15, %vec.epilog.ph ], [ %i.r, %vec.epilog.vector.body ]
  %vec.phi18 = phi <4 x i16> [ %broadcast.splat13, %vec.epilog.ph ], [ %i.q, %vec.epilog.vector.body ]
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index16, !dbg !28665
  %wide.load19 = load <4 x i16>, ptr %i.p, align 2, !dbg !28666 ; 2 uses
  %i.q = tail call <4 x i16> @llvm.umin.v4i16(<4 x i16> %vec.phi18, <4 x i16> %wide.load19), !dbg !28667 ; 2 uses
  %i.r = tail call <4 x i16> @llvm.umax.v4i16(<4 x i16> %vec.phi17, <4 x i16> %wide.load19), !dbg !28668 ; 2 uses
  %index.next20 = add nuw i64 %index16, 4, !dbg !28664 ; 2 uses
  %i.s = icmp eq i64 %index.next20, %n.vec11, !dbg !28669
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !28669, !llvm.loop !28655

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.t = tail call i16 @llvm.vector.reduce.umax.v4i16(<4 x i16> %i.r), !dbg !28669 ; 2 uses
  %i.u = tail call i16 @llvm.vector.reduce.umin.v4i16(<4 x i16> %i.q), !dbg !28669 ; 2 uses
  %cmp.n21 = icmp eq i64 %i.e, %n.vec11, !dbg !28669
  br i1 %cmp.n21, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTttENCINvNtNtBY_8adapters6copied9copy_foldtB1C_NCINvNtB1N_3map8map_foldtB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valstINvB2Z_18min_max_ignore_nantEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph.preheader, !dbg !28669

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.05.0.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec11, %vec.epilog.middle.block ]
  %.sroa.6.0.i.ph = phi i16 [ %3, %iter.check ], [ %i.m, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i16 [ %2, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph, !dbg !28669

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.05.0.i = phi i64 [ %i.w, %vec.epilog.scalar.ph ], [ %.sroa.05.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28664 ; 2 uses
  %.sroa.6.0.i = phi i16 [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.6.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28670
  %.sroa.02.0.i = phi i16 [ %.sroa.0.0.i1.i.i.i.i.i, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28670
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.05.0.i, !dbg !28665
  %.val.i = load i16, ptr %i.v, align 2, !dbg !28666, !noundef !1032 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i = tail call i16 @llvm.umin.i16(i16 %.sroa.02.0.i, i16 %.val.i), !dbg !28667 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = tail call i16 @llvm.umax.i16(i16 %.sroa.6.0.i, i16 %.val.i), !dbg !28668 ; 2 uses
  %i.w = add nuw i64 %.sroa.05.0.i, 1, !dbg !28671 ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.e, !dbg !28669
  br i1 %i.x, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTttENCINvNtNtBY_8adapters6copied9copy_foldtB1C_NCINvNtB1N_3map8map_foldtB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valstINvB2Z_18min_max_ignore_nantEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph, !dbg !28669, !llvm.loop !28658

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTttENCINvNtNtBY_8adapters6copied9copy_foldtB1C_NCINvNtB1N_3map8map_foldtB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valstINvB2Z_18min_max_ignore_nantEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %.pn21.i = phi i16 [ %2, %bb.a ], [ %i.u, %vec.epilog.middle.block ], [ %i.n, %middle.block ], [ %.sroa.0.0.i1.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn19.i = phi i16 [ %3, %bb.a ], [ %i.t, %vec.epilog.middle.block ], [ %i.m, %middle.block ], [ %.sroa.0.0.i.i.i.i.i.i, %vec.epilog.scalar.ph ]
  %.pn.i = insertvalue { i16, i16 } poison, i16 %.pn21.i, 0, !dbg !28670
  %.merged.i = insertvalue { i16, i16 } %.pn.i, i16 %.pn19.i, 1, !dbg !28670
  ret { i16, i16 } %.merged.i, !dbg !28672
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4ItertEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2I_3VectE14extend_trustedBP_E0E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !28673 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !28735 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !28735
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !28735 ; 8 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !28735
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !28735 ; 8 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64, !dbg !28736
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !28736
  %i.a = icmp eq ptr %0, %1, !dbg !28737
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VectE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %iter.check, !dbg !28738

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !28739
  %i.c = ptrtoint ptr %0 to i64, !dbg !28739      ; 2 uses
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !28739      ; 4 uses
  %i.e = lshr i64 %i.d, 1, !dbg !28739            ; 7 uses
  %min.iters.check = icmp ult i64 %i.d, 8, !dbg !28740
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck, !dbg !28740

vector.memcheck:                                  ; preds = %iter.check
  %i.f = shl i64 %.sroa.5.0.copyload, 1, !dbg !28740
  %i.g = add i64 %i.f, %.sroa.7.0.copyload3, !dbg !28740
  %i.h = sub i64 %i.c, %i.g, !dbg !28740
  %diff.check = icmp ugt i64 %i.h, -32, !dbg !28740
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check, !dbg !28741

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check4 = icmp ult i64 %i.d, 32, !dbg !28740
  br i1 %min.iters.check4, label %vec.epilog.ph, label %vector.ph, !dbg !28740

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.e, 9223372036854775792      ; 5 uses
  %i.i = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.j = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body, !dbg !28740

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !28741 ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index, !dbg !28742 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !28743
  %wide.load = load <8 x i16>, ptr %i.k, align 2, !dbg !28743, !noalias !28728
  %wide.load5 = load <8 x i16>, ptr %i.l, align 2, !dbg !28743, !noalias !28728
  %i.m = getelementptr [2 x i8], ptr %i.j, i64 %index, !dbg !28744 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !28745
  store <8 x i16> %wide.load, ptr %i.m, align 2, !dbg !28745, !noalias !28729
  store <8 x i16> %wide.load5, ptr %i.n, align 2, !dbg !28745, !noalias !28729
  %index.next = add nuw i64 %index, 16, !dbg !28741 ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec, !dbg !28746
  br i1 %i.o, label %middle.block, label %vector.body, !dbg !28746, !llvm.loop !28716

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !28746
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VectE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.iter.check, !dbg !28746

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.p = and i64 %i.d, 24
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1451

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %i.e, 9223372036854775804     ; 4 uses
  %i.q = add i64 %.sroa.5.0.copyload, %n.vec6     ; 2 uses
  %i.r = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next9, %vec.epilog.vector.body ], !dbg !28741 ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %index7, !dbg !28742
  %wide.load8 = load <4 x i16>, ptr %i.s, align 2, !dbg !28743, !noalias !28728
  %i.t = getelementptr [2 x i8], ptr %i.r, i64 %index7, !dbg !28744
  store <4 x i16> %wide.load8, ptr %i.t, align 2, !dbg !28745, !noalias !28729
  %index.next9 = add nuw i64 %index7, 4, !dbg !28741 ; 2 uses
  %i.u = icmp eq i64 %index.next9, %n.vec6, !dbg !28746
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !dbg !28746, !llvm.loop !28717

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n10 = icmp eq i64 %i.e, %n.vec6, !dbg !28746
  br i1 %cmp.n10, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VectE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph.preheader, !dbg !28746

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %iter.check ], [ %.sroa.5.0.copyload, %vector.memcheck ], [ %i.i, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec6, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.e, 3, !dbg !28746        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !28746
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !28746

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.v = phi i64 [ %i.y, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28742 ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.z, %vec.epilog.scalar.ph.prol ], [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], !dbg !28741 ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i.prol, !dbg !28742
  %.val16.i.prol = load i16, ptr %i.w, align 2, !dbg !28743, !noalias !28728, !noundef !1032
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.v, !dbg !28744
  store i16 %.val16.i.prol, ptr %i.x, align 2, !dbg !28745, !noalias !28729
  %i.y = add i64 %i.v, 1, !dbg !28747             ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.prol, 1, !dbg !28748 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !28746 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !28746
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !dbg !28746, !llvm.loop !28722

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.z, %vec.epilog.scalar.ph.prol ]
  %i.aa = sub nsw i64 %.sroa.01.0.i.ph, %i.e, !dbg !28746
  %i.ab = icmp ugt i64 %i.aa, -4, !dbg !28746
  br i1 %i.ab, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VectE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph, !dbg !28746

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ac = phi i64 [ %i.ar, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !28742 ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.as, %vec.epilog.scalar.ph ], [ %.sroa.01.0.i.unr, %vec.epilog.scalar.ph.prol.loopexit ], !dbg !28741 ; 5 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !28742
  %.val16.i = load i16, ptr %i.ad, align 2, !dbg !28743, !noalias !28728, !noundef !1032
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !28744
  store i16 %.val16.i, ptr %i.ae, align 2, !dbg !28745, !noalias !28729
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !28742
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2, !dbg !28742
  %.val16.i.1 = load i16, ptr %i.ag, align 2, !dbg !28743, !noalias !28728, !noundef !1032
  %i.ah = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !28744
  %i.ai = getelementptr i8, ptr %i.ah, i64 2, !dbg !28744
  store i16 %.val16.i.1, ptr %i.ai, align 2, !dbg !28745, !noalias !28729
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !28742
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4, !dbg !28742
  %.val16.i.2 = load i16, ptr %i.ak, align 2, !dbg !28743, !noalias !28728, !noundef !1032
  %i.al = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !28744
  %i.am = getelementptr i8, ptr %i.al, i64 4, !dbg !28744
  store i16 %.val16.i.2, ptr %i.am, align 2, !dbg !28745, !noalias !28729
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !28742
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 6, !dbg !28742
  %.val16.i.3 = load i16, ptr %i.ao, align 2, !dbg !28743, !noalias !28728, !noundef !1032
  %i.ap = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac, !dbg !28744
  %i.aq = getelementptr i8, ptr %i.ap, i64 6, !dbg !28744
  store i16 %.val16.i.3, ptr %i.aq, align 2, !dbg !28745, !noalias !28729
  %i.ar = add i64 %i.ac, 4, !dbg !28747           ; 2 uses
  %i.as = add nuw i64 %.sroa.01.0.i, 4, !dbg !28748 ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.e, !dbg !28746
  br i1 %i.at, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VectE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %vec.epilog.scalar.ph, !dbg !28746, !llvm.loop !28723

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldtuNCINvNvBS_8for_each4calltNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB2P_3VectE14extend_trustedINtB1I_6CopiedBF_EE0E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.q, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.lcssa.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.ar, %vec.epilog.scalar.ph ], !dbg !28749
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !dbg !28749, !noalias !28728
  ret void, !dbg !28750
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i64, i64 } @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterxEENtNtNtB9_6traits8iterator8Iterator4foldTxxENCINvNtB7_3map8map_foldxB28_B28_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2N_18min_max_ignore_nanxEE0B3U_E0ECsfISxE4fmY1Y_14polars_parquet(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #9 personality ptr @rust_eh_personality !dbg !28751 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !28787
  %i.a = icmp eq ptr %0, %1, !dbg !28788
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_18min_max_ignore_nanxEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.b, !dbg !28789

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !28790
  %i.c = ptrtoint ptr %0 to i64, !dbg !28790
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !28790      ; 2 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !28790      ; 2 uses
  %xtraiter = and i64 %i.e, 3, !dbg !28791        ; 3 uses
  %i.f = icmp ult i64 %i.d, 32, !dbg !28791
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !28791

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693948, !dbg !28791
  br label %bb.c, !dbg !28791

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.05.0.i = phi i64 [ 0, %.new ], [ %i.n, %bb.c ], !dbg !28792 ; 5 uses
  %.sroa.6.0.i = phi i64 [ %3, %.new ], [ %.sroa.0.0.i.i.i.i.i.i.3, %bb.c ], !dbg !28793
  %.sroa.02.0.i = phi i64 [ %2, %.new ], [ %.sroa.0.0.i1.i.i.i.i.i.3, %bb.c ], !dbg !28793
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.i, !dbg !28794
  %.val.i = load i64, ptr %i.g, align 8, !dbg !28795, !noundef !1032 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %.sroa.02.0.i, i64 %.val.i), !dbg !28796
  %.sroa.0.0.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %.sroa.6.0.i, i64 %.val.i), !dbg !28797
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.i, !dbg !28794
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !28794
  %.val.i.1 = load i64, ptr %i.i, align 8, !dbg !28795, !noundef !1032 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i.1 = tail call i64 @llvm.smin.i64(i64 %.sroa.0.0.i1.i.i.i.i.i, i64 %.val.i.1), !dbg !28796
  %.sroa.0.0.i.i.i.i.i.i.1 = tail call i64 @llvm.smax.i64(i64 %.sroa.0.0.i.i.i.i.i.i, i64 %.val.i.1), !dbg !28797
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.i, !dbg !28794
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !28794
  %.val.i.2 = load i64, ptr %i.k, align 8, !dbg !28795, !noundef !1032 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i.2 = tail call i64 @llvm.smin.i64(i64 %.sroa.0.0.i1.i.i.i.i.i.1, i64 %.val.i.2), !dbg !28796
  %.sroa.0.0.i.i.i.i.i.i.2 = tail call i64 @llvm.smax.i64(i64 %.sroa.0.0.i.i.i.i.i.i.1, i64 %.val.i.2), !dbg !28797
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.i, !dbg !28794
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24, !dbg !28794
  %.val.i.3 = load i64, ptr %i.m, align 8, !dbg !28795, !noundef !1032 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i.3 = tail call i64 @llvm.smin.i64(i64 %.sroa.0.0.i1.i.i.i.i.i.2, i64 %.val.i.3), !dbg !28796 ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i.3 = tail call i64 @llvm.smax.i64(i64 %.sroa.0.0.i.i.i.i.i.i.2, i64 %.val.i.3), !dbg !28797 ; 3 uses
  %i.n = add nuw i64 %.sroa.05.0.i, 4, !dbg !28798 ; 2 uses
  %niter.next.3 = add i64 %niter, 4, !dbg !28799  ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !28799
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_18min_max_ignore_nanxEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa, label %bb.c, !dbg !28799

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_18min_max_ignore_nanxEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !28799
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_18min_max_ignore_nanxEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %.epil.preheader, !dbg !28799

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_18min_max_ignore_nanxEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.05.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.n, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_18min_max_ignore_nanxEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa ]
  %.sroa.6.0.i.epil.init = phi i64 [ %3, %bb.b ], [ %.sroa.0.0.i.i.i.i.i.i.3, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_18min_max_ignore_nanxEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ %2, %bb.b ], [ %.sroa.0.0.i1.i.i.i.i.i.3, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_18min_max_ignore_nanxEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = icmp ne i64 %xtraiter, 0, !dbg !28799
  tail call void @llvm.assume(i1 %lcmp.mod4), !dbg !28799
  br label %bb.d, !dbg !28799

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.sroa.05.0.i.epil = phi i64 [ %.sroa.05.0.i.epil.init, %.epil.preheader ], [ %i.p, %bb.d ], !dbg !28792 ; 2 uses
  %.sroa.6.0.i.epil = phi i64 [ %.sroa.6.0.i.epil.init, %.epil.preheader ], [ %.sroa.0.0.i.i.i.i.i.i.epil, %bb.d ], !dbg !28793
  %.sroa.02.0.i.epil = phi i64 [ %.sroa.02.0.i.epil.init, %.epil.preheader ], [ %.sroa.0.0.i1.i.i.i.i.i.epil, %bb.d ], !dbg !28793
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.0.i.epil, !dbg !28794
  %.val.i.epil = load i64, ptr %i.o, align 8, !dbg !28795, !noundef !1032 ; 2 uses
  %.sroa.0.0.i1.i.i.i.i.i.epil = tail call i64 @llvm.smin.i64(i64 %.sroa.02.0.i.epil, i64 %.val.i.epil), !dbg !28796 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.epil = tail call i64 @llvm.smax.i64(i64 %.sroa.6.0.i.epil, i64 %.val.i.epil), !dbg !28797 ; 2 uses
  %i.p = add nuw i64 %.sroa.05.0.i.epil, 1, !dbg !28798
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !28799 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !28799
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_18min_max_ignore_nanxEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %bb.d, !dbg !28799, !llvm.loop !28786

_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_18min_max_ignore_nanxEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_18min_max_ignore_nanxEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %.pn20.i = phi i64 [ %2, %bb.a ], [ %.sroa.0.0.i1.i.i.i.i.i.3, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_18min_max_ignore_nanxEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i1.i.i.i.i.i.epil, %bb.d ]
  %.pn18.i = phi i64 [ %3, %bb.a ], [ %.sroa.0.0.i.i.i.i.i.i.3, %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4foldTxxENCINvNtNtBY_8adapters6copied9copy_foldxB1C_NCINvNtB1N_3map8map_foldxB1C_B1C_NCINvNtNtCslFlrwjHoTci_14polars_compute7min_max6scalar17reduce_tuple_valsxINvB2Z_18min_max_ignore_nanxEE0B46_E0E0ECsfISxE4fmY1Y_14polars_parquet.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i.i.i.epil, %bb.d ]
  %.pn.i = insertvalue { i64, i64 } poison, i64 %.pn20.i, 0, !dbg !28793
  %.merged.i = insertvalue { i64, i64 } %.pn.i, i64 %.pn18.i, 1, !dbg !28793
  ret { i64, i64 } %.merged.i, !dbg !28800
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6copiedINtB5_6CopiedINtNtNtBb_5slice4iter4IterxEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldxNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256uNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain30decode_no_incompact_predicatesxB2x_INtB3v_22ClosureDecoderFunctionxB2x_NCNvNtB3x_6simple18page_iter_to_arrays7_0EEs2_0NCINvNvB1v_8for_each4callB2x_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB7j_3VecB2x_E14extend_trustedINtB2e_3MapBP_B3o_EE0E0E0EB3D_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !28801 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !dbg !28870 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !28870
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !28870 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !28870
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !28870 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ], !dbg !28871
  %i.a = icmp eq ptr %0, %1, !dbg !28872
  br i1 %i.a, label %_RINvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters6copied9copy_foldxuNCINvNtB1K_3map8map_foldxNtNtNtCs8774dFTUdNv_12polars_arrow5types6native4i256uNCINvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize9primitive5plain30decode_no_incompact_predicatesxB2G_INtB3E_22ClosureDecoderFunctionxB2G_NCNvNtB3G_6simple18page_iter_to_arrays7_0EEs2_0NCINvNvBS_8for_each4callB2G_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB7r_3VecB2G_E14extend_trustedINtB2m_3MapINtB1I_6CopiedBF_EB3x_EE0E0E0E0EB3M_.exit, label %bb.b, !dbg !28873

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64, !dbg !28874
  %i.c = ptrtoint ptr %0 to i64, !dbg !28874
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !28874      ; 3 uses
  %i.e = lshr exact i64 %i.d, 3, !dbg !28874      ; 2 uses
  %i.f = icmp eq i64 %i.d, 8, !dbg !28875
  br i1 %i.f, label %.epil.preheader, label %.new, !dbg !28875

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 2305843009213693950, !dbg !28875
  br label %bb.c, !dbg !28875

bb.c:                                             ; preds = %bb.c, %.new
  %i.g = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.r, %bb.c ], !dbg !28876 ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.s, %bb.c ], !dbg !28877 ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i, !dbg !28876
  %.val16.i = load i64, ptr %i.h, align 8, !dbg !28878, !noalias !28862, !noundef !1032
  %i.i = sext i64 %.val16.i to i128, !dbg !28879  ; 2 uses
  %i.j = ashr i128 %i.i, 127, !dbg !28880
end_hunk_2
