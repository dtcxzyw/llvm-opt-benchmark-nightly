Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_client.quiche_client.fa529efd9b26878d-cgu.13?download=true
inline.NumInlined: 274
inline.NumDeleted: 71
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree6removeNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client:bb.a
    #dbg_value(ptr %i.at, !1190, !DIExpression(), !4815)
    #dbg_value(ptr %i.at, !1196, !DIExpression(), !4817)
    #dbg_value(i64 %i.av, !1194, !DIExpression(), !4815)
    #dbg_value(i64 %i.av, !1200, !DIExpression(), !4817)
  store i64 %i.av, ptr %i.at, align 8, !dbg !6476
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6154), !dbg !6477
    #dbg_value(ptr poison, !1307, !DIExpression(), !4824)
    #dbg_value(ptr poison, !1308, !DIExpression(), !4825)
    #dbg_value(ptr poison, !1316, !DIExpression(), !4826)
    #dbg_value(ptr poison, !1312, !DIExpression(), !4827)
    #dbg_value(ptr %i.aq, !1317, !DIExpression(), !4826)
    #dbg_value(ptr %i.aq, !1313, !DIExpression(), !4827)
    #dbg_value(ptr %2, !1318, !DIExpression(), !4826)
  %i.aw = getelementptr i8, ptr %i.aq, i64 8, !dbg !6478 ; 2 uses
  %.val27.i = load ptr, ptr %i.aw, align 8, !dbg !6478, !noalias !6154, !nonnull !823, !noundef !823 ; 7 uses
    #dbg_value(ptr %.val27.i, !1319, !DIExpression(), !4828)
  %.val23.i = load ptr, ptr %.val27.i, align 8, !dbg !6479, !noalias !6154, !noundef !823 ; 3 uses
    #dbg_value(ptr poison, !1291, !DIExpression(), !4830)
    #dbg_value(ptr %i.aq, !1292, !DIExpression(), !4830)
    #dbg_value(ptr %.val23.i, !1293, !DIExpression(), !4830)
    #dbg_value(ptr %.val23.i, !1295, !DIExpression(), !4832)
    #dbg_value(ptr %.val23.i, !1298, !DIExpression(), !4834)
    #dbg_value(ptr %i.aq, !1296, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4835)
    #dbg_value(ptr %i.aq, !1299, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4836)
  store ptr %.val23.i, ptr %i.aw, align 8, !dbg !6480, !noalias !6154
  %.not.i354 = icmp eq ptr %.val23.i, null, !dbg !6481
  br i1 %.not.i354, label %bb.y, label %bb.x, !dbg !6482

bb.x:                                             ; preds = %bb.w
    #dbg_value(ptr %.val23.i, !1320, !DIExpression(), !4838)
    #dbg_value(ptr %i.aq, !1246, !DIExpression(), !4840)
    #dbg_value(ptr %i.aq, !1250, !DIExpression(), !4842)
    #dbg_value(ptr %i.aq, !1257, !DIExpression(), !4844)
    #dbg_value(ptr poison, !1247, !DIExpression(), !4840)
    #dbg_value(ptr poison, !1276, !DIExpression(), !4846)
    #dbg_value(ptr %.val23.i, !1248, !DIExpression(), !4840)
    #dbg_value(ptr %.val23.i, !1278, !DIExpression(), !4846)
    #dbg_value(ptr %.val23.i, !1252, !DIExpression(), !4842)
    #dbg_declare(ptr poison, !1251, !DIExpression(), !4847)
    #dbg_declare(ptr poison, !1273, !DIExpression(), !4848)
    #dbg_value(ptr %.val23.i, !1280, !DIExpression(), !4850)
    #dbg_value(ptr %.val23.i, !1280, !DIExpression(), !4852)
  %i.ax = getelementptr inbounds nuw i8, ptr %.val23.i, i64 16, !dbg !6483 ; 2 uses
    #dbg_value(ptr %i.ax, !1282, !DIExpression(), !4854)
  %i.ay = load i64, ptr %i.ax, align 8, !dbg !6484, !noalias !6154, !noundef !823
    #dbg_value(i8 poison, !1253, !DIExpression(), !4842)
    #dbg_value(i64 %i.ay, !1254, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4855)
  %i.az = and i64 %i.ay, 1, !dbg !6485
    #dbg_value(i64 %i.az, !1254, !DIExpression(), !4855)
    #dbg_value(i64 %.sroa.093.0.val, !1255, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !4856)
    #dbg_value(ptr %i.ax, !1285, !DIExpression(), !4858)
    #dbg_value(ptr %i.ax, !1288, !DIExpression(), !4860)
  %i.ba = or disjoint i64 %i.az, %.sroa.093.0.val, !dbg !6486
    #dbg_value(i64 %i.ba, !1286, !DIExpression(), !4858)
    #dbg_value(i64 %i.ba, !1289, !DIExpression(), !4860)
  store i64 %i.ba, ptr %i.ax, align 8, !dbg !6487, !noalias !6154
  %.val21.i.pre = load i64, ptr %i.at, align 8, !dbg !6488, !noalias !6154
  %i.bb = and i64 %.val21.i.pre, -2, !dbg !6489
  br label %bb.y, !dbg !6490

bb.y:                                             ; preds = %bb.x, %bb.w
  %.val21.i = phi i64 [ %i.bb, %bb.x ], [ %i.av, %bb.w ], !dbg !6488
    #dbg_value(ptr poison, !1129, !DIExpression(), !4863)
    #dbg_value(ptr poison, !1130, !DIExpression(), !4863)
    #dbg_value(i64 %.val21.i, !1131, !DIExpression(), !4864)
    #dbg_value(i64 %.val21.i, !1138, !DIExpression(), !4866)
    #dbg_value(i64 %.val21.i, !1246, !DIExpression(), !4868)
    #dbg_value(i64 %.val21.i, !1250, !DIExpression(), !4870)
    #dbg_value(i64 %.val21.i, !1257, !DIExpression(), !4872)
    #dbg_value(ptr poison, !1247, !DIExpression(), !4868)
    #dbg_value(ptr poison, !1276, !DIExpression(), !4874)
    #dbg_value(ptr %.val27.i, !1248, !DIExpression(), !4868)
    #dbg_value(ptr %.val27.i, !1278, !DIExpression(), !4874)
    #dbg_value(ptr %.val27.i, !1252, !DIExpression(), !4870)
    #dbg_declare(ptr poison, !1251, !DIExpression(), !4875)
    #dbg_declare(ptr poison, !1273, !DIExpression(), !4876)
    #dbg_value(ptr %.val27.i, !1280, !DIExpression(), !4878)
    #dbg_value(ptr %.val27.i, !1280, !DIExpression(), !4880)
  %i.bc = getelementptr inbounds nuw i8, ptr %.val27.i, i64 16, !dbg !6491 ; 2 uses
    #dbg_value(ptr %i.bc, !1282, !DIExpression(), !4882)
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !6492, !noalias !6154, !noundef !823
    #dbg_value(i8 poison, !1253, !DIExpression(), !4870)
    #dbg_value(i64 %i.bd, !1254, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4883)
  %i.be = and i64 %i.bd, 1, !dbg !6493
    #dbg_value(i64 %i.be, !1254, !DIExpression(), !4883)
    #dbg_value(i64 %.val21.i, !1255, !DIExpression(), !4884)
    #dbg_value(ptr %i.bc, !1285, !DIExpression(), !4886)
    #dbg_value(ptr %i.bc, !1288, !DIExpression(), !4888)
  %i.bf = or disjoint i64 %i.be, %.val21.i, !dbg !6494
    #dbg_value(i64 %i.bf, !1286, !DIExpression(), !4886)
    #dbg_value(i64 %i.bf, !1289, !DIExpression(), !4888)
  store i64 %i.bf, ptr %i.bc, align 8, !dbg !6495, !noalias !6154
  %.val.i355 = load i64, ptr %i.at, align 8, !dbg !6496, !noalias !6154, !noundef !823
    #dbg_value(ptr poison, !1129, !DIExpression(), !4891)
    #dbg_value(ptr poison, !1130, !DIExpression(), !4891)
  %i.bg = and i64 %.val.i355, -2, !dbg !6497      ; 2 uses
    #dbg_value(i64 %i.bg, !1131, !DIExpression(), !4892)
    #dbg_value(i64 %i.bg, !1138, !DIExpression(), !4894)
  %i.bh = inttoptr i64 %i.bg to ptr, !dbg !6498   ; 3 uses
  %.not19.i356 = icmp eq i64 %i.bg, 0, !dbg !6499
  br i1 %.not19.i356, label %bb.aa, label %bb.z, !dbg !6500

bb.z:                                             ; preds = %bb.y
    #dbg_value(ptr %i.bh, !1321, !DIExpression(), !4895)
    #dbg_value(ptr %i.bh, !1314, !DIExpression(), !4827)
  %.val22.i357 = load ptr, ptr %i.bh, align 8, !dbg !6501, !noalias !6154, !noundef !823
    #dbg_value(ptr undef, !1308, !DIExpression(), !4825)
    #dbg_value(ptr undef, !1307, !DIExpression(), !4824)
  %i.bi = icmp eq ptr %.val22.i357, %i.aq
  br i1 %i.bi, label %bb.ab, label %.critedge.i358, !dbg !6502

bb.aa:                                            ; preds = %bb.y
  store ptr %.val27.i, ptr %2, align 8, !dbg !6503, !alias.scope !6154
  br label %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree11rotate_leftNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit, !dbg !6504

.critedge.i358:                                   ; preds = %bb.z
    #dbg_value(ptr poison, !1291, !DIExpression(), !4897)
    #dbg_value(ptr %i.bh, !1292, !DIExpression(), !4897)
    #dbg_value(ptr %.val27.i, !1293, !DIExpression(), !4897)
    #dbg_value(ptr %.val27.i, !1295, !DIExpression(), !4899)
    #dbg_value(ptr %.val27.i, !1298, !DIExpression(), !4901)
    #dbg_value(ptr %i.bh, !1296, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4902)
    #dbg_value(ptr %i.bh, !1299, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4903)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8, !dbg !6505
  store ptr %.val27.i, ptr %i.bj, align 8, !dbg !6506, !noalias !6154
  br label %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree11rotate_leftNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit, !dbg !6507

bb.ab:                                            ; preds = %bb.z
    #dbg_value(ptr poison, !1225, !DIExpression(), !4907)
    #dbg_value(ptr %i.bh, !1228, !DIExpression(), !4907)
    #dbg_value(ptr %.val27.i, !1229, !DIExpression(), !4907)
    #dbg_value(ptr %.val27.i, !1231, !DIExpression(), !4909)
    #dbg_value(ptr %.val27.i, !1238, !DIExpression(), !4911)
    #dbg_value(ptr %i.bh, !1236, !DIExpression(), !4912)
    #dbg_value(ptr %i.bh, !1242, !DIExpression(), !4913)
  store ptr %.val27.i, ptr %i.bh, align 8, !dbg !6508, !noalias !6154
  br label %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree11rotate_leftNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit, !dbg !6509

_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree11rotate_leftNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.aa, %.critedge.i358, %bb.ab
    #dbg_value(ptr poison, !1225, !DIExpression(), !4916)
    #dbg_value(ptr %.val27.i, !1228, !DIExpression(), !4916)
    #dbg_value(ptr %i.aq, !1229, !DIExpression(), !4916)
    #dbg_value(ptr %i.aq, !1231, !DIExpression(), !4918)
    #dbg_value(ptr %i.aq, !1238, !DIExpression(), !4920)
    #dbg_value(ptr %.val27.i, !1236, !DIExpression(), !4921)
    #dbg_value(ptr %.val27.i, !1242, !DIExpression(), !4922)
  store ptr %i.aq, ptr %.val27.i, align 8, !dbg !6510, !noalias !6154
    #dbg_value(ptr %.val27.i, !1246, !DIExpression(), !4925)
    #dbg_value(ptr %.val27.i, !1250, !DIExpression(), !4927)
    #dbg_value(ptr %.val27.i, !1257, !DIExpression(), !4929)
    #dbg_value(ptr poison, !1247, !DIExpression(), !4925)
    #dbg_value(ptr poison, !1276, !DIExpression(), !4931)
    #dbg_value(ptr %i.aq, !1248, !DIExpression(), !4925)
    #dbg_value(ptr %i.aq, !1278, !DIExpression(), !4931)
    #dbg_value(ptr %i.aq, !1252, !DIExpression(), !4927)
    #dbg_declare(ptr poison, !1251, !DIExpression(), !4932)
    #dbg_declare(ptr poison, !1273, !DIExpression(), !4933)
    #dbg_value(ptr %i.aq, !1280, !DIExpression(), !4935)
    #dbg_value(ptr %i.aq, !1280, !DIExpression(), !4937)
    #dbg_value(ptr %i.at, !1282, !DIExpression(), !4939)
  %i.bk = load i64, ptr %i.at, align 8, !dbg !6511, !noalias !6154, !noundef !823
    #dbg_value(i8 poison, !1253, !DIExpression(), !4927)
    #dbg_value(i64 %i.bk, !1254, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4940)
  %i.bl = ptrtoint ptr %.val27.i to i64, !dbg !6512
  %i.bm = and i64 %i.bk, 1, !dbg !6513
    #dbg_value(i64 %i.bm, !1254, !DIExpression(), !4940)
    #dbg_value(i64 %i.bl, !1255, !DIExpression(), !4941)
    #dbg_value(ptr %i.at, !1285, !DIExpression(), !4943)
    #dbg_value(ptr %i.at, !1288, !DIExpression(), !4945)
  %i.bn = or disjoint i64 %i.bm, %i.bl, !dbg !6514
    #dbg_value(i64 %i.bn, !1286, !DIExpression(), !4943)
    #dbg_value(i64 %i.bn, !1289, !DIExpression(), !4945)
  store i64 %i.bn, ptr %i.at, align 8, !dbg !6515, !noalias !6154
  %.sroa.093.0.val315 = load ptr, ptr %.sroa.093.0, align 8, !dbg !6516, !nonnull !823, !noundef !823
    #dbg_value(ptr %.sroa.093.0.val315, !6069, !DIExpression(), !6156)
  %i.bo = getelementptr i8, ptr %.sroa.093.0.val315, i64 8, !dbg !6517
  %.val342 = load ptr, ptr %i.bo, align 8, !dbg !6517, !nonnull !823, !noundef !823 ; 2 uses
    #dbg_value(ptr %.val342, !6069, !DIExpression(), !6158)
    #dbg_value(ptr %.val342, !5899, !DIExpression(), !6150)
  %i.bp = getelementptr i8, ptr %.val342, i64 16, !dbg !6518
  %.val291 = load i64, ptr %i.bp, align 8, !dbg !6518, !noundef !823 ; 2 uses
    #dbg_value(ptr poison, !1129, !DIExpression(), !4948)
    #dbg_value(ptr poison, !1130, !DIExpression(), !4948)
  %i.bq = and i64 %.val291, -2, !dbg !6519
    #dbg_value(i64 %i.bq, !1131, !DIExpression(), !4949)
    #dbg_value(i64 %i.bq, !1138, !DIExpression(), !4951)
  %i.br = inttoptr i64 %i.bq to ptr, !dbg !6520   ; 2 uses
    #dbg_value(ptr %i.br, !6069, !DIExpression(), !6160)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
    #dbg_value(ptr %i.br, !5900, !DIExpression(), !6153)
    #dbg_value(ptr %i.br, !5934, !DIExpression(), !6018)
  br label %bb.ac, !dbg !6521

