Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.14?download=true
inline.NumInlined: 191
inline.NumDeleted: 61
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNvYB15_NtNtBa_3cmp10PartialOrd2ltEB19_:bb.a
    #dbg_value(i64 %.sroa.0.0.i, !5237, !DIExpression(), !4647)
    #dbg_value(ptr %.sroa.0.0.ph147, !5204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4643)
    #dbg_value(i64 %.sroa.16.0140295, !5204, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4643)
    #dbg_value(ptr %2, !5205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4643)
    #dbg_value(i64 %3, !5205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4643)
    #dbg_value(i1 false, !5207, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4643)
    #dbg_value(ptr poison, !5208, !DIExpression(), !4643)
    #dbg_value(i64 3, !5240, !DIExpression(), !4650)
    #dbg_value(i64 1, !5243, !DIExpression(), !4653)
    #dbg_value(i64 1, !5250, !DIExpression(), !4656)
    #dbg_value(i64 1, !5253, !DIExpression(), !4659)
    #dbg_value(i64 1, !5243, !DIExpression(), !4661)
    #dbg_value(i64 %.sroa.16.0140295, !5209, !DIExpression(), !4662)
    #dbg_value(i64 %.sroa.16.0140295, !5256, !DIExpression(), !4665)
  %.not104 = icmp samesign ult i64 %3, %.sroa.16.0140295, !dbg !5454
  br i1 %.not104, label %bb.k, label %bb.j, !dbg !5454, !prof !1055

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %.sroa.0.0.ph147, !5210, !DIExpression(), !4666)
    #dbg_value(ptr %.sroa.0.0.ph147, !5238, !DIExpression(), !4647)
    #dbg_value(ptr %.sroa.0.0.ph147, !5260, !DIExpression(), !4665)
    #dbg_value(ptr %.sroa.0.0.ph147, !5238, !DIExpression(), !4668)
    #dbg_value(ptr %.sroa.0.0.ph147, !5238, !DIExpression(), !4670)
    #dbg_value(ptr %2, !5212, !DIExpression(), !4671)
    #dbg_value(ptr %2, !5261, !DIExpression(), !4665)
    #dbg_value(ptr %2, !5263, !DIExpression(), !4674)
    #dbg_value(ptr %i.ah, !5213, !DIExpression(), !4675)
    #dbg_value(ptr %i.ah, !5246, !DIExpression(), !4653)
  %i.ap = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0140295, !dbg !5455 ; 3 uses
    #dbg_value(ptr %2, !5214, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4677)
    #dbg_value(ptr %.sroa.0.0.ph147, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(i64 0, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %i.ap, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
    #dbg_value(ptr null, !5215, !DIExpression(), !4678)
    #dbg_value(ptr null, !5247, !DIExpression(), !4653)
  %i.aq = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %i.ar = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.as = insertelement <4 x i32> poison, i32 %i.ak, i64 0
  %i.at = shufflevector <4 x i32> %i.as, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.l, !dbg !5456

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap(), !dbg !5457
  unreachable, !dbg !5457

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.43.0.i = phi ptr [ %i.ap, %bb.j ], [ %i.cw, %bb.m ], !dbg !5458 ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.27.2.lcssa.i, %bb.m ], !dbg !5458 ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph147, %bb.j ], [ %i.cz, %bb.m ], !dbg !5458 ; 3 uses
  %.sroa.0.0.i54 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.0140295, %bb.m ] ; 3 uses
    #dbg_value(ptr %.sroa.9.0.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(i64 %.sroa.27.0.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %.sroa.43.0.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
    #dbg_value(i64 %.sroa.0.0.i54, !5237, !DIExpression(), !4647)
    #dbg_value(i64 %.sroa.0.0.i54, !5216, !DIExpression(), !4644)
    #dbg_value(i64 %.sroa.0.0.i54, !5206, !DIExpression(), !4643)
    #dbg_value(ptr poison, !5247, !DIExpression(), !4653)
    #dbg_value(ptr poison, !5215, !DIExpression(), !4678)
    #dbg_value(i64 %.sroa.0.0.i54, !5241, !DIExpression(), !4650)
  %i.au = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i54, i64 3), !dbg !5459
    #dbg_value(i64 %i.au, !5237, !DIExpression(), !4668)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph147, i64 %i.au, !dbg !5460 ; 2 uses
    #dbg_value(ptr %i.av, !5217, !DIExpression(), !4679)
    #dbg_value(ptr %.sroa.9.0.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(i64 %.sroa.27.0.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %.sroa.43.0.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
  %i.aw = icmp ult ptr %.sroa.9.0.i, %i.av, !dbg !5461
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.i, !dbg !5461

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %i.cf, %.lr.ph.i ], [ %.sroa.9.0.i, %bb.l ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %i.ce, %.lr.ph.i ], [ %.sroa.27.0.i, %bb.l ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.bg, %.lr.ph.i ], [ %.sroa.43.0.i, %bb.l ] ; 4 uses
    #dbg_value(ptr %.sroa.9.131.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(i64 %.sroa.27.130.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %.sroa.43.129.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4681)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4681)
    #dbg_value(ptr poison, !975, !DIExpression(), !4681)
    #dbg_value(ptr poison, !980, !DIExpression(), !4683)
    #dbg_value(ptr poison, !982, !DIExpression(), !4683)
    #dbg_declare(ptr poison, !987, !DIExpression(), !4685)
    #dbg_value(ptr poison, !991, !DIExpression(), !4687)
    #dbg_value(ptr poison, !995, !DIExpression(), !4687)
    #dbg_value(ptr poison, !997, !DIExpression(), !4689)
    #dbg_value(ptr poison, !1001, !DIExpression(), !4689)
    #dbg_value(i8 poison, !988, !DIExpression(), !4690)
    #dbg_value(ptr undef, !5229, !DIExpression(), !4642)
    #dbg_value(i1 poison, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4642)
    #dbg_value(i64 1, !5268, !DIExpression(), !4693)
    #dbg_value(i64 1, !5271, !DIExpression(), !4696)
    #dbg_value(i64 1, !5275, !DIExpression(), !4699)
    #dbg_value(ptr %.sroa.43.129.i, !5269, !DIExpression(), !4693)
  %i.ax = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8, !dbg !5462
    #dbg_value(ptr %i.ax, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
    #dbg_value(ptr %.sroa.01.0.i.i, !5278, !DIExpression(), !4702)
    #dbg_value(ptr %.sroa.01.0.i.i, !5234, !DIExpression(), !4703)
    #dbg_value(i64 %.sroa.27.130.i, !5279, !DIExpression(), !4702)
    #dbg_value(ptr %i.bq, !5235, !DIExpression(), !4704)
    #dbg_value(ptr %i.bq, !5273, !DIExpression(), !4696)
    #dbg_value(ptr %.sroa.9.131.i, !5272, !DIExpression(), !4696)
  %i.ay = load i64, ptr %.sroa.9.131.i, align 4, !dbg !5463, !alias.scope !5191, !noalias !5281
    #dbg_value(i64 %i.bs, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %.sroa.9.131.i, !5276, !DIExpression(), !4699)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8, !dbg !5464
    #dbg_value(ptr %i.az, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4708)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4708)
    #dbg_value(ptr poison, !975, !DIExpression(), !4708)
    #dbg_value(ptr poison, !980, !DIExpression(), !4710)
    #dbg_value(ptr poison, !982, !DIExpression(), !4710)
    #dbg_declare(ptr poison, !987, !DIExpression(), !4712)
    #dbg_value(ptr poison, !991, !DIExpression(), !4714)
    #dbg_value(ptr poison, !995, !DIExpression(), !4714)
    #dbg_value(ptr poison, !997, !DIExpression(), !4716)
    #dbg_value(ptr poison, !1001, !DIExpression(), !4716)
    #dbg_value(i8 poison, !988, !DIExpression(), !4717)
    #dbg_value(ptr undef, !5229, !DIExpression(), !4640)
    #dbg_value(i1 poison, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4640)
    #dbg_value(i64 1, !5268, !DIExpression(), !4719)
    #dbg_value(i64 1, !5271, !DIExpression(), !4721)
    #dbg_value(i64 1, !5275, !DIExpression(), !4723)
    #dbg_value(ptr %i.ax, !5269, !DIExpression(), !4719)
  %i.ba = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16, !dbg !5465
    #dbg_value(ptr %i.ba, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
    #dbg_value(ptr %.sroa.01.0.i62.i, !5278, !DIExpression(), !4725)
    #dbg_value(ptr %.sroa.01.0.i62.i, !5234, !DIExpression(), !4726)
    #dbg_value(i64 %i.bs, !5279, !DIExpression(), !4725)
    #dbg_value(ptr %i.bu, !5235, !DIExpression(), !4727)
    #dbg_value(ptr %i.bu, !5273, !DIExpression(), !4721)
    #dbg_value(ptr %i.az, !5272, !DIExpression(), !4721)
  %i.bb = load i64, ptr %i.az, align 4, !dbg !5466, !alias.scope !5191, !noalias !5282
    #dbg_value(i64 %i.bw, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %i.az, !5276, !DIExpression(), !4723)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16, !dbg !5467
    #dbg_value(ptr %i.bc, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4731)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4731)
    #dbg_value(ptr poison, !975, !DIExpression(), !4731)
    #dbg_value(ptr poison, !980, !DIExpression(), !4733)
    #dbg_value(ptr poison, !982, !DIExpression(), !4733)
    #dbg_declare(ptr poison, !987, !DIExpression(), !4735)
    #dbg_value(ptr poison, !991, !DIExpression(), !4737)
    #dbg_value(ptr poison, !995, !DIExpression(), !4737)
    #dbg_value(ptr poison, !997, !DIExpression(), !4739)
    #dbg_value(ptr poison, !1001, !DIExpression(), !4739)
    #dbg_value(i8 poison, !988, !DIExpression(), !4740)
    #dbg_value(ptr undef, !5229, !DIExpression(), !4638)
    #dbg_value(i1 poison, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4638)
    #dbg_value(i64 1, !5268, !DIExpression(), !4742)
    #dbg_value(i64 1, !5271, !DIExpression(), !4744)
    #dbg_value(i64 1, !5275, !DIExpression(), !4746)
    #dbg_value(ptr %i.ba, !5269, !DIExpression(), !4742)
  %i.bd = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24, !dbg !5468
    #dbg_value(ptr %i.bd, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
    #dbg_value(ptr %.sroa.01.0.i63.i, !5278, !DIExpression(), !4748)
    #dbg_value(ptr %.sroa.01.0.i63.i, !5234, !DIExpression(), !4749)
    #dbg_value(i64 %i.bw, !5279, !DIExpression(), !4748)
    #dbg_value(ptr %i.by, !5235, !DIExpression(), !4750)
    #dbg_value(ptr %i.by, !5273, !DIExpression(), !4744)
    #dbg_value(ptr %i.bc, !5272, !DIExpression(), !4744)
  %i.be = load i64, ptr %i.bc, align 4, !dbg !5469, !alias.scope !5191, !noalias !5283
    #dbg_value(i64 %i.ca, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %i.bc, !5276, !DIExpression(), !4746)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24, !dbg !5470
    #dbg_value(ptr %i.bf, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4754)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4754)
    #dbg_value(ptr poison, !975, !DIExpression(), !4754)
    #dbg_value(ptr poison, !980, !DIExpression(), !4756)
    #dbg_value(ptr poison, !982, !DIExpression(), !4756)
    #dbg_declare(ptr poison, !987, !DIExpression(), !4758)
    #dbg_value(ptr poison, !991, !DIExpression(), !4760)
    #dbg_value(ptr poison, !995, !DIExpression(), !4760)
    #dbg_value(ptr poison, !997, !DIExpression(), !4762)
    #dbg_value(ptr poison, !1001, !DIExpression(), !4762)
    #dbg_value(i8 poison, !988, !DIExpression(), !4763)
    #dbg_value(ptr undef, !5229, !DIExpression(), !4636)
    #dbg_value(i1 poison, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4636)
    #dbg_value(i64 1, !5268, !DIExpression(), !4765)
    #dbg_value(i64 1, !5271, !DIExpression(), !4767)
    #dbg_value(i64 1, !5275, !DIExpression(), !4769)
    #dbg_value(ptr %i.bd, !5269, !DIExpression(), !4765)
  %i.bg = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32, !dbg !5471 ; 3 uses
    #dbg_value(ptr %i.bg, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
    #dbg_value(ptr %.sroa.01.0.i64.i, !5278, !DIExpression(), !4771)
    #dbg_value(ptr %.sroa.01.0.i64.i, !5234, !DIExpression(), !4772)
    #dbg_value(i64 %i.ca, !5279, !DIExpression(), !4771)
    #dbg_value(ptr %i.cc, !5235, !DIExpression(), !4773)
    #dbg_value(ptr %i.cc, !5273, !DIExpression(), !4767)
    #dbg_value(ptr %i.bf, !5272, !DIExpression(), !4767)
  %i.bh = load i64, ptr %i.bf, align 4, !dbg !5472, !alias.scope !5191, !noalias !5284
  %i.bi = load <8 x i32>, ptr %.sroa.9.131.i, align 4, !dbg !5473, !alias.scope !5191, !noalias !5192 ; 2 uses
  %i.bj = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>, !dbg !5474 ; 2 uses
  %i.bk = icmp eq <4 x i32> %i.bj, %i.ar, !dbg !5474
  %i.bl = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>, !dbg !5475
  %i.bm = icmp ult <4 x i32> %i.bl, %i.at, !dbg !5475
  %i.bn = icmp samesign ult <4 x i32> %i.bj, %i.ar, !dbg !5475
  %i.bo = select <4 x i1> %i.bk, <4 x i1> %i.bm, <4 x i1> %i.bn, !dbg !5474 ; 4 uses
  %i.bp = extractelement <4 x i1> %i.bo, i64 0, !dbg !5476 ; 2 uses
    #dbg_value(i1 %i.bp, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4642)
  %.sroa.01.0.i.i = select i1 %i.bp, ptr %2, ptr %i.ax, !dbg !5476
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i, !dbg !5477
  store i64 %i.ay, ptr %i.bq, align 4, !dbg !5463, !alias.scope !5192, !noalias !5285
  %i.br = zext i1 %i.bp to i64, !dbg !5478
  %i.bs = add i64 %.sroa.27.130.i, %i.br, !dbg !5478 ; 2 uses
  %i.bt = extractelement <4 x i1> %i.bo, i64 1, !dbg !5479 ; 2 uses
    #dbg_value(i1 %i.bt, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4640)
  %.sroa.01.0.i62.i = select i1 %i.bt, ptr %2, ptr %i.ba, !dbg !5479
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i62.i, i64 %i.bs, !dbg !5480
  store i64 %i.bb, ptr %i.bu, align 4, !dbg !5466, !alias.scope !5192, !noalias !5286
  %i.bv = zext i1 %i.bt to i64, !dbg !5481
  %i.bw = add i64 %i.bs, %i.bv, !dbg !5481        ; 2 uses
  %i.bx = extractelement <4 x i1> %i.bo, i64 2, !dbg !5482 ; 2 uses
    #dbg_value(i1 %i.bx, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4638)
  %.sroa.01.0.i63.i = select i1 %i.bx, ptr %2, ptr %i.bd, !dbg !5482
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i63.i, i64 %i.bw, !dbg !5483
  store i64 %i.be, ptr %i.by, align 4, !dbg !5469, !alias.scope !5192, !noalias !5287
  %i.bz = zext i1 %i.bx to i64, !dbg !5484
  %i.ca = add i64 %i.bw, %i.bz, !dbg !5484        ; 2 uses
  %i.cb = extractelement <4 x i1> %i.bo, i64 3, !dbg !5485 ; 2 uses
    #dbg_value(i1 %i.cb, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4636)
  %.sroa.01.0.i64.i = select i1 %i.cb, ptr %2, ptr %i.bg, !dbg !5485
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i64.i, i64 %i.ca, !dbg !5486
  store i64 %i.bh, ptr %i.cc, align 4, !dbg !5472, !alias.scope !5192, !noalias !5288
  %i.cd = zext i1 %i.cb to i64, !dbg !5487
  %i.ce = add i64 %i.ca, %i.cd, !dbg !5487        ; 2 uses
    #dbg_value(i64 %i.ce, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %i.bf, !5276, !DIExpression(), !4769)
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32, !dbg !5488 ; 3 uses
    #dbg_value(ptr %i.cf, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(i64 %i.ce, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %i.bg, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
  %i.cg = icmp ult ptr %i.cf, %i.av, !dbg !5461
  br i1 %i.cg, label %.lr.ph.i, label %._crit_edge.i, !dbg !5461

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.l
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.l ], [ %i.bg, %.lr.ph.i ], !dbg !5458 ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.l ], [ %i.ce, %.lr.ph.i ], !dbg !5458 ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.l ], [ %i.cf, %.lr.ph.i ], !dbg !5458 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i54, !5237, !DIExpression(), !4670)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph147, i64 %.sroa.0.0.i54, !dbg !5489 ; 2 uses
    #dbg_value(ptr %i.ch, !5218, !DIExpression(), !4776)
    #dbg_value(ptr %.sroa.9.1.lcssa.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(i64 %.sroa.27.1.lcssa.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %.sroa.43.1.lcssa.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
  %i.ci = icmp ult ptr %.sroa.9.1.lcssa.i, %i.ch, !dbg !5490
  br i1 %i.ci, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !5490

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.cp, %.lr.ph38.i ], !dbg !5458
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.ct, %.lr.ph38.i ], !dbg !5458 ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.cu, %.lr.ph38.i ], !dbg !5458 ; 2 uses
  %i.cj = icmp eq i64 %.sroa.0.0.i54, %.sroa.16.0140295, !dbg !5491
  br i1 %i.cj, label %bb.n, label %bb.m, !dbg !5491

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.cu, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.sroa.27.235.i = phi i64 [ %i.ct, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.cp, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
    #dbg_value(ptr %.sroa.9.236.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(i64 %.sroa.27.235.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %.sroa.43.234.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
  %.val.i = load i32, ptr %.sroa.9.236.i, align 4, !dbg !5492, !range !968, !alias.scope !5191, !noalias !5192, !noundef !634 ; 2 uses
  %i.ck = getelementptr i8, ptr %.sroa.9.236.i, i64 4, !dbg !5492
  %.val43.i = load i32, ptr %i.ck, align 4, !dbg !5492, !alias.scope !5191, !noalias !5192
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4778)
    #dbg_value(ptr poison, !969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4778)
    #dbg_value(ptr poison, !975, !DIExpression(), !4778)
    #dbg_value(ptr poison, !980, !DIExpression(), !4780)
    #dbg_value(ptr poison, !982, !DIExpression(), !4780)
    #dbg_declare(ptr poison, !987, !DIExpression(), !4782)
    #dbg_value(ptr poison, !991, !DIExpression(), !4784)
    #dbg_value(ptr poison, !995, !DIExpression(), !4784)
    #dbg_value(ptr poison, !997, !DIExpression(), !4786)
    #dbg_value(ptr poison, !1001, !DIExpression(), !4786)
  %i.cl = icmp eq i32 %.val.i, %i.aj, !dbg !5493
    #dbg_value(i8 poison, !988, !DIExpression(), !4787)
  %i.cm = icmp ult i32 %.val43.i, %i.ak, !dbg !5494
  %i.cn = icmp samesign ult i32 %.val.i, %i.aj, !dbg !5494
  %i.co = select i1 %i.cl, i1 %i.cm, i1 %i.cn, !dbg !5493 ; 2 uses
    #dbg_value(ptr undef, !5229, !DIExpression(), !4634)
    #dbg_value(i1 %i.co, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4634)
    #dbg_value(i64 1, !5268, !DIExpression(), !4789)
    #dbg_value(i64 1, !5271, !DIExpression(), !4791)
    #dbg_value(i64 1, !5275, !DIExpression(), !4793)
    #dbg_value(ptr %.sroa.43.234.i, !5269, !DIExpression(), !4789)
  %i.cp = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8, !dbg !5495 ; 3 uses
    #dbg_value(ptr %i.cp, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
  %.sroa.01.0.i65.i = select i1 %i.co, ptr %2, ptr %i.cp, !dbg !5496
    #dbg_value(ptr %.sroa.01.0.i65.i, !5278, !DIExpression(), !4795)
    #dbg_value(ptr %.sroa.01.0.i65.i, !5234, !DIExpression(), !4796)
    #dbg_value(i64 %.sroa.27.235.i, !5279, !DIExpression(), !4795)
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i65.i, i64 %.sroa.27.235.i, !dbg !5497
    #dbg_value(ptr %i.cq, !5235, !DIExpression(), !4797)
    #dbg_value(ptr %i.cq, !5273, !DIExpression(), !4791)
    #dbg_value(ptr %.sroa.9.236.i, !5272, !DIExpression(), !4791)
  %i.cr = load i64, ptr %.sroa.9.236.i, align 4, !dbg !5498, !alias.scope !5191, !noalias !5289
  store i64 %i.cr, ptr %i.cq, align 4, !dbg !5498, !alias.scope !5192, !noalias !5290
  %i.cs = zext i1 %i.co to i64, !dbg !5499
  %i.ct = add i64 %.sroa.27.235.i, %i.cs, !dbg !5500 ; 2 uses
    #dbg_value(i64 %i.ct, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %.sroa.9.236.i, !5276, !DIExpression(), !4793)
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8, !dbg !5501 ; 3 uses
    #dbg_value(ptr %i.cu, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(i64 %i.ct, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %i.cp, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
  %i.cv = icmp ult ptr %i.cu, %i.ch, !dbg !5490
  br i1 %i.cv, label %.lr.ph38.i, label %._crit_edge39.i, !dbg !5490

