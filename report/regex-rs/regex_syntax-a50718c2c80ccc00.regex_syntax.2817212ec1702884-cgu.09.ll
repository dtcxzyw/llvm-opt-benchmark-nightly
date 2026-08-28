Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.09?download=true
inline.NumInlined: 71
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtCs3roNzt6HBWW_12regex_syntax3ast7visitor5visitINtNtB4_5parse11NestLimiterQNtBT_6ParserEEB6_:bb.a
    #dbg_value(ptr %.sroa.0.0.val77.i, !1344, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2471)
    #dbg_value(ptr undef, !1344, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2471)
    #dbg_value(i64 undef, !1344, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2471)
    #dbg_value(ptr undef, !1426, !DIExpression(), !1451)
    #dbg_value(ptr %.sroa.0.0.val77.i, !1433, !DIExpression(), !2472)
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val77.i, i64 48, !dbg !2473
  %i.cn = load ptr, ptr %i.cm, align 8, !dbg !2473, !noalias !1462, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.cn, !1345, !DIExpression(), !2474)
  br label %bb.aj, !dbg !2475

bb.ag:                                            ; preds = %.lr.ph288.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.val77.i) ]
    #dbg_value(i64 1, !1344, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2471)
    #dbg_value(ptr %.sroa.0.0.val77.i, !1344, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2471)
    #dbg_value(ptr undef, !1344, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2471)
    #dbg_value(i64 undef, !1344, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2471)
    #dbg_value(ptr undef, !1426, !DIExpression(), !1451)
    #dbg_value(ptr %.sroa.0.0.val77.i, !1435, !DIExpression(), !2476)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val77.i, i64 88, !dbg !2477
  %i.cp = load ptr, ptr %i.co, align 8, !dbg !2477, !noalias !1462, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.cp, !1345, !DIExpression(), !2474)
  br label %bb.aj, !dbg !2478

bb.ah:                                            ; preds = %bb.ad
    #dbg_value(ptr poison, !1624, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2479)
    #dbg_value(ptr %.sroa.0.0.val77.i, !1642, !DIExpression(), !2480)
    #dbg_value(ptr %.sroa.0.0.val77.i, !2481, !DIExpression(), !2486)
    #dbg_value(ptr %.sroa.0.0.val77.i, !2488, !DIExpression(), !2492)
    #dbg_value(ptr %.sroa.0.0.val77.i, !2494, !DIExpression(), !2501)
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val77.i, i64 8, !dbg !2503
  %i.cr = load ptr, ptr %i.cq, align 8, !dbg !2503, !noalias !2448, !nonnull !26, !noundef !26 ; 3 uses
    #dbg_value(ptr %.sroa.0.0.val77.i, !1658, !DIExpression(), !2525)
    #dbg_value(ptr %.sroa.0.0.val77.i, !2481, !DIExpression(), !2526)
    #dbg_value(ptr %.sroa.0.0.val77.i, !2488, !DIExpression(), !2528)
    #dbg_value(ptr %.sroa.0.0.val77.i, !2494, !DIExpression(), !2531)
    #dbg_value(ptr %i.cr, !1672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1678)
    #dbg_value(ptr %i.cr, !1687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1692)
    #dbg_value(ptr %i.cr, !1700, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1702)
    #dbg_value(i64 %i.ch, !1672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1678)
    #dbg_value(i64 %i.ch, !1687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1692)
    #dbg_value(i64 %i.ch, !1700, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1702)
  %i.cs = add nsw i64 %i.ch, -1, !dbg !2534
    #dbg_value(i64 %i.cs, !1688, !DIExpression(), !2535)
    #dbg_value(i64 %i.cs, !1701, !DIExpression(), !1702)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16, !dbg !2536
    #dbg_value(i64 2, !1344, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2471)
    #dbg_value(ptr %i.cr, !1344, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2471)
    #dbg_value(ptr %i.ct, !1344, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2471)
    #dbg_value(i64 %i.cs, !1344, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2471)
    #dbg_value(ptr undef, !1426, !DIExpression(), !1451)
    #dbg_value(ptr %i.cr, !1345, !DIExpression(), !2474)
  br label %bb.aj, !dbg !2537

bb.ai:                                            ; preds = %bb.ac
    #dbg_value(ptr poison, !1631, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !2538)
    #dbg_value(ptr %.sroa.0.0.val77.i, !1642, !DIExpression(), !2539)
    #dbg_value(ptr %.sroa.0.0.val77.i, !2481, !DIExpression(), !2540)
    #dbg_value(ptr %.sroa.0.0.val77.i, !2488, !DIExpression(), !2543)
    #dbg_value(ptr %.sroa.0.0.val77.i, !2494, !DIExpression(), !2546)
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val77.i, i64 8, !dbg !2549
  %i.cv = load ptr, ptr %i.cu, align 8, !dbg !2549, !noalias !2448, !nonnull !26, !noundef !26 ; 3 uses
    #dbg_value(ptr %.sroa.0.0.val77.i, !1658, !DIExpression(), !2556)
    #dbg_value(ptr %.sroa.0.0.val77.i, !2481, !DIExpression(), !2557)
    #dbg_value(ptr %.sroa.0.0.val77.i, !2488, !DIExpression(), !2559)
    #dbg_value(ptr %.sroa.0.0.val77.i, !2494, !DIExpression(), !2562)
    #dbg_value(ptr %i.cv, !1672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1708)
    #dbg_value(ptr %i.cv, !1687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1711)
    #dbg_value(ptr %i.cv, !1700, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1714)
    #dbg_value(i64 %i.cd, !1672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1708)
    #dbg_value(i64 %i.cd, !1687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1711)
    #dbg_value(i64 %i.cd, !1700, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1714)
  %i.cw = add nsw i64 %i.cd, -1, !dbg !2565
    #dbg_value(i64 %i.cw, !1690, !DIExpression(), !2566)
    #dbg_value(i64 %i.cw, !1701, !DIExpression(), !1714)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 16, !dbg !2567
    #dbg_value(i64 3, !1344, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2471)
    #dbg_value(ptr %i.cv, !1344, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2471)
    #dbg_value(ptr %i.cx, !1344, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2471)
    #dbg_value(i64 %i.cw, !1344, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2471)
    #dbg_value(ptr undef, !1426, !DIExpression(), !1451)
    #dbg_value(ptr %i.cv, !1345, !DIExpression(), !2474)
  br label %bb.aj, !dbg !2568

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.sroa.780.0.ph170.i = phi i64 [ 0, %bb.af ], [ 1, %bb.ag ], [ 2, %bb.ah ], [ 3, %bb.ai ]
  %.sroa.11.0.ph168.i = phi ptr [ %.sroa.0.0.val77.i, %bb.af ], [ %.sroa.0.0.val77.i, %bb.ag ], [ %i.cr, %bb.ah ], [ %i.cv, %bb.ai ]
  %.sroa.14.0.ph166.i = phi ptr [ undef, %bb.af ], [ undef, %bb.ag ], [ %i.ct, %bb.ah ], [ %i.cx, %bb.ai ]
  %.sroa.17.0.ph164.i = phi i64 [ undef, %bb.af ], [ undef, %bb.ag ], [ %i.cs, %bb.ah ], [ %i.cw, %bb.ai ]
  %.sroa.020.0.i = phi ptr [ %i.cn, %bb.af ], [ %i.cp, %bb.ag ], [ %i.cr, %bb.ah ], [ %i.cv, %bb.ai ], !dbg !2569
    #dbg_value(ptr %.sroa.020.0.i, !1345, !DIExpression(), !2474)
    #dbg_value(ptr %i.j, !2570, !DIExpression(), !2577)
    #dbg_value(ptr %.sroa.0.0286.i, !2576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2577)
    #dbg_value(ptr %.sroa.0.0286.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2592)
    #dbg_value(ptr %.sroa.0.0286.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2600)
    #dbg_value(i64 %.sroa.780.0.ph170.i, !2576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2577)
    #dbg_value(i64 %.sroa.780.0.ph170.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2592)
    #dbg_value(i64 %.sroa.780.0.ph170.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2600)
    #dbg_value(ptr %.sroa.11.0.ph168.i, !2576, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2577)
    #dbg_value(ptr %.sroa.11.0.ph168.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2592)
    #dbg_value(ptr %.sroa.11.0.ph168.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2600)
    #dbg_value(ptr %.sroa.14.0.ph166.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2600)
    #dbg_value(ptr %.sroa.14.0.ph166.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2592)
    #dbg_value(ptr %.sroa.14.0.ph166.i, !2576, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2577)
    #dbg_value(i64 %.sroa.17.0.ph164.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !2600)
    #dbg_value(i64 %.sroa.17.0.ph164.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !2592)
    #dbg_value(i64 %.sroa.17.0.ph164.i, !2576, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !2577)
    #dbg_value(ptr %i.j, !2586, !DIExpression(), !2592)
    #dbg_value(ptr %i.j, !2602, !DIExpression(), !2608)
    #dbg_value(i64 40, !2610, !DIExpression(), !2614)
  %i.cy = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !2620, !alias.scope !2621, !noalias !2624, !noundef !26 ; 3 uses
    #dbg_value(i64 %i.cy, !2587, !DIExpression(), !2626)
    #dbg_value(i64 %i.cy, !2627, !DIExpression(), !2633)
    #dbg_value(ptr %i.j, !2618, !DIExpression(), !2635)
  %i.cz = load i64, ptr %i.j, align 8, !dbg !2636, !range !2192, !alias.scope !2621, !noalias !2624, !noundef !26
  %i.da = icmp eq i64 %i.cy, %i.cz, !dbg !2637
  br i1 %i.da, label %bb.ak, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBJ_7visitor5FrameEE8push_mutBL_.exit.i, !dbg !2637

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBQ_7visitor5FrameEE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j) #17
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBJ_7visitor5FrameEE8push_mutBL_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !2638

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBJ_7visitor5FrameEE8push_mutBL_.exit.i: ; preds = %bb.ak, %bb.aj
  %i.db = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2639, !alias.scope !2621, !noalias !2624, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.db, !2632, !DIExpression(), !2633)
  %i.dc = getelementptr inbounds nuw [40 x i8], ptr %i.db, i64 %i.cy, !dbg !2660 ; 5 uses
    #dbg_value(ptr %i.dc, !2589, !DIExpression(), !2661)
    #dbg_value(ptr %i.dc, !2599, !DIExpression(), !2600)
  store ptr %.sroa.0.0286.i, ptr %i.dc, align 8, !dbg !2662, !noalias !1462
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8, !dbg !2662
  store i64 %.sroa.780.0.ph170.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !2662, !noalias !1462
  %.sroa.584.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 16, !dbg !2662
  store ptr %.sroa.11.0.ph168.i, ptr %.sroa.584.0..sroa_idx.i, align 8, !dbg !2662, !noalias !1462
  %.sroa.6.0..sroa_idx85.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 24, !dbg !2662
  store ptr %.sroa.14.0.ph166.i, ptr %.sroa.6.0..sroa_idx85.i, align 8, !dbg !2662, !noalias !1462
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx85.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 32, !dbg !2662
  store i64 %.sroa.17.0.ph164.i, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx85.sroa_idx.i, align 8, !dbg !2662, !noalias !1462
  %i.dd = add i64 %i.cy, 1, !dbg !2663
    #dbg_value(ptr %.sroa.020.0.i, !1322, !DIExpression(), !1468)
  br label %.backedge.i, !dbg !1573