bb.ac:                                            ; preds = %.critedge275, %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree11rotate_leftNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit
  %.pre537 = phi i64 [ %.val291, %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree11rotate_leftNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit ], [ %.sroa.093.0.val, %.critedge275 ] ; 2 uses
  %.sroa.093.1 = phi ptr [ %.val342, %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree11rotate_leftNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit ], [ %.sroa.093.0, %.critedge275 ], !dbg !6462 ; 11 uses
  %.sroa.0127.0 = phi ptr [ %i.br, %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree11rotate_leftNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit ], [ %i.aq, %.critedge275 ], !dbg !6522 ; 4 uses
    #dbg_value(ptr %.sroa.0127.0, !5934, !DIExpression(), !6018)
    #dbg_value(ptr %.sroa.0127.0, !5900, !DIExpression(), !6153)
    #dbg_value(ptr %.sroa.093.1, !5899, !DIExpression(), !6150)
  %.sroa.093.1.val314 = load ptr, ptr %.sroa.093.1, align 8, !dbg !6523, !noundef !823 ; 5 uses
    #dbg_value(ptr %.sroa.093.1.val314, !6161, !DIExpression(), !6176)
    #dbg_value(ptr poison, !6172, !DIExpression(), !6177)
    #dbg_value(ptr poison, !6178, !DIExpression(), !6184)
  %.not253 = icmp eq ptr %.sroa.093.1.val314, null, !dbg !6524
  br i1 %.not253, label %.thread431, label %bb.ad, !dbg !6525

bb.ad:                                            ; preds = %bb.ac
    #dbg_value(ptr %.sroa.093.1.val314, !6173, !DIExpression(), !6185)
    #dbg_value(ptr %.sroa.093.1.val314, !6181, !DIExpression(), !6186)
  %i.bs = getelementptr i8, ptr %.sroa.093.1.val314, i64 16, !dbg !6526
  %.val301 = load i64, ptr %i.bs, align 8, !dbg !6526, !noundef !823 ; 3 uses
    #dbg_value(ptr poison, !1140, !DIExpression(), !4957)
    #dbg_value(ptr poison, !1143, !DIExpression(), !4957)
    #dbg_value(i64 %.val301, !5901, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !6188)
  %i.bt = getelementptr i8, ptr %.sroa.093.1, i64 8, !dbg !6527
  %.sroa.093.1.val341 = load ptr, ptr %i.bt, align 8, !dbg !6527, !noundef !823 ; 2 uses
    #dbg_value(ptr %.sroa.093.1.val341, !6189, !DIExpression(), !6201)
    #dbg_value(ptr poison, !6197, !DIExpression(), !6202)
    #dbg_value(ptr poison, !6203, !DIExpression(), !6210)
  %.not254 = icmp eq ptr %.sroa.093.1.val341, null, !dbg !6528
  br i1 %.not254, label %bb.ae, label %bb.af, !dbg !6529

.thread431:                                       ; preds = %bb.ac
    #dbg_value(i8 2, !5901, !DIExpression(), !6188)
  %i.bu = getelementptr i8, ptr %.sroa.093.1, i64 8, !dbg !6527
  %.sroa.093.1.val341433 = load ptr, ptr %i.bu, align 8, !dbg !6527, !noundef !823 ; 2 uses
    #dbg_value(ptr %.sroa.093.1.val341433, !6189, !DIExpression(), !6201)
    #dbg_value(ptr poison, !6197, !DIExpression(), !6202)
    #dbg_value(ptr poison, !6203, !DIExpression(), !6210)
  %.not254434 = icmp eq ptr %.sroa.093.1.val341433, null, !dbg !6528
  br i1 %.not254434, label %.thread453, label %bb.ag, !dbg !6529

bb.ae:                                            ; preds = %bb.ad
    #dbg_value(i64 %.val301, !5901, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !6188)
    #dbg_value(i8 2, !5902, !DIExpression(), !6211)
    #dbg_value(ptr undef, !5983, !DIExpression(), !6013)
    #dbg_value(ptr undef, !5960, !DIExpression(), !6012)
  %i.bv = and i64 %.val301, 1
  %.not256 = icmp eq i64 %i.bv, 0
  br i1 %.not256, label %.loopexit, label %.thread453, !dbg !6530

.thread453:                                       ; preds = %.thread431, %bb.af, %bb.ae, %bb.ag
    #dbg_value(ptr poison, !1151, !DIExpression(), !4963)
    #dbg_value(ptr poison, !1157, !DIExpression(), !4965)
    #dbg_value(ptr %.sroa.093.1, !1154, !DIExpression(), !4963)
    #dbg_value(ptr %.sroa.093.1, !1159, !DIExpression(), !4965)
    #dbg_value(ptr %.sroa.093.1, !1162, !DIExpression(), !4967)
    #dbg_value(i1 false, !1155, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4963)
    #dbg_declare(ptr poison, !1166, !DIExpression(), !4968)
    #dbg_value(ptr %.sroa.093.1, !1173, !DIExpression(), !4970)
    #dbg_value(ptr %.sroa.093.1, !1173, !DIExpression(), !4972)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.093.1, i64 16, !dbg !6531
    #dbg_value(ptr %i.bw, !1185, !DIExpression(), !4974)
  %i.bx = and i64 %.pre537, -2, !dbg !6532
    #dbg_value(i1 false, !1168, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4967)
    #dbg_value(i64 0, !1169, !DIExpression(), !4975)
    #dbg_value(i64 %i.bx, !1170, !DIExpression(), !4976)
    #dbg_value(ptr %i.bw, !1190, !DIExpression(), !4978)
    #dbg_value(ptr %i.bw, !1196, !DIExpression(), !4980)
    #dbg_value(i64 %i.bx, !1194, !DIExpression(), !4978)
    #dbg_value(i64 %i.bx, !1200, !DIExpression(), !4980)
  store i64 %i.bx, ptr %i.bw, align 8, !dbg !6533
  %i.by = getelementptr i8, ptr %.sroa.0127.0, i64 16, !dbg !6534
  %.sroa.0127.0.val290 = load i64, ptr %i.by, align 8, !dbg !6534, !noundef !823 ; 3 uses
    #dbg_value(ptr poison, !1129, !DIExpression(), !4983)
    #dbg_value(ptr poison, !1130, !DIExpression(), !4983)
  %i.bz = and i64 %.sroa.0127.0.val290, -2, !dbg !6535 ; 2 uses
    #dbg_value(i64 %.sroa.0127.0.val290, !1131, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !4984)
    #dbg_value(i64 %.sroa.0127.0.val290, !1138, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !4986)
  %i.ca = inttoptr i64 %i.bz to ptr, !dbg !6536   ; 2 uses
    #dbg_value(ptr poison, !6020, !DIExpression(), !6213)
    #dbg_value(ptr poison, !6027, !DIExpression(), !6216)
  %.not260 = icmp ne i64 %i.bz, 0, !dbg !6537
    #dbg_value(ptr poison, !1140, !DIExpression(), !4988)
    #dbg_value(ptr poison, !1143, !DIExpression(), !4988)
  %.not.i380 = trunc i64 %.sroa.0127.0.val290 to i1
  %or.cond493 = and i1 %.not260, %.not.i380, !dbg !6538
  br i1 %or.cond493, label %bb.at, label %bb.av, !dbg !6538

bb.af:                                            ; preds = %bb.ad
    #dbg_value(ptr %.sroa.093.1.val341, !6198, !DIExpression(), !6217)
    #dbg_value(ptr %.sroa.093.1.val341, !6206, !DIExpression(), !6218)
  %i.cb = getelementptr i8, ptr %.sroa.093.1.val341, i64 16, !dbg !6539
  %.val300 = load i64, ptr %i.cb, align 8, !dbg !6539, !noundef !823 ; 2 uses
    #dbg_value(ptr poison, !1140, !DIExpression(), !4990)
    #dbg_value(ptr poison, !1143, !DIExpression(), !4990)
    #dbg_value(i64 %.val300, !5902, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6211)
    #dbg_value(ptr undef, !5983, !DIExpression(), !6013)
    #dbg_value(ptr undef, !5960, !DIExpression(), !6012)
  %i.cc = and i64 %.val301, 1, !dbg !6010
  %i.cd = and i64 %i.cc, %.val300, !dbg !6010
  %brmerge.not.not = icmp eq i64 %i.cd, 0, !dbg !6010
  br i1 %brmerge.not.not, label %bb.ah, label %.thread453, !dbg !6010

bb.ag:                                            ; preds = %.thread431
    #dbg_value(ptr %.sroa.093.1.val341433, !6198, !DIExpression(), !6217)
    #dbg_value(ptr %.sroa.093.1.val341433, !6206, !DIExpression(), !6218)
  %i.ce = getelementptr i8, ptr %.sroa.093.1.val341433, i64 16, !dbg !6539
  %.val300447 = load i64, ptr %i.ce, align 8, !dbg !6539, !noundef !823 ; 2 uses
    #dbg_value(ptr poison, !1140, !DIExpression(), !4990)
    #dbg_value(ptr poison, !1143, !DIExpression(), !4990)
  %.not.i360448 = trunc i64 %.val300447 to i1, !dbg !6540
    #dbg_value(i1 %.not.i360448, !5902, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6211)
    #dbg_value(ptr undef, !5983, !DIExpression(), !6013)
    #dbg_value(ptr undef, !5960, !DIExpression(), !6012)
    #dbg_value(ptr undef, !5983, !DIExpression(), !6009)
    #dbg_value(ptr undef, !5960, !DIExpression(), !6008)
  br i1 %.not.i360448, label %.thread453, label %bb.ah, !dbg !6006

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.val299 = phi i64 [ %.val300, %bb.af ], [ %.val300447, %bb.ag ], !dbg !6541
    #dbg_value(ptr poison, !6234, !DIExpression(), !6238)
    #dbg_value(ptr poison, !6235, !DIExpression(), !6239)
    #dbg_value(ptr poison, !6224, !DIExpression(), !6240)
    #dbg_value(ptr poison, !6236, !DIExpression(), !6241)
    #dbg_value(ptr poison, !6223, !DIExpression(), !6242)
    #dbg_value(ptr poison, !1140, !DIExpression(), !4996)
    #dbg_value(ptr poison, !1143, !DIExpression(), !4996)
  %.not.i361 = trunc i64 %.val299 to i1, !dbg !6542
    #dbg_value(ptr undef, !5983, !DIExpression(), !6004)
    #dbg_value(ptr undef, !5960, !DIExpression(), !6003)
  br i1 %.not.i361, label %..loopexit_crit_edge, label %._crit_edge, !dbg !6001

._crit_edge:                                      ; preds = %bb.ah
  %.pre545 = and i64 %.pre537, -2, !dbg !6543
  br label %bb.an, !dbg !6001

..loopexit_crit_edge:                             ; preds = %bb.ah
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.093.1.val314, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !6544
  br label %.loopexit, !dbg !6001

.loopexit:                                        ; preds = %bb.ae, %..loopexit_crit_edge
  %i.cf = phi i64 [ %.pre, %..loopexit_crit_edge ], [ %.val301, %bb.ae ], !dbg !6544
    #dbg_value(ptr %.sroa.093.1.val314, !6069, !DIExpression(), !6244)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.093.1.val314) ]
    #dbg_value(ptr poison, !1151, !DIExpression(), !5002)
    #dbg_value(ptr poison, !1157, !DIExpression(), !5003)
    #dbg_value(ptr %.sroa.093.1.val314, !1154, !DIExpression(), !5002)
    #dbg_value(ptr %.sroa.093.1.val314, !1159, !DIExpression(), !5003)
    #dbg_value(ptr %.sroa.093.1.val314, !1162, !DIExpression(), !5005)
    #dbg_value(i1 true, !1155, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5002)
    #dbg_declare(ptr poison, !1166, !DIExpression(), !5006)
    #dbg_value(ptr %.sroa.093.1.val314, !1173, !DIExpression(), !5008)
    #dbg_value(ptr %.sroa.093.1.val314, !1173, !DIExpression(), !5010)
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.093.1.val314, i64 16, !dbg !6545
    #dbg_value(ptr %i.cg, !1185, !DIExpression(), !5011)
    #dbg_value(i1 true, !1168, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5005)
    #dbg_value(i64 1, !1169, !DIExpression(), !5012)
    #dbg_value(i64 %i.cf, !1170, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !5013)
    #dbg_value(ptr %i.cg, !1190, !DIExpression(), !5015)
    #dbg_value(ptr %i.cg, !1196, !DIExpression(), !5017)
  %i.ch = or i64 %i.cf, 1, !dbg !6546
    #dbg_value(i64 %i.ch, !1194, !DIExpression(), !5015)
    #dbg_value(i64 %i.ch, !1200, !DIExpression(), !5017)
  store i64 %i.ch, ptr %i.cg, align 8, !dbg !6547
    #dbg_value(ptr poison, !1151, !DIExpression(), !5020)
    #dbg_value(ptr poison, !1157, !DIExpression(), !5022)
    #dbg_value(ptr %.sroa.093.1, !1154, !DIExpression(), !5020)
    #dbg_value(ptr %.sroa.093.1, !1159, !DIExpression(), !5022)
    #dbg_value(ptr %.sroa.093.1, !1162, !DIExpression(), !5024)
    #dbg_value(i1 false, !1155, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5020)
    #dbg_declare(ptr poison, !1166, !DIExpression(), !5025)
    #dbg_value(ptr %.sroa.093.1, !1173, !DIExpression(), !5027)
    #dbg_value(ptr %.sroa.093.1, !1173, !DIExpression(), !5029)
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.093.1, i64 16, !dbg !6548 ; 6 uses
    #dbg_value(ptr %i.ci, !1185, !DIExpression(), !5031)
  %i.cj = load i64, ptr %i.ci, align 8, !dbg !6549, !noundef !823
  %i.ck = and i64 %i.cj, -2, !dbg !6550           ; 2 uses
    #dbg_value(i1 false, !1168, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5024)
    #dbg_value(i64 0, !1169, !DIExpression(), !5032)
    #dbg_value(i64 %i.ck, !1170, !DIExpression(), !5033)
    #dbg_value(ptr %i.ci, !1190, !DIExpression(), !5035)
    #dbg_value(ptr %i.ci, !1196, !DIExpression(), !5037)
    #dbg_value(i64 %i.ck, !1194, !DIExpression(), !5035)
    #dbg_value(i64 %i.ck, !1200, !DIExpression(), !5037)
  store i64 %i.ck, ptr %i.ci, align 8, !dbg !6551
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6245), !dbg !6552
    #dbg_value(ptr poison, !1208, !DIExpression(), !5044)
    #dbg_value(ptr poison, !1209, !DIExpression(), !5045)
    #dbg_value(ptr poison, !1218, !DIExpression(), !5046)
    #dbg_value(ptr poison, !1213, !DIExpression(), !5047)
    #dbg_value(ptr %.sroa.093.1, !1219, !DIExpression(), !5046)
    #dbg_value(ptr %.sroa.093.1, !1214, !DIExpression(), !5047)
    #dbg_value(ptr %2, !1220, !DIExpression(), !5046)
  %.val24.i = load ptr, ptr %.sroa.093.1, align 8, !dbg !6553, !noalias !6245, !nonnull !823, !noundef !823 ; 8 uses
    #dbg_value(ptr %.val24.i, !1221, !DIExpression(), !5048)
  %i.cl = getelementptr i8, ptr %.val24.i, i64 8, !dbg !6554 ; 2 uses
  %.val27.i362 = load ptr, ptr %i.cl, align 8, !dbg !6554, !noalias !6245, !noundef !823 ; 3 uses
    #dbg_value(ptr poison, !1225, !DIExpression(), !5050)
    #dbg_value(ptr %.sroa.093.1, !1228, !DIExpression(), !5050)
    #dbg_value(ptr %.val27.i362, !1229, !DIExpression(), !5050)
    #dbg_value(ptr %.val27.i362, !1231, !DIExpression(), !5052)
    #dbg_value(ptr %.val27.i362, !1238, !DIExpression(), !5054)
    #dbg_value(ptr %.sroa.093.1, !1236, !DIExpression(), !5055)
    #dbg_value(ptr %.sroa.093.1, !1242, !DIExpression(), !5056)
  store ptr %.val27.i362, ptr %.sroa.093.1, align 8, !dbg !6555, !noalias !6245
  %.not.i363 = icmp eq ptr %.val27.i362, null, !dbg !6556
  br i1 %.not.i363, label %bb.aj, label %bb.ai, !dbg !6557

