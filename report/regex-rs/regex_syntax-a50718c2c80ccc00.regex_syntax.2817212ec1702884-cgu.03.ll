Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.03?download=true
inline.NumInlined: 244
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq22optimize_by_preference:bb.a
    #dbg_value(ptr poison, !9167, !DIExpression(), !9212)
    #dbg_value(ptr poison, !9184, !DIExpression(), !9213)
    #dbg_value(ptr poison, !9204, !DIExpression(), !9214)
    #dbg_value(ptr poison, !8613, !DIExpression(), !9215)
    #dbg_value(ptr poison, !9222, !DIExpression(), !9231)
    #dbg_value(ptr poison, !9219, !DIExpression(), !9233)
    #dbg_value(ptr %0, !9096, !DIExpression(), !9234)
    #dbg_declare(ptr %i.c, !9235, !DIExpression(), !9242)
    #dbg_value(i64 0, !9244, !DIExpression(), !9248)
    #dbg_value(i64 0, !9250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9262)
    #dbg_value(i64 0, !9285, !DIExpression(), !9289)
    #dbg_value(i64 0, !9250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9291)
    #dbg_value(i64 0, !9285, !DIExpression(), !9297)
    #dbg_declare(ptr poison, !9240, !DIExpression(), !9300)
  %.not.i139 = icmp eq i64 %.pr, -1, !dbg !9092
  br i1 %.not.i139, label %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq21longest_common_suffix.exit._crit_edge, label %bb.v, !dbg !9301

bb.v:                                             ; preds = %bb.u
    #dbg_value(ptr %0, !9097, !DIExpression(), !9302)
    #dbg_value(ptr %0, !9303, !DIExpression(), !9306)
    #dbg_value(ptr %0, !9247, !DIExpression(), !9308)
    #dbg_value(ptr %0, !9309, !DIExpression(), !9312)
    #dbg_value(ptr %0, !9314, !DIExpression(), !9317)
    #dbg_value(ptr %0, !9319, !DIExpression(), !9322)
    #dbg_value(ptr %0, !9309, !DIExpression(), !9324)
    #dbg_value(ptr %0, !9314, !DIExpression(), !9326)
    #dbg_value(ptr %0, !9319, !DIExpression(), !9329)
  %i.bo = load i64, ptr %i.j, align 8, !dbg !9332, !alias.scope !9110, !noundef !15 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 288230376151711744, !dbg !9333
  tail call void @llvm.assume(i1 %i.bp), !dbg !9334
  %i.bq = icmp eq i64 %i.bo, 0, !dbg !9335
  br i1 %i.bq, label %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq21longest_common_suffix.exit._crit_edge, label %bb.w, !dbg !9335, !prof !8699