.backedge.i:                                      ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBJ_7visitor5FrameEE8push_mutBL_.exit78.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBJ_7visitor5FrameEE8push_mutBL_.exit.i
  %.sink.i = phi i64 [ %i.dd, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBJ_7visitor5FrameEE8push_mutBL_.exit.i ], [ %i.dh, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBJ_7visitor5FrameEE8push_mutBL_.exit78.i ]
  %.sroa.0.0.be.i = phi ptr [ %.sroa.020.0.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBJ_7visitor5FrameEE8push_mutBL_.exit.i ], [ %.sroa.452.sroa.5.0.copyload.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBJ_7visitor5FrameEE8push_mutBL_.exit78.i ] ; 2 uses
  store i64 %.sink.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !2664, !alias.scope !1466, !noalias !1549
    #dbg_value(ptr %.sroa.0.0.be.i, !1322, !DIExpression(), !1468)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !1565, !noalias !1469
  invoke void @_RNvXs5_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_11NestLimiterQNtB5_6ParserENtNtB7_7visitor7Visitor9visit_preB9_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.be.i)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !1566

.noexc16:                                         ; preds = %.backedge.i
  %i.de = load i64, ptr %i.h, align 8, !dbg !1567, !range !1568, !noalias !1469, !noundef !26
  %.not.i = icmp eq i64 %i.de, -1, !dbg !1567
  br i1 %.not.i, label %.lr.ph288.i, label %._crit_edge289.i, !dbg !1569

bb.al:                                            ; preds = %.noexc14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 128, i1 false), !dbg !2667, !noalias !1571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2668, !noalias !1469
  br label %bb.as, !dbg !1573

bb.am:                                            ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !2668, !noalias !1469
    #dbg_value(ptr %i.j, !1532, !DIExpression(), !2669)
    #dbg_value(ptr %i.j, !1514, !DIExpression(), !2670)
    #dbg_value(ptr %i.j, !2671, !DIExpression(), !2677)
    #dbg_value(ptr %i.j, !2679, !DIExpression(), !2683)
  %i.df = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !2685, !alias.scope !1466, !noalias !1549, !noundef !26 ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0, !dbg !2685
  br i1 %i.dg, label %._crit_edge.i, label %.lr.ph.i, !dbg !2685

._crit_edge.i:                                    ; preds = %bb.am, %bb.ar
    #dbg_value(ptr poison, !2686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2693)
    #dbg_value(i32 poison, !2686, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !2693)
  store i64 -1, ptr %0, align 8, !dbg !2695, !alias.scope !2696, !noalias !1571
  br label %bb.as, !dbg !1573

.lr.ph.i:                                         ; preds = %bb.am, %bb.ar
  %i.dh = phi i64 [ %i.dr, %bb.ar ], [ %i.df, %bb.am ] ; 3 uses
  %i.di = add nsw i64 %i.dh, -1, !dbg !2699       ; 3 uses
  store i64 %i.di, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !2699, !alias.scope !1466, !noalias !1549
  %i.dj = load i64, ptr %i.j, align 8, !dbg !2700, !range !2192, !alias.scope !1466, !noalias !1549, !noundef !26
  %i.dk = icmp samesign ult i64 %i.di, %i.dj, !dbg !2701
    #dbg_value(i1 true, !2702, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !2705)
  call void @llvm.assume(i1 %i.dk), !dbg !2707
  %i.dl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2708, !alias.scope !1466, !noalias !1549, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.dl, !2717, !DIExpression(), !2723)
    #dbg_value(i64 %i.di, !2722, !DIExpression(), !2723)
  %i.dm = icmp samesign ult i64 %i.dh, 230584300921369397, !dbg !2725
  call void @llvm.assume(i1 %i.dm), !dbg !2726
  %i.dn = getelementptr inbounds nuw [40 x i8], ptr %i.dl, i64 %i.di, !dbg !2727 ; 7 uses
    #dbg_value(ptr %i.dn, !2728, !DIExpression(), !2733)
  %.sroa.051.0.copyload.i = load ptr, ptr %i.dn, align 8, !dbg !2735, !noalias !1462, !nonnull !26, !noundef !26
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8, !dbg !2735
  %.sroa.452.sroa.0.0.copyload.i = load i64, ptr %.sroa.452.0..sroa_idx.i, align 8, !dbg !2735, !noalias !1462
  %.sroa.452.sroa.5.0..sroa.452.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 24, !dbg !2735
  %.sroa.452.sroa.5.0.copyload.i = load ptr, ptr %.sroa.452.sroa.5.0..sroa.452.0..sroa_idx.sroa_idx.i, align 8, !dbg !2735, !noalias !1462 ; 4 uses
  %.sroa.452.sroa.6.0..sroa.452.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 32, !dbg !2735
  %.sroa.452.sroa.6.0.copyload.i = load i64, ptr %.sroa.452.sroa.6.0..sroa.452.0..sroa_idx.sroa_idx.i, align 8, !dbg !2735, !noalias !1462 ; 3 uses
    #dbg_value(ptr %.sroa.051.0.copyload.i, !1351, !DIExpression(), !2736)
    #dbg_value(i64 %.sroa.452.sroa.0.0.copyload.i, !1353, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2736)
    #dbg_value(i64 %.sroa.452.sroa.0.0.copyload.i, !2737, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2748)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !1353, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2736)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !2737, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2748)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !1353, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2736)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2737, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2748)
    #dbg_value(ptr %i.j, !2743, !DIExpression(), !2748)
    #dbg_value(i64 1, !2750, !DIExpression(), !2754)
    #dbg_value(i64 1, !2756, !DIExpression(), !2764)
    #dbg_value(i64 1, !2766, !DIExpression(), !2771)
    #dbg_value(i64 1, !2750, !DIExpression(), !2773)
    #dbg_value(i64 1, !2756, !DIExpression(), !2775)
    #dbg_value(i64 1, !2766, !DIExpression(), !2778)
  switch i64 %.sroa.452.sroa.0.0.copyload.i, label %default.unreachable19.i.i [
    i64 0, label %bb.ap
    i64 1, label %bb.ap
    i64 2, label %bb.an
    i64 3, label %bb.ao
  ], !dbg !2781

default.unreachable19.i.i:                        ; preds = %.lr.ph.i
  unreachable

bb.an:                                            ; preds = %.lr.ph.i
    #dbg_value(ptr poison, !2744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2782)
    #dbg_value(ptr poison, !2753, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2754)
    #dbg_value(ptr poison, !2759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2764)
    #dbg_value(ptr poison, !2769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2771)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2782)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2753, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2754)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2764)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2771)
  %i.do = icmp eq i64 %.sroa.452.sroa.6.0.copyload.i, 0, !dbg !2783
  br i1 %i.do, label %bb.ap, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBJ_7visitor5FrameEE8push_mutBL_.exit78.i, !dbg !2783

bb.ao:                                            ; preds = %.lr.ph.i
    #dbg_value(ptr poison, !2746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2784)
    #dbg_value(ptr poison, !2753, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2773)
    #dbg_value(ptr poison, !2759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2775)
    #dbg_value(ptr poison, !2769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2778)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2746, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2784)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2753, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2773)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2775)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2778)
  %i.dp = icmp eq i64 %.sroa.452.sroa.6.0.copyload.i, 0, !dbg !2785
  br i1 %i.dp, label %bb.ap, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBJ_7visitor5FrameEE8push_mutBL_.exit78.i, !dbg !2785

bb.ap:                                            ; preds = %bb.ao, %bb.an, %.lr.ph.i, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !2786, !noalias !1469
  invoke void @_RNvXs5_NtNtCs3roNzt6HBWW_12regex_syntax3ast5parseINtB5_11NestLimiterQNtB5_6ParserENtNtB7_7visitor7Visitor10visit_postB9_(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(none) dereferenceable(128) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.051.0.copyload.i)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit, !dbg !2787