bb.ai:                                            ; preds = %.loopexit
    #dbg_value(ptr %.val27.i362, !1222, !DIExpression(), !5058)
    #dbg_value(ptr %.sroa.093.1, !1246, !DIExpression(), !5060)
    #dbg_value(ptr %.sroa.093.1, !1250, !DIExpression(), !5062)
    #dbg_value(ptr %.sroa.093.1, !1257, !DIExpression(), !5064)
    #dbg_value(ptr poison, !1247, !DIExpression(), !5060)
    #dbg_value(ptr poison, !1276, !DIExpression(), !5066)
    #dbg_value(ptr %.val27.i362, !1248, !DIExpression(), !5060)
    #dbg_value(ptr %.val27.i362, !1278, !DIExpression(), !5066)
    #dbg_value(ptr %.val27.i362, !1252, !DIExpression(), !5062)
    #dbg_declare(ptr poison, !1251, !DIExpression(), !5067)
    #dbg_declare(ptr poison, !1273, !DIExpression(), !5068)
    #dbg_value(ptr %.val27.i362, !1280, !DIExpression(), !5070)
    #dbg_value(ptr %.val27.i362, !1280, !DIExpression(), !5072)
  %i.cm = getelementptr inbounds nuw i8, ptr %.val27.i362, i64 16, !dbg !6558 ; 2 uses
    #dbg_value(ptr %i.cm, !1282, !DIExpression(), !5074)
  %i.cn = load i64, ptr %i.cm, align 8, !dbg !6559, !noalias !6245, !noundef !823
    #dbg_value(i8 poison, !1253, !DIExpression(), !5062)
    #dbg_value(i64 %i.cn, !1254, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5075)
  %i.co = ptrtoint ptr %.sroa.093.1 to i64, !dbg !6560
  %i.cp = and i64 %i.cn, 1, !dbg !6561
    #dbg_value(i64 %i.cp, !1254, !DIExpression(), !5075)
    #dbg_value(i64 %i.co, !1255, !DIExpression(), !5076)
    #dbg_value(ptr %i.cm, !1285, !DIExpression(), !5078)
    #dbg_value(ptr %i.cm, !1288, !DIExpression(), !5080)
  %i.cq = or disjoint i64 %i.cp, %i.co, !dbg !6562
    #dbg_value(i64 %i.cq, !1286, !DIExpression(), !5078)
    #dbg_value(i64 %i.cq, !1289, !DIExpression(), !5080)
  store i64 %i.cq, ptr %i.cm, align 8, !dbg !6563, !noalias !6245
  %.val21.i364.pre = load i64, ptr %i.ci, align 8, !dbg !6564, !noalias !6245
  %i.cr = and i64 %.val21.i364.pre, -2, !dbg !6565
  br label %bb.aj, !dbg !6566

bb.aj:                                            ; preds = %bb.ai, %.loopexit
  %.val21.i364 = phi i64 [ %i.cr, %bb.ai ], [ %i.ck, %.loopexit ], !dbg !6564
    #dbg_value(ptr poison, !1129, !DIExpression(), !5083)
    #dbg_value(ptr poison, !1130, !DIExpression(), !5083)
    #dbg_value(i64 %.val21.i364, !1131, !DIExpression(), !5084)
    #dbg_value(i64 %.val21.i364, !1138, !DIExpression(), !5086)
    #dbg_value(i64 %.val21.i364, !1246, !DIExpression(), !5088)
    #dbg_value(i64 %.val21.i364, !1250, !DIExpression(), !5090)
    #dbg_value(i64 %.val21.i364, !1257, !DIExpression(), !5092)
    #dbg_value(ptr poison, !1247, !DIExpression(), !5088)
    #dbg_value(ptr poison, !1276, !DIExpression(), !5094)
    #dbg_value(ptr %.val24.i, !1248, !DIExpression(), !5088)
    #dbg_value(ptr %.val24.i, !1278, !DIExpression(), !5094)
    #dbg_value(ptr %.val24.i, !1252, !DIExpression(), !5090)
    #dbg_declare(ptr poison, !1251, !DIExpression(), !5095)
    #dbg_declare(ptr poison, !1273, !DIExpression(), !5096)
    #dbg_value(ptr %.val24.i, !1280, !DIExpression(), !5098)
    #dbg_value(ptr %.val24.i, !1280, !DIExpression(), !5100)
  %i.cs = getelementptr inbounds nuw i8, ptr %.val24.i, i64 16, !dbg !6567 ; 2 uses
    #dbg_value(ptr %i.cs, !1282, !DIExpression(), !5102)
  %i.ct = load i64, ptr %i.cs, align 8, !dbg !6568, !noalias !6245, !noundef !823
    #dbg_value(i8 poison, !1253, !DIExpression(), !5090)
    #dbg_value(i64 %i.ct, !1254, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5103)
  %i.cu = and i64 %i.ct, 1, !dbg !6569
    #dbg_value(i64 %i.cu, !1254, !DIExpression(), !5103)
    #dbg_value(i64 %.val21.i364, !1255, !DIExpression(), !5104)
    #dbg_value(ptr %i.cs, !1285, !DIExpression(), !5106)
    #dbg_value(ptr %i.cs, !1288, !DIExpression(), !5108)
  %i.cv = or disjoint i64 %i.cu, %.val21.i364, !dbg !6570
    #dbg_value(i64 %i.cv, !1286, !DIExpression(), !5106)
    #dbg_value(i64 %i.cv, !1289, !DIExpression(), !5108)
  store i64 %i.cv, ptr %i.cs, align 8, !dbg !6571, !noalias !6245
  %.val.i365 = load i64, ptr %i.ci, align 8, !dbg !6572, !noalias !6245, !noundef !823
    #dbg_value(ptr poison, !1129, !DIExpression(), !5111)
    #dbg_value(ptr poison, !1130, !DIExpression(), !5111)
  %i.cw = and i64 %.val.i365, -2, !dbg !6573      ; 2 uses
    #dbg_value(i64 %i.cw, !1131, !DIExpression(), !5112)
    #dbg_value(i64 %i.cw, !1138, !DIExpression(), !5114)
  %i.cx = inttoptr i64 %i.cw to ptr, !dbg !6574   ; 3 uses
  %.not19.i366 = icmp eq i64 %i.cw, 0, !dbg !6575
  br i1 %.not19.i366, label %bb.al, label %bb.ak, !dbg !6576

bb.ak:                                            ; preds = %bb.aj
    #dbg_value(ptr %i.cx, !1223, !DIExpression(), !5115)
    #dbg_value(ptr %i.cx, !1215, !DIExpression(), !5047)
  %.val22.i367 = load ptr, ptr %i.cx, align 8, !dbg !6577, !noalias !6245, !noundef !823
    #dbg_value(ptr undef, !1209, !DIExpression(), !5045)
    #dbg_value(ptr undef, !1208, !DIExpression(), !5044)
  %i.cy = icmp eq ptr %.val22.i367, %.sroa.093.1
  br i1 %i.cy, label %bb.am, label %.critedge.i368, !dbg !6578

bb.al:                                            ; preds = %bb.aj
  store ptr %.val24.i, ptr %2, align 8, !dbg !6579, !alias.scope !6245
  br label %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree12rotate_rightNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit, !dbg !6580

.critedge.i368:                                   ; preds = %bb.ak
    #dbg_value(ptr poison, !1291, !DIExpression(), !5117)
    #dbg_value(ptr %i.cx, !1292, !DIExpression(), !5117)
    #dbg_value(ptr %.val24.i, !1293, !DIExpression(), !5117)
    #dbg_value(ptr %.val24.i, !1295, !DIExpression(), !5119)
    #dbg_value(ptr %.val24.i, !1298, !DIExpression(), !5121)
    #dbg_value(ptr %i.cx, !1296, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5122)
    #dbg_value(ptr %i.cx, !1299, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5123)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8, !dbg !6581
  store ptr %.val24.i, ptr %i.cz, align 8, !dbg !6582, !noalias !6245
  br label %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree12rotate_rightNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit, !dbg !6583

bb.am:                                            ; preds = %bb.ak
    #dbg_value(ptr poison, !1225, !DIExpression(), !5127)
    #dbg_value(ptr %i.cx, !1228, !DIExpression(), !5127)
    #dbg_value(ptr %.val24.i, !1229, !DIExpression(), !5127)
    #dbg_value(ptr %.val24.i, !1231, !DIExpression(), !5129)
    #dbg_value(ptr %.val24.i, !1238, !DIExpression(), !5131)
    #dbg_value(ptr %i.cx, !1236, !DIExpression(), !5132)
    #dbg_value(ptr %i.cx, !1242, !DIExpression(), !5133)
  store ptr %.val24.i, ptr %i.cx, align 8, !dbg !6584, !noalias !6245
  br label %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree12rotate_rightNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit, !dbg !6585

_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree12rotate_rightNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit: ; preds = %bb.al, %.critedge.i368, %bb.am
    #dbg_value(ptr poison, !1291, !DIExpression(), !5136)
    #dbg_value(ptr %.val24.i, !1292, !DIExpression(), !5136)
    #dbg_value(ptr %.sroa.093.1, !1293, !DIExpression(), !5136)
    #dbg_value(ptr %.sroa.093.1, !1295, !DIExpression(), !5138)
    #dbg_value(ptr %.sroa.093.1, !1298, !DIExpression(), !5140)
    #dbg_value(ptr %.val24.i, !1296, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5141)
    #dbg_value(ptr %.val24.i, !1299, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5142)
  store ptr %.sroa.093.1, ptr %i.cl, align 8, !dbg !6586, !noalias !6245
    #dbg_value(ptr %.val24.i, !1246, !DIExpression(), !5145)
    #dbg_value(ptr %.val24.i, !1250, !DIExpression(), !5147)
    #dbg_value(ptr %.val24.i, !1257, !DIExpression(), !5149)
    #dbg_value(ptr poison, !1247, !DIExpression(), !5145)
    #dbg_value(ptr poison, !1276, !DIExpression(), !5151)
    #dbg_value(ptr %.sroa.093.1, !1248, !DIExpression(), !5145)
    #dbg_value(ptr %.sroa.093.1, !1278, !DIExpression(), !5151)
    #dbg_value(ptr %.sroa.093.1, !1252, !DIExpression(), !5147)
    #dbg_declare(ptr poison, !1251, !DIExpression(), !5152)
    #dbg_declare(ptr poison, !1273, !DIExpression(), !5153)
    #dbg_value(ptr %.sroa.093.1, !1280, !DIExpression(), !5155)
    #dbg_value(ptr %.sroa.093.1, !1280, !DIExpression(), !5157)
    #dbg_value(ptr %i.ci, !1282, !DIExpression(), !5159)
  %i.da = load i64, ptr %i.ci, align 8, !dbg !6587, !noalias !6245, !noundef !823
    #dbg_value(i8 poison, !1253, !DIExpression(), !5147)
    #dbg_value(i64 %i.da, !1254, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5160)
  %i.db = ptrtoint ptr %.val24.i to i64, !dbg !6588
  %i.dc = and i64 %i.da, 1, !dbg !6589
    #dbg_value(i64 %i.dc, !1254, !DIExpression(), !5160)
    #dbg_value(i64 %i.db, !1255, !DIExpression(), !5161)
    #dbg_value(ptr %i.ci, !1285, !DIExpression(), !5163)
    #dbg_value(ptr %i.ci, !1288, !DIExpression(), !5165)
  %i.dd = or disjoint i64 %i.dc, %i.db, !dbg !6590
    #dbg_value(i64 %i.dd, !1286, !DIExpression(), !5163)
    #dbg_value(i64 %i.dd, !1289, !DIExpression(), !5165)
  store i64 %i.dd, ptr %i.ci, align 8, !dbg !6591, !noalias !6245
end_hunk_0
begin_hunk_1_@_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree6removeNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client:bb.a
  %.val27.i382 = load ptr, ptr %i.er, align 8, !dbg !6666, !noalias !6261, !noundef !823 ; 3 uses
    #dbg_value(ptr poison, !1225, !DIExpression(), !5443)
    #dbg_value(ptr %i.aq, !1228, !DIExpression(), !5443)
    #dbg_value(ptr %.val27.i382, !1229, !DIExpression(), !5443)
    #dbg_value(ptr %.val27.i382, !1231, !DIExpression(), !5445)
    #dbg_value(ptr %.val27.i382, !1238, !DIExpression(), !5447)
    #dbg_value(ptr %i.aq, !1236, !DIExpression(), !5448)
    #dbg_value(ptr %i.aq, !1242, !DIExpression(), !5449)
  store ptr %.val27.i382, ptr %i.aq, align 8, !dbg !6667, !noalias !6261
  %.not.i383 = icmp eq ptr %.val27.i382, null, !dbg !6668
  br i1 %.not.i383, label %bb.ay, label %bb.ax, !dbg !6669