bb.w:                                             ; preds = %bb.v
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9336
  %i.bs = load ptr, ptr %i.br, align 8, !dbg !9336, !alias.scope !9110, !nonnull !15, !noundef !15 ; 4 uses
    #dbg_value(ptr %i.bs, !9343, !DIExpression(), !9346)
    #dbg_value(ptr %i.bs, !9348, !DIExpression(), !9351)
    #dbg_value(ptr %i.bs, !9353, !DIExpression(), !9356)
    #dbg_value(ptr %i.bs, !9359, !DIExpression(), !9362)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8, !dbg !9365
  %i.bu = load ptr, ptr %i.bt, align 8, !dbg !9365, !noalias !9110, !nonnull !15, !noundef !15 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16, !dbg !9375
  %i.bw = load i64, ptr %i.bv, align 8, !dbg !9375, !noalias !9110, !noundef !15 ; 5 uses
    #dbg_value(ptr %i.bu, !9101, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9376)
    #dbg_value(ptr %i.bu, !9280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9377)
    #dbg_value(ptr %i.bu, !9273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9378)
    #dbg_value(ptr %i.bu, !9260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9262)
    #dbg_value(ptr %i.bu, !9280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9379)
    #dbg_value(ptr %i.bu, !9273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9380)
    #dbg_value(ptr %i.bu, !9260, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9291)
    #dbg_value(i64 %i.bw, !9101, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9376)
    #dbg_value(i64 %i.bw, !9280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9377)
    #dbg_value(i64 %i.bw, !9273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9378)
    #dbg_value(i64 %i.bw, !9260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9262)
    #dbg_value(i64 %i.bw, !9280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9379)
    #dbg_value(i64 %i.bw, !9273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9380)
    #dbg_value(i64 %i.bw, !9260, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9291)
    #dbg_value(i64 %i.bw, !9103, !DIExpression(), !9381)
    #dbg_value(i64 %i.bw, !9281, !DIExpression(), !9377)
    #dbg_value(i64 %i.bw, !9272, !DIExpression(), !9378)
    #dbg_value(i64 %i.bw, !9250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9262)
    #dbg_value(i64 %i.bw, !9261, !DIExpression(), !9262)
    #dbg_value(i64 %i.bw, !9288, !DIExpression(), !9289)
    #dbg_value(i64 %i.bw, !9281, !DIExpression(), !9379)
    #dbg_value(i64 %i.bw, !9272, !DIExpression(), !9380)
    #dbg_value(i64 %i.bw, !9250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9291)
    #dbg_value(i64 %i.bw, !9261, !DIExpression(), !9291)
    #dbg_value(i64 %i.bw, !9288, !DIExpression(), !9297)
    #dbg_value(i64 %i.bw, !9382, !DIExpression(), !9397)
    #dbg_value(i64 %i.bw, !9404, !DIExpression(), !9408)
    #dbg_value(i64 %i.bo, !9411, !DIExpression(), !9420)
    #dbg_value(i64 %i.bo, !9426, !DIExpression(), !9430)
    #dbg_value(ptr %i.bs, !9424, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9432)
    #dbg_value(ptr %i.bs, !9415, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9433)
    #dbg_value(i64 %i.bo, !9424, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9432)
    #dbg_value(i64 %i.bo, !9415, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9433)
    #dbg_value(ptr %i.bs, !9416, !DIExpression(), !9434)
    #dbg_value(ptr %i.bs, !9429, !DIExpression(), !9430)
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bs, i64 %i.bo, !dbg !9435 ; 2 uses
    #dbg_value(ptr %i.bs, !9105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9436)
    #dbg_value(ptr %i.bx, !9105, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9436)
    #dbg_value(i64 1, !9105, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9436)
  %i.by = ptrtoint ptr %i.bx to i64
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.576.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.x, !dbg !9437

bb.x:                                             ; preds = %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB26_3Seq21longest_common_prefix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3n_5count0EB2a_.exit.i, %bb.w
  %.not68.i = phi i1 [ false, %bb.w ], [ true, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB26_3Seq21longest_common_prefix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3n_5count0EB2a_.exit.i ], !dbg !9438
  %.sroa.11.0.i140 = phi i64 [ 1, %bb.w ], [ 0, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB26_3Seq21longest_common_prefix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3n_5count0EB2a_.exit.i ], !dbg !9438 ; 2 uses
  %.sroa.0.077.i = phi ptr [ %i.bs, %bb.w ], [ %.sroa.0.1.i144, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB26_3Seq21longest_common_prefix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3n_5count0EB2a_.exit.i ], !dbg !9438 ; 4 uses
  %.sroa.07.0.i = phi i64 [ %i.bw, %bb.w ], [ %.sroa.0.1.i.i.i146, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB26_3Seq21longest_common_prefix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3n_5count0EB2a_.exit.i ], !dbg !9376 ; 6 uses
    #dbg_value(ptr %.sroa.0.077.i, !9105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9436)
    #dbg_value(i64 %.sroa.11.0.i140, !9105, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9436)
    #dbg_value(i64 %.sroa.07.0.i, !9404, !DIExpression(), !9408)
    #dbg_value(i64 %.sroa.07.0.i, !9382, !DIExpression(), !9397)
    #dbg_value(i64 %.sroa.07.0.i, !9288, !DIExpression(), !9289)
    #dbg_value(i64 %.sroa.07.0.i, !9261, !DIExpression(), !9262)
    #dbg_value(i64 %.sroa.07.0.i, !9250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9262)
    #dbg_value(i64 %.sroa.07.0.i, !9272, !DIExpression(), !9378)
    #dbg_value(i64 %.sroa.07.0.i, !9281, !DIExpression(), !9377)
    #dbg_value(i64 %.sroa.07.0.i, !9103, !DIExpression(), !9381)
    #dbg_value(ptr undef, !9219, !DIExpression(), !9233)
    #dbg_value(i1 %.not68.i, !9439, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9442)
  br i1 %.not68.i, label %bb.y, label %bb.z, !dbg !9444, !prof !8825