.noexc17:                                         ; preds = %bb.ap
  %i.dq = load i64, ptr %i.f, align 8, !dbg !2788, !range !1568, !noalias !1469, !noundef !26
  %.not74.i = icmp eq i64 %i.dq, -1, !dbg !2788
  br i1 %.not74.i, label %bb.ar, label %bb.aq, !dbg !2789

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBJ_7visitor5FrameEE8push_mutBL_.exit78.i: ; preds = %bb.ao, %bb.an
  %.sroa.452.sroa.5.0..sroa.452.0..sroa_idx.sroa_idx.i.le = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %.sroa.452.sroa.6.0..sroa.452.0..sroa_idx.sroa_idx.i.le = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.452.sroa.5.0.copyload.i) ]
  %.sroa.1893.0200.i = add i64 %.sroa.452.sroa.6.0.copyload.i, -1, !dbg !2790
  %.sroa.15.0202.i = getelementptr inbounds nuw i8, ptr %.sroa.452.sroa.5.0.copyload.i, i64 16, !dbg !2793
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !1322, !DIExpression(), !1468)
    #dbg_value(ptr %i.j, !2570, !DIExpression(), !2795)
    #dbg_value(ptr %.sroa.051.0.copyload.i, !2576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2795)
    #dbg_value(ptr %.sroa.051.0.copyload.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2797)
    #dbg_value(ptr %.sroa.051.0.copyload.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2799)
    #dbg_value(i64 %.sroa.452.sroa.0.0.copyload.i, !2576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2795)
    #dbg_value(i64 %.sroa.452.sroa.0.0.copyload.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2797)
    #dbg_value(i64 %.sroa.452.sroa.0.0.copyload.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2799)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !2576, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2795)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2797)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !2799)
    #dbg_value(ptr %.sroa.15.0202.i, !2576, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2795)
    #dbg_value(ptr %.sroa.15.0202.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2797)
    #dbg_value(ptr %.sroa.15.0202.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !2799)
    #dbg_value(i64 %.sroa.1893.0200.i, !2576, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !2795)
    #dbg_value(i64 %.sroa.1893.0200.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !2797)
    #dbg_value(i64 %.sroa.1893.0200.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !2799)
    #dbg_value(ptr %i.j, !2586, !DIExpression(), !2797)
    #dbg_value(ptr %i.j, !2602, !DIExpression(), !2801)
    #dbg_value(i64 40, !2610, !DIExpression(), !2803)
    #dbg_value(i64 %i.di, !2587, !DIExpression(), !2806)
    #dbg_value(i64 %i.di, !2627, !DIExpression(), !2807)
    #dbg_value(ptr %i.j, !2618, !DIExpression(), !2809)
    #dbg_value(ptr %i.dl, !2632, !DIExpression(), !2807)
    #dbg_value(ptr %i.dn, !2589, !DIExpression(), !2810)
    #dbg_value(ptr %i.dn, !2599, !DIExpression(), !2799)
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 16, !dbg !2811
  store ptr %.sroa.452.sroa.5.0.copyload.i, ptr %.sroa.5100.0..sroa_idx.i, align 8, !dbg !2811, !noalias !1462
  store ptr %.sroa.15.0202.i, ptr %.sroa.452.sroa.5.0..sroa.452.0..sroa_idx.sroa_idx.i.le, align 8, !dbg !2811, !noalias !1462
  store i64 %.sroa.1893.0200.i, ptr %.sroa.452.sroa.6.0..sroa.452.0..sroa_idx.sroa_idx.i.le, align 8, !dbg !2811, !noalias !1462
  br label %.backedge.i, !dbg !2812

bb.aq:                                            ; preds = %.noexc17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false), !dbg !2813, !noalias !1571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2814, !noalias !1469
  br label %bb.as, !dbg !2815

bb.ar:                                            ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !2814, !noalias !1469
    #dbg_value(ptr %i.j, !1532, !DIExpression(), !2669)
    #dbg_value(ptr %i.j, !1514, !DIExpression(), !2670)
    #dbg_value(ptr %i.j, !2671, !DIExpression(), !2677)
    #dbg_value(ptr %i.j, !2679, !DIExpression(), !2683)
  %i.dr = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !2685, !alias.scope !1466, !noalias !1549, !noundef !26 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 0, !dbg !2685
  br i1 %i.ds, label %._crit_edge.i, label %.lr.ph.i, !dbg !2685

.loopexit:                                        ; preds = %bb.t, %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ap
  %lpad.loopexit18 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.d, %bb.e, %bb.n, %bb.o
  %lpad.loopexit21 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.backedge.i, %bb.ak, %.loopexit.i
  %lpad.loopexit24 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.a
  %lpad.loopexit.split-lp25 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit18, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit24, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp25, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3ast7visitor11HeapVisitorEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.j) #16
          to label %bb.au unwind label %bb.at, !dbg !2817

bb.as:                                            ; preds = %bb.aq, %._crit_edge.i, %bb.al, %bb.ae, %._crit_edge289.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.892.i.i.sroa.11.i), !dbg !2818
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !2818
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3ast7visitor11HeapVisitorEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.j), !dbg !2817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !2817
  ret void, !dbg !2819

bb.at:                                            ; preds = %.loopexit.split-lp
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !dbg !2820
  unreachable, !dbg !2820

bb.au:                                            ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi, !dbg !2820
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtNtCs3roNzt6HBWW_12regex_syntax3ast7visitor5visitINtNtB4_5print6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterEEB6_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !2821 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 13 uses
  %i.b = alloca [48 x i8], align 8                ; 16 uses
    #dbg_value(ptr %0, !2869, !DIExpression(), !2873)
    #dbg_value(ptr %1, !2870, !DIExpression(), !2873)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !2874
  store i64 0, ptr %i.b, align 8, !dbg !2875
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !2875 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !2875
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !2875 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !2875 ; 5 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !2875 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !2875
  store i64 0, ptr %i.d, align 8, !dbg !2875
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8, !dbg !2875
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !2875 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2877), !dbg !2880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
    #dbg_value(ptr poison, !2881, !DIExpression(), !2900)
    #dbg_value(ptr poison, !2881, !DIExpression(), !2960)
    #dbg_value(ptr %0, !2910, !DIExpression(), !2962)
  store ptr %1, ptr %i.a, align 8, !noalias !2963
    #dbg_value(ptr %i.b, !2909, !DIExpression(), !2962)
    #dbg_declare(ptr %i.a, !2911, !DIExpression(), !2966)
    #dbg_value(i64 40, !2967, !DIExpression(), !2971)
    #dbg_value(ptr %i.b, !2985, !DIExpression(), !2990)
    #dbg_value(ptr poison, !2988, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !2992)
    #dbg_value(i64 poison, !2988, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !2992)
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !2993, !alias.scope !2877, !noalias !2994
    #dbg_value(ptr %i.b, !2995, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !3000)
    #dbg_value(ptr poison, !2998, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3002)
    #dbg_value(i64 poison, !2998, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3002)
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8, !dbg !3003, !alias.scope !2877, !noalias !2994
  %i.e = invoke noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3ast5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor9visit_preB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3004

.noexc:                                           ; preds = %bb.a
  br i1 %i.e, label %.loopexit21, label %.lr.ph.i, !dbg !3005

.lr.ph.i:                                         ; preds = %.noexc, %.noexc16
  %.sroa.0.0184.i = phi ptr [ %.sroa.0.0.be.i, %.noexc16 ], [ %0, %.noexc ] ; 5 uses
  %.sroa.0.0.val.i = load i64, ptr %.sroa.0.0184.i, align 8, !dbg !3047, !range !1577, !noundef !26
  %i.f = getelementptr i8, ptr %.sroa.0.0184.i, i64 8, !dbg !3047
end_hunk_0
begin_hunk_1_@_RINvNtNtCs3roNzt6HBWW_12regex_syntax3ast7visitor5visitINtNtB4_5print6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterEEB6_:bb.a

.loopexit.i:                                      ; preds = %_RINvMNtNtCs3roNzt6HBWW_12regex_syntax3ast7visitorNtB3_11HeapVisitor16visit_class_postINtNtB5_5print6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterEEB7_.exit.preheader.i.i.i, %_RINvMNtNtCs3roNzt6HBWW_12regex_syntax3ast7visitorNtB3_11HeapVisitor16visit_class_postINtNtB5_5print6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterEEB7_.exit40.i.i.i, %bb.s, %bb.r, %.lr.ph.i
  %i.bv = invoke noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3ast5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor10visit_postB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0184.i)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !3580

.noexc14:                                         ; preds = %.loopexit.i
    #dbg_value(i1 %i.bv, !3025, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3581)
  br i1 %i.bv, label %.loopexit21, label %.preheader.i, !dbg !3583

bb.t:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.val58.i) ]
    #dbg_value(i64 0, !2934, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3584)
    #dbg_value(ptr %.sroa.0.0.val58.i, !2934, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3584)
    #dbg_value(ptr undef, !2934, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3584)
    #dbg_value(i64 undef, !2934, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3584)
    #dbg_value(ptr undef, !2881, !DIExpression(), !2960)
    #dbg_value(ptr %.sroa.0.0.val58.i, !2884, !DIExpression(), !3585)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val58.i, i64 48, !dbg !3586
  %i.bx = load ptr, ptr %i.bw, align 8, !dbg !3586, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.bx, !2935, !DIExpression(), !3587)
  br label %bb.x, !dbg !3588

bb.u:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.val58.i) ]
    #dbg_value(i64 1, !2934, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3584)
    #dbg_value(ptr %.sroa.0.0.val58.i, !2934, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3584)
    #dbg_value(ptr undef, !2934, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3584)
    #dbg_value(i64 undef, !2934, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3584)
    #dbg_value(ptr undef, !2881, !DIExpression(), !2960)
    #dbg_value(ptr %.sroa.0.0.val58.i, !2886, !DIExpression(), !3589)
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val58.i, i64 88, !dbg !3590
  %i.bz = load ptr, ptr %i.by, align 8, !dbg !3590, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.bz, !2935, !DIExpression(), !3587)
  br label %bb.x, !dbg !3591

bb.v:                                             ; preds = %bb.s
    #dbg_value(ptr poison, !3088, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3592)
    #dbg_value(ptr %.sroa.0.0.val58.i, !3100, !DIExpression(), !3593)
    #dbg_value(ptr %.sroa.0.0.val58.i, !3594, !DIExpression(), !3597)
    #dbg_value(ptr %.sroa.0.0.val58.i, !3599, !DIExpression(), !3602)
    #dbg_value(ptr %.sroa.0.0.val58.i, !3604, !DIExpression(), !3607)
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val58.i, i64 8, !dbg !3609
  %i.cb = load ptr, ptr %i.ca, align 8, !dbg !3609, !noalias !3565, !nonnull !26, !noundef !26 ; 3 uses
    #dbg_value(ptr %.sroa.0.0.val58.i, !3106, !DIExpression(), !3616)
    #dbg_value(ptr %.sroa.0.0.val58.i, !3594, !DIExpression(), !3617)
    #dbg_value(ptr %.sroa.0.0.val58.i, !3599, !DIExpression(), !3619)
    #dbg_value(ptr %.sroa.0.0.val58.i, !3604, !DIExpression(), !3622)
    #dbg_value(ptr %i.cb, !3112, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3113)
    #dbg_value(ptr %i.cb, !3119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3124)
    #dbg_value(ptr %i.cb, !3130, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3132)
    #dbg_value(i64 %i.bs, !3112, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3113)
    #dbg_value(i64 %i.bs, !3119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3124)
    #dbg_value(i64 %i.bs, !3130, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3132)
  %i.cc = add nsw i64 %i.bs, -1, !dbg !3625
    #dbg_value(i64 %i.cc, !3120, !DIExpression(), !3626)
    #dbg_value(i64 %i.cc, !3131, !DIExpression(), !3132)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16, !dbg !3627
    #dbg_value(i64 2, !2934, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3584)
    #dbg_value(ptr %i.cb, !2934, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3584)
    #dbg_value(ptr %i.cd, !2934, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3584)
    #dbg_value(i64 %i.cc, !2934, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3584)
    #dbg_value(ptr undef, !2881, !DIExpression(), !2960)
    #dbg_value(ptr %i.cb, !2935, !DIExpression(), !3587)
  br label %bb.x, !dbg !3628