bb.ax:                                            ; preds = %bb.aw
    #dbg_value(ptr %.val27.i382, !1222, !DIExpression(), !5451)
    #dbg_value(ptr %i.aq, !1246, !DIExpression(), !5453)
    #dbg_value(ptr %i.aq, !1250, !DIExpression(), !5455)
    #dbg_value(ptr %i.aq, !1257, !DIExpression(), !5457)
    #dbg_value(ptr poison, !1247, !DIExpression(), !5453)
    #dbg_value(ptr poison, !1276, !DIExpression(), !5459)
    #dbg_value(ptr %.val27.i382, !1248, !DIExpression(), !5453)
    #dbg_value(ptr %.val27.i382, !1278, !DIExpression(), !5459)
    #dbg_value(ptr %.val27.i382, !1252, !DIExpression(), !5455)
    #dbg_declare(ptr poison, !1251, !DIExpression(), !5460)
    #dbg_declare(ptr poison, !1273, !DIExpression(), !5461)
    #dbg_value(ptr %.val27.i382, !1280, !DIExpression(), !5463)
    #dbg_value(ptr %.val27.i382, !1280, !DIExpression(), !5465)
  %i.es = getelementptr inbounds nuw i8, ptr %.val27.i382, i64 16, !dbg !6670 ; 2 uses
    #dbg_value(ptr %i.es, !1282, !DIExpression(), !5467)
  %i.et = load i64, ptr %i.es, align 8, !dbg !6671, !noalias !6261, !noundef !823
    #dbg_value(i8 poison, !1253, !DIExpression(), !5455)
    #dbg_value(i64 %i.et, !1254, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5468)
  %i.eu = and i64 %i.et, 1, !dbg !6672
    #dbg_value(i64 %i.eu, !1254, !DIExpression(), !5468)
    #dbg_value(i64 %.sroa.093.0.val, !1255, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !5469)
    #dbg_value(ptr %i.es, !1285, !DIExpression(), !5471)
    #dbg_value(ptr %i.es, !1288, !DIExpression(), !5473)
  %i.ev = or disjoint i64 %i.eu, %.sroa.093.0.val, !dbg !6673
    #dbg_value(i64 %i.ev, !1286, !DIExpression(), !5471)
    #dbg_value(i64 %i.ev, !1289, !DIExpression(), !5473)
  store i64 %i.ev, ptr %i.es, align 8, !dbg !6674, !noalias !6261
  %.val21.i384.pre = load i64, ptr %i.eo, align 8, !dbg !6675, !noalias !6261
  %i.ew = and i64 %.val21.i384.pre, -2, !dbg !6676
  br label %bb.ay, !dbg !6677

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.val21.i384 = phi i64 [ %i.ew, %bb.ax ], [ %i.eq, %bb.aw ], !dbg !6675
    #dbg_value(ptr poison, !1129, !DIExpression(), !5476)
    #dbg_value(ptr poison, !1130, !DIExpression(), !5476)
    #dbg_value(i64 %.val21.i384, !1131, !DIExpression(), !5477)
    #dbg_value(i64 %.val21.i384, !1138, !DIExpression(), !5479)
    #dbg_value(i64 %.val21.i384, !1246, !DIExpression(), !5481)
    #dbg_value(i64 %.val21.i384, !1250, !DIExpression(), !5483)
    #dbg_value(i64 %.val21.i384, !1257, !DIExpression(), !5485)
    #dbg_value(ptr poison, !1247, !DIExpression(), !5481)
    #dbg_value(ptr poison, !1276, !DIExpression(), !5487)
    #dbg_value(ptr %.val24.i381, !1248, !DIExpression(), !5481)
    #dbg_value(ptr %.val24.i381, !1278, !DIExpression(), !5487)
    #dbg_value(ptr %.val24.i381, !1252, !DIExpression(), !5483)
    #dbg_declare(ptr poison, !1251, !DIExpression(), !5488)
    #dbg_declare(ptr poison, !1273, !DIExpression(), !5489)
    #dbg_value(ptr %.val24.i381, !1280, !DIExpression(), !5491)
    #dbg_value(ptr %.val24.i381, !1280, !DIExpression(), !5493)
  %i.ex = getelementptr inbounds nuw i8, ptr %.val24.i381, i64 16, !dbg !6678 ; 2 uses
    #dbg_value(ptr %i.ex, !1282, !DIExpression(), !5495)
  %i.ey = load i64, ptr %i.ex, align 8, !dbg !6679, !noalias !6261, !noundef !823
    #dbg_value(i8 poison, !1253, !DIExpression(), !5483)
    #dbg_value(i64 %i.ey, !1254, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5496)
  %i.ez = and i64 %i.ey, 1, !dbg !6680
    #dbg_value(i64 %i.ez, !1254, !DIExpression(), !5496)
    #dbg_value(i64 %.val21.i384, !1255, !DIExpression(), !5497)
    #dbg_value(ptr %i.ex, !1285, !DIExpression(), !5499)
    #dbg_value(ptr %i.ex, !1288, !DIExpression(), !5501)
  %i.fa = or disjoint i64 %i.ez, %.val21.i384, !dbg !6681
    #dbg_value(i64 %i.fa, !1286, !DIExpression(), !5499)
    #dbg_value(i64 %i.fa, !1289, !DIExpression(), !5501)
  store i64 %i.fa, ptr %i.ex, align 8, !dbg !6682, !noalias !6261
  %.val.i385 = load i64, ptr %i.eo, align 8, !dbg !6683, !noalias !6261, !noundef !823
    #dbg_value(ptr poison, !1129, !DIExpression(), !5504)
    #dbg_value(ptr poison, !1130, !DIExpression(), !5504)
  %i.fb = and i64 %.val.i385, -2, !dbg !6684      ; 2 uses
    #dbg_value(i64 %i.fb, !1131, !DIExpression(), !5505)
    #dbg_value(i64 %i.fb, !1138, !DIExpression(), !5507)
  %i.fc = inttoptr i64 %i.fb to ptr, !dbg !6685   ; 3 uses
  %.not19.i386 = icmp eq i64 %i.fb, 0, !dbg !6686
  br i1 %.not19.i386, label %bb.ba, label %bb.az, !dbg !6687

bb.az:                                            ; preds = %bb.ay
    #dbg_value(ptr %i.fc, !1223, !DIExpression(), !5508)
    #dbg_value(ptr %i.fc, !1215, !DIExpression(), !5440)
  %.val22.i387 = load ptr, ptr %i.fc, align 8, !dbg !6688, !noalias !6261, !noundef !823
    #dbg_value(ptr undef, !1209, !DIExpression(), !5438)
    #dbg_value(ptr undef, !1208, !DIExpression(), !5437)
  %i.fd = icmp eq ptr %.val22.i387, %i.aq
  br i1 %i.fd, label %bb.bb, label %.critedge.i388, !dbg !6689

bb.ba:                                            ; preds = %bb.ay
  store ptr %.val24.i381, ptr %2, align 8, !dbg !6690, !alias.scope !6261
  br label %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree12rotate_rightNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit389, !dbg !6691

.critedge.i388:                                   ; preds = %bb.az
    #dbg_value(ptr poison, !1291, !DIExpression(), !5510)
    #dbg_value(ptr %i.fc, !1292, !DIExpression(), !5510)
    #dbg_value(ptr %.val24.i381, !1293, !DIExpression(), !5510)
    #dbg_value(ptr %.val24.i381, !1295, !DIExpression(), !5512)
    #dbg_value(ptr %.val24.i381, !1298, !DIExpression(), !5514)
    #dbg_value(ptr %i.fc, !1296, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5515)
    #dbg_value(ptr %i.fc, !1299, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5516)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8, !dbg !6692
  store ptr %.val24.i381, ptr %i.fe, align 8, !dbg !6693, !noalias !6261
  br label %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree12rotate_rightNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit389, !dbg !6694

bb.bb:                                            ; preds = %bb.az
    #dbg_value(ptr poison, !1225, !DIExpression(), !5520)
    #dbg_value(ptr %i.fc, !1228, !DIExpression(), !5520)
    #dbg_value(ptr %.val24.i381, !1229, !DIExpression(), !5520)
    #dbg_value(ptr %.val24.i381, !1231, !DIExpression(), !5522)
    #dbg_value(ptr %.val24.i381, !1238, !DIExpression(), !5524)
    #dbg_value(ptr %i.fc, !1236, !DIExpression(), !5525)
    #dbg_value(ptr %i.fc, !1242, !DIExpression(), !5526)
  store ptr %.val24.i381, ptr %i.fc, align 8, !dbg !6695, !noalias !6261
  br label %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree12rotate_rightNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit389, !dbg !6696

_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree12rotate_rightNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit389: ; preds = %bb.ba, %.critedge.i388, %bb.bb
    #dbg_value(ptr poison, !1291, !DIExpression(), !5529)
    #dbg_value(ptr %.val24.i381, !1292, !DIExpression(), !5529)
    #dbg_value(ptr %i.aq, !1293, !DIExpression(), !5529)
    #dbg_value(ptr %i.aq, !1295, !DIExpression(), !5531)
    #dbg_value(ptr %i.aq, !1298, !DIExpression(), !5533)
    #dbg_value(ptr %.val24.i381, !1296, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5534)
    #dbg_value(ptr %.val24.i381, !1299, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5535)
  store ptr %i.aq, ptr %i.er, align 8, !dbg !6697, !noalias !6261
    #dbg_value(ptr %.val24.i381, !1246, !DIExpression(), !5538)
    #dbg_value(ptr %.val24.i381, !1250, !DIExpression(), !5540)
    #dbg_value(ptr %.val24.i381, !1257, !DIExpression(), !5542)
    #dbg_value(ptr poison, !1247, !DIExpression(), !5538)
    #dbg_value(ptr poison, !1276, !DIExpression(), !5544)
    #dbg_value(ptr %i.aq, !1248, !DIExpression(), !5538)
    #dbg_value(ptr %i.aq, !1278, !DIExpression(), !5544)
    #dbg_value(ptr %i.aq, !1252, !DIExpression(), !5540)
    #dbg_declare(ptr poison, !1251, !DIExpression(), !5545)
    #dbg_declare(ptr poison, !1273, !DIExpression(), !5546)
    #dbg_value(ptr %i.aq, !1280, !DIExpression(), !5548)
    #dbg_value(ptr %i.aq, !1280, !DIExpression(), !5550)
    #dbg_value(ptr %i.eo, !1282, !DIExpression(), !5552)
  %i.ff = load i64, ptr %i.eo, align 8, !dbg !6698, !noalias !6261, !noundef !823
    #dbg_value(i8 poison, !1253, !DIExpression(), !5540)
    #dbg_value(i64 %i.ff, !1254, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5553)
  %i.fg = ptrtoint ptr %.val24.i381 to i64, !dbg !6699
  %i.fh = and i64 %i.ff, 1, !dbg !6700
    #dbg_value(i64 %i.fh, !1254, !DIExpression(), !5553)
    #dbg_value(i64 %i.fg, !1255, !DIExpression(), !5554)
    #dbg_value(ptr %i.eo, !1285, !DIExpression(), !5556)
    #dbg_value(ptr %i.eo, !1288, !DIExpression(), !5558)
  %i.fi = or disjoint i64 %i.fh, %i.fg, !dbg !6701
    #dbg_value(i64 %i.fi, !1286, !DIExpression(), !5556)
    #dbg_value(i64 %i.fi, !1289, !DIExpression(), !5558)
  store i64 %i.fi, ptr %i.eo, align 8, !dbg !6702, !noalias !6261
  %i.fj = getelementptr i8, ptr %.sroa.093.0, i64 8, !dbg !6703
  %.sroa.093.0.val338 = load ptr, ptr %i.fj, align 8, !dbg !6703, !nonnull !823, !noundef !823
    #dbg_value(ptr %.sroa.093.0.val338, !6069, !DIExpression(), !6263)
  %.val310 = load ptr, ptr %.sroa.093.0.val338, align 8, !dbg !6704, !nonnull !823, !noundef !823 ; 2 uses
    #dbg_value(ptr %.val310, !6069, !DIExpression(), !6265)
    #dbg_value(ptr %.val310, !5899, !DIExpression(), !6150)
  %i.fk = getelementptr i8, ptr %.val310, i64 16, !dbg !6705
  %.val288 = load i64, ptr %i.fk, align 8, !dbg !6705, !noundef !823 ; 2 uses
    #dbg_value(ptr poison, !1129, !DIExpression(), !5561)
    #dbg_value(ptr poison, !1130, !DIExpression(), !5561)
  %i.fl = and i64 %.val288, -2, !dbg !6706
    #dbg_value(i64 %i.fl, !1131, !DIExpression(), !5562)
    #dbg_value(i64 %i.fl, !1138, !DIExpression(), !5564)
  %i.fm = inttoptr i64 %i.fl to ptr, !dbg !6707   ; 2 uses
    #dbg_value(ptr %i.fm, !6069, !DIExpression(), !6267)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fm) ]
    #dbg_value(ptr %i.fm, !5900, !DIExpression(), !6153)
    #dbg_value(ptr %i.fm, !5934, !DIExpression(), !6018)
  br label %bb.bc, !dbg !6708

bb.bc:                                            ; preds = %bb.v, %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree12rotate_rightNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit389
  %.pre543 = phi i64 [ %.val288, %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree12rotate_rightNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit389 ], [ %.sroa.093.0.val, %bb.v ] ; 2 uses
  %.sroa.093.5 = phi ptr [ %.val310, %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree12rotate_rightNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit389 ], [ %.sroa.093.0, %bb.v ], !dbg !6462 ; 7 uses
  %.sroa.0127.2 = phi ptr [ %i.fm, %_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree12rotate_rightNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client.exit389 ], [ %i.aq, %bb.v ], !dbg !6522 ; 4 uses
    #dbg_value(ptr %.sroa.0127.2, !5934, !DIExpression(), !6018)
    #dbg_value(ptr %.sroa.0127.2, !5900, !DIExpression(), !6153)
    #dbg_value(ptr %.sroa.093.5, !5899, !DIExpression(), !6150)
  %.sroa.093.5.val309 = load ptr, ptr %.sroa.093.5, align 8, !dbg !6709, !noundef !823 ; 2 uses
    #dbg_value(ptr %.sroa.093.5.val309, !6268, !DIExpression(), !6280)
    #dbg_value(ptr poison, !6276, !DIExpression(), !6281)
    #dbg_value(ptr poison, !6282, !DIExpression(), !6289)
  %.not262 = icmp eq ptr %.sroa.093.5.val309, null, !dbg !6710
  br i1 %.not262, label %.thread465, label %bb.bd, !dbg !6711

bb.bd:                                            ; preds = %bb.bc
    #dbg_value(ptr %.sroa.093.5.val309, !6277, !DIExpression(), !6290)
    #dbg_value(ptr %.sroa.093.5.val309, !6285, !DIExpression(), !6291)
  %i.fn = getelementptr i8, ptr %.sroa.093.5.val309, i64 16, !dbg !6712
  %.val297 = load i64, ptr %i.fn, align 8, !dbg !6712, !noundef !823 ; 3 uses
    #dbg_value(ptr poison, !1140, !DIExpression(), !5570)
    #dbg_value(ptr poison, !1143, !DIExpression(), !5570)
    #dbg_value(i64 %.val297, !5904, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !6292)
  %i.fo = getelementptr i8, ptr %.sroa.093.5, i64 8, !dbg !6713
  %.sroa.093.5.val337 = load ptr, ptr %i.fo, align 8, !dbg !6713, !noundef !823 ; 4 uses
    #dbg_value(ptr %.sroa.093.5.val337, !6293, !DIExpression(), !6305)
    #dbg_value(ptr poison, !6301, !DIExpression(), !6306)
    #dbg_value(ptr poison, !6307, !DIExpression(), !6314)
  %.not263 = icmp eq ptr %.sroa.093.5.val337, null, !dbg !6714
  br i1 %.not263, label %bb.be, label %bb.bf, !dbg !6715