bb.y:                                             ; preds = %bb.x
    #dbg_value(ptr undef, !9222, !DIExpression(), !9231)
    #dbg_value(ptr %.sroa.0.077.i, !9225, !DIExpression(), !9445)
    #dbg_value(ptr %i.bx, !9227, !DIExpression(), !9446)
    #dbg_value(ptr poison, !9447, !DIExpression(), !9451)
    #dbg_value(ptr poison, !9450, !DIExpression(), !9453)
  %i.bz = icmp eq ptr %.sroa.0.077.i, %i.bx, !dbg !9454
  br i1 %i.bz, label %bb.ab, label %bb.aa, !dbg !9455

bb.z:                                             ; preds = %bb.x
    #dbg_value(i64 0, !9105, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9436)
    #dbg_value(ptr undef, !8613, !DIExpression(), !9215)
    #dbg_value(i64 %.sroa.11.0.i140, !8618, !DIExpression(), !9215)
    #dbg_value(i64 32, !8837, !DIExpression(), !9456)
    #dbg_value(ptr %i.bx, !8621, !DIExpression(), !9460)
    #dbg_value(ptr %i.bx, !8859, !DIExpression(), !9461)
    #dbg_value(ptr %.sroa.0.077.i, !8860, !DIExpression(), !9461)
    #dbg_value(ptr %i.bx, !8851, !DIExpression(), !9462)
    #dbg_value(ptr %.sroa.0.077.i, !8852, !DIExpression(), !9462)
    #dbg_value(ptr %.sroa.0.077.i, !8844, !DIExpression(), !9463)
    #dbg_value(ptr %i.bx, !8843, !DIExpression(), !9463)
  %i.ca = ptrtoint ptr %.sroa.0.077.i to i64, !dbg !9464
  %i.cb = sub nuw i64 %i.by, %i.ca, !dbg !9464
  %i.cc = lshr exact i64 %i.cb, 5, !dbg !9464
  %.not.i.not.i141 = icmp samesign ult i64 %.sroa.11.0.i140, %i.cc, !dbg !9465
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.077.i, i64 %.sroa.11.0.i140, !dbg !9465
    #dbg_value(ptr poison, !9105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9436)
  br i1 %.not.i.not.i141, label %bb.aa, label %bb.ab, !dbg !9466

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.sroa.05.0.i = phi ptr [ %i.cd, %bb.z ], [ %.sroa.0.077.i, %bb.y ], !dbg !9467 ; 3 uses
  %.sroa.0.1.i144 = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 32, !dbg !9467
    #dbg_value(ptr %.sroa.0.1.i144, !9105, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9436)
    #dbg_value(i64 0, !9105, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9436)
    #dbg_value(ptr %.sroa.05.0.i, !9107, !DIExpression(), !9468)
    #dbg_value(ptr %.sroa.05.0.i, !9343, !DIExpression(), !9469)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9471, !noalias !9110
    #dbg_value(ptr %.sroa.05.0.i, !9348, !DIExpression(), !9472)
    #dbg_value(ptr %.sroa.05.0.i, !9353, !DIExpression(), !9475)
    #dbg_value(ptr %.sroa.05.0.i, !9359, !DIExpression(), !9478)
    #dbg_value(i64 poison, !9387, !DIExpression(), !9481)
    #dbg_value(i64 poison, !9404, !DIExpression(), !9485)
    #dbg_value(ptr poison, !9402, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9488)
    #dbg_value(ptr poison, !9386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9489)
    #dbg_value(i64 poison, !9402, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9488)
    #dbg_value(i64 poison, !9386, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9489)
    #dbg_value(ptr poison, !9389, !DIExpression(), !9490)
    #dbg_value(ptr poison, !9407, !DIExpression(), !9485)
  %.not71.i = icmp ugt i64 %.sroa.07.0.i, %i.bw
  br i1 %.not71.i, label %bb.af, label %bb.ad, !dbg !9491, !prof !9492

bb.ab:                                            ; preds = %bb.z, %bb.y
  %.not70.i = icmp ugt i64 %.sroa.07.0.i, %i.bw
  br i1 %.not70.i, label %bb.ac, label %bb.ag, !dbg !9493, !prof !9492

