Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.07?download=true
inline.NumInlined: 2030
inline.NumDeleted: 930
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE9from_iterCsaTqK2fWTXJW_11qlog_dancer:bb.a

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i.i
    #dbg_value(ptr %.val.i.i, !41820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41448)
    #dbg_value(ptr %.val.i.i, !41833, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41451)
    #dbg_value(ptr %.val.i.i, !41815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41453)
    #dbg_value(i64 poison, !41820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41448)
    #dbg_value(i64 poison, !41833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41451)
    #dbg_value(i64 poison, !41815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41453)
    #dbg_value(i64 %i.ah, !41831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41448)
    #dbg_value(i64 %i.ah, !41836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41451)
    #dbg_value(i64 %i.ah, !41788, !DIExpression(), !41455)
    #dbg_value(i64 %i.ah, !41816, !DIExpression(), !41453)
    #dbg_value(i64 %i.k, !41831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41448)
    #dbg_value(i64 %i.k, !41836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41451)
    #dbg_value(i64 %i.k, !41787, !DIExpression(), !41455)
  %i.ai = icmp ult i64 %i.k, %i.ah, !dbg !42031
    #dbg_value(i64 %.val13.i.i, !41820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41448)
    #dbg_value(i64 %.val13.i.i, !41833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41451)
    #dbg_value(i64 %.val13.i.i, !41815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41453)
    #dbg_value(!DIArgList(i64 %i.k, i64 %i.ah), !41837, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !41451)
    #dbg_value(!DIArgList(i64 %i.k, i64 %i.ah), !41817, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !41453)
  br i1 %i.ai, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i, label %.lr.ph.split.i.i.i, !dbg !42031

bb.f:                                             ; preds = %.loopexit.i.i.i
  %i.aj = sub nuw i64 %i.ah, %i.p, !dbg !42049    ; 2 uses
    #dbg_value(i64 %i.aj, !41781, !DIExpression(), !41477)
    #dbg_value(i64 %i.aj, !41831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41479)
    #dbg_value(i64 %i.aj, !41836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41481)
    #dbg_value(i64 %i.aj, !41788, !DIExpression(), !41483)
    #dbg_value(i64 %i.aj, !41816, !DIExpression(), !41485)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.aj), !41782, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !41486)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.aj), !41862, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !41492)
    #dbg_value(i64 %i.p, !41782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41486)
    #dbg_value(i64 %i.p, !41862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41492)
    #dbg_value(ptr poison, !41876, !DIExpression(), !41493)
    #dbg_value(i64 %i.p, !41787, !DIExpression(), !41438)
    #dbg_value(i64 %i.p, !41817, !DIExpression(), !41441)
    #dbg_value(ptr %i.m, !41815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41441)
    #dbg_value(i64 4, !41815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41441)
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.aj, !dbg !42050
    #dbg_value(ptr %i.ak, !41782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41486)
    #dbg_value(ptr %i.ak, !41862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41492)
    #dbg_value(ptr %i.m, !41867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41492)
    #dbg_value(i64 %i.p, !41867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41492)
    #dbg_value(ptr poison, !41877, !DIExpression(), !41494)
    #dbg_value(i64 %i.p, !41868, !DIExpression(), !41495)
    #dbg_value(i64 %i.p, !41881, !DIExpression(), !41499)
    #dbg_value(i64 %i.p, !41887, !DIExpression(), !41500)
    #dbg_value(ptr %i.ak, !41885, !DIExpression(), !41499)
    #dbg_value(ptr %i.m, !41886, !DIExpression(), !41499)
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.m, i64 %i.p), !dbg !42051, !noalias !41890
  %i.al = icmp eq i32 %bcmp.i.i.i, 0, !dbg !42051
  br i1 %i.al, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.e, !dbg !42052

_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.f
    #dbg_value(ptr %.val.i.i, !41736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41405)
    #dbg_value(ptr %.val.i.i, !41743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41408)
    #dbg_value(ptr %.val.i.i, !41751, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41413)
    #dbg_value(i64 %i.aj, !41737, !DIExpression(), !41501)
    #dbg_value(i64 %i.aj, !41747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41408)
    #dbg_value(i64 %i.aj, !41756, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41413)
    #dbg_value(i64 %i.ah, !41738, !DIExpression(), !41501)
  %i.am = load i64, ptr %1, align 8, !dbg !42053, !alias.scope !41741, !noundef !3895 ; 2 uses
    #dbg_value(i64 %i.am, !41747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41408)
    #dbg_value(i64 %i.am, !41756, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41413)
    #dbg_value(ptr %.val.i.i, !41757, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41502)
    #dbg_value(i64 poison, !41757, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41502)
  %i.an = sub nuw i64 %i.aj, %i.am, !dbg !42054
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.am), !41739, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !41503)
    #dbg_value(i64 %i.an, !41739, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41503)
  store i64 %i.ah, ptr %1, align 8, !dbg !42055, !alias.scope !41741
  br label %select.unfold, !dbg !42056

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %bb.e, %.loopexit54.i.i.i, %bb.b
    #dbg_value(ptr %1, !41891, !DIExpression(), !41507)
  store i8 1, ptr %i.d, align 1, !dbg !42057, !alias.scope !41895
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !42058
  %i.ap = load i8, ptr %i.ao, align 8, !dbg !42058, !range !12725, !alias.scope !41895, !noundef !3895
  %i.aq = trunc nuw i8 %i.ap to i1, !dbg !42058
  %.pre.i14.i.i = load i64, ptr %1, align 8, !dbg !42059, !alias.scope !41895 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre13.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !42060, !alias.scope !41895 ; 2 uses
  %.not.i15.i.i = icmp ne i64 %.pre13.i.i.i, %.pre.i14.i.i
  %or.cond.not.i.i.i = select i1 %i.aq, i1 true, i1 %.not.i15.i.i, !dbg !42058
  %i.ar = sub nuw i64 %.pre13.i.i.i, %.pre.i14.i.i, !dbg !42058
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %bb.l, !dbg !42061

select.unfold:                                    ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.an, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.ar, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i ], !dbg !42062
  %.pn = phi i64 [ %i.am, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i14.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i ]
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.pn), !41684, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !41896)
    #dbg_value(i64 %.sroa.4.1.i.i, !41684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41896)
    #dbg_value(i64 0, !41685, !DIExpression(), !41897)
    #dbg_value(i64 4, !41686, !DIExpression(), !41898)
    #dbg_value(i64 4, !41705, !DIExpression(), !41899)
    #dbg_value(i64 4, !41697, !DIExpression(), !41900)
    #dbg_value(i64 4, !41711, !DIExpression(), !41901)
    #dbg_value(i64 4, !12671, !DIExpression(), !41511)
    #dbg_value(i64 4, !12690, !DIExpression(), !41513)
    #dbg_declare(ptr poison, !12675, !DIExpression(), !41514)
    #dbg_value(i64 8, !12676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41511)
    #dbg_value(i64 8, !12693, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41513)
    #dbg_value(i64 16, !12676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41511)
    #dbg_value(i64 16, !12693, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41513)
    #dbg_value(i64 0, !12692, !DIExpression(), !41513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !42063
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !42063
  %i.as = load i64, ptr %i.a, align 8, !dbg !42063, !range !6514, !noundef !3895
  %i.at = trunc nuw i64 %i.as to i1, !dbg !42064
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !42065
  %i.av = load i64, ptr %i.au, align 8, !dbg !42065, !range !12695, !noundef !3895 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !42065 ; 2 uses
  br i1 %i.at, label %bb.g, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !42064, !prof !5708

bb.g:                                             ; preds = %select.unfold
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !42066
    #dbg_value(i64 %i.av, !12678, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41515)
    #dbg_value(i64 %i.ax, !12678, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41515)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.av, i64 %i.ax) #26, !dbg !42067
  unreachable, !dbg !42067

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %select.unfold
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn, !dbg !42068
    #dbg_value(ptr %.sroa.0.1.i.i, !41684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41896)
  %i.ay = load ptr, ptr %i.aw, align 8, !dbg !42069, !nonnull !3895, !noundef !3895 ; 5 uses
    #dbg_value(i64 %i.av, !12677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41516)
    #dbg_value(ptr %i.ay, !12677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41516)
    #dbg_value(ptr poison, !12691, !DIExpression(), !41517)
  %i.az = icmp ugt i64 %i.av, 3, !dbg !42070
    #dbg_value(i1 true, !12698, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !41519)
  tail call void @llvm.assume(i1 %i.az), !dbg !42071
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !42072
    #dbg_value(i64 %i.av, !41687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41902)
    #dbg_value(ptr %i.ay, !41687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41902)
    #dbg_value(i64 0, !41687, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !41902)
    #dbg_value(ptr %i.ay, !41904, !DIExpression(), !41910)
    #dbg_value(ptr %.sroa.0.1.i.i, !41907, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41910)
    #dbg_value(i64 %.sroa.4.1.i.i, !41907, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41910)
  store ptr %.sroa.0.1.i.i, ptr %i.ay, align 8, !dbg !42073, !captures !41911
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !42073
  store i64 %.sroa.4.1.i.i, ptr %i.ba, align 8, !dbg !42073
    #dbg_value(i64 1, !41687, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !41902)
  store i64 %i.av, ptr %i.c, align 8, !dbg !42074
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !42074 ; 2 uses
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !42074
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !42074 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !42074
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !42075
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !dbg !42075
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41912), !dbg !42076
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41913), !dbg !42076
    #dbg_value(ptr %i.c, !41914, !DIExpression(), !41526)
    #dbg_declare(ptr %i.b, !41917, !DIExpression(), !41527)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41920), !dbg !42077
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41921), !dbg !42077
    #dbg_value(ptr %i.c, !41922, !DIExpression(), !41536)
    #dbg_value(ptr %i.c, !41930, !DIExpression(), !41539)
    #dbg_value(ptr %i.c, !41936, !DIExpression(), !41542)
    #dbg_value(ptr %i.c, !41939, !DIExpression(), !41545)
    #dbg_value(ptr %i.c, !41944, !DIExpression(), !41548)
    #dbg_value(ptr %i.c, !41936, !DIExpression(), !41550)
    #dbg_declare(ptr %i.b, !41925, !DIExpression(), !41551)
    #dbg_value(i64 16, !41950, !DIExpression(), !41556)
    #dbg_value(i64 16, !41950, !DIExpression(), !41559)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  %.promoted.i.i = load i8, ptr %i.bb, align 1, !alias.scope !41961
  %.promoted24.i.i = load i64, ptr %i.b, align 8, !alias.scope !41962 ; 4 uses
  %i.bc = trunc nuw i8 %.promoted.i.i to i1, !dbg !42078
  br i1 %i.bc, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsaTqK2fWTXJW_11qlog_dancer.exit, label %.lr.ph.i.i, !dbg !42078

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaTqK2fWTXJW_11qlog_dancer.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !41961, !nonnull !3895, !noundef !3895 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val13.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !41961, !noundef !3895 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !41963, !noundef !3895 ; 8 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.bg, %.val13.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bj = load i8, ptr %i.bi, align 8, !alias.scope !41962 ; 2 uses
  %i.bk = zext nneg i8 %i.bj to i64               ; 4 uses
  %i.bl = icmp ult i8 %i.bj, 5
  %i.bm = getelementptr i8, ptr %i.bh, i64 %i.bk
  %i.bn = getelementptr i8, ptr %i.bm, i64 -1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bp = load i8, ptr %i.bo, align 8, !range !12725, !alias.scope !41962
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre13.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !41962 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.promoted28.i.i = load i64, ptr %i.br, align 8, !alias.scope !41963
  br label %.lr.ph.split.i.i, !dbg !42079

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %.not.i15.i.i.us.i.i = icmp ne i64 %.pre13.i.i.i.i.i, %.promoted24.i.i
  %or.cond.not.i.i.i.us.i.i = select i1 %i.bq, i1 true, i1 %.not.i15.i.i.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41964), !dbg !42080
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41965), !dbg !42081
    #dbg_value(ptr poison, !41736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41572)
    #dbg_value(i64 poison, !41736, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41966), !dbg !42082
    #dbg_value(ptr %i.bd, !41763, !DIExpression(), !41573)
    #dbg_value(i64 0, !41784, !DIExpression(), !41578)
    #dbg_value(i64 0, !41812, !DIExpression(), !41580)
    #dbg_value(ptr %.val.i.i.i.i, !41820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41581)
    #dbg_value(ptr %.val.i.i.i.i, !41833, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41582)
    #dbg_value(ptr %.val.i.i.i.i, !41815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41584)
    #dbg_value(i64 poison, !41820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41581)
    #dbg_value(i64 poison, !41833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41582)
    #dbg_value(i64 poison, !41815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41584)
    #dbg_value(i64 poison, !41831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41581)
    #dbg_value(i64 poison, !41836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41582)
    #dbg_value(i64 poison, !41788, !DIExpression(), !41585)
    #dbg_value(i64 poison, !41816, !DIExpression(), !41584)
    #dbg_value(i64 %i.bg, !41831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41581)
    #dbg_value(i64 %i.bg, !41836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41582)
    #dbg_value(i64 %i.bg, !41787, !DIExpression(), !41585)
    #dbg_value(ptr %i.b, !41891, !DIExpression(), !41587)
  br i1 %or.cond.not.i.i.i.us.i.i, label %._crit_edge.split.us.split.us.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsaTqK2fWTXJW_11qlog_dancer.exit

._crit_edge.split.us.split.us.i.i:                ; preds = %.lr.ph.split.us.i.i
  %.sroa.0.1.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.promoted24.i.i
  %i.bs = sub nuw i64 %.pre13.i.i.i.i.i, %.promoted24.i.i
    #dbg_value(ptr %i.ay, !41967, !DIExpression(), !41590)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 16, !dbg !42083
    #dbg_value(ptr %i.bt, !41972, !DIExpression(), !41593)
    #dbg_value(ptr %.sroa.0.1.i.i.us.i.i, !41973, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41593)
    #dbg_value(i64 poison, !41973, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41593)
  store ptr %.sroa.0.1.i.i.us.i.i, ptr %i.bt, align 8, !dbg !42084, !noalias !41962, !captures !41911
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ay, i64 24, !dbg !42084
  store i64 %i.bs, ptr %i.bu, align 8, !dbg !42084, !noalias !41962
    #dbg_value(i64 2, !41948, !DIExpression(), !41548)
  store i64 2, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !42085, !alias.scope !41975
    #dbg_value(ptr %i.b, !41718, !DIExpression(), !41594)
    #dbg_value(ptr %i.b, !41732, !DIExpression(), !41595)
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !42078

.lr.ph.split.i.i:                                 ; preds = %.noexc21, %.lr.ph.split.preheader.i.i
  %i.bv = phi i64 [ %i.cr, %.noexc21 ], [ %.promoted28.i.i, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %.lcssa222627.i.i = phi i64 [ %.lcssa2225.i.i, %.noexc21 ], [ %.promoted24.i.i, %.lr.ph.split.preheader.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !41964), !dbg !42080
  call void @llvm.experimental.noalias.scope.decl(metadata !41965), !dbg !42081
    #dbg_value(ptr poison, !41736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41572)
    #dbg_value(i64 poison, !41736, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41572)
  call void @llvm.experimental.noalias.scope.decl(metadata !41966), !dbg !42082
    #dbg_value(ptr %i.bd, !41763, !DIExpression(), !41573)
    #dbg_value(i64 0, !41784, !DIExpression(), !41578)
    #dbg_value(i64 0, !41812, !DIExpression(), !41580)
    #dbg_value(ptr %.val.i.i.i.i, !41820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41581)
    #dbg_value(ptr %.val.i.i.i.i, !41833, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41582)
    #dbg_value(ptr %.val.i.i.i.i, !41815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41584)
    #dbg_value(i64 poison, !41820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41581)
    #dbg_value(i64 poison, !41833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41582)
    #dbg_value(i64 poison, !41815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41584)
    #dbg_value(i64 %i.bv, !41831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41581)
    #dbg_value(i64 %i.bv, !41836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41582)
    #dbg_value(i64 %i.bv, !41788, !DIExpression(), !41585)
    #dbg_value(i64 %i.bv, !41816, !DIExpression(), !41584)
    #dbg_value(i64 %i.bg, !41831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41581)
    #dbg_value(i64 %i.bg, !41836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41582)
    #dbg_value(i64 %i.bg, !41787, !DIExpression(), !41585)
  %i.bw = icmp ult i64 %i.bg, %i.bv, !dbg !42079
  br i1 %i.bw, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i, !dbg !42079

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %.lr.ph.split.i.i
  call void @llvm.assume(i1 %i.bl)
  %.pre.i.i.i.i.i = load i8, ptr %i.bn, align 1, !dbg !42086, !alias.scope !41963 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i, !dbg !42087

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.j, %.lr.ph.split.preheader.i.i.i.i.i
  %i.bx = phi i64 [ %i.cl, %bb.j ], [ %i.bv, %.lr.ph.split.preheader.i.i.i.i.i ] ; 4 uses
    #dbg_value(i64 %i.bx, !41831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41581)
  %i.by = sub nuw i64 %i.bg, %i.bx, !dbg !42088   ; 4 uses
    #dbg_value(i64 %i.by, !41837, !DIExpression(), !41582)
    #dbg_value(i64 %i.by, !41817, !DIExpression(), !41584)
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.bx, !dbg !42089 ; 2 uses
    #dbg_value(ptr %i.bz, !41776, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41597)
    #dbg_value(i64 %i.by, !41776, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41597)
    #dbg_value(i8 %.pre.i.i.i.i.i, !41779, !DIExpression(), !41598)
    #dbg_value(i8 %.pre.i.i.i.i.i, !41843, !DIExpression(), !41599)
    #dbg_value(i8 %.pre.i.i.i.i.i, !41848, !DIExpression(), !41601)
    #dbg_value(ptr %i.bz, !41844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41599)
    #dbg_value(ptr %i.bz, !41849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41601)
    #dbg_value(i64 %i.by, !41844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41599)
    #dbg_value(i64 %i.by, !41849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41601)
  %i.ca = icmp samesign ult i64 %i.by, 16, !dbg !42087
  br i1 %i.ca, label %.preheader.i.i.i.i.i.i, label %bb.h, !dbg !42087

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
    #dbg_value(i64 0, !41850, !DIExpression(), !41602)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bg, %i.bx, !dbg !42090
  br i1 %.not.i.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !42090

bb.h:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.cb = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef range(i64 0, -9223372036854775808) %i.by)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !42091 ; 2 uses