.thread465:                                       ; preds = %bb.bc
    #dbg_value(i8 2, !5904, !DIExpression(), !6292)
  %i.fp = getelementptr i8, ptr %.sroa.093.5, i64 8, !dbg !6713
  %.sroa.093.5.val337467 = load ptr, ptr %i.fp, align 8, !dbg !6713, !noundef !823 ; 3 uses
    #dbg_value(ptr %.sroa.093.5.val337467, !6293, !DIExpression(), !6305)
    #dbg_value(ptr poison, !6301, !DIExpression(), !6306)
    #dbg_value(ptr poison, !6307, !DIExpression(), !6314)
  %.not263468 = icmp eq ptr %.sroa.093.5.val337467, null, !dbg !6714
  br i1 %.not263468, label %.thread482, label %bb.bg, !dbg !6715

bb.be:                                            ; preds = %bb.bd
    #dbg_value(i64 %.val297, !5904, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value), !6292)
    #dbg_value(i8 2, !5905, !DIExpression(), !6315)
    #dbg_value(ptr undef, !5983, !DIExpression(), !5999)
    #dbg_value(ptr undef, !5960, !DIExpression(), !5998)
  %i.fq = and i64 %.val297, 1
  %.not265 = icmp eq i64 %i.fq, 0
  br i1 %.not265, label %bb.bh, label %.thread482, !dbg !6716

.thread482:                                       ; preds = %.thread465, %bb.bf, %bb.be, %bb.bg
    #dbg_value(ptr poison, !1151, !DIExpression(), !5576)
    #dbg_value(ptr poison, !1157, !DIExpression(), !5578)
    #dbg_value(ptr %.sroa.093.5, !1154, !DIExpression(), !5576)
    #dbg_value(ptr %.sroa.093.5, !1159, !DIExpression(), !5578)
    #dbg_value(ptr %.sroa.093.5, !1162, !DIExpression(), !5580)
    #dbg_value(i1 false, !1155, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5576)
    #dbg_declare(ptr poison, !1166, !DIExpression(), !5581)
    #dbg_value(ptr %.sroa.093.5, !1173, !DIExpression(), !5583)
    #dbg_value(ptr %.sroa.093.5, !1173, !DIExpression(), !5585)
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.093.5, i64 16, !dbg !6717
    #dbg_value(ptr %i.fr, !1185, !DIExpression(), !5587)
  %i.fs = and i64 %.pre543, -2, !dbg !6718
    #dbg_value(i1 false, !1168, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5580)
    #dbg_value(i64 0, !1169, !DIExpression(), !5588)
    #dbg_value(i64 %i.fs, !1170, !DIExpression(), !5589)
    #dbg_value(ptr %i.fr, !1190, !DIExpression(), !5591)
    #dbg_value(ptr %i.fr, !1196, !DIExpression(), !5593)
    #dbg_value(i64 %i.fs, !1194, !DIExpression(), !5591)
    #dbg_value(i64 %i.fs, !1200, !DIExpression(), !5593)
  store i64 %i.fs, ptr %i.fr, align 8, !dbg !6719
  %i.ft = getelementptr i8, ptr %.sroa.0127.2, i64 16, !dbg !6720
  %.sroa.0127.2.val287 = load i64, ptr %i.ft, align 8, !dbg !6720, !noundef !823 ; 3 uses
    #dbg_value(ptr poison, !1129, !DIExpression(), !5596)
    #dbg_value(ptr poison, !1130, !DIExpression(), !5596)
  %i.fu = and i64 %.sroa.0127.2.val287, -2, !dbg !6721 ; 2 uses
    #dbg_value(i64 %.sroa.0127.2.val287, !1131, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !5597)
    #dbg_value(i64 %.sroa.0127.2.val287, !1138, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !5599)
  %i.fv = inttoptr i64 %i.fu to ptr, !dbg !6722   ; 2 uses
    #dbg_value(ptr poison, !6020, !DIExpression(), !6317)
    #dbg_value(ptr poison, !6027, !DIExpression(), !6320)
  %.not269 = icmp ne i64 %i.fu, 0, !dbg !6723
    #dbg_value(ptr poison, !1140, !DIExpression(), !5601)
    #dbg_value(ptr poison, !1143, !DIExpression(), !5601)
  %.not.i404 = trunc i64 %.sroa.0127.2.val287 to i1
  %or.cond494 = and i1 %.not269, %.not.i404, !dbg !6724
  br i1 %or.cond494, label %bb.bo, label %bb.bq, !dbg !6724

bb.bf:                                            ; preds = %bb.bd
    #dbg_value(ptr %.sroa.093.5.val337, !6302, !DIExpression(), !6321)
    #dbg_value(ptr %.sroa.093.5.val337, !6310, !DIExpression(), !6322)
  %i.fw = getelementptr i8, ptr %.sroa.093.5.val337, i64 16, !dbg !6725
  %.val296 = load i64, ptr %i.fw, align 8, !dbg !6725, !noundef !823
    #dbg_value(ptr poison, !1140, !DIExpression(), !5603)
    #dbg_value(ptr poison, !1143, !DIExpression(), !5603)
    #dbg_value(i64 %.val296, !5905, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6315)
    #dbg_value(ptr undef, !5983, !DIExpression(), !5999)
    #dbg_value(ptr undef, !5960, !DIExpression(), !5998)
  %i.fx = and i64 %.val297, 1, !dbg !5996
  %i.fy = and i64 %i.fx, %.val296, !dbg !5996
  %brmerge280.not.not = icmp eq i64 %i.fy, 0, !dbg !5996
  br i1 %brmerge280.not.not, label %bb.bh, label %.thread482, !dbg !5996

bb.bg:                                            ; preds = %.thread465
    #dbg_value(ptr %.sroa.093.5.val337467, !6302, !DIExpression(), !6321)
    #dbg_value(ptr %.sroa.093.5.val337467, !6310, !DIExpression(), !6322)
  %i.fz = getelementptr i8, ptr %.sroa.093.5.val337467, i64 16, !dbg !6725
  %.val296477 = load i64, ptr %i.fz, align 8, !dbg !6725, !noundef !823 ; 2 uses
    #dbg_value(ptr poison, !1140, !DIExpression(), !5603)
    #dbg_value(ptr poison, !1143, !DIExpression(), !5603)
  %.not.i391478 = trunc i64 %.val296477 to i1, !dbg !6726
    #dbg_value(i1 %.not.i391478, !5905, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6315)
    #dbg_value(ptr undef, !5983, !DIExpression(), !5999)
    #dbg_value(ptr undef, !5960, !DIExpression(), !5998)
    #dbg_value(ptr undef, !5983, !DIExpression(), !5994)
    #dbg_value(ptr undef, !5960, !DIExpression(), !5993)
  br i1 %.not.i391478, label %.thread482, label %.loopexit499, !dbg !5991

bb.bh:                                            ; preds = %bb.be, %bb.bf
    #dbg_value(ptr %.sroa.093.5.val309, !6323, !DIExpression(), !6335)
    #dbg_value(ptr poison, !6331, !DIExpression(), !6336)
    #dbg_value(ptr poison, !6337, !DIExpression(), !6344)
    #dbg_value(ptr %.sroa.093.5.val309, !6332, !DIExpression(), !6345)
    #dbg_value(ptr %.sroa.093.5.val309, !6340, !DIExpression(), !6346)
    #dbg_value(ptr poison, !1140, !DIExpression(), !5609)
    #dbg_value(ptr poison, !1143, !DIExpression(), !5609)
  %.not.i392 = trunc i64 %.val297 to i1, !dbg !6727
    #dbg_value(ptr undef, !5983, !DIExpression(), !5989)
    #dbg_value(ptr undef, !5960, !DIExpression(), !5981)
  br i1 %.not.i392, label %..loopexit499_crit_edge, label %._crit_edge541, !dbg !5979

._crit_edge541:                                   ; preds = %bb.bh
  %.pre544 = and i64 %.pre543, -2, !dbg !6728
  br label %bb.bi, !dbg !5979

..loopexit499_crit_edge:                          ; preds = %bb.bh
  %.phi.trans.insert539 = getelementptr inbounds nuw i8, ptr %.sroa.093.5.val337, i64 16
  %.pre540 = load i64, ptr %.phi.trans.insert539, align 8, !dbg !6729
  br label %.loopexit499, !dbg !5979

.loopexit499:                                     ; preds = %bb.bg, %..loopexit499_crit_edge
  %i.ga = phi i64 [ %.pre540, %..loopexit499_crit_edge ], [ %.val296477, %bb.bg ], !dbg !6729
  %.sroa.093.5.val337472492 = phi ptr [ %.sroa.093.5.val337, %..loopexit499_crit_edge ], [ %.sroa.093.5.val337467, %bb.bg ] ; 2 uses
    #dbg_value(ptr %.sroa.093.5.val337472492, !6069, !DIExpression(), !6348)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.093.5.val337472492) ]
    #dbg_value(ptr poison, !1151, !DIExpression(), !5615)
    #dbg_value(ptr poison, !1157, !DIExpression(), !5616)
    #dbg_value(ptr %.sroa.093.5.val337472492, !1154, !DIExpression(), !5615)
    #dbg_value(ptr %.sroa.093.5.val337472492, !1159, !DIExpression(), !5616)
    #dbg_value(ptr %.sroa.093.5.val337472492, !1162, !DIExpression(), !5618)
    #dbg_value(i1 true, !1155, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5615)
    #dbg_declare(ptr poison, !1166, !DIExpression(), !5619)
    #dbg_value(ptr %.sroa.093.5.val337472492, !1173, !DIExpression(), !5621)
    #dbg_value(ptr %.sroa.093.5.val337472492, !1173, !DIExpression(), !5623)
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.093.5.val337472492, i64 16, !dbg !6730
    #dbg_value(ptr %i.gb, !1185, !DIExpression(), !5624)
    #dbg_value(i1 true, !1168, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5618)
    #dbg_value(i64 1, !1169, !DIExpression(), !5625)
    #dbg_value(i64 %i.ga, !1170, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !5626)
    #dbg_value(ptr %i.gb, !1190, !DIExpression(), !5628)
    #dbg_value(ptr %i.gb, !1196, !DIExpression(), !5630)
  %i.gc = or i64 %i.ga, 1, !dbg !6731
    #dbg_value(i64 %i.gc, !1194, !DIExpression(), !5628)
    #dbg_value(i64 %i.gc, !1200, !DIExpression(), !5630)
  store i64 %i.gc, ptr %i.gb, align 8, !dbg !6732
    #dbg_value(ptr poison, !1151, !DIExpression(), !5633)
    #dbg_value(ptr poison, !1157, !DIExpression(), !5635)
    #dbg_value(ptr %.sroa.093.5, !1154, !DIExpression(), !5633)
    #dbg_value(ptr %.sroa.093.5, !1159, !DIExpression(), !5635)
    #dbg_value(ptr %.sroa.093.5, !1162, !DIExpression(), !5637)
    #dbg_value(i1 false, !1155, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5633)
    #dbg_declare(ptr poison, !1166, !DIExpression(), !5638)
    #dbg_value(ptr %.sroa.093.5, !1173, !DIExpression(), !5640)
    #dbg_value(ptr %.sroa.093.5, !1173, !DIExpression(), !5642)
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.093.5, i64 16, !dbg !6733 ; 3 uses
    #dbg_value(ptr %i.gd, !1185, !DIExpression(), !5644)
  %i.ge = load i64, ptr %i.gd, align 8, !dbg !6734, !noundef !823
  %i.gf = and i64 %i.ge, -2, !dbg !6735
    #dbg_value(i1 false, !1168, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5637)
    #dbg_value(i64 0, !1169, !DIExpression(), !5645)
    #dbg_value(i64 %i.gf, !1170, !DIExpression(), !5646)
    #dbg_value(ptr %i.gd, !1190, !DIExpression(), !5648)
    #dbg_value(ptr %i.gd, !1196, !DIExpression(), !5650)
    #dbg_value(i64 %i.gf, !1194, !DIExpression(), !5648)
    #dbg_value(i64 %i.gf, !1200, !DIExpression(), !5650)
  store i64 %i.gf, ptr %i.gd, align 8, !dbg !6736
  tail call fastcc void @_RINvNtCsazSMmbOrWdo_21intrusive_collections6rbtree11rotate_leftNtB2_13AtomicLinkOpsECslusEaBCZKLp_13quiche_client(ptr noundef nonnull %.sroa.093.5, ptr noalias nofree noundef align 8 dereferenceable(8) %2), !dbg !6737
  %.sroa.093.5.val = load i64, ptr %i.gd, align 8, !dbg !6738, !noundef !823
    #dbg_value(ptr poison, !1129, !DIExpression(), !5653)
    #dbg_value(ptr poison, !1130, !DIExpression(), !5653)
  %i.gg = and i64 %.sroa.093.5.val, -2, !dbg !6739
    #dbg_value(i64 %i.gg, !1131, !DIExpression(), !5654)
    #dbg_value(i64 %i.gg, !1138, !DIExpression(), !5656)
  %i.gh = inttoptr i64 %i.gg to ptr, !dbg !6740   ; 3 uses
    #dbg_value(ptr %i.gh, !6069, !DIExpression(), !6350)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gh) ]
    #dbg_value(ptr %i.gh, !5899, !DIExpression(), !6150)
  %i.gi = getelementptr i8, ptr %i.gh, i64 16, !dbg !6741
  %.val = load i64, ptr %i.gi, align 8, !dbg !6741, !noundef !823
    #dbg_value(ptr poison, !1129, !DIExpression(), !5658)
    #dbg_value(ptr poison, !1130, !DIExpression(), !5658)
  %i.gj = and i64 %.val, -2, !dbg !6742           ; 2 uses
    #dbg_value(i64 %i.gj, !1131, !DIExpression(), !5659)
    #dbg_value(i64 %i.gj, !1138, !DIExpression(), !5661)
  %i.gk = inttoptr i64 %i.gj to ptr, !dbg !6743   ; 2 uses
    #dbg_value(ptr %i.gk, !6069, !DIExpression(), !6352)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gk) ]
    #dbg_value(ptr %i.gk, !5900, !DIExpression(), !6153)
    #dbg_value(ptr %i.gk, !5934, !DIExpression(), !6018)
  br label %bb.bi, !dbg !6744