bb.m:                                             ; preds = %._crit_edge39.i
    #dbg_value(ptr undef, !5229, !DIExpression(), !4632)
    #dbg_value(i1 false, !5233, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4632)
    #dbg_value(i64 1, !5268, !DIExpression(), !4801)
    #dbg_value(i64 1, !5271, !DIExpression(), !4803)
    #dbg_value(i64 1, !5275, !DIExpression(), !4805)
    #dbg_value(ptr %.sroa.43.2.lcssa.i, !5269, !DIExpression(), !4801)
  %i.cw = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8, !dbg !5502 ; 2 uses
    #dbg_value(ptr %i.cw, !5214, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !4677)
    #dbg_value(ptr %i.cw, !5278, !DIExpression(), !4807)
    #dbg_value(ptr %i.cw, !5234, !DIExpression(), !4808)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5279, !DIExpression(), !4807)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %.sroa.27.2.lcssa.i, !dbg !5503
    #dbg_value(ptr %i.cx, !5235, !DIExpression(), !4809)
    #dbg_value(ptr %i.cx, !5273, !DIExpression(), !4803)
    #dbg_value(ptr %.sroa.9.2.lcssa.i, !5272, !DIExpression(), !4803)
  %i.cy = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !dbg !5504, !alias.scope !5191, !noalias !5291
  store i64 %i.cy, ptr %i.cx, align 4, !dbg !5504, !alias.scope !5192, !noalias !5292
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5214, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !4677)
    #dbg_value(ptr %.sroa.9.2.lcssa.i, !5276, !DIExpression(), !4805)
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8, !dbg !5505
    #dbg_value(ptr %i.cz, !5214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4677)
    #dbg_value(ptr poison, !5215, !DIExpression(), !4678)
    #dbg_value(ptr poison, !5247, !DIExpression(), !4653)
    #dbg_value(i64 %.sroa.16.0140295, !5206, !DIExpression(), !4643)
    #dbg_value(i64 %.sroa.16.0140295, !5216, !DIExpression(), !4644)
    #dbg_value(i64 %.sroa.16.0140295, !5237, !DIExpression(), !4647)
  br label %bb.l, !dbg !5456