bb.w:                                             ; preds = %bb.r
    #dbg_value(ptr poison, !3093, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !3629)
    #dbg_value(ptr %.sroa.0.0.val58.i, !3100, !DIExpression(), !3630)
    #dbg_value(ptr %.sroa.0.0.val58.i, !3594, !DIExpression(), !3631)
    #dbg_value(ptr %.sroa.0.0.val58.i, !3599, !DIExpression(), !3634)
    #dbg_value(ptr %.sroa.0.0.val58.i, !3604, !DIExpression(), !3637)
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val58.i, i64 8, !dbg !3640
  %i.cf = load ptr, ptr %i.ce, align 8, !dbg !3640, !noalias !3565, !nonnull !26, !noundef !26 ; 3 uses
    #dbg_value(ptr %.sroa.0.0.val58.i, !3106, !DIExpression(), !3647)
    #dbg_value(ptr %.sroa.0.0.val58.i, !3594, !DIExpression(), !3648)
    #dbg_value(ptr %.sroa.0.0.val58.i, !3599, !DIExpression(), !3650)
    #dbg_value(ptr %.sroa.0.0.val58.i, !3604, !DIExpression(), !3653)
    #dbg_value(ptr %i.cf, !3112, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3138)
    #dbg_value(ptr %i.cf, !3119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3141)
    #dbg_value(ptr %i.cf, !3130, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3144)
    #dbg_value(i64 %i.bo, !3112, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3138)
    #dbg_value(i64 %i.bo, !3119, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3141)
    #dbg_value(i64 %i.bo, !3130, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3144)
  %i.cg = add nsw i64 %i.bo, -1, !dbg !3656
    #dbg_value(i64 %i.cg, !3122, !DIExpression(), !3657)
    #dbg_value(i64 %i.cg, !3131, !DIExpression(), !3144)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16, !dbg !3658
    #dbg_value(i64 3, !2934, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3584)
    #dbg_value(ptr %i.cf, !2934, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3584)
    #dbg_value(ptr %i.ch, !2934, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3584)
    #dbg_value(i64 %i.cg, !2934, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3584)
    #dbg_value(ptr undef, !2881, !DIExpression(), !2960)
    #dbg_value(ptr %i.cf, !2935, !DIExpression(), !3587)
  br label %bb.x, !dbg !3659

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.sroa.0.076.ph101.i = phi i64 [ 0, %bb.t ], [ 1, %bb.u ], [ 2, %bb.v ], [ 3, %bb.w ] ; 2 uses
  %.sroa.7.0.ph99.i = phi ptr [ %.sroa.0.0.val58.i, %bb.t ], [ %.sroa.0.0.val58.i, %bb.u ], [ %i.cb, %bb.v ], [ %i.cf, %bb.w ] ; 2 uses
  %.sroa.9.0.ph97.i = phi ptr [ undef, %bb.t ], [ undef, %bb.u ], [ %i.cd, %bb.v ], [ %i.ch, %bb.w ] ; 2 uses
  %.sroa.11.0.ph95.i = phi i64 [ undef, %bb.t ], [ undef, %bb.u ], [ %i.cc, %bb.v ], [ %i.cg, %bb.w ] ; 2 uses
  %.sroa.015.0.i = phi ptr [ %i.bx, %bb.t ], [ %i.bz, %bb.u ], [ %i.cb, %bb.v ], [ %i.cf, %bb.w ], !dbg !3660 ; 2 uses
    #dbg_value(ptr %.sroa.015.0.i, !2935, !DIExpression(), !3587)
    #dbg_value(ptr %i.b, !3661, !DIExpression(), !3665)
    #dbg_value(ptr %.sroa.0.0184.i, !3664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3665)
    #dbg_value(ptr %.sroa.0.0184.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3667)
    #dbg_value(ptr %.sroa.0.0184.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3669)
    #dbg_value(i64 %.sroa.0.076.ph101.i, !3664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3665)
    #dbg_value(i64 %.sroa.0.076.ph101.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3667)
    #dbg_value(i64 %.sroa.0.076.ph101.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3669)
    #dbg_value(ptr %.sroa.7.0.ph99.i, !3664, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3665)
    #dbg_value(ptr %.sroa.7.0.ph99.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3667)
    #dbg_value(ptr %.sroa.7.0.ph99.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3669)
    #dbg_value(ptr %.sroa.9.0.ph97.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3669)
    #dbg_value(ptr %.sroa.9.0.ph97.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3667)
    #dbg_value(ptr %.sroa.9.0.ph97.i, !3664, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3665)
    #dbg_value(i64 %.sroa.11.0.ph95.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !3669)
    #dbg_value(i64 %.sroa.11.0.ph95.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !3667)
    #dbg_value(i64 %.sroa.11.0.ph95.i, !3664, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !3665)
    #dbg_value(ptr %i.b, !2586, !DIExpression(), !3667)
    #dbg_value(ptr %i.b, !2602, !DIExpression(), !3671)
    #dbg_value(i64 40, !2610, !DIExpression(), !3673)
  %i.ci = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !3676, !alias.scope !3677, !noalias !3680, !noundef !26 ; 3 uses
    #dbg_value(i64 %i.ci, !2587, !DIExpression(), !3682)
    #dbg_value(i64 %i.ci, !2627, !DIExpression(), !3683)
    #dbg_value(ptr %i.b, !2618, !DIExpression(), !3685)
  %i.cj = load i64, ptr %i.b, align 8, !dbg !3686, !range !2192, !alias.scope !3677, !noalias !3680, !noundef !26
  %i.ck = icmp eq i64 %i.ci, %i.cj, !dbg !3687
  br i1 %i.ck, label %bb.y, label %.backedge.i, !dbg !3687

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBQ_7visitor5FrameEE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #17
          to label %.backedge.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !3688

.backedge.i:                                      ; preds = %bb.ag, %bb.y, %bb.af, %.thread.i, %bb.x
  %.sink295.i = phi i64 [ %i.ci, %bb.y ], [ %i.cs, %.thread.i ], [ %.pre.i, %bb.af ], [ %i.ci, %bb.x ], [ %.pre.i, %bb.ag ] ; 2 uses
  %.sroa.0.0184.sink.i = phi ptr [ %.sroa.0.0184.i, %bb.y ], [ %.sroa.038.0.copyload.i, %.thread.i ], [ %.sroa.038.0.copyload.i, %bb.af ], [ %.sroa.0.0184.i, %bb.x ], [ %.sroa.038.0.copyload.i, %bb.ag ]
  %.sroa.0.076.ph101.sink.i = phi i64 [ %.sroa.0.076.ph101.i, %bb.y ], [ 2, %.thread.i ], [ 3, %bb.af ], [ %.sroa.0.076.ph101.i, %bb.x ], [ 3, %bb.ag ]
  %.sroa.7.0.ph99.sink.i = phi ptr [ %.sroa.7.0.ph99.i, %bb.y ], [ %.sroa.439.sroa.5.0.copyload.i, %.thread.i ], [ %.sroa.439.sroa.5.0.copyload.i, %bb.af ], [ %.sroa.7.0.ph99.i, %bb.x ], [ %.sroa.439.sroa.5.0.copyload.i, %bb.ag ]
  %.sroa.9.0.ph97.sink.i = phi ptr [ %.sroa.9.0.ph97.i, %bb.y ], [ %.sroa.15.0133240.i, %.thread.i ], [ %.sroa.15.0133.i, %bb.af ], [ %.sroa.9.0.ph97.i, %bb.x ], [ %.sroa.15.0133.i, %bb.ag ]
  %.sroa.11.0.ph95.sink.i = phi i64 [ %.sroa.11.0.ph95.i, %bb.y ], [ %.sroa.18.0131239.i, %.thread.i ], [ %.sroa.18.0131.i, %bb.af ], [ %.sroa.11.0.ph95.i, %bb.x ], [ %.sroa.18.0131.i, %bb.ag ]
  %.sroa.0.0.be.i = phi ptr [ %.sroa.015.0.i, %bb.y ], [ %.sroa.439.sroa.5.0.copyload.i, %.thread.i ], [ %.sroa.439.sroa.5.0.copyload.i, %bb.af ], [ %.sroa.015.0.i, %bb.x ], [ %.sroa.439.sroa.5.0.copyload.i, %bb.ag ] ; 2 uses
  %i.cl = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !3689, !alias.scope !2877, !noalias !2994, !nonnull !26, !noundef !26
  %i.cm = getelementptr inbounds nuw [40 x i8], ptr %i.cl, i64 %.sink295.i, !dbg !3696 ; 5 uses
  store ptr %.sroa.0.0184.sink.i, ptr %i.cm, align 8, !dbg !3698
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8, !dbg !3698
  store i64 %.sroa.0.076.ph101.sink.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !3698
  %.sroa.5.0..sroa_idx62.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 16, !dbg !3698
  store ptr %.sroa.7.0.ph99.sink.i, ptr %.sroa.5.0..sroa_idx62.i, align 8, !dbg !3698
  %.sroa.6.0..sroa_idx63.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 24, !dbg !3698
  store ptr %.sroa.9.0.ph97.sink.i, ptr %.sroa.6.0..sroa_idx63.i, align 8, !dbg !3698
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx63.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 32, !dbg !3698
  store i64 %.sroa.11.0.ph95.sink.i, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx63.sroa_idx.i, align 8, !dbg !3698
  %storemerge.i = add i64 %.sink295.i, 1, !dbg !3700
  store i64 %storemerge.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !3700, !alias.scope !2877, !noalias !2994
    #dbg_value(ptr %.sroa.0.0.be.i, !2910, !DIExpression(), !2962)
  %i.cn = invoke noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3ast5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor9visit_preB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.be.i)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !3004

.noexc16:                                         ; preds = %.backedge.i
    #dbg_value(i1 %i.cn, !3025, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3701)
  br i1 %i.cn, label %.loopexit21, label %.lr.ph.i, !dbg !3005

.preheader.i:                                     ; preds = %.noexc14, %.noexc18
    #dbg_value(ptr %i.b, !2983, !DIExpression(), !3702)
    #dbg_value(ptr %i.b, !2979, !DIExpression(), !3703)
    #dbg_value(ptr %i.b, !3704, !DIExpression(), !3707)
    #dbg_value(ptr %i.b, !3709, !DIExpression(), !3712)
  %i.co = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !3714, !alias.scope !2877, !noalias !2994, !noundef !26 ; 3 uses
  %i.cp = icmp eq i64 %i.co, 0, !dbg !3714
  br i1 %i.cp, label %bb.z, label %bb.aa, !dbg !3714