bb.bi:                                            ; preds = %._crit_edge541, %.loopexit499
  %.pre-phi = phi i64 [ %.pre544, %._crit_edge541 ], [ %i.gj, %.loopexit499 ], !dbg !6728
  %.sroa.093.6 = phi ptr [ %.sroa.093.5, %._crit_edge541 ], [ %i.gh, %.loopexit499 ], !dbg !6596 ; 2 uses
  %.sroa.0127.3 = phi ptr [ %.sroa.0127.2, %._crit_edge541 ], [ %i.gk, %.loopexit499 ], !dbg !6596 ; 6 uses
    #dbg_value(ptr %.sroa.0127.3, !5934, !DIExpression(), !6018)
    #dbg_value(ptr %.sroa.0127.3, !5900, !DIExpression(), !6153)
    #dbg_value(ptr %.sroa.093.6, !5899, !DIExpression(), !6150)
  %i.gl = getelementptr i8, ptr %.sroa.0127.3, i64 16, !dbg !6745 ; 7 uses
  %.sroa.0127.3.val = load i64, ptr %i.gl, align 8, !dbg !6745, !noundef !823
    #dbg_value(ptr poison, !1140, !DIExpression(), !5663)
    #dbg_value(ptr poison, !1143, !DIExpression(), !5663)
    #dbg_value(ptr poison, !1151, !DIExpression(), !5664)
    #dbg_value(ptr poison, !1157, !DIExpression(), !5665)
    #dbg_value(ptr %.sroa.093.6, !1154, !DIExpression(), !5664)
    #dbg_value(ptr %.sroa.093.6, !1159, !DIExpression(), !5665)
    #dbg_value(ptr %.sroa.093.6, !1162, !DIExpression(), !5667)
    #dbg_value(i64 %.sroa.0127.3.val, !1155, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5664)
    #dbg_declare(ptr poison, !1166, !DIExpression(), !5668)
    #dbg_value(ptr %.sroa.093.6, !1173, !DIExpression(), !5670)
    #dbg_value(ptr %.sroa.093.6, !1173, !DIExpression(), !5672)
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.093.6, i64 16, !dbg !6746
    #dbg_value(ptr %i.gm, !1185, !DIExpression(), !5674)
    #dbg_value(i64 %.sroa.0127.3.val, !1168, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5667)
    #dbg_value(i64 %.sroa.0127.3.val, !1169, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5675)
  %.sroa.02.0.i394 = and i64 %.sroa.0127.3.val, 1, !dbg !6747
    #dbg_value(i64 %.sroa.02.0.i394, !1169, !DIExpression(), !5675)
    #dbg_value(i64 %.pre-phi, !1170, !DIExpression(), !5676)
    #dbg_value(ptr %i.gm, !1190, !DIExpression(), !5678)
    #dbg_value(ptr %i.gm, !1196, !DIExpression(), !5680)
  %i.gn = or disjoint i64 %.pre-phi, %.sroa.02.0.i394, !dbg !6748
    #dbg_value(i64 %i.gn, !1194, !DIExpression(), !5678)
    #dbg_value(i64 %i.gn, !1200, !DIExpression(), !5680)
  store i64 %i.gn, ptr %i.gm, align 8, !dbg !6749
    #dbg_value(ptr poison, !1151, !DIExpression(), !5683)
    #dbg_value(ptr poison, !1157, !DIExpression(), !5685)
    #dbg_value(ptr %.sroa.0127.3, !1154, !DIExpression(), !5683)
    #dbg_value(ptr %.sroa.0127.3, !1159, !DIExpression(), !5685)
    #dbg_value(ptr %.sroa.0127.3, !1162, !DIExpression(), !5687)
    #dbg_value(i1 true, !1155, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5683)
    #dbg_declare(ptr poison, !1166, !DIExpression(), !5688)
    #dbg_value(ptr %.sroa.0127.3, !1173, !DIExpression(), !5690)
    #dbg_value(ptr %.sroa.0127.3, !1173, !DIExpression(), !5692)
    #dbg_value(ptr %i.gl, !1185, !DIExpression(), !5694)
  %i.go = load i64, ptr %i.gl, align 8, !dbg !6750, !noundef !823
    #dbg_value(i1 true, !1168, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5687)
    #dbg_value(i64 1, !1169, !DIExpression(), !5695)
    #dbg_value(i64 %i.go, !1170, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !5696)
    #dbg_value(ptr %i.gl, !1190, !DIExpression(), !5698)
    #dbg_value(ptr %i.gl, !1196, !DIExpression(), !5700)
  %i.gp = or i64 %i.go, 1, !dbg !6751
    #dbg_value(i64 %i.gp, !1194, !DIExpression(), !5698)
    #dbg_value(i64 %i.gp, !1200, !DIExpression(), !5700)
  store i64 %i.gp, ptr %i.gl, align 8, !dbg !6752
  %.sroa.093.6.val = load ptr, ptr %.sroa.093.6, align 8, !dbg !6753, !nonnull !823, !noundef !823
    #dbg_value(ptr %.sroa.093.6.val, !6069, !DIExpression(), !6354)
    #dbg_value(ptr poison, !1151, !DIExpression(), !5703)
    #dbg_value(ptr poison, !1157, !DIExpression(), !5705)
    #dbg_value(ptr %.sroa.093.6.val, !1154, !DIExpression(), !5703)
    #dbg_value(ptr %.sroa.093.6.val, !1159, !DIExpression(), !5705)
    #dbg_value(ptr %.sroa.093.6.val, !1162, !DIExpression(), !5707)
    #dbg_value(i1 true, !1155, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5703)
    #dbg_declare(ptr poison, !1166, !DIExpression(), !5708)
    #dbg_value(ptr %.sroa.093.6.val, !1173, !DIExpression(), !5710)
    #dbg_value(ptr %.sroa.093.6.val, !1173, !DIExpression(), !5712)
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.093.6.val, i64 16, !dbg !6754 ; 2 uses
    #dbg_value(ptr %i.gq, !1185, !DIExpression(), !5714)
  %i.gr = load i64, ptr %i.gq, align 8, !dbg !6755, !noundef !823
    #dbg_value(i1 true, !1168, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5707)
    #dbg_value(i64 1, !1169, !DIExpression(), !5715)
    #dbg_value(i64 %i.gr, !1170, !DIExpression(DW_OP_constu, 18446744073709551614, DW_OP_and, DW_OP_stack_value), !5716)
    #dbg_value(ptr %i.gq, !1190, !DIExpression(), !5718)
    #dbg_value(ptr %i.gq, !1196, !DIExpression(), !5720)
  %i.gs = or i64 %i.gr, 1, !dbg !6756
    #dbg_value(i64 %i.gs, !1194, !DIExpression(), !5718)
    #dbg_value(i64 %i.gs, !1200, !DIExpression(), !5720)
  store i64 %i.gs, ptr %i.gq, align 8, !dbg !6757
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6355), !dbg !6758
    #dbg_value(ptr poison, !1208, !DIExpression(), !5727)
    #dbg_value(ptr poison, !1209, !DIExpression(), !5728)
    #dbg_value(ptr poison, !1218, !DIExpression(), !5729)
    #dbg_value(ptr poison, !1213, !DIExpression(), !5730)
    #dbg_value(ptr %.sroa.0127.3, !1219, !DIExpression(), !5729)
    #dbg_value(ptr %.sroa.0127.3, !1214, !DIExpression(), !5730)
    #dbg_value(ptr %2, !1220, !DIExpression(), !5729)
  %.val24.i395 = load ptr, ptr %.sroa.0127.3, align 8, !dbg !6759, !noalias !6355, !nonnull !823, !noundef !823 ; 6 uses
    #dbg_value(ptr %.val24.i395, !1221, !DIExpression(), !5731)
  %i.gt = getelementptr i8, ptr %.val24.i395, i64 8, !dbg !6760 ; 2 uses
  %.val27.i396 = load ptr, ptr %i.gt, align 8, !dbg !6760, !noalias !6355, !noundef !823 ; 3 uses
    #dbg_value(ptr poison, !1225, !DIExpression(), !5733)
    #dbg_value(ptr %.sroa.0127.3, !1228, !DIExpression(), !5733)
    #dbg_value(ptr %.val27.i396, !1229, !DIExpression(), !5733)
    #dbg_value(ptr %.val27.i396, !1231, !DIExpression(), !5735)
    #dbg_value(ptr %.val27.i396, !1238, !DIExpression(), !5737)
    #dbg_value(ptr %.sroa.0127.3, !1236, !DIExpression(), !5738)
    #dbg_value(ptr %.sroa.0127.3, !1242, !DIExpression(), !5739)
  store ptr %.val27.i396, ptr %.sroa.0127.3, align 8, !dbg !6761, !noalias !6355
  %.not.i397 = icmp eq ptr %.val27.i396, null, !dbg !6762
  br i1 %.not.i397, label %bb.bk, label %bb.bj, !dbg !6763

bb.bj:                                            ; preds = %bb.bi
    #dbg_value(ptr %.val27.i396, !1222, !DIExpression(), !5741)
    #dbg_value(ptr %.sroa.0127.3, !1246, !DIExpression(), !5743)
    #dbg_value(ptr %.sroa.0127.3, !1250, !DIExpression(), !5745)
    #dbg_value(ptr %.sroa.0127.3, !1257, !DIExpression(), !5747)
    #dbg_value(ptr poison, !1247, !DIExpression(), !5743)
    #dbg_value(ptr poison, !1276, !DIExpression(), !5749)
    #dbg_value(ptr %.val27.i396, !1248, !DIExpression(), !5743)
    #dbg_value(ptr %.val27.i396, !1278, !DIExpression(), !5749)
    #dbg_value(ptr %.val27.i396, !1252, !DIExpression(), !5745)
    #dbg_declare(ptr poison, !1251, !DIExpression(), !5750)
    #dbg_declare(ptr poison, !1273, !DIExpression(), !5751)
    #dbg_value(ptr %.val27.i396, !1280, !DIExpression(), !5753)
    #dbg_value(ptr %.val27.i396, !1280, !DIExpression(), !5755)
  %i.gu = getelementptr inbounds nuw i8, ptr %.val27.i396, i64 16, !dbg !6764 ; 2 uses
    #dbg_value(ptr %i.gu, !1282, !DIExpression(), !5757)
  %i.gv = load i64, ptr %i.gu, align 8, !dbg !6765, !noalias !6355, !noundef !823
    #dbg_value(i8 poison, !1253, !DIExpression(), !5745)
    #dbg_value(i64 %i.gv, !1254, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !5758)
  %i.gw = ptrtoint ptr %.sroa.0127.3 to i64, !dbg !6766
  %i.gx = and i64 %i.gv, 1, !dbg !6767
    #dbg_value(i64 %i.gx, !1254, !DIExpression(), !5758)
    #dbg_value(i64 %i.gw, !1255, !DIExpression(), !5759)
    #dbg_value(ptr %i.gu, !1285, !DIExpression(), !5761)
    #dbg_value(ptr %i.gu, !1288, !DIExpression(), !5763)
  %i.gy = or disjoint i64 %i.gx, %i.gw, !dbg !6768
    #dbg_value(i64 %i.gy, !1286, !DIExpression(), !5761)
    #dbg_value(i64 %i.gy, !1289, !DIExpression(), !5763)
  store i64 %i.gy, ptr %i.gu, align 8, !dbg !6769, !noalias !6355
  br label %bb.bk, !dbg !6770

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.val21.i398 = load i64, ptr %i.gl, align 8, !dbg !6771, !noalias !6355, !noundef !823
end_hunk_1
begin_hunk_2_@_RNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpRShNtB5_13SliceContains14slice_containsCslusEaBCZKLp_13quiche_client:bb.a
    #dbg_value(i64 %.val9.i, !9483, !DIExpression(), !9361)
    #dbg_value(i64 %.val9.i, !9484, !DIExpression(), !9362)
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val8.i, ptr nonnull readonly %.val3.i.i, i64 range(i64 0, -9223372036854775808) %.val4.i.i), !dbg !9497, !alias.scope !9489, !noalias !9452
  %i.g = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !9497
  br i1 %i.g, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRShENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1L_13SliceContains14slice_contains0ECslusEaBCZKLp_13quiche_client.exit, label %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpRShNtB7_13SliceContains14slice_contains0CslusEaBCZKLp_13quiche_client.exit.backedge.i, !dbg !9495