bb.n:                                             ; preds = %._crit_edge39.i
    #dbg_value(ptr %.sroa.0.0.ph147, !5219, !DIExpression(), !4812)
    #dbg_value(ptr %.sroa.0.0.ph147, !5247, !DIExpression(), !4814)
    #dbg_value(ptr %.sroa.0.0.ph147, !5263, !DIExpression(), !4816)
    #dbg_value(ptr %2, !5246, !DIExpression(), !4814)
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5248, !DIExpression(), !4814)
  %i.da = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 3, !dbg !5506
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph147, ptr nonnull align 4 %2, i64 %i.da, i1 false), !dbg !5506, !alias.scope !5293
  %i.db = sub i64 %.sroa.16.0140295, %.sroa.27.2.lcssa.i, !dbg !5507 ; 5 uses
    #dbg_value(i64 0, !5220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4817)
    #dbg_value(i64 %i.db, !5220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4817)
    #dbg_value(ptr undef, !5199, !DIExpression(), !4627)
    #dbg_value(ptr undef, !5196, !DIExpression(), !4626)
    #dbg_value(ptr undef, !5193, !DIExpression(), !4625)
    #dbg_value(ptr undef, !5194, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4818)
  %.not47.i = icmp eq i64 %.sroa.16.0140295, %.sroa.27.2.lcssa.i, !dbg !5508
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i, !dbg !5509