bb.ac:                                            ; preds = %bb.ab
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.07.0.i, i64 noundef %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #19, !dbg !9494, !noalias !9110
  unreachable, !dbg !9494

bb.ad:                                            ; preds = %bb.aa
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 8, !dbg !9495
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !9495, !noalias !9110, !nonnull !15, !noundef !15 ; 2 uses
    #dbg_value(ptr %i.cf, !9407, !DIExpression(), !9485)
    #dbg_value(ptr %i.cf, !9389, !DIExpression(), !9490)
    #dbg_value(ptr %i.cf, !9402, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9488)
    #dbg_value(ptr %i.cf, !9386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9489)
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 16, !dbg !9502
  %i.ch = load i64, ptr %i.cg, align 8, !dbg !9502, !noalias !9110, !noundef !15
    #dbg_value(i64 %i.ch, !9402, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9488)
    #dbg_value(i64 %i.ch, !9386, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9489)
    #dbg_value(i64 %i.ch, !9387, !DIExpression(), !9481)
    #dbg_value(i64 %i.ch, !9404, !DIExpression(), !9485)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ch, !dbg !9503
    #dbg_value(ptr %i.bu, !9402, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9504)
    #dbg_value(ptr %i.bu, !9386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9505)
    #dbg_value(i64 %.sroa.07.0.i, !9402, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9504)
    #dbg_value(i64 %.sroa.07.0.i, !9386, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9505)
    #dbg_value(ptr %i.bu, !9393, !DIExpression(), !9506)
    #dbg_value(ptr %i.bu, !9407, !DIExpression(), !9408)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.07.0.i, !dbg !9507
    #dbg_value(ptr %i.cf, !9508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9517)
    #dbg_value(ptr %i.ci, !9508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9517)
    #dbg_value(ptr %i.bu, !9513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9517)
    #dbg_value(ptr %i.cj, !9513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9517)
    #dbg_value(ptr %i.cf, !9519, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9524)
    #dbg_value(ptr %i.ci, !9519, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9524)
    #dbg_value(ptr %i.bu, !9523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9524)
    #dbg_value(ptr %i.cj, !9523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9524)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.cj), !dbg !9526, !noalias !9110
  %.sroa.074.0.copyload.i = load ptr, ptr %i.c, align 8, !dbg !9527, !noalias !9110 ; 2 uses
    #dbg_value(ptr %.sroa.074.0.copyload.i, !9149, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9531)
    #dbg_value(ptr %.sroa.074.0.copyload.i, !9114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9532)
    #dbg_value(i64 poison, !9149, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9531)
    #dbg_value(i64 poison, !9114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9532)
  %.sroa.475.0.copyload.i = load ptr, ptr %.sroa.475.0..sroa_idx.i, align 8, !dbg !9527, !noalias !9110 ; 2 uses
    #dbg_value(ptr %.sroa.475.0.copyload.i, !9149, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9531)
    #dbg_value(ptr %.sroa.475.0.copyload.i, !9114, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9532)
    #dbg_value(i64 poison, !9149, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !9531)
    #dbg_value(i64 poison, !9114, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !9532)
  %.sroa.576.0.copyload.i = load i64, ptr %.sroa.576.0..sroa_idx.i, align 8, !dbg !9527, !noalias !9110 ; 3 uses
    #dbg_value(i64 %.sroa.576.0.copyload.i, !9149, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !9531)
    #dbg_value(i64 %.sroa.576.0.copyload.i, !9114, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !9532)
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !9527, !noalias !9110 ; 2 uses
    #dbg_value(i64 %.sroa.6.0.copyload.i, !9149, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !9531)
    #dbg_value(i64 %.sroa.6.0.copyload.i, !9114, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !9532)
    #dbg_value(i8 0, !9149, !DIExpression(DW_OP_LLVM_fragment, 384, 8), !9531)
    #dbg_value(i8 0, !9114, !DIExpression(DW_OP_LLVM_fragment, 384, 8), !9532)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9533, !noalias !9110
    #dbg_value(i64 0, !9139, !DIExpression(), !9532)
    #dbg_declare(ptr poison, !9140, !DIExpression(), !9534)
    #dbg_value(ptr undef, !9204, !DIExpression(), !9214)
    #dbg_value(i64 0, !9205, !DIExpression(), !9214)
    #dbg_declare(ptr poison, !9206, !DIExpression(), !9535)
    #dbg_value(ptr undef, !9207, !DIExpression(), !9536)
    #dbg_value(ptr undef, !9208, !DIExpression(DW_OP_plus_uconst, 49, DW_OP_stack_value), !9537)
    #dbg_value(ptr undef, !9186, !DIExpression(DW_OP_plus_uconst, 49, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9213)
    #dbg_value(ptr undef, !9186, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9213)
    #dbg_value(ptr undef, !9184, !DIExpression(), !9213)
    #dbg_value(i64 0, !9185, !DIExpression(), !9213)
    #dbg_value(i64 0, !9187, !DIExpression(), !9538)
    #dbg_value(ptr undef, !9167, !DIExpression(), !9212)
    #dbg_value(ptr undef, !9154, !DIExpression(), !9163)
  %i.ck = icmp ult i64 %.sroa.576.0.copyload.i, %.sroa.6.0.copyload.i, !dbg !9539
  br i1 %i.ck, label %.lr.ph.i.i.i.i145, label %._crit_edge, !dbg !9539