bb.z:                                             ; preds = %.preheader.i
  %i.cq = load ptr, ptr %i.a, align 8, !dbg !3715, !noalias !2963, !nonnull !26, !align !3716, !noundef !26
  %i.cr = invoke noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3ast5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor6finishB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cq)
          to label %.loopexit21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !3717

bb.aa:                                            ; preds = %.preheader.i
  %i.cs = add nsw i64 %i.co, -1, !dbg !3718       ; 4 uses
  store i64 %i.cs, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !3718, !alias.scope !2877, !noalias !2994
  %i.ct = load i64, ptr %i.b, align 8, !dbg !3719, !range !2192, !alias.scope !2877, !noalias !2994, !noundef !26
  %i.cu = icmp samesign ult i64 %i.cs, %i.ct, !dbg !3720
    #dbg_value(i1 true, !3721, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3724)
  call void @llvm.assume(i1 %i.cu), !dbg !3726
  %i.cv = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !3727, !alias.scope !2877, !noalias !2994, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.cv, !3736, !DIExpression(), !3740)
    #dbg_value(i64 %i.cs, !3739, !DIExpression(), !3740)
  %i.cw = icmp ult i64 %i.co, 230584300921369397, !dbg !3742
  call void @llvm.assume(i1 %i.cw), !dbg !3743
  %i.cx = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %i.cs, !dbg !3744 ; 4 uses
    #dbg_value(ptr %i.cx, !3745, !DIExpression(), !3748)
  %.sroa.038.0.copyload.i = load ptr, ptr %i.cx, align 8, !dbg !3750, !nonnull !26, !noundef !26 ; 4 uses
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8, !dbg !3750
  %.sroa.439.sroa.0.0.copyload.i = load i64, ptr %.sroa.439.0..sroa_idx.i, align 8, !dbg !3750
  %.sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 24, !dbg !3750
  %.sroa.439.sroa.5.0.copyload.i = load ptr, ptr %.sroa.439.sroa.5.0..sroa.439.0..sroa_idx.sroa_idx.i, align 8, !dbg !3750 ; 10 uses
  %.sroa.439.sroa.6.0..sroa.439.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 32, !dbg !3750
  %.sroa.439.sroa.6.0.copyload.i = load i64, ptr %.sroa.439.sroa.6.0..sroa.439.0..sroa_idx.sroa_idx.i, align 8, !dbg !3750 ; 4 uses
    #dbg_value(ptr %.sroa.038.0.copyload.i, !2941, !DIExpression(), !3751)
    #dbg_value(i64 %.sroa.439.sroa.0.0.copyload.i, !2942, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3751)
    #dbg_value(i64 %.sroa.439.sroa.0.0.copyload.i, !2737, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3752)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2942, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3751)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2737, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3752)
    #dbg_value(i64 %.sroa.439.sroa.6.0.copyload.i, !2942, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3751)
    #dbg_value(i64 %.sroa.439.sroa.6.0.copyload.i, !2737, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3752)
    #dbg_value(ptr %i.b, !2743, !DIExpression(), !3752)
    #dbg_value(i64 1, !2750, !DIExpression(), !3754)
    #dbg_value(i64 1, !2756, !DIExpression(), !3756)
    #dbg_value(i64 1, !2766, !DIExpression(), !3758)
    #dbg_value(i64 1, !2750, !DIExpression(), !3760)
    #dbg_value(i64 1, !2756, !DIExpression(), !3762)
    #dbg_value(i64 1, !2766, !DIExpression(), !3764)
  switch i64 %.sroa.439.sroa.0.0.copyload.i, label %default.unreachable19.i.i [
    i64 0, label %bb.ad
    i64 1, label %bb.ad
    i64 2, label %bb.ab
    i64 3, label %bb.ac
  ], !dbg !3766

default.unreachable19.i.i:                        ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
    #dbg_value(ptr poison, !2744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3767)
    #dbg_value(ptr poison, !2753, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3754)
    #dbg_value(ptr poison, !2759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3756)
    #dbg_value(ptr poison, !2769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3758)
    #dbg_value(i64 %.sroa.439.sroa.6.0.copyload.i, !2744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3767)
    #dbg_value(i64 %.sroa.439.sroa.6.0.copyload.i, !2753, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3754)
    #dbg_value(i64 %.sroa.439.sroa.6.0.copyload.i, !2759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3756)
    #dbg_value(i64 %.sroa.439.sroa.6.0.copyload.i, !2769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3758)
  %i.cy = icmp eq i64 %.sroa.439.sroa.6.0.copyload.i, 0, !dbg !3768
  br i1 %i.cy, label %bb.ad, label %.thread.i, !dbg !3768

bb.ac:                                            ; preds = %bb.aa
    #dbg_value(ptr poison, !2746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3769)
    #dbg_value(ptr poison, !2753, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3760)
    #dbg_value(ptr poison, !2759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3762)
    #dbg_value(ptr poison, !2769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3764)
    #dbg_value(i64 %.sroa.439.sroa.6.0.copyload.i, !2746, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3769)
    #dbg_value(i64 %.sroa.439.sroa.6.0.copyload.i, !2753, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3760)
    #dbg_value(i64 %.sroa.439.sroa.6.0.copyload.i, !2759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3762)
    #dbg_value(i64 %.sroa.439.sroa.6.0.copyload.i, !2769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3764)
  %i.cz = icmp eq i64 %.sroa.439.sroa.6.0.copyload.i, 0, !dbg !3770
  br i1 %i.cz, label %bb.ad, label %bb.ae, !dbg !3770

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.aa
  %i.da = invoke noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3ast5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor10visit_postB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.038.0.copyload.i)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit, !dbg !3771

.noexc18:                                         ; preds = %bb.ad
    #dbg_value(i1 %i.da, !3025, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3772)
  br i1 %i.da, label %.loopexit21, label %.preheader.i, !dbg !3774

.thread.i:                                        ; preds = %bb.ab
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3767)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2753, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3754)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3756)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3758)
    #dbg_value(i64 %.sroa.439.sroa.6.0.copyload.i, !2770, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3758)
    #dbg_value(i64 2, !2946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3775)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3775)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2946, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !3775)
    #dbg_value(i64 %.sroa.439.sroa.6.0.copyload.i, !2946, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64), !3775)
    #dbg_value(i8 0, !3025, !DIExpression(), !3776)
    #dbg_value(ptr undef, !2881, !DIExpression(), !2900)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.439.sroa.5.0.copyload.i) ]
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2910, !DIExpression(), !2962)
  %.sroa.18.0131239.i = add i64 %.sroa.439.sroa.6.0.copyload.i, -1, !dbg !3778
  %.sroa.15.0133240.i = getelementptr inbounds nuw i8, ptr %.sroa.439.sroa.5.0.copyload.i, i64 16, !dbg !3781
    #dbg_value(ptr %i.b, !3661, !DIExpression(), !3783)
    #dbg_value(ptr %.sroa.038.0.copyload.i, !3664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3783)
    #dbg_value(ptr %.sroa.038.0.copyload.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3785)
    #dbg_value(ptr %.sroa.038.0.copyload.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3787)
    #dbg_value(i64 %.sroa.439.sroa.0.0.copyload.i, !3664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3783)
    #dbg_value(i64 %.sroa.439.sroa.0.0.copyload.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3785)
    #dbg_value(i64 %.sroa.439.sroa.0.0.copyload.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3787)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !3664, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3783)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3785)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3787)
    #dbg_value(ptr %.sroa.15.0133240.i, !3664, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3783)
    #dbg_value(ptr %.sroa.15.0133240.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3785)
    #dbg_value(ptr %.sroa.15.0133240.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3787)
    #dbg_value(i64 %.sroa.18.0131239.i, !3664, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !3783)
    #dbg_value(i64 %.sroa.18.0131239.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !3785)
    #dbg_value(i64 %.sroa.18.0131239.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !3787)
    #dbg_value(ptr %i.b, !2586, !DIExpression(), !3785)
    #dbg_value(ptr %i.b, !2602, !DIExpression(), !3789)
    #dbg_value(i64 40, !2610, !DIExpression(), !3791)
    #dbg_value(i64 %i.cs, !2587, !DIExpression(), !3794)
    #dbg_value(i64 %i.cs, !2627, !DIExpression(), !3795)
    #dbg_value(ptr %i.b, !2618, !DIExpression(), !3797)
  br label %.backedge.i, !dbg !3798

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.439.sroa.5.0.copyload.i) ]
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3769)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2753, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3760)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3762)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3764)
    #dbg_value(i64 %.sroa.439.sroa.6.0.copyload.i, !2770, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !3764)
    #dbg_value(i64 3, !2946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3775)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3775)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2946, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !3775)
    #dbg_value(i64 %.sroa.439.sroa.6.0.copyload.i, !2946, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64), !3775)
  %i.db = invoke noundef zeroext i1 @_RNvXs1_NtNtCs3roNzt6HBWW_12regex_syntax3ast5printINtB5_6WriterQNtNtCsj6eKBz9Db1c_4core3fmt9FormatterENtNtB7_7visitor7Visitor20visit_alternation_inB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !3799

.noexc19:                                         ; preds = %bb.ae
    #dbg_value(i1 %i.db, !3025, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !3800)
  br i1 %i.db, label %.loopexit21, label %bb.af, !dbg !3802