.lr.ph45.i:                                       ; preds = %bb.n
  %i.dc = getelementptr [8 x i8], ptr %.sroa.0.0.ph147, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check304 = icmp ult i64 %i.db, 4, !dbg !5509
  br i1 %min.iters.check304, label %scalar.ph303.preheader, label %vector.ph305, !dbg !5509

vector.ph305:                                     ; preds = %.lr.ph45.i
  %n.vec306 = and i64 %i.db, -4                   ; 3 uses
  br label %vector.body307, !dbg !5509

vector.body307:                                   ; preds = %vector.body307, %vector.ph305
  %index308 = phi i64 [ 0, %vector.ph305 ], [ %index.next313, %vector.body307 ], !dbg !5510 ; 3 uses
  %i.dd = xor i64 %index308, -1, !dbg !5511
  %i.de = getelementptr [8 x i8], ptr %i.ap, i64 %i.dd, !dbg !5512 ; 2 uses
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %index308, !dbg !5513 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.de, i64 -8, !dbg !5514
  %i.dh = getelementptr i8, ptr %i.de, i64 -24, !dbg !5514
  %wide.load309 = load <2 x i64>, ptr %i.dg, align 4, !dbg !5514, !alias.scope !5192, !noalias !5191
  %wide.load310 = load <2 x i64>, ptr %i.dh, align 4, !dbg !5514, !alias.scope !5192, !noalias !5191
  %reverse311 = shufflevector <2 x i64> %wide.load309, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !5514
  %reverse312 = shufflevector <2 x i64> %wide.load310, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !5514
  %i.di = getelementptr i8, ptr %i.df, i64 16, !dbg !5514
  store <2 x i64> %reverse311, ptr %i.df, align 4, !dbg !5514, !alias.scope !5191, !noalias !5192
  store <2 x i64> %reverse312, ptr %i.di, align 4, !dbg !5514, !alias.scope !5191, !noalias !5192
  %index.next313 = add nuw i64 %index308, 4, !dbg !5510 ; 2 uses
  %i.dj = icmp eq i64 %index.next313, %n.vec306, !dbg !5509
  br i1 %i.dj, label %middle.block314, label %vector.body307, !dbg !5509, !llvm.loop !4819