.noexc20:                                         ; preds = %bb.h
  %i.cc = extractvalue { i64, i64 } %i.cb, 0, !dbg !42091
  %i.cd = extractvalue { i64, i64 } %i.cb, 1, !dbg !42091
    #dbg_value(i64 %i.cc, !41845, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41603)
    #dbg_value(i64 %i.cd, !41845, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41603)
  %i.ce = trunc nuw i64 %i.cc to i1, !dbg !42092
  br i1 %i.ce, label %.loopexit.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i, !dbg !42092

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.i
  %.sroa.04.015.i.i.i.i.i.i = phi i64 [ %i.ci, %bb.i ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
    #dbg_value(i64 %.sroa.04.015.i.i.i.i.i.i, !41850, !DIExpression(), !41602)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.04.015.i.i.i.i.i.i, !dbg !42093
  %i.cg = load i8, ptr %i.cf, align 1, !dbg !42093, !alias.scope !41976, !noalias !41977, !noundef !3895
  %i.ch = icmp eq i8 %i.cg, %.pre.i.i.i.i.i, !dbg !42093
  br i1 %i.ch, label %.loopexit.i.i.i.i.i, label %bb.i, !dbg !42093

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ci = add nuw nsw i64 %.sroa.04.015.i.i.i.i.i.i, 1, !dbg !42094 ; 2 uses
    #dbg_value(i64 %i.ci, !41850, !DIExpression(), !41602)
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ci, %i.by, !dbg !42090
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !42090

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc20
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.cd, %.noexc20 ], [ %.sroa.04.015.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], !dbg !42095 ; 2 uses
    #dbg_value(i64 1, !41845, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41603)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i.i, !41845, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41603)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i.i, !41846, !DIExpression(), !41607)
  %i.cj = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %i.by, !dbg !42096
    #dbg_value(i1 true, !41854, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !41609)
  call void @llvm.assume(i1 %i.cj), !dbg !42097
    #dbg_value(i64 1, !41845, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41603)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i.i, !41845, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41603)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i.i, !41780, !DIExpression(), !41610)
  %i.ck = add i64 %i.bx, 1, !dbg !42098
  %i.cl = add i64 %i.ck, %.sroa.5.0.i.i.i.i.i.i, !dbg !42099 ; 8 uses
  %.not50.i.i.i.i.i = icmp ult i64 %i.cl, %i.bk, !dbg !42100
    #dbg_value(!DIArgList(i64 %i.cl, i64 %i.bk), !41781, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !41611)
    #dbg_value(!DIArgList(i64 %i.cl, i64 %i.bk), !41831, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !41613)
    #dbg_value(!DIArgList(i64 %i.cl, i64 %i.bk), !41836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !41615)
    #dbg_value(!DIArgList(i64 %i.cl, i64 %i.bk), !41788, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !41617)
    #dbg_value(!DIArgList(i64 %i.cl, i64 %i.bk), !41816, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !41619)
    #dbg_value(ptr %.val.i.i.i.i, !41820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41613)
    #dbg_value(ptr %.val.i.i.i.i, !41833, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41615)
    #dbg_value(ptr %.val.i.i.i.i, !41815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41619)
    #dbg_value(!DIArgList(i64 poison, i64 %.sroa.5.0.i.i.i.i.i.i), !41831, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !41613)
    #dbg_value(!DIArgList(i64 poison, i64 %.sroa.5.0.i.i.i.i.i.i), !41836, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !41615)
    #dbg_value(!DIArgList(i64 poison, i64 %.sroa.5.0.i.i.i.i.i.i), !41787, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value), !41617)
    #dbg_value(i64 %.val13.i.i.i.i, !41820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41613)
    #dbg_value(i64 %.val13.i.i.i.i, !41833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41615)
    #dbg_value(i64 %.val13.i.i.i.i, !41815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41619)
    #dbg_value(i64 %i.bk, !41837, !DIExpression(), !41615)
    #dbg_value(i64 %i.bk, !41817, !DIExpression(), !41619)
  %.not51.i.i.i.i.i = icmp ugt i64 %i.cl, %.val13.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not50.i.i.i.i.i, %.not51.i.i.i.i.i, !dbg !42100
  br i1 %or.cond.i.i.i.i.i, label %bb.j, label %bb.k, !dbg !42100

bb.j:                                             ; preds = %bb.k, %.loopexit.i.i.i.i.i
    #dbg_value(ptr %.val.i.i.i.i, !41820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41581)
    #dbg_value(ptr %.val.i.i.i.i, !41833, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41582)
    #dbg_value(ptr %.val.i.i.i.i, !41815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41584)
    #dbg_value(i64 poison, !41820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41581)
    #dbg_value(i64 poison, !41833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41582)
    #dbg_value(i64 poison, !41815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41584)
    #dbg_value(i64 %i.cl, !41831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41581)
    #dbg_value(i64 %i.cl, !41836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41582)
    #dbg_value(i64 %i.cl, !41788, !DIExpression(), !41585)
    #dbg_value(i64 %i.cl, !41816, !DIExpression(), !41584)
    #dbg_value(i64 %i.bg, !41831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41581)
    #dbg_value(i64 %i.bg, !41836, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41582)
    #dbg_value(i64 %i.bg, !41787, !DIExpression(), !41585)
  %i.cm = icmp ult i64 %i.bg, %i.cl, !dbg !42079
    #dbg_value(i64 %.val13.i.i.i.i, !41820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41581)
    #dbg_value(i64 %.val13.i.i.i.i, !41833, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41582)
    #dbg_value(i64 %.val13.i.i.i.i, !41815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41584)
    #dbg_value(!DIArgList(i64 %i.bg, i64 %i.cl), !41837, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !41582)
    #dbg_value(!DIArgList(i64 %i.bg, i64 %i.cl), !41817, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !41584)
  br i1 %i.cm, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !42079

bb.k:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.cn = sub nuw i64 %i.cl, %i.bk, !dbg !42101   ; 2 uses
    #dbg_value(i64 %i.cn, !41781, !DIExpression(), !41611)
    #dbg_value(i64 %i.cn, !41831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41613)
    #dbg_value(i64 %i.cn, !41836, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41615)
    #dbg_value(i64 %i.cn, !41788, !DIExpression(), !41617)
    #dbg_value(i64 %i.cn, !41816, !DIExpression(), !41619)
    #dbg_value(!DIArgList(ptr %.val.i.i.i.i, i64 %i.cn), !41782, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !41620)
    #dbg_value(!DIArgList(ptr %.val.i.i.i.i, i64 %i.cn), !41862, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !41623)
    #dbg_value(i64 %i.bk, !41782, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41620)
    #dbg_value(i64 %i.bk, !41862, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41623)
    #dbg_value(ptr poison, !41876, !DIExpression(), !41624)
    #dbg_value(i64 %i.bk, !41787, !DIExpression(), !41578)
    #dbg_value(i64 %i.bk, !41817, !DIExpression(), !41580)
    #dbg_value(ptr %i.bh, !41815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41580)
    #dbg_value(i64 4, !41815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41580)
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.cn, !dbg !42102
    #dbg_value(ptr %i.co, !41782, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41620)
    #dbg_value(ptr %i.co, !41862, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41623)
    #dbg_value(ptr %i.bh, !41867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41623)
    #dbg_value(i64 %i.bk, !41867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41623)
    #dbg_value(ptr poison, !41877, !DIExpression(), !41625)
    #dbg_value(i64 %i.bk, !41868, !DIExpression(), !41626)
    #dbg_value(i64 %i.bk, !41881, !DIExpression(), !41628)
    #dbg_value(i64 %i.bk, !41887, !DIExpression(), !41629)
    #dbg_value(ptr %i.co, !41885, !DIExpression(), !41628)
    #dbg_value(ptr %i.bh, !41886, !DIExpression(), !41628)
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.co, ptr nonnull %i.bh, i64 %i.bk), !dbg !42103, !noalias !41978
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !42103
  br i1 %i.cp, label %select.unfold.i.i, label %bb.j, !dbg !42104

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i: ; preds = %bb.j, %.noexc20, %.preheader.i.i.i.i.i.i, %bb.i, %.lr.ph.split.i.i
  %i.cq = phi i64 [ %i.bv, %.lr.ph.split.i.i ], [ %i.bg, %bb.i ], [ %i.bg, %.noexc20 ], [ %i.bg, %.preheader.i.i.i.i.i.i ], [ %i.cl, %bb.j ]
    #dbg_value(ptr %i.b, !41891, !DIExpression(), !41587)
  store i8 1, ptr %i.bb, align 1, !dbg !42105, !alias.scope !41979
  %.not.i15.i.i.i.i = icmp ne i64 %.pre13.i.i.i.i.i, %.lcssa222627.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.bq, i1 true, i1 %.not.i15.i.i.i.i, !dbg !42106
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !42107

select.unfold.i.i:                                ; preds = %bb.k, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i
  %i.cr = phi i64 [ %i.cq, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i ], [ %i.cl, %bb.k ]
  %.lcssa2225.i.i = phi i64 [ %.lcssa222627.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i ], [ %i.cl, %bb.k ]
  %i.cs = phi i1 [ true, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i ], [ false, %bb.k ]
  %.pn.i.i = phi i64 [ %.pre13.i.i.i.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i ], [ %i.cn, %bb.k ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn.i.i, %.lcssa222627.i.i, !dbg !42108
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa222627.i.i, !dbg !42108
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !41926, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41632)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !41926, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41632)
  %i.ct = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !42109, !alias.scope !41975, !noundef !3895 ; 5 uses
    #dbg_value(i64 %i.ct, !41927, !DIExpression(), !41633)
    #dbg_value(i64 %i.ct, !41970, !DIExpression(), !41590)
  %i.cu = icmp ult i64 %i.ct, 576460752303423488, !dbg !42110
  call void @llvm.assume(i1 %i.cu), !dbg !42111
    #dbg_value(ptr %i.c, !41957, !DIExpression(), !41634)
  %i.cv = load i64, ptr %i.c, align 8, !dbg !42112, !range !5707, !alias.scope !41975, !noundef !3895
  %i.cw = icmp eq i64 %i.ct, %i.cv, !dbg !42113
  br i1 %i.cw, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i, label %.noexc21, !dbg !42113

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %select.unfold.i.i
    #dbg_value(i64 0, !41928, !DIExpression(), !41635)
    #dbg_value(ptr %i.c, !41980, !DIExpression(), !41638)
    #dbg_value(i64 1, !41982, !DIExpression(), !41638)
    #dbg_value(i64 1, !41984, !DIExpression(), !41641)
    #dbg_value(i64 1, !41992, !DIExpression(), !41644)
    #dbg_value(ptr %i.c, !41989, !DIExpression(), !41645)
    #dbg_value(i64 %i.ct, !41990, !DIExpression(), !41641)
    #dbg_value(i64 %i.ct, !41994, !DIExpression(), !41644)
    #dbg_value(ptr %i.c, !41993, !DIExpression(), !41644)
    #dbg_value(i64 8, !41995, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41644)
    #dbg_value(i64 16, !41995, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41644)
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ct, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !42114

.noexc21:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i, %select.unfold.i.i
  %i.cx = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !42115, !alias.scope !41975, !nonnull !3895, !noundef !3895
    #dbg_value(ptr %i.cx, !41967, !DIExpression(), !41590)
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.ct, !dbg !42083 ; 2 uses
    #dbg_value(ptr %i.cy, !41972, !DIExpression(), !41593)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !41973, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !41593)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !41973, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !41593)
  store ptr %.sroa.0.1.i.i.i.i, ptr %i.cy, align 8, !dbg !42084, !noalias !41962, !captures !41911
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8, !dbg !42084
  store i64 %.sroa.4.1.i.i.i.i, ptr %i.cz, align 8, !dbg !42084, !noalias !41962
  %i.da = add nuw nsw i64 %i.ct, 1, !dbg !42116
    #dbg_value(i64 %i.da, !41948, !DIExpression(), !41548)
  store i64 %i.da, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !42085, !alias.scope !41975
    #dbg_value(ptr %i.b, !41718, !DIExpression(), !41594)
    #dbg_value(ptr %i.b, !41732, !DIExpression(), !41595)
  br i1 %i.cs, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsaTqK2fWTXJW_11qlog_dancer.exit, label %.lr.ph.split.i.i, !dbg !42078

bb.l:                                             ; preds = %bb.a, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  store i64 0, ptr %0, align 8, !dbg !42117
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !42117
  store ptr inttoptr (i64 8 to ptr), ptr %i.db, align 8, !dbg !42117
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !42117
  store i64 0, ptr %i.dc, align 8, !dbg !42117
  br label %bb.m, !dbg !42118

bb.m:                                             ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsaTqK2fWTXJW_11qlog_dancer.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !42118
  ret void, !dbg !42119

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !42014, !DIExpression(), !41656)
    #dbg_value(ptr %i.c, !42018, !DIExpression(), !41659)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.n, !dbg !42120

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %.noexc21, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer.exit.i.i.i.i, %._crit_edge.split.us.split.us.i.i, %.lr.ph.split.us.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaTqK2fWTXJW_11qlog_dancer.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !42121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !42122
  br label %bb.m, !dbg !42118

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !dbg !42123
  unreachable, !dbg !42123

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp74, !dbg !42123
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCsexYYUdYSQU6_5alloc5sliceSINtNtB7_3vec3VecINtNtB7_6borrow3CoweEEINtB5_6ConcatBO_E6concatCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !42132 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !42306, !DIExpression(), !42322)
  %i.e = alloca [24 x i8], align 8                ; 9 uses
    #dbg_value(ptr %1, !42288, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42323)
    #dbg_value(ptr %1, !42324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42329)
    #dbg_value(ptr %1, !42330, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42340)
    #dbg_value(ptr %1, !42324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42343)
    #dbg_value(ptr %1, !42330, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42349)
    #dbg_value(i64 %2, !42288, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42323)
    #dbg_value(i64 %2, !42324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42329)
    #dbg_value(i64 %2, !42330, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42340)
    #dbg_value(i64 %2, !42324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42343)
    #dbg_value(i64 %2, !42330, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42349)
    #dbg_declare(ptr %i.e, !42290, !DIExpression(), !42350)
    #dbg_value(i64 0, !42351, !DIExpression(), !42373)
    #dbg_declare(ptr poison, !42365, !DIExpression(), !42386)
    #dbg_declare(ptr poison, !42387, !DIExpression(), !42395)
    #dbg_declare(ptr poison, !42401, !DIExpression(), !42408)
    #dbg_value(i64 1, !42409, !DIExpression(), !42416)
    #dbg_value(i64 %2, !42332, !DIExpression(), !42417)
    #dbg_value(i64 %2, !42418, !DIExpression(), !42425)
    #dbg_value(i64 %2, !42418, !DIExpression(), !42428)
    #dbg_value(ptr %1, !42333, !DIExpression(), !42429)
    #dbg_value(ptr %1, !42422, !DIExpression(), !42425)
  %.idx = mul nuw nsw i64 %2, 24, !dbg !42607
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx, !dbg !42607
    #dbg_value(ptr %1, !42376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42430)
    #dbg_value(ptr %1, !42382, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42431)
    #dbg_value(ptr %1, !42364, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42373)
    #dbg_value(ptr %i.f, !42376, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42430)
    #dbg_value(ptr %i.f, !42382, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42431)
    #dbg_value(ptr %i.f, !42364, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42373)
    #dbg_value(ptr %1, !42432, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !42171)
    #dbg_value(ptr %i.f, !42432, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !42171)
    #dbg_value(i64 0, !42439, !DIExpression(), !42171)
    #dbg_declare(ptr poison, !42440, !DIExpression(), !42172)
    #dbg_value(i64 1, !42451, !DIExpression(), !42175)
    #dbg_value(ptr %i.f, !42442, !DIExpression(), !42176)
    #dbg_value(ptr poison, !42455, !DIExpression(), !42179)
    #dbg_value(ptr poison, !42458, !DIExpression(), !42180)
  %i.g = icmp eq i64 %2, 0, !dbg !42608           ; 2 uses
  br i1 %i.g, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBV_6borrow3CoweEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvXs0_NtBV_5sliceSBQ_INtB3i_6ConcatB1n_E6concat0NCINvXsK_NtB1O_5accumjNtB47_3Sum3sumINtB2A_3MapBF_B3a_EE0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.preheader.preheader, !dbg !42609