.lr.ph.i.i.i.i145:                                ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.074.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.475.0.copyload.i) ]
  %i.cl = sub nuw i64 %.sroa.6.0.copyload.i, %.sroa.576.0.copyload.i, !dbg !9539 ; 2 uses
  br label %bb.ae, !dbg !9539

bb.ae:                                            ; preds = %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRhB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB35_3Seq21longest_common_prefix0NCINvMB2h_B2e_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterhEB5g_EB2X_EB1i_5count0E0E0B39_.exit.i.i.i.i, %.lr.ph.i.i.i.i145
  %.sroa.01.025.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i145 ], [ %i.ct, %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRhB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB35_3Seq21longest_common_prefix0NCINvMB2h_B2e_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterhEB5g_EB2X_EB1i_5count0E0E0B39_.exit.i.i.i.i ] ; 2 uses
  %i.cm = phi i64 [ %.sroa.576.0.copyload.i, %.lr.ph.i.i.i.i145 ], [ %i.cs, %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRhB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB35_3Seq21longest_common_prefix0NCINvMB2h_B2e_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterhEB5g_EB2X_EB1i_5count0E0E0B39_.exit.i.i.i.i ] ; 3 uses
    #dbg_value(i64 %.sroa.01.025.i.i.i.i, !9187, !DIExpression(), !9538)
    #dbg_value(i64 %i.cm, !9161, !DIExpression(), !9540)
    #dbg_value(ptr poison, !9541, !DIExpression(), !9547)
    #dbg_value(i64 %i.cm, !9546, !DIExpression(), !9547)
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.074.0.copyload.i, i64 %i.cm, !dbg !9549
    #dbg_value(ptr poison, !9541, !DIExpression(), !9552)
    #dbg_value(i64 %i.cm, !9546, !DIExpression(), !9552)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.475.0.copyload.i, i64 %i.cm, !dbg !9554
    #dbg_value(ptr %i.cn, !9188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9556)
    #dbg_value(ptr %i.co, !9188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9557), !dbg !9560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9561), !dbg !9560
    #dbg_value(ptr %i.cn, !9563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9576)
    #dbg_value(ptr %i.co, !9563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9576)
    #dbg_value(ptr poison, !9570, !DIExpression(DW_OP_deref), !9576)
    #dbg_value(ptr poison, !9572, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !9576)
    #dbg_value(i64 %.sroa.01.025.i.i.i.i, !9569, !DIExpression(), !9576)
    #dbg_value(ptr poison, !9578, !DIExpression(), !9587)
    #dbg_value(ptr poison, !9586, !DIExpression(), !9587)
    #dbg_value(ptr %i.cn, !9583, !DIExpression(), !9589)
    #dbg_value(ptr %i.cn, !9590, !DIExpression(), !9594)
    #dbg_value(ptr %i.co, !9585, !DIExpression(), !9589)
    #dbg_value(ptr %i.co, !9593, !DIExpression(), !9594)
    #dbg_value(ptr poison, !9598, !DIExpression(), !9601)
    #dbg_value(ptr poison, !9599, !DIExpression(), !9602)
  %i.cp = load i8, ptr %i.cn, align 1, !dbg !9603, !alias.scope !9557, !noalias !9604, !noundef !15
  %i.cq = load i8, ptr %i.co, align 1, !dbg !9612, !alias.scope !9561, !noalias !9613, !noundef !15
  %i.cr = icmp eq i8 %i.cp, %i.cq, !dbg !9603
  br i1 %i.cr, label %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRhB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB35_3Seq21longest_common_prefix0NCINvMB2h_B2e_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterhEB5g_EB2X_EB1i_5count0E0E0B39_.exit.i.i.i.i, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB26_3Seq21longest_common_prefix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3n_5count0EB2a_.exit.i, !dbg !9614

