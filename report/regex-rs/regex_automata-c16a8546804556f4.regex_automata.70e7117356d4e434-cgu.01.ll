Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.01?download=true
inline.NumInlined: 672
inline.NumDeleted: 269
begin_hunk_0_@_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_4Core15is_match_nofail:bb.a
    #dbg_value(ptr %i.c, !8058, !DIExpression(), !12444)
    #dbg_value(ptr poison, !8063, !DIExpression(), !12446)
    #dbg_value(ptr poison, !8073, !DIExpression(), !12448)
    #dbg_value(ptr %.val.i19, !8076, !DIExpression(), !12450)
    #dbg_value(i64 8, !8089, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12451)
    #dbg_value(i64 16, !8089, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12451)
    #dbg_value(ptr poison, !4081, !DIExpression(), !12452)
    #dbg_value(ptr poison, !4093, !DIExpression(), !12454)
    #dbg_value(ptr %.val.i19, !4089, !DIExpression(), !12452)
    #dbg_value(ptr %.val.i19, !4098, !DIExpression(), !12454)
    #dbg_value(ptr %.val.i19, !4102, !DIExpression(), !12456)
    #dbg_value(ptr %.val.i19, !4111, !DIExpression(), !12458)
    #dbg_value(i64 8, !4090, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12452)
    #dbg_value(i64 8, !4099, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12454)
    #dbg_value(i64 8, !4108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12456)
    #dbg_value(i64 8, !4114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12458)
    #dbg_value(i64 16, !4090, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12452)
    #dbg_value(i64 16, !4099, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12454)
    #dbg_value(i64 16, !4108, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12456)
    #dbg_value(i64 16, !4114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12458)
  br label %common.resume, !dbg !12460

bb.h:                                             ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit
    #dbg_value(ptr null, !11337, !DIExpression(), !12427)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #22, !dbg !12461, !noalias !12418
  unreachable, !dbg !12461

_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_13OnePassEngine12search_slots.exit: ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 4, !dbg !12462
  %i.z = load i32, ptr %i.y, align 4, !dbg !12462, !range !11381, !alias.scope !12430, !noalias !12438, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12463, !noalias !12418
    #dbg_value(ptr poison, !12464, !DIExpression(), !12471)
  %i.aa = icmp ne i32 %i.z, 0, !dbg !12473
  br label %bb.o, !dbg !12475

bb.i:                                             ; preds = %bb.a, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1520, !dbg !12476 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12477), !dbg !12480
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12481), !dbg !12480
    #dbg_value(ptr %i.ab, !11421, !DIExpression(), !12483)
    #dbg_value(ptr %2, !11441, !DIExpression(), !12483)
    #dbg_value(ptr %2, !11450, !DIExpression(), !12485)
    #dbg_value(ptr %2, !11458, !DIExpression(), !12487)
    #dbg_value(ptr %i.ab, !11463, !DIExpression(), !12489)
  %i.ac = load i64, ptr %i.ab, align 16, !dbg !12491, !range !5824, !alias.scope !12477, !noalias !12481, !noundef !29 ; 2 uses
  %.not.i = icmp eq i64 %i.ac, 2, !dbg !12491
  br i1 %.not.i, label %.select.unfold29_crit_edge, label %bb.j, !dbg !12492

.select.unfold29_crit_edge:                       ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !12493
  br label %select.unfold29, !dbg !12492

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %i.ab, !11442, !DIExpression(), !12494)
    #dbg_value(ptr %i.ab, !11476, !DIExpression(), !12495)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 40, !dbg !12497
  %i.ae = load i8, ptr %i.ad, align 8, !dbg !12497, !range !10752, !alias.scope !12481, !noalias !12477, !noundef !29
  %i.af = trunc nuw i8 %i.ae to i1, !dbg !12497
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !12481, !noalias !12477 ; 4 uses
  %i.ai = icmp ugt i64 %i.ah, 128
  %or.cond.i = select i1 %i.af, i1 %i.ai, i1 false, !dbg !12498
  br i1 %or.cond.i, label %select.unfold29, label %bb.k, !dbg !12498

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !12499
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !12499, !alias.scope !12481, !noalias !12477, !noundef !29 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !12499
  %i.am = load i64, ptr %i.al, align 8, !dbg !12499, !alias.scope !12481, !noalias !12477, !noundef !29 ; 2 uses
    #dbg_value(ptr poison, !11487, !DIExpression(), !12500)
    #dbg_value(i64 %i.am, !11495, !DIExpression(), !12502)
    #dbg_value(i64 %i.ak, !11502, !DIExpression(), !12502)
  %i.an = tail call i64 @llvm.usub.sat.i64(i64 %i.am, i64 %i.ak), !dbg !12504
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12505), !dbg !12508
    #dbg_value(ptr %i.ab, !11510, !DIExpression(), !12509)
    #dbg_value(i64 262144, !11526, !DIExpression(), !12511)
    #dbg_value(i64 64, !11545, !DIExpression(), !12514)
    #dbg_value(i64 64, !11553, !DIExpression(), !12516)
    #dbg_value(i64 64, !11564, !DIExpression(), !12518)
    #dbg_value(i64 1, !11576, !DIExpression(), !12520)
    #dbg_value(ptr %i.ab, !11543, !DIExpression(), !12522)
    #dbg_value(i64 %i.ac, !11532, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12511)
    #dbg_value(i64 poison, !11532, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12511)
  %i.ao = trunc nuw i64 %i.ac to i1, !dbg !12523
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1528, !dbg !12523
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !12523, !alias.scope !12505, !noalias !12481
  %i.ar = shl i64 %i.aq, 3, !dbg !12523
  %.sroa.0.0.i18 = select i1 %i.ao, i64 %i.ar, i64 2097152, !dbg !12523 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i18, !11518, !DIExpression(), !12524)
    #dbg_value(i64 %.sroa.0.0.i18, !11585, !DIExpression(), !12525)
    #dbg_value(i64 64, !11588, !DIExpression(), !12525)
  %i.as = and i64 %.sroa.0.0.i18, 56, !dbg !12527
  %i.at = icmp ne i64 %i.as, 0, !dbg !12527
  %i.au = lshr i64 %.sroa.0.0.i18, 6, !dbg !12527
  %i.av = zext i1 %i.at to i64, !dbg !12527
  %.sroa.0.0.i.i = add nuw nsw i64 %i.au, %i.av, !dbg !12527 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i.i, !11520, !DIExpression(), !12528)
    #dbg_value(i64 %.sroa.0.0.i.i, !11548, !DIExpression(), !12514)
    #dbg_value(i64 %.sroa.0.0.i.i, !11558, !DIExpression(), !12516)
    #dbg_value(i64 %.sroa.0.0.i.i, !11573, !DIExpression(), !12518)
  %i.aw = shl nuw i64 %.sroa.0.0.i.i, 6, !dbg !12529
  %i.ax = icmp samesign ugt i64 %.sroa.0.0.i.i, 288230376151711743, !dbg !12529
    #dbg_value(i1 %i.ax, !11561, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12530)
    #dbg_value(i1 %i.ax, !11595, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !12531)
    #dbg_value(i64 %i.aw, !11522, !DIExpression(), !12533)
    #dbg_value(i64 %i.aw, !11559, !DIExpression(), !12530)
  br i1 %i.ax, label %bb.l, label %bb.m, !dbg !12534, !prof !9671

bb.l:                                             ; preds = %bb.k
    #dbg_value(i64 -1, !11522, !DIExpression(), !12533)
    #dbg_value(i64 -1, !11559, !DIExpression(), !12530)
  br label %bb.m, !dbg !12535

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i = phi i64 [ -1, %bb.l ], [ %i.aw, %bb.k ], !dbg !12514
    #dbg_value(i64 %.sroa.03.0.i, !11559, !DIExpression(), !12530)
    #dbg_value(i64 %.sroa.03.0.i, !11522, !DIExpression(), !12533)
    #dbg_value(ptr %i.ab, !11607, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !12536)
    #dbg_value(ptr %i.ab, !11620, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !12538)
    #dbg_value(ptr %i.ab, !11625, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !12540)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1568, !dbg !12542
  %i.az = load ptr, ptr %i.ay, align 16, !dbg !12542, !alias.scope !12505, !noalias !12481, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.az, !11633, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !12544)
    #dbg_value(ptr %i.az, !11642, !DIExpression(DW_OP_plus_uconst, 320, DW_OP_stack_value), !12546)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 336, !dbg !12548
  %i.bb = load i64, ptr %i.ba, align 16, !dbg !12548, !noalias !12549, !noundef !29 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0, !dbg !12550
  br i1 %i.bc, label %bb.n, label %_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker16max_haystack_len.exit, !dbg !12550

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #22, !dbg !12550, !noalias !12549
  unreachable, !dbg !12550

_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker16max_haystack_len.exit: ; preds = %bb.m
  %i.bd = udiv i64 %.sroa.03.0.i, %i.bb, !dbg !12550
    #dbg_value(i64 %i.bd, !11579, !DIExpression(), !12520)
  %i.be = tail call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 %i.bd, i64 1), !dbg !12551
  %i.bf = icmp ugt i64 %i.an, %i.be, !dbg !12552
  br i1 %i.bf, label %select.unfold29, label %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_18BoundedBacktracker3get.exit, !dbg !12553

bb.o:                                             ; preds = %_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_24BoundedBacktrackerEngine8is_match.exit, %select.unfold29, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_13OnePassEngine12search_slots.exit
  %.sroa.0.0.in = phi i1 [ %i.aa, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_13OnePassEngine12search_slots.exit ], [ %i.bs, %_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_24BoundedBacktrackerEngine8is_match.exit ], [ %i.ce, %select.unfold29 ]
  ret i1 %.sroa.0.0.in, !dbg !12554

_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_18BoundedBacktracker3get.exit: ; preds = %_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker16max_haystack_len.exit
    #dbg_value(ptr undef, !12270, !DIExpression(), !12328)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 1312, !dbg !12555
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12556), !dbg !12559
    #dbg_value(ptr %i.ab, !12312, !DIExpression(), !12560)
    #dbg_value(ptr %i.bg, !12313, !DIExpression(), !12560)
    #dbg_value(ptr %2, !12314, !DIExpression(), !12560)
    #dbg_value(ptr %2, !12561, !DIExpression(), !12564)
  %i.bh = tail call noundef nonnull align 8 ptr @_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_23BoundedBacktrackerCache3get(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ab), !dbg !12566, !noalias !12556
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !12567
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !12567, !alias.scope !12556, !noalias !12568, !nonnull !29, !noundef !29
    #dbg_value(ptr %2, !12571, !DIExpression(), !12577)
    #dbg_value(ptr %i.bj, !12274, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12580)
    #dbg_value(ptr %i.bj, !12303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12581)
    #dbg_value(i64 %i.ah, !12274, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12580)
    #dbg_value(i64 %i.ah, !12303, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12581)
    #dbg_value(i64 %i.ak, !12274, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12580)
    #dbg_value(i64 %i.ak, !12303, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12581)
    #dbg_value(i64 %i.am, !12274, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12580)
    #dbg_value(i64 %i.am, !12303, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12581)
    #dbg_value(i32 poison, !12274, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12580)
    #dbg_value(i32 poison, !12303, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12581)
    #dbg_value(i32 poison, !12274, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !12580)
    #dbg_value(i32 poison, !12303, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !12581)
    #dbg_value(i8 poison, !12303, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !12581)
    #dbg_value(ptr %i.ab, !12301, !DIExpression(), !12581)
    #dbg_value(ptr %i.bh, !12302, !DIExpression(), !12581)
    #dbg_declare(ptr %i.b, !12304, !DIExpression(), !12582)
    #dbg_declare(ptr %i.a, !12583, !DIExpression(), !12600)
    #dbg_value(i8 1, !12277, !DIExpression(), !12580)
    #dbg_declare(ptr poison, !12595, !DIExpression(), !12602)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12603, !noalias !12604
    #dbg_value(i8 poison, !12274, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !12580)
    #dbg_value(i8 1, !12274, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !12580)
  %i.bk = load <2 x i32>, ptr %2, align 8, !dbg !12577, !alias.scope !12556, !noalias !12568
  store <2 x i32> %i.bk, ptr %i.b, align 8, !dbg !12610, !noalias !12611
  %.sroa.5.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12610
  store ptr %i.bj, ptr %.sroa.5.0..sroa_idx23, align 8, !dbg !12610, !noalias !12611
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12610
  store i64 %i.ah, ptr %.sroa.624.0..sroa_idx, align 8, !dbg !12610, !noalias !12611
  %.sroa.7.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !12610
  store i64 %i.ak, ptr %.sroa.7.0..sroa_idx25, align 8, !dbg !12610, !noalias !12611
  %.sroa.8.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !12610
  store i64 %i.am, ptr %.sroa.8.0..sroa_idx26, align 8, !dbg !12610, !noalias !12611
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !12610
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !12610, !noalias !12604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12612, !noalias !12604
  call fastcc void @_RNvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker16try_search_slots(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0) #28, !dbg !12613, !noalias !12614
  %i.bl = load i32, ptr %i.a, align 8, !dbg !12615, !range !11381, !noalias !12604, !noundef !29
  %i.bm = trunc nuw i32 %i.bl to i1, !dbg !12616
  br i1 %i.bm, label %bb.p, label %_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_24BoundedBacktrackerEngine8is_match.exit, !dbg !12616

bb.p:                                             ; preds = %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_18BoundedBacktracker3get.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12617
  %i.bo = load ptr, ptr %i.bn, align 8, !dbg !12617, !noalias !12604, !nonnull !29, !align !11387, !noundef !29
    #dbg_value(ptr %i.bo, !12316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12618)
    #dbg_value(i8 poison, !12316, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !12618)
    #dbg_value(i8 1, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12618)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12619, !noalias !12604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12620, !noalias !12604
    #dbg_declare(ptr %i.e, !12324, !DIExpression(), !12621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !12622, !noalias !12623
  store ptr %i.bo, ptr %i.e, align 8, !dbg !12622, !noalias !12623
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #27
          to label %bb.q unwind label %bb.r, !dbg !12626, !noalias !12627

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bp = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.e, !8058, !DIExpression(), !12628)
    #dbg_value(ptr poison, !8063, !DIExpression(), !12630)
    #dbg_value(ptr poison, !8073, !DIExpression(), !12632)
    #dbg_value(ptr %.val.i19, !8076, !DIExpression(), !12634)
    #dbg_value(i64 8, !8089, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12635)
    #dbg_value(i64 16, !8089, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12635)
    #dbg_value(ptr poison, !4081, !DIExpression(), !12636)
    #dbg_value(ptr poison, !4093, !DIExpression(), !12638)
    #dbg_value(ptr %.val.i19, !4089, !DIExpression(), !12636)
    #dbg_value(ptr %.val.i19, !4098, !DIExpression(), !12638)
    #dbg_value(ptr %.val.i19, !4102, !DIExpression(), !12640)
    #dbg_value(ptr %.val.i19, !4111, !DIExpression(), !12642)
    #dbg_value(i64 8, !4090, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12636)
    #dbg_value(i64 8, !4099, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12638)
    #dbg_value(i64 8, !4108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12640)
    #dbg_value(i64 8, !4114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12642)
    #dbg_value(i64 16, !4090, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12636)
    #dbg_value(i64 16, !4099, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12638)
    #dbg_value(i64 16, !4108, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12640)
    #dbg_value(i64 16, !4114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12642)
  br label %common.resume, !dbg !12644

_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_24BoundedBacktrackerEngine8is_match.exit: ; preds = %_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_18BoundedBacktracker3get.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 4, !dbg !12645
  %i.br = load i32, ptr %i.bq, align 4, !dbg !12645, !range !11381, !noalias !12604, !noundef !29
    #dbg_value(ptr undef, !12316, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12618)
    #dbg_value(i32 %i.br, !12316, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !12618)
    #dbg_value(i8 0, !12316, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !12618)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12619, !noalias !12604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12620, !noalias !12604
    #dbg_declare(ptr %i.e, !12324, !DIExpression(), !12621)
  %i.bs = trunc nuw i32 %i.br to i1, !dbg !12646
  br label %bb.o, !dbg !12647

select.unfold29:                                  ; preds = %.select.unfold29_crit_edge, %_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker16max_haystack_len.exit, %bb.j
  %i.bt = phi i64 [ %.pre, %.select.unfold29_crit_edge ], [ %i.ah, %_RNvMs0_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker16max_haystack_len.exit ], [ %i.ah, %bb.j ], !dbg !12493
    #dbg_value(ptr %0, !12272, !DIExpression(DW_OP_plus_uconst, 1472, DW_OP_stack_value), !12648)
    #dbg_value(ptr %0, !12337, !DIExpression(DW_OP_plus_uconst, 1472, DW_OP_stack_value), !12649)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 1096, !dbg !12650
    #dbg_value(ptr %i.bu, !12338, !DIExpression(), !12339)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1472, !dbg !12651 ; 2 uses
    #dbg_value(ptr %i.bv, !12355, !DIExpression(), !12652)
  %i.bw = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_11PikeVMCache3get(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.bu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bv), !dbg !12653
    #dbg_value(ptr %i.bw, !12356, !DIExpression(), !12652)
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !12493
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !12493, !nonnull !29, !noundef !29
    #dbg_value(ptr %2, !12654, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !12660)
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !12660
    #dbg_value(ptr %2, !12661, !DIExpression(), !12664)
    #dbg_value(ptr %i.by, !12357, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12652)
    #dbg_value(ptr %i.by, !12363, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12364)
    #dbg_value(i64 %i.bt, !12357, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12652)
    #dbg_value(i64 %i.bt, !12363, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12364)
    #dbg_value(i64 poison, !12357, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12652)
    #dbg_value(i64 poison, !12363, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12364)
    #dbg_value(i64 poison, !12357, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12652)
    #dbg_value(i64 poison, !12363, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12364)
    #dbg_value(i32 poison, !12357, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12652)
    #dbg_value(i32 poison, !12363, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !12364)
    #dbg_value(i32 poison, !12357, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !12652)
    #dbg_value(i32 poison, !12363, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !12364)
    #dbg_value(i8 poison, !12357, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 8), !12652)
    #dbg_value(i8 poison, !12363, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 320, 8), !12364)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !12667
    #dbg_value(i8 1, !12357, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !12652)
    #dbg_value(i8 1, !12363, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !12364)
  %i.ca = load <2 x i32>, ptr %2, align 8, !dbg !12664
  store <2 x i32> %i.ca, ptr %i.f, align 8, !dbg !12668
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !12668
  store ptr %i.by, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12668
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !12668
  store i64 %i.bt, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !12668
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !12668
  %i.cb = load <2 x i64>, ptr %i.bz, align 8, !dbg !12660
  store <2 x i64> %i.cb, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !12668
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40, !dbg !12668
  store i8 1, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !12668
  %i.cc = call fastcc { i32, i32 } @_RNvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM12search_slots(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bv, ptr noalias nofree noundef align 8 dereferenceable(216) %i.bw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0) #28, !dbg !12669
  %i.cd = extractvalue { i32, i32 } %i.cc, 0, !dbg !12669
    #dbg_value(ptr poison, !12464, !DIExpression(), !12670)
  %i.ce = icmp eq i32 %i.cd, 1, !dbg !12672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !12673
  br label %bb.o, !dbg !12647
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_4Core18search_half_nofail(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(1984) %1, ptr noalias nofree noundef align 8 dereferenceable(1400) initializes((1080, 1084)) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #1 !dbg !12674 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !12679, !DIExpression(), !12688)
    #dbg_value(ptr %2, !12680, !DIExpression(), !12688)
    #dbg_value(ptr %3, !12681, !DIExpression(), !12688)
    #dbg_declare(ptr %i.a, !12689, !DIExpression(), !12711)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12712
  call void @_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_4Core13search_nofail(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1984) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3), !dbg !12713
  %i.b = load i64, ptr %i.a, align 8, !dbg !12714, !range !4033, !noundef !29
  %i.c = trunc nuw i64 %i.b to i1, !dbg !12715
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !12715

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12716
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12716
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !12716
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12717
    #dbg_value(i64 poison, !12682, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12718)
    #dbg_value(i64 %.sroa.4.0.copyload, !12682, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12718)
    #dbg_value(i32 %.sroa.5.0.copyload, !12682, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !12718)
    #dbg_value(i32 poison, !12682, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !12718)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12719
  store i64 %.sroa.4.0.copyload, ptr %i.d, align 8, !dbg !12719
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12719
  store i32 %.sroa.5.0.copyload, ptr %i.e, align 8, !dbg !12719
  br label %bb.d, !dbg !12720

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12717
  br label %bb.d, !dbg !12720

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ], !dbg !12688
  store i64 %storemerge, ptr %0, align 8, !dbg !12688
  ret void, !dbg !12720
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_4Core19search_slots_nofail(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(1984) %0, ptr noalias nofree noundef align 8 dereferenceable(1400) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !12721 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !12732, !DIExpression(), !12736)
    #dbg_value(ptr poison, !12730, !DIExpression(), !12737)
    #dbg_value(ptr %0, !12726, !DIExpression(), !12738)
    #dbg_value(ptr %1, !12727, !DIExpression(), !12738)
    #dbg_value(ptr %2, !12728, !DIExpression(), !12738)
    #dbg_value(ptr %2, !12739, !DIExpression(), !12745)
    #dbg_value(ptr %2, !12747, !DIExpression(), !12753)
    #dbg_value(ptr %3, !12729, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12738)
    #dbg_value(ptr %3, !12744, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12745)
    #dbg_value(ptr %3, !12752, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12753)
    #dbg_value(i64 %4, !12729, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12738)
    #dbg_value(i64 %4, !12744, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12745)
    #dbg_value(i64 %4, !12752, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12753)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1576, !dbg !12755 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12756), !dbg !12759
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12760), !dbg !12759
    #dbg_value(ptr %i.e, !11123, !DIExpression(), !12762)
    #dbg_value(ptr %2, !11143, !DIExpression(), !12762)
    #dbg_value(ptr %2, !11163, !DIExpression(), !12764)
    #dbg_value(ptr %i.e, !11168, !DIExpression(), !12766)
  %i.f = load i64, ptr %i.e, align 8, !dbg !12768, !range !7937, !alias.scope !12756, !noalias !12760, !noundef !29
  %.not.i16 = icmp eq i64 %i.f, -1, !dbg !12768
  br i1 %.not.i16, label %bb.i, label %bb.b, !dbg !12769

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.e, !11144, !DIExpression(), !12770)
  %i.g = load i32, ptr %2, align 8, !dbg !12771, !range !8482, !alias.scope !12760, !noalias !12756, !noundef !29
    #dbg_value(ptr poison, !11182, !DIExpression(), !12772)
  %i.h = icmp eq i32 %i.g, 0, !dbg !12774
  br i1 %i.h, label %bb.c, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit, !dbg !12774

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %i.e, !11192, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !12775)
    #dbg_value(ptr %i.e, !11197, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !12777)
    #dbg_value(ptr %i.e, !11202, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !12779)
    #dbg_value(ptr %i.e, !11207, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !12781)
    #dbg_value(ptr %i.e, !11212, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !12783)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1648, !dbg !12785
  %i.j = load ptr, ptr %i.i, align 16, !dbg !12785, !alias.scope !12756, !noalias !12760, !nonnull !29, !noundef !29 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 368, !dbg !12787
  %i.l = load i32, ptr %i.k, align 16, !dbg !12787, !noalias !12788, !noundef !29
    #dbg_value(ptr poison, !11222, !DIExpression(), !12789)
    #dbg_value(ptr %i.e, !11207, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !12791)
    #dbg_value(ptr %i.e, !11212, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !12793)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 372, !dbg !12795
  %i.n = load i32, ptr %i.m, align 4, !dbg !12795, !noalias !12788, !noundef !29
    #dbg_value(ptr poison, !11225, !DIExpression(), !12789)
    #dbg_value(ptr poison, !11234, !DIExpression(), !12796)
    #dbg_value(ptr poison, !11237, !DIExpression(), !12796)
  %i.o = icmp eq i32 %i.l, %i.n, !dbg !12796
  br i1 %i.o, label %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit, label %bb.i, !dbg !12798

_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit: ; preds = %bb.c, %bb.b
    #dbg_value(ptr undef, !12730, !DIExpression(), !12737)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1368, !dbg !12799 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12800), !dbg !12803
    #dbg_value(ptr %i.e, !11295, !DIExpression(), !12804)
    #dbg_value(ptr %i.p, !11301, !DIExpression(), !12804)
    #dbg_value(ptr %2, !11302, !DIExpression(), !12804)
    #dbg_value(ptr %3, !11303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12804)
    #dbg_value(i64 %4, !11303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12804)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12806, !noalias !12807
    #dbg_value(ptr %i.p, !11311, !DIExpression(), !12811)
  %i.q = load i64, ptr %i.p, align 8, !dbg !12813, !range !5454, !alias.scope !12800, !noalias !12814, !noundef !29
  %.not.i18 = icmp eq i64 %i.q, -1, !dbg !12813
  br i1 %.not.i18, label %bb.h, label %bb.d, !dbg !12815, !prof !9671

bb.d:                                             ; preds = %_RNvMs4_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_7OnePass3get.exit
    #dbg_value(ptr %i.p, !11337, !DIExpression(), !12816)
  call fastcc void @_RNvMs2_NtNtCs9GYDdpCSJ4S_14regex_automata3dfa7onepassNtB5_3DFA16try_search_slots(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(376) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 %3, i64 noundef range(i64 0, 1152921504606846976) %4) #28, !dbg !12818
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12819), !dbg !12822
    #dbg_declare(ptr %i.b, !11352, !DIExpression(), !12823)
    #dbg_declare(ptr %i.a, !11375, !DIExpression(), !12825)
  %i.r = load i32, ptr %i.b, align 8, !dbg !12826, !range !11381, !alias.scope !12819, !noalias !12827, !noundef !29
  %i.s = trunc nuw i32 %i.r to i1, !dbg !12829
  br i1 %i.s, label %bb.e, label %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_13OnePassEngine12search_slots.exit, !dbg !12829, !prof !9671

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12830, !noalias !12831
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12830
  %i.u = load ptr, ptr %i.t, align 8, !dbg !12830, !alias.scope !12819, !noalias !12827, !nonnull !29, !align !11387, !noundef !29
  store ptr %i.u, ptr %i.a, align 8, !dbg !12830, !noalias !12831
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #27
          to label %bb.f unwind label %bb.g, !dbg !12832, !noalias !12819

bb.f:                                             ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.g
  %.sink = phi ptr [ %i.c, %bb.r ], [ %i.a, %bb.g ]
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %bb.r ], [ %i.v, %bb.g ]
  %.val.i20 = load ptr, ptr %.sink, align 8, !dbg !12738, !noalias !29, !nonnull !29, !noundef !29
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i20, i64 noundef 16, i64 noundef 8) #26, !dbg !12738, !noalias !29
  resume { ptr, i32 } %common.resume.op, !dbg !12738

end_hunk_0
begin_hunk_1_@_RNvMs2_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson9backtrackNtB5_18BoundedBacktracker16try_search_slots:bb.a
  %.sroa.561.0.copyload = load i64, ptr %.sroa.561.0..sroa_idx, align 8, !dbg !14052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14043
    #dbg_value(i64 %i.aj, !13714, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14053)
    #dbg_value(i64 %i.aj, !13833, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14054)
    #dbg_value(ptr poison, !13714, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14053)
    #dbg_value(ptr poison, !13833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14054)
    #dbg_value(i64 %.sroa.561.0.copyload, !13714, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32), !14053)
    #dbg_value(i64 %.sroa.561.0.copyload, !13833, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32), !14054)
    #dbg_value(i64 %.sroa.561.0.copyload, !13714, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !14053)
    #dbg_value(i64 %.sroa.561.0.copyload, !13833, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !14054)
    #dbg_value(ptr %i.d, !13815, !DIExpression(), !13955)
    #dbg_value(ptr %i.d, !13810, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13956)
    #dbg_value(ptr %i.d, !13806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13957)
    #dbg_value(ptr %i.d, !13799, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13801)
    #dbg_value(i64 2, !13810, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13956)
    #dbg_value(i64 2, !13806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13957)
    #dbg_value(i64 2, !13799, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13801)
  %i.as = icmp samesign ult i64 %5, 3
  br i1 %i.as, label %bb.m, label %bb.n, !dbg !14055, !prof !13306

bb.m:                                             ; preds = %bb.l
  %.sroa.435.16.extract.trunc = trunc i64 %.sroa.561.0.copyload to i32, !dbg !13762
    #dbg_value(i32 %.sroa.435.16.extract.trunc, !13714, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !14053)
    #dbg_value(i32 %.sroa.435.16.extract.trunc, !13833, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !14054)
    #dbg_value(ptr %i.d, !13732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13733)
    #dbg_value(i64 %5, !13732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13733)
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEB1h_(ptr noalias nofree noundef nonnull align 8 %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40), !dbg !14056
  %i.at = trunc nuw i64 %i.aj to i1, !dbg !14057
  %i.au = trunc nuw nsw i64 %i.aj to i32, !dbg !14058
  %.sroa.435.16.extract.trunc. = select i1 %i.at, i32 %.sroa.435.16.extract.trunc, i32 undef, !dbg !14058
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !14059
  store i32 %i.au, ptr %i.av, align 4, !dbg !14059
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14059
  store i32 %.sroa.435.16.extract.trunc., ptr %i.aw, align 8, !dbg !14059
  br label %bb.o, !dbg !14060

bb.n:                                             ; preds = %bb.l
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #22, !dbg !14061
  unreachable, !dbg !14061

bb.o:                                             ; preds = %bb.m, %bb.k
  %storemerge = phi i32 [ 0, %bb.m ], [ 1, %bb.k ], !dbg !14062
  store i32 %storemerge, ptr %0, align 8, !dbg !14062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14063
  br label %bb.aa, !dbg !14064

bb.p:                                             ; preds = %bb.w, %bb.v, %bb.j
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #24
          to label %common.resume unwind label %bb.ac, !dbg !14066

bb.q:                                             ; preds = %bb.j
  %i.ay = load i64, ptr %i.a, align 8, !dbg !14067, !range !5824, !noundef !29 ; 3 uses
  %i.az = icmp eq i64 %i.ay, 2, !dbg !14067
  br i1 %i.az, label %bb.r, label %bb.u, !dbg !14068

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !14069
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !14069, !nonnull !29, !align !11387, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14070
    #dbg_value(ptr %i.bb, !13724, !DIExpression(), !14071)
    #dbg_value(ptr %i.bb, !13965, !DIExpression(), !14072)
    #dbg_value(ptr %i.bb, !13974, !DIExpression(), !14075)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14076
  store ptr %i.bb, ptr %i.bc, align 8, !dbg !14076
  store i32 1, ptr %0, align 8, !dbg !14076
    #dbg_value(ptr %i.b, !3373, !DIExpression(), !14077)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit unwind label %bb.s, !dbg !14079

bb.s:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !3378, !DIExpression(), !14080)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.t, !dbg !14082

bb.t:                                             ; preds = %bb.s
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !14079
  unreachable, !dbg !14079

common.resume:                                    ; preds = %bb.p, %bb.y, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.y ], [ %i.bd, %bb.s ], [ %i.ax, %bb.p ]
  resume { ptr, i32 } %common.resume.op, !dbg !13728

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit: ; preds = %bb.r
    #dbg_value(ptr %i.b, !3378, !DIExpression(), !14083)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !14085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14066
  br label %bb.aa, !dbg !14064

bb.u:                                             ; preds = %bb.q
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !14086
  %.sroa.564.0.copyload = load i64, ptr %.sroa.564.0..sroa_idx, align 8, !dbg !14086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14070
    #dbg_value(i64 %i.ay, !13722, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14087)
    #dbg_value(i64 %i.ay, !13867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14088)
    #dbg_value(ptr poison, !13722, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14087)
    #dbg_value(ptr poison, !13867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14088)
  %.sroa.449.16.extract.trunc = trunc i64 %.sroa.564.0.copyload to i32, !dbg !13765
    #dbg_value(i32 %.sroa.449.16.extract.trunc, !13722, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !14087)
    #dbg_value(i32 %.sroa.449.16.extract.trunc, !13867, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !14088)
    #dbg_value(i64 %.sroa.564.0.copyload, !13722, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !14087)
    #dbg_value(i64 %.sroa.564.0.copyload, !13867, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !14088)
    #dbg_value(ptr %i.b, !13852, !DIExpression(), !14089)
    #dbg_value(ptr poison, !13810, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13959)
    #dbg_value(ptr poison, !13806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13960)
    #dbg_value(ptr poison, !13799, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13844)
    #dbg_value(i64 %i.ao, !13810, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13959)
    #dbg_value(i64 %i.ao, !13806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13960)
    #dbg_value(i64 %i.ao, !13799, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13844)
  %.not112 = icmp ugt i64 %5, %i.ao
  br i1 %.not112, label %bb.w, label %bb.v, !dbg !14090, !prof !2435

bb.v:                                             ; preds = %bb.u
    #dbg_value(ptr %i.am, !13810, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13959)
    #dbg_value(ptr %i.am, !13806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13960)
    #dbg_value(ptr %i.am, !13799, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13844)
    #dbg_value(ptr %i.am, !13732, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13735)
    #dbg_value(i64 %5, !13732, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13735)
  invoke void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEB1h_(ptr noalias nofree noundef nonnull align 8 %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.am, i64 noundef %5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42)
          to label %bb.x unwind label %bb.p, !dbg !14091

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %5, i64 noundef %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #27
          to label %bb.ab unwind label %bb.p, !dbg !14092

bb.x:                                             ; preds = %bb.v
  %i.bf = trunc nuw i64 %i.ay to i1, !dbg !14093
  %i.bg = trunc nuw nsw i64 %i.ay to i32, !dbg !14094
  %.sroa.449.16.extract.trunc. = select i1 %i.bf, i32 %.sroa.449.16.extract.trunc, i32 undef, !dbg !14094
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !14095
  store i32 %i.bg, ptr %i.bh, align 4, !dbg !14095
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14095
  store i32 %.sroa.449.16.extract.trunc., ptr %i.bi, align 8, !dbg !14095
  store i32 0, ptr %0, align 8, !dbg !14095
    #dbg_value(ptr %i.b, !3373, !DIExpression(), !14096)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBK_3ops4drop4Drop4dropB1n_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit115 unwind label %bb.y, !dbg !14098

bb.y:                                             ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.b, !3378, !DIExpression(), !14099)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.z, !dbg !14101

bb.z:                                             ; preds = %bb.y
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !14098
  unreachable, !dbg !14098

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit115: ; preds = %bb.x
    #dbg_value(ptr %i.b, !3378, !DIExpression(), !14102)
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !14104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14066
  br label %bb.aa, !dbg !14105

bb.aa:                                            ; preds = %bb.ad, %bb.ae, %bb.o, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit, %bb.f, %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives11NonMaxUsizeEEEB1A_.exit115
  ret void, !dbg !14105

bb.ab:                                            ; preds = %bb.w
  unreachable

bb.ac:                                            ; preds = %bb.p
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !14106
  unreachable, !dbg !14106

bb.ad:                                            ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !14107
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !14107, !nonnull !29, !align !11387, !noundef !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14108
    #dbg_value(ptr %i.bn, !13708, !DIExpression(), !14109)
    #dbg_value(ptr %i.bn, !13965, !DIExpression(), !14110)
    #dbg_value(ptr %i.bn, !13970, !DIExpression(), !14113)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14114
  store ptr %i.bn, ptr %i.bo, align 8, !dbg !14114
  store i32 1, ptr %0, align 8, !dbg !14114
  br label %bb.aa, !dbg !14064

bb.ae:                                            ; preds = %bb.h
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !14115
  %.sroa.558.0.copyload = load i64, ptr %.sroa.558.0..sroa_idx, align 8, !dbg !14115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14108
    #dbg_value(i64 %i.ah, !13706, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14116)
    #dbg_value(i64 %i.ah, !13791, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14117)
    #dbg_value(ptr poison, !13706, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14116)
    #dbg_value(ptr poison, !13791, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14117)
    #dbg_value(i64 %.sroa.558.0.copyload, !13706, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32), !14116)
    #dbg_value(i64 %.sroa.558.0.copyload, !13791, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 32), !14117)
    #dbg_value(i64 %.sroa.558.0.copyload, !13706, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !14116)
    #dbg_value(i64 %.sroa.558.0.copyload, !13791, !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 160, 32), !14117)
  %i.bp = trunc nuw i64 %i.ah to i1, !dbg !14118
  %.sroa.421.16.extract.trunc = trunc i64 %.sroa.558.0.copyload to i32, !dbg !14118
  %6 = trunc nuw nsw i64 %i.ah to i32, !dbg !14118
  %.sroa.524.0 = select i1 %i.bp, i32 %.sroa.421.16.extract.trunc, i32 undef, !dbg !14118
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !14119
  store i32 %6, ptr %i.bq, align 4, !dbg !14119
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14119
  store i32 %.sroa.524.0, ptr %i.br, align 8, !dbg !14119
  store i32 0, ptr %0, align 8, !dbg !14119
  br label %bb.aa, !dbg !14120
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc i64 @_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine29try_which_overlapping_matches(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1440) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(704) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 !dbg !14121 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 17 uses
    #dbg_value(ptr %0, !14157, !DIExpression(), !14165)
    #dbg_value(ptr %1, !14158, !DIExpression(), !14165)
    #dbg_value(ptr %2, !14159, !DIExpression(), !14165)
    #dbg_value(ptr %3, !14160, !DIExpression(), !14165)
    #dbg_declare(ptr poison, !14166, !DIExpression(), !14197)
    #dbg_value(ptr %0, !14161, !DIExpression(), !14199)
    #dbg_value(ptr %1, !14200, !DIExpression(), !14221)
  %i.b = load i64, ptr %1, align 8, !dbg !14223, !range !5824, !noundef !29
  %.not = icmp eq i64 %i.b, 2, !dbg !14223
  br i1 %.not, label %bb.o, label %bb.b, !dbg !14224, !prof !9671

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !14225, !DIExpression(), !14233)
    #dbg_value(ptr %1, !14163, !DIExpression(), !14235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14236), !dbg !14239
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14240), !dbg !14239
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14242), !dbg !14239
    #dbg_value(ptr %0, !14244, !DIExpression(), !14279)
    #dbg_value(ptr %1, !14250, !DIExpression(), !14279)
    #dbg_value(ptr %2, !14251, !DIExpression(), !14279)
    #dbg_value(ptr %3, !14252, !DIExpression(), !14279)
    #dbg_value(ptr %3, !14281, !DIExpression(), !14288)
    #dbg_declare(ptr %i.a, !14253, !DIExpression(), !14290)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14291, !noalias !14292
  store i64 0, ptr %i.a, align 8, !dbg !14294, !noalias !14292
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !14294
  store i32 0, ptr %i.c, align 8, !dbg !14294, !noalias !14292
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !14294
  store i64 0, ptr %i.d, align 8, !dbg !14294, !noalias !14292
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !14294
  store i64 0, ptr %i.e, align 8, !dbg !14294, !noalias !14292
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !14294
  store i8 0, ptr %i.f, align 8, !dbg !14294, !noalias !14292
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.h = load ptr, ptr %i.g, align 16, !alias.scope !14300, !noalias !14303, !nonnull !29, !noundef !29 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 386 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 387 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !14242, !noalias !14307 ; 3 uses
  %i.m = load ptr, ptr %3, align 8, !alias.scope !14242, !noalias !14307, !nonnull !29 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = load i8, ptr %i.o, align 8, !range !10752, !alias.scope !14240, !noalias !14308
  %.fr26.i = freeze i8 %i.p
  %i.q = trunc i8 %.fr26.i to i1
  %.promoted.i = load i64, ptr %i.n, align 8, !alias.scope !14242, !noalias !14307 ; 2 uses
  br i1 %i.q, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14309), !dbg !14310
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14311), !dbg !14310
    #dbg_value(ptr %0, !14312, !DIExpression(), !14328)
    #dbg_value(ptr %1, !14319, !DIExpression(), !14328)
    #dbg_value(ptr %2, !14320, !DIExpression(), !14328)
    #dbg_value(ptr %i.a, !14321, !DIExpression(), !14328)
    #dbg_value(ptr %i.a, !14330, !DIExpression(), !14337)
    #dbg_value(ptr %0, !14339, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !14342)
  %i.r = load i8, ptr %i.i, align 2, !dbg !14344, !range !10752, !noalias !14345, !noundef !29
  %i.s = trunc nuw i8 %i.r to i1, !dbg !14344
  br i1 %i.s, label %bb.c, label %bb.d, !dbg !14346

bb.c:                                             ; preds = %.split.us.i
    #dbg_value(ptr %0, !14347, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !14350)
  %i.t = load i8, ptr %i.j, align 1, !dbg !14352, !range !10752, !noalias !14345, !noundef !29
    #dbg_value(i8 %i.t, !14322, !DIExpression(), !14353)
  %i.u = trunc nuw i8 %i.t to i1, !dbg !14354
  br label %bb.d, !dbg !14346

bb.d:                                             ; preds = %bb.c, %.split.us.i
  %.sroa.01.0.not.i.us.i = phi i1 [ %i.u, %bb.c ], [ false, %.split.us.i ], !dbg !14355
    #dbg_value(i8 poison, !14322, !DIExpression(), !14353)
  %i.v = call noundef align 8 ptr @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search20find_overlapping_fwd(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #25, !dbg !14356, !noalias !14242 ; 2 uses
    #dbg_value(ptr %i.v, !14357, !DIExpression(), !14381)
  %.not.i.us.i = icmp eq ptr %i.v, null, !dbg !14383
  br i1 %.not.i.us.i, label %bb.e, label %.loopexit, !dbg !14384

bb.e:                                             ; preds = %bb.d
  %.sroa.05.0.copyload.i.us.i = load i64, ptr %i.a, align 8, !dbg !14385, !alias.scope !14311, !noalias !14386 ; 2 uses
  %i.w = trunc nuw i64 %.sroa.05.0.copyload.i.us.i to i1, !dbg !14387
  %brmerge.not.i.us.i = select i1 %i.w, i1 %.sroa.01.0.not.i.us.i, i1 false, !dbg !14387
  br i1 %brmerge.not.i.us.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i, !dbg !14387, !prof !14388

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i: ; preds = %bb.e
  %i.x = call noundef align 8 ptr @_RINvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa34skip_empty_utf8_splits_overlappingNCNvMs_B2_NtB2_3DFA26try_search_overlapping_fwd0EB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1) #25, !dbg !14389, !noalias !14242 ; 2 uses
    #dbg_value(ptr %i.x, !14390, !DIExpression(), !14397)
  %.not.us.i = icmp eq ptr %i.x, null, !dbg !14399
  br i1 %.not.us.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us_crit_edge.i, label %.loopexit, !dbg !14400

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us_crit_edge.i: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us.i
  %.sroa.03.0.copyload.us.pre.i = load i64, ptr %i.a, align 8, !dbg !14401, !noalias !14292
  br label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i, !dbg !14400

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us_crit_edge.i, %bb.e
  %.sroa.03.0.copyload.us.i = phi i64 [ %.sroa.03.0.copyload.us.pre.i, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.us._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us_crit_edge.i ], [ %.sroa.05.0.copyload.i.us.i, %bb.e ], !dbg !14401
    #dbg_value(ptr %i.a, !14404, !DIExpression(), !14406)
  %i.y = trunc nuw i64 %.sroa.03.0.copyload.us.i to i1, !dbg !14407
  br i1 %i.y, label %bb.f, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, !dbg !14407

bb.f:                                             ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.us.i
  %.sroa.7.0.copyload.us.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !14401, !noalias !14292
    #dbg_value(i64 poison, !14278, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14408)
    #dbg_value(i32 %.sroa.7.0.copyload.us.i, !14278, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14408)
  call void @llvm.experimental.noalias.scope.decl(metadata !14409), !dbg !14412
    #dbg_value(ptr %3, !14413, !DIExpression(), !14439)
    #dbg_value(i32 %.sroa.7.0.copyload.us.i, !14438, !DIExpression(), !14439)
    #dbg_value(ptr poison, !14441, !DIExpression(), !14444)
    #dbg_value(ptr poison, !14446, !DIExpression(), !14449)
    #dbg_value(i32 %.sroa.7.0.copyload.us.i, !14451, !DIExpression(), !14467)
  %i.z = zext i32 %.sroa.7.0.copyload.us.i to i64, !dbg !14469 ; 2 uses
  %.not.i16.us.i = icmp ugt i64 %i.l, %i.z, !dbg !14470
  br i1 %.not.i16.us.i, label %bb.g, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, !dbg !14470

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.m, !14462, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14467)
    #dbg_value(i64 %i.l, !14462, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14467)
    #dbg_value(ptr poison, !14441, !DIExpression(), !14471)
    #dbg_value(ptr poison, !14446, !DIExpression(), !14473)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.z, !dbg !14476 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !14477, !range !10752, !noalias !14478, !noundef !29
  %i.ac = trunc nuw i8 %i.ab to i1, !dbg !14477
  br i1 %i.ac, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, label %bb.h, !dbg !14477

bb.h:                                             ; preds = %bb.g
  %i.ad = add i64 %.promoted.i, 1, !dbg !14480
  store i64 %i.ad, ptr %i.n, align 8, !dbg !14480, !alias.scope !14481, !noalias !14482
    #dbg_value(ptr poison, !14441, !DIExpression(), !14483)
    #dbg_value(ptr poison, !14446, !DIExpression(), !14498)
  store i8 1, ptr %i.aa, align 1, !dbg !14501, !noalias !14478
  br label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, !dbg !14502

.split.i:                                         ; preds = %bb.b, %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i
  %i.ae = phi i64 [ %i.as, %_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet10try_insert.exit.i ], [ %.promoted.i, %bb.b ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14309), !dbg !14310
  call void @llvm.experimental.noalias.scope.decl(metadata !14311), !dbg !14310
    #dbg_value(ptr %0, !14312, !DIExpression(), !14328)
    #dbg_value(ptr %1, !14319, !DIExpression(), !14328)
    #dbg_value(ptr %2, !14320, !DIExpression(), !14328)
    #dbg_value(ptr %i.a, !14321, !DIExpression(), !14328)
    #dbg_value(ptr %i.a, !14330, !DIExpression(), !14337)
    #dbg_value(ptr %0, !14339, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !14342)
  %i.af = load i8, ptr %i.i, align 2, !dbg !14344, !range !10752, !noalias !14503, !noundef !29
  %i.ag = trunc nuw i8 %i.af to i1, !dbg !14344
  br i1 %i.ag, label %bb.i, label %bb.j, !dbg !14346

bb.i:                                             ; preds = %.split.i
    #dbg_value(ptr %0, !14347, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !14350)
  %i.ah = load i8, ptr %i.j, align 1, !dbg !14352, !range !10752, !noalias !14503, !noundef !29
    #dbg_value(i8 %i.ah, !14322, !DIExpression(), !14353)
  %i.ai = trunc nuw i8 %i.ah to i1, !dbg !14354
  br label %bb.j, !dbg !14346

bb.j:                                             ; preds = %bb.i, %.split.i
  %.sroa.01.0.not.i.i = phi i1 [ %i.ai, %bb.i ], [ false, %.split.i ], !dbg !14355
    #dbg_value(i8 poison, !14322, !DIExpression(), !14353)
  %i.aj = call noundef align 8 ptr @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search20find_overlapping_fwd(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #25, !dbg !14356, !noalias !14242 ; 2 uses
    #dbg_value(ptr %i.aj, !14357, !DIExpression(), !14381)
  %.not.i.i = icmp eq ptr %i.aj, null, !dbg !14383
  br i1 %.not.i.i, label %bb.k, label %.loopexit, !dbg !14384

bb.k:                                             ; preds = %bb.j
  %.sroa.05.0.copyload.i.i = load i64, ptr %i.a, align 8, !dbg !14385, !alias.scope !14311, !noalias !14386 ; 2 uses
  %i.ak = trunc nuw i64 %.sroa.05.0.copyload.i.i to i1, !dbg !14387
  %brmerge.not.i.i = select i1 %i.ak, i1 %.sroa.01.0.not.i.i, i1 false, !dbg !14387
  br i1 %brmerge.not.i.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i, !dbg !14387, !prof !14388

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i: ; preds = %bb.k
  %i.al = call noundef align 8 ptr @_RINvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfa34skip_empty_utf8_splits_overlappingNCNvMs_B2_NtB2_3DFA26try_search_overlapping_fwd0EB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %1) #25, !dbg !14389, !noalias !14242 ; 2 uses
    #dbg_value(ptr %i.al, !14390, !DIExpression(), !14397)
  %.not.i = icmp eq ptr %i.al, null, !dbg !14399
  br i1 %.not.i, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread_crit_edge.i, label %.loopexit, !dbg !14400

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread_crit_edge.i: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.i
  %.sroa.03.0.copyload.pre.i = load i64, ptr %i.a, align 8, !dbg !14401, !noalias !14292
  br label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i, !dbg !14400

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread_crit_edge.i, %bb.k
  %.sroa.03.0.copyload.i = phi i64 [ %.sroa.03.0.copyload.pre.i, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit._RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread_crit_edge.i ], [ %.sroa.05.0.copyload.i.i, %bb.k ], !dbg !14401
    #dbg_value(ptr %i.a, !14404, !DIExpression(), !14406)
  %i.am = trunc nuw i64 %.sroa.03.0.copyload.i to i1, !dbg !14407
  br i1 %i.am, label %bb.l, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA29try_which_overlapping_matches.exit.thread, !dbg !14407

bb.l:                                             ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA26try_search_overlapping_fwd.exit.thread.i
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !14401, !noalias !14292
    #dbg_value(i64 poison, !14278, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14408)
    #dbg_value(i32 %.sroa.7.0.copyload.i, !14278, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !14408)
  call void @llvm.experimental.noalias.scope.decl(metadata !14409), !dbg !14412
    #dbg_value(ptr %3, !14413, !DIExpression(), !14439)
end_hunk_1
begin_hunk_2_@_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3new:bb.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm6ConfigEBJ_.exit.i.i.i.i: ; preds = %bb.dl, %bb.dk, %bb.dj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers18BoundedBacktrackerEBH_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17060), !dbg !16975
    #dbg_value(ptr %i.y, !3186, !DIExpression(), !17063)
  call void @llvm.experimental.noalias.scope.decl(metadata !17065), !dbg !17068
    #dbg_value(ptr %i.y, !3194, !DIExpression(), !17069)
  call void @llvm.experimental.noalias.scope.decl(metadata !17071), !dbg !17074
    #dbg_value(ptr %i.y, !3204, !DIExpression(), !17075)
    #dbg_value(ptr %i.y, !6038, !DIExpression(), !17077)
    #dbg_value(i64 1, !3209, !DIExpression(), !17079)
    #dbg_value(i8 1, !3213, !DIExpression(), !17079)
    #dbg_value(i64 1, !3216, !DIExpression(), !17081)
    #dbg_value(i8 1, !3220, !DIExpression(), !17081)
  %i.ji = load ptr, ptr %i.y, align 8, !dbg !17083, !alias.scope !17085, !noalias !16162, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.ji, !3212, !DIExpression(), !17086)
    #dbg_value(ptr %i.ji, !3219, !DIExpression(), !17081)
  %i.jj = atomicrmw sub ptr %i.ji, i64 1 release, align 8, !dbg !17087, !noalias !17088
  %i.jk = icmp eq i64 %i.jj, 1, !dbg !17089
  br i1 %i.jk, label %bb.do, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers6PikeVMEBH_.exit.i, !dbg !17089

bb.do:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm6ConfigEBJ_.exit.i.i.i.i
    #dbg_value(i8 2, !3167, !DIExpression(), !17090)
  fence acquire, !dbg !17092
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.y) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers6PikeVMEBH_.exit.i unwind label %bb.bk, !dbg !17093, !noalias !16494

bb.dp:                                            ; preds = %bb.dn
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !16975, !noalias !16494
  unreachable, !dbg !16975

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers6PikeVMEBH_.exit.i: ; preds = %bb.do, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm6ConfigEBJ_.exit.i.i.i.i, %bb.br
  %.sroa.16.1 = phi ptr [ %.sroa.16.2, %bb.do ], [ %.sroa.16.2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm6ConfigEBJ_.exit.i.i.i.i ], [ %.sroa.615.i.sroa.0.0.copyload557, %bb.br ], !dbg !17094 ; 2 uses
  %.sroa.10.1 = phi i64 [ %.sroa.10.2, %bb.do ], [ %.sroa.10.2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevm6ConfigEBJ_.exit.i.i.i.i ], [ %i.gu, %bb.br ], !dbg !17095 ; 2 uses
    #dbg_value(i128 -1, !14805, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !16607)
    #dbg_value(i64 %.sroa.10.1, !14805, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16607)
    #dbg_value(ptr %.sroa.16.1, !14805, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !16607)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !16644, !noalias !16162
  call void @llvm.experimental.noalias.scope.decl(metadata !17096), !dbg !16517
    #dbg_value(ptr %i.ac, !3186, !DIExpression(), !17099)
  call void @llvm.experimental.noalias.scope.decl(metadata !17101), !dbg !17104
    #dbg_value(ptr %i.ac, !3194, !DIExpression(), !17105)
  call void @llvm.experimental.noalias.scope.decl(metadata !17107), !dbg !17110
    #dbg_value(ptr %i.ac, !3204, !DIExpression(), !17111)
    #dbg_value(ptr %i.ac, !6038, !DIExpression(), !17113)
    #dbg_value(i64 1, !3209, !DIExpression(), !17115)
    #dbg_value(i8 1, !3213, !DIExpression(), !17115)
    #dbg_value(i64 1, !3216, !DIExpression(), !17117)
    #dbg_value(i8 1, !3220, !DIExpression(), !17117)
  %i.jm = load ptr, ptr %i.ac, align 8, !dbg !17119, !alias.scope !17121, !noalias !16162, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.jm, !3212, !DIExpression(), !17122)
    #dbg_value(ptr %i.jm, !3219, !DIExpression(), !17117)
  %i.jn = atomicrmw sub ptr %i.jm, i64 1 release, align 8, !dbg !17123, !noalias !17124
  %i.jo = icmp eq i64 %i.jn, 1, !dbg !17125
  br i1 %i.jo, label %bb.dq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit144.i, !dbg !17125

bb.dq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers6PikeVMEBH_.exit.i
    #dbg_value(i8 2, !3167, !DIExpression(), !17126)
  fence acquire, !dbg !17128
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit144.i unwind label %bb.bd, !dbg !17129, !noalias !16494

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit144.i: ; preds = %bb.du, %bb.dq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers6PikeVMEBH_.exit.i
  %.sroa.16.0 = phi ptr [ %.sroa.16.1, %bb.dq ], [ %.sroa.16.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers6PikeVMEBH_.exit.i ], [ %i.jv, %bb.du ], !dbg !17130
  %.sroa.10.0 = phi i64 [ %.sroa.10.1, %bb.dq ], [ %.sroa.10.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappers6PikeVMEBH_.exit.i ], [ -2, %bb.du ], !dbg !17130
    #dbg_value(i128 -1, !14805, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !16607)
    #dbg_value(i64 %.sroa.10.0, !14805, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16607)
    #dbg_value(ptr %.sroa.16.0, !14805, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !16607)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !16517, !noalias !16162
  call void @llvm.experimental.noalias.scope.decl(metadata !17131), !dbg !16452
    #dbg_value(ptr %i.as, !3078, !DIExpression(), !17134)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.as, i64 24, !dbg !17136
  %i.jq = load i8, ptr %i.jp, align 8, !dbg !17136, !range !3081, !alias.scope !17137, !noalias !16457, !noundef !29
  %i.jr = icmp eq i8 %i.jq, 2, !dbg !17136
  br i1 %i.jr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit146.i, label %bb.dr, !dbg !17136

bb.dr:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit144.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17138), !dbg !17136
    #dbg_value(ptr %i.as, !3085, !DIExpression(), !17141)
  call void @llvm.experimental.noalias.scope.decl(metadata !17143), !dbg !17146
    #dbg_value(ptr %i.as, !3097, !DIExpression(), !17147)
  call void @llvm.experimental.noalias.scope.decl(metadata !17149), !dbg !17152
    #dbg_value(ptr %i.as, !3111, !DIExpression(), !17153)
    #dbg_value(ptr %i.as, !3118, !DIExpression(), !17155)
    #dbg_value(i64 1, !3131, !DIExpression(), !17157)
    #dbg_value(i8 1, !3140, !DIExpression(), !17157)
    #dbg_value(i64 1, !3143, !DIExpression(), !17159)
    #dbg_value(i8 1, !3150, !DIExpression(), !17159)
  %i.js = load ptr, ptr %i.as, align 8, !dbg !17161, !alias.scope !17163, !noalias !16457, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.js, !3139, !DIExpression(), !17164)
    #dbg_value(ptr %i.js, !3149, !DIExpression(), !17159)
  %i.jt = atomicrmw sub ptr %i.js, i64 1 release, align 8, !dbg !17165, !noalias !17166
  %i.ju = icmp eq i64 %i.jt, 1, !dbg !17167
  br i1 %i.ju, label %bb.ds, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit146.i, !dbg !17167

bb.ds:                                            ; preds = %bb.dr
    #dbg_value(i8 2, !3167, !DIExpression(), !17168)
  fence acquire, !dbg !17170
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit146.i unwind label %bb.dw, !dbg !17171, !noalias !16492

bb.dt:                                            ; preds = %bb.bh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.20, ptr noundef nonnull align 8 dereferenceable(120) %i.gi, i64 120, i1 false), !dbg !17172, !noalias !16604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !16511, !noalias !16162
    #dbg_value(i64 -2, !14662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17173)
    #dbg_value(i64 %i.gh, !14662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17173)
    #dbg_value(i64 -2, !14805, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16607)
    #dbg_value(i64 %i.gh, !14805, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !16607)
    #dbg_value(i128 -1, !14805, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !16607)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.aa)
          to label %bb.du unwind label %bb.bd, !dbg !16493, !noalias !16494

bb.du:                                            ; preds = %bb.dt
  %i.jv = inttoptr i64 %i.gh to ptr, !dbg !16509
    #dbg_value(ptr %i.jv, !14662, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17173)
    #dbg_value(ptr %i.jv, !14805, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !16607)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !16493, !noalias !16162
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit144.i, !dbg !17174

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit.i: ; preds = %bb.dw, %bb.bc, %bb.bb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i
  %.pn117.i = phi { ptr, i32 } [ %i.jz, %bb.dw ], [ %.pn115.i, %bb.bc ], [ %.pn115.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i ], [ %.pn115.i, %bb.bb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17176), !dbg !16452
    #dbg_value(ptr %i.ad, !5880, !DIExpression(), !17179)
  call void @llvm.experimental.noalias.scope.decl(metadata !17181), !dbg !17184
    #dbg_value(ptr %i.ad, !5888, !DIExpression(), !17185)
  call void @llvm.experimental.noalias.scope.decl(metadata !17187), !dbg !17190
    #dbg_value(ptr %i.ad, !5902, !DIExpression(), !17191)
    #dbg_value(ptr %i.ad, !5907, !DIExpression(), !17193)
    #dbg_value(i64 1, !5916, !DIExpression(), !17195)
    #dbg_value(i8 1, !5920, !DIExpression(), !17195)
    #dbg_value(i64 1, !5923, !DIExpression(), !17197)
    #dbg_value(i8 1, !5927, !DIExpression(), !17197)
  %i.jw = load ptr, ptr %i.ad, align 8, !dbg !17199, !alias.scope !17201, !noalias !16162, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.jw, !5919, !DIExpression(), !17202)
    #dbg_value(ptr %i.jw, !5926, !DIExpression(), !17197)
  %i.jx = atomicrmw sub ptr %i.jw, i64 1 release, align 8, !dbg !17203, !noalias !17204
  %i.jy = icmp eq i64 %i.jx, 1, !dbg !17205
  br i1 %i.jy, label %bb.dv, label %.body, !dbg !17205

bb.dv:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit.i
    #dbg_value(i8 2, !3167, !DIExpression(), !17206)
  fence acquire, !dbg !17208
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta5regex10RegexInfoIE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #25
          to label %.body unwind label %bb.cg, !dbg !17209, !noalias !16492

bb.dw:                                            ; preds = %bb.ds
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit146.i: ; preds = %bb.ds, %bb.dr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit144.i
  call void @llvm.experimental.noalias.scope.decl(metadata !17210), !dbg !16452
    #dbg_value(ptr %i.ad, !5880, !DIExpression(), !17213)
  call void @llvm.experimental.noalias.scope.decl(metadata !17215), !dbg !17218
    #dbg_value(ptr %i.ad, !5888, !DIExpression(), !17219)
  call void @llvm.experimental.noalias.scope.decl(metadata !17221), !dbg !17224
    #dbg_value(ptr %i.ad, !5902, !DIExpression(), !17225)
    #dbg_value(ptr %i.ad, !5907, !DIExpression(), !17227)
    #dbg_value(i64 1, !5916, !DIExpression(), !17229)
    #dbg_value(i8 1, !5920, !DIExpression(), !17229)
    #dbg_value(i64 1, !5923, !DIExpression(), !17231)
    #dbg_value(i8 1, !5927, !DIExpression(), !17231)
  %i.ka = load ptr, ptr %i.ad, align 8, !dbg !17233, !alias.scope !17235, !noalias !16162, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.ka, !5919, !DIExpression(), !17236)
    #dbg_value(ptr %i.ka, !5926, !DIExpression(), !17231)
  %i.kb = atomicrmw sub ptr %i.ka, i64 1 release, align 8, !dbg !17237, !noalias !17238
  %i.kc = icmp eq i64 %i.kb, 1, !dbg !17239
  br i1 %i.kc, label %bb.dx, label %.thread580, !dbg !17239

bb.dx:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit146.i
    #dbg_value(i8 2, !3167, !DIExpression(), !17240)
  fence acquire, !dbg !17242
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta5regex10RegexInfoIE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #25
          to label %.thread580 unwind label %bb.dy, !dbg !17243

bb.dy:                                            ; preds = %bb.dx
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !17244

bb.dz:                                            ; preds = %bb.ay
  %i.ke = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !16148
  %i.kf = load ptr, ptr %i.ke, align 8, !dbg !17245, !alias.scope !16134, !noalias !16150, !nonnull !29, !align !11387, !noundef !29
  %i.kg = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !17246
  %i.kh = load i64, ptr %i.kg, align 8, !dbg !17246, !alias.scope !16134, !noalias !16150, !noundef !29
  store ptr %i.ey, ptr %i.as, align 8, !dbg !17247
  %.sroa.4427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !17247
  store ptr %i.kf, ptr %.sroa.4427.0..sroa_idx, align 8, !dbg !17247
  %.sroa.5428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !17247
  store i64 %i.kh, ptr %.sroa.5428.0..sroa_idx, align 8, !dbg !17247
  br label %bb.ba, !dbg !17248

.thread580:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit146.i, %bb.dx
    #dbg_value(i128 -1, !14805, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !16607)
    #dbg_value(i64 %.sroa.10.0, !14805, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16607)
    #dbg_value(ptr %.sroa.16.0, !14805, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !16607)
    #dbg_value(ptr poison, !14805, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !16607)
    #dbg_value(ptr poison, !14805, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !16607)
    #dbg_value(ptr poison, !14805, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !16607)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !17249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !17249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !17244
  br label %bb.eb, !dbg !17250

bb.ea:                                            ; preds = %bb.cf, %bb.cr
  %.sroa.050.i.sroa.0.0.copyload = phi i128 [ %.sroa.050.i.sroa.0.0.copyload.pre, %bb.cr ], [ 2, %bb.cf ], !dbg !16764 ; 6 uses
  %i.ki = phi ptr [ %.pre193.i, %bb.cr ], [ %.val121.i, %bb.cf ], !dbg !16765 ; 7 uses
  %.sroa.15.sroa.19.sroa.16.0.copyload481 = phi ptr [ %i.hu, %bb.cr ], [ null, %bb.cf ], !dbg !17251 ; 3 uses
    #dbg_value(i8 0, !14730, !DIExpression(), !16681)
    #dbg_value(ptr %.sroa.15.sroa.19.sroa.16.0.copyload481, !14727, !DIExpression(), !16681)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.050.i.sroa.7), !dbg !16764
  %.sroa.050.i.sroa.7.1440..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.050.i.sroa.7, i64 1288, !dbg !17252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.050.i.sroa.7.1440..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false), !dbg !17252, !noalias !16457
  %i.kj = load ptr, ptr %i.ac, align 8, !dbg !17253, !noalias !16162, !nonnull !29, !noundef !29 ; 3 uses
  %.sroa.050.i.sroa.7.1472..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.050.i.sroa.7, i64 1320, !dbg !17254
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.050.i.sroa.7.1472..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false), !dbg !17254, !noalias !16162
  %.sroa.050.i.sroa.7.1520..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.050.i.sroa.7, i64 1368, !dbg !17255
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.050.i.sroa.7.1520..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.v, i64 56, i1 false), !dbg !17255, !noalias !16162
  %.sroa.050.i.sroa.7.1576..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.050.i.sroa.7, i64 1424, !dbg !17256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %.sroa.050.i.sroa.7.1576..sroa_idx, ptr noundef nonnull align 8 dereferenceable(376) %i.s, i64 376, i1 false), !dbg !17256, !noalias !16162
  %.sroa.050.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !16764
  %.sroa.050.i.sroa.4.0.copyload = load i64, ptr %.sroa.050.i.sroa.4.0..sroa_idx, align 16, !dbg !16764, !noalias !16162 ; 4 uses
  %.sroa.050.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !16764
  %.sroa.050.i.sroa.5.0.copyload = load ptr, ptr %.sroa.050.i.sroa.5.0..sroa_idx, align 8, !dbg !16764, !noalias !16162 ; 4 uses
  %.sroa.050.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !16764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.20, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.050.i.sroa.6.0..sroa_idx, i64 120, i1 false), !dbg !16764, !noalias !16604
  %.sroa.050.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 152, !dbg !16764
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1288) %.sroa.050.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(1288) %.sroa.050.i.sroa.7.0..sroa_idx, i64 1288, i1 false), !dbg !16764, !noalias !16162
    #dbg_value(i128 %.sroa.050.i.sroa.0.0.copyload, !14805, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !16607)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !14805, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16607)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !14805, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !16607)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.24, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.050.i.sroa.7, i64 1800, i1 false), !dbg !17257, !noalias !16604
    #dbg_value(ptr %i.ki, !14805, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !16607)
    #dbg_value(ptr %i.kj, !14805, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !16607)
    #dbg_value(ptr %.sroa.15.sroa.19.sroa.16.0.copyload481, !14805, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !16607)
    #dbg_value(i8 0, !14805, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !16607)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.050.i.sroa.7), !dbg !17258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !16662, !noalias !16162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !16661, !noalias !16162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !16644, !noalias !16162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !16517, !noalias !16162
    #dbg_value(i128 %.sroa.050.i.sroa.0.0.copyload, !14805, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !16607)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !14805, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !16607)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !14805, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !16607)
    #dbg_value(ptr %i.ki, !14805, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !16607)
    #dbg_value(ptr %i.kj, !14805, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !16607)
    #dbg_value(ptr %.sroa.15.sroa.19.sroa.16.0.copyload481, !14805, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !16607)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !17249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !17249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !17244
  %i.kk = icmp eq i128 %.sroa.050.i.sroa.0.0.copyload, -1, !dbg !17259
  br i1 %i.kk, label %bb.eb, label %bb.ec, !dbg !17250

bb.eb:                                            ; preds = %.thread580, %bb.ea
  %.sroa.10.3588 = phi i64 [ %.sroa.10.0, %.thread580 ], [ %.sroa.050.i.sroa.4.0.copyload, %bb.ea ]
  %.sroa.16.3587 = phi ptr [ %.sroa.16.0, %.thread580 ], [ %.sroa.050.i.sroa.5.0.copyload, %bb.ea ]
    #dbg_value(i64 %.sroa.10.3588, !14783, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17260)
    #dbg_value(ptr %.sroa.16.3587, !14783, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17260)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.615.sroa.8, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.20, i64 120, i1 false), !dbg !17261
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20), !dbg !17262
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24), !dbg !17262
    #dbg_value(i64 %.sroa.10.3588, !14593, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17263)
    #dbg_value(i64 %.sroa.10.3588, !14778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17264)
    #dbg_value(ptr %.sroa.16.3587, !14593, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17263)
    #dbg_value(ptr %.sroa.16.3587, !14778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17264)
  %.sroa.5556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17265
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.5556.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.615.sroa.8, i64 120, i1 false), !dbg !17262
    #dbg_value(i64 %.sroa.10.3588, !14772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17266)
    #dbg_value(ptr %.sroa.16.3587, !14772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17266)
  store i64 %.sroa.10.3588, ptr %0, align 8, !dbg !17265
  %.sroa.4555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17265
  store ptr %.sroa.16.3587, ptr %.sroa.4555.0..sroa_idx, align 8, !dbg !17265
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.sroa.8), !dbg !17267
  br label %bb.gb, !dbg !17268

bb.ec:                                            ; preds = %bb.ea
    #dbg_value(i128 %.sroa.050.i.sroa.0.0.copyload, !14806, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !17270)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !14806, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17270)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !14806, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !17270)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.615.sroa.8, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.20, i64 120, i1 false), !dbg !17271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.24, i64 1800, i1 false), !dbg !17271
    #dbg_value(ptr %i.ki, !14806, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !17270)
    #dbg_value(ptr %i.kj, !14806, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !17270)
    #dbg_value(ptr %.sroa.15.sroa.19.sroa.16.0.copyload481, !14806, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !17270)
    #dbg_value(i8 0, !14806, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !17270)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.20), !dbg !17262
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24), !dbg !17262
    #dbg_value(i128 %.sroa.050.i.sroa.0.0.copyload, !14608, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !17272)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !14608, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17272)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !14608, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !17272)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.615.sroa.8, i64 120, i1 false), !dbg !14809
    #dbg_value(ptr %i.ki, !14608, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !17272)
    #dbg_value(ptr %i.kj, !14608, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !17272)
    #dbg_value(ptr %.sroa.15.sroa.19.sroa.16.0.copyload481, !14608, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !17272)
    #dbg_value(i8 0, !14608, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !17272)
    #dbg_value(i128 %.sroa.050.i.sroa.0.0.copyload, !14591, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !17273)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !14591, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17273)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !14591, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !17273)
    #dbg_value(ptr %i.ki, !14591, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !17273)
    #dbg_value(ptr %i.kj, !14591, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !17273)
    #dbg_value(ptr %.sroa.15.sroa.19.sroa.16.0.copyload481, !14591, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !17273)
    #dbg_value(i8 0, !14591, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !17273)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.615.sroa.8), !dbg !17267
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5181.sroa.6.sroa.7), !dbg !17274
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5181.sroa.7), !dbg !17274
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5181.sroa.11), !dbg !17274
    #dbg_value(i128 %.sroa.050.i.sroa.0.0.copyload, !14923, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !17275)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !14923, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17275)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !14923, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !17275)
    #dbg_value(ptr %i.ki, !14923, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !17275)
    #dbg_value(ptr %i.kj, !14923, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !17275)
    #dbg_value(ptr %.sroa.15.sroa.19.sroa.16.0.copyload481, !14923, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !17275)
    #dbg_value(i8 0, !14923, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !17275)
    #dbg_value(i32 2, !17276, !DIExpression(), !17280)
    #dbg_value(i32 1, !17276, !DIExpression(), !17287)
    #dbg_value(ptr undef, !17285, !DIExpression(DW_OP_plus_uconst, 1952, DW_OP_stack_value), !17293)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ki) ]
    #dbg_value(ptr %i.ki, !17294, !DIExpression(DW_OP_plus_uconst, 184, DW_OP_stack_value), !17298)
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 184, !dbg !17300 ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !dbg !17300, !noalias !17301, !nonnull !29, !noundef !29 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 64, !dbg !17300
  %i.ko = load i32, ptr %i.kn, align 8, !dbg !17300, !noalias !17301, !noundef !29
    #dbg_value(i32 %i.ko, !17279, !DIExpression(), !17280)
  %i.kp = and i32 %i.ko, 2, !dbg !17305
  %.not.i113 = icmp eq i32 %i.kp, 0, !dbg !17305
  br i1 %.not.i113, label %.thread590, label %bb.ed, !dbg !17306

bb.ed:                                            ; preds = %bb.ec
    #dbg_value(ptr undef, !17291, !DIExpression(DW_OP_plus_uconst, 1952, DW_OP_stack_value), !17307)
    #dbg_value(ptr %i.ki, !17308, !DIExpression(DW_OP_plus_uconst, 184, DW_OP_stack_value), !17311)
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 60, !dbg !17313
  %i.kr = load i32, ptr %i.kq, align 4, !dbg !17313, !noalias !17301, !noundef !29
    #dbg_value(i32 %i.kr, !17279, !DIExpression(), !17287)
  %i.ks = and i32 %i.kr, 1, !dbg !17314
  %.not6.i = icmp eq i32 %i.ks, 0, !dbg !17314
  br i1 %.not6.i, label %bb.ef, label %.thread590, !dbg !17315

bb.ee:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata.exit.i.i.i, %bb.fp
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !17316

.thread590:                                       ; preds = %bb.ed, %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.5181.sroa.6.sroa.7, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !17275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.5181.sroa.7, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !17275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5181.sroa.11, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !17275
  br label %bb.eg, !dbg !17317

bb.ef:                                            ; preds = %bb.ed
    #dbg_value(ptr undef, !14959, !DIExpression(), !14961)
    #dbg_value(ptr undef, !14945, !DIExpression(), !14951)
  %.not7.i.not = icmp eq i128 %.sroa.050.i.sroa.0.0.copyload, 2, !dbg !17318
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.5181.sroa.6.sroa.7, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !17275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.5181.sroa.7, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !17275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5181.sroa.11, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !17275
  br i1 %.not7.i.not, label %bb.eg, label %bb.fw, !dbg !17317

bb.eg:                                            ; preds = %.thread590, %bb.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.5181.sroa.6.sroa.7, i64 120, i1 false), !dbg !17319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.5181.sroa.7, i64 1800, i1 false), !dbg !17319
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5181.sroa.11, i64 7, i1 false), !dbg !17319
    #dbg_value(i128 %.sroa.050.i.sroa.0.0.copyload, !14591, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !17273)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !14591, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17273)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !14591, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !17273)
    #dbg_value(ptr %i.ki, !14591, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !17273)
    #dbg_value(ptr %i.kj, !14591, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !17273)
    #dbg_value(ptr %.sroa.15.sroa.19.sroa.16.0.copyload481, !14591, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !17273)
    #dbg_value(i8 0, !14591, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !17273)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5181.sroa.6.sroa.7), !dbg !17320
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5181.sroa.7), !dbg !17320
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5181.sroa.11), !dbg !17320
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.sroa.16.sroa.17), !dbg !17321
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.sroa.17), !dbg !17321
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15.sroa.21), !dbg !17321
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.26223), !dbg !17321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !17322
  store i128 %.sroa.050.i.sroa.0.0.copyload, ptr %i.ar, align 16, !dbg !17322
  %.sroa.11.0..sroa_idx165 = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !17322 ; 2 uses
  store i64 %.sroa.050.i.sroa.4.0.copyload, ptr %.sroa.11.0..sroa_idx165, align 16, !dbg !17322
  %.sroa.11.sroa.11.0..sroa.11.0..sroa_idx165.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24, !dbg !17322
  store ptr %.sroa.050.i.sroa.5.0.copyload, ptr %.sroa.11.sroa.11.0..sroa.11.0..sroa_idx165.sroa_idx, align 8, !dbg !17322
  %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx165.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 32, !dbg !17322 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx165.sroa_idx, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !17322
  %.sroa.12.0..sroa_idx171 = getelementptr inbounds nuw i8, ptr %i.ar, i64 152, !dbg !17322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.0..sroa_idx171, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !17322
  %.sroa.12.sroa.11.0..sroa.12.0..sroa_idx171.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1952, !dbg !17322
  store ptr %i.ki, ptr %.sroa.12.sroa.11.0..sroa.12.0..sroa_idx171.sroa_idx, align 16, !dbg !17322
  %.sroa.12.sroa.12.0..sroa.12.0..sroa_idx171.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1960, !dbg !17322
  store ptr %i.kj, ptr %.sroa.12.sroa.12.0..sroa.12.0..sroa_idx171.sroa_idx, align 8, !dbg !17322
  %.sroa.12.sroa.12.sroa.11.0..sroa.12.sroa.12.0..sroa.12.0..sroa_idx171.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1968, !dbg !17322 ; 2 uses
  store ptr %.sroa.15.sroa.19.sroa.16.0.copyload481, ptr %.sroa.12.sroa.12.sroa.11.0..sroa.12.sroa.12.0..sroa.12.0..sroa_idx171.sroa_idx.sroa_idx, align 16, !dbg !17322
  %.sroa.12.sroa.13.0..sroa.12.0..sroa_idx171.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1976, !dbg !17322 ; 2 uses
  store i8 0, ptr %.sroa.12.sroa.13.0..sroa.12.0..sroa_idx171.sroa_idx, align 8, !dbg !17322
  %.sroa.12.sroa.14.0..sroa.12.0..sroa_idx171.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 1977, !dbg !17322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14.0..sroa.12.0..sroa_idx171.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !17322
  call void @llvm.experimental.noalias.scope.decl(metadata !17323), !dbg !17321
    #dbg_declare(ptr %i.ar, !14646, !DIExpression(), !17326)
    #dbg_value(ptr %2, !14647, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17327)
    #dbg_value(i64 %3, !14647, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17327)
    #dbg_declare(ptr %i.l, !14649, !DIExpression(), !17328)
    #dbg_declare(ptr %i.k, !14655, !DIExpression(), !17329)
    #dbg_value(i8 1, !17330, !DIExpression(), !17336)
    #dbg_value(i8 1, !17342, !DIExpression(), !17350)
    #dbg_value(i32 1, !17356, !DIExpression(), !17360)
    #dbg_value(i8 1, !17342, !DIExpression(), !17366)
    #dbg_value(ptr %i.ki, !17340, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17370)
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ki, i64 148, !dbg !17371
  %i.kv = load i8, ptr %i.ku, align 4, !dbg !17371, !range !3081, !noalias !17372, !noundef !29
    #dbg_value(i8 %i.kv, !17333, !DIExpression(), !17336)
  %cond.i = icmp eq i8 %i.kv, 0, !dbg !17375
  br i1 %cond.i, label %bb.ei, label %bb.eh, !dbg !17375

bb.eh:                                            ; preds = %bb.eg
    #dbg_value(ptr %i.ki, !17354, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !17376)
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ki, i64 146, !dbg !17377
  %i.kx = load i8, ptr %i.kw, align 2, !dbg !17377, !range !3081, !noalias !17378, !noundef !29
    #dbg_value(i8 %i.kx, !17345, !DIExpression(), !17350)
  %cond43.i = icmp eq i8 %i.kx, 0, !dbg !17379
  br i1 %cond43.i, label %bb.ek, label %bb.ej, !dbg !17379

bb.ei:                                            ; preds = %bb.eg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !17380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !17380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !17380
  br label %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit.thread, !dbg !17381

bb.ej:                                            ; preds = %bb.eh
    #dbg_value(ptr %i.ar, !17364, !DIExpression(DW_OP_plus_uconst, 1952, DW_OP_stack_value), !17383)
    #dbg_value(ptr %i.ki, !17384, !DIExpression(DW_OP_plus_uconst, 184, DW_OP_stack_value), !17387)
  %i.ky = load ptr, ptr %i.kl, align 8, !dbg !17389, !noalias !17378, !nonnull !29, !noundef !29
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 60, !dbg !17389
  %i.la = load i32, ptr %i.kz, align 4, !dbg !17389, !noalias !17378, !noundef !29
    #dbg_value(i32 %i.la, !17359, !DIExpression(), !17360)
  %i.lb = and i32 %i.la, 1, !dbg !17390
  %.not32.i = icmp eq i32 %i.lb, 0, !dbg !17390
  br i1 %.not32.i, label %bb.el, label %bb.em, !dbg !17391

bb.ek:                                            ; preds = %bb.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !17392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !17392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !17392
  br label %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit.thread, !dbg !17381

bb.el:                                            ; preds = %bb.ej
    #dbg_value(ptr %i.ar, !17393, !DIExpression(), !17396)
    #dbg_value(ptr %i.ar, !17398, !DIExpression(), !17401)
  %.not33.i.not = icmp eq i128 %.sroa.050.i.sroa.0.0.copyload, 2, !dbg !17403
end_hunk_2
begin_hunk_3_@_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy3new:bb.a
    #dbg_value(ptr %i.l, !17533, !DIExpression(), !17789)
    #dbg_value(i64 0, !17790, !DIExpression(), !17797)
  %i.lf = load i64, ptr %i.l, align 8, !dbg !17799, !range !5454, !alias.scope !17441, !noalias !17372, !noundef !29 ; 3 uses
  %.not.i.i118 = icmp eq i64 %i.lf, -1, !dbg !17799
  br i1 %.not.i.i118, label %bb.fe, label %bb.es, !dbg !17800

bb.es:                                            ; preds = %bb.er
    #dbg_value(ptr %i.l, !17534, !DIExpression(), !17801)
    #dbg_value(ptr %i.l, !17802, !DIExpression(), !17808)
    #dbg_value(ptr %i.l, !17795, !DIExpression(), !17810)
    #dbg_value(ptr %i.l, !17811, !DIExpression(), !17814)
    #dbg_value(ptr %i.l, !17816, !DIExpression(), !17819)
    #dbg_value(ptr %i.l, !17821, !DIExpression(), !17824)
    #dbg_value(ptr %i.l, !17811, !DIExpression(), !17826)
    #dbg_value(ptr %i.l, !17816, !DIExpression(), !17828)
    #dbg_value(ptr %i.l, !17821, !DIExpression(), !17831)
  %i.lg = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !17834
  %i.lh = load i64, ptr %i.lg, align 8, !dbg !17834, !alias.scope !17441, !noalias !17372, !noundef !29 ; 3 uses
  %i.li = icmp ult i64 %i.lh, 288230376151711744, !dbg !17835
  call void @llvm.assume(i1 %i.li), !dbg !17836
  %i.lj = icmp eq i64 %i.lh, 0, !dbg !17837
  br i1 %i.lj, label %bb.fe, label %bb.et, !dbg !17837, !prof !17838

bb.et:                                            ; preds = %bb.es
  %i.lk = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !17839
  %i.ll = load ptr, ptr %i.lk, align 8, !dbg !17839, !alias.scope !17441, !noalias !17372, !nonnull !29, !noundef !29 ; 4 uses
    #dbg_value(ptr %i.ll, !17846, !DIExpression(), !17852)
    #dbg_value(ptr %i.ll, !17854, !DIExpression(), !17860)
    #dbg_value(ptr %i.ll, !17862, !DIExpression(), !17866)
    #dbg_value(ptr %i.ll, !17869, !DIExpression(), !17875)
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8, !dbg !17878
  %i.ln = load ptr, ptr %i.lm, align 8, !dbg !17878, !noalias !17899, !nonnull !29, !noundef !29 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 16, !dbg !17900
  %i.lp = load i64, ptr %i.lo, align 8, !dbg !17900, !noalias !17899, !noundef !29 ; 8 uses
    #dbg_value(ptr %i.ln, !17537, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17901)
    #dbg_value(ptr %i.ln, !17902, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17913)
    #dbg_value(ptr %i.ln, !17915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17926)
    #dbg_value(ptr %i.ln, !17929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17936)
    #dbg_value(ptr %i.ln, !17902, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17938)
    #dbg_value(ptr %i.ln, !17915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17940)
    #dbg_value(ptr %i.ln, !17929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17943)
    #dbg_value(i64 %i.lp, !17537, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17901)
    #dbg_value(i64 %i.lp, !17902, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17913)
    #dbg_value(i64 %i.lp, !17915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17926)
    #dbg_value(i64 %i.lp, !17929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17936)
    #dbg_value(i64 %i.lp, !17902, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17938)
    #dbg_value(i64 %i.lp, !17915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17940)
    #dbg_value(i64 %i.lp, !17929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17943)
    #dbg_value(i64 %i.lp, !17538, !DIExpression(), !17946)
    #dbg_value(i64 %i.lh, !17947, !DIExpression(), !17960)
    #dbg_value(i64 %i.lh, !17966, !DIExpression(), !17970)
    #dbg_value(ptr %i.ll, !17964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17972)
    #dbg_value(ptr %i.ll, !17951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17973)
    #dbg_value(i64 %i.lh, !17964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17972)
    #dbg_value(i64 %i.lh, !17951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17973)
    #dbg_value(ptr %i.ll, !17956, !DIExpression(), !17974)
    #dbg_value(ptr %i.ll, !17969, !DIExpression(), !17970)
  %i.lq = getelementptr inbounds nuw [32 x i8], ptr %i.ll, i64 %i.lh, !dbg !17975 ; 2 uses
    #dbg_value(ptr %i.ll, !17539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17976)
    #dbg_value(ptr %i.lq, !17539, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17976)
    #dbg_value(i64 1, !17539, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17976)
  %i.lr = ptrtoint ptr %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.lp
  br label %bb.eu, !dbg !17977

bb.eu:                                            ; preds = %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i, %bb.et
  %.not64.i.i = phi i1 [ false, %bb.et ], [ true, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i ], !dbg !17978
  %.sroa.11.0.i.i = phi i64 [ 1, %bb.et ], [ 0, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i ], !dbg !17978 ; 2 uses
  %.sroa.0.074.i.i = phi ptr [ %i.ll, %bb.et ], [ %.sroa.0.1.i.i, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i ], !dbg !17978 ; 4 uses
  %.sroa.04.0.i.i119 = phi i64 [ %i.lp, %bb.et ], [ %.sroa.0.1.i.i.i.i, %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i ], !dbg !17901 ; 8 uses
    #dbg_value(ptr %.sroa.0.074.i.i, !17539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17976)
    #dbg_value(i64 %.sroa.11.0.i.i, !17539, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17976)
    #dbg_value(i64 %.sroa.04.0.i.i119, !17538, !DIExpression(), !17946)
    #dbg_value(ptr undef, !17774, !DIExpression(), !17788)
    #dbg_value(i1 %.not64.i.i, !17979, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !17982)
  br i1 %.not64.i.i, label %bb.ev, label %bb.ew, !dbg !17984, !prof !9554

bb.ev:                                            ; preds = %bb.eu
    #dbg_value(ptr undef, !17777, !DIExpression(), !17786)
    #dbg_value(ptr %.sroa.0.074.i.i, !17780, !DIExpression(), !17985)
    #dbg_value(ptr %i.lq, !17782, !DIExpression(), !17986)
    #dbg_value(ptr poison, !17987, !DIExpression(), !17991)
    #dbg_value(ptr poison, !17990, !DIExpression(), !17993)
  %i.lt = icmp eq ptr %.sroa.0.074.i.i, %i.lq, !dbg !17994
  br i1 %i.lt, label %bb.ey, label %bb.ex, !dbg !17995

bb.ew:                                            ; preds = %bb.eu
    #dbg_value(i64 0, !17539, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17976)
    #dbg_value(ptr undef, !17750, !DIExpression(), !17765)
    #dbg_value(i64 %.sroa.11.0.i.i, !17755, !DIExpression(), !17765)
    #dbg_value(i64 32, !17996, !DIExpression(), !18007)
    #dbg_value(ptr %i.lq, !17758, !DIExpression(), !18024)
    #dbg_value(ptr %i.lq, !18021, !DIExpression(), !18025)
    #dbg_value(ptr %.sroa.0.074.i.i, !18022, !DIExpression(), !18025)
    #dbg_value(ptr %i.lq, !18013, !DIExpression(), !18026)
    #dbg_value(ptr %.sroa.0.074.i.i, !18014, !DIExpression(), !18026)
    #dbg_value(ptr %.sroa.0.074.i.i, !18006, !DIExpression(), !18027)
    #dbg_value(ptr %i.lq, !18005, !DIExpression(), !18027)
  %i.lu = ptrtoint ptr %.sroa.0.074.i.i to i64, !dbg !18028
  %i.lv = sub nuw i64 %i.lr, %i.lu, !dbg !18028
  %i.lw = lshr exact i64 %i.lv, 5, !dbg !18028
  %.not.i.not.i.i = icmp samesign ult i64 %.sroa.11.0.i.i, %i.lw, !dbg !18029
  %i.lx = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.074.i.i, i64 %.sroa.11.0.i.i, !dbg !18029
    #dbg_value(ptr poison, !17539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17976)
  br i1 %.not.i.not.i.i, label %bb.ex, label %bb.ey, !dbg !18030

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.sroa.02.0.i44.i = phi ptr [ %i.lx, %bb.ew ], [ %.sroa.0.074.i.i, %bb.ev ], !dbg !18031 ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i44.i, i64 32, !dbg !18031
    #dbg_value(ptr %.sroa.0.1.i.i, !17539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17976)
    #dbg_value(i64 0, !17539, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17976)
    #dbg_value(ptr %.sroa.02.0.i44.i, !17547, !DIExpression(), !18032)
    #dbg_value(ptr %.sroa.02.0.i44.i, !17846, !DIExpression(), !18033)
    #dbg_value(ptr %.sroa.02.0.i44.i, !17854, !DIExpression(), !18035)
    #dbg_value(ptr %.sroa.02.0.i44.i, !17862, !DIExpression(), !18038)
    #dbg_value(ptr %.sroa.02.0.i44.i, !17869, !DIExpression(), !18041)
    #dbg_value(i64 poison, !18044, !DIExpression(), !18062)
    #dbg_value(i64 poison, !18069, !DIExpression(), !18075)
    #dbg_value(ptr poison, !18067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18078)
    #dbg_value(ptr poison, !18051, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18079)
    #dbg_value(i64 poison, !18067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18078)
    #dbg_value(i64 poison, !18051, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18079)
    #dbg_value(ptr poison, !18052, !DIExpression(), !18080)
    #dbg_value(ptr poison, !18074, !DIExpression(), !18075)
  %i.ly = sub i64 %i.lp, %.sroa.04.0.i.i119, !dbg !18081 ; 2 uses
    #dbg_value(i64 %i.ly, !17910, !DIExpression(), !17913)
    #dbg_value(i64 %i.ly, !17921, !DIExpression(), !17926)
    #dbg_value(i64 %i.ly, !17934, !DIExpression(), !17936)
  %i.lz = icmp ugt i64 %.sroa.04.0.i.i119, %i.lp, !dbg !18082
  br i1 %i.lz, label %.invoke.i, label %bb.ez, !dbg !18082, !prof !9671

bb.ey:                                            ; preds = %bb.ew, %bb.ev
  %i.ma = sub i64 %i.lp, %.sroa.04.0.i.i119, !dbg !18083 ; 2 uses
    #dbg_value(i64 %i.ma, !17910, !DIExpression(), !17938)
    #dbg_value(i64 %i.ma, !17921, !DIExpression(), !17940)
    #dbg_value(i64 %i.ma, !17934, !DIExpression(), !17943)
  %i.mb = icmp ugt i64 %.sroa.04.0.i.i119, %i.lp, !dbg !18084
  br i1 %i.mb, label %.invoke.i, label %bb.fd, !dbg !18084, !prof !9671

bb.ez:                                            ; preds = %bb.ex
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i44.i, i64 8, !dbg !18085
  %i.md = load ptr, ptr %i.mc, align 8, !dbg !18085, !noalias !17899, !nonnull !29, !noundef !29 ; 2 uses
    #dbg_value(ptr %i.md, !18074, !DIExpression(), !18075)
    #dbg_value(ptr %i.md, !18052, !DIExpression(), !18080)
    #dbg_value(ptr %i.md, !18067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18078)
    #dbg_value(ptr %i.md, !18051, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18079)
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i44.i, i64 16, !dbg !18092
  %i.mf = load i64, ptr %i.me, align 8, !dbg !18092, !noalias !17899, !noundef !29 ; 3 uses
    #dbg_value(i64 %i.mf, !18067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18078)
    #dbg_value(i64 %i.mf, !18051, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18079)
    #dbg_value(i64 %i.mf, !18044, !DIExpression(), !18062)
    #dbg_value(i64 %i.mf, !18069, !DIExpression(), !18075)
    #dbg_value(i64 %.sroa.04.0.i.i119, !17922, !DIExpression(), !18093)
    #dbg_value(i64 %.sroa.04.0.i.i119, !17935, !DIExpression(), !17936)
    #dbg_value(i64 %.sroa.04.0.i.i119, !18069, !DIExpression(), !18094)
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.ly, !dbg !18100
    #dbg_value(ptr %i.mg, !18067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18101)
    #dbg_value(ptr %i.mg, !18051, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18102)
    #dbg_value(i64 %.sroa.04.0.i.i119, !18067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18101)
    #dbg_value(i64 %.sroa.04.0.i.i119, !18051, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18102)
    #dbg_value(ptr %i.mg, !18074, !DIExpression(), !18094)
    #dbg_value(ptr %i.md, !17506, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18103)
    #dbg_value(ptr %i.md, !17445, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18104)
    #dbg_value(!DIArgList(ptr %i.md, i64 %i.mf), !17506, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18103)
    #dbg_value(!DIArgList(ptr %i.md, i64 %i.mf), !17445, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !18104)
    #dbg_value(ptr %i.mg, !17506, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18103)
    #dbg_value(ptr %i.mg, !17445, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18104)
    #dbg_value(!DIArgList(ptr %i.ln, i64 %i.lp), !17506, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64), !18103)
    #dbg_value(!DIArgList(ptr %i.ln, i64 %i.lp), !17445, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 192, 64), !18104)
    #dbg_value(i8 0, !17506, !DIExpression(DW_OP_LLVM_fragment, 384, 8), !18103)
    #dbg_value(i8 0, !17445, !DIExpression(DW_OP_LLVM_fragment, 384, 8), !18104)
    #dbg_value(i64 0, !17494, !DIExpression(), !18104)
    #dbg_declare(ptr poison, !17495, !DIExpression(), !18105)
    #dbg_value(ptr undef, !17712, !DIExpression(), !17749)
    #dbg_value(i64 0, !17713, !DIExpression(), !17749)
    #dbg_declare(ptr poison, !17714, !DIExpression(), !18106)
    #dbg_value(ptr undef, !17715, !DIExpression(), !18107)
    #dbg_value(ptr undef, !17716, !DIExpression(DW_OP_plus_uconst, 49, DW_OP_stack_value), !18108)
    #dbg_value(ptr undef, !17677, !DIExpression(DW_OP_plus_uconst, 49, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !17748)
    #dbg_value(ptr undef, !17677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17748)
    #dbg_value(ptr undef, !17675, !DIExpression(), !17748)
    #dbg_value(i64 0, !17676, !DIExpression(), !17748)
    #dbg_value(i64 0, !17678, !DIExpression(), !18109)
    #dbg_value(ptr undef, !17634, !DIExpression(), !17747)
    #dbg_value(ptr undef, !17617, !DIExpression(), !17746)
    #dbg_value(ptr undef, !17589, !DIExpression(), !17745)
    #dbg_value(ptr undef, !17577, !DIExpression(), !17744)
    #dbg_value(ptr undef, !17741, !DIExpression(), !17743)
    #dbg_value(ptr undef, !17722, !DIExpression(), !17734)
    #dbg_value(i64 1, !17728, !DIExpression(), !17734)
    #dbg_value(i64 1, !18110, !DIExpression(), !18117)
    #dbg_value(i64 -1, !18119, !DIExpression(), !18126)
    #dbg_value(!DIArgList(ptr %i.md, i64 %i.mf), !17580, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !18128)
    #dbg_value(ptr undef, !17550, !DIExpression(), !17557)
    #dbg_value(ptr poison, !17556, !DIExpression(), !18129)
  %i.mh = icmp samesign eq i64 %i.mf, 0, !dbg !18130
  br i1 %i.mh, label %.thread64.i, label %.lr.ph.i.i.i.i.i, !dbg !18131

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ez
  %i.mi = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mf, !dbg !18132
    #dbg_value(ptr %i.mi, !17580, !DIExpression(), !18128)
    #dbg_value(ptr %i.mi, !17506, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18103)
    #dbg_value(ptr %i.mi, !17445, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18104)
    #dbg_value(ptr %i.ls, !17506, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18103)
    #dbg_value(ptr %i.ls, !17445, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18104)
  br label %bb.fa, !dbg !18131

bb.fa:                                            ; preds = %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRhB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB35_3Seq21longest_common_suffix0NCINvMB2h_B2e_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterhEEB5g_EB2X_EB1i_5count0E0E0Cs9GYDdpCSJ4S_14regex_automata.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.mj = phi ptr [ %i.ls, %.lr.ph.i.i.i.i.i ], [ %i.mn, %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRhB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB35_3Seq21longest_common_suffix0NCINvMB2h_B2e_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterhEEB5g_EB2X_EB1i_5count0E0E0Cs9GYDdpCSJ4S_14regex_automata.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.01.027.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.mr, %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRhB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB35_3Seq21longest_common_suffix0NCINvMB2h_B2e_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterhEEB5g_EB2X_EB1i_5count0E0E0Cs9GYDdpCSJ4S_14regex_automata.exit.i.i.i.i.i ] ; 2 uses
  %i.mk = phi ptr [ %i.mi, %.lr.ph.i.i.i.i.i ], [ %i.ml, %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRhB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB35_3Seq21longest_common_suffix0NCINvMB2h_B2e_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterhEEB5g_EB2X_EB1i_5count0E0E0Cs9GYDdpCSJ4S_14regex_automata.exit.i.i.i.i.i ]
    #dbg_value(i64 %.sroa.01.027.i.i.i.i.i, !17678, !DIExpression(), !18109)
    #dbg_value(ptr %i.mk, !17580, !DIExpression(), !18128)
    #dbg_value(ptr undef, !17731, !DIExpression(), !18133)
    #dbg_value(ptr %i.mk, !18116, !DIExpression(), !18117)
    #dbg_value(ptr %i.mk, !18125, !DIExpression(), !18126)
  %i.ml = getelementptr inbounds i8, ptr %i.mk, i64 -1, !dbg !18134 ; 3 uses
    #dbg_value(ptr %i.ml, !18116, !DIExpression(), !18117)
    #dbg_value(ptr %i.ml, !18125, !DIExpression(), !18126)
    #dbg_value(ptr %i.ml, !17618, !DIExpression(), !18135)
    #dbg_value(ptr undef, !17589, !DIExpression(), !18136)
    #dbg_value(ptr undef, !17577, !DIExpression(), !18138)
    #dbg_value(ptr undef, !17741, !DIExpression(), !18140)
    #dbg_value(ptr undef, !17722, !DIExpression(), !18142)
    #dbg_value(i64 1, !17728, !DIExpression(), !18142)
    #dbg_value(i64 1, !18110, !DIExpression(), !18144)
    #dbg_value(i64 -1, !18119, !DIExpression(), !18146)
    #dbg_value(ptr %i.mj, !17580, !DIExpression(), !18148)
    #dbg_value(ptr undef, !17550, !DIExpression(), !18149)
    #dbg_value(ptr poison, !17556, !DIExpression(), !18151)
  %i.mm = icmp eq ptr %i.mg, %i.mj, !dbg !18152
  br i1 %i.mm, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i, label %bb.fb, !dbg !18153

bb.fb:                                            ; preds = %bb.fa
    #dbg_value(ptr undef, !17731, !DIExpression(), !18154)
    #dbg_value(ptr %i.mj, !18116, !DIExpression(), !18144)
    #dbg_value(ptr %i.mj, !18125, !DIExpression(), !18146)
  %i.mn = getelementptr inbounds i8, ptr %i.mj, i64 -1, !dbg !18155 ; 2 uses
    #dbg_value(ptr %i.mn, !18116, !DIExpression(), !18144)
    #dbg_value(ptr %i.mn, !18125, !DIExpression(), !18146)
    #dbg_value(ptr %i.ml, !17679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18156)
    #dbg_value(ptr %i.mn, !17679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18156)
  call void @llvm.experimental.noalias.scope.decl(metadata !18157), !dbg !18160
  call void @llvm.experimental.noalias.scope.decl(metadata !18161), !dbg !18160
    #dbg_value(ptr %i.ml, !18163, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18176)
    #dbg_value(ptr %i.mn, !18163, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18176)
    #dbg_value(ptr poison, !18170, !DIExpression(DW_OP_deref), !18176)
    #dbg_value(ptr poison, !18172, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !18176)
    #dbg_value(i64 %.sroa.01.027.i.i.i.i.i, !18169, !DIExpression(), !18176)
    #dbg_value(ptr poison, !18178, !DIExpression(), !18188)
    #dbg_value(ptr poison, !18187, !DIExpression(), !18188)
    #dbg_value(ptr %i.ml, !18184, !DIExpression(), !18190)
    #dbg_value(ptr %i.ml, !18191, !DIExpression(), !18201)
    #dbg_value(ptr %i.mn, !18186, !DIExpression(), !18190)
    #dbg_value(ptr %i.mn, !18200, !DIExpression(), !18201)
    #dbg_value(ptr poison, !18209, !DIExpression(), !18215)
    #dbg_value(ptr poison, !18210, !DIExpression(), !18216)
  %i.mo = load i8, ptr %i.ml, align 1, !dbg !18217, !alias.scope !18157, !noalias !18218, !noundef !29
  %i.mp = load i8, ptr %i.mn, align 1, !dbg !18226, !alias.scope !18161, !noalias !18227, !noundef !29
  %i.mq = icmp eq i8 %i.mo, %i.mp, !dbg !18217
  br i1 %i.mq, label %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRhB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB35_3Seq21longest_common_suffix0NCINvMB2h_B2e_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterhEEB5g_EB2X_EB1i_5count0E0E0Cs9GYDdpCSJ4S_14regex_automata.exit.i.i.i.i.i, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i, !dbg !18228

_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRhB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB35_3Seq21longest_common_suffix0NCINvMB2h_B2e_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterhEEB5g_EB2X_EB1i_5count0E0E0Cs9GYDdpCSJ4S_14regex_automata.exit.i.i.i.i.i: ; preds = %bb.fb
    #dbg_value(i64 %.sroa.01.027.i.i.i.i.i, !18229, !DIExpression(), !18242)
    #dbg_value(ptr poison, !18236, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18242)
    #dbg_value(ptr poison, !18236, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18242)
    #dbg_value(ptr poison, !18244, !DIExpression(), !18252)
    #dbg_value(i64 %.sroa.01.027.i.i.i.i.i, !18250, !DIExpression(), !18252)
    #dbg_value(ptr poison, !18251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18252)
    #dbg_value(ptr poison, !18251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18252)
  %i.mr = add nuw i64 %.sroa.01.027.i.i.i.i.i, 1, !dbg !18254
    #dbg_value(i64 %i.mr, !17678, !DIExpression(), !18109)
    #dbg_value(ptr undef, !17634, !DIExpression(), !17747)
    #dbg_value(ptr undef, !17617, !DIExpression(), !17746)
    #dbg_value(ptr undef, !17589, !DIExpression(), !17745)
    #dbg_value(ptr undef, !17577, !DIExpression(), !17744)
    #dbg_value(ptr undef, !17741, !DIExpression(), !17743)
    #dbg_value(ptr undef, !17722, !DIExpression(), !17734)
    #dbg_value(i64 1, !17728, !DIExpression(), !17734)
    #dbg_value(i64 1, !18110, !DIExpression(), !18117)
    #dbg_value(i64 -1, !18119, !DIExpression(), !18126)
    #dbg_value(ptr %i.ml, !17580, !DIExpression(), !18128)
    #dbg_value(ptr undef, !17550, !DIExpression(), !17557)
    #dbg_value(ptr poison, !17556, !DIExpression(), !18129)
  %i.ms = icmp eq ptr %i.md, %i.ml, !dbg !18130
  br i1 %i.ms, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i, label %bb.fa, !dbg !18131

_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i: ; preds = %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRhB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB35_3Seq21longest_common_suffix0NCINvMB2h_B2e_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterhEEB5g_EB2X_EB1i_5count0E0E0Cs9GYDdpCSJ4S_14regex_automata.exit.i.i.i.i.i, %bb.fb, %bb.fa
  %.sroa.0.1.i.i.i.i = phi i64 [ %i.mf, %_RNCINvNvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRhB26_EjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB35_3Seq21longest_common_suffix0NCINvMB2h_B2e_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtBc_3rev3RevINtNtNtBg_5slice4iter4IterhEEB5g_EB2X_EB1i_5count0E0E0Cs9GYDdpCSJ4S_14regex_automata.exit.i.i.i.i.i ], [ %.sroa.01.027.i.i.i.i.i, %bb.fb ], [ %.sroa.04.0.i.i119, %bb.fa ], !dbg !17749 ; 2 uses
    #dbg_value(i64 %.sroa.0.1.i.i.i.i, !17538, !DIExpression(), !17946)
  %i.mt = icmp eq i64 %.sroa.0.1.i.i.i.i, 0, !dbg !18255
  br i1 %i.mt, label %.thread64.i, label %bb.eu, !dbg !18255

.invoke.i:                                        ; preds = %bb.ex, %bb.ey
  %i.mu = phi i64 [ %i.ma, %bb.ey ], [ %i.ly, %bb.ex ]
  %i.mv = phi ptr [ @27, %bb.ey ], [ @28, %bb.ex ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.mu, i64 noundef %i.lp, i64 noundef %i.lp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mv) #22
          to label %.cont.i unwind label %bb.fc, !dbg !18256, !noalias !17378

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit48.i: ; preds = %bb.fn, %bb.fm, %bb.fc
  %.sroa.09.2.i = phi i1 [ %.sroa.09.3.i, %bb.fc ], [ true, %bb.fn ], [ true, %bb.fm ], !dbg !17327
  %.pn.i120 = phi { ptr, i32 } [ %i.mw, %bb.fc ], [ %i.nj, %bb.fn ], [ %i.nj, %bb.fm ] ; 2 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #24
          to label %bb.ep unwind label %bb.fu, !dbg !18259, !noalias !17378

bb.fc:                                            ; preds = %bb.fl, %bb.ff, %.invoke.i
  %.sroa.09.3.i = phi i1 [ false, %bb.fl ], [ true, %bb.ff ], [ true, %.invoke.i ], !dbg !17327
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit48.i

bb.fd:                                            ; preds = %bb.ey
    #dbg_value(i64 %.sroa.04.0.i.i119, !17924, !DIExpression(), !18260)
    #dbg_value(i64 %.sroa.04.0.i.i119, !17935, !DIExpression(), !17943)
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.ma, !dbg !18261 ; 2 uses
    #dbg_value(ptr undef, !14622, !DIExpression(), !14660)
    #dbg_value(ptr %i.mx, !14650, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18262)
    #dbg_value(ptr %i.mx, !14652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18263)
    #dbg_value(ptr %i.mx, !18264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18269)
    #dbg_value(i64 %.sroa.04.0.i.i119, !14650, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18262)
    #dbg_value(i64 %.sroa.04.0.i.i119, !14652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18263)
    #dbg_value(i64 %.sroa.04.0.i.i119, !18264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18269)
  %i.my = icmp eq i64 %.sroa.04.0.i.i119, 0, !dbg !18271
  br i1 %i.my, label %.thread64.i, label %bb.ff, !dbg !18272

bb.fe:                                            ; preds = %bb.es, %bb.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !18273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !18273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !18273
  br label %bb.fq, !dbg !18274

bb.ff:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !18275, !noalias !17372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !18276, !noalias !17372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !18277, !noalias !17372
  store ptr %i.mx, ptr %i.i, align 8, !dbg !18277, !noalias !17372
  %i.mz = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !18277
  store i64 %.sroa.04.0.i.i119, ptr %i.mz, align 8, !dbg !18277, !noalias !17372
  invoke void @_RINvMNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB3_9Prefilter3newRShEB7_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, i1 noundef zeroext true, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef 1)
          to label %bb.fg unwind label %bb.fc, !dbg !18276, !noalias !17378

.thread64.i:                                      ; preds = %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterhEEB1r_ENCNvMs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir7literalNtB2n_3Seq21longest_common_suffix0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3E_5count0ECs9GYDdpCSJ4S_14regex_automata.exit.i.i, %bb.ez, %bb.fd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !18278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !18278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !18278
  br label %bb.fq, !dbg !18279

bb.fg:                                            ; preds = %bb.ff
  %i.na = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !18276
  %i.nb = load i8, ptr %i.na, align 8, !dbg !18276, !range !3081, !noalias !17372, !noundef !29
  %.not37.i = icmp eq i8 %i.nb, 2, !dbg !18276
  br i1 %.not37.i, label %bb.fi, label %bb.fh, !dbg !18281

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !dbg !18282, !noalias !17372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !18283, !noalias !17372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !18283, !noalias !17372
    #dbg_value(ptr %i.k, !18284, !DIExpression(), !18290)
  %i.nc = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !18292
  %i.nd = load i8, ptr %i.nc, align 8, !dbg !18292, !range !10752, !noalias !17372, !noundef !29
  %i.ne = trunc nuw i8 %i.nd to i1, !dbg !18292
  br i1 %i.ne, label %bb.fj, label %bb.fk, !dbg !18293

bb.fi:                                            ; preds = %bb.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !18294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !18294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !18294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !18283, !noalias !17372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !18283, !noalias !17372
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i, !dbg !18295

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i: ; preds = %bb.fl, %bb.fk, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !18297, !noalias !17372
  %.pre.i121 = load i64, ptr %i.l, align 8, !dbg !18298, !range !5454, !alias.scope !18301, !noalias !17372
  br label %bb.fq, !dbg !18295

bb.fj:                                            ; preds = %bb.fh
  %i.nf = invoke noundef zeroext i1 @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta14reverse_suffix20has_no_earlier_match(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mx, i64 noundef %.sroa.04.0.i.i119)
          to label %bb.fo unwind label %bb.fm, !dbg !18306, !noalias !17378

bb.fk:                                            ; preds = %bb.fh, %bb.fo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !18307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !18307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !18307
  call void @llvm.experimental.noalias.scope.decl(metadata !18308), !dbg !18297
    #dbg_value(ptr %i.k, !3085, !DIExpression(), !18311)
  call void @llvm.experimental.noalias.scope.decl(metadata !18313), !dbg !18316
    #dbg_value(ptr %i.k, !3097, !DIExpression(), !18317)
  call void @llvm.experimental.noalias.scope.decl(metadata !18319), !dbg !18322
    #dbg_value(ptr %i.k, !3111, !DIExpression(), !18323)
    #dbg_value(ptr %i.k, !3118, !DIExpression(), !18325)
    #dbg_value(i64 1, !3131, !DIExpression(), !18327)
    #dbg_value(i8 1, !3140, !DIExpression(), !18327)
    #dbg_value(i64 1, !3143, !DIExpression(), !18329)
    #dbg_value(i8 1, !3150, !DIExpression(), !18329)
  %i.ng = load ptr, ptr %i.k, align 8, !dbg !18331, !alias.scope !18333, !noalias !17372, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.ng, !3139, !DIExpression(), !18334)
    #dbg_value(ptr %i.ng, !3149, !DIExpression(), !18329)
  %i.nh = atomicrmw sub ptr %i.ng, i64 1 release, align 8, !dbg !18335, !noalias !18336
  %i.ni = icmp eq i64 %i.nh, 1, !dbg !18337
  br i1 %i.ni, label %bb.fl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i, !dbg !18337

bb.fl:                                            ; preds = %bb.fk
    #dbg_value(i8 2, !3167, !DIExpression(), !18338)
  fence acquire, !dbg !18340
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i unwind label %bb.fc, !dbg !18341, !noalias !17378

bb.fm:                                            ; preds = %bb.fj
  %i.nj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18342), !dbg !18297
    #dbg_value(ptr %i.k, !3085, !DIExpression(), !18345)
  call void @llvm.experimental.noalias.scope.decl(metadata !18347), !dbg !18350
    #dbg_value(ptr %i.k, !3097, !DIExpression(), !18351)
  call void @llvm.experimental.noalias.scope.decl(metadata !18353), !dbg !18356
    #dbg_value(ptr %i.k, !3111, !DIExpression(), !18357)
    #dbg_value(ptr %i.k, !3118, !DIExpression(), !18359)
    #dbg_value(i64 1, !3131, !DIExpression(), !18361)
    #dbg_value(i8 1, !3140, !DIExpression(), !18361)
    #dbg_value(i64 1, !3143, !DIExpression(), !18363)
    #dbg_value(i8 1, !3150, !DIExpression(), !18363)
  %i.nk = load ptr, ptr %i.k, align 8, !dbg !18365, !alias.scope !18367, !noalias !17372, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.nk, !3139, !DIExpression(), !18368)
    #dbg_value(ptr %i.nk, !3149, !DIExpression(), !18363)
  %i.nl = atomicrmw sub ptr %i.nk, i64 1 release, align 8, !dbg !18369, !noalias !18370
  %i.nm = icmp eq i64 %i.nl, 1, !dbg !18371
  br i1 %i.nm, label %bb.fn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit48.i, !dbg !18371

bb.fn:                                            ; preds = %bb.fm
    #dbg_value(i8 2, !3167, !DIExpression(), !18372)
  fence acquire, !dbg !18374
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit48.i unwind label %bb.fu, !dbg !18375, !noalias !17378

bb.fo:                                            ; preds = %bb.fj
  br i1 %i.nf, label %bb.fp, label %bb.fk, !dbg !18306

bb.fp:                                            ; preds = %bb.fo
  %.sroa.0563.0.copyload = load i128, ptr %i.ar, align 16, !dbg !18376, !noalias !17414 ; 2 uses
  %.sroa.4564.0.copyload = load i128, ptr %.sroa.11.0..sroa_idx165, align 16, !dbg !18376, !noalias !17414 ; 2 uses
  %.sroa.5565.0.copyload = load i64, ptr %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx165.sroa_idx, align 16, !dbg !18376, !noalias !17414 ; 2 uses
  %.sroa.6566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 40, !dbg !18376
  %.sroa.6566.0.copyload = load ptr, ptr %.sroa.6566.0..sroa_idx, align 8, !dbg !18376, !noalias !17414 ; 2 uses
  %.sroa.7567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 48, !dbg !18376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.7567.0..sroa_idx, i64 120, i1 false), !dbg !18376, !noalias !18377
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 168, !dbg !18376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.8.0..sroa_idx, i64 1800, i1 false), !dbg !18376, !noalias !18377
  %.sroa.9568.0.copyload = load ptr, ptr %.sroa.12.sroa.12.sroa.11.0..sroa.12.sroa.12.0..sroa.12.0..sroa_idx171.sroa_idx.sroa_idx, align 16, !dbg !18376, !noalias !17414 ; 2 uses
  %.sroa.10569.0.copyload = load ptr, ptr %.sroa.12.sroa.13.0..sroa.12.0..sroa_idx171.sroa_idx, align 8, !dbg !18376, !noalias !17414 ; 2 uses
  %.sroa.11.1984.copyload = load ptr, ptr %i.k, align 8, !dbg !18378, !noalias !17372 ; 2 uses
  %.sroa.13570.1984..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !18378
  %.sroa.13570.1984.copyload = load i8, ptr %.sroa.13570.1984..sroa_idx, align 8, !dbg !18378, !noalias !17372 ; 2 uses
  %.sroa.14571.1984..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 9, !dbg !18378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14571.1984..sroa_idx, i64 7, i1 false), !dbg !18378, !noalias !18379
  %.sroa.15.1984..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !18378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.26223, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.1984..sroa_idx, i64 16, i1 false), !dbg !18378, !noalias !18379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !18297, !noalias !17372
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l)
          to label %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit unwind label %bb.ee, !dbg !18259

bb.fq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i, %.thread64.i, %bb.fe
  %i.nn = phi i64 [ %i.lf, %bb.fe ], [ %i.lf, %.thread64.i ], [ %.pre.i121, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i ], !dbg !18298
    #dbg_value(ptr %i.l, !5439, !DIExpression(), !18380)
    #dbg_value(ptr %i.l, !5443, !DIExpression(), !18381)
  %i.no = icmp eq i64 %i.nn, -1, !dbg !18298
  br i1 %i.no, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqECs9GYDdpCSJ4S_14regex_automata.exit.i, label %bb.fr, !dbg !18298

bb.fr:                                            ; preds = %bb.fq
    #dbg_value(ptr %i.l, !3414, !DIExpression(), !18382)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata.exit.i.i.i unwind label %bb.fs, !dbg !18384, !noalias !17378

bb.fs:                                            ; preds = %bb.fr
  %i.np = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.l, !3419, !DIExpression(), !18385)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.ft, !dbg !18387, !noalias !17378

bb.ft:                                            ; preds = %bb.fs
  %i.nq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !18384, !noalias !17378
  unreachable, !dbg !18384

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata.exit.i.i.i: ; preds = %bb.fr
    #dbg_value(ptr %i.l, !3419, !DIExpression(), !18388)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqECs9GYDdpCSJ4S_14regex_automata.exit.i unwind label %bb.ee, !dbg !18390

bb.fu:                                            ; preds = %bb.fv, %bb.fn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit48.i
  %i.nr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !18391, !noalias !18392
  unreachable, !dbg !18391

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqECs9GYDdpCSJ4S_14regex_automata.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata.exit.i.i.i, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !18259, !noalias !17372
  br label %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit.thread, !dbg !17381

bb.fv:                                            ; preds = %.body.i117, %bb.ep
  %.pn3951.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i117 ], [ %.pn.i120, %bb.ep ]
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy4CoreEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(1984) %i.ar) #24
          to label %.body unwind label %bb.fu, !dbg !17435, !noalias !18392

bb.fw:                                            ; preds = %bb.ef
    #dbg_value(i128 %.sroa.050.i.sroa.0.0.copyload, !14612, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !18393)
    #dbg_value(i128 %.sroa.050.i.sroa.0.0.copyload, !14894, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !18394)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !14894, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18394)
    #dbg_value(i64 %.sroa.050.i.sroa.4.0.copyload, !14612, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18393)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !14894, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18394)
    #dbg_value(ptr %.sroa.050.i.sroa.5.0.copyload, !14612, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18393)
  %.sroa.4214.sroa.5.0..sroa.4214.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 48, !dbg !18395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !18395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.4214.sroa.5.0..sroa.4214.0..sroa_idx.sroa_idx, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !18396
  %.sroa.5215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 168, !dbg !18395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.5215.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !18396
    #dbg_value(ptr %i.ki, !14612, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !18393)
    #dbg_value(ptr %i.ki, !14894, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !18394)
    #dbg_value(ptr %i.kj, !14894, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !18394)
    #dbg_value(ptr %i.kj, !14612, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !18393)
    #dbg_value(ptr %.sroa.15.sroa.19.sroa.16.0.copyload481, !14894, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !18394)
    #dbg_value(ptr %.sroa.15.sroa.19.sroa.16.0.copyload481, !14612, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !18393)
    #dbg_value(i8 0, !14612, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !18393)
    #dbg_value(i8 0, !14894, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !18394)
  %.sroa.9219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 1993, !dbg !18395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9219.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !18396
  store i64 1, ptr %i.ap, align 16, !dbg !18395
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ap, i64 8, !dbg !18395
  store i64 1, ptr %i.ns, align 8, !dbg !18395
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ap, i64 16, !dbg !18395 ; 2 uses
  store i128 %.sroa.050.i.sroa.0.0.copyload, ptr %i.nt, align 16, !dbg !18395
  %.sroa.4214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32, !dbg !18395
  store i64 %.sroa.050.i.sroa.4.0.copyload, ptr %.sroa.4214.0..sroa_idx, align 16, !dbg !18395
  %.sroa.4214.sroa.4.0..sroa.4214.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 40, !dbg !18395
  store ptr %.sroa.050.i.sroa.5.0.copyload, ptr %.sroa.4214.sroa.4.0..sroa.4214.0..sroa_idx.sroa_idx, align 8, !dbg !18395
  %.sroa.6216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 1968, !dbg !18395
  store ptr %i.ki, ptr %.sroa.6216.0..sroa_idx, align 16, !dbg !18395
  %.sroa.7217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 1976, !dbg !18395
  store ptr %i.kj, ptr %.sroa.7217.0..sroa_idx, align 8, !dbg !18395
  %.sroa.7217.sroa.4.0..sroa.7217.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 1984, !dbg !18395
  store ptr %.sroa.15.sroa.19.sroa.16.0.copyload481, ptr %.sroa.7217.sroa.4.0..sroa.7217.0..sroa_idx.sroa_idx, align 16, !dbg !18395
  %.sroa.8218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 1992, !dbg !18395
  store i8 0, ptr %.sroa.8218.0..sroa_idx, align 8, !dbg !18395
    #dbg_declare(ptr %i.ap, !18397, !DIExpression(), !18405)
    #dbg_value(i64 16, !9576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18407)
    #dbg_value(i64 16, !9586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18409)
    #dbg_value(i64 16, !9611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18411)
    #dbg_value(i64 2000, !9576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18407)
    #dbg_value(i64 2000, !9586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18409)
    #dbg_value(i64 2000, !9611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18411)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !9608, !DIExpression(), !18409)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !9617, !DIExpression(), !18411)
    #dbg_value(i8 0, !9618, !DIExpression(), !18411)
    #dbg_value(i64 16, !9621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18413)
    #dbg_value(i64 16, !9658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18415)
    #dbg_value(i64 2000, !9621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18413)
    #dbg_value(i64 2000, !9658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18415)
    #dbg_value(i1 false, !9627, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18413)
    #dbg_value(i64 2000, !9628, !DIExpression(), !18417)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !18418, !noalias !18419
  %i.nu = call noundef align 16 dereferenceable_or_null(2000) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 32, 2769) 2000, i64 noundef range(i64 8, 33) 16) #26, !dbg !18422, !noalias !18419 ; 3 uses
  %i.nv = icmp eq ptr %i.nu, null, !dbg !18423
  br i1 %i.nv, label %bb.fx, label %bb.ga, !dbg !18424, !prof !9671

bb.fx:                                            ; preds = %bb.fw
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 2000) #27
          to label %.noexc126 unwind label %bb.fy, !dbg !18425

.noexc126:                                        ; preds = %bb.fx
  unreachable, !dbg !18425

bb.fy:                                            ; preds = %bb.fx
  %i.nw = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ap, !18426, !DIExpression(), !18432)
    #dbg_value(ptr %i.nt, !6366, !DIExpression(), !18434)
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy4CoreEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(1984) %i.nt)
          to label %.body unwind label %bb.fz, !dbg !18436

bb.fz:                                            ; preds = %bb.fy
  %i.nx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !18437
  unreachable, !dbg !18437

bb.ga:                                            ; preds = %bb.fw
    #dbg_value(ptr %i.nu, !18402, !DIExpression(), !18438)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %i.nu, ptr noundef nonnull align 16 dereferenceable(2000) %i.ap, i64 2000, i1 false), !dbg !18439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !18440
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18441
  store ptr %i.nu, ptr %i.ny, align 8, !dbg !18441
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !18441
  store ptr @69, ptr %i.nz, align 8, !dbg !18441
  store i64 -3, ptr %0, align 8, !dbg !18441
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5181.sroa.6.sroa.7), !dbg !17320
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5181.sroa.7), !dbg !17320
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5181.sroa.11), !dbg !17320
  br label %bb.gb, !dbg !18442

bb.gb:                                            ; preds = %bb.is, %bb.ii, %bb.ga, %bb.eb
  call void @llvm.experimental.noalias.scope.decl(metadata !18444), !dbg !16084
    #dbg_value(ptr %i.au, !3078, !DIExpression(), !18447)
  %i.oa = load i8, ptr %i.ew, align 8, !dbg !18449, !range !3081, !alias.scope !18444, !noundef !29
  %i.ob = icmp eq i8 %i.oa, 2, !dbg !18449
  br i1 %i.ob, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit129, label %bb.gc, !dbg !18449

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.experimental.noalias.scope.decl(metadata !18450), !dbg !18449
    #dbg_value(ptr %i.au, !3085, !DIExpression(), !18453)
  call void @llvm.experimental.noalias.scope.decl(metadata !18455), !dbg !18458
    #dbg_value(ptr %i.au, !3097, !DIExpression(), !18459)
  call void @llvm.experimental.noalias.scope.decl(metadata !18461), !dbg !18464
    #dbg_value(ptr %i.au, !3111, !DIExpression(), !18465)
    #dbg_value(ptr %i.au, !3118, !DIExpression(), !18467)
    #dbg_value(i64 1, !3131, !DIExpression(), !18469)
    #dbg_value(i8 1, !3140, !DIExpression(), !18469)
    #dbg_value(i64 1, !3143, !DIExpression(), !18471)
    #dbg_value(i8 1, !3150, !DIExpression(), !18471)
  %i.oc = load ptr, ptr %i.au, align 8, !dbg !18473, !alias.scope !18475, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.oc, !3139, !DIExpression(), !18476)
    #dbg_value(ptr %i.oc, !3149, !DIExpression(), !18471)
  %i.od = atomicrmw sub ptr %i.oc, i64 1 release, align 8, !dbg !18477, !noalias !18475
  %i.oe = icmp eq i64 %i.od, 1, !dbg !18478
  br i1 %i.oe, label %bb.gd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit129, !dbg !18478

bb.gd:                                            ; preds = %bb.gc
    #dbg_value(i8 2, !3167, !DIExpression(), !18479)
  fence acquire, !dbg !18481
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.au) #25, !dbg !18482
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit129, !dbg !18482

_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit.thread: ; preds = %bb.ei, %bb.ek, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqECs9GYDdpCSJ4S_14regex_automata.exit.i, %bb.eq, %bb.eo, %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !18483
  br label %bb.ge, !dbg !18484

_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit: ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !18259, !noalias !17372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !18483
  %i.of = icmp eq i128 %.sroa.0563.0.copyload, -1, !dbg !17321
  br i1 %i.of, label %bb.ge, label %bb.ie, !dbg !18484

bb.ge:                                            ; preds = %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit.thread, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit
  %.sroa.15.sroa.16.sroa.16.3606 = phi ptr [ %.sroa.050.i.sroa.5.0.copyload, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit.thread ], [ %.sroa.6566.0.copyload, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit ] ; 2 uses
  %.sroa.15.sroa.16.sroa.0.3605 = phi i64 [ %.sroa.050.i.sroa.4.0.copyload, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit.thread ], [ %.sroa.5565.0.copyload, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit ] ; 2 uses
  %.sroa.14.sroa.17.sroa.14.0.copyload459 = phi ptr [ %.sroa.15.sroa.19.sroa.16.0.copyload481, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit.thread ], [ %.sroa.11.1984.copyload, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit ] ; 2 uses
  %.sroa.15.sroa.16.sroa.16.3603 = phi ptr [ %i.kj, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit.thread ], [ %.sroa.10569.0.copyload, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit ] ; 2 uses
  %.sroa.14.sroa.18.0.copyload400 = phi i8 [ 0, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit.thread ], [ %.sroa.13570.1984.copyload, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit ] ; 7 uses
  %.sroa.14.sroa.17.sroa.0.0.copyload450 = phi ptr [ %i.ki, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit.thread ], [ %.sroa.9568.0.copyload, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit ] ; 11 uses
  %.sroa.15.sroa.0.3600 = phi i128 [ %.sroa.050.i.sroa.0.0.copyload, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit.thread ], [ %.sroa.4564.0.copyload, %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit ] ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, i64 120, i1 false), !dbg !18485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, i64 1800, i1 false), !dbg !18485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, i64 7, i1 false), !dbg !18485
    #dbg_value(i128 %.sroa.15.sroa.0.3600, !14591, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !17273)
    #dbg_value(i64 %.sroa.15.sroa.16.sroa.0.3605, !14591, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17273)
    #dbg_value(ptr %.sroa.15.sroa.16.sroa.16.3606, !14591, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !17273)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.0.0.copyload450, !14591, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !17273)
    #dbg_value(ptr %.sroa.15.sroa.16.sroa.16.3603, !14591, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !17273)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, !14591, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !17273)
    #dbg_value(i8 %.sroa.14.sroa.18.0.copyload400, !14591, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !17273)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.16.sroa.17), !dbg !18486
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.17), !dbg !18486
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.21), !dbg !18486
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26223), !dbg !18486
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.sroa.14.sroa.15), !dbg !18487
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.sroa.15), !dbg !18487
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.sroa.19), !dbg !18487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !18488
  store i128 %.sroa.15.sroa.0.3600, ptr %i.aq, align 16, !dbg !18488
  %.sroa.11.0..sroa_idx167 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16, !dbg !18488 ; 2 uses
  store i64 %.sroa.15.sroa.16.sroa.0.3605, ptr %.sroa.11.0..sroa_idx167, align 16, !dbg !18488
  %.sroa.11.sroa.11.0..sroa.11.0..sroa_idx167.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24, !dbg !18488
  store ptr %.sroa.15.sroa.16.sroa.16.3606, ptr %.sroa.11.sroa.11.0..sroa.11.0..sroa_idx167.sroa_idx, align 8, !dbg !18488
  %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx167.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32, !dbg !18488 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx167.sroa_idx, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !18488
  %.sroa.12.0..sroa_idx173 = getelementptr inbounds nuw i8, ptr %i.aq, i64 152, !dbg !18488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.0..sroa_idx173, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !18488
  %.sroa.12.sroa.11.0..sroa.12.0..sroa_idx173.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 1952, !dbg !18488 ; 2 uses
  store ptr %.sroa.14.sroa.17.sroa.0.0.copyload450, ptr %.sroa.12.sroa.11.0..sroa.12.0..sroa_idx173.sroa_idx, align 16, !dbg !18488
  %.sroa.12.sroa.12.0..sroa.12.0..sroa_idx173.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 1960, !dbg !18488
  store ptr %.sroa.15.sroa.16.sroa.16.3603, ptr %.sroa.12.sroa.12.0..sroa.12.0..sroa_idx173.sroa_idx, align 8, !dbg !18488
  %.sroa.12.sroa.12.sroa.11.0..sroa.12.sroa.12.0..sroa.12.0..sroa_idx173.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 1968, !dbg !18488 ; 2 uses
  store ptr %.sroa.14.sroa.17.sroa.14.0.copyload459, ptr %.sroa.12.sroa.12.sroa.11.0..sroa.12.sroa.12.0..sroa.12.0..sroa_idx173.sroa_idx.sroa_idx, align 16, !dbg !18488
  %.sroa.12.sroa.13.0..sroa.12.0..sroa_idx173.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 1976, !dbg !18488 ; 2 uses
  store i8 %.sroa.14.sroa.18.0.copyload400, ptr %.sroa.12.sroa.13.0..sroa.12.0..sroa_idx173.sroa_idx, align 8, !dbg !18488
  %.sroa.12.sroa.14.0..sroa.12.0..sroa_idx173.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 1977, !dbg !18488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14.0..sroa.12.0..sroa_idx173.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !18488
  call void @llvm.experimental.noalias.scope.decl(metadata !18489), !dbg !18487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18492
    #dbg_declare(ptr %i.aq, !18512, !DIExpression(), !18539)
    #dbg_value(ptr %2, !18513, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18540)
    #dbg_value(i64 %3, !18513, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18540)
    #dbg_declare(ptr %i.h, !18514, !DIExpression(), !18541)
    #dbg_declare(ptr %i.f, !18524, !DIExpression(), !18542)
    #dbg_declare(ptr %i.e, !18526, !DIExpression(), !18543)
    #dbg_declare(ptr %i.c, !18528, !DIExpression(), !18544)
    #dbg_declare(ptr %i.b, !18532, !DIExpression(), !18545)
    #dbg_declare(ptr %i.a, !18536, !DIExpression(), !18546)
  %i.og = getelementptr i8, ptr %.sroa.14.sroa.17.sroa.0.0.copyload450, i64 148, !dbg !18547
  %.val21.i = load i8, ptr %i.og, align 4, !dbg !18547, !range !3081, !noalias !18548, !noundef !29
    #dbg_value(ptr poison, !15241, !DIExpression(), !18551)
    #dbg_value(i8 1, !15250, !DIExpression(), !18553)
    #dbg_value(i8 %.val21.i, !15256, !DIExpression(), !18553)
  %.sroa.0.0.i.not.i = icmp eq i8 %.val21.i, 0, !dbg !18555
  br i1 %.sroa.0.0.i.not.i, label %bb.gg, label %bb.gh, !dbg !18492

.body.i131:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i134, %bb.gf
  %.sroa.04.0.i132 = phi i8 [ %.sroa.04.2.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i134 ], [ %.sroa.04.1.i, %bb.gf ], !dbg !18556
  %.pn15.i = phi { ptr, i32 } [ %.pn.pn.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i134 ], [ %i.oi, %bb.gf ] ; 2 uses
  %i.oh = trunc nuw i8 %.sroa.04.0.i132 to i1, !dbg !18557
  br i1 %i.oh, label %bb.id, label %.body, !dbg !18557

bb.gf:                                            ; preds = %bb.hv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata.exit.i.i135, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterE6map_orbNCNvMs7_NtNtBP_4meta8strategyNtB1Z_12ReverseInner3new0EBP_.exit.thread.i
  %.sroa.04.1.i = phi i8 [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata.exit.i.i135 ], [ 0, %bb.hv ], [ 1, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterE6map_orbNCNvMs7_NtNtBP_4meta8strategyNtB1Z_12ReverseInner3new0EBP_.exit.thread.i ], !dbg !18540
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %.body.i131

bb.gg:                                            ; preds = %bb.ge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.14.sroa.14.sroa.15, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !18558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.14.sroa.15, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !18558
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.sroa.19, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !18558
  br label %.thread608, !dbg !18559

bb.gh:                                            ; preds = %bb.ge
  %i.oj = getelementptr i8, ptr %.sroa.14.sroa.17.sroa.0.0.copyload450, i64 146, !dbg !18561
  %.val22.i = load i8, ptr %i.oj, align 2, !dbg !18561, !range !3081, !noalias !18562, !noundef !29
    #dbg_value(ptr poison, !15266, !DIExpression(), !18563)
    #dbg_value(i8 1, !15275, !DIExpression(), !18565)
    #dbg_value(i8 %.val22.i, !15281, !DIExpression(), !18565)
  %.sroa.0.0.i28.not.i = icmp eq i8 %.val22.i, 0, !dbg !18567
  br i1 %.sroa.0.0.i28.not.i, label %bb.gi, label %bb.gj, !dbg !18568

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.14.sroa.14.sroa.15, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !18569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.14.sroa.15, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !18569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.sroa.19, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !18569
  br label %.thread608, !dbg !18559

bb.gj:                                            ; preds = %bb.gh
    #dbg_value(ptr %.sroa.12.sroa.11.0..sroa.12.0..sroa_idx173.sroa_idx, !15060, !DIExpression(), !18570)
    #dbg_value(i32 1, !15078, !DIExpression(), !18572)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.0.0.copyload450, !15104, !DIExpression(DW_OP_plus_uconst, 184, DW_OP_stack_value), !18574)
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.14.sroa.17.sroa.0.0.copyload450, i64 184, !dbg !18576
  %i.ol = load ptr, ptr %i.ok, align 8, !dbg !18576, !noalias !18577, !nonnull !29, !noundef !29
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 60, !dbg !18576
  %i.on = load i32, ptr %i.om, align 4, !dbg !18576, !noalias !18577, !noundef !29
    #dbg_value(i32 %i.on, !15085, !DIExpression(), !18572)
  %i.oo = trunc i32 %i.on to i1, !dbg !18580
  br i1 %i.oo, label %bb.gk, label %bb.gl, !dbg !18581

bb.gk:                                            ; preds = %bb.gj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.14.sroa.14.sroa.15, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !18582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.14.sroa.15, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !18582
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.sroa.19, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !18582
  br label %.thread608, !dbg !18559

bb.gl:                                            ; preds = %bb.gj
    #dbg_value(ptr poison, !18583, !DIExpression(), !18587)
    #dbg_value(ptr poison, !18589, !DIExpression(), !18592)
  %i.op = icmp ne i128 %.sroa.15.sroa.0.3600, 2, !dbg !18594
  %i.oq = trunc nuw i8 %.sroa.14.sroa.18.0.copyload400 to i1
  %or.cond.i130 = select i1 %i.op, i1 true, i1 %i.oq, !dbg !18595
  br i1 %or.cond.i130, label %bb.gn, label %bb.gm, !dbg !18595

bb.gm:                                            ; preds = %bb.gl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.14.sroa.14.sroa.15, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !18596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.14.sroa.15, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !18596
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.sroa.19, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !18596
  br label %.thread608, !dbg !18559

bb.gn:                                            ; preds = %bb.gl
    #dbg_value(ptr %i.aq, !18597, !DIExpression(DW_OP_plus_uconst, 1440, DW_OP_stack_value), !18602)
  %i.or = getelementptr inbounds nuw i8, ptr %i.aq, i64 1464, !dbg !18604
  %i.os = load i8, ptr %i.or, align 8, !dbg !18604, !range !3081, !alias.scope !18489, !noalias !18605, !noundef !29
    #dbg_value(ptr poison, !18606, !DIExpression(), !18621)
    #dbg_value(i1 false, !18617, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18621)
    #dbg_declare(ptr poison, !18618, !DIExpression(), !18623)
  %i.ot = and i8 %i.os, 1, !dbg !18624
  %or.cond70.not.i = icmp eq i8 %i.ot, 0, !dbg !18624
  br i1 %or.cond70.not.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterE6map_orbNCNvMs7_NtNtBP_4meta8strategyNtB1Z_12ReverseInner3new0EBP_.exit.thread.i, label %bb.go, !dbg !18624

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterE6map_orbNCNvMs7_NtNtBP_4meta8strategyNtB1Z_12ReverseInner3new0EBP_.exit.thread.i: ; preds = %bb.gn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !18625, !noalias !18548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !18626, !noalias !18548
  invoke void @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_innerNtB2_14InnerPrefilter3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 1152921504606846976) %3)
          to label %bb.gp unwind label %bb.gf, !dbg !18626, !noalias !18562

bb.go:                                            ; preds = %bb.gn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.14.sroa.14.sroa.15, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !18627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.14.sroa.15, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !18627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.sroa.19, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !18627
  br label %.thread608, !dbg !18559

bb.gp:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterE6map_orbNCNvMs7_NtNtBP_4meta8strategyNtB1Z_12ReverseInner3new0EBP_.exit.thread.i
  %i.ou = load i64, ptr %i.g, align 8, !dbg !18626, !range !18628, !noalias !18548, !noundef !29
  %.not11.i = icmp eq i64 %i.ou, -1, !dbg !18626
  br i1 %.not11.i, label %bb.gr, label %bb.gq, !dbg !18629

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 104, i1 false), !dbg !18630, !noalias !18548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !18631, !noalias !18548
    #dbg_value(ptr %i.h, !18632, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !18635)
    #dbg_value(ptr %i.h, !18637, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !18640)
    #dbg_value(ptr %i.h, !18642, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !18645)
  %i.ov = getelementptr inbounds nuw i8, ptr %i.h, i64 48, !dbg !18647 ; 7 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.h, i64 56, !dbg !18647
  %i.ox = load ptr, ptr %i.ow, align 8, !dbg !18647, !noalias !18548, !nonnull !29, !noundef !29
  %i.oy = getelementptr inbounds nuw i8, ptr %i.h, i64 64, !dbg !18654
  %i.oz = load i64, ptr %i.oy, align 8, !dbg !18654, !noalias !18548, !noundef !29
  %i.pa = invoke noundef zeroext i1 @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner20has_no_earlier_match(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ox, i64 noundef %i.oz)
          to label %bb.gt unwind label %bb.gs, !dbg !18655, !noalias !18562

bb.gr:                                            ; preds = %bb.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.14.sroa.14.sroa.15, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !18656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.14.sroa.15, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !18656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.sroa.19, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !18656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !18631, !noalias !18548
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner14InnerPrefilterEBH_.exit.i, !dbg !18559

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner14InnerPrefilterEBH_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata.exit.i.i135, %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !18557, !noalias !18548
  br label %.thread608, !dbg !18559

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i: ; preds = %.thread63.i, %bb.ia, %bb.hz, %bb.hy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i141, %bb.hj, %bb.gs
  %.sroa.04.2.i = phi i8 [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i141 ], [ 1, %bb.gs ], [ 1, %.thread63.i ], [ 0, %bb.hy ], [ 1, %bb.hj ], [ %.sroa.03.1.i, %bb.ia ], [ %.sroa.03.1.i, %bb.hz ], !dbg !18540
  %.pn.pn.i = phi { ptr, i32 } [ %i.qo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i141 ], [ %i.pb, %bb.gs ], [ %.pn5666.i, %.thread63.i ], [ %i.qk, %bb.hy ], [ %i.qh, %bb.hj ], [ %i.qk, %bb.ia ], [ %i.qk, %bb.hz ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h) #24
          to label %bb.ib unwind label %bb.hw, !dbg !18557, !noalias !18657

bb.gs:                                            ; preds = %bb.hh, %bb.gq
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i

bb.gt:                                            ; preds = %bb.gq
  br i1 %i.pa, label %bb.hh, label %bb.gu, !dbg !18655

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.14.sroa.14.sroa.15, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !18658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.14.sroa.15, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !18658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.sroa.19, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !18658
  br label %bb.gv, !dbg !18659

bb.gv:                                            ; preds = %bb.hx, %bb.gu
    #dbg_value(ptr %i.h, !18661, !DIExpression(), !18669)
    #dbg_value(ptr %i.h, !4419, !DIExpression(), !18671)
  invoke void @_RNvXsm_NtCs3roNzt6HBWW_12regex_syntax3hirNtB5_3HirNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.h)
          to label %bb.gx unwind label %bb.gw, !dbg !18673, !noalias !18562, !inline_history !4428

bb.gw:                                            ; preds = %bb.gv
  %i.pc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.h) #24
          to label %.body.i.i unwind label %bb.gz, !dbg !18673, !noalias !18562, !inline_history !4428

bb.gx:                                            ; preds = %bb.gv
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir7HirKindECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.h)
          to label %bb.hb unwind label %bb.gy, !dbg !18673, !noalias !18562, !inline_history !4428

bb.gy:                                            ; preds = %bb.gx
  %i.pd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.gz:                                            ; preds = %bb.gw
  %i.pe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !18673, !noalias !18562, !inline_history !4428
  unreachable, !dbg !18673

.body.i.i:                                        ; preds = %bb.gy, %bb.gw
  %.pn.i.i.i = phi { ptr, i32 } [ %i.pd, %bb.gy ], [ %i.pc, %bb.gw ] ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.h, i64 40, !dbg !18673
  %.val3.i.i.i = load ptr, ptr %i.pf, align 8, !dbg !18673, !alias.scope !18674, !noalias !18548, !nonnull !29, !noundef !29
    #dbg_value(ptr poison, !4432, !DIExpression(), !18679)
    #dbg_value(ptr poison, !4440, !DIExpression(), !18681)
    #dbg_value(ptr poison, !4450, !DIExpression(), !18683)
    #dbg_value(ptr %.val3.i.i.i, !4453, !DIExpression(), !18685)
    #dbg_value(i64 8, !4466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18686)
    #dbg_value(i64 80, !4466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18686)
    #dbg_value(ptr poison, !4081, !DIExpression(), !18687)
    #dbg_value(ptr poison, !4093, !DIExpression(), !18689)
    #dbg_value(ptr %.val3.i.i.i, !4089, !DIExpression(), !18687)
    #dbg_value(ptr %.val3.i.i.i, !4098, !DIExpression(), !18689)
    #dbg_value(ptr %.val3.i.i.i, !4102, !DIExpression(), !18691)
    #dbg_value(ptr %.val3.i.i.i, !4111, !DIExpression(), !18693)
    #dbg_value(i64 8, !4090, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18687)
    #dbg_value(i64 8, !4099, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18689)
    #dbg_value(i64 8, !4108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18691)
    #dbg_value(i64 8, !4114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18693)
    #dbg_value(i64 80, !4090, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18687)
    #dbg_value(i64 80, !4099, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18689)
    #dbg_value(i64 80, !4108, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18691)
    #dbg_value(i64 80, !4114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18693)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef 80, i64 noundef 8) #26, !dbg !18695, !noalias !18562, !inline_history !4428
  %i.pg = getelementptr inbounds nuw i8, ptr %i.h, i64 72, !dbg !18696 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18697), !dbg !18696
    #dbg_value(ptr %i.pg, !3085, !DIExpression(), !18700)
  call void @llvm.experimental.noalias.scope.decl(metadata !18702), !dbg !18705
    #dbg_value(ptr %i.pg, !3097, !DIExpression(), !18706)
  call void @llvm.experimental.noalias.scope.decl(metadata !18708), !dbg !18711
    #dbg_value(ptr %i.pg, !3111, !DIExpression(), !18712)
    #dbg_value(ptr %i.pg, !3118, !DIExpression(), !18714)
    #dbg_value(i64 1, !3131, !DIExpression(), !18716)
    #dbg_value(i8 1, !3140, !DIExpression(), !18716)
    #dbg_value(i64 1, !3143, !DIExpression(), !18718)
    #dbg_value(i8 1, !3150, !DIExpression(), !18718)
  %i.ph = load ptr, ptr %i.pg, align 8, !dbg !18720, !alias.scope !18722, !noalias !18548, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.ph, !3139, !DIExpression(), !18723)
    #dbg_value(ptr %i.ph, !3149, !DIExpression(), !18718)
  %i.pi = atomicrmw sub ptr %i.ph, i64 1 release, align 8, !dbg !18724, !noalias !18725
  %i.pj = icmp eq i64 %i.pi, 1, !dbg !18726
  br i1 %i.pj, label %bb.ha, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i.i, !dbg !18726

bb.ha:                                            ; preds = %.body.i.i
    #dbg_value(i8 2, !3167, !DIExpression(), !18727)
  fence acquire, !dbg !18729
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.pg) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i.i unwind label %bb.hg, !dbg !18730, !noalias !18562

bb.hb:                                            ; preds = %bb.gx
  %i.pk = getelementptr inbounds nuw i8, ptr %i.h, i64 40, !dbg !18673
  %.val.i.i.i = load ptr, ptr %i.pk, align 8, !dbg !18673, !alias.scope !18674, !noalias !18548, !nonnull !29, !noundef !29
    #dbg_value(ptr poison, !4432, !DIExpression(), !18731)
    #dbg_value(ptr poison, !4440, !DIExpression(), !18733)
    #dbg_value(ptr poison, !4450, !DIExpression(), !18735)
    #dbg_value(ptr %.val.i.i.i, !4453, !DIExpression(), !18737)
    #dbg_value(i64 8, !4466, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18738)
    #dbg_value(i64 80, !4466, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18738)
    #dbg_value(ptr poison, !4081, !DIExpression(), !18739)
    #dbg_value(ptr poison, !4093, !DIExpression(), !18741)
    #dbg_value(ptr %.val.i.i.i, !4089, !DIExpression(), !18739)
    #dbg_value(ptr %.val.i.i.i, !4098, !DIExpression(), !18741)
    #dbg_value(ptr %.val.i.i.i, !4102, !DIExpression(), !18743)
    #dbg_value(ptr %.val.i.i.i, !4111, !DIExpression(), !18745)
    #dbg_value(i64 8, !4090, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18739)
    #dbg_value(i64 8, !4099, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18741)
    #dbg_value(i64 8, !4108, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18743)
    #dbg_value(i64 8, !4114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18745)
    #dbg_value(i64 80, !4090, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18739)
    #dbg_value(i64 80, !4099, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18741)
    #dbg_value(i64 80, !4108, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18743)
    #dbg_value(i64 80, !4114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18745)
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 80, i64 noundef 8) #26, !dbg !18747, !noalias !18562, !inline_history !4428
  %i.pl = getelementptr inbounds nuw i8, ptr %i.h, i64 72, !dbg !18696 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18748), !dbg !18696
    #dbg_value(ptr %i.pl, !3085, !DIExpression(), !18751)
  call void @llvm.experimental.noalias.scope.decl(metadata !18753), !dbg !18756
    #dbg_value(ptr %i.pl, !3097, !DIExpression(), !18757)
  call void @llvm.experimental.noalias.scope.decl(metadata !18759), !dbg !18762
    #dbg_value(ptr %i.pl, !3111, !DIExpression(), !18763)
    #dbg_value(ptr %i.pl, !3118, !DIExpression(), !18765)
    #dbg_value(i64 1, !3131, !DIExpression(), !18767)
    #dbg_value(i8 1, !3140, !DIExpression(), !18767)
    #dbg_value(i64 1, !3143, !DIExpression(), !18769)
    #dbg_value(i8 1, !3150, !DIExpression(), !18769)
  %i.pm = load ptr, ptr %i.pl, align 8, !dbg !18771, !alias.scope !18773, !noalias !18548, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.pm, !3139, !DIExpression(), !18774)
    #dbg_value(ptr %i.pm, !3149, !DIExpression(), !18769)
  %i.pn = atomicrmw sub ptr %i.pm, i64 1 release, align 8, !dbg !18775, !noalias !18776
  %i.po = icmp eq i64 %i.pn, 1, !dbg !18777
  br i1 %i.po, label %bb.hc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit4.i.i, !dbg !18777

bb.hc:                                            ; preds = %bb.hb
    #dbg_value(i8 2, !3167, !DIExpression(), !18778)
  fence acquire, !dbg !18780
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.pl) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit4.i.i unwind label %bb.hd, !dbg !18781, !noalias !18562

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i.i: ; preds = %bb.hd, %bb.ha, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.pp, %bb.hd ], [ %.pn.i.i.i, %bb.ha ], [ %.pn.i.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ov) #24
          to label %.body unwind label %bb.hg, !dbg !18696, !noalias !18562

bb.hd:                                            ; preds = %bb.hc
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit4.i.i: ; preds = %bb.hc, %bb.hb
    #dbg_value(ptr %i.ov, !3414, !DIExpression(), !18782)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ov)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata.exit.i.i135 unwind label %bb.he, !dbg !18784, !noalias !18562

bb.he:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit4.i.i
  %i.pq = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ov, !3419, !DIExpression(), !18785)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ov)
          to label %.body unwind label %bb.hf, !dbg !18787, !noalias !18562

bb.hf:                                            ; preds = %bb.he
  %i.pr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !18784, !noalias !18562
  unreachable, !dbg !18784

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata.exit.i.i135: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit4.i.i
    #dbg_value(ptr %i.ov, !3419, !DIExpression(), !18788)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ov)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner14InnerPrefilterEBH_.exit.i unwind label %bb.gf, !dbg !18790, !noalias !18562

bb.hg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i.i, %bb.ha
  %i.ps = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !18696, !noalias !18562
  unreachable, !dbg !18696

bb.hh:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !18791, !noalias !18548
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.0.0.copyload450, !16322, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18792)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.0.0.copyload450, !16332, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18794)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.0.0.copyload450, !16337, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18796)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.0.0.copyload450, !16343, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18798)
    #dbg_value(i8 10, !16359, !DIExpression(), !18800)
    #dbg_value(i8 1, !16370, !DIExpression(), !18802)
    #dbg_value(i64 poison, !16378, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18804)
    #dbg_value(i64 poison, !16378, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18804)
    #dbg_value(i8 10, !16328, !DIExpression(), !18806)
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.14.sroa.17.sroa.0.0.copyload450, i64 144, !dbg !18807
  %i.pu = load i8, ptr %i.pt, align 8, !dbg !18807, !range !10752, !alias.scope !18808, !noalias !18811, !noundef !29
  %i.pv = trunc nuw i8 %i.pu to i1, !dbg !18807
    #dbg_value(i8 %i.pu, !16365, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !18800)
    #dbg_value(i8 poison, !16365, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !18800)
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.14.sroa.17.sroa.0.0.copyload450, i64 145, !dbg !18813
  %i.px = load i8, ptr %i.pw, align 1, !dbg !18813, !alias.scope !18808, !noalias !18811
  %.sroa.01.0.i.i136 = select i1 %i.pv, i8 %i.px, i8 10, !dbg !18813
    #dbg_value(i8 %.sroa.01.0.i.i136, !16328, !DIExpression(), !18806)
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.14.sroa.17.sroa.0.0.copyload450, i64 147, !dbg !18814
  %i.pz = load i8, ptr %i.py, align 1, !dbg !18814, !range !3081, !alias.scope !18808, !noalias !18811, !noundef !29 ; 2 uses
    #dbg_value(i8 %i.pz, !16373, !DIExpression(), !18802)
  %.not.i.i137 = icmp eq i8 %i.pz, 2, !dbg !18815
  %.sroa.02.0.i29.i = select i1 %.not.i.i137, i8 1, i8 %i.pz, !dbg !18816 ; 2 uses
    #dbg_value(i8 %.sroa.02.0.i29.i, !16410, !DIExpression(), !18817)
  %i.qa = icmp samesign ult i8 %.sroa.02.0.i29.i, 2, !dbg !18819
  call void @llvm.assume(i1 %i.qa), !dbg !18819
    #dbg_value(i8 %.sroa.02.0.i29.i, !16416, !DIExpression(DW_OP_LLVM_fragment, 144, 8), !18817)
    #dbg_value(i8 %.sroa.02.0.i29.i, !16421, !DIExpression(DW_OP_LLVM_fragment, 144, 8), !18820)
    #dbg_value(i8 0, !16416, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !18817)
    #dbg_value(i8 0, !16421, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !18820)
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.14.sroa.17.sroa.0.0.copyload450, i64 48, !dbg !18822
  %i.qc = load i64, ptr %i.qb, align 8, !dbg !18822, !range !5824, !alias.scope !18808, !noalias !18811, !noundef !29 ; 2 uses
    #dbg_value(i64 %i.qc, !16384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18804)
    #dbg_value(i64 poison, !16384, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18804)
  %.not22.i.i138 = icmp eq i64 %i.qc, 2, !dbg !18823 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.14.sroa.17.sroa.0.0.copyload450, i64 56, !dbg !18824
  %i.qe = load i64, ptr %i.qd, align 8, !dbg !18824, !alias.scope !18808, !noalias !18811
  %.sroa.5.0.i.i139 = select i1 %.not22.i.i138, i64 10485760, i64 %i.qe, !dbg !18824
  %.sroa.03.0.i.i140 = select i1 %.not22.i.i138, i64 1, i64 %i.qc, !dbg !18824 ; 2 uses
    #dbg_value(i64 %.sroa.03.0.i.i140, !16427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18820)
    #dbg_value(i64 %.sroa.5.0.i.i139, !16427, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18820)
  %i.qf = icmp samesign ult i64 %.sroa.03.0.i.i140, 2, !dbg !18825
  call void @llvm.assume(i1 %i.qf), !dbg !18825
    #dbg_value(i64 %.sroa.03.0.i.i140, !16416, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18817)
    #dbg_value(i64 %.sroa.03.0.i.i140, !16421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18820)
    #dbg_value(i64 %.sroa.5.0.i.i139, !16416, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18817)
    #dbg_value(i64 %.sroa.5.0.i.i139, !16421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18820)
    #dbg_value(i8 0, !16416, !DIExpression(DW_OP_LLVM_fragment, 160, 8), !18817)
    #dbg_value(i8 0, !16421, !DIExpression(DW_OP_LLVM_fragment, 160, 8), !18820)
    #dbg_value(i8 poison, !16416, !DIExpression(DW_OP_LLVM_fragment, 168, 8), !18817)
    #dbg_value(i8 poison, !16421, !DIExpression(DW_OP_LLVM_fragment, 168, 8), !18820)
    #dbg_value(i8 1, !16416, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !18817)
    #dbg_value(i8 1, !16421, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !18820)
    #dbg_value(i8 %.sroa.01.0.i.i136, !16416, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !18817)
    #dbg_value(i8 %.sroa.01.0.i.i136, !16421, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !18820)
    #dbg_value(i8 1, !16416, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !18817)
    #dbg_value(i8 1, !16421, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !18820)
    #dbg_value(i64 %.sroa.03.0.i.i140, !18826, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18830)
    #dbg_value(i64 %.sroa.5.0.i.i139, !18826, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18830)
    #dbg_value(i8 1, !18826, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !18830)
    #dbg_value(i8 %.sroa.01.0.i.i136, !18826, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !18830)
    #dbg_value(i8 %.sroa.02.0.i29.i, !18826, !DIExpression(DW_OP_LLVM_fragment, 144, 8), !18830)
    #dbg_value(i8 1, !18826, !DIExpression(DW_OP_LLVM_fragment, 152, 8), !18830)
    #dbg_value(i8 0, !18826, !DIExpression(DW_OP_LLVM_fragment, 160, 8), !18830)
    #dbg_value(i16 undef, !18826, !DIExpression(DW_OP_LLVM_fragment, 176, 16), !18830)
    #dbg_value(i8 2, !18829, !DIExpression(), !18830)
    #dbg_value(i8 2, !18826, !DIExpression(DW_OP_LLVM_fragment, 168, 8), !18830)
  store i64 %.sroa.03.0.i.i140, ptr %i.f, align 8, !dbg !18832, !alias.scope !18833, !noalias !18548
  %.sroa.034.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !18832
  store i64 %.sroa.5.0.i.i139, ptr %.sroa.034.sroa.4.0..sroa_idx.i, align 8, !dbg !18832, !alias.scope !18833, !noalias !18548
  %.sroa.034.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !18832
  store i8 1, ptr %.sroa.034.sroa.5.0..sroa_idx.i, align 8, !dbg !18832, !alias.scope !18833, !noalias !18548
  %.sroa.034.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 17, !dbg !18832
  store i8 %.sroa.01.0.i.i136, ptr %.sroa.034.sroa.6.0..sroa_idx.i, align 1, !dbg !18832, !alias.scope !18833, !noalias !18548
  %.sroa.034.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 18, !dbg !18832
  store i8 %.sroa.02.0.i29.i, ptr %.sroa.034.sroa.7.0..sroa_idx.i, align 2, !dbg !18832, !alias.scope !18833, !noalias !18548
  %.sroa.034.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 19, !dbg !18832
  store i8 1, ptr %.sroa.034.sroa.8.0..sroa_idx.i, align 1, !dbg !18832, !alias.scope !18833, !noalias !18548
  %.sroa.034.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20, !dbg !18832
  store i8 0, ptr %.sroa.034.sroa.9.0..sroa_idx.i, align 4, !dbg !18832, !alias.scope !18833, !noalias !18548
  %.sroa.4.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %i.f, i64 21, !dbg !18832
  store i8 2, ptr %.sroa.4.0..sroa_idx35.i, align 1, !dbg !18832, !alias.scope !18833, !noalias !18548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !18837, !noalias !18548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18838, !noalias !18548
  invoke void @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler3new(ptr noalias nofree noundef nonnull sret([448 x i8]) align 8 captures(none) dereferenceable(448) %i.d)
          to label %bb.hi unwind label %bb.gs, !dbg !18838, !noalias !18562

bb.hi:                                            ; preds = %bb.hh
  %i.qg = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler9configure(ptr noalias nofree noundef nonnull align 8 dereferenceable(448) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.hk unwind label %bb.hj, !dbg !18839, !noalias !18562

bb.hj:                                            ; preds = %bb.hk, %bb.hi
  %i.qh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.d) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i unwind label %bb.hw, !dbg !18840, !noalias !18562

bb.hk:                                            ; preds = %bb.hi
  invoke void @_RNvMs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compilerNtB5_8Compiler14build_from_hir(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.e, ptr noundef nonnull align 8 %i.qg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
          to label %bb.hl unwind label %bb.hj, !dbg !18841, !noalias !18562

bb.hl:                                            ; preds = %bb.hk
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson8compiler8CompilerEBJ_(ptr noalias nofree noundef align 8 dereferenceable(448) %i.d)
          to label %bb.hm unwind label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.thread.i, !dbg !18840, !noalias !18562

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i141: ; preds = %bb.hp, %bb.ho
  %i.qi = load i64, ptr %i.e, align 8, !dbg !18842, !range !16507, !noalias !18548, !noundef !29
  %i.qj = icmp eq i64 %i.qi, -2, !dbg !18842
  br i1 %i.qj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i, label %.thread63.i, !dbg !18842

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.thread.i: ; preds = %bb.hn, %bb.hl
  %.sroa.03.1.i = phi i8 [ 0, %bb.hn ], [ 1, %bb.hl ], !dbg !18843 ; 3 uses
  %i.qk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ql = load i64, ptr %i.e, align 8, !dbg !18842, !range !16507, !noalias !18548, !noundef !29
  %i.qm = icmp eq i64 %i.ql, -2, !dbg !18842
  br i1 %i.qm, label %bb.hz, label %bb.hy, !dbg !18842

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18840, !noalias !18548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18844, !noalias !18548
  %i.qn = load i64, ptr %i.e, align 8, !dbg !18845, !range !16507, !noalias !18548, !noundef !29
  %.not12.i = icmp eq i64 %i.qn, -2, !dbg !18845
  br i1 %.not12.i, label %bb.hq, label %bb.hn, !dbg !18846

bb.hn:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18847, !noalias !18548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %i.e, i64 128, i1 false), !dbg !18847, !noalias !18548
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.14.sroa.14.sroa.15, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !18848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.14.sroa.15, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !18848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.sroa.19, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !18848
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson5error10BuildErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.b)
          to label %bb.hx unwind label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.thread.i, !dbg !18849, !noalias !18562

bb.ho:                                            ; preds = %bb.ht
  %i.qo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.c, !3186, !DIExpression(), !18850)
    #dbg_value(ptr %i.c, !3194, !DIExpression(), !18852)
    #dbg_value(ptr %i.c, !3204, !DIExpression(), !18854)
    #dbg_value(ptr %i.c, !6038, !DIExpression(), !18856)
    #dbg_value(i64 1, !3209, !DIExpression(), !18858)
    #dbg_value(i8 1, !3213, !DIExpression(), !18858)
    #dbg_value(i64 1, !3216, !DIExpression(), !18860)
    #dbg_value(i8 1, !3220, !DIExpression(), !18860)
    #dbg_value(ptr %i.qs, !3212, !DIExpression(), !18862)
    #dbg_value(ptr %i.qs, !3219, !DIExpression(), !18860)
  %i.qp = atomicrmw sub ptr %i.qs, i64 1 release, align 8, !dbg !18863, !noalias !18864
  %i.qq = icmp eq i64 %i.qp, 1, !dbg !18871
  br i1 %i.qq, label %bb.hp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i141, !dbg !18871

bb.hp:                                            ; preds = %bb.ho
    #dbg_value(i8 2, !3167, !DIExpression(), !18872)
  fence acquire, !dbg !18874
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i141 unwind label %bb.hw, !dbg !18875, !noalias !18657

bb.hq:                                            ; preds = %bb.hm
  %i.qr = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !18876
  %i.qs = load ptr, ptr %i.qr, align 8, !dbg !18876, !noalias !18548, !nonnull !29, !noundef !29 ; 3 uses
    #dbg_value(ptr %i.qs, !18530, !DIExpression(), !18877)
  store ptr %i.qs, ptr %i.c, align 8, !dbg !18878, !noalias !18548
    #dbg_value(i8 0, !18534, !DIExpression(), !18879)
  %i.qt = getelementptr i8, ptr %.sroa.14.sroa.17.sroa.0.0.copyload450, i64 149, !dbg !18880
  %.val23.i = load i8, ptr %i.qt, align 1, !dbg !18880, !range !3081, !noalias !18562, !noundef !29
    #dbg_value(ptr poison, !16665, !DIExpression(), !18881)
    #dbg_value(i8 1, !16671, !DIExpression(), !18883)
    #dbg_value(i8 %.val23.i, !16674, !DIExpression(), !18883)
  %.sroa.0.0.i30.not.i = icmp eq i8 %.val23.i, 0, !dbg !18885
  br i1 %.sroa.0.0.i30.not.i, label %bb.hr, label %bb.ht, !dbg !18886

bb.hr:                                            ; preds = %bb.hq
  store i128 2, ptr %i.a, align 16, !dbg !18887, !alias.scope !18893, !noalias !18548
  br label %bb.hs, !dbg !18896

bb.hs:                                            ; preds = %._crit_edge, %bb.hr
  %.sroa.01.i.sroa.13.1984.copyload = phi i8 [ %.sroa.01.i.sroa.13.1984.copyload.pre, %._crit_edge ], [ 0, %bb.hr ], !dbg !18897 ; 2 uses
  %.sroa.01.i.sroa.11.1984.copyload = phi ptr [ %.sroa.01.i.sroa.11.1984.copyload.pre, %._crit_edge ], [ inttoptr (i64 2 to ptr), %bb.hr ], !dbg !18897 ; 2 uses
  %.sroa.01.i.sroa.0.0.copyload = load i128, ptr %i.aq, align 16, !dbg !18898, !noalias !18605 ; 2 uses
  %.sroa.01.i.sroa.4.0.copyload = load i128, ptr %.sroa.11.0..sroa_idx167, align 16, !dbg !18898, !noalias !18605 ; 2 uses
  %.sroa.01.i.sroa.5.0.copyload = load i64, ptr %.sroa.11.sroa.12.0..sroa.11.0..sroa_idx167.sroa_idx, align 16, !dbg !18898, !noalias !18605 ; 2 uses
  %.sroa.01.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 40, !dbg !18898
  %.sroa.01.i.sroa.6.0.copyload = load ptr, ptr %.sroa.01.i.sroa.6.0..sroa_idx, align 8, !dbg !18898, !noalias !18605 ; 2 uses
  %.sroa.01.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 48, !dbg !18898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.14.sroa.14.sroa.15, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.01.i.sroa.7.0..sroa_idx, i64 120, i1 false), !dbg !18898, !noalias !18899
  %.sroa.01.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 168, !dbg !18898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.14.sroa.15, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.01.i.sroa.8.0..sroa_idx, i64 1800, i1 false), !dbg !18898, !noalias !18899
  %.sroa.01.i.sroa.9.0.copyload = load ptr, ptr %.sroa.12.sroa.12.sroa.11.0..sroa.12.sroa.12.0..sroa.12.0..sroa_idx173.sroa_idx.sroa_idx, align 16, !dbg !18898, !noalias !18605 ; 2 uses
  %.sroa.01.i.sroa.10.0.copyload = load ptr, ptr %.sroa.12.sroa.13.0..sroa.12.0..sroa_idx173.sroa_idx, align 8, !dbg !18898, !noalias !18605 ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.h, i64 72, !dbg !18900
  %.sroa.01.i.sroa.15.2704..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01.i.sroa.15, i64 704, !dbg !18900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.01.i.sroa.15.2704..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.qu, i64 32, i1 false), !dbg !18900
  %.sroa.01.i.sroa.14.1984..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9, !dbg !18897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.sroa.19, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.01.i.sroa.14.1984..sroa_idx, i64 7, i1 false), !dbg !18897, !noalias !18901
  %.sroa.01.i.sroa.15.1984..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !18897
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(704) %.sroa.01.i.sroa.15, ptr noundef nonnull align 16 dereferenceable(704) %.sroa.01.i.sroa.15.1984..sroa_idx, i64 704, i1 false), !dbg !18897
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18902, !noalias !18548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18842, !noalias !18548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18903, !noalias !18548
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(48) %i.h)
          to label %bb.hv unwind label %bb.hu, !dbg !18557, !noalias !18657

bb.ht:                                            ; preds = %bb.hq
  invoke void @_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_13ReverseHybrid3new(ptr noalias nofree noundef nonnull sret([720 x i8]) align 16 captures(none) dereferenceable(720) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.12.sroa.11.0..sroa.12.0..sroa_idx173.sroa_idx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %._crit_edge unwind label %bb.ho, !dbg !18904, !noalias !18657

._crit_edge:                                      ; preds = %bb.ht
  %.sroa.01.i.sroa.11.1984.copyload.pre = load ptr, ptr %i.a, align 16, !dbg !18897, !noalias !18548
  %.sroa.01.i.sroa.13.1984..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.01.i.sroa.13.1984.copyload.pre = load i8, ptr %.sroa.01.i.sroa.13.1984..sroa_idx.phi.trans.insert, align 8, !dbg !18897, !noalias !18548
  br label %bb.hs, !dbg !18904

bb.hu:                                            ; preds = %bb.hs
  %i.qv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ov) #24
          to label %.body unwind label %bb.hw, !dbg !18557, !noalias !18657

bb.hv:                                            ; preds = %bb.hs
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ov)
          to label %bb.ij unwind label %bb.gf, !dbg !18557, !noalias !18657

bb.hw:                                            ; preds = %bb.id, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i134, %bb.ic, %.thread63.i, %bb.ia, %bb.hu, %bb.hp, %bb.hj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i
  %i.qw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !18905, !noalias !18657
  unreachable, !dbg !18905

bb.hx:                                            ; preds = %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18849, !noalias !18548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18902, !noalias !18548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18842, !noalias !18548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18903, !noalias !18548
  br label %bb.gv, !dbg !18659

bb.hy:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.thread.i
  %i.qx = trunc nuw i8 %.sroa.03.1.i to i1, !dbg !18842
  br i1 %i.qx, label %.thread63.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i, !dbg !18842

bb.hz:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.thread.i
  %i.qy = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !18842 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18906), !dbg !18842
    #dbg_value(ptr %i.qy, !3186, !DIExpression(), !18909)
  call void @llvm.experimental.noalias.scope.decl(metadata !18911), !dbg !18914
    #dbg_value(ptr %i.qy, !3194, !DIExpression(), !18915)
  call void @llvm.experimental.noalias.scope.decl(metadata !18917), !dbg !18920
    #dbg_value(ptr %i.qy, !3204, !DIExpression(), !18921)
    #dbg_value(ptr %i.qy, !6038, !DIExpression(), !18923)
    #dbg_value(i64 1, !3209, !DIExpression(), !18925)
    #dbg_value(i8 1, !3213, !DIExpression(), !18925)
    #dbg_value(i64 1, !3216, !DIExpression(), !18927)
    #dbg_value(i8 1, !3220, !DIExpression(), !18927)
  %i.qz = load ptr, ptr %i.qy, align 8, !dbg !18929, !alias.scope !18931, !noalias !18548, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.qz, !3212, !DIExpression(), !18932)
    #dbg_value(ptr %i.qz, !3219, !DIExpression(), !18927)
  %i.ra = atomicrmw sub ptr %i.qz, i64 1 release, align 8, !dbg !18933, !noalias !18934
  %i.rb = icmp eq i64 %i.ra, 1, !dbg !18935
  br i1 %i.rb, label %bb.ia, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i, !dbg !18935

bb.ia:                                            ; preds = %bb.hz
    #dbg_value(i8 2, !3167, !DIExpression(), !18936)
  fence acquire, !dbg !18938
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa5InnerE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.qy) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i unwind label %bb.hw, !dbg !18939, !noalias !18562

.thread63.i:                                      ; preds = %bb.hy, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i141
  %.pn5666.i = phi { ptr, i32 } [ %i.qk, %bb.hy ], [ %i.qo, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit.i141 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson5error10BuildErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(128) %i.e) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i unwind label %bb.hw, !dbg !18842, !noalias !18657

bb.ib:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa3NFAEBJ_.exit32.i
  %i.rc = getelementptr inbounds nuw i8, ptr %i.h, i64 72, !dbg !18557 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18940), !dbg !18557
    #dbg_value(ptr %i.rc, !3085, !DIExpression(), !18943)
  call void @llvm.experimental.noalias.scope.decl(metadata !18945), !dbg !18948
    #dbg_value(ptr %i.rc, !3097, !DIExpression(), !18949)
  call void @llvm.experimental.noalias.scope.decl(metadata !18951), !dbg !18954
    #dbg_value(ptr %i.rc, !3111, !DIExpression(), !18955)
    #dbg_value(ptr %i.rc, !3118, !DIExpression(), !18957)
    #dbg_value(i64 1, !3131, !DIExpression(), !18959)
    #dbg_value(i8 1, !3140, !DIExpression(), !18959)
    #dbg_value(i64 1, !3143, !DIExpression(), !18961)
    #dbg_value(i8 1, !3150, !DIExpression(), !18961)
  %i.rd = load ptr, ptr %i.rc, align 8, !dbg !18963, !alias.scope !18965, !noalias !18548, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.rd, !3139, !DIExpression(), !18966)
    #dbg_value(ptr %i.rd, !3149, !DIExpression(), !18961)
  %i.re = atomicrmw sub ptr %i.rd, i64 1 release, align 8, !dbg !18967, !noalias !18968
  %i.rf = icmp eq i64 %i.re, 1, !dbg !18969
  br i1 %i.rf, label %bb.ic, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i134, !dbg !18969

bb.ic:                                            ; preds = %bb.ib
    #dbg_value(i8 2, !3167, !DIExpression(), !18970)
  fence acquire, !dbg !18972
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.rc) #25
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i134 unwind label %bb.hw, !dbg !18973, !noalias !18657

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEBH_.exit.i134: ; preds = %bb.ic, %bb.ib
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal7LiteralEECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ov) #24
          to label %.body.i131 unwind label %bb.hw, !dbg !18557, !noalias !18657

bb.id:                                            ; preds = %.body.i131
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy4CoreEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(1984) %i.aq) #24
          to label %.body unwind label %bb.hw, !dbg !18557, !noalias !18657

bb.ie:                                            ; preds = %_RNvMs5_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_13ReverseSuffix3new.exit
    #dbg_value(i128 %.sroa.0563.0.copyload, !14616, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !18974)
    #dbg_value(i128 %.sroa.0563.0.copyload, !14871, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !18975)
    #dbg_value(i128 %.sroa.4564.0.copyload, !14616, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !18974)
    #dbg_value(i128 %.sroa.4564.0.copyload, !14871, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !18975)
    #dbg_value(i64 %.sroa.5565.0.copyload, !14871, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18975)
    #dbg_value(i64 %.sroa.5565.0.copyload, !14616, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18974)
    #dbg_value(ptr %.sroa.6566.0.copyload, !14871, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !18975)
    #dbg_value(ptr %.sroa.6566.0.copyload, !14616, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !18974)
  %.sroa.5320.sroa.5.0..sroa.5320.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 64, !dbg !18976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !18976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.5320.sroa.5.0..sroa.5320.0..sroa_idx.sroa_idx, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.15.sroa.16.sroa.17, i64 120, i1 false), !dbg !18977
  %.sroa.6321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 184, !dbg !18976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.6321.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.15.sroa.17, i64 1800, i1 false), !dbg !18977
    #dbg_value(ptr %.sroa.9568.0.copyload, !14616, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !18974)
    #dbg_value(ptr %.sroa.9568.0.copyload, !14871, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !18975)
    #dbg_value(ptr %.sroa.10569.0.copyload, !14871, !DIExpression(DW_OP_LLVM_fragment, 15808, 64), !18975)
    #dbg_value(ptr %.sroa.10569.0.copyload, !14616, !DIExpression(DW_OP_LLVM_fragment, 15808, 64), !18974)
    #dbg_value(ptr %.sroa.11.1984.copyload, !14871, !DIExpression(DW_OP_LLVM_fragment, 15872, 64), !18975)
    #dbg_value(ptr %.sroa.11.1984.copyload, !14616, !DIExpression(DW_OP_LLVM_fragment, 15872, 64), !18974)
    #dbg_value(i8 %.sroa.13570.1984.copyload, !14616, !DIExpression(DW_OP_LLVM_fragment, 15936, 8), !18974)
    #dbg_value(i8 %.sroa.13570.1984.copyload, !14871, !DIExpression(DW_OP_LLVM_fragment, 15936, 8), !18975)
  %.sroa.10325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 2009, !dbg !18976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10325.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.sroa.21, i64 7, i1 false), !dbg !18977
  %.sroa.11326.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 2016, !dbg !18976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.11326.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.26223, i64 16, i1 false), !dbg !18977
  store i64 1, ptr %i.ao, align 16, !dbg !18976
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !18976
  store i64 1, ptr %i.rg, align 8, !dbg !18976
  %i.rh = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !18976
  store i128 %.sroa.0563.0.copyload, ptr %i.rh, align 16, !dbg !18976
  %.sroa.4319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32, !dbg !18976
  store i128 %.sroa.4564.0.copyload, ptr %.sroa.4319.0..sroa_idx, align 16, !dbg !18976
  %.sroa.5320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 48, !dbg !18976
  store i64 %.sroa.5565.0.copyload, ptr %.sroa.5320.0..sroa_idx, align 16, !dbg !18976
  %.sroa.5320.sroa.4.0..sroa.5320.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 56, !dbg !18976
  store ptr %.sroa.6566.0.copyload, ptr %.sroa.5320.sroa.4.0..sroa.5320.0..sroa_idx.sroa_idx, align 8, !dbg !18976
  %.sroa.7322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 1984, !dbg !18976
  store ptr %.sroa.9568.0.copyload, ptr %.sroa.7322.0..sroa_idx, align 16, !dbg !18976
  %.sroa.8323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 1992, !dbg !18976
  store ptr %.sroa.10569.0.copyload, ptr %.sroa.8323.0..sroa_idx, align 8, !dbg !18976
  %.sroa.8323.sroa.4.0..sroa.8323.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 2000, !dbg !18976
  store ptr %.sroa.11.1984.copyload, ptr %.sroa.8323.sroa.4.0..sroa.8323.0..sroa_idx.sroa_idx, align 16, !dbg !18976
  %.sroa.9324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 2008, !dbg !18976
  store i8 %.sroa.13570.1984.copyload, ptr %.sroa.9324.0..sroa_idx, align 8, !dbg !18976
    #dbg_declare(ptr %i.ao, !18978, !DIExpression(), !18986)
    #dbg_value(i64 16, !9576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18988)
    #dbg_value(i64 16, !9586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18990)
    #dbg_value(i64 16, !9611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18992)
    #dbg_value(i64 2032, !9576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18988)
    #dbg_value(i64 2032, !9586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18990)
    #dbg_value(i64 2032, !9611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18992)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !9608, !DIExpression(), !18990)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !9617, !DIExpression(), !18992)
    #dbg_value(i8 0, !9618, !DIExpression(), !18992)
    #dbg_value(i64 16, !9621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18994)
    #dbg_value(i64 16, !9658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18996)
    #dbg_value(i64 2032, !9621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18994)
    #dbg_value(i64 2032, !9658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18996)
    #dbg_value(i1 false, !9627, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !18994)
    #dbg_value(i64 2032, !9628, !DIExpression(), !18998)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !18999, !noalias !19000
  %i.ri = call noundef align 16 dereferenceable_or_null(2032) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 32, 2769) 2032, i64 noundef range(i64 8, 33) 16) #26, !dbg !19003, !noalias !19000 ; 3 uses
  %i.rj = icmp eq ptr %i.ri, null, !dbg !19004
  br i1 %i.rj, label %bb.if, label %bb.ii, !dbg !19005, !prof !9671

bb.if:                                            ; preds = %bb.ie
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 2032) #27
          to label %.noexc144 unwind label %bb.ig, !dbg !19006

.noexc144:                                        ; preds = %bb.if
  unreachable, !dbg !19006

bb.ig:                                            ; preds = %bb.if
  %i.rk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy13ReverseSuffixEEB1k_(ptr noalias nofree noundef nonnull align 16 dereferenceable(2032) %i.ao) #24
          to label %.body unwind label %bb.ih, !dbg !19007

bb.ih:                                            ; preds = %bb.ig
  %i.rl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !19008
  unreachable, !dbg !19008

bb.ii:                                            ; preds = %bb.ie
    #dbg_value(ptr %i.ri, !18983, !DIExpression(), !19009)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2032) %i.ri, ptr noundef nonnull align 16 dereferenceable(2032) %i.ao, i64 2032, i1 false), !dbg !19010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !19011
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19012
  store ptr %i.ri, ptr %i.rm, align 8, !dbg !19012
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19012
  store ptr @70, ptr %i.rn, align 8, !dbg !19012
  store i64 -3, ptr %0, align 8, !dbg !19012
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.16.sroa.17), !dbg !18486
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.17), !dbg !18486
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.21), !dbg !18486
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.26223), !dbg !18486
  br label %bb.gb, !dbg !18442

.thread608:                                       ; preds = %bb.gg, %bb.gi, %bb.gk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner14InnerPrefilterEBH_.exit.i, %bb.go, %bb.gm
  %.sroa.14.sroa.0.2.ph = phi i128 [ 2, %bb.gm ], [ %.sroa.15.sroa.0.3600, %bb.go ], [ %.sroa.15.sroa.0.3600, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner14InnerPrefilterEBH_.exit.i ], [ %.sroa.15.sroa.0.3600, %bb.gk ], [ %.sroa.15.sroa.0.3600, %bb.gi ], [ %.sroa.15.sroa.0.3600, %bb.gg ]
  %.sroa.14.sroa.18.2.ph = phi i8 [ 0, %bb.gm ], [ %.sroa.14.sroa.18.0.copyload400, %bb.go ], [ %.sroa.14.sroa.18.0.copyload400, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta13reverse_inner14InnerPrefilterEBH_.exit.i ], [ %.sroa.14.sroa.18.0.copyload400, %bb.gk ], [ %.sroa.14.sroa.18.0.copyload400, %bb.gi ], [ %.sroa.14.sroa.18.0.copyload400, %bb.gg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !19014
  br label %bb.ik, !dbg !19015

bb.ij:                                            ; preds = %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !18557, !noalias !18548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !19014
  %i.ro = icmp eq i128 %.sroa.01.i.sroa.0.0.copyload, -1, !dbg !18487
  br i1 %i.ro, label %bb.ik, label %bb.io, !dbg !19015

bb.ik:                                            ; preds = %.thread608, %bb.ij
  %.sroa.14.sroa.14.sroa.14.2624 = phi ptr [ %.sroa.15.sroa.16.sroa.16.3606, %.thread608 ], [ %.sroa.01.i.sroa.6.0.copyload, %bb.ij ]
  %.sroa.14.sroa.14.sroa.0.2623 = phi i64 [ %.sroa.15.sroa.16.sroa.0.3605, %.thread608 ], [ %.sroa.01.i.sroa.5.0.copyload, %bb.ij ]
  %.sroa.14.sroa.17.sroa.14.2622 = phi ptr [ %.sroa.14.sroa.17.sroa.14.0.copyload459, %.thread608 ], [ %.sroa.01.i.sroa.11.1984.copyload, %bb.ij ]
  %.sroa.14.sroa.14.sroa.14.2621 = phi ptr [ %.sroa.15.sroa.16.sroa.16.3603, %.thread608 ], [ %.sroa.01.i.sroa.10.0.copyload, %bb.ij ]
  %.sroa.14.sroa.18.2620 = phi i8 [ %.sroa.14.sroa.18.2.ph, %.thread608 ], [ %.sroa.01.i.sroa.13.1984.copyload, %bb.ij ]
  %.sroa.14.sroa.17.sroa.0.2619 = phi ptr [ %.sroa.14.sroa.17.sroa.0.0.copyload450, %.thread608 ], [ %.sroa.01.i.sroa.9.0.copyload, %bb.ij ]
  %.sroa.14.sroa.0.2618 = phi i128 [ %.sroa.14.sroa.0.2.ph, %.thread608 ], [ %.sroa.01.i.sroa.4.0.copyload, %bb.ij ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.14.sroa.14.sroa.15, i64 120, i1 false), !dbg !19016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.14.sroa.15, i64 1800, i1 false), !dbg !19016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.sroa.19, i64 7, i1 false), !dbg !19016
    #dbg_value(i128 %.sroa.14.sroa.0.2618, !14591, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !17273)
    #dbg_value(i64 %.sroa.14.sroa.14.sroa.0.2623, !14591, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !17273)
    #dbg_value(ptr %.sroa.14.sroa.14.sroa.14.2624, !14591, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !17273)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.0.2619, !14591, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !17273)
    #dbg_value(ptr %.sroa.14.sroa.14.sroa.14.2621, !14591, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !17273)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.2622, !14591, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !17273)
    #dbg_value(i8 %.sroa.14.sroa.18.2620, !14591, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !17273)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.14.sroa.15), !dbg !19017
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.15), !dbg !19017
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.19), !dbg !19017
    #dbg_value(i128 %.sroa.14.sroa.0.2618, !14811, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19018)
    #dbg_value(i64 %.sroa.14.sroa.14.sroa.0.2623, !14811, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19018)
    #dbg_value(ptr %.sroa.14.sroa.14.sroa.14.2624, !14811, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !19018)
  %.sroa.4420.sroa.5.0..sroa.4420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 48, !dbg !19019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !19019
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.4420.sroa.5.0..sroa.4420.0..sroa_idx.sroa_idx, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.11.sroa.12, i64 120, i1 false), !dbg !19020
  %.sroa.5421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 168, !dbg !19019
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.5421.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.12.sroa.0, i64 1800, i1 false), !dbg !19020
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.0.2619, !14811, !DIExpression(DW_OP_LLVM_fragment, 15616, 64), !19018)
    #dbg_value(ptr %.sroa.14.sroa.14.sroa.14.2621, !14811, !DIExpression(DW_OP_LLVM_fragment, 15680, 64), !19018)
    #dbg_value(ptr %.sroa.14.sroa.17.sroa.14.2622, !14811, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19018)
    #dbg_value(i8 %.sroa.14.sroa.18.2620, !14811, !DIExpression(DW_OP_LLVM_fragment, 15808, 8), !19018)
  %.sroa.9425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1993, !dbg !19019
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9425.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.sroa.14, i64 7, i1 false), !dbg !19020
  store i64 1, ptr %i.am, align 16, !dbg !19019
  %i.rp = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !19019
  store i64 1, ptr %i.rp, align 8, !dbg !19019
  %i.rq = getelementptr inbounds nuw i8, ptr %i.am, i64 16, !dbg !19019 ; 2 uses
  store i128 %.sroa.14.sroa.0.2618, ptr %i.rq, align 16, !dbg !19019
  %.sroa.4420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32, !dbg !19019
  store i64 %.sroa.14.sroa.14.sroa.0.2623, ptr %.sroa.4420.0..sroa_idx, align 16, !dbg !19019
  %.sroa.4420.sroa.4.0..sroa.4420.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40, !dbg !19019
  store ptr %.sroa.14.sroa.14.sroa.14.2624, ptr %.sroa.4420.sroa.4.0..sroa.4420.0..sroa_idx.sroa_idx, align 8, !dbg !19019
  %.sroa.6422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1968, !dbg !19019
  store ptr %.sroa.14.sroa.17.sroa.0.2619, ptr %.sroa.6422.0..sroa_idx, align 16, !dbg !19019
  %.sroa.7423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1976, !dbg !19019
  store ptr %.sroa.14.sroa.14.sroa.14.2621, ptr %.sroa.7423.0..sroa_idx, align 8, !dbg !19019
  %.sroa.7423.sroa.4.0..sroa.7423.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1984, !dbg !19019
  store ptr %.sroa.14.sroa.17.sroa.14.2622, ptr %.sroa.7423.sroa.4.0..sroa.7423.0..sroa_idx.sroa_idx, align 16, !dbg !19019
  %.sroa.8424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 1992, !dbg !19019
  store i8 %.sroa.14.sroa.18.2620, ptr %.sroa.8424.0..sroa_idx, align 8, !dbg !19019
    #dbg_declare(ptr %i.am, !19021, !DIExpression(), !19029)
    #dbg_value(i64 16, !9576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19031)
    #dbg_value(i64 16, !9586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19033)
    #dbg_value(i64 16, !9611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19035)
    #dbg_value(i64 2000, !9576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19031)
    #dbg_value(i64 2000, !9586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19033)
    #dbg_value(i64 2000, !9611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19035)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !9608, !DIExpression(), !19033)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !9617, !DIExpression(), !19035)
    #dbg_value(i8 0, !9618, !DIExpression(), !19035)
    #dbg_value(i64 16, !9621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19037)
    #dbg_value(i64 16, !9658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19039)
    #dbg_value(i64 2000, !9621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19037)
    #dbg_value(i64 2000, !9658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19039)
    #dbg_value(i1 false, !9627, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19037)
    #dbg_value(i64 2000, !9628, !DIExpression(), !19041)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !19042, !noalias !19043
  %i.rr = call noundef align 16 dereferenceable_or_null(2000) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 32, 2769) 2000, i64 noundef range(i64 8, 33) 16) #26, !dbg !19046, !noalias !19043 ; 3 uses
  %i.rs = icmp eq ptr %i.rr, null, !dbg !19047
  br i1 %i.rs, label %bb.il, label %bb.it, !dbg !19048, !prof !9671

bb.il:                                            ; preds = %bb.ik
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 2000) #27
          to label %.noexc146 unwind label %bb.im, !dbg !19049

.noexc146:                                        ; preds = %bb.il
  unreachable, !dbg !19049

bb.im:                                            ; preds = %bb.il
  %i.rt = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.am, !19050, !DIExpression(), !19056)
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy4CoreEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(1984) %i.rq)
          to label %.body unwind label %bb.in, !dbg !19058

bb.in:                                            ; preds = %bb.im
  %i.ru = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !19059
  unreachable, !dbg !19059

bb.io:                                            ; preds = %bb.ij
    #dbg_value(i128 %.sroa.01.i.sroa.0.0.copyload, !14620, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19060)
    #dbg_value(i128 %.sroa.01.i.sroa.0.0.copyload, !14841, !DIExpression(DW_OP_LLVM_fragment, 0, 128), !19061)
    #dbg_value(i128 %.sroa.01.i.sroa.4.0.copyload, !14620, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !19060)
    #dbg_value(i128 %.sroa.01.i.sroa.4.0.copyload, !14841, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !19061)
    #dbg_value(i64 %.sroa.01.i.sroa.5.0.copyload, !14841, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !19061)
    #dbg_value(i64 %.sroa.01.i.sroa.5.0.copyload, !14620, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !19060)
    #dbg_value(ptr %.sroa.01.i.sroa.6.0.copyload, !14841, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !19061)
    #dbg_value(ptr %.sroa.01.i.sroa.6.0.copyload, !14620, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !19060)
  %.sroa.5410.sroa.5.0..sroa.5410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 64, !dbg !19062
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !19062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %.sroa.5410.sroa.5.0..sroa.5410.0..sroa_idx.sroa_idx, ptr noundef nonnull align 16 dereferenceable(120) %.sroa.14.sroa.14.sroa.15, i64 120, i1 false), !dbg !19063
  %.sroa.6411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 184, !dbg !19062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.6411.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(1800) %.sroa.14.sroa.15, i64 1800, i1 false), !dbg !19063
    #dbg_value(ptr %.sroa.01.i.sroa.9.0.copyload, !14620, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19060)
    #dbg_value(ptr %.sroa.01.i.sroa.9.0.copyload, !14841, !DIExpression(DW_OP_LLVM_fragment, 15744, 64), !19061)
    #dbg_value(ptr %.sroa.01.i.sroa.10.0.copyload, !14841, !DIExpression(DW_OP_LLVM_fragment, 15808, 64), !19061)
    #dbg_value(ptr %.sroa.01.i.sroa.10.0.copyload, !14620, !DIExpression(DW_OP_LLVM_fragment, 15808, 64), !19060)
    #dbg_value(ptr %.sroa.01.i.sroa.11.1984.copyload, !14841, !DIExpression(DW_OP_LLVM_fragment, 15872, 64), !19061)
    #dbg_value(ptr %.sroa.01.i.sroa.11.1984.copyload, !14620, !DIExpression(DW_OP_LLVM_fragment, 15872, 64), !19060)
    #dbg_value(i8 %.sroa.01.i.sroa.13.1984.copyload, !14620, !DIExpression(DW_OP_LLVM_fragment, 15936, 8), !19060)
    #dbg_value(i8 %.sroa.01.i.sroa.13.1984.copyload, !14841, !DIExpression(DW_OP_LLVM_fragment, 15936, 8), !19061)
  %.sroa.10415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 2009, !dbg !19062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10415.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.sroa.19, i64 7, i1 false), !dbg !19063
  %.sroa.11416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 2016, !dbg !19062
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(736) %.sroa.11416.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(736) %.sroa.01.i.sroa.15, i64 736, i1 false), !dbg !19063
    #dbg_value(ptr %i.qs, !14620, !DIExpression(DW_OP_LLVM_fragment, 21888, 64), !19060)
    #dbg_value(ptr %i.qs, !14841, !DIExpression(DW_OP_LLVM_fragment, 21888, 64), !19061)
    #dbg_value(i8 0, !14620, !DIExpression(DW_OP_LLVM_fragment, 21952, 8), !19060)
    #dbg_value(i8 0, !14841, !DIExpression(DW_OP_LLVM_fragment, 21952, 8), !19061)
  store i64 1, ptr %i.an, align 16, !dbg !19062
  %i.rv = getelementptr inbounds nuw i8, ptr %i.an, i64 8, !dbg !19062
  store i64 1, ptr %i.rv, align 8, !dbg !19062
  %i.rw = getelementptr inbounds nuw i8, ptr %i.an, i64 16, !dbg !19062 ; 2 uses
  store i128 %.sroa.01.i.sroa.0.0.copyload, ptr %i.rw, align 16, !dbg !19062
  %.sroa.4409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 32, !dbg !19062
  store i128 %.sroa.01.i.sroa.4.0.copyload, ptr %.sroa.4409.0..sroa_idx, align 16, !dbg !19062
  %.sroa.5410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 48, !dbg !19062
  store i64 %.sroa.01.i.sroa.5.0.copyload, ptr %.sroa.5410.0..sroa_idx, align 16, !dbg !19062
  %.sroa.5410.sroa.4.0..sroa.5410.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 56, !dbg !19062
  store ptr %.sroa.01.i.sroa.6.0.copyload, ptr %.sroa.5410.sroa.4.0..sroa.5410.0..sroa_idx.sroa_idx, align 8, !dbg !19062
  %.sroa.7412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 1984, !dbg !19062
  store ptr %.sroa.01.i.sroa.9.0.copyload, ptr %.sroa.7412.0..sroa_idx, align 16, !dbg !19062
  %.sroa.8413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 1992, !dbg !19062
  store ptr %.sroa.01.i.sroa.10.0.copyload, ptr %.sroa.8413.0..sroa_idx, align 8, !dbg !19062
  %.sroa.8413.sroa.4.0..sroa.8413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 2000, !dbg !19062
  store ptr %.sroa.01.i.sroa.11.1984.copyload, ptr %.sroa.8413.sroa.4.0..sroa.8413.0..sroa_idx.sroa_idx, align 16, !dbg !19062
  %.sroa.9414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 2008, !dbg !19062
  store i8 %.sroa.01.i.sroa.13.1984.copyload, ptr %.sroa.9414.0..sroa_idx, align 8, !dbg !19062
  %.sroa.12417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 2752, !dbg !19062
  store ptr %i.qs, ptr %.sroa.12417.0..sroa_idx, align 16, !dbg !19062
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 2760, !dbg !19062
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !19062
    #dbg_declare(ptr %i.an, !19064, !DIExpression(), !19072)
    #dbg_value(i64 16, !9576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19074)
    #dbg_value(i64 16, !9586, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19076)
    #dbg_value(i64 16, !9611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19078)
    #dbg_value(i64 2768, !9576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19074)
    #dbg_value(i64 2768, !9586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19076)
    #dbg_value(i64 2768, !9611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19078)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !9608, !DIExpression(), !19076)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !9617, !DIExpression(), !19078)
    #dbg_value(i8 0, !9618, !DIExpression(), !19078)
    #dbg_value(i64 16, !9621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19080)
    #dbg_value(i64 16, !9658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19082)
    #dbg_value(i64 2768, !9621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19080)
    #dbg_value(i64 2768, !9658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19082)
    #dbg_value(i1 false, !9627, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19080)
    #dbg_value(i64 2768, !9628, !DIExpression(), !19084)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !dbg !19085, !noalias !19086
  %i.rx = call noundef align 16 dereferenceable_or_null(2768) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 32, 2769) 2768, i64 noundef range(i64 8, 33) 16) #26, !dbg !19089, !noalias !19086 ; 3 uses
  %i.ry = icmp eq ptr %i.rx, null, !dbg !19090
  br i1 %i.ry, label %bb.ip, label %bb.is, !dbg !19091, !prof !9671

bb.ip:                                            ; preds = %bb.io
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 2768) #27
          to label %.noexc149 unwind label %bb.iq, !dbg !19092

.noexc149:                                        ; preds = %bb.ip
  unreachable, !dbg !19092

bb.iq:                                            ; preds = %bb.ip
  %i.rz = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.an, !19093, !DIExpression(), !19099)
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy12ReverseInnerEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(2752) %i.rw)
          to label %.body unwind label %bb.ir, !dbg !19101

bb.ir:                                            ; preds = %bb.iq
  %i.sa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23, !dbg !19102
  unreachable, !dbg !19102

bb.is:                                            ; preds = %bb.io
    #dbg_value(ptr %i.rx, !19069, !DIExpression(), !19103)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2768) %i.rx, ptr noundef nonnull align 16 dereferenceable(2768) %i.an, i64 2768, i1 false), !dbg !19104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !dbg !19105
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19106
  store ptr %i.rx, ptr %i.sb, align 8, !dbg !19106
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19106
  store ptr @71, ptr %i.sc, align 8, !dbg !19106
  store i64 -3, ptr %0, align 8, !dbg !19106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.14.sroa.15), !dbg !19017
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.15), !dbg !19017
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.sroa.19), !dbg !19017
  br label %bb.gb, !dbg !18442

bb.it:                                            ; preds = %bb.ik
    #dbg_value(ptr %i.rr, !19026, !DIExpression(), !19107)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %i.rr, ptr noundef nonnull align 16 dereferenceable(2000) %i.am, i64 2000, i1 false), !dbg !19108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !dbg !19109
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19110
  store ptr %i.rr, ptr %i.sd, align 8, !dbg !19110
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !19110
  store ptr @72, ptr %i.se, align 8, !dbg !19110
  store i64 -3, ptr %0, align 8, !dbg !19110
  call void @llvm.experimental.noalias.scope.decl(metadata !19111), !dbg !16084
    #dbg_value(ptr %i.au, !3078, !DIExpression(), !19114)
  %i.sf = load i8, ptr %i.ew, align 8, !dbg !19116, !range !3081, !alias.scope !19111, !noundef !29
  %i.sg = icmp eq i8 %i.sf, 2, !dbg !19116
  br i1 %i.sg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit129, label %bb.iu, !dbg !19116

bb.iu:                                            ; preds = %bb.it
  call void @llvm.experimental.noalias.scope.decl(metadata !19117), !dbg !19116
    #dbg_value(ptr %i.au, !3085, !DIExpression(), !19120)
  call void @llvm.experimental.noalias.scope.decl(metadata !19122), !dbg !19125
    #dbg_value(ptr %i.au, !3097, !DIExpression(), !19126)
  call void @llvm.experimental.noalias.scope.decl(metadata !19128), !dbg !19131
    #dbg_value(ptr %i.au, !3111, !DIExpression(), !19132)
    #dbg_value(ptr %i.au, !3118, !DIExpression(), !19134)
    #dbg_value(i64 1, !3131, !DIExpression(), !19136)
    #dbg_value(i8 1, !3140, !DIExpression(), !19136)
    #dbg_value(i64 1, !3143, !DIExpression(), !19138)
    #dbg_value(i8 1, !3150, !DIExpression(), !19138)
  %i.sh = load ptr, ptr %i.au, align 8, !dbg !19140, !alias.scope !19142, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.sh, !3139, !DIExpression(), !19143)
    #dbg_value(ptr %i.sh, !3149, !DIExpression(), !19138)
  %i.si = atomicrmw sub ptr %i.sh, i64 1 release, align 8, !dbg !19144, !noalias !19142
  %i.sj = icmp eq i64 %i.si, 1, !dbg !19145
  br i1 %i.sj, label %bb.iv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit129, !dbg !19145

bb.iv:                                            ; preds = %bb.iu
    #dbg_value(i8 2, !3167, !DIExpression(), !19146)
  fence acquire, !dbg !19148
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter10PrefilterIEL_E9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.au) #25, !dbg !19149
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit129, !dbg !19149

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter9PrefilterEEB13_.exit129: ; preds = %bb.iv, %bb.iu, %bb.it, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs3roNzt6HBWW_12regex_syntax3hir7literal3SeqECs9GYDdpCSJ4S_14regex_automata.exit, %bb.gb, %bb.gc, %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !16084
  ret void, !dbg !19150
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter12aho_corasick11AhoCorasickENtB5_8Strategy10group_infoB9_(ptr noalias nofree noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(32) %0) unnamed_addr #3 !dbg !19151 {
bb.a:
    #dbg_value(ptr %0, !19157, !DIExpression(), !19158)
  ret ptr %0, !dbg !19159
}
end_hunk_3
begin_hunk_4_@_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter5teddy5TeddyENtB5_8Strategy8is_matchB9_:bb.a
    #dbg_value(ptr %2, !20024, !DIExpression(), !20610)
    #dbg_value(ptr %2, !20036, !DIExpression(), !20612)
    #dbg_value(ptr %2, !20024, !DIExpression(), !20614)
    #dbg_declare(ptr %i.b, !20047, !DIExpression(), !20616)
    #dbg_declare(ptr %i.a, !20061, !DIExpression(), !20618)
    #dbg_declare(ptr poison, !20056, !DIExpression(), !20620)
    #dbg_declare(ptr poison, !20070, !DIExpression(), !20621)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !20622
  %i.d = load i64, ptr %i.c, align 8, !dbg !20622, !alias.scope !20594, !noalias !20623, !noundef !29 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !20626
  %i.f = load i64, ptr %i.e, align 8, !dbg !20626, !alias.scope !20594, !noalias !20623, !noundef !29 ; 3 uses
  %i.g = icmp ugt i64 %i.d, %i.f, !dbg !20627
  br i1 %i.g, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter5teddy5TeddyENtB5_8Strategy6searchB9_.exit, label %bb.b, !dbg !20628

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %2, align 8, !dbg !20629, !range !8482, !alias.scope !20594, !noalias !20623, !noundef !29
    #dbg_value(ptr poison, !20085, !DIExpression(), !20630)
  %i.i = icmp eq i32 %i.h, 0, !dbg !20632
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !20633 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !20633 ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.c, !dbg !20632

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !20634, !noalias !20635
  %i.l = load ptr, ptr %i.j, align 8, !dbg !20636, !alias.scope !20594, !noalias !20623, !nonnull !29, !noundef !29
  %i.m = load i64, ptr %i.k, align 8, !dbg !20636, !alias.scope !20594, !noalias !20623, !noundef !29
  call void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter5teddyNtB4_5TeddyNtB6_10PrefilterI6prefix(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(536) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.m, i64 noundef %i.d, i64 noundef %i.f), !dbg !20637, !noalias !20638
  %i.n = load i64, ptr %i.b, align 8, !dbg !20639, !range !4033, !noalias !20635, !noundef !29
  %i.o = trunc nuw i64 %i.n to i1, !dbg !20640
  br i1 %i.o, label %bb.e, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit, !dbg !20640

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20641, !noalias !20635
  %i.p = load ptr, ptr %i.j, align 8, !dbg !20642, !alias.scope !20594, !noalias !20623, !nonnull !29, !noundef !29
  %i.q = load i64, ptr %i.k, align 8, !dbg !20642, !alias.scope !20594, !noalias !20623, !noundef !29
  call void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter5teddyNtB4_5TeddyNtB6_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(536) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.q, i64 noundef %i.d, i64 noundef %i.f), !dbg !20643, !noalias !20638
  %i.r = load i64, ptr %i.a, align 8, !dbg !20644, !range !4033, !noalias !20635, !noundef !29
  %i.s = trunc nuw i64 %i.r to i1, !dbg !20645
  br i1 %i.s, label %bb.g, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4, !dbg !20645

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !20646
  %i.u = load i64, ptr %i.t, align 8, !dbg !20646, !noalias !20635, !noundef !29
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !20646
  %i.w = load i64, ptr %i.v, align 8, !dbg !20646, !noalias !20635, !noundef !29
    #dbg_value(i64 %i.u, !20057, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20647)
    #dbg_value(i64 %i.u, !20106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20648)
    #dbg_value(i64 %i.w, !20057, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20647)
    #dbg_value(i64 %i.w, !20106, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20648)
    #dbg_value(i32 0, !12158, !DIExpression(), !20650)
    #dbg_value(i64 %i.u, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20650)
    #dbg_value(i64 %i.w, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20650)
    #dbg_value(i64 %i.u, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20652)
    #dbg_value(i64 %i.w, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20652)
  %.not.i = icmp ugt i64 %i.u, %i.w, !dbg !20653
  br i1 %.not.i, label %bb.f, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit, !dbg !20653, !prof !9671

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !20654, !noalias !20655
  unreachable, !dbg !20654

_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit: ; preds = %bb.c, %bb.e
  %.sroa.0.0 = phi i64 [ 1, %bb.e ], [ 0, %bb.c ], !dbg !20658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20659, !noalias !20635
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter5teddy5TeddyENtB5_8Strategy6searchB9_.exit, !dbg !20660

bb.g:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20661
  %i.y = load i64, ptr %i.x, align 8, !dbg !20661, !noalias !20635, !noundef !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !20661
  %i.aa = load i64, ptr %i.z, align 8, !dbg !20661, !noalias !20635, !noundef !29
    #dbg_value(i64 %i.y, !20071, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20662)
    #dbg_value(i64 %i.y, !20126, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20663)
    #dbg_value(i64 %i.aa, !20071, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20662)
    #dbg_value(i64 %i.aa, !20126, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20663)
    #dbg_value(i32 0, !12158, !DIExpression(), !20665)
    #dbg_value(i64 %i.y, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20665)
    #dbg_value(i64 %i.aa, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20665)
    #dbg_value(i64 %i.y, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20667)
    #dbg_value(i64 %i.aa, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20667)
  %.not.i3 = icmp ugt i64 %i.y, %i.aa, !dbg !20668
  br i1 %.not.i3, label %bb.h, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4, !dbg !20668, !prof !9671

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !20669, !noalias !20670
  unreachable, !dbg !20669

_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4: ; preds = %bb.d, %bb.g
  %.sroa.0.1 = phi i64 [ 1, %bb.g ], [ 0, %bb.d ], !dbg !20673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20674, !noalias !20635
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter5teddy5TeddyENtB5_8Strategy6searchB9_.exit, !dbg !20675

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter5teddy5TeddyENtB5_8Strategy6searchB9_.exit: ; preds = %bb.a, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit ], [ %.sroa.0.1, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4 ], [ 0, %bb.a ], !dbg !20598
    #dbg_value(ptr undef, !20588, !DIExpression(), !20591)
  %i.ab = icmp ne i64 %.sroa.0.2, 0, !dbg !20676
  ret i1 %i.ab, !dbg !20678
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy10group_infoB9_(ptr noalias nofree noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 !dbg !20679 {
bb.a:
    #dbg_value(ptr %0, !20684, !DIExpression(), !20685)
  ret ptr %0, !dbg !20686
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy11reset_cacheB9_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #4 !dbg !20687 {
bb.a:
    #dbg_value(ptr poison, !20691, !DIExpression(), !20693)
    #dbg_value(ptr poison, !20692, !DIExpression(), !20693)
  ret void, !dbg !20694
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy11search_halfB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree readnone align 8 captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #5 !dbg !20695 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !20699, !DIExpression(), !20702)
    #dbg_value(ptr poison, !20700, !DIExpression(), !20702)
    #dbg_value(ptr %3, !20701, !DIExpression(), !20702)
    #dbg_declare(ptr poison, !20703, !DIExpression(), !20715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20717), !dbg !20720
    #dbg_value(ptr %1, !20721, !DIExpression(), !20728)
    #dbg_value(ptr poison, !20726, !DIExpression(), !20728)
    #dbg_value(ptr %3, !20727, !DIExpression(), !20728)
    #dbg_value(ptr %3, !20730, !DIExpression(), !20733)
    #dbg_value(ptr %3, !20735, !DIExpression(), !20738)
    #dbg_value(ptr %3, !20735, !DIExpression(), !20740)
    #dbg_value(ptr %3, !20742, !DIExpression(), !20745)
    #dbg_value(ptr %3, !20747, !DIExpression(), !20750)
    #dbg_value(ptr %3, !20735, !DIExpression(), !20752)
    #dbg_value(ptr %3, !20747, !DIExpression(), !20754)
    #dbg_value(ptr %3, !20735, !DIExpression(), !20756)
    #dbg_declare(ptr %i.a, !20758, !DIExpression(), !20770)
    #dbg_declare(ptr poison, !20767, !DIExpression(), !20772)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !20773
  %i.c = load i64, ptr %i.b, align 8, !dbg !20773, !alias.scope !20717, !noalias !20774, !noundef !29 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !20777
  %i.e = load i64, ptr %i.d, align 8, !dbg !20777, !alias.scope !20717, !noalias !20774, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !20778
  br i1 %i.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread, label %bb.b, !dbg !20779

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 8, !dbg !20780, !range !8482, !alias.scope !20717, !noalias !20774, !noundef !29
    #dbg_value(ptr poison, !20781, !DIExpression(), !20784)
  %i.h = icmp eq i32 %i.g, 0, !dbg !20786
  br i1 %i.h, label %bb.e, label %bb.c, !dbg !20786

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !20787
  %i.j = load i64, ptr %i.i, align 8, !dbg !20787, !alias.scope !20717, !noalias !20774, !noundef !29
    #dbg_value(ptr poison, !20788, !DIExpression(), !20804)
    #dbg_value(ptr poison, !20796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20804)
    #dbg_value(ptr poison, !20806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20813)
    #dbg_value(ptr poison, !20815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20821)
    #dbg_value(i64 %i.j, !20796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20804)
    #dbg_value(i64 %i.j, !20806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20813)
    #dbg_value(i64 %i.j, !20815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20821)
    #dbg_value(i64 %i.c, !20797, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20804)
    #dbg_value(i64 poison, !20797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20804)
    #dbg_value(i64 %i.c, !20811, !DIExpression(), !20813)
    #dbg_value(i64 %i.c, !20820, !DIExpression(), !20821)
  %i.k = icmp ult i64 %i.c, %i.j, !dbg !20823
  br i1 %i.k, label %bb.d, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread, !dbg !20823

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20824
  %.val = load i8, ptr %i.l, align 8, !dbg !20825
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !20787
  %i.n = load ptr, ptr %i.m, align 8, !dbg !20787, !alias.scope !20717, !noalias !20774, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.n, !20796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20804)
    #dbg_value(ptr %i.n, !20806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20813)
    #dbg_value(ptr %i.n, !20815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20821)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.c, !dbg !20826
  %i.p = load i8, ptr %i.o, align 1, !dbg !20827, !alias.scope !20828, !noalias !20831, !noundef !29
    #dbg_value(i8 %i.p, !20798, !DIExpression(), !20833)
  %i.q = icmp eq i8 %.val, %i.p, !dbg !20834
  br i1 %i.q, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread28, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread, !dbg !20834

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20835, !noalias !20836
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20835
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !20837
  %i.t = load ptr, ptr %i.s, align 8, !dbg !20837, !alias.scope !20717, !noalias !20774, !nonnull !29, !noundef !29
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !20837
  %i.v = load i64, ptr %i.u, align 8, !dbg !20837, !alias.scope !20717, !noalias !20774, !noundef !29
  call void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memchrNtB4_6MemchrNtB6_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v, i64 noundef %i.c, i64 noundef %i.e), !dbg !20838, !noalias !20839
  %i.w = load i64, ptr %i.a, align 8, !dbg !20840, !range !4033, !noalias !20836, !noundef !29
  %i.x = trunc nuw i64 %i.w to i1, !dbg !20841
  br i1 %i.x, label %bb.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit, !dbg !20841

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread28: ; preds = %bb.d
  %i.y = add nuw nsw i64 %i.c, 1, !dbg !20842
    #dbg_value(i32 0, !12158, !DIExpression(), !20843)
    #dbg_value(i64 %i.c, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20843)
    #dbg_value(i64 %i.y, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20843)
    #dbg_value(i64 %i.c, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20864)
    #dbg_value(i64 %i.y, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20864)
    #dbg_value(i64 %i.c, !20712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20865)
    #dbg_value(i32 undef, !20712, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !20865)
    #dbg_value(i64 1, !20712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20865)
    #dbg_value(i64 %i.y, !20712, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20865)
    #dbg_value(i32 0, !20712, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !20865)
  br label %bb.h, !dbg !20866

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !20867
  %i.aa = load i64, ptr %i.z, align 8, !dbg !20867, !noalias !20836, !noundef !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !20867
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !20867, !noalias !20836, !noundef !29 ; 2 uses
    #dbg_value(i64 %i.aa, !20768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20868)
    #dbg_value(i64 %i.aa, !20869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20874)
    #dbg_value(i64 %i.ac, !20768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20868)
    #dbg_value(i64 %i.ac, !20869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20874)
    #dbg_value(i32 0, !12158, !DIExpression(), !20877)
    #dbg_value(i64 %i.aa, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20877)
    #dbg_value(i64 %i.ac, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20877)
    #dbg_value(i64 %i.aa, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20879)
    #dbg_value(i64 %i.ac, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20879)
  %.not.i6 = icmp ugt i64 %i.aa, %i.ac, !dbg !20880
  br i1 %.not.i6, label %bb.g, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread32, !dbg !20880, !prof !9671

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread32: ; preds = %bb.f
    #dbg_value(i64 1, !20712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20865)
    #dbg_value(i64 %i.ac, !20712, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20865)
    #dbg_value(i32 0, !20712, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !20865)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20881, !noalias !20836
    #dbg_value(i64 1, !20712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20865)
    #dbg_value(i64 %i.ac, !20712, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20865)
    #dbg_value(i32 0, !20712, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !20865)
  br label %bb.h, !dbg !20866

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !20882, !noalias !20883
  unreachable, !dbg !20882

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit: ; preds = %bb.e
    #dbg_value(i64 0, !20712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20865)
    #dbg_value(i64 undef, !20712, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20865)
    #dbg_value(i32 0, !20712, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !20865)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20881, !noalias !20836
    #dbg_value(i64 0, !20712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20865)
    #dbg_value(i64 undef, !20712, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20865)
    #dbg_value(i32 0, !20712, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !20865)
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread, !dbg !20866

bb.h:                                             ; preds = %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread32, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread28
  %.sroa.10.231 = phi i64 [ %i.y, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread28 ], [ %i.ac, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread32 ]
    #dbg_value(i64 poison, !20713, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20886)
    #dbg_value(i64 %.sroa.10.231, !20713, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20886)
    #dbg_value(i32 0, !20713, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !20886)
    #dbg_value(i32 poison, !20713, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !20886)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20887
  store i64 %.sroa.10.231, ptr %i.ad, align 8, !dbg !20887
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !20887
  store i32 0, ptr %i.ae, align 8, !dbg !20887
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread, !dbg !20888

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread: ; preds = %bb.c, %bb.d, %bb.a, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit, %bb.h
  %storemerge = phi i64 [ 1, %bb.h ], [ 0, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ], !dbg !20865
  store i64 %storemerge, ptr %0, align 8, !dbg !20865
  ret void, !dbg !20889
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy12create_cacheB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1400 x i8]) align 8 captures(none) dereferenceable(1400) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 !dbg !20890 {
bb.a:
    #dbg_value(ptr %1, !20894, !DIExpression(), !20895)
    #dbg_value(i64 1, !20896, !DIExpression(), !20901)
    #dbg_value(i8 0, !20900, !DIExpression(), !20901)
    #dbg_value(i64 1, !20913, !DIExpression(), !20918)
    #dbg_value(i8 0, !20917, !DIExpression(), !20918)
    #dbg_value(ptr %1, !20911, !DIExpression(), !20908)
    #dbg_value(ptr %1, !20905, !DIExpression(), !20920)
    #dbg_value(ptr %1, !20921, !DIExpression(), !20924)
  %i.a = load ptr, ptr %1, align 8, !dbg !20926, !nonnull !29, !noundef !29 ; 2 uses
    #dbg_value(ptr %i.a, !20899, !DIExpression(), !20929)
    #dbg_value(ptr %i.a, !20916, !DIExpression(), !20918)
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8, !dbg !20930
    #dbg_value(i64 %i.b, !20906, !DIExpression(), !20931)
  %i.c = icmp slt i64 %i.b, 0, !dbg !20932
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !20932

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1056, !dbg !20933
  tail call void @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB2_8Captures3all(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noundef nonnull %i.a), !dbg !20934
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1096, !dbg !20933
  store i64 -1, ptr %i.e, align 8, !dbg !20933
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1312, !dbg !20933
  store i64 -1, ptr %i.f, align 8, !dbg !20933
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1368, !dbg !20933
  store i64 -1, ptr %i.g, align 8, !dbg !20933
  store i64 2, ptr %0, align 8, !dbg !20933
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704, !dbg !20933
  store i64 2, ptr %i.h, align 8, !dbg !20933
  ret void, !dbg !20935

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !20936
  unreachable, !dbg !20936
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy12memory_usageB9_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 !dbg !20937 {
bb.a:
    #dbg_value(ptr poison, !20941, !DIExpression(), !20942)
  ret i64 0, !dbg !20943
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal { i32, i32 } @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy12search_slotsB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) %3, i64 noundef range(i64 0, 1152921504606846976) %4) unnamed_addr #5 !dbg !20944 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !20948, !DIExpression(), !20962)
    #dbg_value(ptr poison, !20949, !DIExpression(), !20962)
    #dbg_value(ptr %2, !20950, !DIExpression(), !20962)
    #dbg_value(ptr %3, !20951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20962)
    #dbg_value(ptr %3, !20963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20967)
    #dbg_value(ptr %3, !20969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20973)
    #dbg_value(ptr %3, !20963, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20975)
    #dbg_value(ptr %3, !20969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20977)
    #dbg_value(i64 %4, !20951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20962)
    #dbg_value(i64 %4, !20963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20967)
    #dbg_value(i64 %4, !20969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20973)
    #dbg_value(i64 %4, !20963, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20975)
    #dbg_value(i64 %4, !20969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20977)
    #dbg_value(i64 0, !20966, !DIExpression(), !20967)
    #dbg_value(i64 0, !20972, !DIExpression(), !20973)
    #dbg_value(i64 1, !20980, !DIExpression(), !20984)
    #dbg_value(i64 1, !20966, !DIExpression(), !20975)
    #dbg_value(i64 1, !20972, !DIExpression(), !20977)
    #dbg_value(i64 1, !20980, !DIExpression(), !20990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20994), !dbg !20997
    #dbg_value(ptr %0, !20721, !DIExpression(), !20998)
    #dbg_value(ptr poison, !20726, !DIExpression(), !20998)
    #dbg_value(ptr %2, !20727, !DIExpression(), !20998)
    #dbg_value(ptr %2, !20730, !DIExpression(), !21000)
    #dbg_value(ptr %2, !20735, !DIExpression(), !21002)
    #dbg_value(ptr %2, !20735, !DIExpression(), !21004)
    #dbg_value(ptr %2, !20742, !DIExpression(), !21006)
    #dbg_value(ptr %2, !20747, !DIExpression(), !21008)
    #dbg_value(ptr %2, !20735, !DIExpression(), !21010)
    #dbg_value(ptr %2, !20747, !DIExpression(), !21012)
    #dbg_value(ptr %2, !20735, !DIExpression(), !21014)
    #dbg_declare(ptr %i.a, !20758, !DIExpression(), !21016)
    #dbg_declare(ptr poison, !20767, !DIExpression(), !21018)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !21019
  %i.c = load i64, ptr %i.b, align 8, !dbg !21019, !alias.scope !20994, !noalias !21020, !noundef !29 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !21023
  %i.e = load i64, ptr %i.d, align 8, !dbg !21023, !alias.scope !20994, !noalias !21020, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !21024
  br i1 %i.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread, label %bb.b, !dbg !21025

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 8, !dbg !21026, !range !8482, !alias.scope !20994, !noalias !21020, !noundef !29
    #dbg_value(ptr poison, !20781, !DIExpression(), !21027)
  %i.h = icmp eq i32 %i.g, 0, !dbg !21029
  br i1 %i.h, label %bb.e, label %bb.c, !dbg !21029

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !21030
  %i.j = load i64, ptr %i.i, align 8, !dbg !21030, !alias.scope !20994, !noalias !21020, !noundef !29
    #dbg_value(ptr poison, !20788, !DIExpression(), !21031)
    #dbg_value(ptr poison, !20796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21031)
    #dbg_value(ptr poison, !20806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21033)
    #dbg_value(ptr poison, !20815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21035)
    #dbg_value(i64 %i.j, !20796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21031)
    #dbg_value(i64 %i.j, !20806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21033)
    #dbg_value(i64 %i.j, !20815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21035)
    #dbg_value(i64 %i.c, !20797, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21031)
    #dbg_value(i64 poison, !20797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21031)
    #dbg_value(i64 %i.c, !20811, !DIExpression(), !21033)
    #dbg_value(i64 %i.c, !20820, !DIExpression(), !21035)
  %i.k = icmp ult i64 %i.c, %i.j, !dbg !21037
  br i1 %i.k, label %bb.d, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread, !dbg !21037

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21038
  %.val = load i8, ptr %i.l, align 8, !dbg !21039
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21030
  %i.n = load ptr, ptr %i.m, align 8, !dbg !21030, !alias.scope !20994, !noalias !21020, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.n, !20796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21031)
    #dbg_value(ptr %i.n, !20806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21033)
    #dbg_value(ptr %i.n, !20815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21035)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.c, !dbg !21040
  %i.p = load i8, ptr %i.o, align 1, !dbg !21041, !alias.scope !21042, !noalias !21045, !noundef !29
    #dbg_value(i8 %i.p, !20798, !DIExpression(), !21047)
  %i.q = icmp eq i8 %.val, %i.p, !dbg !21048
  br i1 %i.q, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread58, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread, !dbg !21048

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21049, !noalias !21050
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21049
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21051
  %i.t = load ptr, ptr %i.s, align 8, !dbg !21051, !alias.scope !20994, !noalias !21020, !nonnull !29, !noundef !29
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !21051
  %i.v = load i64, ptr %i.u, align 8, !dbg !21051, !alias.scope !20994, !noalias !21020, !noundef !29
  call void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memchrNtB4_6MemchrNtB6_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v, i64 noundef %i.c, i64 noundef %i.e), !dbg !21052, !noalias !21053
  %i.w = load i64, ptr %i.a, align 8, !dbg !21054, !range !4033, !noalias !21050, !noundef !29
  %i.x = trunc nuw i64 %i.w to i1, !dbg !21055
  br i1 %i.x, label %bb.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit, !dbg !21055

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread58: ; preds = %bb.d
  %i.y = add nuw nsw i64 %i.c, 1, !dbg !21056
    #dbg_value(i32 0, !12158, !DIExpression(), !21057)
    #dbg_value(i64 %i.c, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21057)
    #dbg_value(i64 %i.y, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21057)
    #dbg_value(i64 %i.c, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21061)
    #dbg_value(i64 %i.y, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21061)
    #dbg_value(i32 undef, !21062, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !21067)
    #dbg_value(i64 1, !21062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21067)
    #dbg_value(i64 %i.c, !21062, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21067)
    #dbg_value(i64 %i.y, !21062, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21067)
    #dbg_value(i32 0, !21062, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !21067)
  br label %bb.h, !dbg !21069

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21070
  %i.aa = load i64, ptr %i.z, align 8, !dbg !21070, !noalias !21050, !noundef !29 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !21070
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !21070, !noalias !21050, !noundef !29 ; 2 uses
    #dbg_value(i64 %i.aa, !20768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21071)
    #dbg_value(i64 %i.aa, !20869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21072)
    #dbg_value(i64 %i.ac, !20768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21071)
    #dbg_value(i64 %i.ac, !20869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21072)
    #dbg_value(i32 0, !12158, !DIExpression(), !21074)
    #dbg_value(i64 %i.aa, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21074)
    #dbg_value(i64 %i.ac, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21074)
    #dbg_value(i64 %i.aa, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21076)
    #dbg_value(i64 %i.ac, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21076)
  %.not.i35 = icmp ugt i64 %i.aa, %i.ac, !dbg !21077
  br i1 %.not.i35, label %bb.g, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread64, !dbg !21077, !prof !9671

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread64: ; preds = %bb.f
    #dbg_value(i64 1, !21062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21067)
    #dbg_value(i64 %i.aa, !21062, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21067)
    #dbg_value(i64 %i.ac, !21062, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21067)
    #dbg_value(i32 0, !21062, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !21067)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21078, !noalias !21050
    #dbg_value(i64 1, !21062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21067)
    #dbg_value(i64 %i.aa, !21062, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21067)
    #dbg_value(i64 %i.ac, !21062, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21067)
    #dbg_value(i32 0, !21062, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !21067)
  br label %bb.h, !dbg !21069

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !21079, !noalias !21080
  unreachable, !dbg !21079

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit: ; preds = %bb.e
    #dbg_value(i64 0, !21062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21067)
    #dbg_value(i64 undef, !21062, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21067)
    #dbg_value(i64 undef, !21062, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21067)
    #dbg_value(i32 0, !21062, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !21067)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21078, !noalias !21050
    #dbg_value(i64 0, !21062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21067)
    #dbg_value(i64 undef, !21062, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21067)
    #dbg_value(i64 undef, !21062, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21067)
    #dbg_value(i32 0, !21062, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !21067)
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread, !dbg !21069

bb.h:                                             ; preds = %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread64, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread58
  %.sroa.9.263 = phi i64 [ %i.c, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread58 ], [ %i.aa, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread64 ]
  %.sroa.12.262 = phi i64 [ %i.y, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread58 ], [ %i.ac, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread64 ]
    #dbg_value(i64 %.sroa.9.263, !20952, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21083)
    #dbg_value(i64 %.sroa.12.262, !20952, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21083)
    #dbg_value(i32 0, !20952, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !21083)
    #dbg_value(i32 poison, !20952, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !21083)
  %.not = icmp eq i64 %4, 0, !dbg !21084
  br i1 %.not, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread, label %bb.i, !dbg !21084

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread: ; preds = %bb.h, %bb.c, %bb.d, %bb.a, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit, %bb.j, %bb.i
  %.sroa.0.0 = phi i32 [ 1, %bb.j ], [ 1, %bb.i ], [ 0, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ], [ 1, %bb.h ], !dbg !20962
  %i.ad = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !21085
  %i.ae = insertvalue { i32, i32 } %i.ad, i32 0, 1, !dbg !21085
  ret { i32, i32 } %i.ae, !dbg !21085

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %3, !20958, !DIExpression(), !21086)
    #dbg_value(i64 %.sroa.9.263, !20988, !DIExpression(), !21087)
    #dbg_value(i64 %.sroa.9.263, !20983, !DIExpression(), !20984)
  %i.af = add i64 %.sroa.9.263, 1, !dbg !21088
  store i64 %i.af, ptr %3, align 8, !dbg !21089
  %.not68 = icmp eq i64 %4, 1, !dbg !21090
  br i1 %.not68, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread, label %bb.j, !dbg !21090

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !21091
    #dbg_value(ptr %i.ag, !20960, !DIExpression(), !21092)
    #dbg_value(i64 %.sroa.12.262, !20988, !DIExpression(), !21093)
    #dbg_value(i64 %.sroa.12.262, !20983, !DIExpression(), !20990)
  %i.ah = add i64 %.sroa.12.262, 1, !dbg !21094
  store i64 %i.ah, ptr %i.ag, align 8, !dbg !21095
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread, !dbg !21096
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy14is_acceleratedB9_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 !dbg !21097 {
bb.a:
    #dbg_value(ptr poison, !21101, !DIExpression(), !21102)
  ret i1 true, !dbg !21103
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy25which_overlapping_matchesB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #5 !dbg !21104 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !21108, !DIExpression(), !21112)
    #dbg_value(ptr poison, !21109, !DIExpression(), !21112)
    #dbg_value(ptr %2, !21110, !DIExpression(), !21112)
    #dbg_value(ptr %3, !21111, !DIExpression(), !21112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21113), !dbg !21116
    #dbg_value(ptr %0, !20721, !DIExpression(), !21117)
    #dbg_value(ptr poison, !20726, !DIExpression(), !21117)
    #dbg_value(ptr %2, !20727, !DIExpression(), !21117)
    #dbg_value(ptr %2, !20730, !DIExpression(), !21119)
    #dbg_value(ptr %2, !20735, !DIExpression(), !21121)
    #dbg_value(ptr %2, !20735, !DIExpression(), !21123)
    #dbg_value(ptr %2, !20742, !DIExpression(), !21125)
    #dbg_value(ptr %2, !20747, !DIExpression(), !21127)
    #dbg_value(ptr %2, !20735, !DIExpression(), !21129)
    #dbg_value(ptr %2, !20747, !DIExpression(), !21131)
    #dbg_value(ptr %2, !20735, !DIExpression(), !21133)
    #dbg_declare(ptr %i.a, !20758, !DIExpression(), !21135)
    #dbg_declare(ptr poison, !20767, !DIExpression(), !21137)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !21138
  %i.c = load i64, ptr %i.b, align 8, !dbg !21138, !alias.scope !21113, !noalias !21139, !noundef !29 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !21142
  %i.e = load i64, ptr %i.d, align 8, !dbg !21142, !alias.scope !21113, !noalias !21139, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !21143
  br i1 %i.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread, label %bb.b, !dbg !21144

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 8, !dbg !21145, !range !8482, !alias.scope !21113, !noalias !21139, !noundef !29
    #dbg_value(ptr poison, !20781, !DIExpression(), !21146)
  %i.h = icmp eq i32 %i.g, 0, !dbg !21148
  br i1 %i.h, label %bb.e, label %bb.c, !dbg !21148

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !21149
  %i.j = load i64, ptr %i.i, align 8, !dbg !21149, !alias.scope !21113, !noalias !21139, !noundef !29
    #dbg_value(ptr poison, !20788, !DIExpression(), !21150)
    #dbg_value(ptr poison, !20796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21150)
    #dbg_value(ptr poison, !20806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21152)
    #dbg_value(ptr poison, !20815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21154)
    #dbg_value(i64 %i.j, !20796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21150)
    #dbg_value(i64 %i.j, !20806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21152)
    #dbg_value(i64 %i.j, !20815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21154)
    #dbg_value(i64 %i.c, !20797, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21150)
    #dbg_value(i64 poison, !20797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21150)
    #dbg_value(i64 %i.c, !20811, !DIExpression(), !21152)
    #dbg_value(i64 %i.c, !20820, !DIExpression(), !21154)
  %i.k = icmp ult i64 %i.c, %i.j, !dbg !21156
  br i1 %i.k, label %bb.d, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread, !dbg !21156

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21157
  %.val = load i8, ptr %i.l, align 8, !dbg !21158
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21149
  %i.n = load ptr, ptr %i.m, align 8, !dbg !21149, !alias.scope !21113, !noalias !21139, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.n, !20796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21150)
    #dbg_value(ptr %i.n, !20806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21152)
    #dbg_value(ptr %i.n, !20815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21154)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.c, !dbg !21159
  %i.p = load i8, ptr %i.o, align 1, !dbg !21160, !alias.scope !21161, !noalias !21164, !noundef !29
    #dbg_value(i8 %i.p, !20798, !DIExpression(), !21166)
  %i.q = icmp eq i8 %.val, %i.p, !dbg !21167
  br i1 %i.q, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread17, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread, !dbg !21167

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21168, !noalias !21169
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21168
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21170
  %i.t = load ptr, ptr %i.s, align 8, !dbg !21170, !alias.scope !21113, !noalias !21139, !nonnull !29, !noundef !29
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !21170
  %i.v = load i64, ptr %i.u, align 8, !dbg !21170, !alias.scope !21113, !noalias !21139, !noundef !29
  call void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memchrNtB4_6MemchrNtB6_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v, i64 noundef %i.c, i64 noundef %i.e), !dbg !21171, !noalias !21172
  %i.w = load i64, ptr %i.a, align 8, !dbg !21173, !range !4033, !noalias !21169, !noundef !29
  %i.x = trunc nuw i64 %i.w to i1, !dbg !21174
  br i1 %i.x, label %bb.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread20, !dbg !21174

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread20: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21175, !noalias !21169
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread, !dbg !21176

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21177
  %i.z = load i64, ptr %i.y, align 8, !dbg !21177, !noalias !21169, !noundef !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !21177
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !21177, !noalias !21169, !noundef !29
    #dbg_value(i64 %i.z, !20768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21178)
    #dbg_value(i64 %i.z, !20869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21179)
    #dbg_value(i64 %i.ab, !20768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21178)
    #dbg_value(i64 %i.ab, !20869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21179)
    #dbg_value(i32 0, !12158, !DIExpression(), !21181)
    #dbg_value(i64 %i.z, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21181)
    #dbg_value(i64 %i.ab, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21181)
    #dbg_value(i64 %i.z, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21183)
    #dbg_value(i64 %i.ab, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21183)
  %.not.i4 = icmp ugt i64 %i.z, %i.ab, !dbg !21184
  br i1 %.not.i4, label %bb.g, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit, !dbg !21184, !prof !9671

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !21185, !noalias !21186
  unreachable, !dbg !21185

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21175, !noalias !21169
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread17, !dbg !21176

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread17: ; preds = %bb.d, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit
  %i.ac = tail call noundef zeroext i1 @_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 0), !dbg !21189 ; 0 uses
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread, !dbg !21190

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread: ; preds = %bb.c, %bb.d, %bb.a, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread20, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit.thread17
  ret void, !dbg !21191
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy4nameB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21192 {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !21196, !DIExpression(), !21203)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21204
  store ptr @128, ptr %i.b, align 8, !dbg !21205
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !21205
  store i64 6, ptr %i.c, align 8, !dbg !21205
    #dbg_value(ptr %i.b, !21197, !DIExpression(), !21206)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21207
  store ptr %i.b, ptr %i.a, align 8, !dbg !21207
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21207
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCs9GYDdpCSJ4S_14regex_automata, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !21207
    #dbg_value(ptr @73, !21208, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21211)
    #dbg_value(ptr %i.a, !21208, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21211)
    #dbg_value(ptr null, !19745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21214)
    #dbg_value(i64 undef, !19745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21214)
    #dbg_value(ptr poison, !19775, !DIExpression(), !21214)
    #dbg_declare(ptr poison, !19776, !DIExpression(), !21216)
    #dbg_value(ptr poison, !19782, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !21217)
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @73, ptr noundef nonnull %i.a), !dbg !21219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21220
  ret void, !dbg !21221
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree readnone align 8 captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #5 !dbg !20722 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %1, !20721, !DIExpression(), !21222)
    #dbg_value(ptr poison, !20726, !DIExpression(), !21222)
    #dbg_value(ptr %3, !20727, !DIExpression(), !21222)
    #dbg_value(ptr %3, !20730, !DIExpression(), !21223)
    #dbg_value(ptr %3, !20735, !DIExpression(), !21225)
    #dbg_value(ptr %3, !20735, !DIExpression(), !21227)
    #dbg_value(ptr %3, !20742, !DIExpression(), !21229)
    #dbg_value(ptr %3, !20747, !DIExpression(), !21231)
    #dbg_value(ptr %3, !20735, !DIExpression(), !21233)
    #dbg_value(ptr %3, !20747, !DIExpression(), !21235)
    #dbg_value(ptr %3, !20735, !DIExpression(), !21237)
    #dbg_declare(ptr %i.a, !20758, !DIExpression(), !21239)
    #dbg_declare(ptr poison, !20861, !DIExpression(), !21241)
    #dbg_declare(ptr poison, !20767, !DIExpression(), !21243)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !21244
  %i.c = load i64, ptr %i.b, align 8, !dbg !21244, !noundef !29 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !21245
  %i.e = load i64, ptr %i.d, align 8, !dbg !21245, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !21246
  br i1 %i.f, label %bb.c, label %bb.b, !dbg !21247

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 8, !dbg !21248, !range !8482, !noundef !29
    #dbg_value(ptr poison, !20781, !DIExpression(), !21249)
  %i.h = icmp eq i32 %i.g, 0, !dbg !21251
  br i1 %i.h, label %bb.f, label %bb.d, !dbg !21251

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !dbg !21252
  br label %bb.h, !dbg !21253

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !21255
  %i.j = load i64, ptr %i.i, align 8, !dbg !21255, !noundef !29
    #dbg_value(ptr poison, !20788, !DIExpression(), !21256)
    #dbg_value(ptr poison, !20796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21256)
    #dbg_value(ptr poison, !20806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21258)
    #dbg_value(ptr poison, !20815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21260)
    #dbg_value(i64 %i.j, !20796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21256)
    #dbg_value(i64 %i.j, !20806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21258)
    #dbg_value(i64 %i.j, !20815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21260)
    #dbg_value(i64 %i.c, !20797, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21256)
    #dbg_value(i64 poison, !20797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21256)
    #dbg_value(i64 %i.c, !20811, !DIExpression(), !21258)
    #dbg_value(i64 %i.c, !20820, !DIExpression(), !21260)
  %i.k = icmp ult i64 %i.c, %i.j, !dbg !21262
  br i1 %i.k, label %bb.e, label %bb.g, !dbg !21262

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21263
  %.val = load i8, ptr %i.l, align 8, !dbg !21264
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !21255
  %i.n = load ptr, ptr %i.m, align 8, !dbg !21255, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.n, !20796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21256)
    #dbg_value(ptr %i.n, !20806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21258)
    #dbg_value(ptr %i.n, !20815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21260)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.c, !dbg !21265
  %i.p = load i8, ptr %i.o, align 1, !dbg !21266, !alias.scope !21267, !noalias !21270, !noundef !29
    #dbg_value(i8 %i.p, !20798, !DIExpression(), !21272)
  %i.q = icmp eq i8 %.val, %i.p, !dbg !21273
  br i1 %i.q, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit, label %bb.g, !dbg !21273

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21274
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21274
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !21275
  %i.t = load ptr, ptr %i.s, align 8, !dbg !21275, !nonnull !29, !noundef !29
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !21275
  %i.v = load i64, ptr %i.u, align 8, !dbg !21275, !noundef !29
  call void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memchrNtB4_6MemchrNtB6_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v, i64 noundef %i.c, i64 noundef %i.e), !dbg !21276
  %i.w = load i64, ptr %i.a, align 8, !dbg !21277, !range !4033, !noundef !29
  %i.x = trunc nuw i64 %i.w to i1, !dbg !21278
  br i1 %i.x, label %bb.i, label %bb.k, !dbg !21278

_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit: ; preds = %bb.e
  %i.y = add nuw nsw i64 %i.c, 1, !dbg !21279
    #dbg_value(i64 %i.y, !20860, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21280)
    #dbg_value(i64 %i.c, !20860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21280)
    #dbg_value(i64 1, !20860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21280)
    #dbg_value(i64 %i.c, !20862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21281)
    #dbg_value(i64 %i.y, !20862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21281)
    #dbg_value(i32 0, !12158, !DIExpression(), !21282)
    #dbg_value(i64 %i.c, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21282)
    #dbg_value(i64 %i.y, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21282)
    #dbg_value(i64 %i.c, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21285)
    #dbg_value(i64 %i.y, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21285)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21286
  store i64 %i.c, ptr %i.z, align 8, !dbg !21286
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21286
  store i64 %i.y, ptr %.sroa.49.0..sroa_idx, align 8, !dbg !21286
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !21286
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21286
  store i64 1, ptr %0, align 8, !dbg !21286
  br label %bb.h, !dbg !21287

bb.g:                                             ; preds = %bb.e, %bb.d
    #dbg_value(i64 poison, !20860, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21280)
    #dbg_value(i64 %i.c, !20860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21280)
    #dbg_value(i64 0, !20860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21280)
  store i64 0, ptr %0, align 8, !dbg !21288
  br label %bb.h, !dbg !21289

bb.h:                                             ; preds = %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit, %bb.g, %bb.k, %bb.c
  ret void, !dbg !21290

bb.i:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21291
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !21291, !noundef !29 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !21291
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !21291, !noundef !29 ; 2 uses
    #dbg_value(i64 %i.ab, !20768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21292)
    #dbg_value(i64 %i.ab, !20869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21293)
    #dbg_value(i64 %i.ad, !20768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21292)
    #dbg_value(i64 %i.ad, !20869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21293)
    #dbg_value(i32 0, !12158, !DIExpression(), !21295)
    #dbg_value(i64 %i.ab, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21295)
    #dbg_value(i64 %i.ad, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21295)
    #dbg_value(i64 %i.ab, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21297)
    #dbg_value(i64 %i.ad, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21297)
  %.not.i6 = icmp ugt i64 %i.ab, %i.ad, !dbg !21298
  br i1 %.not.i6, label %bb.j, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit7, !dbg !21298, !prof !9671

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !21299, !noalias !21300
  unreachable, !dbg !21299

_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit7: ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21303
  store i64 %i.ab, ptr %i.ae, align 8, !dbg !21303
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21303
  store i64 %i.ad, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !21303
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !21303
  store i32 0, ptr %.sroa.513.0..sroa_idx, align 8, !dbg !21303
  br label %bb.k, !dbg !21304

bb.k:                                             ; preds = %bb.f, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit7
  %storemerge = phi i64 [ 1, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit7 ], [ 0, %bb.f ], !dbg !21305
  store i64 %storemerge, ptr %0, align 8, !dbg !21305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21306
  br label %bb.h, !dbg !21290
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy8is_matchB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2) unnamed_addr #5 !dbg !21307 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !21311, !DIExpression(), !21314)
    #dbg_value(ptr poison, !21312, !DIExpression(), !21314)
    #dbg_value(ptr %2, !21313, !DIExpression(), !21314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21315), !dbg !21318
    #dbg_value(ptr %0, !20721, !DIExpression(), !21319)
    #dbg_value(ptr poison, !20726, !DIExpression(), !21319)
    #dbg_value(ptr %2, !20727, !DIExpression(), !21319)
    #dbg_value(ptr %2, !20730, !DIExpression(), !21321)
    #dbg_value(ptr %2, !20735, !DIExpression(), !21323)
    #dbg_value(ptr %2, !20735, !DIExpression(), !21325)
    #dbg_value(ptr %2, !20742, !DIExpression(), !21327)
    #dbg_value(ptr %2, !20747, !DIExpression(), !21329)
    #dbg_value(ptr %2, !20735, !DIExpression(), !21331)
    #dbg_value(ptr %2, !20747, !DIExpression(), !21333)
    #dbg_value(ptr %2, !20735, !DIExpression(), !21335)
    #dbg_declare(ptr %i.a, !20758, !DIExpression(), !21337)
    #dbg_declare(ptr poison, !20767, !DIExpression(), !21339)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !21340
  %i.c = load i64, ptr %i.b, align 8, !dbg !21340, !alias.scope !21315, !noalias !21341, !noundef !29 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !21344
  %i.e = load i64, ptr %i.d, align 8, !dbg !21344, !alias.scope !21315, !noalias !21341, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !21345
  br i1 %i.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit, label %bb.b, !dbg !21346

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 8, !dbg !21347, !range !8482, !alias.scope !21315, !noalias !21341, !noundef !29
    #dbg_value(ptr poison, !20781, !DIExpression(), !21348)
  %i.h = icmp eq i32 %i.g, 0, !dbg !21350
  br i1 %i.h, label %bb.e, label %bb.c, !dbg !21350

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !21351
  %i.j = load i64, ptr %i.i, align 8, !dbg !21351, !alias.scope !21315, !noalias !21341, !noundef !29
    #dbg_value(ptr poison, !20788, !DIExpression(), !21352)
    #dbg_value(ptr poison, !20796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21352)
    #dbg_value(ptr poison, !20806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21354)
    #dbg_value(ptr poison, !20815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21356)
    #dbg_value(i64 %i.j, !20796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21352)
    #dbg_value(i64 %i.j, !20806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21354)
    #dbg_value(i64 %i.j, !20815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21356)
    #dbg_value(i64 %i.c, !20797, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21352)
    #dbg_value(i64 poison, !20797, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21352)
    #dbg_value(i64 %i.c, !20811, !DIExpression(), !21354)
    #dbg_value(i64 %i.c, !20820, !DIExpression(), !21356)
  %i.k = icmp ult i64 %i.c, %i.j, !dbg !21358
  br i1 %i.k, label %bb.d, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit, !dbg !21358

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21359
  %.val = load i8, ptr %i.l, align 8, !dbg !21360
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21351
  %i.n = load ptr, ptr %i.m, align 8, !dbg !21351, !alias.scope !21315, !noalias !21341, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.n, !20796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21352)
    #dbg_value(ptr %i.n, !20806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21354)
    #dbg_value(ptr %i.n, !20815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21356)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.c, !dbg !21361
  %i.p = load i8, ptr %i.o, align 1, !dbg !21362, !alias.scope !21363, !noalias !21366, !noundef !29
    #dbg_value(i8 %i.p, !20798, !DIExpression(), !21368)
  %i.q = icmp eq i8 %.val, %i.p, !dbg !21369
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit, !dbg !21369

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21370, !noalias !21371
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21370
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21372
  %i.t = load ptr, ptr %i.s, align 8, !dbg !21372, !alias.scope !21315, !noalias !21341, !nonnull !29, !noundef !29
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !21372
  %i.v = load i64, ptr %i.u, align 8, !dbg !21372, !alias.scope !21315, !noalias !21341, !noundef !29
  call void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memchrNtB4_6MemchrNtB6_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v, i64 noundef %i.c, i64 noundef %i.e), !dbg !21373, !noalias !21374
  %i.w = load i64, ptr %i.a, align 8, !dbg !21375, !range !4033, !noalias !21371, !noundef !29
  %i.x = trunc nuw i64 %i.w to i1, !dbg !21376    ; 2 uses
  br i1 %i.x, label %bb.f, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4, !dbg !21376

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21377
  %i.z = load i64, ptr %i.y, align 8, !dbg !21377, !noalias !21371, !noundef !29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !21377
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !21377, !noalias !21371, !noundef !29
    #dbg_value(i64 %i.z, !20768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21378)
    #dbg_value(i64 %i.z, !20869, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21379)
    #dbg_value(i64 %i.ab, !20768, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21378)
    #dbg_value(i64 %i.ab, !20869, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21379)
    #dbg_value(i32 0, !12158, !DIExpression(), !21381)
    #dbg_value(i64 %i.z, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21381)
    #dbg_value(i64 %i.ab, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21381)
    #dbg_value(i64 %i.z, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21383)
    #dbg_value(i64 %i.ab, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21383)
  %.not.i3 = icmp ugt i64 %i.z, %i.ab, !dbg !21384
  br i1 %.not.i3, label %bb.g, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4, !dbg !21384, !prof !9671

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !21385, !noalias !21386
  unreachable, !dbg !21385

_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21389, !noalias !21371
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit, !dbg !21390

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr6MemchrENtB5_8Strategy6searchB9_.exit: ; preds = %bb.d, %bb.c, %bb.a, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4
  %.sroa.0.2 = phi i1 [ false, %bb.a ], [ %i.x, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4 ], [ false, %bb.c ], [ %i.q, %bb.d ], !dbg !21319
  ret i1 %.sroa.0.2, !dbg !21391
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy10group_infoB9_(ptr noalias nofree noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 !dbg !21392 {
bb.a:
    #dbg_value(ptr %0, !21397, !DIExpression(), !21398)
  ret ptr %0, !dbg !21399
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy11reset_cacheB9_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #4 !dbg !21400 {
bb.a:
    #dbg_value(ptr poison, !21404, !DIExpression(), !21406)
    #dbg_value(ptr poison, !21405, !DIExpression(), !21406)
  ret void, !dbg !21407
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy11search_halfB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree readnone align 8 captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #5 !dbg !21408 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !21412, !DIExpression(), !21415)
    #dbg_value(ptr poison, !21413, !DIExpression(), !21415)
    #dbg_value(ptr %3, !21414, !DIExpression(), !21415)
    #dbg_declare(ptr poison, !21416, !DIExpression(), !21428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21430), !dbg !21433
    #dbg_value(ptr %1, !21434, !DIExpression(), !21441)
    #dbg_value(ptr poison, !21439, !DIExpression(), !21441)
    #dbg_value(ptr %3, !21440, !DIExpression(), !21441)
    #dbg_value(ptr %3, !21443, !DIExpression(), !21446)
    #dbg_value(ptr %3, !21448, !DIExpression(), !21451)
    #dbg_value(ptr %3, !21448, !DIExpression(), !21453)
    #dbg_value(ptr %3, !21455, !DIExpression(), !21458)
    #dbg_value(ptr %3, !21460, !DIExpression(), !21463)
    #dbg_value(ptr %3, !21448, !DIExpression(), !21465)
    #dbg_value(ptr %3, !21460, !DIExpression(), !21467)
    #dbg_value(ptr %3, !21448, !DIExpression(), !21469)
    #dbg_declare(ptr %i.a, !21471, !DIExpression(), !21483)
    #dbg_declare(ptr poison, !21480, !DIExpression(), !21485)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !21486
  %i.c = load i64, ptr %i.b, align 8, !dbg !21486, !alias.scope !21430, !noalias !21487, !noundef !29 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !21490
  %i.e = load i64, ptr %i.d, align 8, !dbg !21490, !alias.scope !21430, !noalias !21487, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !21491
  br i1 %i.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread, label %bb.b, !dbg !21492

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 8, !dbg !21493, !range !8482, !alias.scope !21430, !noalias !21487, !noundef !29
    #dbg_value(ptr poison, !21494, !DIExpression(), !21497)
  %i.h = icmp eq i32 %i.g, 0, !dbg !21499
  br i1 %i.h, label %bb.e, label %bb.c, !dbg !21499

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !21500
  %i.j = load i64, ptr %i.i, align 8, !dbg !21500, !alias.scope !21430, !noalias !21487, !noundef !29
    #dbg_value(ptr poison, !21501, !DIExpression(), !21516)
    #dbg_value(ptr poison, !21508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21516)
    #dbg_value(ptr poison, !21518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21522)
    #dbg_value(ptr poison, !21524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21528)
    #dbg_value(i64 %i.j, !21508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21516)
    #dbg_value(i64 %i.j, !21518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21522)
    #dbg_value(i64 %i.j, !21524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21528)
    #dbg_value(i64 %i.c, !21509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21516)
    #dbg_value(i64 poison, !21509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21516)
    #dbg_value(i64 %i.c, !21521, !DIExpression(), !21522)
    #dbg_value(i64 %i.c, !21527, !DIExpression(), !21528)
  %i.k = icmp ult i64 %i.c, %i.j, !dbg !21530
  br i1 %i.k, label %bb.d, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread, !dbg !21530

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9, !dbg !21531
  %.val6 = load i8, ptr %i.l, align 1, !dbg !21531
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21532
  %.val = load i8, ptr %i.m, align 8, !dbg !21531
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !21500
  %i.o = load ptr, ptr %i.n, align 8, !dbg !21500, !alias.scope !21430, !noalias !21487, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.o, !21508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21516)
    #dbg_value(ptr %i.o, !21518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21522)
    #dbg_value(ptr %i.o, !21524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21528)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.c, !dbg !21533
  %i.q = load i8, ptr %i.p, align 1, !dbg !21534, !alias.scope !21535, !noalias !21538, !noundef !29 ; 2 uses
    #dbg_value(i8 %i.q, !21510, !DIExpression(), !21540)
  %i.r = icmp eq i8 %.val, %i.q, !dbg !21541
  %i.s = icmp eq i8 %.val6, %i.q
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.s, !dbg !21541
  br i1 %or.cond.i, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread29, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread, !dbg !21541

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21542, !noalias !21543
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21542
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !21544
  %i.v = load ptr, ptr %i.u, align 8, !dbg !21544, !alias.scope !21430, !noalias !21487, !nonnull !29, !noundef !29
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !21544
  %i.x = load i64, ptr %i.w, align 8, !dbg !21544, !alias.scope !21430, !noalias !21487, !noundef !29
  call void @_RNvXs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memchrNtB5_7Memchr2NtB7_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x, i64 noundef %i.c, i64 noundef %i.e), !dbg !21545, !noalias !21546
  %i.y = load i64, ptr %i.a, align 8, !dbg !21547, !range !4033, !noalias !21543, !noundef !29
  %i.z = trunc nuw i64 %i.y to i1, !dbg !21548
  br i1 %i.z, label %bb.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit, !dbg !21548

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread29: ; preds = %bb.d
  %i.aa = add nuw nsw i64 %i.c, 1, !dbg !21549
    #dbg_value(i32 0, !12158, !DIExpression(), !21550)
    #dbg_value(i64 %i.c, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21550)
    #dbg_value(i64 %i.aa, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21550)
    #dbg_value(i64 %i.c, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21571)
    #dbg_value(i64 %i.aa, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21571)
    #dbg_value(i64 %i.c, !21425, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21572)
    #dbg_value(i32 undef, !21425, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !21572)
    #dbg_value(i64 1, !21425, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21572)
    #dbg_value(i64 %i.aa, !21425, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21572)
    #dbg_value(i32 0, !21425, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !21572)
  br label %bb.h, !dbg !21573

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21574
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !21574, !noalias !21543, !noundef !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !21574
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !21574, !noalias !21543, !noundef !29 ; 2 uses
    #dbg_value(i64 %i.ac, !21481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21575)
    #dbg_value(i64 %i.ac, !21576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21581)
    #dbg_value(i64 %i.ae, !21481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21575)
    #dbg_value(i64 %i.ae, !21576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21581)
    #dbg_value(i32 0, !12158, !DIExpression(), !21584)
    #dbg_value(i64 %i.ac, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21584)
    #dbg_value(i64 %i.ae, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21584)
    #dbg_value(i64 %i.ac, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21586)
    #dbg_value(i64 %i.ae, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21586)
  %.not.i7 = icmp ugt i64 %i.ac, %i.ae, !dbg !21587
  br i1 %.not.i7, label %bb.g, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread33, !dbg !21587, !prof !9671

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread33: ; preds = %bb.f
    #dbg_value(i64 1, !21425, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21572)
    #dbg_value(i64 %i.ae, !21425, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21572)
    #dbg_value(i32 0, !21425, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !21572)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21588, !noalias !21543
    #dbg_value(i64 1, !21425, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21572)
    #dbg_value(i64 %i.ae, !21425, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21572)
    #dbg_value(i32 0, !21425, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !21572)
  br label %bb.h, !dbg !21573

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !21589, !noalias !21590
  unreachable, !dbg !21589

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit: ; preds = %bb.e
    #dbg_value(i64 0, !21425, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21572)
    #dbg_value(i64 undef, !21425, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21572)
    #dbg_value(i32 0, !21425, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !21572)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21588, !noalias !21543
    #dbg_value(i64 0, !21425, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21572)
    #dbg_value(i64 undef, !21425, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21572)
    #dbg_value(i32 0, !21425, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !21572)
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread, !dbg !21573

bb.h:                                             ; preds = %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread33, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread29
  %.sroa.10.232 = phi i64 [ %i.aa, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread29 ], [ %i.ae, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread33 ]
    #dbg_value(i64 poison, !21426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21593)
    #dbg_value(i64 %.sroa.10.232, !21426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21593)
    #dbg_value(i32 0, !21426, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !21593)
    #dbg_value(i32 poison, !21426, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !21593)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21594
  store i64 %.sroa.10.232, ptr %i.af, align 8, !dbg !21594
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21594
  store i32 0, ptr %i.ag, align 8, !dbg !21594
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread, !dbg !21595

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread: ; preds = %bb.c, %bb.d, %bb.a, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit, %bb.h
  %storemerge = phi i64 [ 1, %bb.h ], [ 0, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ], !dbg !21572
  store i64 %storemerge, ptr %0, align 8, !dbg !21572
  ret void, !dbg !21596
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy12create_cacheB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1400 x i8]) align 8 captures(none) dereferenceable(1400) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 !dbg !21597 {
bb.a:
    #dbg_value(ptr %1, !21601, !DIExpression(), !21602)
    #dbg_value(i64 1, !21603, !DIExpression(), !21608)
    #dbg_value(i8 0, !21607, !DIExpression(), !21608)
    #dbg_value(i64 1, !21620, !DIExpression(), !21625)
    #dbg_value(i8 0, !21624, !DIExpression(), !21625)
    #dbg_value(ptr %1, !21618, !DIExpression(), !21615)
    #dbg_value(ptr %1, !21612, !DIExpression(), !21627)
    #dbg_value(ptr %1, !21628, !DIExpression(), !21631)
  %i.a = load ptr, ptr %1, align 8, !dbg !21633, !nonnull !29, !noundef !29 ; 2 uses
    #dbg_value(ptr %i.a, !21606, !DIExpression(), !21636)
    #dbg_value(ptr %i.a, !21623, !DIExpression(), !21625)
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8, !dbg !21637
    #dbg_value(i64 %i.b, !21613, !DIExpression(), !21638)
  %i.c = icmp slt i64 %i.b, 0, !dbg !21639
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !21639

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1056, !dbg !21640
  tail call void @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB2_8Captures3all(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noundef nonnull %i.a), !dbg !21641
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1096, !dbg !21640
  store i64 -1, ptr %i.e, align 8, !dbg !21640
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1312, !dbg !21640
  store i64 -1, ptr %i.f, align 8, !dbg !21640
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1368, !dbg !21640
  store i64 -1, ptr %i.g, align 8, !dbg !21640
  store i64 2, ptr %0, align 8, !dbg !21640
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704, !dbg !21640
  store i64 2, ptr %i.h, align 8, !dbg !21640
  ret void, !dbg !21642

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !21643
  unreachable, !dbg !21643
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy12memory_usageB9_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 !dbg !21644 {
bb.a:
    #dbg_value(ptr poison, !21648, !DIExpression(), !21649)
  ret i64 0, !dbg !21650
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal { i32, i32 } @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy12search_slotsB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) %3, i64 noundef range(i64 0, 1152921504606846976) %4) unnamed_addr #5 !dbg !21651 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !21655, !DIExpression(), !21669)
    #dbg_value(ptr poison, !21656, !DIExpression(), !21669)
    #dbg_value(ptr %2, !21657, !DIExpression(), !21669)
    #dbg_value(ptr %3, !21658, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21669)
    #dbg_value(ptr %3, !21670, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21674)
    #dbg_value(ptr %3, !21676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21680)
    #dbg_value(ptr %3, !21670, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21682)
    #dbg_value(ptr %3, !21676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21684)
    #dbg_value(i64 %4, !21658, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21669)
    #dbg_value(i64 %4, !21670, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21674)
    #dbg_value(i64 %4, !21676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21680)
    #dbg_value(i64 %4, !21670, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21682)
    #dbg_value(i64 %4, !21676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21684)
    #dbg_value(i64 0, !21673, !DIExpression(), !21674)
    #dbg_value(i64 0, !21679, !DIExpression(), !21680)
    #dbg_value(i64 1, !21687, !DIExpression(), !21691)
    #dbg_value(i64 1, !21673, !DIExpression(), !21682)
    #dbg_value(i64 1, !21679, !DIExpression(), !21684)
    #dbg_value(i64 1, !21687, !DIExpression(), !21697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21701), !dbg !21704
    #dbg_value(ptr %0, !21434, !DIExpression(), !21705)
    #dbg_value(ptr poison, !21439, !DIExpression(), !21705)
    #dbg_value(ptr %2, !21440, !DIExpression(), !21705)
    #dbg_value(ptr %2, !21443, !DIExpression(), !21707)
    #dbg_value(ptr %2, !21448, !DIExpression(), !21709)
    #dbg_value(ptr %2, !21448, !DIExpression(), !21711)
    #dbg_value(ptr %2, !21455, !DIExpression(), !21713)
    #dbg_value(ptr %2, !21460, !DIExpression(), !21715)
    #dbg_value(ptr %2, !21448, !DIExpression(), !21717)
    #dbg_value(ptr %2, !21460, !DIExpression(), !21719)
    #dbg_value(ptr %2, !21448, !DIExpression(), !21721)
    #dbg_declare(ptr %i.a, !21471, !DIExpression(), !21723)
    #dbg_declare(ptr poison, !21480, !DIExpression(), !21725)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !21726
  %i.c = load i64, ptr %i.b, align 8, !dbg !21726, !alias.scope !21701, !noalias !21727, !noundef !29 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !21730
  %i.e = load i64, ptr %i.d, align 8, !dbg !21730, !alias.scope !21701, !noalias !21727, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !21731
  br i1 %i.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread, label %bb.b, !dbg !21732

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 8, !dbg !21733, !range !8482, !alias.scope !21701, !noalias !21727, !noundef !29
    #dbg_value(ptr poison, !21494, !DIExpression(), !21734)
  %i.h = icmp eq i32 %i.g, 0, !dbg !21736
  br i1 %i.h, label %bb.e, label %bb.c, !dbg !21736

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !21737
  %i.j = load i64, ptr %i.i, align 8, !dbg !21737, !alias.scope !21701, !noalias !21727, !noundef !29
    #dbg_value(ptr poison, !21501, !DIExpression(), !21738)
    #dbg_value(ptr poison, !21508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21738)
    #dbg_value(ptr poison, !21518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21740)
    #dbg_value(ptr poison, !21524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21742)
    #dbg_value(i64 %i.j, !21508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21738)
    #dbg_value(i64 %i.j, !21518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21740)
    #dbg_value(i64 %i.j, !21524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21742)
    #dbg_value(i64 %i.c, !21509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21738)
    #dbg_value(i64 poison, !21509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21738)
    #dbg_value(i64 %i.c, !21521, !DIExpression(), !21740)
    #dbg_value(i64 %i.c, !21527, !DIExpression(), !21742)
  %i.k = icmp ult i64 %i.c, %i.j, !dbg !21744
  br i1 %i.k, label %bb.d, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread, !dbg !21744

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !21745
  %.val35 = load i8, ptr %i.l, align 1, !dbg !21745
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21746
  %.val = load i8, ptr %i.m, align 8, !dbg !21745
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21737
  %i.o = load ptr, ptr %i.n, align 8, !dbg !21737, !alias.scope !21701, !noalias !21727, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.o, !21508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21738)
    #dbg_value(ptr %i.o, !21518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21740)
    #dbg_value(ptr %i.o, !21524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21742)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.c, !dbg !21747
  %i.q = load i8, ptr %i.p, align 1, !dbg !21748, !alias.scope !21749, !noalias !21752, !noundef !29 ; 2 uses
    #dbg_value(i8 %i.q, !21510, !DIExpression(), !21754)
  %i.r = icmp eq i8 %.val, %i.q, !dbg !21755
  %i.s = icmp eq i8 %.val35, %i.q
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.s, !dbg !21755
  br i1 %or.cond.i, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread59, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread, !dbg !21755

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21756, !noalias !21757
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21756
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21758
  %i.v = load ptr, ptr %i.u, align 8, !dbg !21758, !alias.scope !21701, !noalias !21727, !nonnull !29, !noundef !29
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !21758
  %i.x = load i64, ptr %i.w, align 8, !dbg !21758, !alias.scope !21701, !noalias !21727, !noundef !29
  call void @_RNvXs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memchrNtB5_7Memchr2NtB7_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x, i64 noundef %i.c, i64 noundef %i.e), !dbg !21759, !noalias !21760
  %i.y = load i64, ptr %i.a, align 8, !dbg !21761, !range !4033, !noalias !21757, !noundef !29
  %i.z = trunc nuw i64 %i.y to i1, !dbg !21762
  br i1 %i.z, label %bb.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit, !dbg !21762

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread59: ; preds = %bb.d
  %i.aa = add nuw nsw i64 %i.c, 1, !dbg !21763
    #dbg_value(i32 0, !12158, !DIExpression(), !21764)
    #dbg_value(i64 %i.c, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21764)
    #dbg_value(i64 %i.aa, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21764)
    #dbg_value(i64 %i.c, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21768)
    #dbg_value(i64 %i.aa, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21768)
    #dbg_value(i32 undef, !21769, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !21774)
    #dbg_value(i64 1, !21769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21774)
    #dbg_value(i64 %i.c, !21769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21774)
    #dbg_value(i64 %i.aa, !21769, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21774)
    #dbg_value(i32 0, !21769, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !21774)
  br label %bb.h, !dbg !21776

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21777
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !21777, !noalias !21757, !noundef !29 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !21777
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !21777, !noalias !21757, !noundef !29 ; 2 uses
    #dbg_value(i64 %i.ac, !21481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21778)
    #dbg_value(i64 %i.ac, !21576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21779)
    #dbg_value(i64 %i.ae, !21481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21778)
    #dbg_value(i64 %i.ae, !21576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21779)
    #dbg_value(i32 0, !12158, !DIExpression(), !21781)
    #dbg_value(i64 %i.ac, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21781)
    #dbg_value(i64 %i.ae, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21781)
    #dbg_value(i64 %i.ac, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21783)
    #dbg_value(i64 %i.ae, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21783)
  %.not.i36 = icmp ugt i64 %i.ac, %i.ae, !dbg !21784
  br i1 %.not.i36, label %bb.g, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread65, !dbg !21784, !prof !9671

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread65: ; preds = %bb.f
    #dbg_value(i64 1, !21769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21774)
    #dbg_value(i64 %i.ac, !21769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21774)
    #dbg_value(i64 %i.ae, !21769, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21774)
    #dbg_value(i32 0, !21769, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !21774)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21785, !noalias !21757
    #dbg_value(i64 1, !21769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21774)
    #dbg_value(i64 %i.ac, !21769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21774)
    #dbg_value(i64 %i.ae, !21769, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21774)
    #dbg_value(i32 0, !21769, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !21774)
  br label %bb.h, !dbg !21776

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !21786, !noalias !21787
  unreachable, !dbg !21786

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit: ; preds = %bb.e
    #dbg_value(i64 0, !21769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21774)
    #dbg_value(i64 undef, !21769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21774)
    #dbg_value(i64 undef, !21769, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21774)
    #dbg_value(i32 0, !21769, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !21774)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21785, !noalias !21757
    #dbg_value(i64 0, !21769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21774)
    #dbg_value(i64 undef, !21769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21774)
    #dbg_value(i64 undef, !21769, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21774)
    #dbg_value(i32 0, !21769, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !21774)
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread, !dbg !21776

bb.h:                                             ; preds = %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread65, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread59
  %.sroa.9.264 = phi i64 [ %i.c, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread59 ], [ %i.ac, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread65 ]
  %.sroa.12.263 = phi i64 [ %i.aa, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread59 ], [ %i.ae, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread65 ]
    #dbg_value(i64 %.sroa.9.264, !21659, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21790)
    #dbg_value(i64 %.sroa.12.263, !21659, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21790)
    #dbg_value(i32 0, !21659, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !21790)
    #dbg_value(i32 poison, !21659, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !21790)
  %.not = icmp eq i64 %4, 0, !dbg !21791
  br i1 %.not, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread, label %bb.i, !dbg !21791

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread: ; preds = %bb.h, %bb.c, %bb.d, %bb.a, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit, %bb.j, %bb.i
  %.sroa.0.0 = phi i32 [ 1, %bb.j ], [ 1, %bb.i ], [ 0, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ], [ 1, %bb.h ], !dbg !21669
  %i.af = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !21792
  %i.ag = insertvalue { i32, i32 } %i.af, i32 0, 1, !dbg !21792
  ret { i32, i32 } %i.ag, !dbg !21792

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %3, !21665, !DIExpression(), !21793)
    #dbg_value(i64 %.sroa.9.264, !21695, !DIExpression(), !21794)
    #dbg_value(i64 %.sroa.9.264, !21690, !DIExpression(), !21691)
  %i.ah = add i64 %.sroa.9.264, 1, !dbg !21795
  store i64 %i.ah, ptr %3, align 8, !dbg !21796
  %.not69 = icmp eq i64 %4, 1, !dbg !21797
  br i1 %.not69, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread, label %bb.j, !dbg !21797

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !21798
    #dbg_value(ptr %i.ai, !21667, !DIExpression(), !21799)
    #dbg_value(i64 %.sroa.12.263, !21695, !DIExpression(), !21800)
    #dbg_value(i64 %.sroa.12.263, !21690, !DIExpression(), !21697)
  %i.aj = add i64 %.sroa.12.263, 1, !dbg !21801
  store i64 %i.aj, ptr %i.ai, align 8, !dbg !21802
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread, !dbg !21803
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy14is_acceleratedB9_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 !dbg !21804 {
bb.a:
    #dbg_value(ptr poison, !21808, !DIExpression(), !21809)
  ret i1 true, !dbg !21810
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy25which_overlapping_matchesB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #5 !dbg !21811 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !21815, !DIExpression(), !21819)
    #dbg_value(ptr poison, !21816, !DIExpression(), !21819)
    #dbg_value(ptr %2, !21817, !DIExpression(), !21819)
    #dbg_value(ptr %3, !21818, !DIExpression(), !21819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21820), !dbg !21823
    #dbg_value(ptr %0, !21434, !DIExpression(), !21824)
    #dbg_value(ptr poison, !21439, !DIExpression(), !21824)
    #dbg_value(ptr %2, !21440, !DIExpression(), !21824)
    #dbg_value(ptr %2, !21443, !DIExpression(), !21826)
    #dbg_value(ptr %2, !21448, !DIExpression(), !21828)
    #dbg_value(ptr %2, !21448, !DIExpression(), !21830)
    #dbg_value(ptr %2, !21455, !DIExpression(), !21832)
    #dbg_value(ptr %2, !21460, !DIExpression(), !21834)
    #dbg_value(ptr %2, !21448, !DIExpression(), !21836)
    #dbg_value(ptr %2, !21460, !DIExpression(), !21838)
    #dbg_value(ptr %2, !21448, !DIExpression(), !21840)
    #dbg_declare(ptr %i.a, !21471, !DIExpression(), !21842)
    #dbg_declare(ptr poison, !21480, !DIExpression(), !21844)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !21845
  %i.c = load i64, ptr %i.b, align 8, !dbg !21845, !alias.scope !21820, !noalias !21846, !noundef !29 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !21849
  %i.e = load i64, ptr %i.d, align 8, !dbg !21849, !alias.scope !21820, !noalias !21846, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !21850
  br i1 %i.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread, label %bb.b, !dbg !21851

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 8, !dbg !21852, !range !8482, !alias.scope !21820, !noalias !21846, !noundef !29
    #dbg_value(ptr poison, !21494, !DIExpression(), !21853)
  %i.h = icmp eq i32 %i.g, 0, !dbg !21855
  br i1 %i.h, label %bb.e, label %bb.c, !dbg !21855

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !21856
  %i.j = load i64, ptr %i.i, align 8, !dbg !21856, !alias.scope !21820, !noalias !21846, !noundef !29
    #dbg_value(ptr poison, !21501, !DIExpression(), !21857)
    #dbg_value(ptr poison, !21508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21857)
    #dbg_value(ptr poison, !21518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21859)
    #dbg_value(ptr poison, !21524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21861)
    #dbg_value(i64 %i.j, !21508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21857)
    #dbg_value(i64 %i.j, !21518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21859)
    #dbg_value(i64 %i.j, !21524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21861)
    #dbg_value(i64 %i.c, !21509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21857)
    #dbg_value(i64 poison, !21509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21857)
    #dbg_value(i64 %i.c, !21521, !DIExpression(), !21859)
    #dbg_value(i64 %i.c, !21527, !DIExpression(), !21861)
  %i.k = icmp ult i64 %i.c, %i.j, !dbg !21863
  br i1 %i.k, label %bb.d, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread, !dbg !21863

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !21864
  %.val4 = load i8, ptr %i.l, align 1, !dbg !21864
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21865
  %.val = load i8, ptr %i.m, align 8, !dbg !21864
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21856
  %i.o = load ptr, ptr %i.n, align 8, !dbg !21856, !alias.scope !21820, !noalias !21846, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.o, !21508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21857)
    #dbg_value(ptr %i.o, !21518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21859)
    #dbg_value(ptr %i.o, !21524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21861)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.c, !dbg !21866
  %i.q = load i8, ptr %i.p, align 1, !dbg !21867, !alias.scope !21868, !noalias !21871, !noundef !29 ; 2 uses
    #dbg_value(i8 %i.q, !21510, !DIExpression(), !21873)
  %i.r = icmp eq i8 %.val, %i.q, !dbg !21874
  %i.s = icmp eq i8 %.val4, %i.q
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.s, !dbg !21874
  br i1 %or.cond.i, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread18, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread, !dbg !21874

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21875, !noalias !21876
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21875
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !21877
  %i.v = load ptr, ptr %i.u, align 8, !dbg !21877, !alias.scope !21820, !noalias !21846, !nonnull !29, !noundef !29
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !21877
  %i.x = load i64, ptr %i.w, align 8, !dbg !21877, !alias.scope !21820, !noalias !21846, !noundef !29
  call void @_RNvXs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memchrNtB5_7Memchr2NtB7_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x, i64 noundef %i.c, i64 noundef %i.e), !dbg !21878, !noalias !21879
  %i.y = load i64, ptr %i.a, align 8, !dbg !21880, !range !4033, !noalias !21876, !noundef !29
  %i.z = trunc nuw i64 %i.y to i1, !dbg !21881
  br i1 %i.z, label %bb.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread21, !dbg !21881

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread21: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21882, !noalias !21876
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread, !dbg !21883

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21884
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !21884, !noalias !21876, !noundef !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !21884
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !21884, !noalias !21876, !noundef !29
    #dbg_value(i64 %i.ab, !21481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21885)
    #dbg_value(i64 %i.ab, !21576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21886)
    #dbg_value(i64 %i.ad, !21481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21885)
    #dbg_value(i64 %i.ad, !21576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21886)
    #dbg_value(i32 0, !12158, !DIExpression(), !21888)
    #dbg_value(i64 %i.ab, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21888)
    #dbg_value(i64 %i.ad, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21888)
    #dbg_value(i64 %i.ab, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21890)
    #dbg_value(i64 %i.ad, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21890)
  %.not.i5 = icmp ugt i64 %i.ab, %i.ad, !dbg !21891
  br i1 %.not.i5, label %bb.g, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit, !dbg !21891, !prof !9671

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !21892, !noalias !21893
  unreachable, !dbg !21892

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21882, !noalias !21876
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread18, !dbg !21883

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread18: ; preds = %bb.d, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit
  %i.ae = tail call noundef zeroext i1 @_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 0), !dbg !21896 ; 0 uses
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread, !dbg !21897

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread: ; preds = %bb.c, %bb.d, %bb.a, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread21, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit.thread18
  ret void, !dbg !21898
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy4nameB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !21899 {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !21903, !DIExpression(), !21910)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21911
  store ptr @94, ptr %i.b, align 8, !dbg !21912
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !21912
  store i64 7, ptr %i.c, align 8, !dbg !21912
    #dbg_value(ptr %i.b, !21904, !DIExpression(), !21913)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21914
  store ptr %i.b, ptr %i.a, align 8, !dbg !21914
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21914
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCs9GYDdpCSJ4S_14regex_automata, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !21914
    #dbg_value(ptr @73, !21915, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21918)
    #dbg_value(ptr %i.a, !21915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21918)
    #dbg_value(ptr null, !19745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21921)
    #dbg_value(i64 undef, !19745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21921)
    #dbg_value(ptr poison, !19775, !DIExpression(), !21921)
    #dbg_declare(ptr poison, !19776, !DIExpression(), !21923)
    #dbg_value(ptr poison, !19782, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !21924)
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @73, ptr noundef nonnull %i.a), !dbg !21926
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21927
  ret void, !dbg !21928
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree readnone align 8 captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #5 !dbg !21435 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %1, !21434, !DIExpression(), !21929)
    #dbg_value(ptr poison, !21439, !DIExpression(), !21929)
    #dbg_value(ptr %3, !21440, !DIExpression(), !21929)
    #dbg_value(ptr %3, !21443, !DIExpression(), !21930)
    #dbg_value(ptr %3, !21448, !DIExpression(), !21932)
    #dbg_value(ptr %3, !21448, !DIExpression(), !21934)
    #dbg_value(ptr %3, !21455, !DIExpression(), !21936)
    #dbg_value(ptr %3, !21460, !DIExpression(), !21938)
    #dbg_value(ptr %3, !21448, !DIExpression(), !21940)
    #dbg_value(ptr %3, !21460, !DIExpression(), !21942)
    #dbg_value(ptr %3, !21448, !DIExpression(), !21944)
    #dbg_declare(ptr %i.a, !21471, !DIExpression(), !21946)
    #dbg_declare(ptr poison, !21568, !DIExpression(), !21948)
    #dbg_declare(ptr poison, !21480, !DIExpression(), !21950)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !21951
  %i.c = load i64, ptr %i.b, align 8, !dbg !21951, !noundef !29 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !21952
  %i.e = load i64, ptr %i.d, align 8, !dbg !21952, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !21953
  br i1 %i.f, label %bb.c, label %bb.b, !dbg !21954

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 8, !dbg !21955, !range !8482, !noundef !29
    #dbg_value(ptr poison, !21494, !DIExpression(), !21956)
  %i.h = icmp eq i32 %i.g, 0, !dbg !21958
  br i1 %i.h, label %bb.f, label %bb.d, !dbg !21958

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !dbg !21959
  br label %bb.h, !dbg !21960

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !21962
  %i.j = load i64, ptr %i.i, align 8, !dbg !21962, !noundef !29
    #dbg_value(ptr poison, !21501, !DIExpression(), !21963)
    #dbg_value(ptr poison, !21508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21963)
    #dbg_value(ptr poison, !21518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21965)
    #dbg_value(ptr poison, !21524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21967)
    #dbg_value(i64 %i.j, !21508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21963)
    #dbg_value(i64 %i.j, !21518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21965)
    #dbg_value(i64 %i.j, !21524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21967)
    #dbg_value(i64 %i.c, !21509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21963)
    #dbg_value(i64 poison, !21509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21963)
    #dbg_value(i64 %i.c, !21521, !DIExpression(), !21965)
    #dbg_value(i64 %i.c, !21527, !DIExpression(), !21967)
  %i.k = icmp ult i64 %i.c, %i.j, !dbg !21969
  br i1 %i.k, label %bb.e, label %bb.g, !dbg !21969

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 9, !dbg !21970
  %.val6 = load i8, ptr %i.l, align 1, !dbg !21970
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21971
  %.val = load i8, ptr %i.m, align 8, !dbg !21970
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !21962
  %i.o = load ptr, ptr %i.n, align 8, !dbg !21962, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.o, !21508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21963)
    #dbg_value(ptr %i.o, !21518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21965)
    #dbg_value(ptr %i.o, !21524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21967)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.c, !dbg !21972
  %i.q = load i8, ptr %i.p, align 1, !dbg !21973, !alias.scope !21974, !noalias !21977, !noundef !29 ; 2 uses
    #dbg_value(i8 %i.q, !21510, !DIExpression(), !21979)
  %i.r = icmp eq i8 %.val, %i.q, !dbg !21980
  %i.s = icmp eq i8 %.val6, %i.q
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.s, !dbg !21980
  br i1 %or.cond.i, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit, label %bb.g, !dbg !21980

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21981
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21981
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !21982
  %i.v = load ptr, ptr %i.u, align 8, !dbg !21982, !nonnull !29, !noundef !29
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !21982
  %i.x = load i64, ptr %i.w, align 8, !dbg !21982, !noundef !29
  call void @_RNvXs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memchrNtB5_7Memchr2NtB7_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x, i64 noundef %i.c, i64 noundef %i.e), !dbg !21983
  %i.y = load i64, ptr %i.a, align 8, !dbg !21984, !range !4033, !noundef !29
  %i.z = trunc nuw i64 %i.y to i1, !dbg !21985
  br i1 %i.z, label %bb.i, label %bb.k, !dbg !21985

_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit: ; preds = %bb.e
  %i.aa = add nuw nsw i64 %i.c, 1, !dbg !21986
    #dbg_value(i64 %i.aa, !21567, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21987)
    #dbg_value(i64 %i.c, !21567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21987)
    #dbg_value(i64 1, !21567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21987)
    #dbg_value(i64 %i.c, !21569, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21988)
    #dbg_value(i64 %i.aa, !21569, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21988)
    #dbg_value(i32 0, !12158, !DIExpression(), !21989)
    #dbg_value(i64 %i.c, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21989)
    #dbg_value(i64 %i.aa, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21989)
    #dbg_value(i64 %i.c, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21992)
    #dbg_value(i64 %i.aa, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21992)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !21993
  store i64 %i.c, ptr %i.ab, align 8, !dbg !21993
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !21993
  store i64 %i.aa, ptr %.sroa.410.0..sroa_idx, align 8, !dbg !21993
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !21993
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !21993
  store i64 1, ptr %0, align 8, !dbg !21993
  br label %bb.h, !dbg !21994

bb.g:                                             ; preds = %bb.e, %bb.d
    #dbg_value(i64 poison, !21567, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !21987)
    #dbg_value(i64 %i.c, !21567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21987)
    #dbg_value(i64 0, !21567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21987)
  store i64 0, ptr %0, align 8, !dbg !21995
  br label %bb.h, !dbg !21996

bb.h:                                             ; preds = %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit, %bb.g, %bb.k, %bb.c
  ret void, !dbg !21997

bb.i:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21998
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !21998, !noundef !29 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !21998
  %i.af = load i64, ptr %i.ae, align 8, !dbg !21998, !noundef !29 ; 2 uses
    #dbg_value(i64 %i.ad, !21481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21999)
    #dbg_value(i64 %i.ad, !21576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22000)
    #dbg_value(i64 %i.af, !21481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21999)
    #dbg_value(i64 %i.af, !21576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22000)
    #dbg_value(i32 0, !12158, !DIExpression(), !22002)
    #dbg_value(i64 %i.ad, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22002)
    #dbg_value(i64 %i.af, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22002)
    #dbg_value(i64 %i.ad, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22004)
    #dbg_value(i64 %i.af, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22004)
  %.not.i7 = icmp ugt i64 %i.ad, %i.af, !dbg !22005
  br i1 %.not.i7, label %bb.j, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit8, !dbg !22005, !prof !9671

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !22006, !noalias !22007
  unreachable, !dbg !22006

_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit8: ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22010
  store i64 %i.ad, ptr %i.ag, align 8, !dbg !22010
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22010
  store i64 %i.af, ptr %.sroa.413.0..sroa_idx, align 8, !dbg !22010
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22010
  store i32 0, ptr %.sroa.514.0..sroa_idx, align 8, !dbg !22010
  br label %bb.k, !dbg !22011

bb.k:                                             ; preds = %bb.f, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit8
  %storemerge = phi i64 [ 1, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit8 ], [ 0, %bb.f ], !dbg !22012
  store i64 %storemerge, ptr %0, align 8, !dbg !22012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22013
  br label %bb.h, !dbg !21997
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy8is_matchB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2) unnamed_addr #5 !dbg !22014 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !22018, !DIExpression(), !22021)
    #dbg_value(ptr poison, !22019, !DIExpression(), !22021)
    #dbg_value(ptr %2, !22020, !DIExpression(), !22021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22022), !dbg !22025
    #dbg_value(ptr %0, !21434, !DIExpression(), !22026)
    #dbg_value(ptr poison, !21439, !DIExpression(), !22026)
    #dbg_value(ptr %2, !21440, !DIExpression(), !22026)
    #dbg_value(ptr %2, !21443, !DIExpression(), !22028)
    #dbg_value(ptr %2, !21448, !DIExpression(), !22030)
    #dbg_value(ptr %2, !21448, !DIExpression(), !22032)
    #dbg_value(ptr %2, !21455, !DIExpression(), !22034)
    #dbg_value(ptr %2, !21460, !DIExpression(), !22036)
    #dbg_value(ptr %2, !21448, !DIExpression(), !22038)
    #dbg_value(ptr %2, !21460, !DIExpression(), !22040)
    #dbg_value(ptr %2, !21448, !DIExpression(), !22042)
    #dbg_declare(ptr %i.a, !21471, !DIExpression(), !22044)
    #dbg_declare(ptr poison, !21480, !DIExpression(), !22046)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !22047
  %i.c = load i64, ptr %i.b, align 8, !dbg !22047, !alias.scope !22022, !noalias !22048, !noundef !29 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !22051
  %i.e = load i64, ptr %i.d, align 8, !dbg !22051, !alias.scope !22022, !noalias !22048, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !22052
  br i1 %i.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit, label %bb.b, !dbg !22053

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 8, !dbg !22054, !range !8482, !alias.scope !22022, !noalias !22048, !noundef !29
    #dbg_value(ptr poison, !21494, !DIExpression(), !22055)
  %i.h = icmp eq i32 %i.g, 0, !dbg !22057
  br i1 %i.h, label %bb.e, label %bb.c, !dbg !22057

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !22058
  %i.j = load i64, ptr %i.i, align 8, !dbg !22058, !alias.scope !22022, !noalias !22048, !noundef !29
    #dbg_value(ptr poison, !21501, !DIExpression(), !22059)
    #dbg_value(ptr poison, !21508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22059)
    #dbg_value(ptr poison, !21518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22061)
    #dbg_value(ptr poison, !21524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22063)
    #dbg_value(i64 %i.j, !21508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22059)
    #dbg_value(i64 %i.j, !21518, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22061)
    #dbg_value(i64 %i.j, !21524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22063)
    #dbg_value(i64 %i.c, !21509, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22059)
    #dbg_value(i64 poison, !21509, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22059)
    #dbg_value(i64 %i.c, !21521, !DIExpression(), !22061)
    #dbg_value(i64 %i.c, !21527, !DIExpression(), !22063)
  %i.k = icmp ult i64 %i.c, %i.j, !dbg !22065
  br i1 %i.k, label %bb.d, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit, !dbg !22065

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9, !dbg !22066
  %.val3 = load i8, ptr %i.l, align 1, !dbg !22066
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22067
  %.val = load i8, ptr %i.m, align 8, !dbg !22066
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22058
  %i.o = load ptr, ptr %i.n, align 8, !dbg !22058, !alias.scope !22022, !noalias !22048, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.o, !21508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22059)
    #dbg_value(ptr %i.o, !21518, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22061)
    #dbg_value(ptr %i.o, !21524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22063)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.c, !dbg !22068
  %i.q = load i8, ptr %i.p, align 1, !dbg !22069, !alias.scope !22070, !noalias !22073, !noundef !29 ; 2 uses
    #dbg_value(i8 %i.q, !21510, !DIExpression(), !22075)
  %i.r = icmp eq i8 %.val, %i.q, !dbg !22076
  %i.s = icmp eq i8 %.val3, %i.q
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.s, !dbg !22076
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit, !dbg !22076

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22077, !noalias !22078
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22077
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22079
  %i.v = load ptr, ptr %i.u, align 8, !dbg !22079, !alias.scope !22022, !noalias !22048, !nonnull !29, !noundef !29
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !22079
  %i.x = load i64, ptr %i.w, align 8, !dbg !22079, !alias.scope !22022, !noalias !22048, !noundef !29
  call void @_RNvXs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memchrNtB5_7Memchr2NtB7_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x, i64 noundef %i.c, i64 noundef %i.e), !dbg !22080, !noalias !22081
  %i.y = load i64, ptr %i.a, align 8, !dbg !22082, !range !4033, !noalias !22078, !noundef !29
  %i.z = trunc nuw i64 %i.y to i1, !dbg !22083    ; 2 uses
  br i1 %i.z, label %bb.f, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit5, !dbg !22083

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22084
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !22084, !noalias !22078, !noundef !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22084
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !22084, !noalias !22078, !noundef !29
    #dbg_value(i64 %i.ab, !21481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22085)
    #dbg_value(i64 %i.ab, !21576, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22086)
    #dbg_value(i64 %i.ad, !21481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22085)
    #dbg_value(i64 %i.ad, !21576, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22086)
    #dbg_value(i32 0, !12158, !DIExpression(), !22088)
    #dbg_value(i64 %i.ab, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22088)
    #dbg_value(i64 %i.ad, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22088)
    #dbg_value(i64 %i.ab, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22090)
    #dbg_value(i64 %i.ad, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22090)
  %.not.i4 = icmp ugt i64 %i.ab, %i.ad, !dbg !22091
  br i1 %.not.i4, label %bb.g, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit5, !dbg !22091, !prof !9671

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !22092, !noalias !22093
  unreachable, !dbg !22092

_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit5: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22096, !noalias !22078
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit, !dbg !22097

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr2ENtB5_8Strategy6searchB9_.exit: ; preds = %bb.d, %bb.c, %bb.a, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit5
  %.sroa.0.2 = phi i1 [ false, %bb.a ], [ %i.z, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit5 ], [ false, %bb.c ], [ %or.cond.i, %bb.d ], !dbg !22026
  ret i1 %.sroa.0.2, !dbg !22098
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy10group_infoB9_(ptr noalias nofree noundef readonly returned align 8 captures(ret: address, read_provenance) dereferenceable(16) %0) unnamed_addr #3 !dbg !22099 {
bb.a:
    #dbg_value(ptr %0, !22104, !DIExpression(), !22105)
  ret ptr %0, !dbg !22106
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy11reset_cacheB9_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #4 !dbg !22107 {
bb.a:
    #dbg_value(ptr poison, !22111, !DIExpression(), !22113)
    #dbg_value(ptr poison, !22112, !DIExpression(), !22113)
  ret void, !dbg !22114
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy11search_halfB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree readnone align 8 captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #5 !dbg !22115 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !22119, !DIExpression(), !22122)
    #dbg_value(ptr poison, !22120, !DIExpression(), !22122)
    #dbg_value(ptr %3, !22121, !DIExpression(), !22122)
    #dbg_declare(ptr poison, !22123, !DIExpression(), !22135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22137), !dbg !22140
    #dbg_value(ptr %1, !22141, !DIExpression(), !22148)
    #dbg_value(ptr poison, !22146, !DIExpression(), !22148)
    #dbg_value(ptr %3, !22147, !DIExpression(), !22148)
    #dbg_value(ptr %3, !22150, !DIExpression(), !22153)
    #dbg_value(ptr %3, !22155, !DIExpression(), !22158)
    #dbg_value(ptr %3, !22155, !DIExpression(), !22160)
    #dbg_value(ptr %3, !22162, !DIExpression(), !22165)
    #dbg_value(ptr %3, !22167, !DIExpression(), !22170)
    #dbg_value(ptr %3, !22155, !DIExpression(), !22172)
    #dbg_value(ptr %3, !22167, !DIExpression(), !22174)
    #dbg_value(ptr %3, !22155, !DIExpression(), !22176)
    #dbg_declare(ptr %i.a, !22178, !DIExpression(), !22190)
    #dbg_declare(ptr poison, !22187, !DIExpression(), !22192)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !22193
  %i.c = load i64, ptr %i.b, align 8, !dbg !22193, !alias.scope !22137, !noalias !22194, !noundef !29 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !22197
  %i.e = load i64, ptr %i.d, align 8, !dbg !22197, !alias.scope !22137, !noalias !22194, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !22198
  br i1 %i.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread, label %bb.b, !dbg !22199

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 8, !dbg !22200, !range !8482, !alias.scope !22137, !noalias !22194, !noundef !29
    #dbg_value(ptr poison, !22201, !DIExpression(), !22204)
  %i.h = icmp eq i32 %i.g, 0, !dbg !22206
  br i1 %i.h, label %bb.e, label %bb.c, !dbg !22206

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !22207
  %i.j = load ptr, ptr %i.i, align 8, !dbg !22207, !alias.scope !22137, !noalias !22194, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !22207
  %i.l = load i64, ptr %i.k, align 8, !dbg !22207, !alias.scope !22137, !noalias !22194, !noundef !29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22208), !dbg !22211
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22212), !dbg !22211
    #dbg_value(ptr %1, !22214, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22229)
    #dbg_value(ptr %i.j, !22221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22229)
    #dbg_value(ptr %i.j, !22231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22235)
    #dbg_value(ptr %i.j, !22237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22241)
    #dbg_value(i64 %i.l, !22221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22229)
    #dbg_value(i64 %i.l, !22231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22235)
    #dbg_value(i64 %i.l, !22237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22241)
    #dbg_value(i64 %i.c, !22222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22229)
    #dbg_value(i64 poison, !22222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22229)
    #dbg_value(i64 %i.c, !22234, !DIExpression(), !22235)
    #dbg_value(i64 %i.c, !22240, !DIExpression(), !22241)
  %i.m = icmp ult i64 %i.c, %i.l, !dbg !22243
  br i1 %i.m, label %bb.d, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread, !dbg !22243

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22244
    #dbg_value(ptr %i.n, !22214, !DIExpression(), !22229)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c, !dbg !22245
  %i.p = load i8, ptr %i.o, align 1, !dbg !22246, !alias.scope !22212, !noalias !22247, !noundef !29 ; 3 uses
    #dbg_value(i8 %i.p, !22223, !DIExpression(), !22249)
  %i.q = load i8, ptr %i.n, align 8, !dbg !22250, !alias.scope !22208, !noalias !22251, !noundef !29
  %i.r = icmp eq i8 %i.q, %i.p, !dbg !22250
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !22208, !noalias !22251
  %i.u = icmp eq i8 %i.t, %i.p
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.u, !dbg !22250
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.w = load i8, ptr %i.v, align 2, !alias.scope !22208, !noalias !22251
  %i.x = icmp eq i8 %i.w, %i.p
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %i.x, !dbg !22250
  br i1 %or.cond5.i, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread28, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread, !dbg !22250

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22252, !noalias !22253
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22252
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !22254
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !22254, !alias.scope !22137, !noalias !22194, !nonnull !29, !noundef !29
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !22254
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !22254, !alias.scope !22137, !noalias !22194, !noundef !29
  call void @_RNvXs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memchrNtB5_7Memchr3NtB7_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac, i64 noundef %i.c, i64 noundef %i.e), !dbg !22255, !noalias !22256
  %i.ad = load i64, ptr %i.a, align 8, !dbg !22257, !range !4033, !noalias !22253, !noundef !29
  %i.ae = trunc nuw i64 %i.ad to i1, !dbg !22258
  br i1 %i.ae, label %bb.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit, !dbg !22258

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread28: ; preds = %bb.d
  %i.af = add nuw nsw i64 %i.c, 1, !dbg !22259
    #dbg_value(i32 0, !12158, !DIExpression(), !22260)
    #dbg_value(i64 %i.c, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22260)
    #dbg_value(i64 %i.af, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22260)
    #dbg_value(i64 %i.c, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22281)
    #dbg_value(i64 %i.af, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22281)
    #dbg_value(i64 %i.c, !22132, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22282)
    #dbg_value(i32 undef, !22132, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !22282)
    #dbg_value(i64 1, !22132, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22282)
    #dbg_value(i64 %i.af, !22132, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22282)
    #dbg_value(i32 0, !22132, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !22282)
  br label %bb.h, !dbg !22283

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22284
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !22284, !noalias !22253, !noundef !29
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22284
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !22284, !noalias !22253, !noundef !29 ; 2 uses
    #dbg_value(i64 %i.ah, !22188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22285)
    #dbg_value(i64 %i.ah, !22286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22291)
    #dbg_value(i64 %i.aj, !22188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22285)
    #dbg_value(i64 %i.aj, !22286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22291)
    #dbg_value(i32 0, !12158, !DIExpression(), !22294)
    #dbg_value(i64 %i.ah, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22294)
    #dbg_value(i64 %i.aj, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22294)
    #dbg_value(i64 %i.ah, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22296)
    #dbg_value(i64 %i.aj, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22296)
  %.not.i6 = icmp ugt i64 %i.ah, %i.aj, !dbg !22297
  br i1 %.not.i6, label %bb.g, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread32, !dbg !22297, !prof !9671

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread32: ; preds = %bb.f
    #dbg_value(i64 1, !22132, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22282)
    #dbg_value(i64 %i.aj, !22132, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22282)
    #dbg_value(i32 0, !22132, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !22282)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22298, !noalias !22253
    #dbg_value(i64 1, !22132, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22282)
    #dbg_value(i64 %i.aj, !22132, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22282)
    #dbg_value(i32 0, !22132, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !22282)
  br label %bb.h, !dbg !22283

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !22299, !noalias !22300
  unreachable, !dbg !22299

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit: ; preds = %bb.e
    #dbg_value(i64 0, !22132, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22282)
    #dbg_value(i64 undef, !22132, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22282)
    #dbg_value(i32 0, !22132, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !22282)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22298, !noalias !22253
    #dbg_value(i64 0, !22132, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22282)
    #dbg_value(i64 undef, !22132, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22282)
    #dbg_value(i32 0, !22132, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !22282)
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread, !dbg !22283

bb.h:                                             ; preds = %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread32, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread28
  %.sroa.10.231 = phi i64 [ %i.af, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread28 ], [ %i.aj, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread32 ]
    #dbg_value(i64 poison, !22133, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22303)
    #dbg_value(i64 %.sroa.10.231, !22133, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22303)
    #dbg_value(i32 0, !22133, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !22303)
    #dbg_value(i32 poison, !22133, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !22303)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22304
  store i64 %.sroa.10.231, ptr %i.ak, align 8, !dbg !22304
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22304
  store i32 0, ptr %i.al, align 8, !dbg !22304
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread, !dbg !22305

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread: ; preds = %bb.c, %bb.d, %bb.a, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit, %bb.h
  %storemerge = phi i64 [ 1, %bb.h ], [ 0, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ], !dbg !22282
  store i64 %storemerge, ptr %0, align 8, !dbg !22282
  ret void, !dbg !22306
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy12create_cacheB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1400 x i8]) align 8 captures(none) dereferenceable(1400) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 !dbg !22307 {
bb.a:
    #dbg_value(ptr %1, !22311, !DIExpression(), !22312)
    #dbg_value(i64 1, !22313, !DIExpression(), !22318)
    #dbg_value(i8 0, !22317, !DIExpression(), !22318)
    #dbg_value(i64 1, !22330, !DIExpression(), !22335)
    #dbg_value(i8 0, !22334, !DIExpression(), !22335)
    #dbg_value(ptr %1, !22328, !DIExpression(), !22325)
    #dbg_value(ptr %1, !22322, !DIExpression(), !22337)
    #dbg_value(ptr %1, !22338, !DIExpression(), !22341)
  %i.a = load ptr, ptr %1, align 8, !dbg !22343, !nonnull !29, !noundef !29 ; 2 uses
    #dbg_value(ptr %i.a, !22316, !DIExpression(), !22346)
    #dbg_value(ptr %i.a, !22333, !DIExpression(), !22335)
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8, !dbg !22347
    #dbg_value(i64 %i.b, !22323, !DIExpression(), !22348)
  %i.c = icmp slt i64 %i.b, 0, !dbg !22349
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !22349

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1056, !dbg !22350
  tail call void @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB2_8Captures3all(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noundef nonnull %i.a), !dbg !22351
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1096, !dbg !22350
  store i64 -1, ptr %i.e, align 8, !dbg !22350
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1312, !dbg !22350
  store i64 -1, ptr %i.f, align 8, !dbg !22350
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1368, !dbg !22350
  store i64 -1, ptr %i.g, align 8, !dbg !22350
  store i64 2, ptr %0, align 8, !dbg !22350
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 704, !dbg !22350
  store i64 2, ptr %i.h, align 8, !dbg !22350
  ret void, !dbg !22352

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !22353
  unreachable, !dbg !22353
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy12memory_usageB9_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 !dbg !22354 {
bb.a:
    #dbg_value(ptr poison, !22358, !DIExpression(), !22359)
  ret i64 0, !dbg !22360
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal { i32, i32 } @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy12search_slotsB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) %3, i64 noundef range(i64 0, 1152921504606846976) %4) unnamed_addr #5 !dbg !22361 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !22365, !DIExpression(), !22379)
    #dbg_value(ptr poison, !22366, !DIExpression(), !22379)
    #dbg_value(ptr %2, !22367, !DIExpression(), !22379)
    #dbg_value(ptr %3, !22368, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22379)
    #dbg_value(ptr %3, !22380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22384)
    #dbg_value(ptr %3, !22386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22390)
    #dbg_value(ptr %3, !22380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22392)
    #dbg_value(ptr %3, !22386, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22394)
    #dbg_value(i64 %4, !22368, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22379)
    #dbg_value(i64 %4, !22380, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22384)
    #dbg_value(i64 %4, !22386, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22390)
    #dbg_value(i64 %4, !22380, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22392)
    #dbg_value(i64 %4, !22386, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22394)
    #dbg_value(i64 0, !22383, !DIExpression(), !22384)
    #dbg_value(i64 0, !22389, !DIExpression(), !22390)
    #dbg_value(i64 1, !22397, !DIExpression(), !22401)
    #dbg_value(i64 1, !22383, !DIExpression(), !22392)
    #dbg_value(i64 1, !22389, !DIExpression(), !22394)
    #dbg_value(i64 1, !22397, !DIExpression(), !22407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22411), !dbg !22414
    #dbg_value(ptr %0, !22141, !DIExpression(), !22415)
    #dbg_value(ptr poison, !22146, !DIExpression(), !22415)
    #dbg_value(ptr %2, !22147, !DIExpression(), !22415)
    #dbg_value(ptr %2, !22150, !DIExpression(), !22417)
    #dbg_value(ptr %2, !22155, !DIExpression(), !22419)
    #dbg_value(ptr %2, !22155, !DIExpression(), !22421)
    #dbg_value(ptr %2, !22162, !DIExpression(), !22423)
    #dbg_value(ptr %2, !22167, !DIExpression(), !22425)
    #dbg_value(ptr %2, !22155, !DIExpression(), !22427)
    #dbg_value(ptr %2, !22167, !DIExpression(), !22429)
    #dbg_value(ptr %2, !22155, !DIExpression(), !22431)
    #dbg_declare(ptr %i.a, !22178, !DIExpression(), !22433)
    #dbg_declare(ptr poison, !22187, !DIExpression(), !22435)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !22436
  %i.c = load i64, ptr %i.b, align 8, !dbg !22436, !alias.scope !22411, !noalias !22437, !noundef !29 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !22440
  %i.e = load i64, ptr %i.d, align 8, !dbg !22440, !alias.scope !22411, !noalias !22437, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !22441
  br i1 %i.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread, label %bb.b, !dbg !22442

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 8, !dbg !22443, !range !8482, !alias.scope !22411, !noalias !22437, !noundef !29
    #dbg_value(ptr poison, !22201, !DIExpression(), !22444)
  %i.h = icmp eq i32 %i.g, 0, !dbg !22446
  br i1 %i.h, label %bb.e, label %bb.c, !dbg !22446

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22447
  %i.j = load ptr, ptr %i.i, align 8, !dbg !22447, !alias.scope !22411, !noalias !22437, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !22447
  %i.l = load i64, ptr %i.k, align 8, !dbg !22447, !alias.scope !22411, !noalias !22437, !noundef !29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22448), !dbg !22451
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22452), !dbg !22451
    #dbg_value(ptr %0, !22214, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22454)
    #dbg_value(ptr %i.j, !22221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22454)
    #dbg_value(ptr %i.j, !22231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22456)
    #dbg_value(ptr %i.j, !22237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22458)
    #dbg_value(i64 %i.l, !22221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22454)
    #dbg_value(i64 %i.l, !22231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22456)
    #dbg_value(i64 %i.l, !22237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22458)
    #dbg_value(i64 %i.c, !22222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22454)
    #dbg_value(i64 poison, !22222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22454)
    #dbg_value(i64 %i.c, !22234, !DIExpression(), !22456)
    #dbg_value(i64 %i.c, !22240, !DIExpression(), !22458)
  %i.m = icmp ult i64 %i.c, %i.l, !dbg !22460
  br i1 %i.m, label %bb.d, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread, !dbg !22460

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22461
    #dbg_value(ptr %i.n, !22214, !DIExpression(), !22454)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c, !dbg !22462
  %i.p = load i8, ptr %i.o, align 1, !dbg !22463, !alias.scope !22452, !noalias !22464, !noundef !29 ; 3 uses
    #dbg_value(i8 %i.p, !22223, !DIExpression(), !22466)
  %i.q = load i8, ptr %i.n, align 8, !dbg !22467, !alias.scope !22448, !noalias !22468, !noundef !29
  %i.r = icmp eq i8 %i.q, %i.p, !dbg !22467
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !22448, !noalias !22468
  %i.u = icmp eq i8 %i.t, %i.p
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.u, !dbg !22467
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.w = load i8, ptr %i.v, align 2, !alias.scope !22448, !noalias !22468
  %i.x = icmp eq i8 %i.w, %i.p
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %i.x, !dbg !22467
  br i1 %or.cond5.i, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread58, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread, !dbg !22467

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22469, !noalias !22470
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22469
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22471
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !22471, !alias.scope !22411, !noalias !22437, !nonnull !29, !noundef !29
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !22471
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !22471, !alias.scope !22411, !noalias !22437, !noundef !29
  call void @_RNvXs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memchrNtB5_7Memchr3NtB7_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac, i64 noundef %i.c, i64 noundef %i.e), !dbg !22472, !noalias !22473
  %i.ad = load i64, ptr %i.a, align 8, !dbg !22474, !range !4033, !noalias !22470, !noundef !29
  %i.ae = trunc nuw i64 %i.ad to i1, !dbg !22475
  br i1 %i.ae, label %bb.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit, !dbg !22475

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread58: ; preds = %bb.d
  %i.af = add nuw nsw i64 %i.c, 1, !dbg !22476
    #dbg_value(i32 0, !12158, !DIExpression(), !22477)
    #dbg_value(i64 %i.c, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22477)
    #dbg_value(i64 %i.af, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22477)
    #dbg_value(i64 %i.c, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22481)
    #dbg_value(i64 %i.af, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22481)
    #dbg_value(i32 undef, !22482, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !22487)
    #dbg_value(i64 1, !22482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22487)
    #dbg_value(i64 %i.c, !22482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22487)
    #dbg_value(i64 %i.af, !22482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22487)
    #dbg_value(i32 0, !22482, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !22487)
  br label %bb.h, !dbg !22489

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22490
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !22490, !noalias !22470, !noundef !29 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22490
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !22490, !noalias !22470, !noundef !29 ; 2 uses
    #dbg_value(i64 %i.ah, !22188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22491)
    #dbg_value(i64 %i.ah, !22286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22492)
    #dbg_value(i64 %i.aj, !22188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22491)
    #dbg_value(i64 %i.aj, !22286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22492)
    #dbg_value(i32 0, !12158, !DIExpression(), !22494)
    #dbg_value(i64 %i.ah, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22494)
    #dbg_value(i64 %i.aj, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22494)
    #dbg_value(i64 %i.ah, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22496)
    #dbg_value(i64 %i.aj, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22496)
  %.not.i35 = icmp ugt i64 %i.ah, %i.aj, !dbg !22497
  br i1 %.not.i35, label %bb.g, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread64, !dbg !22497, !prof !9671

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread64: ; preds = %bb.f
    #dbg_value(i64 1, !22482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22487)
    #dbg_value(i64 %i.ah, !22482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22487)
    #dbg_value(i64 %i.aj, !22482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22487)
    #dbg_value(i32 0, !22482, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !22487)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22498, !noalias !22470
    #dbg_value(i64 1, !22482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22487)
    #dbg_value(i64 %i.ah, !22482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22487)
    #dbg_value(i64 %i.aj, !22482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22487)
    #dbg_value(i32 0, !22482, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !22487)
  br label %bb.h, !dbg !22489

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !22499, !noalias !22500
  unreachable, !dbg !22499

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit: ; preds = %bb.e
    #dbg_value(i64 0, !22482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22487)
    #dbg_value(i64 undef, !22482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22487)
    #dbg_value(i64 undef, !22482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22487)
    #dbg_value(i32 0, !22482, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !22487)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22498, !noalias !22470
    #dbg_value(i64 0, !22482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22487)
    #dbg_value(i64 undef, !22482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22487)
    #dbg_value(i64 undef, !22482, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22487)
    #dbg_value(i32 0, !22482, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !22487)
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread, !dbg !22489

bb.h:                                             ; preds = %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread64, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread58
  %.sroa.9.263 = phi i64 [ %i.c, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread58 ], [ %i.ah, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread64 ]
  %.sroa.12.262 = phi i64 [ %i.af, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread58 ], [ %i.aj, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread64 ]
    #dbg_value(i64 %.sroa.9.263, !22369, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22503)
    #dbg_value(i64 %.sroa.12.262, !22369, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22503)
    #dbg_value(i32 0, !22369, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !22503)
    #dbg_value(i32 poison, !22369, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !22503)
  %.not = icmp eq i64 %4, 0, !dbg !22504
  br i1 %.not, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread, label %bb.i, !dbg !22504

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread: ; preds = %bb.h, %bb.c, %bb.d, %bb.a, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit, %bb.j, %bb.i
  %.sroa.0.0 = phi i32 [ 1, %bb.j ], [ 1, %bb.i ], [ 0, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ], [ 1, %bb.h ], !dbg !22379
  %i.ak = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !22505
  %i.al = insertvalue { i32, i32 } %i.ak, i32 0, 1, !dbg !22505
  ret { i32, i32 } %i.al, !dbg !22505

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %3, !22375, !DIExpression(), !22506)
    #dbg_value(i64 %.sroa.9.263, !22405, !DIExpression(), !22507)
    #dbg_value(i64 %.sroa.9.263, !22400, !DIExpression(), !22401)
  %i.am = add i64 %.sroa.9.263, 1, !dbg !22508
  store i64 %i.am, ptr %3, align 8, !dbg !22509
  %.not68 = icmp eq i64 %4, 1, !dbg !22510
  br i1 %.not68, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread, label %bb.j, !dbg !22510

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !22511
    #dbg_value(ptr %i.an, !22377, !DIExpression(), !22512)
    #dbg_value(i64 %.sroa.12.262, !22405, !DIExpression(), !22513)
    #dbg_value(i64 %.sroa.12.262, !22400, !DIExpression(), !22407)
  %i.ao = add i64 %.sroa.12.262, 1, !dbg !22514
  store i64 %i.ao, ptr %i.an, align 8, !dbg !22515
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread, !dbg !22516
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy14is_acceleratedB9_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 !dbg !22517 {
bb.a:
    #dbg_value(ptr poison, !22521, !DIExpression(), !22522)
  ret i1 true, !dbg !22523
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy25which_overlapping_matchesB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #5 !dbg !22524 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !22528, !DIExpression(), !22532)
    #dbg_value(ptr poison, !22529, !DIExpression(), !22532)
    #dbg_value(ptr %2, !22530, !DIExpression(), !22532)
    #dbg_value(ptr %3, !22531, !DIExpression(), !22532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22533), !dbg !22536
    #dbg_value(ptr %0, !22141, !DIExpression(), !22537)
    #dbg_value(ptr poison, !22146, !DIExpression(), !22537)
    #dbg_value(ptr %2, !22147, !DIExpression(), !22537)
    #dbg_value(ptr %2, !22150, !DIExpression(), !22539)
    #dbg_value(ptr %2, !22155, !DIExpression(), !22541)
    #dbg_value(ptr %2, !22155, !DIExpression(), !22543)
    #dbg_value(ptr %2, !22162, !DIExpression(), !22545)
    #dbg_value(ptr %2, !22167, !DIExpression(), !22547)
    #dbg_value(ptr %2, !22155, !DIExpression(), !22549)
    #dbg_value(ptr %2, !22167, !DIExpression(), !22551)
    #dbg_value(ptr %2, !22155, !DIExpression(), !22553)
    #dbg_declare(ptr %i.a, !22178, !DIExpression(), !22555)
    #dbg_declare(ptr poison, !22187, !DIExpression(), !22557)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !22558
  %i.c = load i64, ptr %i.b, align 8, !dbg !22558, !alias.scope !22533, !noalias !22559, !noundef !29 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !22562
  %i.e = load i64, ptr %i.d, align 8, !dbg !22562, !alias.scope !22533, !noalias !22559, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !22563
  br i1 %i.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread, label %bb.b, !dbg !22564

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 8, !dbg !22565, !range !8482, !alias.scope !22533, !noalias !22559, !noundef !29
    #dbg_value(ptr poison, !22201, !DIExpression(), !22566)
  %i.h = icmp eq i32 %i.g, 0, !dbg !22568
  br i1 %i.h, label %bb.e, label %bb.c, !dbg !22568

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22569
  %i.j = load ptr, ptr %i.i, align 8, !dbg !22569, !alias.scope !22533, !noalias !22559, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !22569
  %i.l = load i64, ptr %i.k, align 8, !dbg !22569, !alias.scope !22533, !noalias !22559, !noundef !29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22570), !dbg !22573
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22574), !dbg !22573
    #dbg_value(ptr %0, !22214, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22576)
    #dbg_value(ptr %i.j, !22221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22576)
    #dbg_value(ptr %i.j, !22231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22578)
    #dbg_value(ptr %i.j, !22237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22580)
    #dbg_value(i64 %i.l, !22221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22576)
    #dbg_value(i64 %i.l, !22231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22578)
    #dbg_value(i64 %i.l, !22237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22580)
    #dbg_value(i64 %i.c, !22222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22576)
    #dbg_value(i64 poison, !22222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22576)
    #dbg_value(i64 %i.c, !22234, !DIExpression(), !22578)
    #dbg_value(i64 %i.c, !22240, !DIExpression(), !22580)
  %i.m = icmp ult i64 %i.c, %i.l, !dbg !22582
  br i1 %i.m, label %bb.d, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread, !dbg !22582

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22583
    #dbg_value(ptr %i.n, !22214, !DIExpression(), !22576)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c, !dbg !22584
  %i.p = load i8, ptr %i.o, align 1, !dbg !22585, !alias.scope !22574, !noalias !22586, !noundef !29 ; 3 uses
    #dbg_value(i8 %i.p, !22223, !DIExpression(), !22588)
  %i.q = load i8, ptr %i.n, align 8, !dbg !22589, !alias.scope !22570, !noalias !22590, !noundef !29
  %i.r = icmp eq i8 %i.q, %i.p, !dbg !22589
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !22570, !noalias !22590
  %i.u = icmp eq i8 %i.t, %i.p
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.u, !dbg !22589
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.w = load i8, ptr %i.v, align 2, !alias.scope !22570, !noalias !22590
  %i.x = icmp eq i8 %i.w, %i.p
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %i.x, !dbg !22589
  br i1 %or.cond5.i, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread17, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread, !dbg !22589

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22591, !noalias !22592
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22591
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22593
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !22593, !alias.scope !22533, !noalias !22559, !nonnull !29, !noundef !29
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !22593
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !22593, !alias.scope !22533, !noalias !22559, !noundef !29
  call void @_RNvXs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memchrNtB5_7Memchr3NtB7_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac, i64 noundef %i.c, i64 noundef %i.e), !dbg !22594, !noalias !22595
  %i.ad = load i64, ptr %i.a, align 8, !dbg !22596, !range !4033, !noalias !22592, !noundef !29
  %i.ae = trunc nuw i64 %i.ad to i1, !dbg !22597
  br i1 %i.ae, label %bb.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread20, !dbg !22597

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread20: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22598, !noalias !22592
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread, !dbg !22599

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22600
  %i.ag = load i64, ptr %i.af, align 8, !dbg !22600, !noalias !22592, !noundef !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22600
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !22600, !noalias !22592, !noundef !29
    #dbg_value(i64 %i.ag, !22188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22601)
    #dbg_value(i64 %i.ag, !22286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22602)
    #dbg_value(i64 %i.ai, !22188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22601)
    #dbg_value(i64 %i.ai, !22286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22602)
    #dbg_value(i32 0, !12158, !DIExpression(), !22604)
    #dbg_value(i64 %i.ag, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22604)
    #dbg_value(i64 %i.ai, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22604)
    #dbg_value(i64 %i.ag, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22606)
    #dbg_value(i64 %i.ai, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22606)
  %.not.i4 = icmp ugt i64 %i.ag, %i.ai, !dbg !22607
  br i1 %.not.i4, label %bb.g, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit, !dbg !22607, !prof !9671

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !22608, !noalias !22609
  unreachable, !dbg !22608

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22598, !noalias !22592
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread17, !dbg !22599

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread17: ; preds = %bb.d, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit
  %i.aj = tail call noundef zeroext i1 @_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 0), !dbg !22612 ; 0 uses
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread, !dbg !22613

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread: ; preds = %bb.c, %bb.d, %bb.a, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread20, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit.thread17
  ret void, !dbg !22614
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy4nameB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22615 {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !22619, !DIExpression(), !22626)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22627
  store ptr @110, ptr %i.b, align 8, !dbg !22628
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !22628
  store i64 7, ptr %i.c, align 8, !dbg !22628
    #dbg_value(ptr %i.b, !22620, !DIExpression(), !22629)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22630
  store ptr %i.b, ptr %i.a, align 8, !dbg !22630
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22630
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCs9GYDdpCSJ4S_14regex_automata, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !22630
    #dbg_value(ptr @73, !22631, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22634)
    #dbg_value(ptr %i.a, !22631, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22634)
    #dbg_value(ptr null, !19745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22637)
    #dbg_value(i64 undef, !19745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22637)
    #dbg_value(ptr poison, !19775, !DIExpression(), !22637)
    #dbg_declare(ptr poison, !19776, !DIExpression(), !22639)
    #dbg_value(ptr poison, !19782, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !22640)
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @73, ptr noundef nonnull %i.a), !dbg !22642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22643
  ret void, !dbg !22644
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias nofree readnone align 8 captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #5 !dbg !22142 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %1, !22141, !DIExpression(), !22645)
    #dbg_value(ptr poison, !22146, !DIExpression(), !22645)
    #dbg_value(ptr %3, !22147, !DIExpression(), !22645)
    #dbg_value(ptr %3, !22150, !DIExpression(), !22646)
    #dbg_value(ptr %3, !22155, !DIExpression(), !22648)
    #dbg_value(ptr %3, !22155, !DIExpression(), !22650)
    #dbg_value(ptr %3, !22162, !DIExpression(), !22652)
    #dbg_value(ptr %3, !22167, !DIExpression(), !22654)
    #dbg_value(ptr %3, !22155, !DIExpression(), !22656)
    #dbg_value(ptr %3, !22167, !DIExpression(), !22658)
    #dbg_value(ptr %3, !22155, !DIExpression(), !22660)
    #dbg_declare(ptr %i.a, !22178, !DIExpression(), !22662)
    #dbg_declare(ptr poison, !22278, !DIExpression(), !22664)
    #dbg_declare(ptr poison, !22187, !DIExpression(), !22666)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !22667
  %i.c = load i64, ptr %i.b, align 8, !dbg !22667, !noundef !29 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !22668
  %i.e = load i64, ptr %i.d, align 8, !dbg !22668, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !22669
  br i1 %i.f, label %bb.c, label %bb.b, !dbg !22670

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 8, !dbg !22671, !range !8482, !noundef !29
    #dbg_value(ptr poison, !22201, !DIExpression(), !22672)
  %i.h = icmp eq i32 %i.g, 0, !dbg !22674
  br i1 %i.h, label %bb.f, label %bb.d, !dbg !22674

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !dbg !22675
  br label %bb.h, !dbg !22676

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !22678
  %i.j = load ptr, ptr %i.i, align 8, !dbg !22678, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !22678
  %i.l = load i64, ptr %i.k, align 8, !dbg !22678, !noundef !29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22679), !dbg !22682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22683), !dbg !22682
    #dbg_value(ptr %1, !22214, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22685)
    #dbg_value(ptr %i.j, !22221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22685)
    #dbg_value(ptr %i.j, !22231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22687)
    #dbg_value(ptr %i.j, !22237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22689)
    #dbg_value(i64 %i.l, !22221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22685)
    #dbg_value(i64 %i.l, !22231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22687)
    #dbg_value(i64 %i.l, !22237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22689)
    #dbg_value(i64 %i.c, !22222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22685)
    #dbg_value(i64 poison, !22222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22685)
    #dbg_value(i64 %i.c, !22234, !DIExpression(), !22687)
    #dbg_value(i64 %i.c, !22240, !DIExpression(), !22689)
  %i.m = icmp ult i64 %i.c, %i.l, !dbg !22691
  br i1 %i.m, label %bb.e, label %bb.g, !dbg !22691

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22692
    #dbg_value(ptr %i.n, !22214, !DIExpression(), !22685)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c, !dbg !22693
  %i.p = load i8, ptr %i.o, align 1, !dbg !22694, !alias.scope !22683, !noalias !22695, !noundef !29 ; 3 uses
    #dbg_value(i8 %i.p, !22223, !DIExpression(), !22697)
  %i.q = load i8, ptr %i.n, align 8, !dbg !22698, !alias.scope !22679, !noalias !22699, !noundef !29
  %i.r = icmp eq i8 %i.q, %i.p, !dbg !22698
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !22679, !noalias !22699
  %i.u = icmp eq i8 %i.t, %i.p
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.u, !dbg !22698
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.w = load i8, ptr %i.v, align 2, !alias.scope !22679, !noalias !22699
  %i.x = icmp eq i8 %i.w, %i.p
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %i.x, !dbg !22698
  br i1 %or.cond5.i, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit, label %bb.g, !dbg !22698

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22700
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22700
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !22701
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !22701, !nonnull !29, !noundef !29
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !22701
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !22701, !noundef !29
  call void @_RNvXs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memchrNtB5_7Memchr3NtB7_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac, i64 noundef %i.c, i64 noundef %i.e), !dbg !22702
  %i.ad = load i64, ptr %i.a, align 8, !dbg !22703, !range !4033, !noundef !29
  %i.ae = trunc nuw i64 %i.ad to i1, !dbg !22704
  br i1 %i.ae, label %bb.i, label %bb.k, !dbg !22704

_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit: ; preds = %bb.e
  %i.af = add nuw nsw i64 %i.c, 1, !dbg !22705
    #dbg_value(i64 %i.af, !22277, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22706)
    #dbg_value(i64 %i.c, !22277, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22706)
    #dbg_value(i64 1, !22277, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22706)
    #dbg_value(i64 %i.c, !22279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22707)
    #dbg_value(i64 %i.af, !22279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22707)
    #dbg_value(i32 0, !12158, !DIExpression(), !22708)
    #dbg_value(i64 %i.c, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22708)
    #dbg_value(i64 %i.af, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22708)
    #dbg_value(i64 %i.c, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22711)
    #dbg_value(i64 %i.af, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22711)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22712
  store i64 %i.c, ptr %i.ag, align 8, !dbg !22712
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22712
  store i64 %i.af, ptr %.sroa.49.0..sroa_idx, align 8, !dbg !22712
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22712
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !22712
  store i64 1, ptr %0, align 8, !dbg !22712
  br label %bb.h, !dbg !22713

bb.g:                                             ; preds = %bb.e, %bb.d
    #dbg_value(i64 poison, !22277, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22706)
    #dbg_value(i64 %i.c, !22277, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22706)
    #dbg_value(i64 0, !22277, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22706)
  store i64 0, ptr %0, align 8, !dbg !22714
  br label %bb.h, !dbg !22715

bb.h:                                             ; preds = %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit, %bb.g, %bb.k, %bb.c
  ret void, !dbg !22716

bb.i:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22717
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !22717, !noundef !29 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22717
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !22717, !noundef !29 ; 2 uses
    #dbg_value(i64 %i.ai, !22188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22718)
    #dbg_value(i64 %i.ai, !22286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22719)
    #dbg_value(i64 %i.ak, !22188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22718)
    #dbg_value(i64 %i.ak, !22286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22719)
    #dbg_value(i32 0, !12158, !DIExpression(), !22721)
    #dbg_value(i64 %i.ai, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22721)
    #dbg_value(i64 %i.ak, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22721)
    #dbg_value(i64 %i.ai, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22723)
    #dbg_value(i64 %i.ak, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22723)
  %.not.i6 = icmp ugt i64 %i.ai, %i.ak, !dbg !22724
  br i1 %.not.i6, label %bb.j, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit7, !dbg !22724, !prof !9671

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !22725, !noalias !22726
  unreachable, !dbg !22725

_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit7: ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22729
  store i64 %i.ai, ptr %i.al, align 8, !dbg !22729
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22729
  store i64 %i.ak, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !22729
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !22729
  store i32 0, ptr %.sroa.513.0..sroa_idx, align 8, !dbg !22729
  br label %bb.k, !dbg !22730

bb.k:                                             ; preds = %bb.f, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit7
  %storemerge = phi i64 [ 1, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit7 ], [ 0, %bb.f ], !dbg !22731
  store i64 %storemerge, ptr %0, align 8, !dbg !22731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22732
  br label %bb.h, !dbg !22716
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy8is_matchB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2) unnamed_addr #5 !dbg !22733 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !22737, !DIExpression(), !22740)
    #dbg_value(ptr poison, !22738, !DIExpression(), !22740)
    #dbg_value(ptr %2, !22739, !DIExpression(), !22740)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22741), !dbg !22744
    #dbg_value(ptr %0, !22141, !DIExpression(), !22745)
    #dbg_value(ptr poison, !22146, !DIExpression(), !22745)
    #dbg_value(ptr %2, !22147, !DIExpression(), !22745)
    #dbg_value(ptr %2, !22150, !DIExpression(), !22747)
    #dbg_value(ptr %2, !22155, !DIExpression(), !22749)
    #dbg_value(ptr %2, !22155, !DIExpression(), !22751)
    #dbg_value(ptr %2, !22162, !DIExpression(), !22753)
    #dbg_value(ptr %2, !22167, !DIExpression(), !22755)
    #dbg_value(ptr %2, !22155, !DIExpression(), !22757)
    #dbg_value(ptr %2, !22167, !DIExpression(), !22759)
    #dbg_value(ptr %2, !22155, !DIExpression(), !22761)
    #dbg_declare(ptr %i.a, !22178, !DIExpression(), !22763)
    #dbg_declare(ptr poison, !22187, !DIExpression(), !22765)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !22766
  %i.c = load i64, ptr %i.b, align 8, !dbg !22766, !alias.scope !22741, !noalias !22767, !noundef !29 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !22770
  %i.e = load i64, ptr %i.d, align 8, !dbg !22770, !alias.scope !22741, !noalias !22767, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !22771
  br i1 %i.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit, label %bb.b, !dbg !22772

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 8, !dbg !22773, !range !8482, !alias.scope !22741, !noalias !22767, !noundef !29
    #dbg_value(ptr poison, !22201, !DIExpression(), !22774)
  %i.h = icmp eq i32 %i.g, 0, !dbg !22776
  br i1 %i.h, label %bb.e, label %bb.c, !dbg !22776

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22777
  %i.j = load ptr, ptr %i.i, align 8, !dbg !22777, !alias.scope !22741, !noalias !22767, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !22777
  %i.l = load i64, ptr %i.k, align 8, !dbg !22777, !alias.scope !22741, !noalias !22767, !noundef !29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22778), !dbg !22781
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22782), !dbg !22781
    #dbg_value(ptr %0, !22214, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !22784)
    #dbg_value(ptr %i.j, !22221, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22784)
    #dbg_value(ptr %i.j, !22231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22786)
    #dbg_value(ptr %i.j, !22237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22788)
    #dbg_value(i64 %i.l, !22221, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22784)
    #dbg_value(i64 %i.l, !22231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22786)
    #dbg_value(i64 %i.l, !22237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22788)
    #dbg_value(i64 %i.c, !22222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22784)
    #dbg_value(i64 poison, !22222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22784)
    #dbg_value(i64 %i.c, !22234, !DIExpression(), !22786)
    #dbg_value(i64 %i.c, !22240, !DIExpression(), !22788)
  %i.m = icmp ult i64 %i.c, %i.l, !dbg !22790
  br i1 %i.m, label %bb.d, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit, !dbg !22790

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22791
    #dbg_value(ptr %i.n, !22214, !DIExpression(), !22784)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c, !dbg !22792
  %i.p = load i8, ptr %i.o, align 1, !dbg !22793, !alias.scope !22782, !noalias !22794, !noundef !29 ; 3 uses
    #dbg_value(i8 %i.p, !22223, !DIExpression(), !22796)
  %i.q = load i8, ptr %i.n, align 8, !dbg !22797, !alias.scope !22778, !noalias !22798, !noundef !29
  %i.r = icmp eq i8 %i.q, %i.p, !dbg !22797
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !22778, !noalias !22798
  %i.u = icmp eq i8 %i.t, %i.p
  %or.cond.i = select i1 %i.r, i1 true, i1 %i.u, !dbg !22797
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.w = load i8, ptr %i.v, align 2, !alias.scope !22778, !noalias !22798
  %i.x = icmp eq i8 %i.w, %i.p
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %i.x, !dbg !22797
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit, !dbg !22797

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22799, !noalias !22800
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22799
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !22801
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !22801, !alias.scope !22741, !noalias !22767, !nonnull !29, !noundef !29
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !22801
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !22801, !alias.scope !22741, !noalias !22767, !noundef !29
  call void @_RNvXs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memchrNtB5_7Memchr3NtB7_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(3) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac, i64 noundef %i.c, i64 noundef %i.e), !dbg !22802, !noalias !22803
  %i.ad = load i64, ptr %i.a, align 8, !dbg !22804, !range !4033, !noalias !22800, !noundef !29
  %i.ae = trunc nuw i64 %i.ad to i1, !dbg !22805  ; 2 uses
  br i1 %i.ae, label %bb.f, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4, !dbg !22805

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22806
  %i.ag = load i64, ptr %i.af, align 8, !dbg !22806, !noalias !22800, !noundef !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22806
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !22806, !noalias !22800, !noundef !29
    #dbg_value(i64 %i.ag, !22188, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22807)
    #dbg_value(i64 %i.ag, !22286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22808)
    #dbg_value(i64 %i.ai, !22188, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22807)
    #dbg_value(i64 %i.ai, !22286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22808)
    #dbg_value(i32 0, !12158, !DIExpression(), !22810)
    #dbg_value(i64 %i.ag, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22810)
    #dbg_value(i64 %i.ai, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22810)
    #dbg_value(i64 %i.ag, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22812)
    #dbg_value(i64 %i.ai, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22812)
  %.not.i3 = icmp ugt i64 %i.ag, %i.ai, !dbg !22813
  br i1 %.not.i3, label %bb.g, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4, !dbg !22813, !prof !9671

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !22814, !noalias !22815
  unreachable, !dbg !22814

_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22818, !noalias !22800
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit, !dbg !22819

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memchr7Memchr3ENtB5_8Strategy6searchB9_.exit: ; preds = %bb.d, %bb.c, %bb.a, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4
  %.sroa.0.2 = phi i1 [ false, %bb.a ], [ %i.ae, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4 ], [ false, %bb.c ], [ %or.cond5.i, %bb.d ], !dbg !22745
  ret i1 %.sroa.0.2, !dbg !22820
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memmem6MemmemENtB5_8Strategy10group_infoB9_(ptr noalias nofree noundef readonly align 32 captures(ret: address, read_provenance) dereferenceable(320) %0) unnamed_addr #3 !dbg !22821 {
bb.a:
    #dbg_value(ptr %0, !22826, !DIExpression(), !22827)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288, !dbg !22828
  ret ptr %i.a, !dbg !22829
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memmem6MemmemENtB5_8Strategy11reset_cacheB9_(ptr noalias nofree readonly align 32 captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #4 !dbg !22830 {
bb.a:
    #dbg_value(ptr poison, !22834, !DIExpression(), !22836)
    #dbg_value(ptr poison, !22835, !DIExpression(), !22836)
  ret void, !dbg !22837
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memmem6MemmemENtB5_8Strategy11search_halfB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 32 captures(address, read_provenance) dereferenceable(320) %1, ptr noalias nofree readnone align 8 captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #5 !dbg !22838 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !22842, !DIExpression(), !22845)
    #dbg_value(ptr poison, !22843, !DIExpression(), !22845)
    #dbg_value(ptr %3, !22844, !DIExpression(), !22845)
    #dbg_declare(ptr poison, !22846, !DIExpression(), !22858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22860), !dbg !22863
    #dbg_value(ptr %1, !22864, !DIExpression(), !22871)
    #dbg_value(ptr poison, !22869, !DIExpression(), !22871)
    #dbg_value(ptr %3, !22870, !DIExpression(), !22871)
    #dbg_value(ptr %3, !22873, !DIExpression(), !22876)
    #dbg_value(ptr %3, !22878, !DIExpression(), !22881)
    #dbg_value(ptr %3, !22878, !DIExpression(), !22883)
    #dbg_value(ptr %3, !22885, !DIExpression(), !22888)
    #dbg_value(ptr %3, !22890, !DIExpression(), !22893)
    #dbg_value(ptr %3, !22878, !DIExpression(), !22895)
    #dbg_value(ptr %3, !22890, !DIExpression(), !22897)
    #dbg_value(ptr %3, !22878, !DIExpression(), !22899)
    #dbg_declare(ptr %i.b, !22901, !DIExpression(), !22913)
    #dbg_declare(ptr %i.a, !22915, !DIExpression(), !22927)
    #dbg_declare(ptr poison, !22910, !DIExpression(), !22929)
    #dbg_declare(ptr poison, !22924, !DIExpression(), !22930)
end_hunk_4
begin_hunk_5_@_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memmem6MemmemENtB5_8Strategy8is_matchB9_:bb.a
    #dbg_declare(ptr %i.b, !22901, !DIExpression(), !23458)
    #dbg_declare(ptr %i.a, !22915, !DIExpression(), !23460)
    #dbg_declare(ptr poison, !22910, !DIExpression(), !23462)
    #dbg_declare(ptr poison, !22924, !DIExpression(), !23463)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !23464
  %i.d = load i64, ptr %i.c, align 8, !dbg !23464, !alias.scope !23436, !noalias !23465, !noundef !29 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !23468
  %i.f = load i64, ptr %i.e, align 8, !dbg !23468, !alias.scope !23436, !noalias !23465, !noundef !29 ; 3 uses
  %i.g = icmp ugt i64 %i.d, %i.f, !dbg !23469
  br i1 %i.g, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memmem6MemmemENtB5_8Strategy6searchB9_.exit, label %bb.b, !dbg !23470

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %2, align 8, !dbg !23471, !range !8482, !alias.scope !23436, !noalias !23465, !noundef !29
    #dbg_value(ptr poison, !22939, !DIExpression(), !23472)
  %i.i = icmp eq i32 %i.h, 0, !dbg !23474
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23475 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !23475 ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.c, !dbg !23474

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23476, !noalias !23477
  %i.l = load ptr, ptr %i.j, align 8, !dbg !23478, !alias.scope !23436, !noalias !23465, !nonnull !29, !noundef !29
  %i.m = load i64, ptr %i.k, align 8, !dbg !23478, !alias.scope !23436, !noalias !23465, !noundef !29
  call void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memmemNtB4_6MemmemNtB6_10PrefilterI6prefix(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.m, i64 noundef %i.d, i64 noundef %i.f), !dbg !23479, !noalias !23480
  %i.n = load i64, ptr %i.b, align 8, !dbg !23481, !range !4033, !noalias !23477, !noundef !29
  %i.o = trunc nuw i64 %i.n to i1, !dbg !23482
  br i1 %i.o, label %bb.e, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit, !dbg !23482

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23483, !noalias !23477
  %i.p = load ptr, ptr %i.j, align 8, !dbg !23484, !alias.scope !23436, !noalias !23465, !nonnull !29, !noundef !29
  %i.q = load i64, ptr %i.k, align 8, !dbg !23484, !alias.scope !23436, !noalias !23465, !noundef !29
  call void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memmemNtB4_6MemmemNtB6_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 32 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.q, i64 noundef %i.d, i64 noundef %i.f), !dbg !23485, !noalias !23480
  %i.r = load i64, ptr %i.a, align 8, !dbg !23486, !range !4033, !noalias !23477, !noundef !29
  %i.s = trunc nuw i64 %i.r to i1, !dbg !23487
  br i1 %i.s, label %bb.g, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4, !dbg !23487

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !23488
  %i.u = load i64, ptr %i.t, align 8, !dbg !23488, !noalias !23477, !noundef !29
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !23488
  %i.w = load i64, ptr %i.v, align 8, !dbg !23488, !noalias !23477, !noundef !29
    #dbg_value(i64 %i.u, !22911, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23489)
    #dbg_value(i64 %i.u, !22960, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23490)
    #dbg_value(i64 %i.w, !22911, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23489)
    #dbg_value(i64 %i.w, !22960, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23490)
    #dbg_value(i32 0, !12158, !DIExpression(), !23492)
    #dbg_value(i64 %i.u, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23492)
    #dbg_value(i64 %i.w, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23492)
    #dbg_value(i64 %i.u, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23494)
    #dbg_value(i64 %i.w, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23494)
  %.not.i = icmp ugt i64 %i.u, %i.w, !dbg !23495
  br i1 %.not.i, label %bb.f, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit, !dbg !23495, !prof !9671

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !23496, !noalias !23497
  unreachable, !dbg !23496

_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit: ; preds = %bb.c, %bb.e
  %.sroa.0.0 = phi i64 [ 1, %bb.e ], [ 0, %bb.c ], !dbg !23500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23501, !noalias !23477
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memmem6MemmemENtB5_8Strategy6searchB9_.exit, !dbg !23502

bb.g:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !23503
  %i.y = load i64, ptr %i.x, align 8, !dbg !23503, !noalias !23477, !noundef !29
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !23503
  %i.aa = load i64, ptr %i.z, align 8, !dbg !23503, !noalias !23477, !noundef !29
    #dbg_value(i64 %i.y, !22925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23504)
    #dbg_value(i64 %i.y, !22980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23505)
    #dbg_value(i64 %i.aa, !22925, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23504)
    #dbg_value(i64 %i.aa, !22980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23505)
    #dbg_value(i32 0, !12158, !DIExpression(), !23507)
    #dbg_value(i64 %i.y, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23507)
    #dbg_value(i64 %i.aa, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23507)
    #dbg_value(i64 %i.y, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23509)
    #dbg_value(i64 %i.aa, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23509)
  %.not.i3 = icmp ugt i64 %i.y, %i.aa, !dbg !23510
  br i1 %.not.i3, label %bb.h, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4, !dbg !23510, !prof !9671

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !23511, !noalias !23512
  unreachable, !dbg !23511

_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4: ; preds = %bb.d, %bb.g
  %.sroa.0.1 = phi i64 [ 1, %bb.g ], [ 0, %bb.d ], !dbg !23515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23516, !noalias !23477
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memmem6MemmemENtB5_8Strategy6searchB9_.exit, !dbg !23517

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter6memmem6MemmemENtB5_8Strategy6searchB9_.exit: ; preds = %bb.a, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4
  %.sroa.0.2 = phi i64 [ %.sroa.0.0, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit ], [ %.sroa.0.1, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4 ], [ 0, %bb.a ], !dbg !23440
    #dbg_value(ptr undef, !23430, !DIExpression(), !23433)
  %i.ab = icmp ne i64 %.sroa.0.2, 0, !dbg !23518
  ret i1 %i.ab, !dbg !23520
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy10group_infoB9_(ptr noalias nofree noundef readonly align 8 captures(ret: address, read_provenance) dereferenceable(264) %0) unnamed_addr #3 !dbg !23521 {
bb.a:
    #dbg_value(ptr %0, !23526, !DIExpression(), !23527)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !23528
  ret ptr %i.a, !dbg !23529
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy11reset_cacheB9_(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree readnone align 8 captures(none) %1) unnamed_addr #4 !dbg !23530 {
bb.a:
    #dbg_value(ptr poison, !23534, !DIExpression(), !23536)
    #dbg_value(ptr poison, !23535, !DIExpression(), !23536)
  ret void, !dbg !23537
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy11search_halfB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree readnone align 8 captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #5 !dbg !23538 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !23542, !DIExpression(), !23545)
    #dbg_value(ptr poison, !23543, !DIExpression(), !23545)
    #dbg_value(ptr %3, !23544, !DIExpression(), !23545)
    #dbg_declare(ptr poison, !23546, !DIExpression(), !23558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23560), !dbg !23563
    #dbg_value(ptr %1, !23564, !DIExpression(), !23571)
    #dbg_value(ptr poison, !23569, !DIExpression(), !23571)
    #dbg_value(ptr %3, !23570, !DIExpression(), !23571)
    #dbg_value(ptr %3, !23573, !DIExpression(), !23576)
    #dbg_value(ptr %3, !23578, !DIExpression(), !23581)
    #dbg_value(ptr %3, !23578, !DIExpression(), !23583)
    #dbg_value(ptr %3, !23585, !DIExpression(), !23588)
    #dbg_value(ptr %3, !23590, !DIExpression(), !23593)
    #dbg_value(ptr %3, !23578, !DIExpression(), !23595)
    #dbg_value(ptr %3, !23590, !DIExpression(), !23597)
    #dbg_value(ptr %3, !23578, !DIExpression(), !23599)
    #dbg_declare(ptr %i.a, !23601, !DIExpression(), !23613)
    #dbg_declare(ptr poison, !23610, !DIExpression(), !23615)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !23616
  %i.c = load i64, ptr %i.b, align 8, !dbg !23616, !alias.scope !23560, !noalias !23617, !noundef !29 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !23620
  %i.e = load i64, ptr %i.d, align 8, !dbg !23620, !alias.scope !23560, !noalias !23617, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !23621
  br i1 %i.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread, label %bb.b, !dbg !23622

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 8, !dbg !23623, !range !8482, !alias.scope !23560, !noalias !23617, !noundef !29
    #dbg_value(ptr poison, !23624, !DIExpression(), !23627)
  %i.h = icmp eq i32 %i.g, 0, !dbg !23629
  br i1 %i.h, label %bb.e, label %bb.c, !dbg !23629

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !23630
  %i.j = load ptr, ptr %i.i, align 8, !dbg !23630, !alias.scope !23560, !noalias !23617, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !23630
  %i.l = load i64, ptr %i.k, align 8, !dbg !23630, !alias.scope !23560, !noalias !23617, !noundef !29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23631), !dbg !23634
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23635), !dbg !23634
    #dbg_value(ptr %1, !23637, !DIExpression(), !23653)
    #dbg_value(ptr %i.j, !23645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23653)
    #dbg_value(ptr %i.j, !23655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23659)
    #dbg_value(ptr %i.j, !23661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23665)
    #dbg_value(i64 %i.l, !23645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23653)
    #dbg_value(i64 %i.l, !23655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23659)
    #dbg_value(i64 %i.l, !23661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23665)
    #dbg_value(i64 %i.c, !23646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23653)
    #dbg_value(i64 poison, !23646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23653)
    #dbg_value(i64 %i.c, !23658, !DIExpression(), !23659)
    #dbg_value(i64 %i.c, !23664, !DIExpression(), !23665)
  %i.m = icmp ult i64 %i.c, %i.l, !dbg !23667
  br i1 %i.m, label %bb.d, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread, !dbg !23667

bb.d:                                             ; preds = %bb.c
    #dbg_value(i8 poison, !23647, !DIExpression(), !23668)
    #dbg_value(i8 poison, !23669, !DIExpression(), !23677)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c, !dbg !23679
  %i.o = load i8, ptr %i.n, align 1, !dbg !23680, !alias.scope !23635, !noalias !23681, !noundef !29
    #dbg_value(i8 %i.o, !23647, !DIExpression(), !23668)
    #dbg_value(i8 %i.o, !23669, !DIExpression(), !23677)
  %i.p = zext i8 %i.o to i64, !dbg !23683
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p, !dbg !23684
  %i.r = load i8, ptr %i.q, align 1, !dbg !23684, !range !10752, !alias.scope !23631, !noalias !23685, !noundef !29
  %i.s = trunc nuw i8 %i.r to i1, !dbg !23684
  br i1 %i.s, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread28, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread, !dbg !23684

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23686, !noalias !23687
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !23688
  %i.u = load ptr, ptr %i.t, align 8, !dbg !23688, !alias.scope !23560, !noalias !23617, !nonnull !29, !noundef !29
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !23688
  %i.w = load i64, ptr %i.v, align 8, !dbg !23688, !alias.scope !23560, !noalias !23617, !noundef !29
  call void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter7bytesetNtB4_7ByteSetNtB6_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.w, i64 noundef %i.c, i64 noundef %i.e), !dbg !23689, !noalias !23690
  %i.x = load i64, ptr %i.a, align 8, !dbg !23691, !range !4033, !noalias !23687, !noundef !29
  %i.y = trunc nuw i64 %i.x to i1, !dbg !23692
  br i1 %i.y, label %bb.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit, !dbg !23692

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread28: ; preds = %bb.d
  %i.z = add nuw nsw i64 %i.c, 1, !dbg !23693
    #dbg_value(i32 0, !12158, !DIExpression(), !23694)
    #dbg_value(i64 %i.c, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23694)
    #dbg_value(i64 %i.z, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23694)
    #dbg_value(i64 %i.c, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23715)
    #dbg_value(i64 %i.z, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23715)
    #dbg_value(i64 %i.c, !23555, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23716)
    #dbg_value(i32 undef, !23555, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !23716)
    #dbg_value(i64 1, !23555, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23716)
    #dbg_value(i64 %i.z, !23555, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23716)
    #dbg_value(i32 0, !23555, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !23716)
  br label %bb.h, !dbg !23717

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !23718
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !23718, !noalias !23687, !noundef !29
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !23718
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !23718, !noalias !23687, !noundef !29 ; 2 uses
    #dbg_value(i64 %i.ab, !23611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23719)
    #dbg_value(i64 %i.ab, !23720, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23725)
    #dbg_value(i64 %i.ad, !23611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23719)
    #dbg_value(i64 %i.ad, !23720, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23725)
    #dbg_value(i32 0, !12158, !DIExpression(), !23728)
    #dbg_value(i64 %i.ab, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23728)
    #dbg_value(i64 %i.ad, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23728)
    #dbg_value(i64 %i.ab, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23730)
    #dbg_value(i64 %i.ad, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23730)
  %.not.i6 = icmp ugt i64 %i.ab, %i.ad, !dbg !23731
  br i1 %.not.i6, label %bb.g, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread32, !dbg !23731, !prof !9671

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread32: ; preds = %bb.f
    #dbg_value(i64 1, !23555, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23716)
    #dbg_value(i64 %i.ad, !23555, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23716)
    #dbg_value(i32 0, !23555, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !23716)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23732, !noalias !23687
    #dbg_value(i64 1, !23555, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23716)
    #dbg_value(i64 %i.ad, !23555, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23716)
    #dbg_value(i32 0, !23555, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !23716)
  br label %bb.h, !dbg !23717

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !23733, !noalias !23734
  unreachable, !dbg !23733

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit: ; preds = %bb.e
    #dbg_value(i64 0, !23555, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23716)
    #dbg_value(i64 undef, !23555, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23716)
    #dbg_value(i32 0, !23555, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !23716)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23732, !noalias !23687
    #dbg_value(i64 0, !23555, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23716)
    #dbg_value(i64 undef, !23555, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23716)
    #dbg_value(i32 0, !23555, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !23716)
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread, !dbg !23717

bb.h:                                             ; preds = %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread32, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread28
  %.sroa.10.231 = phi i64 [ %i.z, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread28 ], [ %i.ad, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread32 ]
    #dbg_value(i64 poison, !23556, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23737)
    #dbg_value(i64 %.sroa.10.231, !23556, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23737)
    #dbg_value(i32 0, !23556, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !23737)
    #dbg_value(i32 poison, !23556, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !23737)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23738
  store i64 %.sroa.10.231, ptr %i.ae, align 8, !dbg !23738
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23738
  store i32 0, ptr %i.af, align 8, !dbg !23738
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread, !dbg !23739

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread: ; preds = %bb.c, %bb.d, %bb.a, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit, %bb.h
  %storemerge = phi i64 [ 1, %bb.h ], [ 0, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ], !dbg !23716
  store i64 %storemerge, ptr %0, align 8, !dbg !23716
  ret void, !dbg !23740
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy12create_cacheB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1400 x i8]) align 8 captures(none) dereferenceable(1400) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(264) %1) unnamed_addr #1 !dbg !23741 {
bb.a:
    #dbg_value(ptr %1, !23745, !DIExpression(), !23746)
    #dbg_value(i64 1, !23747, !DIExpression(), !23752)
    #dbg_value(i8 0, !23751, !DIExpression(), !23752)
    #dbg_value(i64 1, !23764, !DIExpression(), !23769)
    #dbg_value(i8 0, !23768, !DIExpression(), !23769)
    #dbg_value(ptr %1, !23762, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value), !23759)
    #dbg_value(ptr %1, !23756, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value), !23771)
    #dbg_value(ptr %1, !23772, !DIExpression(DW_OP_plus_uconst, 256, DW_OP_stack_value), !23775)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256, !dbg !23777
  %i.b = load ptr, ptr %i.a, align 8, !dbg !23777, !nonnull !29, !noundef !29 ; 2 uses
    #dbg_value(ptr %i.b, !23750, !DIExpression(), !23780)
    #dbg_value(ptr %i.b, !23767, !DIExpression(), !23769)
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8, !dbg !23781
    #dbg_value(i64 %i.c, !23757, !DIExpression(), !23782)
  %i.d = icmp slt i64 %i.c, 0, !dbg !23783
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !23783

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1056, !dbg !23784
  tail call void @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB2_8Captures3all(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noundef nonnull %i.b), !dbg !23785
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1096, !dbg !23784
  store i64 -1, ptr %i.f, align 8, !dbg !23784
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1312, !dbg !23784
  store i64 -1, ptr %i.g, align 8, !dbg !23784
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1368, !dbg !23784
  store i64 -1, ptr %i.h, align 8, !dbg !23784
  store i64 2, ptr %0, align 8, !dbg !23784
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 704, !dbg !23784
  store i64 2, ptr %i.i, align 8, !dbg !23784
  ret void, !dbg !23786

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap(), !dbg !23787
  unreachable, !dbg !23787
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef i64 @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy12memory_usageB9_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 !dbg !23788 {
bb.a:
    #dbg_value(ptr poison, !23792, !DIExpression(), !23793)
  ret i64 0, !dbg !23794
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal { i32, i32 } @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy12search_slotsB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) %3, i64 noundef range(i64 0, 1152921504606846976) %4) unnamed_addr #5 !dbg !23795 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !23799, !DIExpression(), !23813)
    #dbg_value(ptr poison, !23800, !DIExpression(), !23813)
    #dbg_value(ptr %2, !23801, !DIExpression(), !23813)
    #dbg_value(ptr %3, !23802, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23813)
    #dbg_value(ptr %3, !23814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23818)
    #dbg_value(ptr %3, !23820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23824)
    #dbg_value(ptr %3, !23814, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23826)
    #dbg_value(ptr %3, !23820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23828)
    #dbg_value(i64 %4, !23802, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23813)
    #dbg_value(i64 %4, !23814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23818)
    #dbg_value(i64 %4, !23820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23824)
    #dbg_value(i64 %4, !23814, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23826)
    #dbg_value(i64 %4, !23820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23828)
    #dbg_value(i64 0, !23817, !DIExpression(), !23818)
    #dbg_value(i64 0, !23823, !DIExpression(), !23824)
    #dbg_value(i64 1, !23831, !DIExpression(), !23835)
    #dbg_value(i64 1, !23817, !DIExpression(), !23826)
    #dbg_value(i64 1, !23823, !DIExpression(), !23828)
    #dbg_value(i64 1, !23831, !DIExpression(), !23841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23845), !dbg !23848
    #dbg_value(ptr %0, !23564, !DIExpression(), !23849)
    #dbg_value(ptr poison, !23569, !DIExpression(), !23849)
    #dbg_value(ptr %2, !23570, !DIExpression(), !23849)
    #dbg_value(ptr %2, !23573, !DIExpression(), !23851)
    #dbg_value(ptr %2, !23578, !DIExpression(), !23853)
    #dbg_value(ptr %2, !23578, !DIExpression(), !23855)
    #dbg_value(ptr %2, !23585, !DIExpression(), !23857)
    #dbg_value(ptr %2, !23590, !DIExpression(), !23859)
    #dbg_value(ptr %2, !23578, !DIExpression(), !23861)
    #dbg_value(ptr %2, !23590, !DIExpression(), !23863)
    #dbg_value(ptr %2, !23578, !DIExpression(), !23865)
    #dbg_declare(ptr %i.a, !23601, !DIExpression(), !23867)
    #dbg_declare(ptr poison, !23610, !DIExpression(), !23869)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !23870
  %i.c = load i64, ptr %i.b, align 8, !dbg !23870, !alias.scope !23845, !noalias !23871, !noundef !29 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !23874
  %i.e = load i64, ptr %i.d, align 8, !dbg !23874, !alias.scope !23845, !noalias !23871, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !23875
  br i1 %i.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread, label %bb.b, !dbg !23876

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 8, !dbg !23877, !range !8482, !alias.scope !23845, !noalias !23871, !noundef !29
    #dbg_value(ptr poison, !23624, !DIExpression(), !23878)
  %i.h = icmp eq i32 %i.g, 0, !dbg !23880
  br i1 %i.h, label %bb.e, label %bb.c, !dbg !23880

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23881
  %i.j = load ptr, ptr %i.i, align 8, !dbg !23881, !alias.scope !23845, !noalias !23871, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !23881
  %i.l = load i64, ptr %i.k, align 8, !dbg !23881, !alias.scope !23845, !noalias !23871, !noundef !29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23882), !dbg !23885
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23886), !dbg !23885
    #dbg_value(ptr %0, !23637, !DIExpression(), !23888)
    #dbg_value(ptr %i.j, !23645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23888)
    #dbg_value(ptr %i.j, !23655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23890)
    #dbg_value(ptr %i.j, !23661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23892)
    #dbg_value(i64 %i.l, !23645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23888)
    #dbg_value(i64 %i.l, !23655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23890)
    #dbg_value(i64 %i.l, !23661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23892)
    #dbg_value(i64 %i.c, !23646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23888)
    #dbg_value(i64 poison, !23646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23888)
    #dbg_value(i64 %i.c, !23658, !DIExpression(), !23890)
    #dbg_value(i64 %i.c, !23664, !DIExpression(), !23892)
  %i.m = icmp ult i64 %i.c, %i.l, !dbg !23894
  br i1 %i.m, label %bb.d, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread, !dbg !23894

bb.d:                                             ; preds = %bb.c
    #dbg_value(i8 poison, !23647, !DIExpression(), !23895)
    #dbg_value(i8 poison, !23669, !DIExpression(), !23896)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c, !dbg !23898
  %i.o = load i8, ptr %i.n, align 1, !dbg !23899, !alias.scope !23886, !noalias !23900, !noundef !29
    #dbg_value(i8 %i.o, !23647, !DIExpression(), !23895)
    #dbg_value(i8 %i.o, !23669, !DIExpression(), !23896)
  %i.p = zext i8 %i.o to i64, !dbg !23902
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p, !dbg !23903
  %i.r = load i8, ptr %i.q, align 1, !dbg !23903, !range !10752, !alias.scope !23882, !noalias !23904, !noundef !29
  %i.s = trunc nuw i8 %i.r to i1, !dbg !23903
  br i1 %i.s, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread58, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread, !dbg !23903

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23905, !noalias !23906
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !23907
  %i.u = load ptr, ptr %i.t, align 8, !dbg !23907, !alias.scope !23845, !noalias !23871, !nonnull !29, !noundef !29
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !23907
  %i.w = load i64, ptr %i.v, align 8, !dbg !23907, !alias.scope !23845, !noalias !23871, !noundef !29
  call void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter7bytesetNtB4_7ByteSetNtB6_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.w, i64 noundef %i.c, i64 noundef %i.e), !dbg !23908, !noalias !23909
  %i.x = load i64, ptr %i.a, align 8, !dbg !23910, !range !4033, !noalias !23906, !noundef !29
  %i.y = trunc nuw i64 %i.x to i1, !dbg !23911
  br i1 %i.y, label %bb.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit, !dbg !23911

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread58: ; preds = %bb.d
  %i.z = add nuw nsw i64 %i.c, 1, !dbg !23912
    #dbg_value(i32 0, !12158, !DIExpression(), !23913)
    #dbg_value(i64 %i.c, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23913)
    #dbg_value(i64 %i.z, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23913)
    #dbg_value(i64 %i.c, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23917)
    #dbg_value(i64 %i.z, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23917)
    #dbg_value(i32 undef, !23918, !DIExpression(DW_OP_LLVM_fragment, 224, 32), !23923)
    #dbg_value(i64 1, !23918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23923)
    #dbg_value(i64 %i.c, !23918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23923)
    #dbg_value(i64 %i.z, !23918, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23923)
    #dbg_value(i32 0, !23918, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !23923)
  br label %bb.h, !dbg !23925

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !23926
  %i.ab = load i64, ptr %i.aa, align 8, !dbg !23926, !noalias !23906, !noundef !29 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !23926
  %i.ad = load i64, ptr %i.ac, align 8, !dbg !23926, !noalias !23906, !noundef !29 ; 2 uses
    #dbg_value(i64 %i.ab, !23611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23927)
    #dbg_value(i64 %i.ab, !23720, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23928)
    #dbg_value(i64 %i.ad, !23611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23927)
    #dbg_value(i64 %i.ad, !23720, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23928)
    #dbg_value(i32 0, !12158, !DIExpression(), !23930)
    #dbg_value(i64 %i.ab, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23930)
    #dbg_value(i64 %i.ad, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23930)
    #dbg_value(i64 %i.ab, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23932)
    #dbg_value(i64 %i.ad, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23932)
  %.not.i35 = icmp ugt i64 %i.ab, %i.ad, !dbg !23933
  br i1 %.not.i35, label %bb.g, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread64, !dbg !23933, !prof !9671

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread64: ; preds = %bb.f
    #dbg_value(i64 1, !23918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23923)
    #dbg_value(i64 %i.ab, !23918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23923)
    #dbg_value(i64 %i.ad, !23918, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23923)
    #dbg_value(i32 0, !23918, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !23923)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23934, !noalias !23906
    #dbg_value(i64 1, !23918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23923)
    #dbg_value(i64 %i.ab, !23918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23923)
    #dbg_value(i64 %i.ad, !23918, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23923)
    #dbg_value(i32 0, !23918, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !23923)
  br label %bb.h, !dbg !23925

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !23935, !noalias !23936
  unreachable, !dbg !23935

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit: ; preds = %bb.e
    #dbg_value(i64 0, !23918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23923)
    #dbg_value(i64 undef, !23918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23923)
    #dbg_value(i64 undef, !23918, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23923)
    #dbg_value(i32 0, !23918, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !23923)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23934, !noalias !23906
    #dbg_value(i64 0, !23918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23923)
    #dbg_value(i64 undef, !23918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23923)
    #dbg_value(i64 undef, !23918, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !23923)
    #dbg_value(i32 0, !23918, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !23923)
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread, !dbg !23925

bb.h:                                             ; preds = %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread64, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread58
  %.sroa.9.263 = phi i64 [ %i.c, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread58 ], [ %i.ab, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread64 ]
  %.sroa.12.262 = phi i64 [ %i.z, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread58 ], [ %i.ad, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread64 ]
    #dbg_value(i64 %.sroa.9.263, !23803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23939)
    #dbg_value(i64 %.sroa.12.262, !23803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23939)
    #dbg_value(i32 0, !23803, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !23939)
    #dbg_value(i32 poison, !23803, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !23939)
  %.not = icmp eq i64 %4, 0, !dbg !23940
  br i1 %.not, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread, label %bb.i, !dbg !23940

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread: ; preds = %bb.h, %bb.c, %bb.d, %bb.a, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit, %bb.j, %bb.i
  %.sroa.0.0 = phi i32 [ 1, %bb.j ], [ 1, %bb.i ], [ 0, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ], [ 1, %bb.h ], !dbg !23813
  %i.ae = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0, !dbg !23941
  %i.af = insertvalue { i32, i32 } %i.ae, i32 0, 1, !dbg !23941
  ret { i32, i32 } %i.af, !dbg !23941

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %3, !23809, !DIExpression(), !23942)
    #dbg_value(i64 %.sroa.9.263, !23839, !DIExpression(), !23943)
    #dbg_value(i64 %.sroa.9.263, !23834, !DIExpression(), !23835)
  %i.ag = add i64 %.sroa.9.263, 1, !dbg !23944
  store i64 %i.ag, ptr %3, align 8, !dbg !23945
  %.not68 = icmp eq i64 %4, 1, !dbg !23946
  br i1 %.not68, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread, label %bb.j, !dbg !23946

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !23947
    #dbg_value(ptr %i.ah, !23811, !DIExpression(), !23948)
    #dbg_value(i64 %.sroa.12.262, !23839, !DIExpression(), !23949)
    #dbg_value(i64 %.sroa.12.262, !23834, !DIExpression(), !23841)
  %i.ai = add i64 %.sroa.12.262, 1, !dbg !23950
  store i64 %i.ai, ptr %i.ah, align 8, !dbg !23951
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread, !dbg !23952
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy14is_acceleratedB9_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 !dbg !23953 {
bb.a:
    #dbg_value(ptr poison, !23957, !DIExpression(), !23958)
  ret i1 false, !dbg !23959
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy25which_overlapping_matchesB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #5 !dbg !23960 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %0, !23964, !DIExpression(), !23968)
    #dbg_value(ptr poison, !23965, !DIExpression(), !23968)
    #dbg_value(ptr %2, !23966, !DIExpression(), !23968)
    #dbg_value(ptr %3, !23967, !DIExpression(), !23968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23969), !dbg !23972
    #dbg_value(ptr %0, !23564, !DIExpression(), !23973)
    #dbg_value(ptr poison, !23569, !DIExpression(), !23973)
    #dbg_value(ptr %2, !23570, !DIExpression(), !23973)
    #dbg_value(ptr %2, !23573, !DIExpression(), !23975)
    #dbg_value(ptr %2, !23578, !DIExpression(), !23977)
    #dbg_value(ptr %2, !23578, !DIExpression(), !23979)
    #dbg_value(ptr %2, !23585, !DIExpression(), !23981)
    #dbg_value(ptr %2, !23590, !DIExpression(), !23983)
    #dbg_value(ptr %2, !23578, !DIExpression(), !23985)
    #dbg_value(ptr %2, !23590, !DIExpression(), !23987)
    #dbg_value(ptr %2, !23578, !DIExpression(), !23989)
    #dbg_declare(ptr %i.a, !23601, !DIExpression(), !23991)
    #dbg_declare(ptr poison, !23610, !DIExpression(), !23993)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !23994
  %i.c = load i64, ptr %i.b, align 8, !dbg !23994, !alias.scope !23969, !noalias !23995, !noundef !29 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !23998
  %i.e = load i64, ptr %i.d, align 8, !dbg !23998, !alias.scope !23969, !noalias !23995, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !23999
  br i1 %i.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread, label %bb.b, !dbg !24000

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 8, !dbg !24001, !range !8482, !alias.scope !23969, !noalias !23995, !noundef !29
    #dbg_value(ptr poison, !23624, !DIExpression(), !24002)
  %i.h = icmp eq i32 %i.g, 0, !dbg !24004
  br i1 %i.h, label %bb.e, label %bb.c, !dbg !24004

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !24005
  %i.j = load ptr, ptr %i.i, align 8, !dbg !24005, !alias.scope !23969, !noalias !23995, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !24005
  %i.l = load i64, ptr %i.k, align 8, !dbg !24005, !alias.scope !23969, !noalias !23995, !noundef !29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24006), !dbg !24009
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24010), !dbg !24009
    #dbg_value(ptr %0, !23637, !DIExpression(), !24012)
    #dbg_value(ptr %i.j, !23645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24012)
    #dbg_value(ptr %i.j, !23655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24014)
    #dbg_value(ptr %i.j, !23661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24016)
    #dbg_value(i64 %i.l, !23645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24012)
    #dbg_value(i64 %i.l, !23655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24014)
    #dbg_value(i64 %i.l, !23661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24016)
    #dbg_value(i64 %i.c, !23646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24012)
    #dbg_value(i64 poison, !23646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24012)
    #dbg_value(i64 %i.c, !23658, !DIExpression(), !24014)
    #dbg_value(i64 %i.c, !23664, !DIExpression(), !24016)
  %i.m = icmp ult i64 %i.c, %i.l, !dbg !24018
  br i1 %i.m, label %bb.d, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread, !dbg !24018

bb.d:                                             ; preds = %bb.c
    #dbg_value(i8 poison, !23647, !DIExpression(), !24019)
    #dbg_value(i8 poison, !23669, !DIExpression(), !24020)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c, !dbg !24022
  %i.o = load i8, ptr %i.n, align 1, !dbg !24023, !alias.scope !24010, !noalias !24024, !noundef !29
    #dbg_value(i8 %i.o, !23647, !DIExpression(), !24019)
    #dbg_value(i8 %i.o, !23669, !DIExpression(), !24020)
  %i.p = zext i8 %i.o to i64, !dbg !24026
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p, !dbg !24027
  %i.r = load i8, ptr %i.q, align 1, !dbg !24027, !range !10752, !alias.scope !24006, !noalias !24028, !noundef !29
  %i.s = trunc nuw i8 %i.r to i1, !dbg !24027
  br i1 %i.s, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread17, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread, !dbg !24027

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24029, !noalias !24030
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !24031
  %i.u = load ptr, ptr %i.t, align 8, !dbg !24031, !alias.scope !23969, !noalias !23995, !nonnull !29, !noundef !29
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !24031
  %i.w = load i64, ptr %i.v, align 8, !dbg !24031, !alias.scope !23969, !noalias !23995, !noundef !29
  call void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter7bytesetNtB4_7ByteSetNtB6_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.w, i64 noundef %i.c, i64 noundef %i.e), !dbg !24032, !noalias !24033
  %i.x = load i64, ptr %i.a, align 8, !dbg !24034, !range !4033, !noalias !24030, !noundef !29
  %i.y = trunc nuw i64 %i.x to i1, !dbg !24035
  br i1 %i.y, label %bb.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread20, !dbg !24035

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread20: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24036, !noalias !24030
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread, !dbg !24037

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !24038
  %i.aa = load i64, ptr %i.z, align 8, !dbg !24038, !noalias !24030, !noundef !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !24038
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !24038, !noalias !24030, !noundef !29
    #dbg_value(i64 %i.aa, !23611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24039)
    #dbg_value(i64 %i.aa, !23720, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24040)
    #dbg_value(i64 %i.ac, !23611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24039)
    #dbg_value(i64 %i.ac, !23720, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24040)
    #dbg_value(i32 0, !12158, !DIExpression(), !24042)
    #dbg_value(i64 %i.aa, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24042)
    #dbg_value(i64 %i.ac, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24042)
    #dbg_value(i64 %i.aa, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24044)
    #dbg_value(i64 %i.ac, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24044)
  %.not.i4 = icmp ugt i64 %i.aa, %i.ac, !dbg !24045
  br i1 %.not.i4, label %bb.g, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit, !dbg !24045, !prof !9671

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !24046, !noalias !24047
  unreachable, !dbg !24046

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24036, !noalias !24030
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread17, !dbg !24037

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread17: ; preds = %bb.d, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit
  %i.ad = tail call noundef zeroext i1 @_RNvMsc_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_10PatternSet6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 0), !dbg !24050 ; 0 uses
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread, !dbg !24051

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread: ; preds = %bb.c, %bb.d, %bb.a, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread20, %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit.thread17
  ret void, !dbg !24052
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy4nameB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !24053 {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr poison, !24057, !DIExpression(), !24064)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !24065
  store ptr @130, ptr %i.b, align 8, !dbg !24066
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !24066
  store i64 7, ptr %i.c, align 8, !dbg !24066
    #dbg_value(ptr %i.b, !24058, !DIExpression(), !24067)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24068
  store ptr %i.b, ptr %i.a, align 8, !dbg !24068
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !24068
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCs9GYDdpCSJ4S_14regex_automata, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !24068
    #dbg_value(ptr @73, !24069, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24072)
    #dbg_value(ptr %i.a, !24069, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24072)
    #dbg_value(ptr null, !19745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24075)
    #dbg_value(i64 undef, !19745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24075)
    #dbg_value(ptr poison, !19775, !DIExpression(), !24075)
    #dbg_declare(ptr poison, !19776, !DIExpression(), !24077)
    #dbg_value(ptr poison, !19782, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !24078)
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @73, ptr noundef nonnull %i.a), !dbg !24080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !24081
  ret void, !dbg !24082
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %1, ptr noalias nofree readnone align 8 captures(none) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #5 !dbg !23565 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %1, !23564, !DIExpression(), !24083)
    #dbg_value(ptr poison, !23569, !DIExpression(), !24083)
    #dbg_value(ptr %3, !23570, !DIExpression(), !24083)
    #dbg_value(ptr %3, !23573, !DIExpression(), !24084)
    #dbg_value(ptr %3, !23578, !DIExpression(), !24086)
    #dbg_value(ptr %3, !23578, !DIExpression(), !24088)
    #dbg_value(ptr %3, !23585, !DIExpression(), !24090)
    #dbg_value(ptr %3, !23590, !DIExpression(), !24092)
    #dbg_value(ptr %3, !23578, !DIExpression(), !24094)
    #dbg_value(ptr %3, !23590, !DIExpression(), !24096)
    #dbg_value(ptr %3, !23578, !DIExpression(), !24098)
    #dbg_declare(ptr %i.a, !23601, !DIExpression(), !24100)
    #dbg_declare(ptr poison, !23712, !DIExpression(), !24102)
    #dbg_declare(ptr poison, !23610, !DIExpression(), !24104)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !24105
  %i.c = load i64, ptr %i.b, align 8, !dbg !24105, !noundef !29 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !24106
  %i.e = load i64, ptr %i.d, align 8, !dbg !24106, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !24107
  br i1 %i.f, label %bb.c, label %bb.b, !dbg !24108

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %3, align 8, !dbg !24109, !range !8482, !noundef !29
    #dbg_value(ptr poison, !23624, !DIExpression(), !24110)
  %i.h = icmp eq i32 %i.g, 0, !dbg !24112
  br i1 %i.h, label %bb.f, label %bb.d, !dbg !24112

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !dbg !24113
  br label %bb.h, !dbg !24114

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !24116
  %i.j = load ptr, ptr %i.i, align 8, !dbg !24116, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !24116
  %i.l = load i64, ptr %i.k, align 8, !dbg !24116, !noundef !29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24117), !dbg !24120
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24121), !dbg !24120
    #dbg_value(ptr %1, !23637, !DIExpression(), !24123)
    #dbg_value(ptr %i.j, !23645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24123)
    #dbg_value(ptr %i.j, !23655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24125)
    #dbg_value(ptr %i.j, !23661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24127)
    #dbg_value(i64 %i.l, !23645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24123)
    #dbg_value(i64 %i.l, !23655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24125)
    #dbg_value(i64 %i.l, !23661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24127)
    #dbg_value(i64 %i.c, !23646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24123)
    #dbg_value(i64 poison, !23646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24123)
    #dbg_value(i64 %i.c, !23658, !DIExpression(), !24125)
    #dbg_value(i64 %i.c, !23664, !DIExpression(), !24127)
  %i.m = icmp ult i64 %i.c, %i.l, !dbg !24129
  br i1 %i.m, label %bb.e, label %bb.g, !dbg !24129

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 poison, !23647, !DIExpression(), !24130)
    #dbg_value(i8 poison, !23669, !DIExpression(), !24131)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c, !dbg !24133
  %i.o = load i8, ptr %i.n, align 1, !dbg !24134, !alias.scope !24121, !noalias !24135, !noundef !29
    #dbg_value(i8 %i.o, !23647, !DIExpression(), !24130)
    #dbg_value(i8 %i.o, !23669, !DIExpression(), !24131)
  %i.p = zext i8 %i.o to i64, !dbg !24137
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p, !dbg !24138
  %i.r = load i8, ptr %i.q, align 1, !dbg !24138, !range !10752, !alias.scope !24117, !noalias !24139, !noundef !29
  %i.s = trunc nuw i8 %i.r to i1, !dbg !24138
  br i1 %i.s, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit, label %bb.g, !dbg !24138

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24140
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !24141
  %i.u = load ptr, ptr %i.t, align 8, !dbg !24141, !nonnull !29, !noundef !29
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !24141
  %i.w = load i64, ptr %i.v, align 8, !dbg !24141, !noundef !29
  call void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter7bytesetNtB4_7ByteSetNtB6_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(256) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.w, i64 noundef %i.c, i64 noundef %i.e), !dbg !24142
  %i.x = load i64, ptr %i.a, align 8, !dbg !24143, !range !4033, !noundef !29
  %i.y = trunc nuw i64 %i.x to i1, !dbg !24144
  br i1 %i.y, label %bb.i, label %bb.k, !dbg !24144

_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit: ; preds = %bb.e
  %i.z = add nuw nsw i64 %i.c, 1, !dbg !24145
    #dbg_value(i64 %i.z, !23711, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24146)
    #dbg_value(i64 %i.c, !23711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24146)
    #dbg_value(i64 1, !23711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24146)
    #dbg_value(i64 %i.c, !23713, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24147)
    #dbg_value(i64 %i.z, !23713, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24147)
    #dbg_value(i32 0, !12158, !DIExpression(), !24148)
    #dbg_value(i64 %i.c, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24148)
    #dbg_value(i64 %i.z, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24148)
    #dbg_value(i64 %i.c, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24151)
    #dbg_value(i64 %i.z, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24151)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24152
  store i64 %i.c, ptr %i.aa, align 8, !dbg !24152
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !24152
  store i64 %i.z, ptr %.sroa.49.0..sroa_idx, align 8, !dbg !24152
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !24152
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !24152
  store i64 1, ptr %0, align 8, !dbg !24152
  br label %bb.h, !dbg !24153

bb.g:                                             ; preds = %bb.e, %bb.d
    #dbg_value(i64 poison, !23711, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !24146)
    #dbg_value(i64 %i.c, !23711, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24146)
    #dbg_value(i64 0, !23711, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24146)
  store i64 0, ptr %0, align 8, !dbg !24154
  br label %bb.h, !dbg !24155

bb.h:                                             ; preds = %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit, %bb.g, %bb.k, %bb.c
  ret void, !dbg !24156

bb.i:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !24157
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !24157, !noundef !29 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !24157
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !24157, !noundef !29 ; 2 uses
    #dbg_value(i64 %i.ac, !23611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24158)
    #dbg_value(i64 %i.ac, !23720, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24159)
    #dbg_value(i64 %i.ae, !23611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24158)
    #dbg_value(i64 %i.ae, !23720, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24159)
    #dbg_value(i32 0, !12158, !DIExpression(), !24161)
    #dbg_value(i64 %i.ac, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24161)
    #dbg_value(i64 %i.ae, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24161)
    #dbg_value(i64 %i.ac, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24163)
    #dbg_value(i64 %i.ae, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24163)
  %.not.i6 = icmp ugt i64 %i.ac, %i.ae, !dbg !24164
  br i1 %.not.i6, label %bb.j, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit7, !dbg !24164, !prof !9671

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !24165, !noalias !24166
  unreachable, !dbg !24165

_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit7: ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !24169
  store i64 %i.ac, ptr %i.af, align 8, !dbg !24169
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !24169
  store i64 %i.ae, ptr %.sroa.412.0..sroa_idx, align 8, !dbg !24169
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !24169
  store i32 0, ptr %.sroa.513.0..sroa_idx, align 8, !dbg !24169
  br label %bb.k, !dbg !24170

bb.k:                                             ; preds = %bb.f, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit7
  %storemerge = phi i64 [ 1, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit7 ], [ 0, %bb.f ], !dbg !24171
  store i64 %storemerge, ptr %0, align 8, !dbg !24171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24172
  br label %bb.h, !dbg !24156
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy8is_matchB9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree readnone align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2) unnamed_addr #5 !dbg !24173 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !24177, !DIExpression(), !24180)
    #dbg_value(ptr poison, !24178, !DIExpression(), !24180)
    #dbg_value(ptr %2, !24179, !DIExpression(), !24180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24181), !dbg !24184
    #dbg_value(ptr %0, !23564, !DIExpression(), !24185)
    #dbg_value(ptr poison, !23569, !DIExpression(), !24185)
    #dbg_value(ptr %2, !23570, !DIExpression(), !24185)
    #dbg_value(ptr %2, !23573, !DIExpression(), !24187)
    #dbg_value(ptr %2, !23578, !DIExpression(), !24189)
    #dbg_value(ptr %2, !23578, !DIExpression(), !24191)
    #dbg_value(ptr %2, !23585, !DIExpression(), !24193)
    #dbg_value(ptr %2, !23590, !DIExpression(), !24195)
    #dbg_value(ptr %2, !23578, !DIExpression(), !24197)
    #dbg_value(ptr %2, !23590, !DIExpression(), !24199)
    #dbg_value(ptr %2, !23578, !DIExpression(), !24201)
    #dbg_declare(ptr %i.a, !23601, !DIExpression(), !24203)
    #dbg_declare(ptr poison, !23610, !DIExpression(), !24205)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24, !dbg !24206
  %i.c = load i64, ptr %i.b, align 8, !dbg !24206, !alias.scope !24181, !noalias !24207, !noundef !29 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !24210
  %i.e = load i64, ptr %i.d, align 8, !dbg !24210, !alias.scope !24181, !noalias !24207, !noundef !29 ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e, !dbg !24211
  br i1 %i.f, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit, label %bb.b, !dbg !24212

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %2, align 8, !dbg !24213, !range !8482, !alias.scope !24181, !noalias !24207, !noundef !29
    #dbg_value(ptr poison, !23624, !DIExpression(), !24214)
  %i.h = icmp eq i32 %i.g, 0, !dbg !24216
  br i1 %i.h, label %bb.e, label %bb.c, !dbg !24216

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !24217
  %i.j = load ptr, ptr %i.i, align 8, !dbg !24217, !alias.scope !24181, !noalias !24207, !nonnull !29, !noundef !29
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !24217
  %i.l = load i64, ptr %i.k, align 8, !dbg !24217, !alias.scope !24181, !noalias !24207, !noundef !29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24218), !dbg !24221
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24222), !dbg !24221
    #dbg_value(ptr %0, !23637, !DIExpression(), !24224)
    #dbg_value(ptr %i.j, !23645, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24224)
    #dbg_value(ptr %i.j, !23655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24226)
    #dbg_value(ptr %i.j, !23661, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24228)
    #dbg_value(i64 %i.l, !23645, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24224)
    #dbg_value(i64 %i.l, !23655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24226)
    #dbg_value(i64 %i.l, !23661, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24228)
    #dbg_value(i64 %i.c, !23646, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24224)
    #dbg_value(i64 poison, !23646, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24224)
    #dbg_value(i64 %i.c, !23658, !DIExpression(), !24226)
    #dbg_value(i64 %i.c, !23664, !DIExpression(), !24228)
  %i.m = icmp ult i64 %i.c, %i.l, !dbg !24230
  br i1 %i.m, label %bb.d, label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit, !dbg !24230

bb.d:                                             ; preds = %bb.c
    #dbg_value(i8 poison, !23647, !DIExpression(), !24231)
    #dbg_value(i8 poison, !23669, !DIExpression(), !24232)
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.c, !dbg !24234
  %i.o = load i8, ptr %i.n, align 1, !dbg !24235, !alias.scope !24222, !noalias !24236, !noundef !29
    #dbg_value(i8 %i.o, !23647, !DIExpression(), !24231)
    #dbg_value(i8 %i.o, !23669, !DIExpression(), !24232)
  %i.p = zext i8 %i.o to i64, !dbg !24238
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.p, !dbg !24239
  %i.r = load i8, ptr %i.q, align 1, !dbg !24239, !range !10752, !alias.scope !24218, !noalias !24240, !noundef !29
  %i.s = trunc nuw i8 %i.r to i1, !dbg !24239
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit, !dbg !24239

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24241, !noalias !24242
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !24243
  %i.u = load ptr, ptr %i.t, align 8, !dbg !24243, !alias.scope !24181, !noalias !24207, !nonnull !29, !noundef !29
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !24243
  %i.w = load i64, ptr %i.v, align 8, !dbg !24243, !alias.scope !24181, !noalias !24207, !noundef !29
  call void @_RNvXs_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter7bytesetNtB4_7ByteSetNtB6_10PrefilterI4find(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.w, i64 noundef %i.c, i64 noundef %i.e), !dbg !24244, !noalias !24245
  %i.x = load i64, ptr %i.a, align 8, !dbg !24246, !range !4033, !noalias !24242, !noundef !29
  %i.y = trunc nuw i64 %i.x to i1, !dbg !24247    ; 2 uses
  br i1 %i.y, label %bb.f, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4, !dbg !24247

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !24248
  %i.aa = load i64, ptr %i.z, align 8, !dbg !24248, !noalias !24242, !noundef !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !24248
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !24248, !noalias !24242, !noundef !29
    #dbg_value(i64 %i.aa, !23611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24249)
    #dbg_value(i64 %i.aa, !23720, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24250)
    #dbg_value(i64 %i.ac, !23611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24249)
    #dbg_value(i64 %i.ac, !23720, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24250)
    #dbg_value(i32 0, !12158, !DIExpression(), !24252)
    #dbg_value(i64 %i.aa, !12166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24252)
    #dbg_value(i64 %i.ac, !12166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24252)
    #dbg_value(i64 %i.aa, !12167, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !24254)
    #dbg_value(i64 %i.ac, !12167, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !24254)
  %.not.i3 = icmp ugt i64 %i.aa, %i.ac, !dbg !24255
  br i1 %.not.i3, label %bb.g, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4, !dbg !24255, !prof !9671

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !24256, !noalias !24257
  unreachable, !dbg !24256

_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24260, !noalias !24242
  br label %_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit, !dbg !24261

_RNvXs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyINtB5_3PreNtNtNtNtB9_4util9prefilter7byteset7ByteSetENtB5_8Strategy6searchB9_.exit: ; preds = %bb.d, %bb.c, %bb.a, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4
  %.sroa.0.2 = phi i1 [ false, %bb.a ], [ %i.y, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newNtB6_4SpanEBa_.exit4 ], [ false, %bb.c ], [ %i.s, %bb.d ], !dbg !24185
  ret i1 %.sroa.0.2, !dbg !24262
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtNtCsl4b0cIVMtRE_12aho_corasick6packed9rabinkarpNtB5_9RabinKarpNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !24263 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !24270, !DIExpression(), !24272)
    #dbg_value(ptr %1, !24271, !DIExpression(), !24272)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !24273
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !24274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24275
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !24275
  store ptr %i.d, ptr %i.a, align 8, !dbg !24275
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 7, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @75, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77), !dbg !24276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24277
  ret i1 %i.e, !dbg !24278
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs19_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_10MatchErrorNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !24279 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !24285, !DIExpression(), !24287)
    #dbg_value(ptr %1, !24286, !DIExpression(), !24287)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24288
  store ptr %0, ptr %i.a, align 8, !dbg !24288
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83), !dbg !24289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24290
  ret i1 %i.b, !dbg !24291
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter12aho_corasickNtB5_11AhoCorasickNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !24292 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !24299, !DIExpression(), !24301)
    #dbg_value(ptr %1, !24300, !DIExpression(), !24301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !24302
  store ptr %0, ptr %i.a, align 8, !dbg !24302
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85), !dbg !24303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !24304
  ret i1 %i.b, !dbg !24305
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter5teddyNtB5_5TeddyNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(528) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !24306 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !24311, !DIExpression(), !24313)
end_hunk_5
begin_hunk_6_@_RNvXs4_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_15ReverseAnchoredNtB5_8Strategy12search_slots:bb.a
  %i.cq = load i128, ptr %0, align 16, !dbg !27170, !range !6128, !alias.scope !27130, !noalias !27158, !noundef !29
  %.not.i = icmp eq i128 %i.cq, 2, !dbg !27170
  br i1 %.not.i, label %bb.ae, label %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_15ReverseAnchored28try_search_half_anchored_rev.exit, !dbg !27171, !prof !9671

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 149 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #22, !dbg !27172, !noalias !27144
  unreachable, !dbg !27172

_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_15ReverseAnchored28try_search_half_anchored_rev.exit: ; preds = %bb.ad
    #dbg_value(ptr %0, !26460, !DIExpression(), !27173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27174), !dbg !27177
    #dbg_value(ptr %0, !26549, !DIExpression(), !27178)
    #dbg_value(ptr %1, !26553, !DIExpression(), !27178)
    #dbg_value(ptr %i.m, !26554, !DIExpression(), !27178)
    #dbg_declare(ptr %i.l, !26561, !DIExpression(), !27180)
    #dbg_declare(ptr poison, !26571, !DIExpression(), !27182)
    #dbg_value(ptr %0, !26579, !DIExpression(), !27183)
    #dbg_value(ptr %0, !26555, !DIExpression(DW_OP_plus_uconst, 720, DW_OP_stack_value), !27185)
    #dbg_value(ptr %1, !26585, !DIExpression(), !27186)
  %i.cr = load i64, ptr %1, align 8, !dbg !27188, !range !5824, !alias.scope !27174, !noalias !27189, !noundef !29
  %.not.i20 = icmp eq i64 %i.cr, 2, !dbg !27188
  br i1 %.not.i20, label %bb.ak, label %bb.af, !dbg !27193, !prof !9671

bb.af:                                            ; preds = %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_15ReverseAnchored28try_search_half_anchored_rev.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 720, !dbg !27194 ; 2 uses
    #dbg_value(ptr %i.cs, !26555, !DIExpression(), !27185)
    #dbg_value(ptr %1, !26599, !DIExpression(), !27195)
    #dbg_value(ptr %1, !26606, !DIExpression(), !27197)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 352, !dbg !27199 ; 2 uses
    #dbg_value(ptr %i.ct, !26557, !DIExpression(), !27200)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !27201, !noalias !27202
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27203), !dbg !27206
    #dbg_value(ptr %i.cs, !10908, !DIExpression(), !27207)
    #dbg_value(ptr %i.ct, !10912, !DIExpression(), !27207)
    #dbg_value(ptr %i.m, !10913, !DIExpression(), !27207)
    #dbg_declare(ptr %i.d, !10929, !DIExpression(), !27209)
    #dbg_value(ptr %i.cs, !10938, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !27211)
    #dbg_value(ptr %i.cs, !10943, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !27213)
    #dbg_value(ptr %i.cs, !10948, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !27215)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1408, !dbg !27217
  %i.cv = load ptr, ptr %i.cu, align 16, !dbg !27217, !alias.scope !27203, !noalias !27219, !nonnull !29, !noundef !29 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 386, !dbg !27223
  %i.cx = load i8, ptr %i.cw, align 2, !dbg !27223, !range !10752, !noalias !27224, !noundef !29
  %i.cy = trunc nuw i8 %i.cx to i1, !dbg !27223
  br i1 %i.cy, label %bb.ag, label %bb.ah, !dbg !27225

bb.ag:                                            ; preds = %bb.af
    #dbg_value(ptr %i.cs, !10963, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !27226)
    #dbg_value(ptr %i.cs, !10943, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !27228)
    #dbg_value(ptr %i.cs, !10948, !DIExpression(DW_OP_plus_uconst, 688, DW_OP_stack_value), !27230)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 387, !dbg !27232
  %i.da = load i8, ptr %i.cz, align 1, !dbg !27232, !range !10752, !noalias !27224, !noundef !29
    #dbg_value(i8 %i.da, !10914, !DIExpression(), !27233)
  %i.db = trunc nuw i8 %i.da to i1, !dbg !27234
  br label %bb.ah, !dbg !27225

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.0.0.i27 = phi i1 [ %i.db, %bb.ag ], [ false, %bb.af ], !dbg !27235
    #dbg_value(i8 poison, !10914, !DIExpression(), !27233)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !27236, !noalias !27224
  call void @_RNvNtNtCs9GYDdpCSJ4S_14regex_automata6hybrid6search8find_rev(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.cs, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m) #25, !dbg !27236, !noalias !27237
  %i.dc = load i64, ptr %i.d, align 8, !dbg !27238, !range !5824, !noalias !27224, !noundef !29 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 2, !dbg !27238
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !27239
  %i.df = load ptr, ptr %i.de, align 8, !dbg !27239, !noalias !27224 ; 2 uses
  br i1 %i.dd, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread99, label %bb.ai, !dbg !27240

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread99: ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !27241, !noalias !27224
    #dbg_value(ptr %i.df, !10918, !DIExpression(), !27242)
    #dbg_value(ptr %i.df, !10984, !DIExpression(), !27243)
    #dbg_value(ptr %i.df, !10987, !DIExpression(), !27245)
  br label %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread, !dbg !27246

bb.ai:                                            ; preds = %bb.ah
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !27247
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !27247, !noalias !27224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !27241, !noalias !27224
  %i.dg = ptrtoint ptr %i.df to i64, !dbg !27236  ; 3 uses
  %i.dh = trunc nuw i64 %i.dc to i1, !dbg !27248
  br i1 %i.dh, label %bb.aj, label %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread111, !dbg !27248

bb.aj:                                            ; preds = %bb.ai
    #dbg_value(ptr poison, !10924, !DIExpression(), !27249)
  %.sroa.69.16.extract.trunc11.i = trunc i64 %.sroa.5.0.copyload.i to i32, !dbg !27250 ; 2 uses
  br i1 %.sroa.0.0.i27, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit, label %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread103, !dbg !27234, !prof !9671

_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread111: ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !27251, !noalias !27202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !27252, !noalias !27144
  br label %bb.am, !dbg !27253

_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread103: ; preds = %bb.aj
    #dbg_value(i64 %i.dg, !10922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27254)
    #dbg_value(i64 %.sroa.5.0.copyload.i, !10922, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !27254)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !27251, !noalias !27202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !27252, !noalias !27144
  br label %bb.al, !dbg !27253

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit: ; preds = %bb.aj
    #dbg_value(i64 %i.dg, !10916, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27255)
    #dbg_value(i32 %.sroa.69.16.extract.trunc11.i, !10916, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !27255)
  call void @_RINvNtNtCs9GYDdpCSJ4S_14regex_automata4util5empty15skip_splits_revNtNtB4_6search9HalfMatchNCNvMs_NtNtB6_6hybrid3dfaNtB1x_3DFA14try_search_rev0EB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, i64 noundef %i.dg, i32 noundef %.sroa.69.16.extract.trunc11.i, i64 noundef %i.dg, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(720) %i.cs, ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.ct) #25, !dbg !27256, !noalias !27257
  %.pr = load i64, ptr %i.l, align 8, !dbg !27258, !noalias !27202 ; 2 uses
  %i.di = icmp eq i64 %.pr, 2, !dbg !27258
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %i.di, label %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit._RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread_crit_edge, label %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit, !dbg !27246

_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit._RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread_crit_edge: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !dbg !27259, !noalias !27202
  br label %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread, !dbg !27246

bb.ak:                                            ; preds = %_RNvMs3_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_15ReverseAnchored28try_search_half_anchored_rev.exit
    #dbg_value(ptr null, !26599, !DIExpression(), !27195)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #22, !dbg !27260, !noalias !27202
  unreachable, !dbg !27260

_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit._RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread_crit_edge, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread99
  %i.dj = phi ptr [ %.pre, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit._RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread_crit_edge ], [ %i.df, %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit.thread99 ], !dbg !27259
    #dbg_value(ptr %i.dj, !26574, !DIExpression(), !27261)
    #dbg_value(ptr %i.dj, !26681, !DIExpression(), !27262)
    #dbg_value(ptr %i.dj, !26688, !DIExpression(), !27264)
  %i.dk = call noundef i64 @_RNvXsc_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5errorNtB5_14RetryFailErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtB9_4util6search10MatchErrorE4from(ptr noalias noundef nonnull align 8 %i.dj), !dbg !27266, !noalias !27257 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !27251, !noalias !27202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !27252, !noalias !27144
    #dbg_value(i64 poison, !26802, !DIExpression(), !27267)
  %i.dl = call { i32, i32 } @_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_4Core19search_slots_nofail(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1984) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 %3, i64 noundef %4), !dbg !27268 ; 2 uses
  %i.dm = extractvalue { i32, i32 } %i.dl, 0, !dbg !27268
  %i.dn = extractvalue { i32, i32 } %i.dl, 1, !dbg !27268
  br label %bb.am, !dbg !27269

_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit: ; preds = %_RNvMs_NtNtCs9GYDdpCSJ4S_14regex_automata6hybrid3dfaNtB4_3DFA14try_search_rev.exit
  %.sroa.446.0.copyload = load i64, ptr %.phi.trans.insert, align 8, !dbg !27270, !noalias !27202
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16, !dbg !27270
  %.sroa.547.0.copyload = load i32, ptr %.sroa.547.0..sroa_idx, align 8, !dbg !27270, !noalias !27202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !27251, !noalias !27202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !27252, !noalias !27144
  %cond = icmp eq i64 %.pr, 0, !dbg !27253
  br i1 %cond, label %bb.am, label %bb.al, !dbg !27253

_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy19copy_match_to_slots.exit: ; preds = %bb.ar, %bb.aq, %bb.am, %_RNvXs2_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots.exit
  %.pn = phi { i32, i32 } [ %i.cd, %_RNvXs2_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots.exit ], [ %i.dx, %bb.am ], [ { i32 1, i32 poison }, %bb.aq ], [ { i32 1, i32 poison }, %bb.ar ]
  %.sroa.9.0.i.pn = phi i32 [ %.sroa.9.0.i, %_RNvXs2_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy12search_slots.exit ], [ %.sroa.6.1, %bb.am ], [ %.sroa.547.0.copyload110, %bb.aq ], [ %.sroa.547.0.copyload110, %bb.ar ]
  %.merged = insertvalue { i32, i32 } %.pn, i32 %.sroa.9.0.i.pn, 1, !dbg !27271
  ret { i32, i32 } %.merged, !dbg !27272

bb.al:                                            ; preds = %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit, %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread103
  %.sroa.547.0.copyload110 = phi i32 [ %.sroa.69.16.extract.trunc11.i, %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread103 ], [ %.sroa.547.0.copyload, %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit ] ; 4 uses
  %.sroa.446.0.copyload109 = phi i64 [ %i.dg, %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread103 ], [ %.sroa.446.0.copyload, %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit ] ; 5 uses
    #dbg_value(i64 %.sroa.446.0.copyload109, !26804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27273)
    #dbg_value(i32 %.sroa.547.0.copyload110, !26804, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !27273)
    #dbg_value(ptr %0, !27274, !DIExpression(), !27278)
    #dbg_value(i64 %4, !27277, !DIExpression(), !27280)
    #dbg_value(ptr %0, !27281, !DIExpression(DW_OP_plus_uconst, 1960, DW_OP_stack_value), !27284)
    #dbg_value(ptr %0, !27286, !DIExpression(DW_OP_plus_uconst, 1960, DW_OP_stack_value), !27289)
    #dbg_value(ptr %0, !27291, !DIExpression(DW_OP_plus_uconst, 1960, DW_OP_stack_value), !27294)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1960, !dbg !27296
  %i.dp = load ptr, ptr %i.do, align 8, !dbg !27296, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.dp, !27299, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !27302)
    #dbg_value(ptr %i.dp, !27304, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !27307)
    #dbg_value(ptr %i.dp, !27309, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !27312)
    #dbg_value(ptr %i.dp, !27314, !DIExpression(DW_OP_plus_uconst, 312, DW_OP_stack_value), !27317)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 312, !dbg !27320
  %i.dr = load ptr, ptr %i.dq, align 8, !dbg !27320, !nonnull !29, !noundef !29
    #dbg_value(ptr %i.dr, !27324, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !27327)
    #dbg_value(ptr %i.dr, !27329, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !27332)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32, !dbg !27334
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !27334, !noundef !29 ; 2 uses
  %i.du = icmp ult i64 %i.dt, 1152921504606846976, !dbg !27335
  call void @llvm.assume(i1 %i.du), !dbg !27336
  %i.dv = shl nuw nsw i64 %i.dt, 1, !dbg !27337
  %i.dw = icmp samesign ugt i64 %4, %i.dv, !dbg !27338
  br i1 %i.dw, label %bb.as, label %bb.an, !dbg !27339

bb.am:                                            ; preds = %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit, %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread111, %_RINvMNtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEEB7_.exit35, %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread
  %.sroa.6.1 = phi i32 [ %i.dn, %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread ], [ %i.em, %_RINvMNtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEEB7_.exit35 ], [ undef, %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit ], [ undef, %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread111 ], !dbg !26827
  %.sroa.0.1 = phi i32 [ %i.dm, %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread ], [ %i.el, %_RINvMNtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEEB7_.exit35 ], [ 0, %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit ], [ 0, %_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine19try_search_half_rev.exit.thread111 ], !dbg !26827
  %i.dx = insertvalue { i32, i32 } poison, i32 %.sroa.0.1, 0, !dbg !27272
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy19copy_match_to_slots.exit, !dbg !27272

bb.an:                                            ; preds = %bb.al
    #dbg_value(i32 %.sroa.547.0.copyload110, !10829, !DIExpression(), !27340)
    #dbg_value(i64 %.sroa.446.0.copyload109, !10835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27340)
    #dbg_value(i64 %i.ci, !10835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27340)
    #dbg_value(i64 %.sroa.446.0.copyload109, !10836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27342)
    #dbg_value(i64 %i.ci, !10836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27342)
  %.not.i29 = icmp ugt i64 %.sroa.446.0.copyload109, %i.ci, !dbg !27343
  br i1 %.not.i29, label %bb.ao, label %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEEBa_.exit, !dbg !27343, !prof !9671

bb.ao:                                            ; preds = %bb.an
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 37 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !dbg !27344, !noalias !27345
  unreachable, !dbg !27344

_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEEBa_.exit: ; preds = %bb.an
    #dbg_value(i32 %.sroa.547.0.copyload110, !26806, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !27348)
    #dbg_value(i64 %.sroa.446.0.copyload109, !26806, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27348)
    #dbg_value(i64 %i.ci, !26806, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27348)
    #dbg_value(i64 %.sroa.446.0.copyload109, !25540, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27349)
    #dbg_value(i64 %i.ci, !25540, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27349)
    #dbg_value(i32 %.sroa.547.0.copyload110, !25540, !DIExpression(DW_OP_LLVM_fragment, 128, 32), !27349)
    #dbg_value(i32 undef, !25540, !DIExpression(DW_OP_LLVM_fragment, 160, 32), !27349)
    #dbg_value(ptr %3, !25545, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27349)
    #dbg_value(ptr %3, !25556, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27351)
    #dbg_value(ptr %3, !25562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27353)
    #dbg_value(ptr %3, !25556, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27355)
    #dbg_value(ptr %3, !25562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27357)
    #dbg_value(i64 %4, !25545, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27349)
    #dbg_value(i64 %4, !25556, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27351)
    #dbg_value(i64 %4, !25562, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27353)
    #dbg_value(i64 %4, !25556, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27355)
    #dbg_value(i64 %4, !25562, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27357)
    #dbg_value(i64 1, !25573, !DIExpression(), !27359)
    #dbg_value(i64 1, !25573, !DIExpression(), !27362)
    #dbg_value(ptr poison, !25587, !DIExpression(), !27365)
    #dbg_value(ptr poison, !25592, !DIExpression(), !27367)
  %i.dy = zext i32 %.sroa.547.0.copyload110 to i64, !dbg !27369
  %i.dz = shl nuw nsw i64 %i.dy, 1, !dbg !27370   ; 3 uses
    #dbg_value(i64 %i.dz, !25546, !DIExpression(), !27371)
    #dbg_value(i64 %i.dz, !25559, !DIExpression(), !27351)
    #dbg_value(i64 %i.dz, !25565, !DIExpression(), !27353)
  %i.ea = or disjoint i64 %i.dz, 1, !dbg !27372   ; 2 uses
    #dbg_value(i64 %i.ea, !25548, !DIExpression(), !27373)
    #dbg_value(i64 %i.ea, !25559, !DIExpression(), !27355)
    #dbg_value(i64 %i.ea, !25565, !DIExpression(), !27357)
  %i.eb = icmp samesign ult i64 %i.dz, %4, !dbg !27374
  br i1 %i.eb, label %bb.ap, label %bb.aq, !dbg !27374

bb.ap:                                            ; preds = %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEEBa_.exit
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dz, !dbg !27375
    #dbg_value(ptr %i.ec, !25550, !DIExpression(), !27376)
    #dbg_value(i64 %.sroa.446.0.copyload109, !25581, !DIExpression(), !27377)
    #dbg_value(i64 %.sroa.446.0.copyload109, !25576, !DIExpression(), !27359)
  %i.ed = add i64 %.sroa.446.0.copyload109, 1, !dbg !27378
  store i64 %i.ed, ptr %i.ec, align 8, !dbg !27379, !alias.scope !27380, !noalias !27383
  br label %bb.aq, !dbg !27385

bb.aq:                                            ; preds = %bb.ap, %_RINvMsb_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB6_5Match3newINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEEBa_.exit
  %i.ee = icmp samesign ult i64 %i.ea, %4, !dbg !27386
  br i1 %i.ee, label %bb.ar, label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy19copy_match_to_slots.exit, !dbg !27386

bb.ar:                                            ; preds = %bb.aq
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ea, !dbg !27387
    #dbg_value(ptr %i.ef, !25552, !DIExpression(), !27388)
    #dbg_value(i64 %i.ci, !25581, !DIExpression(), !27389)
    #dbg_value(i64 %i.ci, !25576, !DIExpression(), !27362)
  %i.eg = add i64 %i.ci, 1, !dbg !27390
  store i64 %i.eg, ptr %i.ef, align 8, !dbg !27391, !alias.scope !27380, !noalias !27383
  br label %_RNvNtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategy19copy_match_to_slots.exit, !dbg !27392

bb.as:                                            ; preds = %bb.al
    #dbg_value(i64 %.sroa.446.0.copyload109, !26808, !DIExpression(), !27393)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !27394
    #dbg_value(ptr %i.cf, !26824, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27395)
    #dbg_value(i64 poison, !26824, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27395)
    #dbg_value(i64 poison, !26824, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !27395)
    #dbg_value(i64 poison, !26824, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !27395)
    #dbg_value(i32 poison, !26824, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !27395)
    #dbg_value(i32 poison, !26824, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !27395)
    #dbg_value(i8 %i.ck, !26824, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !27395)
    #dbg_value(i64 %.sroa.446.0.copyload109, !26825, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27395)
    #dbg_value(i64 %i.ci, !26825, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27395)
    #dbg_value(ptr undef, !2342, !DIExpression(), !26820)
    #dbg_value(i64 %.sroa.446.0.copyload109, !2343, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !26820)
    #dbg_value(i64 %i.ci, !2343, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !26820)
    #dbg_declare(ptr %i.c, !2344, !DIExpression(), !27396)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !27397, !noalias !27398
  store i64 %.sroa.446.0.copyload109, ptr %i.c, align 8, !dbg !27401, !noalias !27398
  %i.eh = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !27401
  store i64 %i.ci, ptr %i.eh, align 8, !dbg !27401, !noalias !27398
  %.not.i30 = icmp ugt i64 %i.ci, %i.cm, !dbg !27402
  %i.ei = add i64 %i.ci, 1
  %.not16.i31 = icmp ugt i64 %.sroa.446.0.copyload109, %i.ei
  %or.cond.i32 = or i1 %.not.i30, %.not16.i31, !dbg !27402
  br i1 %or.cond.i32, label %bb.at, label %_RINvMNtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEEB7_.exit35, !dbg !27402, !prof !2435

bb.at:                                            ; preds = %bb.as
    #dbg_value(ptr %i.c, !2346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !27403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !27404, !noalias !27398
  store i64 %i.cm, ptr %i.b, align 8, !dbg !27404, !noalias !27398
    #dbg_value(ptr %i.b, !2346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !27405, !noalias !27398
  store ptr %i.c, ptr %i.a, align 8, !dbg !27405, !noalias !27398
  %.sroa.42.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !27405
  store ptr @_RNvXs2_NtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB5_4SpanNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i33, align 8, !dbg !27405, !noalias !27398
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !27405
  store ptr %i.b, ptr %i.ej, align 8, !dbg !27405, !noalias !27398
  %.sroa.46.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !27405
  store ptr @_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i34, align 8, !dbg !27405, !noalias !27398
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #22, !dbg !27406, !noalias !27398
  unreachable, !dbg !27406

_RINvMNtNtCs9GYDdpCSJ4S_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEEB7_.exit35: ; preds = %bb.as
    #dbg_value(i64 %.sroa.446.0.copyload109, !26824, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !27395)
    #dbg_value(i64 %i.ci, !26824, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !27395)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !27407, !noalias !27398
    #dbg_value(i32 poison, !27408, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !27412)
    #dbg_value(i32 poison, !27408, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !27412)
    #dbg_value(ptr %i.cf, !27408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !27412)
    #dbg_value(i64 poison, !27408, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !27412)
    #dbg_value(i64 %.sroa.446.0.copyload109, !27408, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !27412)
    #dbg_value(i64 %i.ci, !27408, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !27412)
    #dbg_value(i8 %i.ck, !27408, !DIExpression(DW_OP_LLVM_fragment, 320, 8), !27412)
    #dbg_value(i32 2, !27411, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !27412)
    #dbg_value(i32 %.sroa.547.0.copyload110, !27411, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !27412)
    #dbg_value(i32 2, !27408, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !27412)
    #dbg_value(i32 %.sroa.547.0.copyload110, !27408, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !27412)
  store i32 2, ptr %i.n, align 8, !dbg !27414
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.n, i64 4, !dbg !27414
  store i32 %.sroa.547.0.copyload110, ptr %.sroa.5.0..sroa_idx3, align 4, !dbg !27414
  %.sroa.65.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !27414
  store ptr %i.cf, ptr %.sroa.65.0..sroa_idx6, align 8, !dbg !27414
  %.sroa.65.sroa.4.0..sroa.65.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !27414
  store i64 %i.cm, ptr %.sroa.65.sroa.4.0..sroa.65.0..sroa_idx6.sroa_idx, align 8, !dbg !27414
  %.sroa.65.sroa.5.0..sroa.65.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24, !dbg !27414
  store i64 %.sroa.446.0.copyload109, ptr %.sroa.65.sroa.5.0..sroa.65.0..sroa_idx6.sroa_idx, align 8, !dbg !27414
  %.sroa.65.sroa.6.0..sroa.65.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32, !dbg !27414
  store i64 %i.ci, ptr %.sroa.65.sroa.6.0..sroa.65.0..sroa_idx6.sroa_idx, align 8, !dbg !27414
  %.sroa.65.sroa.7.0..sroa.65.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40, !dbg !27414
  store i8 %i.ck, ptr %.sroa.65.sroa.7.0..sroa.65.0..sroa_idx6.sroa_idx, align 8, !dbg !27414
  %i.ek = call { i32, i32 } @_RNvMs1_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_4Core19search_slots_nofail(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(1984) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(1400) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n, ptr noalias nofree noundef nonnull align 8 %3, i64 noundef %4), !dbg !27415 ; 2 uses
  %i.el = extractvalue { i32, i32 } %i.ek, 0, !dbg !27415
  %i.em = extractvalue { i32, i32 } %i.ek, 1, !dbg !27415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !27416
  br label %bb.am, !dbg !27417
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_15ReverseAnchoredNtB5_8Strategy14is_accelerated(ptr noalias nofree readonly align 16 captures(none) %0) unnamed_addr #4 !dbg !27418 {
bb.a:
    #dbg_value(ptr poison, !27422, !DIExpression(), !27423)
  ret i1 true, !dbg !27424
}

; Function Attrs: alwaysinline nonlazybind uwtable
define internal void @_RNvXs4_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_15ReverseAnchoredNtB5_8Strategy25which_overlapping_matches(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(1984) %0, ptr noalias nofree noundef align 8 dereferenceable(1400) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) unnamed_addr #5 !dbg !27425 {
bb.a:
    #dbg_value(ptr %0, !27429, !DIExpression(), !27433)
    #dbg_value(ptr %1, !27430, !DIExpression(), !27433)
    #dbg_value(ptr %2, !27431, !DIExpression(), !27433)
    #dbg_value(ptr %3, !27432, !DIExpression(), !27433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27434), !dbg !27437
    #dbg_value(ptr %0, !25823, !DIExpression(), !27438)
    #dbg_value(ptr %1, !25824, !DIExpression(), !27438)
    #dbg_value(ptr %2, !25825, !DIExpression(), !27438)
    #dbg_value(ptr %2, !25842, !DIExpression(), !27440)
    #dbg_value(ptr %2, !25854, !DIExpression(), !27442)
    #dbg_value(ptr %2, !25864, !DIExpression(), !27444)
    #dbg_value(ptr %2, !25876, !DIExpression(), !27446)
    #dbg_value(ptr %2, !25887, !DIExpression(), !27448)
    #dbg_value(ptr %3, !25826, !DIExpression(), !27438)
    #dbg_value(ptr %3, !25861, !DIExpression(), !27442)
    #dbg_value(ptr %3, !25884, !DIExpression(), !27446)
    #dbg_value(ptr %3, !25895, !DIExpression(), !27448)
    #dbg_value(ptr %0, !25845, !DIExpression(DW_OP_plus_uconst, 1976, DW_OP_stack_value), !27450)
    #dbg_value(ptr %0, !25899, !DIExpression(DW_OP_plus_uconst, 1976, DW_OP_stack_value), !27451)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1976, !dbg !27453
  %i.b = load i8, ptr %i.a, align 8, !dbg !27453, !range !10752, !alias.scope !27434, !noalias !27454, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1, !dbg !27453
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !27458, !prof !9671

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.a, !25827, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !27459)
    #dbg_value(ptr %i.a, !25860, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !27442)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #22, !dbg !27460, !noalias !27461
  unreachable, !dbg !27460

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !25867, !DIExpression(), !27462)
    #dbg_value(ptr %0, !25911, !DIExpression(), !27463)
  %i.d = load i128, ptr %0, align 16, !dbg !27465, !range !6128, !alias.scope !27434, !noalias !27454, !noundef !29
  %.not.i = icmp eq i128 %i.d, 2, !dbg !27465
  br i1 %.not.i, label %bb.e, label %bb.d, !dbg !27466

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !25833, !DIExpression(), !27467)
  %i.e = tail call fastcc i64 @_RNvMs8_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_12HybridEngine29try_which_overlapping_matches(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(1984) %0, ptr noalias nofree noundef align 8 dereferenceable(1400) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef align 8 dereferenceable(24) %3) #28, !dbg !27468
  %i.f = trunc nuw i64 %i.e to i1, !dbg !27469
  br i1 %i.f, label %bb.e, label %_RNvXs2_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy25which_overlapping_matches.exit, !dbg !27469

bb.e:                                             ; preds = %bb.d, %bb.c
    #dbg_value(ptr %0, !25839, !DIExpression(DW_OP_plus_uconst, 1472, DW_OP_stack_value), !27470)
    #dbg_value(ptr %0, !25882, !DIExpression(DW_OP_plus_uconst, 1472, DW_OP_stack_value), !27471)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1096, !dbg !27472
    #dbg_value(ptr %i.g, !25883, !DIExpression(), !27446)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1472, !dbg !27473 ; 2 uses
    #dbg_value(ptr %i.h, !25893, !DIExpression(), !27448)
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8wrappersNtB5_11PikeVMCache3get(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h), !dbg !27474
    #dbg_value(ptr %i.i, !25894, !DIExpression(), !27448)
  tail call void @_RNvMs3_NtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson6pikevmNtB5_6PikeVM21which_overlapping_imp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3), !dbg !27475
  br label %_RNvXs2_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy25which_overlapping_matches.exit, !dbg !27476

_RNvXs2_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_4CoreNtB5_8Strategy25which_overlapping_matches.exit: ; preds = %bb.d, %bb.e
  ret void, !dbg !27477
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define internal void @_RNvXs4_NtNtCs9GYDdpCSJ4S_14regex_automata4meta8strategyNtB5_15ReverseAnchoredNtB5_8Strategy4name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree readonly align 16 captures(none) %1) unnamed_addr #8 !dbg !27478 {
bb.a:
    #dbg_value(ptr poison, !27482, !DIExpression(), !27483)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !27484
  store ptr @111, ptr %i.a, align 8, !dbg !27484
end_hunk_6