bb.af:                                            ; preds = %.noexc19
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !3803, !alias.scope !3804, !noalias !3807 ; 3 uses
  %.pre232.i = load i64, ptr %i.b, align 8, !dbg !3809, !range !2192, !alias.scope !3804, !noalias !3807
  %i.dc = icmp eq i64 %.pre.i, %.pre232.i, !dbg !3798
  %.sroa.18.0131.i = add i64 %.sroa.439.sroa.6.0.copyload.i, -1, !dbg !3778 ; 2 uses
  %.sroa.15.0133.i = getelementptr inbounds nuw i8, ptr %.sroa.439.sroa.5.0.copyload.i, i64 16, !dbg !3781 ; 2 uses
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2910, !DIExpression(), !2962)
    #dbg_value(ptr %i.b, !3661, !DIExpression(), !3783)
    #dbg_value(ptr %.sroa.038.0.copyload.i, !3664, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3783)
    #dbg_value(ptr %.sroa.038.0.copyload.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3785)
    #dbg_value(ptr %.sroa.038.0.copyload.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !3787)
    #dbg_value(i64 %.sroa.439.sroa.0.0.copyload.i, !3664, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3783)
    #dbg_value(i64 %.sroa.439.sroa.0.0.copyload.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3785)
    #dbg_value(i64 %.sroa.439.sroa.0.0.copyload.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !3787)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !3664, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3783)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3785)
    #dbg_value(ptr %.sroa.439.sroa.5.0.copyload.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !3787)
    #dbg_value(ptr %.sroa.15.0133.i, !3664, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3783)
    #dbg_value(ptr %.sroa.15.0133.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3785)
    #dbg_value(ptr %.sroa.15.0133.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !3787)
    #dbg_value(i64 %.sroa.18.0131.i, !3664, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !3783)
    #dbg_value(i64 %.sroa.18.0131.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !3785)
    #dbg_value(i64 %.sroa.18.0131.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !3787)
    #dbg_value(ptr %i.b, !2586, !DIExpression(), !3785)
    #dbg_value(ptr %i.b, !2602, !DIExpression(), !3789)
    #dbg_value(i64 40, !2610, !DIExpression(), !3791)
    #dbg_value(i64 %.pre.i, !2587, !DIExpression(), !3794)
    #dbg_value(i64 %.pre.i, !2627, !DIExpression(), !3795)
    #dbg_value(ptr %i.b, !2618, !DIExpression(), !3797)
  br i1 %i.dc, label %bb.ag, label %.backedge.i, !dbg !3798

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBQ_7visitor5FrameEE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #17
          to label %.backedge.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !3810

.loopexit:                                        ; preds = %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ad
  %lpad.loopexit22 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.d, %bb.k, %bb.l, %bb.p, %bb.q
  %lpad.loopexit26 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ag, %bb.ae, %.backedge.i, %bb.y, %.loopexit.i
  %lpad.loopexit30 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %bb.a
  %lpad.loopexit.split-lp31 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit22, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit26, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit30, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp31, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3ast7visitor11HeapVisitorEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b) #16
          to label %bb.ai unwind label %bb.ah, !dbg !3811

.loopexit21:                                      ; preds = %.noexc19, %.noexc16, %.noexc14, %.noexc12, %.noexc10, %.noexc8, %.noexc18, %.noexc11, %.noexc, %bb.z
  %.sroa.04.0.i = phi i1 [ true, %.noexc12 ], [ %i.cr, %bb.z ], [ true, %.noexc ], [ true, %.noexc18 ], [ true, %.noexc11 ], [ true, %.noexc8 ], [ true, %.noexc10 ], [ true, %.noexc14 ], [ true, %.noexc16 ], [ true, %.noexc19 ], !dbg !2962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3812
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3ast7visitor11HeapVisitorEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b), !dbg !3811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3811
  ret i1 %.sroa.04.0.i, !dbg !3813

bb.ah:                                            ; preds = %.loopexit.split-lp
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15, !dbg !3814
  unreachable, !dbg !3814

bb.ai:                                            ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi, !dbg !3814
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs3roNzt6HBWW_12regex_syntax3ast7visitor5visitNtNtNtB6_3hir9translate11TranslatorIEB6_(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3815 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 9 uses
  %i.b = alloca [80 x i8], align 8                ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 9 uses
  %i.d = alloca [80 x i8], align 8                ; 9 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtCs3roNzt6HBWW_12regex_syntax3ast7visitor5visitNtNtNtB6_3hir9translate11TranslatorIEB6_:bb.a
    #dbg_value(i64 undef, !4300, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5009)
    #dbg_value(ptr undef, !4380, !DIExpression(), !4401)
    #dbg_value(ptr %.sroa.0.0.val77.i, !4383, !DIExpression(), !5010)
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val77.i, i64 48, !dbg !5011
  %i.cq = load ptr, ptr %i.cp, align 8, !dbg !5011, !noalias !4410, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.cq, !4301, !DIExpression(), !5012)
  br label %bb.ak, !dbg !5013

bb.ah:                                            ; preds = %.lr.ph271.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.val77.i) ]
    #dbg_value(i64 1, !4300, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5009)
    #dbg_value(ptr %.sroa.0.0.val77.i, !4300, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5009)
    #dbg_value(ptr undef, !4300, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5009)
    #dbg_value(i64 undef, !4300, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5009)
    #dbg_value(ptr undef, !4380, !DIExpression(), !4401)
    #dbg_value(ptr %.sroa.0.0.val77.i, !4385, !DIExpression(), !5014)
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val77.i, i64 88, !dbg !5015
  %i.cs = load ptr, ptr %i.cr, align 8, !dbg !5015, !noalias !4410, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.cs, !4301, !DIExpression(), !5012)
  br label %bb.ak, !dbg !5016

bb.ai:                                            ; preds = %bb.ae
    #dbg_value(ptr poison, !4275, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5017)
    #dbg_value(ptr %.sroa.0.0.val77.i, !4519, !DIExpression(), !5018)
    #dbg_value(ptr %.sroa.0.0.val77.i, !5019, !DIExpression(), !5022)
    #dbg_value(ptr %.sroa.0.0.val77.i, !5024, !DIExpression(), !5027)
    #dbg_value(ptr %.sroa.0.0.val77.i, !5029, !DIExpression(), !5032)
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val77.i, i64 8, !dbg !5034
  %i.cu = load ptr, ptr %i.ct, align 8, !dbg !5034, !noalias !4986, !nonnull !26, !noundef !26 ; 3 uses
    #dbg_value(ptr %.sroa.0.0.val77.i, !4525, !DIExpression(), !5041)
    #dbg_value(ptr %.sroa.0.0.val77.i, !5019, !DIExpression(), !5042)
    #dbg_value(ptr %.sroa.0.0.val77.i, !5024, !DIExpression(), !5044)
    #dbg_value(ptr %.sroa.0.0.val77.i, !5029, !DIExpression(), !5047)
    #dbg_value(ptr %i.cu, !4531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4532)
    #dbg_value(ptr %i.cu, !4538, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4543)
    #dbg_value(ptr %i.cu, !4549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4551)
    #dbg_value(i64 %i.ck, !4531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4532)
    #dbg_value(i64 %i.ck, !4538, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4543)
    #dbg_value(i64 %i.ck, !4549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4551)
  %i.cv = add nsw i64 %i.ck, -1, !dbg !5050
    #dbg_value(i64 %i.cv, !4539, !DIExpression(), !5051)
    #dbg_value(i64 %i.cv, !4550, !DIExpression(), !4551)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16, !dbg !5052
    #dbg_value(i64 2, !4300, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5009)
    #dbg_value(ptr %i.cu, !4300, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5009)
    #dbg_value(ptr %i.cw, !4300, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5009)
    #dbg_value(i64 %i.cv, !4300, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5009)
    #dbg_value(ptr undef, !4380, !DIExpression(), !4401)
    #dbg_value(ptr %i.cu, !4301, !DIExpression(), !5012)
  br label %bb.ak, !dbg !5053

bb.aj:                                            ; preds = %bb.ad
    #dbg_value(ptr poison, !4280, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !5054)
    #dbg_value(ptr %.sroa.0.0.val77.i, !4519, !DIExpression(), !5055)
    #dbg_value(ptr %.sroa.0.0.val77.i, !5019, !DIExpression(), !5056)
    #dbg_value(ptr %.sroa.0.0.val77.i, !5024, !DIExpression(), !5059)
    #dbg_value(ptr %.sroa.0.0.val77.i, !5029, !DIExpression(), !5062)
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.val77.i, i64 8, !dbg !5065
  %i.cy = load ptr, ptr %i.cx, align 8, !dbg !5065, !noalias !4986, !nonnull !26, !noundef !26 ; 3 uses
    #dbg_value(ptr %.sroa.0.0.val77.i, !4525, !DIExpression(), !5072)
    #dbg_value(ptr %.sroa.0.0.val77.i, !5019, !DIExpression(), !5073)
    #dbg_value(ptr %.sroa.0.0.val77.i, !5024, !DIExpression(), !5075)
    #dbg_value(ptr %.sroa.0.0.val77.i, !5029, !DIExpression(), !5078)
    #dbg_value(ptr %i.cy, !4531, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4557)
    #dbg_value(ptr %i.cy, !4538, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4560)
    #dbg_value(ptr %i.cy, !4549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4563)
    #dbg_value(i64 %i.cg, !4531, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4557)
    #dbg_value(i64 %i.cg, !4538, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4560)
    #dbg_value(i64 %i.cg, !4549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4563)
  %i.cz = add nsw i64 %i.cg, -1, !dbg !5081
    #dbg_value(i64 %i.cz, !4541, !DIExpression(), !5082)
    #dbg_value(i64 %i.cz, !4550, !DIExpression(), !4563)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16, !dbg !5083
    #dbg_value(i64 3, !4300, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5009)
    #dbg_value(ptr %i.cy, !4300, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5009)
    #dbg_value(ptr %i.da, !4300, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5009)
    #dbg_value(i64 %i.cz, !4300, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5009)
    #dbg_value(ptr undef, !4380, !DIExpression(), !4401)
    #dbg_value(ptr %i.cy, !4301, !DIExpression(), !5012)
  br label %bb.ak, !dbg !5084

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.sroa.780.0.ph162.i = phi i64 [ 0, %bb.ag ], [ 1, %bb.ah ], [ 2, %bb.ai ], [ 3, %bb.aj ] ; 2 uses
  %.sroa.11.0.ph160.i = phi ptr [ %.sroa.0.0.val77.i, %bb.ag ], [ %.sroa.0.0.val77.i, %bb.ah ], [ %i.cu, %bb.ai ], [ %i.cy, %bb.aj ] ; 2 uses
  %.sroa.14.0.ph158.i = phi ptr [ undef, %bb.ag ], [ undef, %bb.ah ], [ %i.cw, %bb.ai ], [ %i.da, %bb.aj ] ; 2 uses
  %.sroa.17.0.ph156.i = phi i64 [ undef, %bb.ag ], [ undef, %bb.ah ], [ %i.cv, %bb.ai ], [ %i.cz, %bb.aj ] ; 2 uses
  %.sroa.020.0.i = phi ptr [ %i.cq, %bb.ag ], [ %i.cs, %bb.ah ], [ %i.cu, %bb.ai ], [ %i.cy, %bb.aj ], !dbg !5085 ; 2 uses
    #dbg_value(ptr %.sroa.020.0.i, !4301, !DIExpression(), !5012)
    #dbg_value(ptr %i.l, !5086, !DIExpression(), !5090)
    #dbg_value(ptr %.sroa.0.0269.i, !5089, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5090)
    #dbg_value(ptr %.sroa.0.0269.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5092)
    #dbg_value(ptr %.sroa.0.0269.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5094)
    #dbg_value(i64 %.sroa.780.0.ph162.i, !5089, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5090)
    #dbg_value(i64 %.sroa.780.0.ph162.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5092)
    #dbg_value(i64 %.sroa.780.0.ph162.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5094)
    #dbg_value(ptr %.sroa.11.0.ph160.i, !5089, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5090)
    #dbg_value(ptr %.sroa.11.0.ph160.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5092)
    #dbg_value(ptr %.sroa.11.0.ph160.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5094)
    #dbg_value(ptr %.sroa.14.0.ph158.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5094)
    #dbg_value(ptr %.sroa.14.0.ph158.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5092)
    #dbg_value(ptr %.sroa.14.0.ph158.i, !5089, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5090)
    #dbg_value(i64 %.sroa.17.0.ph156.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5094)
    #dbg_value(i64 %.sroa.17.0.ph156.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5092)
    #dbg_value(i64 %.sroa.17.0.ph156.i, !5089, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5090)
    #dbg_value(ptr %i.l, !2586, !DIExpression(), !5092)
    #dbg_value(ptr %i.l, !2602, !DIExpression(), !5096)
    #dbg_value(i64 40, !2610, !DIExpression(), !5098)
  %i.db = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !5101, !alias.scope !5102, !noalias !5105, !noundef !26 ; 3 uses
    #dbg_value(i64 %i.db, !2587, !DIExpression(), !5107)
    #dbg_value(i64 %i.db, !2627, !DIExpression(), !5108)
    #dbg_value(ptr %i.l, !2618, !DIExpression(), !5110)
  %i.dc = load i64, ptr %i.l, align 8, !dbg !5111, !range !2192, !alias.scope !5102, !noalias !5105, !noundef !26
  %i.dd = icmp eq i64 %i.db, %i.dc, !dbg !5112
  br i1 %i.dd, label %bb.al, label %.backedge.i, !dbg !5112

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBQ_7visitor5FrameEE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l) #17
          to label %.backedge.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !5113