_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRhB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB35_3Seq21longest_common_prefix0NCINvMB2h_B2e_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterhEB5g_EB2X_EB1i_5count0E0E0B39_.exit.i.i.i.i: ; preds = %bb.ae
  %i.cs = add nuw i64 %i.cm, 1, !dbg !9615
    #dbg_value(i64 %.sroa.01.025.i.i.i.i, !9616, !DIExpression(), !9626)
    #dbg_value(ptr poison, !9622, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9626)
    #dbg_value(ptr poison, !9622, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9626)
    #dbg_value(ptr poison, !9628, !DIExpression(), !9636)
    #dbg_value(i64 %.sroa.01.025.i.i.i.i, !9634, !DIExpression(), !9636)
    #dbg_value(ptr poison, !9635, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9636)
    #dbg_value(ptr poison, !9635, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9636)
  %i.ct = add nuw i64 %.sroa.01.025.i.i.i.i, 1, !dbg !9638 ; 2 uses
    #dbg_value(i64 %i.ct, !9187, !DIExpression(), !9538)
    #dbg_value(ptr undef, !9167, !DIExpression(), !9212)
    #dbg_value(ptr undef, !9154, !DIExpression(), !9163)
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ct, %i.cl, !dbg !9539
  br i1 %exitcond.not.i.i.i.i, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB26_3Seq21longest_common_prefix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3n_5count0EB2a_.exit.i, label %bb.ae, !dbg !9539

_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB26_3Seq21longest_common_prefix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3n_5count0EB2a_.exit.i: ; preds = %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRhB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB35_3Seq21longest_common_prefix0NCINvMB2h_B2e_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterhEB5g_EB2X_EB1i_5count0E0E0B39_.exit.i.i.i.i, %bb.ae
  %.sroa.0.1.i.i.i146 = phi i64 [ %i.cl, %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRhB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB35_3Seq21longest_common_prefix0NCINvMB2h_B2e_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterhEB5g_EB2X_EB1i_5count0E0E0B39_.exit.i.i.i.i ], [ %.sroa.01.025.i.i.i.i, %bb.ae ], !dbg !9214 ; 2 uses
    #dbg_value(i64 %.sroa.0.1.i.i.i146, !9103, !DIExpression(), !9381)
    #dbg_value(i64 %.sroa.0.1.i.i.i146, !9281, !DIExpression(), !9377)
    #dbg_value(i64 %.sroa.0.1.i.i.i146, !9272, !DIExpression(), !9378)
    #dbg_value(i64 %.sroa.0.1.i.i.i146, !9250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9262)
    #dbg_value(i64 %.sroa.0.1.i.i.i146, !9261, !DIExpression(), !9262)
    #dbg_value(i64 %.sroa.0.1.i.i.i146, !9288, !DIExpression(), !9289)
    #dbg_value(i64 %.sroa.0.1.i.i.i146, !9281, !DIExpression(), !9379)
    #dbg_value(i64 %.sroa.0.1.i.i.i146, !9272, !DIExpression(), !9380)
    #dbg_value(i64 %.sroa.0.1.i.i.i146, !9250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9291)
    #dbg_value(i64 %.sroa.0.1.i.i.i146, !9261, !DIExpression(), !9291)
    #dbg_value(i64 %.sroa.0.1.i.i.i146, !9288, !DIExpression(), !9297)
    #dbg_value(i64 %.sroa.0.1.i.i.i146, !9382, !DIExpression(), !9397)
    #dbg_value(i64 %.sroa.0.1.i.i.i146, !9404, !DIExpression(), !9408)
  %i.cu = icmp eq i64 %.sroa.0.1.i.i.i146, 0, !dbg !9639
  br i1 %i.cu, label %._crit_edge, label %bb.x, !dbg !9639