_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpRShNtB7_13SliceContains14slice_contains0CslusEaBCZKLp_13quiche_client.exit.backedge.i: ; preds = %.split.i, %bb.b
    #dbg_value(ptr %i.d, !9399, !DIExpression(), !9339)
    #dbg_value(ptr %i.d, !9444, !DIExpression(), !9338)
    #dbg_value(ptr %i.a, !9400, !DIExpression(), !9340)
    #dbg_value(ptr poison, !9447, !DIExpression(), !9343)
    #dbg_value(ptr poison, !9450, !DIExpression(), !9344)
  %.not13.i = icmp eq ptr %i.d, %i.a, !dbg !9492
  br i1 %.not13.i, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRShENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1L_13SliceContains14slice_contains0ECslusEaBCZKLp_13quiche_client.exit, label %bb.b, !dbg !9493

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterRShENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB1L_13SliceContains14slice_contains0ECslusEaBCZKLp_13quiche_client.exit: ; preds = %.split.i, %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpRShNtB7_13SliceContains14slice_contains0CslusEaBCZKLp_13quiche_client.exit.backedge.i, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ false, %_RNCNvXsf_NtNtCskKLDkoKarTP_4core5slice3cmpRShNtB7_13SliceContains14slice_contains0CslusEaBCZKLp_13quiche_client.exit.backedge.i ], [ true, %.split.i ], !dbg !9492
  ret i1 %.lcssa.i, !dbg !9498
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write18write_all_vectoredCslusEaBCZKLp_13quiche_client(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9502 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 10 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !2860, !DIExpression(), !9504)
    #dbg_value(ptr %1, !9863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9869)
    #dbg_value(i64 %2, !9863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9869)
    #dbg_value(ptr %0, !9862, !DIExpression(), !9869)
    #dbg_value(ptr poison, !2871, !DIExpression(), !9507)
    #dbg_value(i64 0, !2864, !DIExpression(), !9508)
    #dbg_value(i64 0, !2866, !DIExpression(), !9509)
    #dbg_value(i64 0, !2869, !DIExpression(), !9510)
    #dbg_value(i64 0, !2877, !DIExpression(), !9512)
    #dbg_value(i64 0, !2884, !DIExpression(), !9514)
    #dbg_value(i64 0, !2891, !DIExpression(), !9516)
    #dbg_value(ptr undef, !2860, !DIExpression(), !9508)
    #dbg_value(i64 1, !2898, !DIExpression(), !9518)
    #dbg_value(i64 0, !2865, !DIExpression(), !9519)
    #dbg_value(i64 0, !2902, !DIExpression(), !9521)
    #dbg_value(i64 0, !2916, !DIExpression(), !9523)
    #dbg_value(i64 0, !2923, !DIExpression(), !9525)
    #dbg_value(ptr %1, !2932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9527)
    #dbg_value(ptr %1, !2934, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9529)
    #dbg_value(i64 %2, !2932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9527)
    #dbg_value(i64 %2, !2934, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9529)
    #dbg_value(i64 %2, !2935, !DIExpression(), !9530)
    #dbg_value(i64 %2, !2939, !DIExpression(), !9532)
    #dbg_value(ptr %1, !2936, !DIExpression(), !9533)
    #dbg_value(ptr %1, !2940, !DIExpression(), !9532)
  %.idx.i = shl nuw nsw i64 %2, 4, !dbg !9889     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i, !dbg !9889
    #dbg_value(ptr %1, !2867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9534)
    #dbg_value(ptr %i.d, !2867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9534)
    #dbg_value(ptr undef, !2871, !DIExpression(), !9507)
    #dbg_value(ptr %1, !2872, !DIExpression(), !9535)
    #dbg_value(ptr %1, !2899, !DIExpression(), !9518)
    #dbg_value(ptr %i.d, !2873, !DIExpression(), !9536)
    #dbg_value(ptr poison, !2942, !DIExpression(), !9538)
    #dbg_value(ptr poison, !2943, !DIExpression(), !9539)
  %i.e = icmp eq i64 %2, 0, !dbg !9890
  br i1 %i.e, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph.preheader.i, !dbg !9891

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = add nsw i64 %.idx.i, -16, !dbg !9892
  %i.g = lshr exact i64 %i.f, 4, !dbg !9892
  %i.h = add nuw nsw i64 %i.g, 1, !dbg !9892
  br label %.lr.ph.i, !dbg !9892

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.sroa.05.048.i = phi i64 [ %i.l, %bb.b ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.010.047.i = phi ptr [ %i.k, %bb.b ], [ %1, %.lr.ph.preheader.i ] ; 2 uses
    #dbg_value(i64 0, !2891, !DIExpression(), !9516)
    #dbg_value(i64 %.sroa.05.048.i, !2923, !DIExpression(), !9525)
    #dbg_value(ptr %.sroa.010.047.i, !2867, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9534)
    #dbg_value(ptr %.sroa.010.047.i, !2868, !DIExpression(), !9541)
    #dbg_value(ptr %.sroa.010.047.i, !2951, !DIExpression(), !9543)
    #dbg_value(i64 0, !2947, !DIExpression(), !9544)
    #dbg_value(ptr %.sroa.010.047.i, !2953, !DIExpression(), !9546)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.047.i, i64 8, !dbg !9893
  %i.j = load i64, ptr %i.i, align 8, !dbg !9893, !noalias !9870, !noundef !823
    #dbg_value(i64 %i.j, !2948, !DIExpression(), !9544)
  %.not = icmp eq i64 %i.j, 0, !dbg !9892
  br i1 %.not, label %bb.b, label %._crit_edge.i, !dbg !9892

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.010.047.i, i64 16, !dbg !9894 ; 2 uses
    #dbg_value(ptr %i.k, !2867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9534)
    #dbg_value(i64 0, !2864, !DIExpression(), !9508)
    #dbg_value(i64 0, !2866, !DIExpression(), !9509)
    #dbg_value(i64 0, !2869, !DIExpression(), !9510)
    #dbg_value(i64 0, !2877, !DIExpression(), !9512)
    #dbg_value(i64 0, !2884, !DIExpression(), !9514)
    #dbg_value(i64 0, !2891, !DIExpression(), !9516)
  %i.l = add nuw nsw i64 %.sroa.05.048.i, 1, !dbg !9895
    #dbg_value(i64 %i.l, !2923, !DIExpression(), !9525)
    #dbg_value(i64 %i.l, !2916, !DIExpression(), !9523)
    #dbg_value(i64 %i.l, !2902, !DIExpression(), !9521)
    #dbg_value(i64 %i.l, !2865, !DIExpression(), !9519)
    #dbg_value(ptr undef, !2871, !DIExpression(), !9507)
    #dbg_value(ptr %i.k, !2872, !DIExpression(), !9535)
    #dbg_value(ptr %i.k, !2899, !DIExpression(), !9518)
    #dbg_value(ptr %i.d, !2873, !DIExpression(), !9536)
    #dbg_value(ptr poison, !2942, !DIExpression(), !9538)
    #dbg_value(ptr poison, !2943, !DIExpression(), !9539)
  %i.m = icmp eq ptr %i.k, %i.d, !dbg !9890
  br i1 %i.m, label %._crit_edge.i, label %.lr.ph.i, !dbg !9891

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i
  %.sroa.05.0.lcssa.i = phi i64 [ %.sroa.05.048.i, %.lr.ph.i ], [ %i.h, %bb.b ], !dbg !9896 ; 5 uses
    #dbg_value(ptr %1, !2912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9521)
    #dbg_value(ptr %1, !2920, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9523)
    #dbg_value(i64 %2, !2912, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9521)
    #dbg_value(i64 %2, !2920, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9523)
    #dbg_value(ptr inttoptr (i64 8 to ptr), !9863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9869)
    #dbg_value(i64 0, !9863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9869)
  %i.n = icmp ugt i64 %.sroa.05.0.lcssa.i, %2, !dbg !9897
  br i1 %i.n, label %bb.d, label %bb.c, !dbg !9897, !prof !2955

bb.c:                                             ; preds = %._crit_edge.i
    #dbg_value(!DIArgList(i64 %2, i64 %.sroa.05.0.lcssa.i), !2921, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9549)
    #dbg_value(!DIArgList(i64 %2, i64 %.sroa.05.0.lcssa.i), !2930, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !9525)
    #dbg_value(ptr %1, !2929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9525)
    #dbg_value(i64 %2, !2929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9525)
    #dbg_value(!DIArgList(ptr %1, i64 %.sroa.05.0.lcssa.i), !9863, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !9869)
    #dbg_value(!DIArgList(i64 %2, i64 %.sroa.05.0.lcssa.i), !9863, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9869)
    #dbg_value(ptr poison, !2959, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9551)
    #dbg_value(!DIArgList(i64 %2, i64 %.sroa.05.0.lcssa.i), !2959, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9551)
  %i.o = icmp eq i64 %2, %.sroa.05.0.lcssa.i, !dbg !9898
  br i1 %i.o, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph, !dbg !9899

bb.d:                                             ; preds = %._crit_edge.i
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.05.0.lcssa.i, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #24, !dbg !9900, !noalias !9870
  unreachable, !dbg !9900

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.05.0.lcssa.i, !dbg !9901
    #dbg_value(ptr %i.p, !9863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9869)
  %i.q = sub nuw nsw i64 %2, %.sroa.05.0.lcssa.i, !dbg !9902
    #dbg_value(i64 %i.q, !2921, !DIExpression(), !9549)
    #dbg_value(i64 %i.q, !2930, !DIExpression(), !9525)
    #dbg_value(i64 %i.q, !2959, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9551)
    #dbg_value(i64 %i.q, !9863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9869)
    #dbg_value(ptr %i.p, !2882, !DIExpression(), !9512)
    #dbg_value(ptr %i.p, !2889, !DIExpression(), !9552)
    #dbg_value(ptr poison, !2894, !DIExpression(), !9516)
    #dbg_value(ptr %i.p, !9863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9869)
    #dbg_value(i64 %i.q, !9863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9869)
    #dbg_value(ptr poison, !9871, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9874)
    #dbg_value(i64 %i.q, !9871, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9874)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.e, !dbg !9903

bb.e:                                             ; preds = %.lr.ph, %_RNvMs7_NtNtCskKLDkoKarTP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit26
  %.sroa.0.04086 = phi ptr [ %i.p, %.lr.ph ], [ %.sroa.0.14156, %_RNvMs7_NtNtCskKLDkoKarTP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit26 ] ; 10 uses
  %.sroa.8.085 = phi i64 [ %i.q, %.lr.ph ], [ %.sroa.8.154, %_RNvMs7_NtNtCskKLDkoKarTP_4core2io8io_sliceNtB5_7IoSlice14advance_slices.exit26 ] ; 9 uses
    #dbg_value(ptr %.sroa.0.04086, !9863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9869)
    #dbg_value(i64 %.sroa.8.085, !9863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9869)
  call void @llvm.experimental.noalias.scope.decl(metadata !9875), !dbg !9904
  call void @llvm.experimental.noalias.scope.decl(metadata !9876), !dbg !9904
    #dbg_value(ptr poison, !2718, !DIExpression(), !9559)
    #dbg_value(ptr poison, !2718, !DIExpression(), !9561)
    #dbg_value(ptr %0, !2688, !DIExpression(), !9562)
    #dbg_value(ptr %0, !2737, !DIExpression(), !9564)
    #dbg_value(ptr %0, !2737, !DIExpression(), !9566)
    #dbg_value(ptr %0, !2737, !DIExpression(), !9568)
    #dbg_value(ptr %.sroa.0.04086, !2689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9562)
    #dbg_value(ptr %.sroa.0.04086, !2739, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9570)
    #dbg_value(ptr %.sroa.0.04086, !2743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9572)
    #dbg_value(ptr %.sroa.0.04086, !2745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9574)
    #dbg_value(ptr %.sroa.0.04086, !2743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9576)
    #dbg_value(ptr %.sroa.0.04086, !2745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9578)
    #dbg_value(ptr %.sroa.0.04086, !2743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9580)
    #dbg_value(ptr %.sroa.0.04086, !2745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9582)
    #dbg_value(i64 %.sroa.8.085, !2689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9562)
    #dbg_value(i64 %.sroa.8.085, !2739, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9570)
    #dbg_value(i64 %.sroa.8.085, !2743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9572)
    #dbg_value(i64 %.sroa.8.085, !2745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9574)
    #dbg_value(i64 %.sroa.8.085, !2743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9576)
    #dbg_value(i64 %.sroa.8.085, !2745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9578)
    #dbg_value(i64 %.sroa.8.085, !2743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9580)
    #dbg_value(i64 %.sroa.8.085, !2745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9582)
    #dbg_value(i64 1, !2759, !DIExpression(), !9584)
    #dbg_value(i64 1, !2765, !DIExpression(), !9588)
    #dbg_value(i64 1, !2765, !DIExpression(), !9592)
    #dbg_value(i64 1, !2759, !DIExpression(), !9594)
    #dbg_value(i64 0, !2690, !DIExpression(), !9595)
    #dbg_value(i64 0, !2778, !DIExpression(), !9597)
    #dbg_value(i64 %.sroa.8.085, !2747, !DIExpression(), !9598)
    #dbg_value(i64 %.sroa.8.085, !2784, !DIExpression(), !9600)
    #dbg_value(i64 %.sroa.8.085, !2784, !DIExpression(), !9602)
    #dbg_value(ptr %.sroa.0.04086, !2748, !DIExpression(), !9603)
    #dbg_value(ptr %.sroa.0.04086, !2788, !DIExpression(), !9600)
  %.idx.i9 = shl i64 %.sroa.8.085, 4, !dbg !9905  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.04086, i64 %.idx.i9, !dbg !9905 ; 3 uses
    #dbg_value(ptr %.sroa.0.04086, !2691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9604)
    #dbg_value(ptr %i.y, !2691, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9604)
    #dbg_value(i64 0, !2778, !DIExpression(), !9597)
    #dbg_value(i64 0, !2690, !DIExpression(), !9595)
    #dbg_value(ptr undef, !2718, !DIExpression(), !9561)
    #dbg_value(ptr %.sroa.0.04086, !2728, !DIExpression(), !9605)
    #dbg_value(ptr %.sroa.0.04086, !2763, !DIExpression(), !9584)
    #dbg_value(ptr %i.y, !2729, !DIExpression(), !9606)
    #dbg_value(ptr poison, !2792, !DIExpression(), !9608)
    #dbg_value(ptr poison, !2795, !DIExpression(), !9609)
  %i.z = icmp eq i64 %.sroa.8.085, 0, !dbg !9906
  br i1 %i.z, label %.lr.ph.i.i, label %.lr.ph187, !dbg !9907

bb.f:                                             ; preds = %bb.g
    #dbg_value(i64 %i.ae, !2778, !DIExpression(), !9597)
    #dbg_value(i64 %i.ae, !2690, !DIExpression(), !9595)
    #dbg_value(ptr %i.ab, !2691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9604)
    #dbg_value(ptr undef, !2718, !DIExpression(), !9561)
    #dbg_value(ptr %i.ab, !2728, !DIExpression(), !9605)
    #dbg_value(ptr %i.ab, !2763, !DIExpression(), !9584)
    #dbg_value(ptr %i.y, !2729, !DIExpression(), !9606)
    #dbg_value(ptr poison, !2792, !DIExpression(), !9608)
    #dbg_value(ptr poison, !2795, !DIExpression(), !9609)
  %i.aa = icmp eq ptr %i.ab, %i.y, !dbg !9906
  br i1 %i.aa, label %..lr.ph.i.i_crit_edge, label %.lr.ph187, !dbg !9907

.lr.ph187:                                        ; preds = %bb.e, %bb.f
  %.sroa.01.0.i186 = phi i64 [ %i.ae, %bb.f ], [ 0, %bb.e ]
  %.sroa.05.0.i185 = phi ptr [ %i.ab, %bb.f ], [ %.sroa.0.04086, %bb.e ] ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i186, !2778, !DIExpression(), !9597)
    #dbg_value(ptr %.sroa.05.0.i185, !2691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9604)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i185, i64 16, !dbg !9908 ; 2 uses
    #dbg_value(ptr %i.ab, !2691, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9604)
    #dbg_value(ptr %.sroa.05.0.i185, !2693, !DIExpression(), !9610)
    #dbg_value(ptr %.sroa.05.0.i185, !2798, !DIExpression(), !9612)
    #dbg_value(ptr %.sroa.05.0.i185, !2805, !DIExpression(), !9614)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i185, i64 8, !dbg !9909
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !9909, !alias.scope !9876, !noundef !823
    #dbg_value(i64 %i.ad, !2782, !DIExpression(), !9597)
  %i.ae = call i64 @llvm.uadd.sat.i64(i64 %.sroa.01.0.i186, i64 %i.ad), !dbg !9910 ; 4 uses
    #dbg_value(i64 %i.ae, !2690, !DIExpression(), !9595)
    #dbg_value(i64 %i.ae, !2778, !DIExpression(), !9597)
  %i.af = load i64, ptr %0, align 8, !dbg !9911, !range !1595, !alias.scope !9875, !noundef !823 ; 2 uses
  %i.ag = load i64, ptr %i.s, align 8, !dbg !9912, !alias.scope !9875, !noundef !823 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, -1, !dbg !9913
  call void @llvm.assume(i1 %i.ah), !dbg !9914
  %i.ai = sub nsw i64 %i.af, %i.ag, !dbg !9915
  %i.aj = icmp ule i64 %i.ae, %i.ai, !dbg !9916
    #dbg_value(ptr %0, !2810, !DIExpression(), !9621)
  %i.ak = icmp eq i64 %i.ag, 0
  %or.cond.i = or i1 %i.ak, %i.aj, !dbg !9916
  br i1 %or.cond.i, label %bb.g, label %.lr.ph.i28, !dbg !9916

..lr.ph.i.i_crit_edge:                            ; preds = %bb.f
  %i.al = inttoptr i64 %i.ae to ptr, !dbg !9917
  br label %.lr.ph.i.i, !dbg !9907