.backedge.i:                                      ; preds = %bb.au, %bb.al, %bb.at, %.thread.i, %bb.ak
  %.sink445.i = phi i64 [ %i.db, %bb.al ], [ %i.dl, %.thread.i ], [ %.pre.i, %bb.at ], [ %i.db, %bb.ak ], [ %.pre.i, %bb.au ] ; 2 uses
  %.sroa.0.0269.sink.i = phi ptr [ %.sroa.0.0269.i, %bb.al ], [ %.sroa.051.0.copyload.i, %.thread.i ], [ %.sroa.051.0.copyload.i, %bb.at ], [ %.sroa.0.0269.i, %bb.ak ], [ %.sroa.051.0.copyload.i, %bb.au ]
  %.sroa.780.0.ph162.sink.i = phi i64 [ %.sroa.780.0.ph162.i, %bb.al ], [ 2, %.thread.i ], [ 3, %bb.at ], [ %.sroa.780.0.ph162.i, %bb.ak ], [ 3, %bb.au ]
  %.sroa.11.0.ph160.sink.i = phi ptr [ %.sroa.11.0.ph160.i, %bb.al ], [ %.sroa.452.sroa.5.0.copyload.i, %.thread.i ], [ %.sroa.452.sroa.5.0.copyload.i, %bb.at ], [ %.sroa.11.0.ph160.i, %bb.ak ], [ %.sroa.452.sroa.5.0.copyload.i, %bb.au ]
  %.sroa.14.0.ph158.sink.i = phi ptr [ %.sroa.14.0.ph158.i, %bb.al ], [ %.sroa.15.0194360.i, %.thread.i ], [ %.sroa.15.0194.i, %bb.at ], [ %.sroa.14.0.ph158.i, %bb.ak ], [ %.sroa.15.0194.i, %bb.au ]
  %.sroa.17.0.ph156.sink.i = phi i64 [ %.sroa.17.0.ph156.i, %bb.al ], [ %.sroa.1893.0192359.i, %.thread.i ], [ %.sroa.1893.0192.i, %bb.at ], [ %.sroa.17.0.ph156.i, %bb.ak ], [ %.sroa.1893.0192.i, %bb.au ]
  %.sroa.0.0.be.i = phi ptr [ %.sroa.020.0.i, %bb.al ], [ %.sroa.452.sroa.5.0.copyload.i, %.thread.i ], [ %.sroa.452.sroa.5.0.copyload.i, %bb.at ], [ %.sroa.020.0.i, %bb.ak ], [ %.sroa.452.sroa.5.0.copyload.i, %bb.au ] ; 2 uses
  %i.de = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !5114, !alias.scope !4414, !noalias !4489, !nonnull !26, !noundef !26
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %i.de, i64 %.sink445.i, !dbg !5121 ; 5 uses
  store ptr %.sroa.0.0269.sink.i, ptr %i.df, align 8, !dbg !5123, !noalias !4410
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.df, i64 8, !dbg !5123
  store i64 %.sroa.780.0.ph162.sink.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !5123, !noalias !4410
  %.sroa.584.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.df, i64 16, !dbg !5123
  store ptr %.sroa.11.0.ph160.sink.i, ptr %.sroa.584.0..sroa_idx.i, align 8, !dbg !5123, !noalias !4410
  %.sroa.6.0..sroa_idx85.i = getelementptr inbounds nuw i8, ptr %i.df, i64 24, !dbg !5123
  store ptr %.sroa.14.0.ph158.sink.i, ptr %.sroa.6.0..sroa_idx85.i, align 8, !dbg !5123, !noalias !4410
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx85.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.df, i64 32, !dbg !5123
  store i64 %.sroa.17.0.ph156.sink.i, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx85.sroa_idx.i, align 8, !dbg !5123, !noalias !4410
  %i.dg = add i64 %.sink445.i, 1, !dbg !5125
  store i64 %i.dg, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !5125, !alias.scope !4414, !noalias !4489
    #dbg_value(ptr %.sroa.0.0.be.i, !4290, !DIExpression(), !4444)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !4501, !noalias !4502
  invoke void @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorINtNtNtB9_3ast7visitor7Visitor9visit_pre(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.0.0.be.i)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !4503

.noexc17:                                         ; preds = %.backedge.i
  %i.dh = load i64, ptr %i.k, align 8, !dbg !4504, !range !1568, !noalias !4502, !noundef !26
  %.not.i = icmp eq i64 %i.dh, -1, !dbg !4504
  br i1 %.not.i, label %.lr.ph271.i, label %._crit_edge272.i, !dbg !4505

bb.am:                                            ; preds = %.noexc15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 80, i1 false), !dbg !5126, !noalias !4507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !5127, !noalias !4502
  br label %bb.ax, !dbg !4509

bb.an:                                            ; preds = %.noexc15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !5127, !noalias !4502
    #dbg_value(ptr %i.l, !4482, !DIExpression(), !5128)
    #dbg_value(ptr %i.l, !4478, !DIExpression(), !5129)
    #dbg_value(ptr %i.l, !5130, !DIExpression(), !5133)
    #dbg_value(ptr %i.l, !5135, !DIExpression(), !5138)
  %i.di = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !5140, !alias.scope !4414, !noalias !4489, !noundef !26 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0, !dbg !5140
  br i1 %i.dj, label %._crit_edge.i, label %.lr.ph.i, !dbg !5140