bb.af:                                            ; preds = %bb.aa
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.07.0.i, i64 noundef %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #19, !dbg !9640, !noalias !9110
  unreachable, !dbg !9640

_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq21longest_common_suffix.exit._crit_edge: ; preds = %.critedge, %bb.h, %bb.g, %bb.u, %bb.v
    #dbg_value(ptr null, !7968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9641)
    #dbg_value(i64 undef, !7968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9641)
  %.pre320 = load i64, ptr %0, align 8, !dbg !9642
  br label %bb.ah, !dbg !9644

bb.ag:                                            ; preds = %bb.o, %bb.ab
  %.sroa.0.0.i143.pn.ph = phi ptr [ %i.av, %bb.o ], [ %i.bu, %bb.ab ]
  %.sroa.5.0.i142.pn.ph = phi i64 [ %.sroa.04.0.i, %bb.o ], [ %.sroa.07.0.i, %bb.ab ] ; 3 uses
    #dbg_value(ptr %.sroa.0.0.i143.pn.ph, !7968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9641)
    #dbg_value(i64 %.sroa.5.0.i142.pn.ph, !7968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9641)
    #dbg_value(ptr %.sroa.0.0.i143.pn.ph, !7983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9645)
    #dbg_value(i64 %.sroa.5.0.i142.pn.ph, !7983, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9645)
  %i.cv = icmp samesign ugt i64 %i.k, 1
  %i.cw = add i64 %.sroa.5.0.i142.pn.ph, -1, !dbg !9646
  %i.cx = icmp ult i64 %i.cw, 3, !dbg !9646
  %i.cy = and i1 %i.cv, %i.cx, !dbg !9646
  %or.cond2 = and i1 %1, %i.cy, !dbg !9646
  br i1 %or.cond2, label %bb.an, label %._crit_edge, !dbg !9646

._crit_edge:                                      ; preds = %bb.q, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0EB2r_.exit.i, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB26_3Seq21longest_common_prefix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3n_5count0EB2a_.exit.i, %bb.ad, %bb.ag
  %.sroa.5.0.i142.pn.ph378 = phi i64 [ %.sroa.5.0.i142.pn.ph, %bb.ag ], [ 0, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterhEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB26_3Seq21longest_common_prefix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3n_5count0EB2a_.exit.i ], [ 0, %bb.ad ], [ 0, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0EB2r_.exit.i ], [ 0, %bb.q ]
  %.pre = load i64, ptr %0, align 8, !dbg !9647
  br label %bb.ak, !dbg !9646

bb.ah:                                            ; preds = %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq21longest_common_suffix.exit._crit_edge, %.loopexit268, %bb.as
  %i.cz = phi i64 [ %.pre320, %_RNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB5_3Seq21longest_common_suffix.exit._crit_edge ], [ %i.dm, %.loopexit268 ], [ %i.dm, %bb.as ], !dbg !9642 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !9649
    #dbg_value(ptr %0, !8199, !DIExpression(), !9650)
    #dbg_value(ptr %0, !8223, !DIExpression(), !9651)
  %.not122 = icmp eq i64 %i.cz, -1, !dbg !9642
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9652 ; 2 uses
    #dbg_value(ptr poison, !9653, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9667)
    #dbg_value(i64 poison, !9653, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9667)
    #dbg_value(i1 false, !9663, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9667)
    #dbg_declare(ptr poison, !9664, !DIExpression(), !9669)
  br i1 %.not122, label %.loopexit266, label %bb.ai, !dbg !9670