.preheader.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %2, 3, !dbg !42610          ; 3 uses
  %i.h = icmp samesign ult i64 %2, 4, !dbg !42610
  br i1 %i.h, label %.preheader.epil.preheader, label %.preheader.preheader.new, !dbg !42610

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %2, 576460752303423484, !dbg !42610
  br label %.preheader, !dbg !42610

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.u, %.preheader ], !dbg !42611 ; 5 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.t, %.preheader ], !dbg !42612
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.3, %.preheader ]
    #dbg_value(i64 %.sroa.02.0.i, !42443, !DIExpression(), !42181)
    #dbg_value(i64 %.sroa.04.0.i, !42452, !DIExpression(), !42175)
    #dbg_value(i64 %.sroa.04.0.i, !42444, !DIExpression(), !42182)
    #dbg_value(ptr %1, !42460, !DIExpression(), !42185)
    #dbg_value(i64 %.sroa.04.0.i, !42461, !DIExpression(), !42185)
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.04.0.i, !dbg !42613
  %i.j = getelementptr i8, ptr %i.i, i64 16, !dbg !42614
  %.val24.i = load i64, ptr %i.j, align 8, !dbg !42614, !noundef !3895
    #dbg_value(i64 %.sroa.02.0.i, !42463, !DIExpression(), !42188)
    #dbg_value(ptr poison, !42467, !DIExpression(), !42188)
    #dbg_value(ptr poison, !42475, !DIExpression(), !42191)
    #dbg_value(i64 %.sroa.02.0.i, !42478, !DIExpression(), !42191)
    #dbg_value(i64 %.val24.i, !42479, !DIExpression(), !42191)
  %i.k = add i64 %.val24.i, %.sroa.02.0.i, !dbg !42615
    #dbg_value(i64 %i.k, !42443, !DIExpression(), !42181)
    #dbg_value(i64 %.sroa.04.0.i, !42444, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !42182)
    #dbg_value(i64 %.sroa.04.0.i, !42452, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !42175)
    #dbg_value(i64 %.sroa.04.0.i, !42461, !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value), !42185)
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.04.0.i, !dbg !42613
  %i.m = getelementptr i8, ptr %i.l, i64 40, !dbg !42614
  %.val24.i.1 = load i64, ptr %i.m, align 8, !dbg !42614, !noundef !3895
    #dbg_value(i64 %i.k, !42463, !DIExpression(), !42188)
    #dbg_value(i64 %i.k, !42478, !DIExpression(), !42191)
    #dbg_value(i64 %.val24.i.1, !42479, !DIExpression(), !42191)
  %i.n = add i64 %.val24.i.1, %i.k, !dbg !42615
    #dbg_value(i64 %i.n, !42443, !DIExpression(), !42181)
    #dbg_value(i64 %.sroa.04.0.i, !42444, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !42182)
    #dbg_value(i64 %.sroa.04.0.i, !42452, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !42175)
    #dbg_value(i64 %.sroa.04.0.i, !42461, !DIExpression(DW_OP_constu, 2, DW_OP_or, DW_OP_stack_value), !42185)
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.04.0.i, !dbg !42613
  %i.p = getelementptr i8, ptr %i.o, i64 64, !dbg !42614
  %.val24.i.2 = load i64, ptr %i.p, align 8, !dbg !42614, !noundef !3895
    #dbg_value(i64 %i.n, !42463, !DIExpression(), !42188)
    #dbg_value(i64 %i.n, !42478, !DIExpression(), !42191)
    #dbg_value(i64 %.val24.i.2, !42479, !DIExpression(), !42191)
  %i.q = add i64 %.val24.i.2, %i.n, !dbg !42615
    #dbg_value(i64 %i.q, !42443, !DIExpression(), !42181)
    #dbg_value(i64 %.sroa.04.0.i, !42444, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !42182)
    #dbg_value(i64 %.sroa.04.0.i, !42452, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !42175)
    #dbg_value(i64 %.sroa.04.0.i, !42461, !DIExpression(DW_OP_constu, 3, DW_OP_or, DW_OP_stack_value), !42185)
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.04.0.i, !dbg !42613
  %i.s = getelementptr i8, ptr %i.r, i64 88, !dbg !42614
  %.val24.i.3 = load i64, ptr %i.s, align 8, !dbg !42614, !noundef !3895
    #dbg_value(i64 %i.q, !42463, !DIExpression(), !42188)
    #dbg_value(i64 %i.q, !42478, !DIExpression(), !42191)
    #dbg_value(i64 %.val24.i.3, !42479, !DIExpression(), !42191)
  %i.t = add i64 %.val24.i.3, %i.q, !dbg !42615   ; 3 uses
    #dbg_value(i64 %i.t, !42443, !DIExpression(), !42181)
  %i.u = add nuw nsw i64 %.sroa.04.0.i, 4, !dbg !42616 ; 2 uses
    #dbg_value(i64 %i.u, !42444, !DIExpression(), !42182)
    #dbg_value(i64 %i.u, !42452, !DIExpression(), !42175)
  %niter.next.3 = add nuw nsw i64 %niter, 4, !dbg !42610 ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !42610
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBV_6borrow3CoweEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvXs0_NtBV_5sliceSBQ_INtB3i_6ConcatB1n_E6concat0NCINvXsK_NtB1O_5accumjNtB47_3Sum3sumINtB2A_3MapBF_B3a_EE0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, label %.preheader, !dbg !42610

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBV_6borrow3CoweEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvXs0_NtBV_5sliceSBQ_INtB3i_6ConcatB1n_E6concat0NCINvXsK_NtB1O_5accumjNtB47_3Sum3sumINtB2A_3MapBF_B3a_EE0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !42610
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBV_6borrow3CoweEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvXs0_NtBV_5sliceSBQ_INtB3i_6ConcatB1n_E6concat0NCINvXsK_NtB1O_5accumjNtB47_3Sum3sumINtB2A_3MapBF_B3a_EE0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.preheader.epil.preheader, !dbg !42610

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBV_6borrow3CoweEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvXs0_NtBV_5sliceSBQ_INtB3i_6ConcatB1n_E6concat0NCINvXsK_NtB1O_5accumjNtB47_3Sum3sumINtB2A_3MapBF_B3a_EE0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.u, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBV_6borrow3CoweEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvXs0_NtBV_5sliceSBQ_INtB3i_6ConcatB1n_E6concat0NCINvXsK_NtB1O_5accumjNtB47_3Sum3sumINtB2A_3MapBF_B3a_EE0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.t, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBV_6borrow3CoweEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvXs0_NtBV_5sliceSBQ_INtB3i_6ConcatB1n_E6concat0NCINvXsK_NtB1O_5accumjNtB47_3Sum3sumINtB2A_3MapBF_B3a_EE0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ]
  %lcmp.mod43 = icmp ne i64 %xtraiter, 0, !dbg !42610
  tail call void @llvm.assume(i1 %lcmp.mod43), !dbg !42610
  br label %.preheader.epil, !dbg !42610

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.y, %.preheader.epil ], [ %.sroa.04.0.i.epil.init, %.preheader.epil.preheader ], !dbg !42611 ; 2 uses
  %.sroa.02.0.i.epil = phi i64 [ %i.x, %.preheader.epil ], [ %.sroa.02.0.i.epil.init, %.preheader.epil.preheader ], !dbg !42612
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.epil ], [ 0, %.preheader.epil.preheader ]
    #dbg_value(i64 %.sroa.02.0.i.epil, !42443, !DIExpression(), !42181)
    #dbg_value(i64 %.sroa.04.0.i.epil, !42452, !DIExpression(), !42175)
    #dbg_value(i64 %.sroa.04.0.i.epil, !42444, !DIExpression(), !42182)
    #dbg_value(ptr %1, !42460, !DIExpression(), !42185)
    #dbg_value(i64 %.sroa.04.0.i.epil, !42461, !DIExpression(), !42185)
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.sroa.04.0.i.epil, !dbg !42613
  %i.w = getelementptr i8, ptr %i.v, i64 16, !dbg !42614
  %.val24.i.epil = load i64, ptr %i.w, align 8, !dbg !42614, !noundef !3895
    #dbg_value(i64 %.sroa.02.0.i.epil, !42463, !DIExpression(), !42188)
    #dbg_value(ptr poison, !42467, !DIExpression(), !42188)
    #dbg_value(ptr poison, !42475, !DIExpression(), !42191)
    #dbg_value(i64 %.sroa.02.0.i.epil, !42478, !DIExpression(), !42191)
    #dbg_value(i64 %.val24.i.epil, !42479, !DIExpression(), !42191)
  %i.x = add i64 %.val24.i.epil, %.sroa.02.0.i.epil, !dbg !42615 ; 2 uses
    #dbg_value(i64 %i.x, !42443, !DIExpression(), !42181)
  %i.y = add nuw nsw i64 %.sroa.04.0.i.epil, 1, !dbg !42616
    #dbg_value(i64 %i.y, !42444, !DIExpression(), !42182)
    #dbg_value(i64 %i.y, !42452, !DIExpression(), !42175)
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !42610 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !42610
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBV_6borrow3CoweEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvXs0_NtBV_5sliceSBQ_INtB3i_6ConcatB1n_E6concat0NCINvXsK_NtB1O_5accumjNtB47_3Sum3sumINtB2A_3MapBF_B3a_EE0E0ECsaTqK2fWTXJW_11qlog_dancer.exit, label %.preheader.epil, !dbg !42610, !llvm.loop !42192

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBV_6borrow3CoweEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvXs0_NtBV_5sliceSBQ_INtB3i_6ConcatB1n_E6concat0NCINvXsK_NtB1O_5accumjNtB47_3Sum3sumINtB2A_3MapBF_B3a_EE0E0ECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBV_6borrow3CoweEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvXs0_NtBV_5sliceSBQ_INtB3i_6ConcatB1n_E6concat0NCINvXsK_NtB1O_5accumjNtB47_3Sum3sumINtB2A_3MapBF_B3a_EE0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa, %.preheader.epil, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.t, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBV_6borrow3CoweEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvXs0_NtBV_5sliceSBQ_INtB3i_6ConcatB1n_E6concat0NCINvXsK_NtB1O_5accumjNtB47_3Sum3sumINtB2A_3MapBF_B3a_EE0E0ECsaTqK2fWTXJW_11qlog_dancer.exit.loopexit.unr-lcssa ], [ %i.x, %.preheader.epil ], !dbg !42612 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.i, !42289, !DIExpression(), !42485)
    #dbg_value(i64 %.sroa.0.0.i, !42399, !DIExpression(), !42486)
    #dbg_value(i64 %.sroa.0.0.i, !42391, !DIExpression(), !42487)
    #dbg_value(i64 %.sroa.0.0.i, !42405, !DIExpression(), !42488)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !42617
    #dbg_value(i64 %.sroa.0.0.i, !12671, !DIExpression(), !42194)
    #dbg_value(i64 %.sroa.0.0.i, !12690, !DIExpression(), !42196)
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!41388 = distinct !{!41388, i1 true, !"_RNvXsX_NtNtCskKLDkoKarTP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer"}
!41389 = distinct !{!41389, !41388, !"_RNvXsX_NtNtCskKLDkoKarTP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!41390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !41393, file: !3290, size: 128, align: 64, flags: DIFlagPublic, elements: !41727, templateParams: !5473, identifier: "6e4729251be438d55d61d9ccf2da0a0e")
!41391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !41393, file: !3290, size: 128, align: 64, flags: DIFlagPublic, elements: !3895, templateParams: !5473, identifier: "797d7990c13ce9ed317ca22e958c72e1")
!41392 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !41393, file: !3290, size: 128, align: 64, elements: !41725, templateParams: !3895, identifier: "e4e4db4ae41a39aeafede36dd169da0b", discriminator: !41728)
!41393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&str>", scope: !4069, file: !3290, size: 128, align: 64, flags: DIFlagPublic, elements: !41722, templateParams: !3895, identifier: "fea9ca3ae4b4eabfdb665ff12eb8710")
!41394 = distinct !DISubprogram(name: "next<char>", linkageName: "_RNvXsX_NtNtCskKLDkoKarTP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer", scope: !41719, file: !41716, line: 511, type: !41721, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !41681, retainedNodes: !41729)
!41395 = distinct !DILocation(line: 24, column: 41, scope: !41384)
!41396 = distinct !DILocation(line: 0, scope: !41394, inlinedAt: !41395)
!41397 = distinct !{!41397, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsaTqK2fWTXJW_11qlog_dancer"}
!41398 = distinct !{!41398, !41397, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!41399 = distinct !DILexicalBlock(scope: !41400, file: !41716, line: 666, column: 17)
!41400 = distinct !DILexicalBlock(scope: !41401, file: !41716, line: 665, column: 13)
!41401 = distinct !DILexicalBlock(scope: !41402, file: !41716, line: 662, column: 9)
!41402 = distinct !DISubprogram(name: "next<char>", linkageName: "_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsaTqK2fWTXJW_11qlog_dancer", scope: !41377, file: !41716, line: 657, type: !41734, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !41681, declaration: !41735, retainedNodes: !41740)
!41403 = distinct !DILocation(line: 512, column: 24, scope: !41394, inlinedAt: !41395)
!41404 = distinct !DILocation(line: 0, scope: !41402, inlinedAt: !41403)
!41405 = distinct !DILocation(line: 0, scope: !41401, inlinedAt: !41403)
!41406 = distinct !DISubprogram(name: "get_unchecked<core::ops::range::Range<usize>>", linkageName: "_RINvMNtCskKLDkoKarTP_4core3stre13get_uncheckedINtNtNtB5_3ops5range5RangejEECsaTqK2fWTXJW_11qlog_dancer", scope: !41744, file: !41742, line: 700, type: !41746, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !41749, retainedNodes: !41748)
!41407 = distinct !DILocation(line: 666, column: 36, scope: !41400, inlinedAt: !41403)
!41408 = distinct !DILocation(line: 0, scope: !41406, inlinedAt: !41407)
!41409 = distinct !DILexicalBlock(scope: !41410, file: !41750, line: 221, column: 13)
!41410 = distinct !DILexicalBlock(scope: !41411, file: !41750, line: 200, column: 9)
!41411 = distinct !DISubprogram(name: "get_unchecked", linkageName: "_RNvXs5_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE13get_unchecked", scope: !41753, file: !41750, line: 199, type: !41755, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !3895, retainedNodes: !41759)
!41412 = distinct !DILocation(line: 704, column: 22, scope: !41406, inlinedAt: !41407)
!41413 = distinct !DILocation(line: 0, scope: !41411, inlinedAt: !41412)
!41414 = distinct !{!41414, i1 true, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!41415 = distinct !{!41415, !41414, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!41416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !41419, file: !3290, size: 192, align: 64, flags: DIFlagPublic, elements: !41772, templateParams: !41774, identifier: "9e39e2d197b93702204ccf6f326c2ff6")
!41417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !41419, file: !3290, size: 192, align: 64, flags: DIFlagPublic, elements: !3895, templateParams: !41774, identifier: "fff818042485d5bf83c914053f14783a")
!41418 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !41419, file: !3290, size: 192, align: 64, elements: !41770, templateParams: !3895, identifier: "e655c83d08c91933548014ddf5150396", discriminator: !41775)
!41419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<(usize, usize)>", scope: !4069, file: !3290, size: 192, align: 64, flags: DIFlagPublic, elements: !41767, templateParams: !3895, identifier: "e1a64e8bda759931869562f69ade6b6b")
!41420 = distinct !DILexicalBlock(scope: !41421, file: !41761, line: 462, column: 96)
!41421 = distinct !DILexicalBlock(scope: !41422, file: !41761, line: 461, column: 21)
!41422 = distinct !DILexicalBlock(scope: !41423, file: !41761, line: 441, column: 67)
!41423 = distinct !DILexicalBlock(scope: !41426, file: !41761, line: 440, column: 13)
!41424 = distinct !DILexicalBlock(scope: !41427, file: !41761, line: 437, column: 84)
!41425 = distinct !DILexicalBlock(scope: !41427, file: !41761, line: 437, column: 84)
!41426 = distinct !DILexicalBlock(scope: !41427, file: !41761, line: 437, column: 13)
!41427 = distinct !DISubprogram(name: "next_match", linkageName: "_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match", scope: !41764, file: !41761, line: 434, type: !41766, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !3895, retainedNodes: !41783)
!41428 = distinct !DILocation(line: 663, column: 28, scope: !41401, inlinedAt: !41403)
!41429 = distinct !DILocation(line: 0, scope: !41427, inlinedAt: !41428)
!41430 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj11checked_sub", scope: !5696, file: !5694, line: 1116, type: !41786, scopeLine: 1116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !3895, retainedNodes: !41789)
!41431 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs2_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCsaTqK2fWTXJW_11qlog_dancer", scope: !41790, file: !13567, line: 405, type: !41792, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !3996, retainedNodes: !41796)
!41432 = distinct !DISubprogram(name: "index<u8, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCsaTqK2fWTXJW_11qlog_dancer", scope: !41797, file: !13567, line: 18, type: !41799, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !41803, retainedNodes: !41802)
!41433 = distinct !DISubprogram(name: "index<u8, core::ops::range::Range<usize>, 4>", linkageName: "_RNvXsd_NtCskKLDkoKarTP_4core5arrayAhj4_INtNtNtB7_3ops5index5IndexINtNtBG_5range5RangejEE5indexCsaTqK2fWTXJW_11qlog_dancer", scope: !41805, file: !41804, line: 390, type: !41808, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !41803, retainedNodes: !41811)
!41434 = distinct !DILocation(line: 463, column: 55, scope: !41420, inlinedAt: !41428)
!41435 = distinct !DILocation(line: 391, column: 9, scope: !41433, inlinedAt: !41434)
!41436 = distinct !DILocation(line: 19, column: 15, scope: !41432, inlinedAt: !41435)
!41437 = distinct !DILocation(line: 407, column: 32, scope: !41431, inlinedAt: !41436)
!41438 = distinct !DILocation(line: 0, scope: !41430, inlinedAt: !41437)
!41439 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core5slice5index24get_offset_len_noubcheckhECsaTqK2fWTXJW_11qlog_dancer", scope: !13568, file: !13567, line: 83, type: !41814, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !3996, retainedNodes: !41818)
!41440 = distinct !DILocation(line: 411, column: 24, scope: !41431, inlinedAt: !41436)
!41441 = distinct !DILocation(line: 0, scope: !41439, inlinedAt: !41440)
!41442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !41445, file: !3290, size: 128, align: 64, flags: DIFlagPublic, elements: !41828, templateParams: !41829, identifier: "2d1f6c87986fc605d930394ee9de9863")
!41443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !41445, file: !3290, size: 128, align: 64, flags: DIFlagPublic, elements: !3895, templateParams: !41829, identifier: "f8bb646ed90cf79e672b3f1e14836251")
!41444 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !41445, file: !3290, size: 128, align: 64, elements: !41826, templateParams: !3895, identifier: "c22b77edd71b63589b3727bd5c5fd371", discriminator: !41830)
!41445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&[u8]>", scope: !4069, file: !3290, size: 128, align: 64, flags: DIFlagPublic, elements: !41823, templateParams: !3895, identifier: "e2cf22197a6a96bd8dff761881efd273")
!41446 = distinct !DISubprogram(name: "get<u8, core::ops::range::Range<usize>>", linkageName: "_RINvMNtCskKLDkoKarTP_4core5sliceSh3getINtNtNtB5_3ops5range5RangejEECsaTqK2fWTXJW_11qlog_dancer", scope: !5505, file: !5504, line: 572, type: !41822, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !41803, retainedNodes: !41832)
!41447 = distinct !DILocation(line: 437, column: 50, scope: !41427, inlinedAt: !41428)
!41448 = distinct !DILocation(line: 0, scope: !41446, inlinedAt: !41447)
!41449 = distinct !DISubprogram(name: "get<u8>", linkageName: "_RNvXs2_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE3getCsaTqK2fWTXJW_11qlog_dancer", scope: !41790, file: !13567, line: 335, type: !41835, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !3996, retainedNodes: !41838)
!41450 = distinct !DILocation(line: 576, column: 15, scope: !41446, inlinedAt: !41447)
!41451 = distinct !DILocation(line: 0, scope: !41449, inlinedAt: !41450)
!41452 = distinct !DILocation(line: 341, column: 29, scope: !41449, inlinedAt: !41450)
!41453 = distinct !DILocation(line: 0, scope: !41439, inlinedAt: !41452)
!41454 = distinct !DILocation(line: 337, column: 32, scope: !41449, inlinedAt: !41450)
!41455 = distinct !DILocation(line: 0, scope: !41430, inlinedAt: !41454)
!41456 = distinct !DILexicalBlock(scope: !41457, file: !41839, line: 29, column: 33)
!41457 = distinct !DILexicalBlock(scope: !41458, file: !41839, line: 27, column: 5)
!41458 = distinct !DISubprogram(name: "memchr", linkageName: "_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr", scope: !41840, file: !41839, line: 25, type: !41842, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !3895, retainedNodes: !41847)
!41459 = distinct !DILocation(line: 441, column: 34, scope: !41422, inlinedAt: !41428)
!41460 = distinct !DILocation(line: 0, scope: !41426, inlinedAt: !41428)
!41461 = distinct !DILocation(line: 0, scope: !41423, inlinedAt: !41428)
!41462 = distinct !DILocation(line: 0, scope: !41458, inlinedAt: !41459)
!41463 = distinct !DILexicalBlock(scope: !41464, file: !41839, line: 38, column: 5)
!41464 = distinct !DISubprogram(name: "memchr_naive", linkageName: "_RNvNtNtCskKLDkoKarTP_4core5slice6memchr12memchr_naive", scope: !41840, file: !41839, line: 37, type: !41842, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !3895, retainedNodes: !41851)
!41465 = distinct !DILocation(line: 28, column: 43, scope: !41458, inlinedAt: !41459)
!41466 = distinct !DILocation(line: 0, scope: !41464, inlinedAt: !41465)
!41467 = distinct !DILocation(line: 0, scope: !41463, inlinedAt: !41465)
!41468 = distinct !{!41468, !41414, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!41469 = distinct !DILocation(line: 0, scope: !41457, inlinedAt: !41459)
!41470 = distinct !{!41470, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!41471 = distinct !{!41471, !41470, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!41472 = distinct !DILocation(line: 0, scope: !41456, inlinedAt: !41459)
!41473 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCskKLDkoKarTP_4core4hint16assert_unchecked", scope: !12699, file: !12697, line: 202, type: !12701, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !3895, retainedNodes: !41855)
!41474 = distinct !DILocation(line: 31, column: 18, scope: !41456, inlinedAt: !41459)
!41475 = distinct !DILocation(line: 0, scope: !41473, inlinedAt: !41474)
!41476 = distinct !DILocation(line: 0, scope: !41422, inlinedAt: !41428)
!41477 = distinct !DILocation(line: 0, scope: !41421, inlinedAt: !41428)
!41478 = distinct !DILocation(line: 462, column: 67, scope: !41420, inlinedAt: !41428)
!41479 = distinct !DILocation(line: 0, scope: !41446, inlinedAt: !41478)
!41480 = distinct !DILocation(line: 576, column: 15, scope: !41857, inlinedAt: !41478)
!41481 = distinct !DILocation(line: 0, scope: !41449, inlinedAt: !41480)
!41482 = distinct !DILocation(line: 337, column: 32, scope: !41858, inlinedAt: !41480)
!41483 = distinct !DILocation(line: 0, scope: !41430, inlinedAt: !41482)
!41484 = distinct !DILocation(line: 341, column: 29, scope: !41858, inlinedAt: !41480)
!41485 = distinct !DILocation(line: 0, scope: !41439, inlinedAt: !41484)
!41486 = distinct !DILocation(line: 0, scope: !41420, inlinedAt: !41428)
!41487 = distinct !DILexicalBlock(scope: !41488, file: !41861, line: 20, column: 9)
!41488 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCsaTqK2fWTXJW_11qlog_dancer", scope: !41864, file: !41861, line: 19, type: !41866, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !41871, retainedNodes: !41869)
!41489 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRShNtB7_9PartialEq2eqCsaTqK2fWTXJW_11qlog_dancer", scope: !41872, file: !12921, line: 2398, type: !41875, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !41880, retainedNodes: !41878)
!41490 = distinct !DILocation(line: 463, column: 28, scope: !41420, inlinedAt: !41428)
!41491 = distinct !DILocation(line: 2399, column: 13, scope: !41489, inlinedAt: !41490)
!41492 = distinct !DILocation(line: 0, scope: !41488, inlinedAt: !41491)
!41493 = distinct !DILocation(line: 2398, column: 15, scope: !41489, inlinedAt: !41490)
!41494 = distinct !DILocation(line: 2398, column: 22, scope: !41489, inlinedAt: !41490)
!41495 = distinct !DILocation(line: 0, scope: !41487, inlinedAt: !41491)
!41496 = distinct !DILexicalBlock(scope: !41497, file: !41861, line: 156, column: 13)
!41497 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCsaTqK2fWTXJW_11qlog_dancer", scope: !41882, file: !41861, line: 151, type: !41884, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !41889, retainedNodes: !41888)
!41498 = distinct !DILocation(line: 24, column: 22, scope: !41487, inlinedAt: !41491)
!41499 = distinct !DILocation(line: 0, scope: !41497, inlinedAt: !41498)
!41500 = distinct !DILocation(line: 0, scope: !41496, inlinedAt: !41498)
!41501 = distinct !DILocation(line: 0, scope: !41400, inlinedAt: !41403)
!41502 = distinct !DILocation(line: 0, scope: !41410, inlinedAt: !41412)
!41503 = distinct !DILocation(line: 0, scope: !41399, inlinedAt: !41403)
!41504 = distinct !DILexicalBlock(scope: !41505, file: !41716, line: 648, column: 17)
!41505 = distinct !DISubprogram(name: "get_end<char>", linkageName: "_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer", scope: !41377, file: !41716, line: 642, type: !41734, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !41681, declaration: !41892, retainedNodes: !41894)
!41506 = distinct !DILocation(line: 670, column: 26, scope: !41401, inlinedAt: !41403)
!41507 = distinct !DILocation(line: 0, scope: !41505, inlinedAt: !41506)
!41508 = distinct !{!41508, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer"}
!41509 = distinct !{!41509, !41508, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!41510 = distinct !DILocation(line: 177, column: 20, scope: !41387, inlinedAt: !41713)
!41511 = distinct !DILocation(line: 0, scope: !2404, inlinedAt: !41510)
!41512 = distinct !DILocation(line: 439, column: 50, scope: !2403, inlinedAt: !41510)
!41513 = distinct !DILocation(line: 0, scope: !2405, inlinedAt: !41512)
!41514 = distinct !DILocation(line: 434, column: 42, scope: !2404, inlinedAt: !41510)
!41515 = distinct !DILocation(line: 0, scope: !2402, inlinedAt: !41510)
!41516 = distinct !DILocation(line: 0, scope: !2403, inlinedAt: !41510)
!41517 = distinct !DILocation(line: 763, column: 28, scope: !2405, inlinedAt: !41512)
!41518 = distinct !DILocation(line: 439, column: 21, scope: !2403, inlinedAt: !41510)
!41519 = distinct !DILocation(line: 0, scope: !2406, inlinedAt: !41518)
!41520 = distinct !DISubprogram(name: "write<&str>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr5writeReECsaTqK2fWTXJW_11qlog_dancer", scope: !3990, file: !5739, line: 1941, type: !41906, scopeLine: 1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !5473, retainedNodes: !41908)
!41521 = distinct !{!41521, i1 true, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsaTqK2fWTXJW_11qlog_dancer"}
!41522 = distinct !{!41522, !41521, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!41523 = distinct !{!41523, !41521, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsaTqK2fWTXJW_11qlog_dancer: argument 1"}
!41524 = distinct !DISubprogram(name: "spec_extend<&str, core::str::iter::Split<char>, alloc::alloc::Global>", linkageName: "_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsaTqK2fWTXJW_11qlog_dancer", scope: !13104, file: !12903, line: 17, type: !41916, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !41919, retainedNodes: !41918)
!41525 = distinct !DILocation(line: 41, column: 9, scope: !41383)
!41526 = distinct !DILocation(line: 0, scope: !41524, inlinedAt: !41525)
!41527 = distinct !DILocation(line: 17, column: 39, scope: !41524, inlinedAt: !41525)
!41528 = distinct !{!41528, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEECsaTqK2fWTXJW_11qlog_dancer"}
!41529 = distinct !{!41529, !41528, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEECsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!41530 = distinct !{!41530, !41528, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEECsaTqK2fWTXJW_11qlog_dancer: argument 1"}
!41531 = distinct !DILexicalBlock(scope: !41532, file: !3896, line: 4105, column: 17)
!41532 = distinct !DILexicalBlock(scope: !41533, file: !3896, line: 4103, column: 13)
!41533 = distinct !DILexicalBlock(scope: !41534, file: !3896, line: 4102, column: 51)
!41534 = distinct !DISubprogram(name: "extend_desugared<&str, alloc::alloc::Global, core::str::iter::Split<char>>", linkageName: "_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEECsaTqK2fWTXJW_11qlog_dancer", scope: !3149, file: !3896, line: 4094, type: !41916, scopeLine: 4094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !41923, declaration: !41924, retainedNodes: !41929)
!41535 = distinct !DILocation(line: 18, column: 14, scope: !41524, inlinedAt: !41525)
!41536 = distinct !DILocation(line: 0, scope: !41534, inlinedAt: !41535)
!41537 = distinct !DISubprogram(name: "len<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE3lenCsaTqK2fWTXJW_11qlog_dancer", scope: !3149, file: !3896, line: 3099, type: !41933, scopeLine: 3099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !15494, declaration: !41934, retainedNodes: !41935)
!41538 = distinct !DILocation(line: 4103, column: 28, scope: !41533, inlinedAt: !41535)
!41539 = distinct !DILocation(line: 0, scope: !41537, inlinedAt: !41538)
!41540 = distinct !DISubprogram(name: "capacity<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE8capacityCsaTqK2fWTXJW_11qlog_dancer", scope: !3149, file: !3896, line: 1436, type: !41933, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !15494, declaration: !41937, retainedNodes: !41938)
!41541 = distinct !DILocation(line: 4104, column: 28, scope: !41532, inlinedAt: !41535)
!41542 = distinct !DILocation(line: 0, scope: !41540, inlinedAt: !41541)
!41543 = distinct !DISubprogram(name: "as_mut_ptr<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE10as_mut_ptrCsaTqK2fWTXJW_11qlog_dancer", scope: !3149, file: !3896, line: 2049, type: !41941, scopeLine: 2049, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !15494, declaration: !41942, retainedNodes: !41943)
!41544 = distinct !DILocation(line: 4109, column: 33, scope: !41532, inlinedAt: !41535)
!41545 = distinct !DILocation(line: 0, scope: !41543, inlinedAt: !41544)
!41546 = distinct !DISubprogram(name: "set_len<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7set_lenCsaTqK2fWTXJW_11qlog_dancer", scope: !3149, file: !3896, line: 2216, type: !41946, scopeLine: 2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !15494, declaration: !41947, retainedNodes: !41949)
!41547 = distinct !DILocation(line: 4113, column: 22, scope: !41532, inlinedAt: !41535)
!41548 = distinct !DILocation(line: 0, scope: !41546, inlinedAt: !41547)
!41549 = distinct !DILocation(line: 2220, column: 63, scope: !41546, inlinedAt: !41547)
!41550 = distinct !DILocation(line: 0, scope: !41540, inlinedAt: !41549)
!41551 = distinct !DILocation(line: 4094, column: 59, scope: !41534, inlinedAt: !41535)
!41552 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner8capacityCsaTqK2fWTXJW_11qlog_dancer", scope: !499, file: !5488, line: 615, type: !5703, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !5440, declaration: !5704, retainedNodes: !41952)
!41553 = distinct !DISubprogram(name: "capacity<&str, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE8capacityCsaTqK2fWTXJW_11qlog_dancer", scope: !3148, file: !5488, line: 308, type: !41955, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !15494, declaration: !41956, retainedNodes: !41958)
!41554 = distinct !DILocation(line: 1437, column: 18, scope: !41540, inlinedAt: !41541)
!41555 = distinct !DILocation(line: 309, column: 20, scope: !41553, inlinedAt: !41554)
!41556 = distinct !DILocation(line: 0, scope: !41552, inlinedAt: !41555)
!41557 = distinct !DILocation(line: 1437, column: 18, scope: !41960, inlinedAt: !41549)
!41558 = distinct !DILocation(line: 309, column: 20, scope: !41959, inlinedAt: !41557)
!41559 = distinct !DILocation(line: 0, scope: !41552, inlinedAt: !41558)
!41560 = distinct !{!41560, i1 true, !"_RNvXsX_NtNtCskKLDkoKarTP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer"}
!41561 = distinct !{!41561, !41560, !"_RNvXsX_NtNtCskKLDkoKarTP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!41562 = distinct !{!41562, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsaTqK2fWTXJW_11qlog_dancer"}
!41563 = distinct !{!41563, !41562, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!41564 = distinct !DILocation(line: 4102, column: 44, scope: !41533, inlinedAt: !41535)
!41565 = distinct !DILocation(line: 512, column: 24, scope: !41394, inlinedAt: !41564)
!41566 = distinct !{!41566, i1 true, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!41567 = distinct !{!41567, !41566, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!41568 = distinct !DILocation(line: 663, column: 28, scope: !41401, inlinedAt: !41565)
!41569 = distinct !DILocation(line: 437, column: 50, scope: !41427, inlinedAt: !41568)
!41570 = distinct !DILocation(line: 576, column: 15, scope: !41446, inlinedAt: !41569)
!41571 = distinct !DILocation(line: 337, column: 32, scope: !41449, inlinedAt: !41570)
!41572 = distinct !DILocation(line: 0, scope: !41401, inlinedAt: !41565)
!41573 = distinct !DILocation(line: 0, scope: !41427, inlinedAt: !41568)
!41574 = distinct !DILocation(line: 463, column: 55, scope: !41420, inlinedAt: !41568)
!41575 = distinct !DILocation(line: 391, column: 9, scope: !41433, inlinedAt: !41574)
!41576 = distinct !DILocation(line: 19, column: 15, scope: !41432, inlinedAt: !41575)
!41577 = distinct !DILocation(line: 407, column: 32, scope: !41431, inlinedAt: !41576)
!41578 = distinct !DILocation(line: 0, scope: !41430, inlinedAt: !41577)
!41579 = distinct !DILocation(line: 411, column: 24, scope: !41431, inlinedAt: !41576)
!41580 = distinct !DILocation(line: 0, scope: !41439, inlinedAt: !41579)
!41581 = distinct !DILocation(line: 0, scope: !41446, inlinedAt: !41569)
!41582 = distinct !DILocation(line: 0, scope: !41449, inlinedAt: !41570)
!41583 = distinct !DILocation(line: 341, column: 29, scope: !41449, inlinedAt: !41570)
!41584 = distinct !DILocation(line: 0, scope: !41439, inlinedAt: !41583)
!41585 = distinct !DILocation(line: 0, scope: !41430, inlinedAt: !41571)
!41586 = distinct !DILocation(line: 670, column: 26, scope: !41401, inlinedAt: !41565)
!41587 = distinct !DILocation(line: 0, scope: !41505, inlinedAt: !41586)
!41588 = distinct !DISubprogram(name: "add<&str>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrORe3addCsaTqK2fWTXJW_11qlog_dancer", scope: !5508, file: !5506, line: 937, type: !41969, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !5473, retainedNodes: !41971)
!41589 = distinct !DILocation(line: 4109, column: 46, scope: !41532, inlinedAt: !41535)
!41590 = distinct !DILocation(line: 0, scope: !41588, inlinedAt: !41589)
!41591 = distinct !DISubprogram(name: "write<&str>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr5writeReECsaTqK2fWTXJW_11qlog_dancer", scope: !3990, file: !5739, line: 1941, type: !41906, scopeLine: 1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !5473, retainedNodes: !41974)
!41592 = distinct !DILocation(line: 4109, column: 17, scope: !41532, inlinedAt: !41535)
!41593 = distinct !DILocation(line: 0, scope: !41591, inlinedAt: !41592)
!41594 = distinct !DILocation(line: 0, scope: !41394, inlinedAt: !41564)
!41595 = distinct !DILocation(line: 0, scope: !41402, inlinedAt: !41565)
!41596 = distinct !DILocation(line: 441, column: 34, scope: !41422, inlinedAt: !41568)
!41597 = distinct !DILocation(line: 0, scope: !41426, inlinedAt: !41568)
!41598 = distinct !DILocation(line: 0, scope: !41423, inlinedAt: !41568)
!41599 = distinct !DILocation(line: 0, scope: !41458, inlinedAt: !41596)
!41600 = distinct !DILocation(line: 28, column: 43, scope: !41458, inlinedAt: !41596)
!41601 = distinct !DILocation(line: 0, scope: !41464, inlinedAt: !41600)
!41602 = distinct !DILocation(line: 0, scope: !41463, inlinedAt: !41600)
!41603 = distinct !DILocation(line: 0, scope: !41457, inlinedAt: !41596)
!41604 = distinct !{!41604, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!41605 = distinct !{!41605, !41604, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!41606 = distinct !{!41606, !41566, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!41607 = distinct !DILocation(line: 0, scope: !41456, inlinedAt: !41596)
!41608 = distinct !DILocation(line: 31, column: 18, scope: !41456, inlinedAt: !41596)
!41609 = distinct !DILocation(line: 0, scope: !41473, inlinedAt: !41608)
!41610 = distinct !DILocation(line: 0, scope: !41422, inlinedAt: !41568)
!41611 = distinct !DILocation(line: 0, scope: !41421, inlinedAt: !41568)
!41612 = distinct !DILocation(line: 462, column: 67, scope: !41420, inlinedAt: !41568)
!41613 = distinct !DILocation(line: 0, scope: !41446, inlinedAt: !41612)
!41614 = distinct !DILocation(line: 576, column: 15, scope: !41857, inlinedAt: !41612)
!41615 = distinct !DILocation(line: 0, scope: !41449, inlinedAt: !41614)
!41616 = distinct !DILocation(line: 337, column: 32, scope: !41858, inlinedAt: !41614)
!41617 = distinct !DILocation(line: 0, scope: !41430, inlinedAt: !41616)
!41618 = distinct !DILocation(line: 341, column: 29, scope: !41858, inlinedAt: !41614)
!41619 = distinct !DILocation(line: 0, scope: !41439, inlinedAt: !41618)
!41620 = distinct !DILocation(line: 0, scope: !41420, inlinedAt: !41568)
!41621 = distinct !DILocation(line: 463, column: 28, scope: !41420, inlinedAt: !41568)
!41622 = distinct !DILocation(line: 2399, column: 13, scope: !41489, inlinedAt: !41621)
!41623 = distinct !DILocation(line: 0, scope: !41488, inlinedAt: !41622)
!41624 = distinct !DILocation(line: 2398, column: 15, scope: !41489, inlinedAt: !41621)
!41625 = distinct !DILocation(line: 2398, column: 22, scope: !41489, inlinedAt: !41621)
!41626 = distinct !DILocation(line: 0, scope: !41487, inlinedAt: !41622)
!41627 = distinct !DILocation(line: 24, column: 22, scope: !41487, inlinedAt: !41622)
!41628 = distinct !DILocation(line: 0, scope: !41497, inlinedAt: !41627)
!41629 = distinct !DILocation(line: 0, scope: !41496, inlinedAt: !41627)
!41630 = distinct !{!41630, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer"}
!41631 = distinct !{!41631, !41630, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!41632 = distinct !DILocation(line: 0, scope: !41533, inlinedAt: !41535)
!41633 = distinct !DILocation(line: 0, scope: !41532, inlinedAt: !41535)
!41634 = distinct !DILocation(line: 308, column: 34, scope: !41553, inlinedAt: !41554)
!41635 = distinct !DILocation(line: 0, scope: !41531, inlinedAt: !41535)
!41636 = distinct !DISubprogram(name: "reserve<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsaTqK2fWTXJW_11qlog_dancer", scope: !3149, file: !3896, line: 1460, type: !41946, scopeLine: 1460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !15494, declaration: !41981, retainedNodes: !41983)
!41637 = distinct !DILocation(line: 4106, column: 22, scope: !41531, inlinedAt: !41535)
!41638 = distinct !DILocation(line: 0, scope: !41636, inlinedAt: !41637)
!41639 = distinct !DISubprogram(name: "reserve<&str, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE7reserveCsaTqK2fWTXJW_11qlog_dancer", scope: !3148, file: !5488, line: 339, type: !41987, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !15494, declaration: !41988, retainedNodes: !41991)
!41640 = distinct !DILocation(line: 1461, column: 18, scope: !41636, inlinedAt: !41637)
!41641 = distinct !DILocation(line: 0, scope: !41639, inlinedAt: !41640)
!41642 = distinct !DISubprogram(name: "reserve<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner7reserveCsaTqK2fWTXJW_11qlog_dancer", scope: !499, file: !5488, line: 652, type: !5673, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !5440, declaration: !5681, retainedNodes: !41996)
!41643 = distinct !DILocation(line: 341, column: 29, scope: !41639, inlinedAt: !41640)
!41644 = distinct !DILocation(line: 0, scope: !41642, inlinedAt: !41643)
!41645 = distinct !DILocation(line: 339, column: 27, scope: !41639, inlinedAt: !41640)
!41646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<&str>", scope: !3991, file: !3290, size: 64, align: 64, flags: DIFlagPublic, elements: !42001, templateParams: !5473, identifier: "ac5ce18bc2456e977cc1baa5445c0e1e")
!41647 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &str>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner8non_nullReECsaTqK2fWTXJW_11qlog_dancer", scope: !499, file: !5488, line: 610, type: !41998, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !42002, declaration: !42003)
!41648 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, &str>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner3ptrReECsaTqK2fWTXJW_11qlog_dancer", scope: !499, file: !5488, line: 605, type: !42005, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !42002, declaration: !42006)
!41649 = distinct !DISubprogram(name: "ptr<&str, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE3ptrCsaTqK2fWTXJW_11qlog_dancer", scope: !3148, file: !5488, line: 295, type: !42008, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !15494, declaration: !42009)
!41650 = distinct !DILocation(line: 2052, column: 18, scope: !41543, inlinedAt: !41544)
!41651 = distinct !DILocation(line: 296, column: 20, scope: !41649, inlinedAt: !41650)
!41652 = distinct !DILocation(line: 606, column: 14, scope: !41648, inlinedAt: !41651)
!41653 = distinct !DISubprogram(name: "new<&str>", linkageName: "_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecReE3newCsaTqK2fWTXJW_11qlog_dancer", scope: !3149, file: !3896, line: 461, type: !42011, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !5473, declaration: !42012)
!41654 = distinct !DISubprogram(name: "drop_glue<alloc::vec::Vec<&str, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsaTqK2fWTXJW_11qlog_dancer", scope: !3990, file: !5739, line: 848, type: !15499, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !42017, retainedNodes: !42015)
!41655 = distinct !DILocation(line: 43, column: 5, scope: !41384)
!41656 = distinct !DILocation(line: 0, scope: !41654, inlinedAt: !41655)
!41657 = distinct !DISubprogram(name: "drop_glue<alloc::raw_vec::RawVec<&str, alloc::alloc::Global>>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecReEECsaTqK2fWTXJW_11qlog_dancer", scope: !3990, file: !5739, line: 848, type: !42020, scopeLine: 848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !42023, retainedNodes: !42021)
!41658 = distinct !DILocation(line: 848, column: 1, scope: !41654, inlinedAt: !41655)
!41659 = distinct !DILocation(line: 0, scope: !41657, inlinedAt: !41658)
!41660 = !{!3149, !41378}
!41661 = !DISubroutineType(types: !41660)
!41662 = !DINamespace(name: "str", scope: !3599)
!41663 = !DINamespace(name: "iter", scope: !41662)
!41664 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !41378, file: !3290, baseType: !41377, size: 576, align: 64, flags: DIFlagProtected)
!41665 = !{!41664}
!41666 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !41377, file: !3290, baseType: !3869, size: 64, align: 64, flags: DIFlagProtected)
!41667 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !41377, file: !3290, baseType: !3869, size: 64, align: 64, offset: 64, flags: DIFlagProtected)
!41668 = !DIDerivedType(tag: DW_TAG_member, name: "matcher", scope: !41377, file: !3290, baseType: !41376, size: 384, align: 64, offset: 128, flags: DIFlagProtected)
!41669 = !DIDerivedType(tag: DW_TAG_member, name: "allow_trailing_empty", scope: !41377, file: !3290, baseType: !4032, size: 8, align: 8, offset: 512, flags: DIFlagProtected)
!41670 = !DIDerivedType(tag: DW_TAG_member, name: "finished", scope: !41377, file: !3290, baseType: !4032, size: 8, align: 8, offset: 520, flags: DIFlagProtected)
!41671 = !{!41666, !41667, !41668, !41669, !41670}
!41672 = !DINamespace(name: "pattern", scope: !41662)
!41673 = !DIDerivedType(tag: DW_TAG_member, name: "haystack", scope: !41376, file: !3290, baseType: !503, size: 128, align: 64, flags: DIFlagPrivate)
!41674 = !DIDerivedType(tag: DW_TAG_member, name: "finger", scope: !41376, file: !3290, baseType: !3869, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!41675 = !DIDerivedType(tag: DW_TAG_member, name: "finger_back", scope: !41376, file: !3290, baseType: !3869, size: 64, align: 64, offset: 192, flags: DIFlagPrivate)
!41676 = !DIDerivedType(tag: DW_TAG_member, name: "needle", scope: !41376, file: !3290, baseType: !6841, size: 32, align: 32, offset: 288, flags: DIFlagPrivate)
!41677 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_size", scope: !41376, file: !3290, baseType: !3294, size: 8, align: 8, offset: 320, flags: DIFlagPrivate)
!41678 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_encoded", scope: !41376, file: !3290, baseType: !6480, size: 32, align: 8, offset: 256, flags: DIFlagPrivate)
!41679 = !{!41673, !41674, !41675, !41676, !41677, !41678}
!41680 = !DITemplateTypeParameter(name: "P", type: !6841)
!41681 = !{!41680}
!41682 = !DILocalVariable(name: "iterator", arg: 1, scope: !41384, file: !13081, line: 18, type: !41378)
!41683 = !DILocalVariable(name: "vector", scope: !41383, file: !13081, line: 24, type: !3149, align: 64)
!41684 = !DILocalVariable(name: "element", scope: !41382, file: !13081, line: 26, type: !503, align: 64)
!41685 = !DILocalVariable(name: "lower", scope: !41381, file: !13081, line: 27, type: !3869, align: 64)
!41686 = !DILocalVariable(name: "initial_capacity", scope: !41380, file: !13081, line: 28, type: !3869, align: 64)
!41687 = !DILocalVariable(name: "vector", scope: !41379, file: !13081, line: 30, type: !3149, align: 64)
!41688 = !{!41682, !41683, !41684, !41685, !41686, !41687}
!41689 = !DITemplateTypeParameter(name: "I", type: !41378)
!41690 = !{!5472, !41689}
!41691 = !DILocation(line: 18, column: 26, scope: !41384)
!41692 = !DILocation(line: 24, column: 13, scope: !41383)
!41693 = !DILocalVariable(name: "alloc", scope: !41385, file: !3896, line: 968, type: !9, align: 8)
!41694 = !{!3149, !3869, !9}
!41695 = !DISubroutineType(types: !41694)
!41696 = !DISubprogram(name: "with_capacity_in<&str, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE16with_capacity_inCsaTqK2fWTXJW_11qlog_dancer", scope: !3149, file: !3896, line: 968, type: !41695, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !15494)
!41697 = !DILocalVariable(name: "capacity", arg: 1, scope: !41385, file: !3896, line: 968, type: !3869)
!41698 = !{!41697, !41693}
!41699 = !DILocation(line: 30, column: 34, scope: !41380)
!41700 = !DILocation(line: 522, column: 9, scope: !41386, inlinedAt: !41699)
!41701 = !DILocation(line: 968, column: 46, scope: !41385, inlinedAt: !41700)
!41702 = !{!3149, !3869}
!41703 = !DISubroutineType(types: !41702)
!41704 = !DISubprogram(name: "with_capacity<&str>", linkageName: "_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecReE13with_capacityCsaTqK2fWTXJW_11qlog_dancer", scope: !3149, file: !3896, line: 521, type: !41703, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5473)
!41705 = !DILocalVariable(name: "capacity", arg: 1, scope: !41386, file: !3896, line: 521, type: !3869)
!41706 = !{!41705}
!41707 = !DILocalVariable(name: "alloc", scope: !41387, file: !5488, line: 175, type: !9, align: 8)
!41708 = !{!3148, !3869, !9}
!41709 = !DISubroutineType(types: !41708)
!41710 = !DISubprogram(name: "with_capacity_in<&str, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE16with_capacity_inCsaTqK2fWTXJW_11qlog_dancer", scope: !3148, file: !5488, line: 175, type: !41709, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !15494)
!41711 = !DILocalVariable(name: "capacity", arg: 1, scope: !41387, file: !5488, line: 175, type: !3869)
!41712 = !{!41711, !41707}
!41713 = !DILocation(line: 969, column: 20, scope: !41385, inlinedAt: !41700)
!41714 = !DILocation(line: 175, column: 53, scope: !41387, inlinedAt: !41713)
!41715 = !{!41389}
!41716 = !DIFile(filename: "library/core/src/str/iter.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "61c2132eeef87b75673cf36bf74bc4da")
!41717 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::iter::Split<char>", baseType: !41378, size: 64, align: 64, dwarfAddressSpace: 0)
!41718 = !DILocalVariable(name: "self", arg: 1, scope: !41394, file: !41716, line: 511, type: !41717)
!41719 = !DINamespace(name: "{impl#61}", scope: !41663)
!41720 = !{!41393, !41717}
!41721 = !DISubroutineType(types: !41720)
!41722 = !{!41392}
!41723 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !41392, file: !3290, baseType: !41391, size: 128, align: 64, extraData: i64 0)
!41724 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !41392, file: !3290, baseType: !41390, size: 128, align: 64)
!41725 = !{!41723, !41724}
!41726 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !41390, file: !3290, baseType: !503, size: 128, align: 64, flags: DIFlagPublic)
!41727 = !{!41726}
!41728 = !DIDerivedType(tag: DW_TAG_member, scope: !41393, file: !3290, baseType: !3765, size: 64, align: 64, flags: DIFlagArtificial)
!41729 = !{!41718}
!41730 = !{!41398}
!41731 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::iter::SplitInternal<char>", baseType: !41377, size: 64, align: 64, dwarfAddressSpace: 0)
!41732 = !DILocalVariable(name: "self", arg: 1, scope: !41402, file: !41716, line: 657, type: !41731)
!41733 = !{!41393, !41731}
!41734 = !DISubroutineType(types: !41733)
!41735 = !DISubprogram(name: "next<char>", linkageName: "_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsaTqK2fWTXJW_11qlog_dancer", scope: !41377, file: !41716, line: 657, type: !41734, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !41681)
!41736 = !DILocalVariable(name: "haystack", scope: !41401, file: !41716, line: 662, type: !503, align: 64)
!41737 = !DILocalVariable(name: "a", scope: !41400, file: !41716, line: 665, type: !3869, align: 64)
!41738 = !DILocalVariable(name: "b", scope: !41400, file: !41716, line: 665, type: !3869, align: 64)
!41739 = !DILocalVariable(name: "elt", scope: !41399, file: !41716, line: 666, type: !505, align: 64)
!41740 = !{!41732, !41736, !41737, !41738, !41739}
!41741 = !{!41398, !41389}
!41742 = !DIFile(filename: "library/core/src/str/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "ee5db8a06788b44667bc8f81edc68c2b")
!41743 = !DILocalVariable(name: "self", arg: 1, scope: !41406, file: !41742, line: 700, type: !503)
!41744 = !DINamespace(name: "{impl#0}", scope: !41662)
!41745 = !{!503, !503, !513}
!41746 = !DISubroutineType(types: !41745)
!41747 = !DILocalVariable(name: "i", scope: !41406, file: !41742, line: 700, type: !513, align: 64)
!41748 = !{!41743, !41747}
!41749 = !{!13080}
!41750 = !DIFile(filename: "library/core/src/str/traits.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "d8ae730ba1532c9b0c00bc889a42d36f")
!41751 = !DILocalVariable(name: "slice", arg: 2, scope: !41411, file: !41750, line: 199, type: !503)
!41752 = !DINamespace(name: "traits", scope: !41662)
!41753 = !DINamespace(name: "{impl#7}", scope: !41752)
!41754 = !{!505, !513, !505, !5464}
!41755 = !DISubroutineType(types: !41754)
!41756 = !DILocalVariable(name: "self", scope: !41411, file: !41750, line: 199, type: !513, align: 64)
!41757 = !DILocalVariable(name: "slice", scope: !41410, file: !41750, line: 200, type: !2461, align: 64)
!41758 = !DILocalVariable(name: "new_len", scope: !41409, file: !41750, line: 221, type: !3869, align: 64)
!41759 = !{!41756, !41751, !41757, !41758}
!41760 = !{!41415}
!41761 = !DIFile(filename: "library/core/src/str/pattern.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "632653a389978f6c4fa6825de87add57")
!41762 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::pattern::CharSearcher", baseType: !41376, size: 64, align: 64, dwarfAddressSpace: 0)
!41763 = !DILocalVariable(name: "self", arg: 1, scope: !41427, file: !41761, line: 434, type: !41762)
!41764 = !DINamespace(name: "{impl#1}", scope: !41672)
!41765 = !{!41419, !41762}
!41766 = !DISubroutineType(types: !41765)
!41767 = !{!41418}
!41768 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !41418, file: !3290, baseType: !41417, size: 192, align: 64, extraData: i64 0)
!41769 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !41418, file: !3290, baseType: !41416, size: 192, align: 64, extraData: i64 1)
!41770 = !{!41768, !41769}
!41771 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !41416, file: !3290, baseType: !2627, size: 128, align: 64, offset: 64, flags: DIFlagPublic)
!41772 = !{!41771}
!41773 = !DITemplateTypeParameter(name: "T", type: !2627)
!41774 = !{!41773}
!41775 = !DIDerivedType(tag: DW_TAG_member, scope: !41419, file: !3290, baseType: !3765, size: 64, align: 64, flags: DIFlagArtificial)
!41776 = !DILocalVariable(name: "bytes", scope: !41426, file: !41761, line: 437, type: !718, align: 64)
!41777 = !DILocalVariable(name: "residual", scope: !41425, file: !41761, line: 437, type: !2396, align: 8)
!41778 = !DILocalVariable(name: "val", scope: !41424, file: !41761, line: 437, type: !718, align: 64)
!41779 = !DILocalVariable(name: "last_byte", scope: !41423, file: !41761, line: 440, type: !3294, align: 8)
!41780 = !DILocalVariable(name: "index", scope: !41422, file: !41761, line: 441, type: !3869, align: 64)
!41781 = !DILocalVariable(name: "found_char", scope: !41421, file: !41761, line: 461, type: !3869, align: 64)
!41782 = !DILocalVariable(name: "slice", scope: !41420, file: !41761, line: 462, type: !718, align: 64)
!41783 = !{!41763, !41776, !41777, !41778, !41779, !41780, !41781, !41782}
!41784 = !DILocalVariable(name: "rhs", scope: !41430, file: !5694, line: 1116, type: !3869, align: 64)
!41785 = !{!538, !3869, !3869}
!41786 = !DISubroutineType(types: !41785)
!41787 = !DILocalVariable(name: "self", arg: 1, scope: !41430, file: !5694, line: 1116, type: !3869)
!41788 = !DILocalVariable(name: "rhs", arg: 2, scope: !41430, file: !5694, line: 1116, type: !3869)
!41789 = !{!41787, !41788, !41784}
!41790 = !DINamespace(name: "{impl#4}", scope: !13568)
!41791 = !{!718, !513, !718, !5464}
!41792 = !DISubroutineType(types: !41791)
!41793 = !DILocalVariable(name: "self", scope: !41431, file: !13567, line: 405, type: !513, align: 64)
!41794 = !DILocalVariable(name: "slice", arg: 2, scope: !41431, file: !13567, line: 405, type: !718)
!41795 = !DILocalVariable(name: "new_len", scope: !41431, file: !13567, line: 407, type: !3869, align: 64)
!41796 = !{!41793, !41794, !41795}
!41797 = !DINamespace(name: "{impl#0}", scope: !13568)
!41798 = !{!718, !718, !513, !5464}
!41799 = !DISubroutineType(types: !41798)
!41800 = !DILocalVariable(name: "self", arg: 1, scope: !41432, file: !13567, line: 18, type: !718)
!41801 = !DILocalVariable(name: "index", scope: !41432, file: !13567, line: 18, type: !513, align: 64)
!41802 = !{!41800, !41801}
!41803 = !{!3995, !13080}
!41804 = !DIFile(filename: "library/core/src/array/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "17c3352141fad635318d0774997499cb")
!41805 = !DINamespace(name: "{impl#15}", scope: !13259)
!41806 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[u8; 4]", baseType: !6480, size: 64, align: 64, dwarfAddressSpace: 0)
!41807 = !{!718, !41806, !513, !5464}
!41808 = !DISubroutineType(types: !41807)
!41809 = !DILocalVariable(name: "self", arg: 1, scope: !41433, file: !41804, line: 390, type: !41806)
!41810 = !DILocalVariable(name: "index", scope: !41433, file: !41804, line: 390, type: !513, align: 64)
!41811 = !{!41809, !41810}
!41812 = !DILocalVariable(name: "offset", scope: !41439, file: !13567, line: 85, type: !3869, align: 64)
!41813 = !{!2461, !2461, !3869, !3869}
!41814 = !DISubroutineType(types: !41813)
!41815 = !DILocalVariable(name: "ptr", arg: 1, scope: !41439, file: !13567, line: 84, type: !718)
!41816 = !DILocalVariable(name: "offset", arg: 2, scope: !41439, file: !13567, line: 85, type: !3869)
!41817 = !DILocalVariable(name: "len", arg: 3, scope: !41439, file: !13567, line: 86, type: !3869)
!41818 = !{!41815, !41816, !41817, !41812}
!41819 = !{!41415, !41398, !41389}
!41820 = !DILocalVariable(name: "self", arg: 1, scope: !41446, file: !5504, line: 572, type: !718)
!41821 = !{!41445, !718, !513}
!41822 = !DISubroutineType(types: !41821)
!41823 = !{!41444}
!41824 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !41444, file: !3290, baseType: !41443, size: 128, align: 64, extraData: i64 0)
!41825 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !41444, file: !3290, baseType: !41442, size: 128, align: 64)
!41826 = !{!41824, !41825}
!41827 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !41442, file: !3290, baseType: !718, size: 128, align: 64, flags: DIFlagPublic)
!41828 = !{!41827}
!41829 = !{!15495}
!41830 = !DIDerivedType(tag: DW_TAG_member, scope: !41445, file: !3290, baseType: !3765, size: 64, align: 64, flags: DIFlagArtificial)
!41831 = !DILocalVariable(name: "index", scope: !41446, file: !5504, line: 572, type: !513, align: 64)
!41832 = !{!41820, !41831}
!41833 = !DILocalVariable(name: "slice", arg: 2, scope: !41449, file: !13567, line: 335, type: !718)
!41834 = !{!41445, !513, !718}
!41835 = !DISubroutineType(types: !41834)
!41836 = !DILocalVariable(name: "self", scope: !41449, file: !13567, line: 335, type: !513, align: 64)
!41837 = !DILocalVariable(name: "new_len", scope: !41449, file: !13567, line: 337, type: !3869, align: 64)
!41838 = !{!41836, !41833, !41837}
!41839 = !DIFile(filename: "library/core/src/slice/memchr.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "90719a3fdf4b8ba29bc25ba24da39686")
!41840 = !DINamespace(name: "memchr", scope: !5448)
!41841 = !{!538, !3294, !718}
!41842 = !DISubroutineType(types: !41841)
!41843 = !DILocalVariable(name: "x", arg: 1, scope: !41458, file: !41839, line: 25, type: !3294)
!41844 = !DILocalVariable(name: "text", arg: 2, scope: !41458, file: !41839, line: 25, type: !718)
!41845 = !DILocalVariable(name: "result", scope: !41457, file: !41839, line: 27, type: !538, align: 64)
!41846 = !DILocalVariable(name: "index", scope: !41456, file: !41839, line: 29, type: !3869, align: 64)
!41847 = !{!41843, !41844, !41845, !41846}
!41848 = !DILocalVariable(name: "x", arg: 1, scope: !41464, file: !41839, line: 37, type: !3294)
!41849 = !DILocalVariable(name: "text", arg: 2, scope: !41464, file: !41839, line: 37, type: !718)
!41850 = !DILocalVariable(name: "i", scope: !41463, file: !41839, line: 38, type: !3869, align: 64)
!41851 = !{!41848, !41849, !41850}
!41852 = !{!41468, !41415, !41398, !41389}
!41853 = !{!41471}
!41854 = !DILocalVariable(name: "cond", arg: 1, scope: !41473, file: !12697, line: 202, type: !4032)
!41855 = !{!41854}
!41857 = !DILexicalBlockFile(scope: !41446, file: !5504, discriminator: 2)
!41858 = !DILexicalBlockFile(scope: !41449, file: !13567, discriminator: 2)
!41861 = !DIFile(filename: "library/core/src/slice/cmp.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "1d6518c072587d593bede5b5773a8b8b")
!41862 = !DILocalVariable(name: "self", arg: 1, scope: !41488, file: !41861, line: 19, type: !718)
!41863 = !DINamespace(name: "cmp", scope: !5448)
!41864 = !DINamespace(name: "{impl#0}", scope: !41863)
!41865 = !{!4032, !718, !718}
!41866 = !DISubroutineType(types: !41865)
!41867 = !DILocalVariable(name: "other", arg: 2, scope: !41488, file: !41861, line: 19, type: !2461)
!41868 = !DILocalVariable(name: "len", scope: !41487, file: !41861, line: 20, type: !3869, align: 64)
!41869 = !{!41862, !41867, !41868}
!41870 = !DITemplateTypeParameter(name: "U", type: !3294)
!41871 = !{!3995, !41870}
!41872 = !DINamespace(name: "{impl#9}", scope: !12923)
!41873 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&[u8]", baseType: !718, size: 64, align: 64, dwarfAddressSpace: 0)
!41874 = !{!4032, !41873, !41873}
!41875 = !DISubroutineType(types: !41874)
!41876 = !DILocalVariable(name: "self", arg: 1, scope: !41489, file: !12921, line: 2398, type: !41873)
!41877 = !DILocalVariable(name: "other", arg: 2, scope: !41489, file: !12921, line: 2398, type: !41873)
!41878 = !{!41876, !41877}
!41879 = !DITemplateTypeParameter(name: "A", type: !5485)
!41880 = !{!41879, !6453}
!41881 = !DILocalVariable(name: "len", arg: 3, scope: !41497, file: !41861, line: 151, type: !3869)
!41882 = !DINamespace(name: "{impl#5}", scope: !41863)
!41883 = !{!4032, !3992, !3992, !3869}
!41884 = !DISubroutineType(types: !41883)
!41885 = !DILocalVariable(name: "lhs", arg: 1, scope: !41497, file: !41861, line: 151, type: !3992)
!41886 = !DILocalVariable(name: "rhs", arg: 2, scope: !41497, file: !41861, line: 151, type: !3992)
!41887 = !DILocalVariable(name: "size", scope: !41496, file: !41861, line: 156, type: !3869, align: 64)
!41888 = !{!41885, !41886, !41881, !41887}
!41889 = !{!5569, !15496}
!41890 = !{!41468}
!41891 = !DILocalVariable(name: "self", arg: 1, scope: !41505, file: !41716, line: 642, type: !41731)
!41892 = !DISubprogram(name: "get_end<char>", linkageName: "_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsaTqK2fWTXJW_11qlog_dancer", scope: !41377, file: !41716, line: 642, type: !41734, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !41681)
!41893 = !DILocalVariable(name: "string", scope: !41504, file: !41716, line: 648, type: !505, align: 64)
!41894 = !{!41891, !41893}
!41895 = !{!41509, !41398, !41389}
!41896 = !DILocation(line: 0, scope: !41382)
!41897 = !DILocation(line: 0, scope: !41381)
!41898 = !DILocation(line: 0, scope: !41380)
!41899 = !DILocation(line: 0, scope: !41386, inlinedAt: !41699)
!41900 = !DILocation(line: 0, scope: !41385, inlinedAt: !41700)
!41901 = !DILocation(line: 0, scope: !41387, inlinedAt: !41713)
!41902 = !DILocation(line: 0, scope: !41379)
!41903 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut &str", baseType: !503, size: 64, align: 64, dwarfAddressSpace: 0)
!41904 = !DILocalVariable(name: "dst", arg: 1, scope: !41520, file: !5739, line: 1941, type: !41903)
!41905 = !{null, !41903, !503, !5464}
!41906 = !DISubroutineType(types: !41905)
!41907 = !DILocalVariable(name: "src", arg: 2, scope: !41520, file: !5739, line: 1941, type: !503)
!41908 = !{!41904, !41907}
!41909 = !DILocation(line: 33, column: 21, scope: !41379)
!41910 = !DILocation(line: 0, scope: !41520, inlinedAt: !41909)
!41911 = !{!"address", !"read_provenance"}
!41912 = !{!41522}
!41913 = !{!41523}
!41914 = !DILocalVariable(name: "self", arg: 1, scope: !41524, file: !12903, line: 17, type: !15497)
!41915 = !{null, !15497, !41378}
!41916 = !DISubroutineType(types: !41915)
!41917 = !DILocalVariable(name: "iter", arg: 2, scope: !41524, file: !12903, line: 17, type: !41378)
!41918 = !{!41914, !41917}
!41919 = !{!5472, !41689, !3969}
!41920 = !{!41529}
!41921 = !{!41530}
!41922 = !DILocalVariable(name: "self", arg: 1, scope: !41534, file: !3896, line: 4094, type: !15497)
!41923 = !{!5472, !3969, !41689}
!41924 = !DISubprogram(name: "extend_desugared<&str, alloc::alloc::Global, core::str::iter::Split<char>>", linkageName: "_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEECsaTqK2fWTXJW_11qlog_dancer", scope: !3149, file: !3896, line: 4094, type: !41916, scopeLine: 4094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !41923)
!41925 = !DILocalVariable(name: "iterator", arg: 2, scope: !41534, file: !3896, line: 4094, type: !41378)
!41926 = !DILocalVariable(name: "element", scope: !41533, file: !3896, line: 4102, type: !503, align: 64)
!41927 = !DILocalVariable(name: "len", scope: !41532, file: !3896, line: 4103, type: !3869, align: 64)
!41928 = !DILocalVariable(name: "lower", scope: !41531, file: !3896, line: 4105, type: !3869, align: 64)
!41929 = !{!41922, !41925, !41926, !41927, !41928}
!41930 = !DILocalVariable(name: "self", arg: 1, scope: !41537, file: !3896, line: 3099, type: !15497)
!41931 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::vec::Vec<&str, alloc::alloc::Global>", baseType: !3149, size: 64, align: 64, dwarfAddressSpace: 0)
!41932 = !{!3869, !41931}
!41933 = !DISubroutineType(types: !41932)
!41934 = !DISubprogram(name: "len<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE3lenCsaTqK2fWTXJW_11qlog_dancer", scope: !3149, file: !3896, line: 3099, type: !41933, scopeLine: 3099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !15494)
!41935 = !{!41930}
!41936 = !DILocalVariable(name: "self", arg: 1, scope: !41540, file: !3896, line: 1436, type: !15497)
!41937 = !DISubprogram(name: "capacity<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE8capacityCsaTqK2fWTXJW_11qlog_dancer", scope: !3149, file: !3896, line: 1436, type: !41933, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !15494)
!41938 = !{!41936}
!41939 = !DILocalVariable(name: "self", arg: 1, scope: !41543, file: !3896, line: 2049, type: !15497)
!41940 = !{!41903, !15497}
!41941 = !DISubroutineType(types: !41940)
!41942 = !DISubprogram(name: "as_mut_ptr<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE10as_mut_ptrCsaTqK2fWTXJW_11qlog_dancer", scope: !3149, file: !3896, line: 2049, type: !41941, scopeLine: 2049, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !15494)
!41943 = !{!41939}
!41944 = !DILocalVariable(name: "self", arg: 1, scope: !41546, file: !3896, line: 2216, type: !15497)
!41945 = !{null, !15497, !3869}
!41946 = !DISubroutineType(types: !41945)
!41947 = !DISubprogram(name: "set_len<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7set_lenCsaTqK2fWTXJW_11qlog_dancer", scope: !3149, file: !3896, line: 2216, type: !41946, scopeLine: 2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !15494)
!41948 = !DILocalVariable(name: "new_len", arg: 2, scope: !41546, file: !3896, line: 2216, type: !3869)
!41949 = !{!41944, !41948}
!41950 = !DILocalVariable(name: "elem_size", scope: !41552, file: !5488, line: 615, type: !3869, align: 64)
!41951 = !DILocalVariable(name: "self", arg: 1, scope: !41552, file: !5488, line: 615, type: !5489)
!41952 = !{!41951, !41950}
!41953 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::raw_vec::RawVec<&str, alloc::alloc::Global>", baseType: !3148, size: 64, align: 64, dwarfAddressSpace: 0)
!41954 = !{!3869, !41953}
!41955 = !DISubroutineType(types: !41954)
!41956 = !DISubprogram(name: "capacity<&str, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE8capacityCsaTqK2fWTXJW_11qlog_dancer", scope: !3148, file: !5488, line: 308, type: !41955, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !15494)
!41957 = !DILocalVariable(name: "self", arg: 1, scope: !41553, file: !5488, line: 308, type: !41953)
!41958 = !{!41957}
!41959 = !DILexicalBlockFile(scope: !41553, file: !5488, discriminator: 2)
!41960 = !DILexicalBlockFile(scope: !41540, file: !3896, discriminator: 2)
!41961 = !{!41563, !41561, !41530, !41523}
!41962 = !{!41530, !41523}
!41963 = !{!41567, !41563, !41561, !41530, !41523}
!41964 = !{!41561}
!41965 = !{!41563}
!41966 = !{!41567}
!41967 = !DILocalVariable(name: "self", arg: 1, scope: !41588, file: !5506, line: 937, type: !41903)
!41968 = !{!41903, !41903, !3869, !5464}
!41969 = !DISubroutineType(types: !41968)
!41970 = !DILocalVariable(name: "count", arg: 2, scope: !41588, file: !5506, line: 937, type: !3869)
!41971 = !{!41967, !41970}
!41972 = !DILocalVariable(name: "dst", arg: 1, scope: !41591, file: !5739, line: 1941, type: !41903)
!41973 = !DILocalVariable(name: "src", arg: 2, scope: !41591, file: !5739, line: 1941, type: !503)
!41974 = !{!41972, !41973}
!41975 = !{!41529, !41522}
!41976 = !{!41605}
!41977 = !{!41606, !41567, !41563, !41561, !41530, !41523}
!41978 = !{!41606}
!41979 = !{!41631, !41563, !41561, !41530, !41523}
!41980 = !DILocalVariable(name: "self", arg: 1, scope: !41636, file: !3896, line: 1460, type: !15497)
!41981 = !DISubprogram(name: "reserve<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsaTqK2fWTXJW_11qlog_dancer", scope: !3149, file: !3896, line: 1460, type: !41946, scopeLine: 1460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !15494)
!41982 = !DILocalVariable(name: "additional", arg: 2, scope: !41636, file: !3896, line: 1460, type: !3869)
!41983 = !{!41980, !41982}
!41984 = !DILocalVariable(name: "additional", arg: 3, scope: !41639, file: !5488, line: 339, type: !3869)
!41985 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::raw_vec::RawVec<&str, alloc::alloc::Global>", baseType: !3148, size: 64, align: 64, dwarfAddressSpace: 0)
!41986 = !{null, !41985, !3869, !3869}
!41987 = !DISubroutineType(types: !41986)
!41988 = !DISubprogram(name: "reserve<&str, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE7reserveCsaTqK2fWTXJW_11qlog_dancer", scope: !3148, file: !5488, line: 339, type: !41987, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !15494)
!41989 = !DILocalVariable(name: "self", arg: 1, scope: !41639, file: !5488, line: 339, type: !41985)
!41990 = !DILocalVariable(name: "len", arg: 2, scope: !41639, file: !5488, line: 339, type: !3869)
!41991 = !{!41989, !41990, !41984}
!41992 = !DILocalVariable(name: "additional", arg: 3, scope: !41642, file: !5488, line: 652, type: !3869)
!41993 = !DILocalVariable(name: "self", arg: 1, scope: !41642, file: !5488, line: 652, type: !5671)
!41994 = !DILocalVariable(name: "len", arg: 2, scope: !41642, file: !5488, line: 652, type: !3869)
!41995 = !DILocalVariable(name: "elem_layout", arg: 4, scope: !41642, file: !5488, line: 652, type: !542)
!41996 = !{!41993, !41994, !41992, !41995}
!41997 = !{!41646, !5489}
!41998 = !DISubroutineType(types: !41997)
!41999 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const &str", baseType: !503, size: 64, align: 64, dwarfAddressSpace: 0)
!42000 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !41646, file: !3290, baseType: !41999, size: 64, align: 64, flags: DIFlagPrivate)
!42001 = !{!42000}
!42002 = !{!3969, !5472}
!42003 = !DISubprogram(name: "non_null<alloc::alloc::Global, &str>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner8non_nullReECsaTqK2fWTXJW_11qlog_dancer", scope: !499, file: !5488, line: 610, type: !41998, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !42002)
!42004 = !{!41903, !5489}
!42005 = !DISubroutineType(types: !42004)
!42006 = !DISubprogram(name: "ptr<alloc::alloc::Global, &str>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner3ptrReECsaTqK2fWTXJW_11qlog_dancer", scope: !499, file: !5488, line: 605, type: !42005, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !42002)
!42007 = !{!41903, !41953}
!42008 = !DISubroutineType(types: !42007)
!42009 = !DISubprogram(name: "ptr<&str, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE3ptrCsaTqK2fWTXJW_11qlog_dancer", scope: !3148, file: !5488, line: 295, type: !42008, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !15494)
!42010 = !{!3149}
!42011 = !DISubroutineType(types: !42010)
!42012 = !DISubprogram(name: "new<&str>", linkageName: "_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecReE3newCsaTqK2fWTXJW_11qlog_dancer", scope: !3149, file: !3896, line: 461, type: !42011, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5473)
!42013 = !DILocation(line: 25, column: 28, scope: !41384)
!42014 = !DILocalVariable(arg: 1, scope: !41654, file: !5739, line: 848, type: !15497)
!42015 = !{!42014}
!42016 = !DITemplateTypeParameter(name: "T", type: !3149)
!42017 = !{!42016}
!42018 = !DILocalVariable(arg: 1, scope: !41657, file: !5739, line: 848, type: !41985)
!42019 = !{null, !41985}
!42020 = !DISubroutineType(types: !42019)
!42021 = !{!42018}
!42022 = !DITemplateTypeParameter(name: "T", type: !3148)
!42023 = !{!42022}
!42024 = !DILocation(line: 24, column: 13, scope: !41384)
!42025 = !DILocation(line: 24, column: 41, scope: !41384)
!42026 = !DILocation(line: 512, column: 24, scope: !41394, inlinedAt: !41395)
!42027 = !DILocation(line: 658, column: 12, scope: !41402, inlinedAt: !41403)
!42028 = !DILocation(line: 662, column: 24, scope: !41402, inlinedAt: !41403)
!42029 = !DILocation(line: 662, column: 37, scope: !41402, inlinedAt: !41403)
!42030 = !DILocation(line: 663, column: 28, scope: !41401, inlinedAt: !41403)
!42031 = !DILocation(line: 1122, column: 16, scope: !41430, inlinedAt: !41454)
!42032 = !DILocation(line: 440, column: 38, scope: !41426, inlinedAt: !41428)
!42033 = !DILocation(line: 28, column: 12, scope: !41458, inlinedAt: !41459)
!42034 = !DILocation(line: 1126, column: 31, scope: !41430, inlinedAt: !41454)
!42035 = !DILocation(line: 90, column: 24, scope: !41439, inlinedAt: !41452)
!42036 = !DILocation(line: 41, column: 11, scope: !41463, inlinedAt: !41465)
!42037 = !DILocation(line: 28, column: 74, scope: !41458, inlinedAt: !41459)
!42038 = !DILocation(line: 29, column: 12, scope: !41456, inlinedAt: !41459)
!42039 = !DILocation(line: 42, column: 12, scope: !41463, inlinedAt: !41465)
!42040 = !DILocation(line: 46, column: 9, scope: !41463, inlinedAt: !41465)
!42041 = !DILocation(line: 28, scope: !41458, inlinedAt: !41459)
!42042 = !DILocation(line: 31, column: 48, scope: !41456, inlinedAt: !41459)
!42043 = !DILocation(line: 210, column: 9, scope: !41473, inlinedAt: !41474)
!42044 = !DILocation(line: 459, column: 32, scope: !41422, inlinedAt: !41428)
!42045 = !DILocation(line: 459, column: 17, scope: !41422, inlinedAt: !41428)
!42046 = !DILocation(line: 460, column: 20, scope: !41422, inlinedAt: !41428)
!42047 = !DILocation(line: 470, column: 17, scope: !41423, inlinedAt: !41428)
!42048 = !DILocation(line: 471, column: 17, scope: !41423, inlinedAt: !41428)
!42049 = !DILocation(line: 461, column: 38, scope: !41422, inlinedAt: !41428)
!42050 = !DILocation(line: 90, column: 24, scope: !41439, inlinedAt: !41484)
!42051 = !DILocation(line: 157, column: 13, scope: !41496, inlinedAt: !41498)
!42052 = !DILocation(line: 463, column: 28, scope: !41420, inlinedAt: !41428)
!42053 = !DILocation(line: 666, column: 50, scope: !41400, inlinedAt: !41403)
!42054 = !DILocation(line: 221, column: 27, scope: !41410, inlinedAt: !41412)
!42055 = !DILocation(line: 667, column: 17, scope: !41399, inlinedAt: !41403)
!42056 = !DILocation(line: 669, column: 13, scope: !41401, inlinedAt: !41403)
!42057 = !DILocation(line: 644, column: 13, scope: !41505, inlinedAt: !41506)
!42058 = !DILocation(line: 646, column: 16, scope: !41505, inlinedAt: !41506)
!42059 = !DILocation(line: 648, column: 77, scope: !41505, inlinedAt: !41506)
!42060 = !DILocation(line: 0, scope: !41505, inlinedAt: !41506)
!42061 = !DILocation(line: 670, column: 26, scope: !41401, inlinedAt: !41403)
!42062 = !DILocation(line: 0, scope: !41402, inlinedAt: !41403)
!42063 = !DILocation(line: 435, column: 15, scope: !2404, inlinedAt: !41510)
!42064 = !DILocation(line: 435, column: 9, scope: !2404, inlinedAt: !41510)
!42065 = !DILocation(line: 0, scope: !2404, inlinedAt: !41510)
!42066 = !DILocation(line: 443, column: 17, scope: !2404, inlinedAt: !41510)
!42067 = !DILocation(line: 443, column: 25, scope: !2402, inlinedAt: !41510)
!42068 = !DILocation(line: 0, scope: !41401, inlinedAt: !41403)
!42069 = !DILocation(line: 436, column: 16, scope: !2404, inlinedAt: !41510)
!42070 = !DILocation(line: 764, column: 9, scope: !2405, inlinedAt: !41512)
!42071 = !DILocation(line: 210, column: 9, scope: !2406, inlinedAt: !41518)
!42072 = !DILocation(line: 444, column: 9, scope: !2404, inlinedAt: !41510)
!42073 = !DILocation(line: 1964, column: 41, scope: !41520, inlinedAt: !41909)
!42074 = !DILocation(line: 36, column: 17, scope: !41379)
!42075 = !DILocation(line: 41, column: 64, scope: !41383)
!42076 = !DILocation(line: 41, column: 9, scope: !41383)
!42077 = !DILocation(line: 18, column: 14, scope: !41524, inlinedAt: !41525)
!42078 = !DILocation(line: 658, column: 12, scope: !41402, inlinedAt: !41565)
!42079 = !DILocation(line: 1122, column: 16, scope: !41430, inlinedAt: !41571)
!42080 = !DILocation(line: 4102, column: 44, scope: !41533, inlinedAt: !41535)
!42081 = !DILocation(line: 512, column: 24, scope: !41394, inlinedAt: !41564)
!42082 = !DILocation(line: 663, column: 28, scope: !41401, inlinedAt: !41565)
!42083 = !DILocation(line: 971, column: 18, scope: !41588, inlinedAt: !41589)
!42084 = !DILocation(line: 1964, column: 41, scope: !41591, inlinedAt: !41592)
!42085 = !DILocation(line: 2223, column: 9, scope: !41546, inlinedAt: !41547)
!42086 = !DILocation(line: 440, column: 38, scope: !41426, inlinedAt: !41568)
!42087 = !DILocation(line: 28, column: 12, scope: !41458, inlinedAt: !41596)
!42088 = !DILocation(line: 1126, column: 31, scope: !41430, inlinedAt: !41571)
!42089 = !DILocation(line: 90, column: 24, scope: !41439, inlinedAt: !41583)
!42090 = !DILocation(line: 41, column: 11, scope: !41463, inlinedAt: !41600)
!42091 = !DILocation(line: 28, column: 74, scope: !41458, inlinedAt: !41596)
!42092 = !DILocation(line: 29, column: 12, scope: !41456, inlinedAt: !41596)
!42093 = !DILocation(line: 42, column: 12, scope: !41463, inlinedAt: !41600)
!42094 = !DILocation(line: 46, column: 9, scope: !41463, inlinedAt: !41600)
!42095 = !DILocation(line: 28, scope: !41458, inlinedAt: !41596)
!42096 = !DILocation(line: 31, column: 48, scope: !41456, inlinedAt: !41596)
!42097 = !DILocation(line: 210, column: 9, scope: !41473, inlinedAt: !41608)
!42098 = !DILocation(line: 459, column: 32, scope: !41422, inlinedAt: !41568)
!42099 = !DILocation(line: 459, column: 17, scope: !41422, inlinedAt: !41568)
!42100 = !DILocation(line: 460, column: 20, scope: !41422, inlinedAt: !41568)
!42101 = !DILocation(line: 461, column: 38, scope: !41422, inlinedAt: !41568)
!42102 = !DILocation(line: 90, column: 24, scope: !41439, inlinedAt: !41618)
!42103 = !DILocation(line: 157, column: 13, scope: !41496, inlinedAt: !41627)
!42104 = !DILocation(line: 463, column: 28, scope: !41420, inlinedAt: !41568)
!42105 = !DILocation(line: 644, column: 13, scope: !41505, inlinedAt: !41586)
!42106 = !DILocation(line: 646, column: 16, scope: !41505, inlinedAt: !41586)
!42107 = !DILocation(line: 670, column: 26, scope: !41401, inlinedAt: !41565)
!42108 = !DILocation(line: 0, scope: !41401, inlinedAt: !41565)
!42109 = !DILocation(line: 3100, column: 19, scope: !41537, inlinedAt: !41538)
!42110 = !DILocation(line: 3105, column: 37, scope: !41537, inlinedAt: !41538)
!42111 = !DILocation(line: 3105, column: 18, scope: !41537, inlinedAt: !41538)
!42112 = !DILocation(line: 616, column: 49, scope: !41552, inlinedAt: !41555)
!42113 = !DILocation(line: 4104, column: 16, scope: !41532, inlinedAt: !41535)
!42114 = !DILocation(line: 672, column: 17, scope: !41642, inlinedAt: !41643)
!42115 = !DILocation(line: 611, column: 9, scope: !41647, inlinedAt: !41652)
!42116 = !DILocation(line: 4113, column: 30, scope: !41532, inlinedAt: !41535)
!42117 = !DILocation(line: 462, column: 9, scope: !41653, inlinedAt: !42013)
!42118 = !DILocation(line: 43, column: 5, scope: !41384)
!42119 = !DILocation(line: 43, column: 6, scope: !41384)
!42120 = !DILocation(line: 848, column: 1, scope: !41657, inlinedAt: !41658)
!42121 = !DILocation(line: 41, column: 72, scope: !41383)
!42122 = !DILocation(line: 42, column: 9, scope: !41383)
!42123 = !DILocation(line: 18, column: 5, scope: !41384)
!42124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>]", file: !3290, size: 128, align: 64, elements: !42287, templateParams: !3895, identifier: "d453d38de448173f9b4fee2c03cbdb84")
!42125 = distinct !DILexicalBlock(scope: !42129, file: !12644, line: 729, column: 9)
!42126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>", scope: !3906, file: !3290, align: 8, flags: DIFlagPublic, elements: !3895, templateParams: !42300, identifier: "e28865992d10961b5401adf1465ae7c3")
!42127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>", scope: !3991, file: !3290, size: 64, align: 64, flags: DIFlagPublic, elements: !42302, templateParams: !7242, identifier: "aeb378e78ee746c3a115a95603df4045")
!42128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Iter<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>", scope: !5449, file: !3290, size: 128, align: 64, flags: DIFlagPublic, elements: !42298, templateParams: !7242, identifier: "a8c4b2e723c6f12094ecc2e2177c8297")
!42129 = distinct !DILexicalBlock(scope: !42130, file: !12644, line: 729, column: 9)
!42130 = distinct !DILexicalBlock(scope: !42131, file: !12644, line: 728, column: 9)
!42131 = distinct !DILexicalBlock(scope: !42132, file: !12644, line: 727, column: 9)
!42132 = distinct !DISubprogram(name: "concat<alloc::borrow::Cow<str>, alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>", linkageName: "_RNvXs0_NtCsexYYUdYSQU6_5alloc5sliceSINtNtB7_3vec3VecINtNtB7_6borrow3CoweEEINtB5_6ConcatBO_E6concatCsaTqK2fWTXJW_11qlog_dancer", scope: !42281, file: !12644, line: 726, type: !42283, scopeLine: 726, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !42304, retainedNodes: !42293)
!42133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !42136, file: !3290, size: 64, align: 64, flags: DIFlagPublic, elements: !42314, templateParams: !42300, identifier: "ca1fee3d415637197df6dcd9bef1ef24")
!42134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !42136, file: !3290, size: 64, align: 64, flags: DIFlagPublic, elements: !3895, templateParams: !42300, identifier: "11a4f62ac852313b68c5f02fcbdcae19")
!42135 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !42136, file: !3290, size: 64, align: 64, elements: !42312, templateParams: !3895, identifier: "9ed3aa2015c77ad0ac1df8d657902df", discriminator: !42315)
!42136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>", scope: !4069, file: !3290, size: 64, align: 64, flags: DIFlagPublic, elements: !42309, templateParams: !3895, identifier: "468ab4fa9cc9f200ef24075f5d7017ac")
!42137 = distinct !DILexicalBlock(scope: !42138, file: !12656, line: 167, column: 25)
!42138 = distinct !DILexicalBlock(scope: !42139, file: !12656, line: 162, column: 17)
!42139 = distinct !DILexicalBlock(scope: !42140, file: !12656, line: 161, column: 17)
!42140 = distinct !DISubprogram(name: "next<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>", linkageName: "_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBU_6borrow3CoweEEENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer", scope: !12657, file: !12656, line: 157, type: !42308, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7242, retainedNodes: !42319)
!42141 = distinct !DISubprogram(name: "iter<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBz_6borrow3CoweEE4iterCsaTqK2fWTXJW_11qlog_dancer", scope: !5505, file: !5504, line: 1039, type: !42326, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7242, retainedNodes: !42327)
!42142 = distinct !DILexicalBlock(scope: !42143, file: !5503, line: 99, column: 13)
!42143 = distinct !DILexicalBlock(scope: !42144, file: !5503, line: 96, column: 9)
!42144 = distinct !DILexicalBlock(scope: !42148, file: !5503, line: 95, column: 9)
!42145 = distinct !DILexicalBlock(scope: !42146, file: !5503, line: 99, column: 13)
!42146 = distinct !DILexicalBlock(scope: !42147, file: !5503, line: 96, column: 9)
!42147 = distinct !DILexicalBlock(scope: !42148, file: !5503, line: 95, column: 9)
!42148 = distinct !DISubprogram(name: "new<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>", linkageName: "_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBT_6borrow3CoweEEE3newCsaTqK2fWTXJW_11qlog_dancer", scope: !42128, file: !5503, line: 94, type: !42326, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7242, declaration: !42331, retainedNodes: !42338)
!42149 = distinct !DISubprogram(name: "into_iter<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>", linkageName: "_RNvXs_NtNtCskKLDkoKarTP_4core5slice4iterRSINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBJ_6borrow3CoweEENtNtNtNtB8_4iter6traits7collect12IntoIterator9into_iterCsaTqK2fWTXJW_11qlog_dancer", scope: !42344, file: !5503, line: 23, type: !42326, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7242, retainedNodes: !42346)
!42150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>, alloc::slice::{impl#2}::concat::{closure_env#0}<alloc::borrow::Cow<str>, alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>>>", scope: !42356, file: !3290, align: 8, elements: !3895, identifier: "3985173ac7957d7d1e7eb312ba56348a")
!42151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<alloc::borrow::Cow<str>, alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>", scope: !42360, file: !3290, align: 8, elements: !3895, identifier: "21090e907578c514108c47ec6f8bf95")
!42152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Map<core::slice::iter::Iter<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>, alloc::slice::{impl#2}::concat::{closure_env#0}<alloc::borrow::Cow<str>, alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>>", scope: !9622, file: !3290, size: 128, align: 64, flags: DIFlagPublic, elements: !42359, templateParams: !42363, identifier: "a7dab94ad6368990a09623b38f959551")
!42153 = distinct !DISubprogram(name: "fold<usize, core::slice::iter::Iter<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>, alloc::slice::{impl#2}::concat::{closure_env#0}<alloc::borrow::Cow<str>, alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>, usize, core::iter::traits::accum::{impl#48}::sum::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>, alloc::slice::{impl#2}::concat::{closure_env#0}<alloc::borrow::Cow<str>, alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>>>>", linkageName: "_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1s_6borrow3CoweEEENCNvXs0_NtB1s_5sliceSB1n_INtB2q_6ConcatB1U_E6concat0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvXsK_NtB3d_5accumjNtB3W_3Sum3sumBN_E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !13085, file: !13084, line: 124, type: !42353, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !42369, retainedNodes: !42366)
!42154 = distinct !DISubprogram(name: "sum<core::iter::adapters::map::Map<core::slice::iter::Iter<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>, alloc::slice::{impl#2}::concat::{closure_env#0}<alloc::borrow::Cow<str>, alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>>, usize>", linkageName: "_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1m_6borrow3CoweEEENCNvXs0_NtB1m_5sliceSB1h_INtB2k_6ConcatB1O_E6concat0ENtNtNtBa_6traits8iterator8Iterator3sumjECsaTqK2fWTXJW_11qlog_dancer", scope: !5720, file: !5714, line: 3663, type: !42375, scopeLine: 3663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !42380, retainedNodes: !42377)
!42155 = distinct !DISubprogram(name: "sum<core::iter::adapters::map::Map<core::slice::iter::Iter<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>, alloc::slice::{impl#2}::concat::{closure_env#0}<alloc::borrow::Cow<str>, alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>>>", linkageName: "_RINvXsK_NtNtNtCskKLDkoKarTP_4core4iter6traits5accumjNtB6_3Sum3sumINtNtNtBa_8adapters3map3MapINtNtNtBc_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1X_6borrow3CoweEEENCNvXs0_NtB1X_5sliceSB1S_INtB2V_6ConcatB2p_E6concat0EECsaTqK2fWTXJW_11qlog_dancer", scope: !42355, file: !42381, line: 51, type: !42375, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !42385, retainedNodes: !42383)
!42156 = distinct !DISubprogram(name: "with_capacity_in<alloc::borrow::Cow<str>, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEE16with_capacity_inCsaTqK2fWTXJW_11qlog_dancer", scope: !964, file: !3896, line: 968, type: !42389, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7240, declaration: !42390, retainedNodes: !42392)
!42157 = distinct !DISubprogram(name: "with_capacity<alloc::borrow::Cow<str>>", linkageName: "_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecINtNtB4_6borrow3CoweEE13with_capacityCsaTqK2fWTXJW_11qlog_dancer", scope: !964, file: !3896, line: 521, type: !42397, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7230, declaration: !42398, retainedNodes: !42400)
!42158 = distinct !DISubprogram(name: "with_capacity_in<alloc::borrow::Cow<str>, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEE16with_capacity_inCsaTqK2fWTXJW_11qlog_dancer", scope: !963, file: !5488, line: 175, type: !42403, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7240, declaration: !42404, retainedNodes: !42406)
!42159 = distinct !DISubprogram(name: "add<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBY_6borrow3CoweEEE3addCsaTqK2fWTXJW_11qlog_dancer", scope: !42127, file: !7486, line: 619, type: !42411, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7242, declaration: !42412, retainedNodes: !42414)
!42160 = distinct !DISubprogram(name: "add<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBH_6borrow3CoweEE3addCsaTqK2fWTXJW_11qlog_dancer", scope: !5508, file: !5506, line: 937, type: !42421, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7242, retainedNodes: !42423)
!42161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<&alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>, usize, usize, alloc::slice::{impl#2}::concat::{closure_env#0}<alloc::borrow::Cow<str>, alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>, core::iter::traits::accum::{impl#48}::sum::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>, alloc::slice::{impl#2}::concat::{closure_env#0}<alloc::borrow::Cow<str>, alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>>>>", scope: !42435, file: !3290, align: 8, elements: !42438, templateParams: !3895, identifier: "f3c763efdd6cdf5840bcccf12eb4355b")
!42162 = distinct !DILexicalBlock(scope: !42165, file: !12656, line: 33, column: 13)
!42163 = distinct !DILexicalBlock(scope: !42165, file: !12656, line: 29, column: 13)
!42164 = distinct !DILexicalBlock(scope: !42165, file: !12656, line: 270, column: 17)
!42165 = distinct !DILexicalBlock(scope: !42166, file: !12656, line: 269, column: 17)
!42166 = distinct !DILexicalBlock(scope: !42169, file: !12656, line: 268, column: 17)
!42167 = distinct !DILexicalBlock(scope: !42169, file: !12656, line: 33, column: 13)
!42168 = distinct !DILexicalBlock(scope: !42169, file: !12656, line: 29, column: 13)
!42169 = distinct !DISubprogram(name: "fold<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>, usize, core::iter::adapters::map::map_fold::{closure_env#0}<&alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>, usize, usize, alloc::slice::{impl#2}::concat::{closure_env#0}<alloc::borrow::Cow<str>, alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>, core::iter::traits::accum::{impl#48}::sum::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>, alloc::slice::{impl#2}::concat::{closure_env#0}<alloc::borrow::Cow<str>, alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>>>>>", linkageName: "_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBV_6borrow3CoweEEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvXs0_NtBV_5sliceSBQ_INtB3i_6ConcatB1n_E6concat0NCINvXsK_NtB1O_5accumjNtB47_3Sum3sumINtB2A_3MapBF_B3a_EE0E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !12657, file: !12656, line: 254, type: !42434, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !42450, retainedNodes: !42448)
!42170 = distinct !DILocation(line: 128, column: 19, scope: !42153, inlinedAt: !42372)
!42171 = distinct !DILocation(line: 0, scope: !42169, inlinedAt: !42170)
!42172 = distinct !DILocation(line: 254, column: 42, scope: !42169, inlinedAt: !42170)
!42173 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_add", scope: !5696, file: !5694, line: 1031, type: !12942, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !3895, retainedNodes: !42453)
!42174 = distinct !DILocation(line: 278, column: 36, scope: !42164, inlinedAt: !42170)
!42175 = distinct !DILocation(line: 0, scope: !42173, inlinedAt: !42174)
!42176 = distinct !DILocation(line: 0, scope: !42167, inlinedAt: !42170)
!42177 = distinct !DISubprogram(name: "eq<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>", linkageName: "_RNvXsd_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBY_6borrow3CoweEEENtNtB9_3cmp9PartialEq2eqCsaTqK2fWTXJW_11qlog_dancer", scope: !12704, file: !7486, line: 1662, type: !42457, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7242, retainedNodes: !42459)
!42178 = distinct !DILocation(line: 44, column: 20, scope: !42167, inlinedAt: !42170)
!42179 = distinct !DILocation(line: 1662, column: 11, scope: !42177, inlinedAt: !42178)
!42180 = distinct !DILocation(line: 1662, column: 18, scope: !42177, inlinedAt: !42178)
!42181 = distinct !DILocation(line: 0, scope: !42166, inlinedAt: !42170)
!42182 = distinct !DILocation(line: 0, scope: !42165, inlinedAt: !42170)
!42183 = distinct !DISubprogram(name: "add<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBY_6borrow3CoweEEE3addCsaTqK2fWTXJW_11qlog_dancer", scope: !42127, file: !7486, line: 619, type: !42411, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7242, declaration: !42412, retainedNodes: !42462)
!42184 = distinct !DILocation(line: 274, column: 67, scope: !42164, inlinedAt: !42170)
!42185 = distinct !DILocation(line: 0, scope: !42183, inlinedAt: !42184)
!42186 = distinct !DISubprogram(name: "{closure#0}<&alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>, usize, usize, alloc::slice::{impl#2}::concat::{closure_env#0}<alloc::borrow::Cow<str>, alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>, core::iter::traits::accum::{impl#48}::sum::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>, alloc::slice::{impl#2}::concat::{closure_env#0}<alloc::borrow::Cow<str>, alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>>>>", linkageName: "_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB10_6borrow3CoweEEjjNCNvXs0_NtB10_5sliceSBV_INtB1Z_6ConcatB1s_E6concat0NCINvXsK_NtNtB8_6traits5accumjNtB2P_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1R_EE0E0CsaTqK2fWTXJW_11qlog_dancer", scope: !42435, file: !13084, line: 88, type: !42466, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !42473, retainedNodes: !42470)
!42187 = distinct !DILocation(line: 274, column: 27, scope: !42164, inlinedAt: !42170)
!42188 = distinct !DILocation(line: 0, scope: !42186, inlinedAt: !42187)
!42189 = distinct !DISubprogram(name: "{closure#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>, alloc::slice::{impl#2}::concat::{closure_env#0}<alloc::borrow::Cow<str>, alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>>>", linkageName: "_RNCINvXsK_NtNtNtCskKLDkoKarTP_4core4iter6traits5accumjNtB8_3Sum3sumINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1Z_6borrow3CoweEEENCNvXs0_NtB1Z_5sliceSB1U_INtB2X_6ConcatB2r_E6concat0EE0CsaTqK2fWTXJW_11qlog_dancer", scope: !42356, file: !42381, line: 55, type: !42477, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !42385, retainedNodes: !42480)
!42190 = distinct !DILocation(line: 88, column: 21, scope: !42186, inlinedAt: !42187)
!42191 = distinct !DILocation(line: 0, scope: !42189, inlinedAt: !42190)
!42192 = distinct !{!42192, !42484}
!42193 = distinct !DILocation(line: 177, column: 20, scope: !42158, inlinedAt: !42407)
!42194 = distinct !DILocation(line: 0, scope: !2404, inlinedAt: !42193)
!42195 = distinct !DILocation(line: 439, column: 50, scope: !2403, inlinedAt: !42193)
!42196 = distinct !DILocation(line: 0, scope: !2405, inlinedAt: !42195)
!42197 = distinct !DILocation(line: 434, column: 42, scope: !2404, inlinedAt: !42193)
!42198 = distinct !DILocation(line: 0, scope: !2402, inlinedAt: !42193)
!42199 = distinct !DILocation(line: 0, scope: !2403, inlinedAt: !42193)
!42200 = distinct !DILocation(line: 763, column: 28, scope: !2405, inlinedAt: !42195)
!42201 = distinct !DILocation(line: 439, column: 21, scope: !2403, inlinedAt: !42193)
!42202 = distinct !DILocation(line: 0, scope: !2406, inlinedAt: !42201)
!42203 = distinct !DISubprogram(name: "eq<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>", linkageName: "_RNvXsd_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBY_6borrow3CoweEEENtNtB9_3cmp9PartialEq2eqCsaTqK2fWTXJW_11qlog_dancer", scope: !12704, file: !7486, line: 1662, type: !42457, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7242, retainedNodes: !42494)
!42204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[alloc::borrow::Cow<str>]", file: !3290, size: 128, align: 64, elements: !42504, templateParams: !3895, identifier: "34bb8e21e5c0207dd08b87ecb1ab5295")
!42205 = distinct !DISubprogram(name: "extend_from_slice<alloc::borrow::Cow<str>, alloc::alloc::Global>", linkageName: "_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer", scope: !964, file: !3896, line: 3604, type: !42501, scopeLine: 3604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7240, declaration: !42505, retainedNodes: !42507)
!42206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "PhantomData<&alloc::borrow::Cow<str>>", scope: !3906, file: !3290, align: 8, flags: DIFlagPublic, elements: !3895, templateParams: !42519, identifier: "e012f101c9711fc9ad3cdf70931a112f")
!42207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Iter<alloc::borrow::Cow<str>>", scope: !5449, file: !3290, size: 128, align: 64, flags: DIFlagPublic, elements: !42516, templateParams: !7230, identifier: "31f394b54c52a6afd2a1117c946be2ae")
!42208 = distinct !DISubprogram(name: "iter<alloc::borrow::Cow<str>>", linkageName: "_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc6borrow3CoweE4iterCsaTqK2fWTXJW_11qlog_dancer", scope: !5505, file: !5504, line: 1039, type: !42512, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7230, retainedNodes: !42520)
!42209 = distinct !DILexicalBlock(scope: !42210, file: !5503, line: 99, column: 13)
!42210 = distinct !DILexicalBlock(scope: !42211, file: !5503, line: 96, column: 9)
!42211 = distinct !DILexicalBlock(scope: !42212, file: !5503, line: 95, column: 9)
!42212 = distinct !DISubprogram(name: "new<alloc::borrow::Cow<str>>", linkageName: "_RNvMs4_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_4IterINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEE3newCsaTqK2fWTXJW_11qlog_dancer", scope: !42207, file: !5503, line: 94, type: !42512, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7230, declaration: !42524, retainedNodes: !42528)
!42213 = distinct !DISubprogram(name: "add<alloc::borrow::Cow<str>>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrOINtNtCsexYYUdYSQU6_5alloc6borrow3CoweE3addCsaTqK2fWTXJW_11qlog_dancer", scope: !5508, file: !5506, line: 937, type: !12944, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7230, retainedNodes: !42535)
!42214 = distinct !{!42214, i1 true, !"_RNvXs1_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecINtNtB9_6borrow3CoweEEINtB5_10SpecExtendRBU_INtNtNtCskKLDkoKarTP_4core5slice4iter4IterBU_EE11spec_extendCsaTqK2fWTXJW_11qlog_dancer"}
!42215 = distinct !{!42215, !42214, !"_RNvXs1_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecINtNtB9_6borrow3CoweEEINtB5_10SpecExtendRBU_INtNtNtCskKLDkoKarTP_4core5slice4iter4IterBU_EE11spec_extendCsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!42216 = distinct !DISubprogram(name: "spec_extend<alloc::borrow::Cow<str>, core::slice::iter::Iter<alloc::borrow::Cow<str>>, alloc::alloc::Global>", linkageName: "_RNvXs1_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecINtNtB9_6borrow3CoweEEINtB5_10SpecExtendRBU_INtNtNtCskKLDkoKarTP_4core5slice4iter4IterBU_EE11spec_extendCsaTqK2fWTXJW_11qlog_dancer", scope: !15500, file: !12903, line: 45, type: !42543, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !42547, retainedNodes: !42545)
!42217 = distinct !DILocation(line: 3605, column: 14, scope: !42205, inlinedAt: !42508)
!42218 = distinct !DILocation(line: 0, scope: !42216, inlinedAt: !42217)
!42219 = distinct !{!42219, i1 true, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtB8_6borrow3CoweEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB1J_5slice4iter4IterBT_EEE11spec_extendCsaTqK2fWTXJW_11qlog_dancer"}
!42220 = distinct !{!42220, !42219, !"_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtB8_6borrow3CoweEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB1J_5slice4iter4IterBT_EEE11spec_extendCsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!42221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Cloned<core::slice::iter::Iter<alloc::borrow::Cow<str>>>", scope: !15501, file: !3290, size: 128, align: 64, flags: DIFlagPublic, elements: !42553, templateParams: !42554, identifier: "73efd99adead7109457e34eefa7de636")
!42222 = distinct !DISubprogram(name: "spec_extend<alloc::borrow::Cow<str>, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<alloc::borrow::Cow<str>>>, alloc::alloc::Global>", linkageName: "_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtB8_6borrow3CoweEEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB1J_5slice4iter4IterBT_EEE11spec_extendCsaTqK2fWTXJW_11qlog_dancer", scope: !13086, file: !12903, line: 26, type: !42551, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !42558, retainedNodes: !42556)
!42223 = distinct !DILocation(line: 46, column: 14, scope: !42216, inlinedAt: !42217)
!42224 = distinct !DILocation(line: 0, scope: !42222, inlinedAt: !42223)
!42225 = distinct !{!42225, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_6borrow3CoweEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB1r_5slice4iter4IterBG_EEECsaTqK2fWTXJW_11qlog_dancer"}
!42226 = distinct !{!42226, !42225, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_6borrow3CoweEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB1r_5slice4iter4IterBG_EEECsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!42227 = distinct !DILexicalBlock(scope: !42228, file: !3896, line: 4133, column: 17)
!42228 = distinct !DILexicalBlock(scope: !42233, file: !3896, line: 4132, column: 17)
!42229 = distinct !DILexicalBlock(scope: !42230, file: !5633, line: 65, column: 114)
!42230 = distinct !DILexicalBlock(scope: !42231, file: !5633, line: 65, column: 114)
!42231 = distinct !DILexicalBlock(scope: !42232, file: !5633, line: 61, column: 21)
!42232 = distinct !DILexicalBlock(scope: !42233, file: !5633, line: 59, column: 13)
!42233 = distinct !DILexicalBlock(scope: !42234, file: !3896, line: 4123, column: 40)
!42234 = distinct !DILexicalBlock(scope: !42235, file: !3896, line: 4122, column: 9)
!42235 = distinct !DISubprogram(name: "extend_trusted<alloc::borrow::Cow<str>, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<alloc::borrow::Cow<str>>>>", linkageName: "_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtB8_6borrow3CoweEE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB1r_5slice4iter4IterBG_EEECsaTqK2fWTXJW_11qlog_dancer", scope: !964, file: !3896, line: 4121, type: !42551, scopeLine: 4121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !42564, declaration: !42565, retainedNodes: !42581)
!42236 = distinct !DILocation(line: 27, column: 14, scope: !42222, inlinedAt: !42223)
!42237 = distinct !DILocation(line: 0, scope: !42235, inlinedAt: !42236)
!42238 = distinct !DISubprogram(name: "as_mut_ptr<alloc::borrow::Cow<str>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CoweEE10as_mut_ptrCsaTqK2fWTXJW_11qlog_dancer", scope: !964, file: !3896, line: 2049, type: !7248, scopeLine: 2049, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7240, declaration: !7249, retainedNodes: !42583)
!42239 = distinct !DILocation(line: 4132, column: 32, scope: !42233, inlinedAt: !42236)
!42240 = distinct !DILocation(line: 0, scope: !42238, inlinedAt: !42239)
!42241 = distinct !DILocation(line: 4121, column: 34, scope: !42235, inlinedAt: !42236)
!42242 = distinct !DILocation(line: 0, scope: !42234, inlinedAt: !42236)
!42243 = distinct !DILocation(line: 0, scope: !42233, inlinedAt: !42236)
!42244 = distinct !DILocation(line: 4130, column: 18, scope: !42233, inlinedAt: !42236)
!42245 = distinct !DILocation(line: 0, scope: !2462, inlinedAt: !42244)
!42246 = distinct !DILocation(line: 1461, column: 18, scope: !2462, inlinedAt: !42244)
!42247 = distinct !DILocation(line: 0, scope: !2463, inlinedAt: !42246)
!42248 = distinct !DILocation(line: 341, column: 29, scope: !2463, inlinedAt: !42246)
!42249 = distinct !DILocation(line: 0, scope: !2464, inlinedAt: !42248)
!42250 = distinct !DILocation(line: 670, column: 17, scope: !2464, inlinedAt: !42248)
!42251 = distinct !DILocation(line: 0, scope: !2465, inlinedAt: !42250)
!42252 = distinct !DILocation(line: 339, column: 27, scope: !2463, inlinedAt: !42246)
!42253 = distinct !{!42253, i1 true, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CoweEE7reserveCsaTqK2fWTXJW_11qlog_dancer"}
!42254 = distinct !{!42254, !42253, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtB6_6borrow3CoweEE7reserveCsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!42255 = distinct !DILocation(line: 764, column: 56, scope: !2465, inlinedAt: !42250)
!42256 = distinct !DILocation(line: 0, scope: !2466, inlinedAt: !42255)
!42257 = distinct !DILocation(line: 764, column: 27, scope: !2465, inlinedAt: !42250)
!42258 = distinct !DILocation(line: 0, scope: !2467, inlinedAt: !42257)
!42259 = distinct !DISubprogram(name: "new", linkageName: "_RNvMNtNtCsexYYUdYSQU6_5alloc3vec15set_len_on_dropNtB2_12SetLenOnDrop3new", scope: !516, file: !5709, line: 13, type: !5711, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !3895, declaration: !5712, retainedNodes: !42586)
!42260 = distinct !DILocation(line: 4133, column: 37, scope: !42228, inlinedAt: !42236)
!42261 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, alloc::borrow::Cow<str>>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner8non_nullINtNtB8_6borrow3CoweEECsaTqK2fWTXJW_11qlog_dancer", scope: !499, file: !5488, line: 610, type: !7252, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7256, declaration: !7257)
!42262 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, alloc::borrow::Cow<str>>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner3ptrINtNtB8_6borrow3CoweEECsaTqK2fWTXJW_11qlog_dancer", scope: !499, file: !5488, line: 605, type: !7259, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7256, declaration: !7260)
!42263 = distinct !DISubprogram(name: "ptr<alloc::borrow::Cow<str>, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEE3ptrCsaTqK2fWTXJW_11qlog_dancer", scope: !963, file: !5488, line: 295, type: !7263, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !7240, declaration: !7264)
!42264 = distinct !DILocation(line: 2052, column: 18, scope: !42238, inlinedAt: !42239)
!42265 = distinct !DILocation(line: 296, column: 20, scope: !42263, inlinedAt: !42264)
!42266 = distinct !DILocation(line: 606, column: 14, scope: !42262, inlinedAt: !42265)
!42267 = distinct !DILocation(line: 0, scope: !42228, inlinedAt: !42236)
!42268 = distinct !DILocation(line: 0, scope: !42259, inlinedAt: !42260)
!42269 = distinct !DILocation(line: 0, scope: !42227, inlinedAt: !42236)
!42270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<alloc::borrow::Cow<str>, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<alloc::borrow::Cow<str>>>>", scope: !5716, file: !3290, size: 192, align: 64, elements: !42590, templateParams: !3895, identifier: "ac13437fb0dc271cdae6384d9f0e9621")
!42271 = distinct !DISubprogram(name: "for_each<core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<alloc::borrow::Cow<str>>>, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<alloc::borrow::Cow<str>, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<alloc::borrow::Cow<str>>>>>", linkageName: "_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtB1s_3vecINtB2R_3VecB1n_E14extend_trustedB3_E0ECsaTqK2fWTXJW_11qlog_dancer", scope: !5720, file: !5714, line: 877, type: !42592, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !42597, retainedNodes: !42594)
!42272 = distinct !DILocation(line: 4134, column: 26, scope: !42227, inlinedAt: !42236)
!42273 = distinct !DILocation(line: 0, scope: !42271, inlinedAt: !42272)
!42274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "{closure_env#0}<alloc::borrow::Cow<str>, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<alloc::borrow::Cow<str>, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<alloc::borrow::Cow<str>>>>>", scope: !5722, file: !3290, size: 192, align: 64, elements: !42602, templateParams: !3895, identifier: "cb6f5c29178f82736d070ca7fd26495")
!42275 = distinct !DISubprogram(name: "call<alloc::borrow::Cow<str>, alloc::vec::{impl#22}::extend_trusted::{closure_env#0}<alloc::borrow::Cow<str>, alloc::alloc::Global, core::iter::adapters::cloned::Cloned<core::slice::iter::Iter<alloc::borrow::Cow<str>>>>>", linkageName: "_RINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8for_each4callINtNtCsexYYUdYSQU6_5alloc6borrow3CoweENCINvMsk_NtB1i_3vecINtB1Y_3VecB1d_E14extend_trustedINtNtNtBa_8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterB1d_EEE0ECsaTqK2fWTXJW_11qlog_dancer", scope: !5721, file: !5714, line: 883, type: !42600, scopeLine: 883, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4, templateParams: !42605, retainedNodes: !42603)
!42276 = distinct !DILocation(line: 887, column: 23, scope: !42271, inlinedAt: !42272)
!42277 = distinct !DILocation(line: 0, scope: !42275, inlinedAt: !42276)
!42278 = distinct !DILocation(line: 0, scope: !42271, inlinedAt: !42272)
!42279 = distinct !{!42279, i1 true, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtB1s_3vecINtB2R_3VecB1n_E14extend_trustedB3_E0ECsaTqK2fWTXJW_11qlog_dancer"}
!42280 = distinct !{!42280, !42279, !"_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtBc_5slice4iter4IterINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvMsk_NtB1s_3vecINtB2R_3VecB1n_E14extend_trustedB3_E0ECsaTqK2fWTXJW_11qlog_dancer: argument 0"}
!42281 = !DINamespace(name: "{impl#2}", scope: !12645)
!42282 = !{!964, !42124}
!42283 = !DISubroutineType(types: !42282)
!42284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64, align: 64, dwarfAddressSpace: 0)
!42285 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !42124, file: !3290, baseType: !42284, size: 64, align: 64)
!42286 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !42124, file: !3290, baseType: !3869, size: 64, align: 64, offset: 64)
!42287 = !{!42285, !42286}
!42288 = !DILocalVariable(name: "slice", arg: 1, scope: !42132, file: !12644, line: 726, type: !42124)
!42289 = !DILocalVariable(name: "size", scope: !42131, file: !12644, line: 727, type: !3869, align: 64)
!42290 = !DILocalVariable(name: "result", scope: !42130, file: !12644, line: 728, type: !964, align: 64)
!42291 = !DILocalVariable(name: "iter", scope: !42129, file: !12644, line: 729, type: !42128, align: 64)
!42292 = !DILocalVariable(name: "v", scope: !42125, file: !12644, line: 729, type: !12936, align: 64)
!42293 = !{!42288, !42289, !42290, !42291, !42292}
!42294 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !42128, file: !3290, baseType: !42127, size: 64, align: 64, flags: DIFlagPrivate)
!42295 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>", baseType: !964, size: 64, align: 64, dwarfAddressSpace: 0)
!42296 = !DIDerivedType(tag: DW_TAG_member, name: "end_or_len", scope: !42128, file: !3290, baseType: !42295, size: 64, align: 64, offset: 64, flags: DIFlagPrivate)
!42297 = !DIDerivedType(tag: DW_TAG_member, name: "_marker", scope: !42128, file: !3290, baseType: !42126, align: 8, offset: 128, flags: DIFlagPrivate)
!42298 = !{!42294, !42296, !42297}
!42299 = !DITemplateTypeParameter(name: "T", type: !12936)
!42300 = !{!42299}
!42301 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !42127, file: !3290, baseType: !42295, size: 64, align: 64, flags: DIFlagPrivate)
!42302 = !{!42301}
!42303 = !DITemplateTypeParameter(name: "V", type: !964)
!42304 = !{!7229, !42303}
!42305 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::iter::Iter<alloc::vec::Vec<alloc::borrow::Cow<str>, alloc::alloc::Global>>", baseType: !42128, size: 64, align: 64, dwarfAddressSpace: 0)
!42306 = !DILocalVariable(name: "self", arg: 1, scope: !42140, file: !12656, line: 157, type: !42305)
!42307 = !{!42136, !42305}
end_hunk_1