._crit_edge.i:                                    ; preds = %bb.an, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !5141, !noalias !4502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !5141, !noalias !5142
  invoke void @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorINtNtNtB9_3ast7visitor7Visitor6finish(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5143

.noexc18:                                         ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !5144, !noalias !4502
  br label %bb.ax, !dbg !4509

.lr.ph.i:                                         ; preds = %bb.an, %bb.aw
  %i.dk = phi i64 [ %i.dw, %bb.aw ], [ %i.di, %bb.an ] ; 2 uses
  %i.dl = add nsw i64 %i.dk, -1, !dbg !5145       ; 4 uses
  store i64 %i.dl, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !5145, !alias.scope !4414, !noalias !4489
  %i.dm = load i64, ptr %i.l, align 8, !dbg !5146, !range !2192, !alias.scope !4414, !noalias !4489, !noundef !26
  %i.dn = icmp samesign ult i64 %i.dl, %i.dm, !dbg !5147
    #dbg_value(i1 true, !5148, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5151)
  call void @llvm.assume(i1 %i.dn), !dbg !5153
  %i.do = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !5154, !alias.scope !4414, !noalias !4489, !nonnull !26, !noundef !26
    #dbg_value(ptr %i.do, !5160, !DIExpression(), !5164)
    #dbg_value(i64 %i.dl, !5163, !DIExpression(), !5164)
  %i.dp = icmp samesign ult i64 %i.dk, 230584300921369397, !dbg !5166
  call void @llvm.assume(i1 %i.dp), !dbg !5167
  %i.dq = getelementptr inbounds nuw [40 x i8], ptr %i.do, i64 %i.dl, !dbg !5168 ; 4 uses
    #dbg_value(ptr %i.dq, !5169, !DIExpression(), !5172)
  %.sroa.051.0.copyload.i = load ptr, ptr %i.dq, align 8, !dbg !5174, !noalias !4410, !nonnull !26, !noundef !26 ; 4 uses
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 8, !dbg !5174
  %.sroa.452.sroa.0.0.copyload.i = load i64, ptr %.sroa.452.0..sroa_idx.i, align 8, !dbg !5174, !noalias !4410
  %.sroa.452.sroa.5.0..sroa.452.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 24, !dbg !5174
  %.sroa.452.sroa.5.0.copyload.i = load ptr, ptr %.sroa.452.sroa.5.0..sroa.452.0..sroa_idx.sroa_idx.i, align 8, !dbg !5174, !noalias !4410 ; 10 uses
  %.sroa.452.sroa.6.0..sroa.452.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 32, !dbg !5174
  %.sroa.452.sroa.6.0.copyload.i = load i64, ptr %.sroa.452.sroa.6.0..sroa.452.0..sroa_idx.sroa_idx.i, align 8, !dbg !5174, !noalias !4410 ; 4 uses
    #dbg_value(ptr %.sroa.051.0.copyload.i, !4307, !DIExpression(), !5175)
    #dbg_value(i64 %.sroa.452.sroa.0.0.copyload.i, !4309, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5175)
    #dbg_value(i64 %.sroa.452.sroa.0.0.copyload.i, !2737, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5176)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !4309, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5175)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !2737, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5176)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !4309, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5175)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2737, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5176)
    #dbg_value(ptr %i.l, !2743, !DIExpression(), !5176)
    #dbg_value(i64 1, !2750, !DIExpression(), !5178)
    #dbg_value(i64 1, !2756, !DIExpression(), !5180)
    #dbg_value(i64 1, !2766, !DIExpression(), !5182)
    #dbg_value(i64 1, !2750, !DIExpression(), !5184)
    #dbg_value(i64 1, !2756, !DIExpression(), !5186)
    #dbg_value(i64 1, !2766, !DIExpression(), !5188)
  switch i64 %.sroa.452.sroa.0.0.copyload.i, label %default.unreachable19.i.i [
    i64 0, label %bb.aq
    i64 1, label %bb.aq
    i64 2, label %bb.ao
    i64 3, label %bb.ap
  ], !dbg !5190

default.unreachable19.i.i:                        ; preds = %.lr.ph.i
  unreachable

bb.ao:                                            ; preds = %.lr.ph.i
    #dbg_value(ptr poison, !2744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5191)
    #dbg_value(ptr poison, !2753, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5178)
    #dbg_value(ptr poison, !2759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5180)
    #dbg_value(ptr poison, !2769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5182)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5191)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2753, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5178)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5180)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5182)
  %i.dr = icmp eq i64 %.sroa.452.sroa.6.0.copyload.i, 0, !dbg !5192
  br i1 %i.dr, label %bb.aq, label %.thread.i, !dbg !5192

bb.ap:                                            ; preds = %.lr.ph.i
    #dbg_value(ptr poison, !2746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5193)
    #dbg_value(ptr poison, !2753, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5184)
    #dbg_value(ptr poison, !2759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5186)
    #dbg_value(ptr poison, !2769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5188)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2746, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5193)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2753, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5184)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2759, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5186)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5188)
  %i.ds = icmp eq i64 %.sroa.452.sroa.6.0.copyload.i, 0, !dbg !5194
  br i1 %i.ds, label %bb.aq, label %bb.ar, !dbg !5194

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %.lr.ph.i, %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !5195, !noalias !4502
  invoke void @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorINtNtNtB9_3ast7visitor7Visitor10visit_post(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.051.0.copyload.i)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit, !dbg !5196

.noexc19:                                         ; preds = %bb.aq
  %i.dt = load i64, ptr %i.g, align 8, !dbg !5197, !range !1568, !noalias !4502, !noundef !26
  %.not74.i = icmp eq i64 %i.dt, -1, !dbg !5197
  br i1 %.not74.i, label %bb.aw, label %bb.av, !dbg !5198

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.452.sroa.5.0.copyload.i) ]
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !2746, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5193)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !2753, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5184)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !2759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5186)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !2769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5188)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2770, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5188)
    #dbg_value(i64 3, !4313, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5199)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !4313, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5199)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !4313, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !5199)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !4313, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64), !5199)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !5200, !noalias !4502
  invoke void @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir9translateNtB5_11TranslatorINtNtNtB9_3ast7visitor7Visitor20visit_alternation_in(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !5201

.noexc20:                                         ; preds = %bb.ar
  %i.du = load i64, ptr %i.h, align 8, !dbg !5202, !range !1568, !noalias !4502, !noundef !26
  %.not75.i = icmp eq i64 %i.du, -1, !dbg !5202
  br i1 %.not75.i, label %bb.at, label %bb.as, !dbg !5203

.thread.i:                                        ; preds = %bb.ao
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !2744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5191)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !2753, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5178)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !2759, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5180)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !2769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5182)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2770, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5182)
    #dbg_value(i64 2, !4313, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5199)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !4313, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5199)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !4313, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !5199)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !4313, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64), !5199)
    #dbg_value(i64 -1, !4355, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5204)
    #dbg_value(ptr undef, !4380, !DIExpression(), !4399)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.452.sroa.5.0.copyload.i) ]
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !4290, !DIExpression(), !4444)
  %.sroa.1893.0192359.i = add i64 %.sroa.452.sroa.6.0.copyload.i, -1, !dbg !5205
  %.sroa.15.0194360.i = getelementptr inbounds nuw i8, ptr %.sroa.452.sroa.5.0.copyload.i, i64 16, !dbg !5208
    #dbg_value(ptr %i.l, !5086, !DIExpression(), !5210)
    #dbg_value(ptr %.sroa.051.0.copyload.i, !5089, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5210)
    #dbg_value(ptr %.sroa.051.0.copyload.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5212)
    #dbg_value(ptr %.sroa.051.0.copyload.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5214)
    #dbg_value(i64 %.sroa.452.sroa.0.0.copyload.i, !5089, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5210)
    #dbg_value(i64 %.sroa.452.sroa.0.0.copyload.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5212)
    #dbg_value(i64 %.sroa.452.sroa.0.0.copyload.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5214)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !5089, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5210)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5212)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5214)
    #dbg_value(ptr %.sroa.15.0194360.i, !5089, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5210)
    #dbg_value(ptr %.sroa.15.0194360.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5212)
    #dbg_value(ptr %.sroa.15.0194360.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5214)
    #dbg_value(i64 %.sroa.1893.0192359.i, !5089, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5210)
    #dbg_value(i64 %.sroa.1893.0192359.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5212)
    #dbg_value(i64 %.sroa.1893.0192359.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5214)
    #dbg_value(ptr %i.l, !2586, !DIExpression(), !5212)
    #dbg_value(ptr %i.l, !2602, !DIExpression(), !5216)
    #dbg_value(i64 40, !2610, !DIExpression(), !5218)
    #dbg_value(i64 %i.dl, !2587, !DIExpression(), !5221)
    #dbg_value(i64 %i.dl, !2627, !DIExpression(), !5222)
    #dbg_value(ptr %i.l, !2618, !DIExpression(), !5224)
  br label %.backedge.i, !dbg !5225

bb.as:                                            ; preds = %.noexc20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !dbg !5226, !noalias !4507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !5227, !noalias !4502
  br label %bb.ax, !dbg !5228

bb.at:                                            ; preds = %.noexc20
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !4313, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !5199)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !2770, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !5188)
    #dbg_value(i64 %.sroa.452.sroa.6.0.copyload.i, !4313, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64), !5199)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !5227, !noalias !4502
    #dbg_value(ptr undef, !4380, !DIExpression(), !4399)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !4290, !DIExpression(), !4444)
  %.pre.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !5230, !alias.scope !5231, !noalias !5234 ; 3 uses
  %.pre345.i = load i64, ptr %i.l, align 8, !dbg !5236, !range !2192, !alias.scope !5231, !noalias !5234
  %i.dv = icmp eq i64 %.pre.i, %.pre345.i, !dbg !5225
  %.sroa.1893.0192.i = add i64 %.sroa.452.sroa.6.0.copyload.i, -1, !dbg !5205 ; 2 uses
  %.sroa.15.0194.i = getelementptr inbounds nuw i8, ptr %.sroa.452.sroa.5.0.copyload.i, i64 16, !dbg !5208 ; 2 uses
    #dbg_value(ptr %i.l, !5086, !DIExpression(), !5210)
    #dbg_value(ptr %.sroa.051.0.copyload.i, !5089, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5210)
    #dbg_value(ptr %.sroa.051.0.copyload.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5212)
    #dbg_value(ptr %.sroa.051.0.copyload.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5214)
    #dbg_value(i64 %.sroa.452.sroa.0.0.copyload.i, !5089, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5210)
    #dbg_value(i64 %.sroa.452.sroa.0.0.copyload.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5212)
    #dbg_value(i64 %.sroa.452.sroa.0.0.copyload.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5214)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !5089, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5210)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5212)
    #dbg_value(ptr %.sroa.452.sroa.5.0.copyload.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5214)
    #dbg_value(ptr %.sroa.15.0194.i, !5089, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5210)
    #dbg_value(ptr %.sroa.15.0194.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5212)
    #dbg_value(ptr %.sroa.15.0194.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !5214)
    #dbg_value(i64 %.sroa.1893.0192.i, !5089, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5210)
    #dbg_value(i64 %.sroa.1893.0192.i, !2579, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5212)
    #dbg_value(i64 %.sroa.1893.0192.i, !2594, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !5214)
    #dbg_value(ptr %i.l, !2586, !DIExpression(), !5212)
    #dbg_value(ptr %i.l, !2602, !DIExpression(), !5216)
    #dbg_value(i64 40, !2610, !DIExpression(), !5218)
    #dbg_value(i64 %.pre.i, !2587, !DIExpression(), !5221)
    #dbg_value(i64 %.pre.i, !2627, !DIExpression(), !5222)
    #dbg_value(ptr %i.l, !2618, !DIExpression(), !5224)
  br i1 %i.dv, label %bb.au, label %.backedge.i, !dbg !5225

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTRNtNtCs3roNzt6HBWW_12regex_syntax3ast3AstNtNtBQ_7visitor5FrameEE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l) #17
          to label %.backedge.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !dbg !5237

bb.av:                                            ; preds = %.noexc19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !dbg !5238, !noalias !4507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !5239, !noalias !4502
  br label %bb.ax, !dbg !5228

bb.aw:                                            ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !5239, !noalias !4502
    #dbg_value(ptr %i.l, !4482, !DIExpression(), !5128)
    #dbg_value(ptr %i.l, !4478, !DIExpression(), !5129)
    #dbg_value(ptr %i.l, !5130, !DIExpression(), !5133)
    #dbg_value(ptr %i.l, !5135, !DIExpression(), !5138)
  %i.dw = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !5140, !alias.scope !4414, !noalias !4489, !noundef !26 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, 0, !dbg !5140
  br i1 %i.dx, label %._crit_edge.i, label %.lr.ph.i, !dbg !5140

.loopexit:                                        ; preds = %bb.t, %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.aq
  %lpad.loopexit22 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.d, %bb.e, %bb.n, %bb.o, %bb.z, %bb.aa
  %lpad.loopexit25 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.au, %bb.ar, %.backedge.i, %bb.al, %.loopexit.i
  %lpad.loopexit28 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge.i, %bb.a
  %lpad.loopexit.split-lp29 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

end_hunk_2