bb.ai:                                            ; preds = %.thread379, %bb.ah
  %i.db = phi ptr [ %i.fl, %.thread379 ], [ %i.da, %bb.ah ] ; 3 uses
  %i.dc = phi i64 [ %.pr231, %.thread379 ], [ %i.cz, %bb.ah ]
  %i.dd = load i64, ptr %i.j, align 8, !dbg !9652 ; 2 uses
  %i.de = load ptr, ptr %i.db, align 8, !dbg !9652, !nonnull !15 ; 2 uses
    #dbg_value(ptr poison, !9665, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9671)
    #dbg_value(i64 poison, !9665, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9671)
    #dbg_value(ptr poison, !9672, !DIExpression(), !9681)
    #dbg_value(ptr poison, !9690, !DIExpression(), !9703)
    #dbg_declare(ptr poison, !9701, !DIExpression(), !9704)
    #dbg_value(ptr poison, !9700, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9705)
    #dbg_value(ptr poison, !9706, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9709)
    #dbg_value(ptr poison, !9711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9720)
    #dbg_value(i64 poison, !9700, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9705)
    #dbg_value(i64 poison, !9706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9709)
    #dbg_value(i64 poison, !9711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9720)
    #dbg_value(i64 poison, !9714, !DIExpression(), !9722)
    #dbg_value(i64 poison, !9723, !DIExpression(), !9727)
    #dbg_value(ptr poison, !9716, !DIExpression(), !9729)
    #dbg_value(ptr poison, !9726, !DIExpression(), !9727)
  %.idx416 = shl nuw nsw i64 %i.dd, 5, !dbg !9730
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %.idx416, !dbg !9730
    #dbg_value(ptr undef, !9690, !DIExpression(), !9703)
    #dbg_value(ptr undef, !9672, !DIExpression(), !9681)
    #dbg_declare(ptr poison, !9691, !DIExpression(), !9731)
    #dbg_value(i64 1, !9732, !DIExpression(), !9736)
    #dbg_value(ptr %i.de, !9675, !DIExpression(), !9738)
    #dbg_value(ptr %i.de, !9735, !DIExpression(), !9736)
    #dbg_value(ptr %i.df, !9677, !DIExpression(), !9739)
    #dbg_value(ptr poison, !9740, !DIExpression(), !9744)
    #dbg_value(ptr poison, !9743, !DIExpression(), !9746)
  %i.dg = icmp eq i64 %i.dd, 0, !dbg !9747
  br i1 %i.dg, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralE6map_orbNCNvMs2_BM_NtBM_3Seq8is_exact0EBQ_.exit, label %.lr.ph414, !dbg !9748

bb.aj:                                            ; preds = %.lr.ph414
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dj, i64 32, !dbg !9749 ; 2 uses
    #dbg_value(ptr %i.dh, !9675, !DIExpression(), !9738)
    #dbg_value(ptr %i.dh, !9735, !DIExpression(), !9736)
    #dbg_value(ptr %i.df, !9677, !DIExpression(), !9739)
    #dbg_value(ptr poison, !9740, !DIExpression(), !9744)
    #dbg_value(ptr poison, !9743, !DIExpression(), !9746)
  %i.di = icmp eq ptr %i.dh, %i.df, !dbg !9747
  br i1 %i.di, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRSNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralE6map_orbNCNvMs2_BM_NtBM_3Seq8is_exact0EBQ_.exit, label %.lr.ph414, !dbg !9748

.lr.ph414:                                        ; preds = %bb.ai, %bb.aj
  %i.dj = phi ptr [ %i.dh, %bb.aj ], [ %i.de, %bb.ai ] ; 2 uses
    #dbg_value(ptr %i.dj, !9675, !DIExpression(), !9738)
    #dbg_value(ptr %i.dj, !9692, !DIExpression(), !9750)
  %i.dk = getelementptr i8, ptr %i.dj, i64 24, !dbg !9751
  %.val.i.i.i148 = load i8, ptr %i.dk, align 8, !dbg !9751, !range !1011, !alias.scope !9752, !noalias !9757, !noundef !15
    #dbg_value(ptr poison, !9760, !DIExpression(), !9767)
    #dbg_value(ptr poison, !9766, !DIExpression(), !9767)
    #dbg_value(ptr poison, !9769, !DIExpression(), !9772)
  %i.dl = trunc nuw i8 %.val.i.i.i148 to i1, !dbg !9774
  br i1 %i.dl, label %bb.aj, label %.loopexit266, !dbg !9751

bb.ak:                                            ; preds = %._crit_edge, %bb.an
  %.sroa.5.0.i142.pn.ph377 = phi i64 [ %.sroa.5.0.i142.pn.ph378, %._crit_edge ], [ %.sroa.5.0.i142.pn.ph, %bb.an ] ; 7 uses
  %i.dm = phi i64 [ %.pre, %._crit_edge ], [ %.pre318, %bb.an ], !dbg !9647 ; 3 uses
end_hunk_0