middle.block314:                                  ; preds = %vector.body307
  %cmp.n315 = icmp eq i64 %i.db, %n.vec306, !dbg !5509
  br i1 %cmp.n315, label %.loopexit, label %scalar.ph303.preheader, !dbg !5509

scalar.ph303.preheader:                           ; preds = %.lr.ph45.i, %middle.block314
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec306, %middle.block314 ]
  br label %scalar.ph303, !dbg !5509

scalar.ph303:                                     ; preds = %scalar.ph303.preheader, %scalar.ph303
  %.sroa.07.043.i = phi i64 [ %i.dk, %scalar.ph303 ], [ %.sroa.07.043.i.ph, %scalar.ph303.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.07.043.i, !5197, !DIExpression(), !4820)
    #dbg_value(i64 %.sroa.07.043.i, !5251, !DIExpression(), !4656)
    #dbg_value(i64 %.sroa.07.043.i, !5254, !DIExpression(), !4659)
  %i.dk = add nuw i64 %.sroa.07.043.i, 1, !dbg !5510 ; 2 uses
    #dbg_value(i64 %i.dk, !5220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4817)
    #dbg_value(i64 %.sroa.07.043.i, !5221, !DIExpression(), !4821)
  %i.dl = xor i64 %.sroa.07.043.i, -1, !dbg !5511
    #dbg_value(!DIArgList(i64 %.sroa.16.0140295, i64 %i.dl), !5266, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !4674)
  %i.dm = getelementptr [8 x i8], ptr %i.ap, i64 %i.dl, !dbg !5512
    #dbg_value(ptr %i.dm, !5246, !DIExpression(), !4661)
    #dbg_value(!DIArgList(i64 %.sroa.27.2.lcssa.i, i64 %.sroa.07.043.i), !5266, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !4816)
  %i.dn = getelementptr [8 x i8], ptr %i.dc, i64 %.sroa.07.043.i, !dbg !5513
    #dbg_value(ptr %i.dn, !5247, !DIExpression(), !4661)
  %i.do = load i64, ptr %i.dm, align 4, !dbg !5514, !alias.scope !5192, !noalias !5191
  store i64 %i.do, ptr %i.dn, align 4, !dbg !5514, !alias.scope !5191, !noalias !5192
    #dbg_value(ptr undef, !5199, !DIExpression(), !4627)
    #dbg_value(ptr undef, !5196, !DIExpression(), !4626)
    #dbg_value(ptr undef, !5193, !DIExpression(), !4625)
    #dbg_value(ptr undef, !5194, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4818)
  %exitcond.not.i = icmp eq i64 %i.dk, %i.db, !dbg !5508
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph303, !dbg !5509, !llvm.loop !4822

.loopexit:                                        ; preds = %scalar.ph303, %middle.block314, %bb.n
    #dbg_value(i64 %.sroa.27.2.lcssa.i, !5116, !DIExpression(), !5190)
  %i.dp = icmp eq i64 %.sroa.27.2.lcssa.i, 0, !dbg !5515
    #dbg_value(i1 %i.dp, !5114, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5188)
  br i1 %i.dp, label %.thread, label %bb.o, !dbg !5516

end_hunk_0