.lr.ph.i.i:                                       ; preds = %..lr.ph.i.i_crit_edge, %bb.e
  %.sroa.01.0.i.lcssa = phi ptr [ %i.al, %..lr.ph.i.i_crit_edge ], [ null, %bb.e ], !dbg !9918
    #dbg_value(ptr %.sroa.0.04086, !2788, !DIExpression(), !9602)
  call void @llvm.experimental.noalias.scope.decl(metadata !9877), !dbg !9919
    #dbg_value(ptr %.sroa.0.04086, !2827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9625)
    #dbg_value(ptr %i.y, !2827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9625)
    #dbg_value(ptr %0, !2828, !DIExpression(), !9625)
    #dbg_value(i64 1, !2833, !DIExpression(), !9628)
    #dbg_value(ptr undef, !2817, !DIExpression(), !9629)
    #dbg_value(ptr %.sroa.0.04086, !2818, !DIExpression(), !9630)
    #dbg_value(ptr %.sroa.0.04086, !2834, !DIExpression(), !9628)
    #dbg_value(ptr %i.y, !2819, !DIExpression(), !9631)
    #dbg_value(ptr poison, !2836, !DIExpression(), !9633)
    #dbg_value(ptr poison, !2837, !DIExpression(), !9634)
  %i.am = load ptr, ptr %i.w, align 8, !alias.scope !9878, !nonnull !823, !noundef !823 ; 3 uses
  %.promoted.i.i = load i64, ptr %i.s, align 8, !alias.scope !9878 ; 3 uses
  %i.an = add i64 %.idx.i9, -16, !dbg !9920       ; 2 uses
  %i.ao = and i64 %i.an, 16, !dbg !9920
  %lcmp.mod.not.not = icmp eq i64 %i.ao, 0, !dbg !9920
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit, !dbg !9920

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i
    #dbg_value(ptr %.sroa.0.04086, !2827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9625)
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.04086, i64 16, !dbg !9921
    #dbg_value(ptr %i.ap, !2827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9625)
    #dbg_value(ptr %.sroa.0.04086, !2829, !DIExpression(), !9637)
  %.sroa.0.0.val.i.i.prol = load ptr, ptr %.sroa.0.04086, align 8, !dbg !9922, !alias.scope !9876, !noalias !9877, !noundef !823
  %i.aq = getelementptr i8, ptr %.sroa.0.04086, i64 8, !dbg !9922
  %.sroa.0.0.val7.i.i.prol = load i64, ptr %i.aq, align 8, !dbg !9922, !alias.scope !9876, !noalias !9877, !noundef !823 ; 2 uses
    #dbg_value(ptr poison, !2840, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !9639)
    #dbg_value(ptr poison, !2844, !DIExpression(), !9639)
  call void @llvm.experimental.noalias.scope.decl(metadata !9879), !dbg !9923
    #dbg_value(ptr %0, !1615, !DIExpression(), !9641)
    #dbg_value(ptr %.sroa.0.0.val.i.i.prol, !1619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9641)
    #dbg_value(i64 %.sroa.0.0.val7.i.i.prol, !1619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9641)
    #dbg_value(i64 %.promoted.i.i, !1620, !DIExpression(), !9642)
    #dbg_value(i64 %.promoted.i.i, !1625, !DIExpression(), !9644)
    #dbg_value(i64 %.sroa.0.0.val7.i.i.prol, !1621, !DIExpression(), !9645)
    #dbg_value(i64 %.sroa.0.0.val7.i.i.prol, !1630, !DIExpression(), !9647)
    #dbg_value(ptr %.sroa.0.0.val.i.i.prol, !1622, !DIExpression(), !9648)
    #dbg_value(ptr %.sroa.0.0.val.i.i.prol, !1633, !DIExpression(), !9647)
    #dbg_value(ptr %i.am, !1628, !DIExpression(), !9644)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %.promoted.i.i, !dbg !9924
    #dbg_value(ptr %i.ar, !1623, !DIExpression(), !9649)
    #dbg_value(ptr %i.ar, !1634, !DIExpression(), !9647)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %.sroa.0.0.val.i.i.prol, i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val7.i.i.prol, i1 false), !dbg !9925, !noalias !9880
  %i.as = add nuw i64 %.sroa.0.0.val7.i.i.prol, %.promoted.i.i, !dbg !9926 ; 2 uses
    #dbg_value(ptr undef, !2817, !DIExpression(), !9629)
    #dbg_value(ptr %i.ap, !2818, !DIExpression(), !9630)
    #dbg_value(ptr %i.ap, !2834, !DIExpression(), !9628)
    #dbg_value(ptr %i.y, !2819, !DIExpression(), !9631)
    #dbg_value(ptr poison, !2836, !DIExpression(), !9633)
    #dbg_value(ptr poison, !2837, !DIExpression(), !9634)
  br label %.prol.loopexit, !dbg !9920

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i ], [ %i.as, %.prol.loopexit.unr-lcssa ]
  %.unr = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.as, %.prol.loopexit.unr-lcssa ]
  %.sroa.0.08.i.i.unr = phi ptr [ %.sroa.0.04086, %.lr.ph.i.i ], [ %i.ap, %.prol.loopexit.unr-lcssa ]
  %i.at = icmp eq i64 %i.an, 0, !dbg !9920
  br i1 %i.at, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB2g_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtBU_5write5Write14write_vectored0ECslusEaBCZKLp_13quiche_client.exit.i, label %.lr.ph.i.i.new, !dbg !9920

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %i.au = phi i64 [ %i.bc, %.lr.ph.i.i.new ], [ %.unr, %.prol.loopexit ], !dbg !9921 ; 2 uses
  %.sroa.0.08.i.i = phi ptr [ %i.az, %.lr.ph.i.i.new ], [ %.sroa.0.08.i.i.unr, %.prol.loopexit ] ; 5 uses
    #dbg_value(ptr %.sroa.0.08.i.i, !2827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9625)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 16, !dbg !9921
    #dbg_value(ptr %i.av, !2827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9625)
    #dbg_value(ptr %.sroa.0.08.i.i, !2829, !DIExpression(), !9637)
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.08.i.i, align 8, !dbg !9922, !alias.scope !9876, !noalias !9877, !noundef !823
  %i.aw = getelementptr i8, ptr %.sroa.0.08.i.i, i64 8, !dbg !9922
  %.sroa.0.0.val7.i.i = load i64, ptr %i.aw, align 8, !dbg !9922, !alias.scope !9876, !noalias !9877, !noundef !823 ; 2 uses
    #dbg_value(ptr poison, !2840, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !9639)
    #dbg_value(ptr poison, !2844, !DIExpression(), !9639)
  call void @llvm.experimental.noalias.scope.decl(metadata !9879), !dbg !9923
    #dbg_value(ptr %0, !1615, !DIExpression(), !9641)
    #dbg_value(ptr %.sroa.0.0.val.i.i, !1619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9641)
    #dbg_value(i64 %.sroa.0.0.val7.i.i, !1619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9641)
    #dbg_value(i64 %i.au, !1620, !DIExpression(), !9642)
    #dbg_value(i64 %i.au, !1625, !DIExpression(), !9644)
    #dbg_value(i64 %.sroa.0.0.val7.i.i, !1621, !DIExpression(), !9645)
    #dbg_value(i64 %.sroa.0.0.val7.i.i, !1630, !DIExpression(), !9647)
    #dbg_value(ptr %.sroa.0.0.val.i.i, !1622, !DIExpression(), !9648)
    #dbg_value(ptr %.sroa.0.0.val.i.i, !1633, !DIExpression(), !9647)
    #dbg_value(ptr %i.am, !1628, !DIExpression(), !9644)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.au, !dbg !9924
    #dbg_value(ptr %i.ax, !1623, !DIExpression(), !9649)
    #dbg_value(ptr %i.ax, !1634, !DIExpression(), !9647)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 1 %.sroa.0.0.val.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val7.i.i, i1 false), !dbg !9925, !noalias !9880
  %i.ay = add nuw i64 %.sroa.0.0.val7.i.i, %i.au, !dbg !9926 ; 2 uses
    #dbg_value(ptr undef, !2817, !DIExpression(), !9629)
    #dbg_value(ptr %i.av, !2818, !DIExpression(), !9630)
    #dbg_value(ptr %i.av, !2834, !DIExpression(), !9628)
    #dbg_value(ptr %i.y, !2819, !DIExpression(), !9631)
    #dbg_value(ptr poison, !2836, !DIExpression(), !9633)
    #dbg_value(ptr poison, !2837, !DIExpression(), !9634)
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 32, !dbg !9921 ; 2 uses
    #dbg_value(ptr %i.az, !2827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9625)
    #dbg_value(ptr %i.av, !2829, !DIExpression(), !9637)
  %.sroa.0.0.val.i.i.1 = load ptr, ptr %i.av, align 8, !dbg !9922, !alias.scope !9876, !noalias !9877, !noundef !823
  %i.ba = getelementptr i8, ptr %.sroa.0.08.i.i, i64 24, !dbg !9922
  %.sroa.0.0.val7.i.i.1 = load i64, ptr %i.ba, align 8, !dbg !9922, !alias.scope !9876, !noalias !9877, !noundef !823 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.val.i.i.1, !1619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9641)
    #dbg_value(i64 %.sroa.0.0.val7.i.i.1, !1619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9641)
    #dbg_value(i64 %i.ay, !1620, !DIExpression(), !9642)
    #dbg_value(i64 %i.ay, !1625, !DIExpression(), !9644)
    #dbg_value(i64 %.sroa.0.0.val7.i.i.1, !1621, !DIExpression(), !9645)
    #dbg_value(i64 %.sroa.0.0.val7.i.i.1, !1630, !DIExpression(), !9647)
    #dbg_value(ptr %.sroa.0.0.val.i.i.1, !1622, !DIExpression(), !9648)
    #dbg_value(ptr %.sroa.0.0.val.i.i.1, !1633, !DIExpression(), !9647)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ay, !dbg !9924
    #dbg_value(ptr %i.bb, !1623, !DIExpression(), !9649)
    #dbg_value(ptr %i.bb, !1634, !DIExpression(), !9647)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bb, ptr nonnull readonly align 1 %.sroa.0.0.val.i.i.1, i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val7.i.i.1, i1 false), !dbg !9925, !noalias !9881
  %i.bc = add nuw i64 %.sroa.0.0.val7.i.i.1, %i.ay, !dbg !9926 ; 2 uses
    #dbg_value(ptr %i.az, !2818, !DIExpression(), !9630)
    #dbg_value(ptr %i.az, !2834, !DIExpression(), !9628)
  %i.bd = icmp eq ptr %i.az, %i.y, !dbg !9927
  br i1 %i.bd, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB2g_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtBU_5write5Write14write_vectored0ECslusEaBCZKLp_13quiche_client.exit.i, label %.lr.ph.i.i.new, !dbg !9920

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB2g_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtBU_5write5Write14write_vectored0ECslusEaBCZKLp_13quiche_client.exit.i: ; preds = %.lr.ph.i.i.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.bc, %.lr.ph.i.i.new ], !dbg !9926
  store i64 %.lcssa, ptr %i.s, align 8, !dbg !9928, !alias.scope !9878
    #dbg_value(ptr %.sroa.01.0.i.lcssa, !2696, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9652)
    #dbg_value(i64 0, !2696, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9652)
  %i.be = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %.sroa.01.0.i.lcssa, 1, !dbg !9929
  br label %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write14write_vectoredCslusEaBCZKLp_13quiche_client.exit, !dbg !9929

bb.g:                                             ; preds = %._crit_edge.i10, %.lr.ph187
  %i.bf = phi i64 [ %.pre.i, %._crit_edge.i10 ], [ %i.af, %.lr.ph187 ], !dbg !9930
    #dbg_value(ptr %0, !2770, !DIExpression(), !9653)
  %.not81.i = icmp ult i64 %i.ae, %i.bf, !dbg !9931
  br i1 %.not81.i, label %bb.f, label %bb.v, !dbg !9931

.lr.ph.i28:                                       ; preds = %.lr.ph187
  call void @llvm.experimental.noalias.scope.decl(metadata !9882), !dbg !9932
    #dbg_value(ptr %0, !1660, !DIExpression(), !9657)
    #dbg_declare(ptr %i.b, !1661, !DIExpression(), !9658)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9933, !noalias !9883
    #dbg_value(ptr %0, !1675, !DIExpression(), !9660)
  store ptr %0, ptr %i.b, align 8, !dbg !9934, !noalias !9883
  store i64 0, ptr %i.t, align 8, !dbg !9934, !noalias !9883
    #dbg_value(ptr %i.b, !1681, !DIExpression(), !9662)
  br label %bb.h, !dbg !9935

bb.h:                                             ; preds = %bb.s, %.lr.ph.i28
  store i8 1, ptr %i.u, align 8, !dbg !9936, !alias.scope !9882, !noalias !9876
  %i.bg = invoke { ptr, i64 } @_RNvMNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB7_9BufWriterpE9flush_bufNtB2_8BufGuard9remaining(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.k unwind label %bb.j, !dbg !9937, !noalias !9876 ; 2 uses

bb.i:                                             ; preds = %bb.t, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.bh, %bb.j ], [ %i.cr, %bb.t ]
    #dbg_value(ptr %i.b, !1687, !DIExpression(), !9664)
  invoke void @_RNvXs_NvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB9_9BufWriterpE9flush_bufNtB4_8BufGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %common.resume unwind label %bb.u, !dbg !9938, !noalias !9876

bb.j:                                             ; preds = %bb.r, %bb.k, %bb.h
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.bi = extractvalue { ptr, i64 } %i.bg, 0, !dbg !9939
  %i.bj = extractvalue { ptr, i64 } %i.bg, 1, !dbg !9939
  %i.bk = invoke { i64, ptr } @_RNvXsb_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bi, i64 noundef %i.bj)
          to label %bb.l unwind label %bb.j, !dbg !9940, !noalias !9876 ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.bl = extractvalue { i64, ptr } %i.bk, 0, !dbg !9941
  %i.bm = extractvalue { i64, ptr } %i.bk, 1, !dbg !9941 ; 12 uses
    #dbg_value(i64 %i.bl, !1662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9665)
  %i.bn = ptrtoint ptr %i.bm to i64, !dbg !9941   ; 5 uses
    #dbg_value(i64 %i.bn, !1662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9665)
  store i8 0, ptr %i.u, align 8, !dbg !9942, !alias.scope !9882, !noalias !9876
  %i.bo = trunc nuw i64 %i.bl to i1, !dbg !9943
  br i1 %i.bo, label %bb.m, label %bb.o, !dbg !9943

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr poison, !1693, !DIExpression(), !9667)
    #dbg_value(ptr poison, !1705, !DIExpression(), !9669)
    #dbg_value(ptr poison, !1705, !DIExpression(), !9671)
    #dbg_value(ptr poison, !1705, !DIExpression(), !9673)
    #dbg_value(ptr poison, !1712, !DIExpression(), !9675)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ], !noalias !9876
    #dbg_value(ptr %i.bm, !1734, !DIExpression(), !9677)
    #dbg_declare(ptr poison, !1739, !DIExpression(), !9678)
    #dbg_value(i64 1, !1748, !DIExpression(), !9680)
    #dbg_value(i64 1, !1751, !DIExpression(), !9682)
    #dbg_value(i64 -1, !1754, !DIExpression(), !9684)
    #dbg_value(ptr %i.bm, !1749, !DIExpression(), !9680)
    #dbg_value(i64 %i.bn, !1740, !DIExpression(), !9685)
  %i.bp = and i64 %i.bn, 3, !dbg !9944
  switch i64 %i.bp, label %default.unreachable [
    i64 2, label %bb.n
    i64 3, label %.split19.i
    i64 0, label %.split20.i
    i64 1, label %.split.i
  ], !dbg !9945, !prof !1408

default.unreachable:                              ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
    #dbg_value(i64 %i.bn, !1698, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !9686)
    #dbg_value(i64 %i.bn, !1758, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !9688)
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i unwind label %bb.t, !dbg !9946, !noalias !9876

.noexc.i:                                         ; preds = %bb.n
  %i.br = lshr i64 %i.bn, 32, !dbg !9947
    #dbg_value(i64 %i.br, !1758, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !9688)
    #dbg_value(i64 %i.br, !1698, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !9686)
  %i.bs = trunc nuw i64 %i.br to i32, !dbg !9947
    #dbg_value(i32 %i.bs, !1698, !DIExpression(), !9686)
    #dbg_value(i32 %i.bs, !1758, !DIExpression(), !9688)
    #dbg_value(ptr %i.bq, !1763, !DIExpression(), !9689)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16, !dbg !9948
end_hunk_2
