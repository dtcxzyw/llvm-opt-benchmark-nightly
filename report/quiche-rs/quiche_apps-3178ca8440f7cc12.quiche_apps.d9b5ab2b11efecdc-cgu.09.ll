Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_apps-3178ca8440f7cc12.quiche_apps.d9b5ab2b11efecdc-cgu.09?download=true
inline.NumInlined: 280
inline.NumDeleted: 125
begin_hunk_0_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE9from_iterCsiGRwBGCeC5s_11quiche_apps:bb.a

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i.i
    #dbg_value(ptr %.val.i.i, !5735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5417)
    #dbg_value(ptr %.val.i.i, !5747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5420)
    #dbg_value(ptr %.val.i.i, !5730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5422)
    #dbg_value(i64 poison, !5735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5417)
    #dbg_value(i64 poison, !5747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5420)
    #dbg_value(i64 poison, !5730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5422)
    #dbg_value(i64 %i.ah, !5745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5417)
    #dbg_value(i64 %i.ah, !5750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5420)
    #dbg_value(i64 %i.ah, !5705, !DIExpression(), !5424)
    #dbg_value(i64 %i.ah, !5731, !DIExpression(), !5422)
    #dbg_value(i64 %i.k, !5745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5417)
    #dbg_value(i64 %i.k, !5750, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5420)
    #dbg_value(i64 %i.k, !5704, !DIExpression(), !5424)
  %i.ai = icmp ult i64 %i.k, %i.ah, !dbg !5867
    #dbg_value(i64 %.val13.i.i, !5735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5417)
    #dbg_value(i64 %.val13.i.i, !5747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5420)
    #dbg_value(i64 %.val13.i.i, !5730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5422)
    #dbg_value(!DIArgList(i64 %i.k, i64 %i.ah), !5751, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !5420)
    #dbg_value(!DIArgList(i64 %i.k, i64 %i.ah), !5732, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !5422)
  br i1 %i.ai, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i, label %.lr.ph.split.i.i.i, !dbg !5867

bb.f:                                             ; preds = %.loopexit.i.i.i
  %i.aj = sub nuw i64 %i.ah, %i.p, !dbg !5885     ; 2 uses
    #dbg_value(i64 %i.aj, !5698, !DIExpression(), !5440)
    #dbg_value(i64 %i.aj, !5745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5442)
    #dbg_value(i64 %i.aj, !5750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5444)
    #dbg_value(i64 %i.aj, !5705, !DIExpression(), !5446)
    #dbg_value(i64 %i.aj, !5731, !DIExpression(), !5448)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.aj), !5699, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5449)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.aj), !5761, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5455)
    #dbg_value(i64 %i.p, !5699, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5449)
    #dbg_value(i64 %i.p, !5761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5455)
    #dbg_value(ptr poison, !5774, !DIExpression(), !5456)
    #dbg_value(i64 %i.p, !5704, !DIExpression(), !5407)
    #dbg_value(i64 %i.p, !5732, !DIExpression(), !5410)
    #dbg_value(ptr %i.m, !5730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5410)
    #dbg_value(i64 4, !5730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5410)
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.aj, !dbg !5886
    #dbg_value(ptr %i.ak, !5699, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5449)
    #dbg_value(ptr %i.ak, !5761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5455)
    #dbg_value(ptr %i.m, !5766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5455)
    #dbg_value(i64 %i.p, !5766, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5455)
    #dbg_value(ptr poison, !5775, !DIExpression(), !5457)
    #dbg_value(i64 %i.p, !5767, !DIExpression(), !5458)
    #dbg_value(i64 %i.p, !5780, !DIExpression(), !5462)
    #dbg_value(i64 %i.p, !5786, !DIExpression(), !5463)
    #dbg_value(ptr %i.ak, !5784, !DIExpression(), !5462)
    #dbg_value(ptr %i.m, !5785, !DIExpression(), !5462)
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.m, i64 %i.p), !dbg !5887, !noalias !5790
  %i.al = icmp eq i32 %bcmp.i.i.i, 0, !dbg !5887
  br i1 %i.al, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.e, !dbg !5888

_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.f
    #dbg_value(ptr %.val.i.i, !5673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5378)
    #dbg_value(ptr %.val.i.i, !5679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5381)
    #dbg_value(ptr %.val.i.i, !5682, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5386)
    #dbg_value(i64 %i.aj, !5674, !DIExpression(), !5464)
    #dbg_value(i64 %i.aj, !5680, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5381)
    #dbg_value(i64 %i.aj, !5683, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5386)
    #dbg_value(i64 %i.ah, !5675, !DIExpression(), !5464)
  %i.am = load i64, ptr %1, align 8, !dbg !5889, !alias.scope !5678, !noundef !593 ; 2 uses
    #dbg_value(i64 %i.am, !5680, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5381)
    #dbg_value(i64 %i.am, !5683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5386)
    #dbg_value(ptr %.val.i.i, !5684, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5465)
    #dbg_value(i64 poison, !5684, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5465)
  %i.an = sub nuw i64 %i.aj, %i.am, !dbg !5890
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.am), !5676, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5466)
    #dbg_value(i64 %i.an, !5676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5466)
  store i64 %i.ah, ptr %1, align 8, !dbg !5891, !alias.scope !5678
  br label %select.unfold, !dbg !5892

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i: ; preds = %bb.e, %.loopexit54.i.i.i, %bb.b
    #dbg_value(ptr %1, !5791, !DIExpression(), !5470)
  store i8 1, ptr %i.d, align 1, !dbg !5893, !alias.scope !5795
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !5894
  %i.ap = load i8, ptr %i.ao, align 8, !dbg !5894, !range !1982, !alias.scope !5795, !noundef !593
  %i.aq = trunc nuw i8 %i.ap to i1, !dbg !5894
  %.pre.i14.i.i = load i64, ptr %1, align 8, !dbg !5895, !alias.scope !5795 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre13.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !5896, !alias.scope !5795 ; 2 uses
  %.not.i15.i.i = icmp ne i64 %.pre13.i.i.i, %.pre.i14.i.i
  %or.cond.not.i.i.i = select i1 %i.aq, i1 true, i1 %.not.i15.i.i, !dbg !5894
  %i.ar = sub nuw i64 %.pre13.i.i.i, %.pre.i14.i.i, !dbg !5894
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %bb.l, !dbg !5897

select.unfold:                                    ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.an, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.ar, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i ], !dbg !5898
  %.pn = phi i64 [ %i.am, %_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i14.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i ]
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.pn), !5638, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5796)
    #dbg_value(i64 %.sroa.4.1.i.i, !5638, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5796)
    #dbg_value(i64 0, !5639, !DIExpression(), !5797)
    #dbg_value(i64 4, !5640, !DIExpression(), !5798)
    #dbg_value(i64 4, !5653, !DIExpression(), !5799)
    #dbg_value(i64 4, !5648, !DIExpression(), !5800)
    #dbg_value(i64 4, !5656, !DIExpression(), !5801)
    #dbg_value(i64 4, !1842, !DIExpression(), !5474)
    #dbg_value(i64 4, !1863, !DIExpression(), !5476)
    #dbg_declare(ptr poison, !1846, !DIExpression(), !5477)
    #dbg_value(i64 8, !1847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5474)
    #dbg_value(i64 8, !1866, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5476)
    #dbg_value(i64 16, !1847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5474)
    #dbg_value(i64 16, !1866, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5476)
    #dbg_value(i64 0, !1865, !DIExpression(), !5476)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5899
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !5899
  %i.as = load i64, ptr %i.a, align 8, !dbg !5899, !range !1868, !noundef !593
  %i.at = trunc nuw i64 %i.as to i1, !dbg !5900
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !5901
  %i.av = load i64, ptr %i.au, align 8, !dbg !5901, !range !1869, !noundef !593 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5901 ; 2 uses
  br i1 %i.at, label %bb.g, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiGRwBGCeC5s_11quiche_apps.exit, !dbg !5900, !prof !1744

bb.g:                                             ; preds = %select.unfold
  %i.ax = load i64, ptr %i.aw, align 8, !dbg !5902
    #dbg_value(i64 %i.av, !1849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5478)
    #dbg_value(i64 %i.ax, !1849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5478)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.av, i64 %i.ax) #19, !dbg !5903
  unreachable, !dbg !5903

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %select.unfold
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn, !dbg !5904
    #dbg_value(ptr %.sroa.0.1.i.i, !5638, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5796)
  %i.ay = load ptr, ptr %i.aw, align 8, !dbg !5905, !nonnull !593, !noundef !593 ; 5 uses
    #dbg_value(i64 %i.av, !1848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5479)
    #dbg_value(ptr %i.ay, !1848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5479)
    #dbg_value(ptr poison, !1864, !DIExpression(), !5480)
  %i.az = icmp ugt i64 %i.av, 3, !dbg !5906
    #dbg_value(i1 true, !1872, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5482)
  tail call void @llvm.assume(i1 %i.az), !dbg !5907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5908
    #dbg_value(i64 %i.av, !5641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5802)
    #dbg_value(ptr %i.ay, !5641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5802)
    #dbg_value(i64 0, !5641, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5802)
    #dbg_value(ptr %i.ay, !5803, !DIExpression(), !5807)
    #dbg_value(ptr %.sroa.0.1.i.i, !5804, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5807)
    #dbg_value(i64 %.sroa.4.1.i.i, !5804, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5807)
  store ptr %.sroa.0.1.i.i, ptr %i.ay, align 8, !dbg !5909, !captures !2063
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8, !dbg !5909
  store i64 %.sroa.4.1.i.i, ptr %i.ba, align 8, !dbg !5909
    #dbg_value(i64 1, !5641, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !5802)
  store i64 %i.av, ptr %i.c, align 8, !dbg !5910
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !5910 ; 2 uses
  store ptr %i.ay, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !5910
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !5910 ; 4 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !5910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false), !dbg !5911
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5808), !dbg !5912
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5809), !dbg !5912
    #dbg_value(ptr %i.c, !5810, !DIExpression(), !5489)
    #dbg_declare(ptr %i.b, !5813, !DIExpression(), !5490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5816), !dbg !5913
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5817), !dbg !5913
    #dbg_value(ptr %i.c, !5818, !DIExpression(), !5499)
    #dbg_value(ptr %i.c, !5826, !DIExpression(), !5502)
    #dbg_value(ptr %i.c, !5828, !DIExpression(), !5505)
    #dbg_value(ptr %i.c, !5830, !DIExpression(), !5508)
    #dbg_value(ptr %i.c, !5832, !DIExpression(), !5511)
    #dbg_value(ptr %i.c, !5828, !DIExpression(), !5513)
    #dbg_declare(ptr %i.b, !5821, !DIExpression(), !5514)
    #dbg_value(i64 16, !5835, !DIExpression(), !5519)
    #dbg_value(i64 16, !5835, !DIExpression(), !5522)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  %.promoted.i.i = load i8, ptr %i.bb, align 1, !alias.scope !5842
  %.promoted24.i.i = load i64, ptr %i.b, align 8, !alias.scope !5843 ; 4 uses
  %i.bc = trunc nuw i8 %.promoted.i.i to i1, !dbg !5914
  br i1 %i.bc, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsiGRwBGCeC5s_11quiche_apps.exit, label %.lr.ph.i.i, !dbg !5914

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiGRwBGCeC5s_11quiche_apps.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.bd, align 8, !alias.scope !5842, !nonnull !593, !noundef !593 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val13.i.i.i.i = load i64, ptr %i.be, align 8, !alias.scope !5842, !noundef !593 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !5844, !noundef !593 ; 8 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.bg, %.val13.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bj = load i8, ptr %i.bi, align 8, !alias.scope !5843 ; 2 uses
  %i.bk = zext nneg i8 %i.bj to i64               ; 4 uses
  %i.bl = icmp ult i8 %i.bj, 5
  %i.bm = getelementptr i8, ptr %i.bh, i64 %i.bk
  %i.bn = getelementptr i8, ptr %i.bm, i64 -1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bp = load i8, ptr %i.bo, align 8, !range !1982, !alias.scope !5843
  %i.bq = trunc nuw i8 %i.bp to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre13.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !5843 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.promoted28.i.i = load i64, ptr %i.br, align 8, !alias.scope !5844
  br label %.lr.ph.split.i.i, !dbg !5915

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %.not.i15.i.i.us.i.i = icmp ne i64 %.pre13.i.i.i.i.i, %.promoted24.i.i
  %or.cond.not.i.i.i.us.i.i = select i1 %i.bq, i1 true, i1 %.not.i15.i.i.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5845), !dbg !5916
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5846), !dbg !5917
    #dbg_value(ptr poison, !5673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5535)
    #dbg_value(i64 poison, !5673, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5847), !dbg !5918
    #dbg_value(ptr %i.bd, !5689, !DIExpression(), !5536)
    #dbg_value(i64 0, !5701, !DIExpression(), !5541)
    #dbg_value(i64 0, !5729, !DIExpression(), !5543)
    #dbg_value(ptr %.val.i.i.i.i, !5735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5544)
    #dbg_value(ptr %.val.i.i.i.i, !5747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5545)
    #dbg_value(ptr %.val.i.i.i.i, !5730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5547)
    #dbg_value(i64 poison, !5735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5544)
    #dbg_value(i64 poison, !5747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5545)
    #dbg_value(i64 poison, !5730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5547)
    #dbg_value(i64 poison, !5745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5544)
    #dbg_value(i64 poison, !5750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5545)
    #dbg_value(i64 poison, !5705, !DIExpression(), !5548)
    #dbg_value(i64 poison, !5731, !DIExpression(), !5547)
    #dbg_value(i64 %i.bg, !5745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5544)
    #dbg_value(i64 %i.bg, !5750, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5545)
    #dbg_value(i64 %i.bg, !5704, !DIExpression(), !5548)
    #dbg_value(ptr %i.b, !5791, !DIExpression(), !5550)
  br i1 %or.cond.not.i.i.i.us.i.i, label %._crit_edge.split.us.split.us.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsiGRwBGCeC5s_11quiche_apps.exit

._crit_edge.split.us.split.us.i.i:                ; preds = %.lr.ph.split.us.i.i
  %.sroa.0.1.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.promoted24.i.i
  %i.bs = sub nuw i64 %.pre13.i.i.i.i.i, %.promoted24.i.i
    #dbg_value(ptr %i.ay, !5848, !DIExpression(), !5553)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 16, !dbg !5919
    #dbg_value(ptr %i.bt, !5851, !DIExpression(), !5556)
    #dbg_value(ptr %.sroa.0.1.i.i.us.i.i, !5852, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5556)
    #dbg_value(i64 poison, !5852, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5556)
  store ptr %.sroa.0.1.i.i.us.i.i, ptr %i.bt, align 8, !dbg !5920, !noalias !5843, !captures !2063
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ay, i64 24, !dbg !5920
  store i64 %i.bs, ptr %i.bu, align 8, !dbg !5920, !noalias !5843
    #dbg_value(i64 2, !5833, !DIExpression(), !5511)
  store i64 2, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !5921, !alias.scope !5854
    #dbg_value(ptr %i.b, !5662, !DIExpression(), !5557)
    #dbg_value(ptr %i.b, !5669, !DIExpression(), !5558)
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsiGRwBGCeC5s_11quiche_apps.exit, !dbg !5914

.lr.ph.split.i.i:                                 ; preds = %.noexc21, %.lr.ph.split.preheader.i.i
  %i.bv = phi i64 [ %i.cr, %.noexc21 ], [ %.promoted28.i.i, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %.lcssa222627.i.i = phi i64 [ %.lcssa2225.i.i, %.noexc21 ], [ %.promoted24.i.i, %.lr.ph.split.preheader.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5845), !dbg !5916
  call void @llvm.experimental.noalias.scope.decl(metadata !5846), !dbg !5917
    #dbg_value(ptr poison, !5673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5535)
    #dbg_value(i64 poison, !5673, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5535)
  call void @llvm.experimental.noalias.scope.decl(metadata !5847), !dbg !5918
    #dbg_value(ptr %i.bd, !5689, !DIExpression(), !5536)
    #dbg_value(i64 0, !5701, !DIExpression(), !5541)
    #dbg_value(i64 0, !5729, !DIExpression(), !5543)
    #dbg_value(ptr %.val.i.i.i.i, !5735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5544)
    #dbg_value(ptr %.val.i.i.i.i, !5747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5545)
    #dbg_value(ptr %.val.i.i.i.i, !5730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5547)
    #dbg_value(i64 poison, !5735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5544)
    #dbg_value(i64 poison, !5747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5545)
    #dbg_value(i64 poison, !5730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5547)
    #dbg_value(i64 %i.bv, !5745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5544)
    #dbg_value(i64 %i.bv, !5750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5545)
    #dbg_value(i64 %i.bv, !5705, !DIExpression(), !5548)
    #dbg_value(i64 %i.bv, !5731, !DIExpression(), !5547)
    #dbg_value(i64 %i.bg, !5745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5544)
    #dbg_value(i64 %i.bg, !5750, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5545)
    #dbg_value(i64 %i.bg, !5704, !DIExpression(), !5548)
  %i.bw = icmp ult i64 %i.bg, %i.bv, !dbg !5915
  br i1 %i.bw, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i, !dbg !5915

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %.lr.ph.split.i.i
  call void @llvm.assume(i1 %i.bl)
  %.pre.i.i.i.i.i = load i8, ptr %i.bn, align 1, !dbg !5922, !alias.scope !5844 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i, !dbg !5923

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.j, %.lr.ph.split.preheader.i.i.i.i.i
  %i.bx = phi i64 [ %i.cl, %bb.j ], [ %i.bv, %.lr.ph.split.preheader.i.i.i.i.i ] ; 4 uses
    #dbg_value(i64 %i.bx, !5745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5544)
  %i.by = sub nuw i64 %i.bg, %i.bx, !dbg !5924    ; 4 uses
    #dbg_value(i64 %i.by, !5751, !DIExpression(), !5545)
    #dbg_value(i64 %i.by, !5732, !DIExpression(), !5547)
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.bx, !dbg !5925 ; 2 uses
    #dbg_value(ptr %i.bz, !5693, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5560)
    #dbg_value(i64 %i.by, !5693, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5560)
    #dbg_value(i8 %.pre.i.i.i.i.i, !5696, !DIExpression(), !5561)
    #dbg_value(i8 %.pre.i.i.i.i.i, !2042, !DIExpression(), !5562)
    #dbg_value(i8 %.pre.i.i.i.i.i, !2047, !DIExpression(), !5564)
    #dbg_value(ptr %i.bz, !2043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5562)
    #dbg_value(ptr %i.bz, !2048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5564)
    #dbg_value(i64 %i.by, !2043, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5562)
    #dbg_value(i64 %i.by, !2048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5564)
  %i.ca = icmp samesign ult i64 %i.by, 16, !dbg !5923
  br i1 %i.ca, label %.preheader.i.i.i.i.i.i, label %bb.h, !dbg !5923

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
    #dbg_value(i64 0, !2049, !DIExpression(), !5565)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bg, %i.bx, !dbg !5926
  br i1 %.not.i.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !5926

bb.h:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.cb = invoke { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef range(i64 0, -9223372036854775808) %i.by)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5927 ; 2 uses

.noexc20:                                         ; preds = %bb.h
  %i.cc = extractvalue { i64, i64 } %i.cb, 0, !dbg !5927
  %i.cd = extractvalue { i64, i64 } %i.cb, 1, !dbg !5927
    #dbg_value(i64 %i.cc, !2044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5566)
    #dbg_value(i64 %i.cd, !2044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5566)
  %i.ce = trunc nuw i64 %i.cc to i1, !dbg !5928
  br i1 %i.ce, label %.loopexit.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i.i.i, !dbg !5928

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.i
  %.sroa.04.015.i.i.i.i.i.i = phi i64 [ %i.ci, %bb.i ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
    #dbg_value(i64 %.sroa.04.015.i.i.i.i.i.i, !2049, !DIExpression(), !5565)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.04.015.i.i.i.i.i.i, !dbg !5929
  %i.cg = load i8, ptr %i.cf, align 1, !dbg !5929, !alias.scope !5855, !noalias !5856, !noundef !593
  %i.ch = icmp eq i8 %i.cg, %.pre.i.i.i.i.i, !dbg !5929
  br i1 %i.ch, label %.loopexit.i.i.i.i.i, label %bb.i, !dbg !5929

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ci = add nuw nsw i64 %.sroa.04.015.i.i.i.i.i.i, 1, !dbg !5930 ; 2 uses
    #dbg_value(i64 %i.ci, !2049, !DIExpression(), !5565)
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ci, %i.by, !dbg !5926
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !5926

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc20
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.cd, %.noexc20 ], [ %.sroa.04.015.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], !dbg !5931 ; 2 uses
    #dbg_value(i64 1, !2044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5566)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i.i, !2044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5566)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i.i, !2045, !DIExpression(), !5570)
  %i.cj = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %i.by, !dbg !5932
    #dbg_value(i1 true, !2052, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5572)
  call void @llvm.assume(i1 %i.cj), !dbg !5933
    #dbg_value(i64 1, !2044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5566)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i.i, !2044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5566)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i.i.i, !5697, !DIExpression(), !5573)
  %i.ck = add i64 %i.bx, 1, !dbg !5934
  %i.cl = add i64 %i.ck, %.sroa.5.0.i.i.i.i.i.i, !dbg !5935 ; 8 uses
  %.not50.i.i.i.i.i = icmp ult i64 %i.cl, %i.bk, !dbg !5936
    #dbg_value(!DIArgList(i64 %i.cl, i64 %i.bk), !5698, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !5574)
    #dbg_value(!DIArgList(i64 %i.cl, i64 %i.bk), !5745, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5576)
    #dbg_value(!DIArgList(i64 %i.cl, i64 %i.bk), !5750, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5578)
    #dbg_value(!DIArgList(i64 %i.cl, i64 %i.bk), !5705, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !5580)
    #dbg_value(!DIArgList(i64 %i.cl, i64 %i.bk), !5731, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !5582)
    #dbg_value(ptr %.val.i.i.i.i, !5735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5576)
    #dbg_value(ptr %.val.i.i.i.i, !5747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5578)
    #dbg_value(ptr %.val.i.i.i.i, !5730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5582)
    #dbg_value(!DIArgList(i64 poison, i64 %.sroa.5.0.i.i.i.i.i.i), !5745, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5576)
    #dbg_value(!DIArgList(i64 poison, i64 %.sroa.5.0.i.i.i.i.i.i), !5750, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !5578)
    #dbg_value(!DIArgList(i64 poison, i64 %.sroa.5.0.i.i.i.i.i.i), !5704, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus_uconst, 1, DW_OP_plus, DW_OP_stack_value), !5580)
    #dbg_value(i64 %.val13.i.i.i.i, !5735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5576)
    #dbg_value(i64 %.val13.i.i.i.i, !5747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5578)
    #dbg_value(i64 %.val13.i.i.i.i, !5730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5582)
    #dbg_value(i64 %i.bk, !5751, !DIExpression(), !5578)
    #dbg_value(i64 %i.bk, !5732, !DIExpression(), !5582)
  %.not51.i.i.i.i.i = icmp ugt i64 %i.cl, %.val13.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not50.i.i.i.i.i, %.not51.i.i.i.i.i, !dbg !5936
  br i1 %or.cond.i.i.i.i.i, label %bb.j, label %bb.k, !dbg !5936

bb.j:                                             ; preds = %bb.k, %.loopexit.i.i.i.i.i
    #dbg_value(ptr %.val.i.i.i.i, !5735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5544)
    #dbg_value(ptr %.val.i.i.i.i, !5747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5545)
    #dbg_value(ptr %.val.i.i.i.i, !5730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5547)
    #dbg_value(i64 poison, !5735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5544)
    #dbg_value(i64 poison, !5747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5545)
    #dbg_value(i64 poison, !5730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5547)
    #dbg_value(i64 %i.cl, !5745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5544)
    #dbg_value(i64 %i.cl, !5750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5545)
    #dbg_value(i64 %i.cl, !5705, !DIExpression(), !5548)
    #dbg_value(i64 %i.cl, !5731, !DIExpression(), !5547)
    #dbg_value(i64 %i.bg, !5745, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5544)
    #dbg_value(i64 %i.bg, !5750, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5545)
    #dbg_value(i64 %i.bg, !5704, !DIExpression(), !5548)
  %i.cm = icmp ult i64 %i.bg, %i.cl, !dbg !5915
    #dbg_value(i64 %.val13.i.i.i.i, !5735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5544)
    #dbg_value(i64 %.val13.i.i.i.i, !5747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5545)
    #dbg_value(i64 %.val13.i.i.i.i, !5730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5547)
    #dbg_value(!DIArgList(i64 %i.bg, i64 %i.cl), !5751, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !5545)
    #dbg_value(!DIArgList(i64 %i.bg, i64 %i.cl), !5732, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !5547)
  br i1 %i.cm, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i, !dbg !5915

bb.k:                                             ; preds = %.loopexit.i.i.i.i.i
  %i.cn = sub nuw i64 %i.cl, %i.bk, !dbg !5937    ; 2 uses
    #dbg_value(i64 %i.cn, !5698, !DIExpression(), !5574)
    #dbg_value(i64 %i.cn, !5745, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5576)
    #dbg_value(i64 %i.cn, !5750, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5578)
    #dbg_value(i64 %i.cn, !5705, !DIExpression(), !5580)
    #dbg_value(i64 %i.cn, !5731, !DIExpression(), !5582)
    #dbg_value(!DIArgList(ptr %.val.i.i.i.i, i64 %i.cn), !5699, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5583)
    #dbg_value(!DIArgList(ptr %.val.i.i.i.i, i64 %i.cn), !5761, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !5586)
    #dbg_value(i64 %i.bk, !5699, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5583)
    #dbg_value(i64 %i.bk, !5761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5586)
    #dbg_value(ptr poison, !5774, !DIExpression(), !5587)
    #dbg_value(i64 %i.bk, !5704, !DIExpression(), !5541)
    #dbg_value(i64 %i.bk, !5732, !DIExpression(), !5543)
    #dbg_value(ptr %i.bh, !5730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5543)
    #dbg_value(i64 4, !5730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5543)
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.cn, !dbg !5938
    #dbg_value(ptr %i.co, !5699, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5583)
    #dbg_value(ptr %i.co, !5761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5586)
    #dbg_value(ptr %i.bh, !5766, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5586)
    #dbg_value(i64 %i.bk, !5766, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5586)
    #dbg_value(ptr poison, !5775, !DIExpression(), !5588)
    #dbg_value(i64 %i.bk, !5767, !DIExpression(), !5589)
    #dbg_value(i64 %i.bk, !5780, !DIExpression(), !5591)
    #dbg_value(i64 %i.bk, !5786, !DIExpression(), !5592)
    #dbg_value(ptr %i.co, !5784, !DIExpression(), !5591)
    #dbg_value(ptr %i.bh, !5785, !DIExpression(), !5591)
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.co, ptr nonnull %i.bh, i64 %i.bk), !dbg !5939, !noalias !5857
  %i.cp = icmp eq i32 %bcmp.i.i.i.i.i, 0, !dbg !5939
  br i1 %i.cp, label %select.unfold.i.i, label %bb.j, !dbg !5940

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i.i.i: ; preds = %bb.j, %.noexc20, %.preheader.i.i.i.i.i.i, %bb.i, %.lr.ph.split.i.i
  %i.cq = phi i64 [ %i.bv, %.lr.ph.split.i.i ], [ %i.bg, %bb.i ], [ %i.bg, %.noexc20 ], [ %i.bg, %.preheader.i.i.i.i.i.i ], [ %i.cl, %bb.j ]
    #dbg_value(ptr %i.b, !5791, !DIExpression(), !5550)
  store i8 1, ptr %i.bb, align 1, !dbg !5941, !alias.scope !5858
  %.not.i15.i.i.i.i = icmp ne i64 %.pre13.i.i.i.i.i, %.lcssa222627.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.bq, i1 true, i1 %.not.i15.i.i.i.i, !dbg !5942
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsiGRwBGCeC5s_11quiche_apps.exit, !dbg !5943

select.unfold.i.i:                                ; preds = %bb.k, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i.i.i
  %i.cr = phi i64 [ %i.cq, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i.i.i ], [ %i.cl, %bb.k ]
  %.lcssa2225.i.i = phi i64 [ %.lcssa222627.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i.i.i ], [ %i.cl, %bb.k ]
  %i.cs = phi i1 [ true, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i.i.i ], [ false, %bb.k ]
  %.pn.i.i = phi i64 [ %.pre13.i.i.i.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i.i.i ], [ %i.cn, %bb.k ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn.i.i, %.lcssa222627.i.i, !dbg !5944
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa222627.i.i, !dbg !5944
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !5822, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5595)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !5822, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5595)
  %i.ct = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !5945, !alias.scope !5854, !noundef !593 ; 5 uses
    #dbg_value(i64 %i.ct, !5823, !DIExpression(), !5596)
    #dbg_value(i64 %i.ct, !5849, !DIExpression(), !5553)
  %i.cu = icmp ult i64 %i.ct, 576460752303423488, !dbg !5946
  call void @llvm.assume(i1 %i.cu), !dbg !5947
    #dbg_value(ptr %i.c, !5838, !DIExpression(), !5597)
  %i.cv = load i64, ptr %i.c, align 8, !dbg !5948, !range !1743, !alias.scope !5854, !noundef !593
  %i.cw = icmp eq i64 %i.ct, %i.cv, !dbg !5949
  br i1 %i.cw, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.i.i, label %.noexc21, !dbg !5949

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.i.i: ; preds = %select.unfold.i.i
    #dbg_value(i64 0, !5824, !DIExpression(), !5598)
    #dbg_value(ptr %i.c, !2083, !DIExpression(), !5600)
    #dbg_value(i64 1, !2085, !DIExpression(), !5600)
    #dbg_value(i64 1, !2087, !DIExpression(), !5602)
    #dbg_value(i64 1, !2095, !DIExpression(), !5604)
    #dbg_value(ptr %i.c, !2092, !DIExpression(), !5605)
    #dbg_value(i64 %i.ct, !2093, !DIExpression(), !5602)
    #dbg_value(i64 %i.ct, !2097, !DIExpression(), !5604)
    #dbg_value(ptr %i.c, !2096, !DIExpression(), !5604)
    #dbg_value(i64 8, !2098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5604)
    #dbg_value(i64 16, !2098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5604)
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.ct, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5950

.noexc21:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.i.i, %select.unfold.i.i
  %i.cx = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !5951, !alias.scope !5854, !nonnull !593, !noundef !593
    #dbg_value(ptr %i.cx, !5848, !DIExpression(), !5553)
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.ct, !dbg !5919 ; 2 uses
    #dbg_value(ptr %i.cy, !5851, !DIExpression(), !5556)
    #dbg_value(ptr %.sroa.0.1.i.i.i.i, !5852, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5556)
    #dbg_value(i64 %.sroa.4.1.i.i.i.i, !5852, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5556)
  store ptr %.sroa.0.1.i.i.i.i, ptr %i.cy, align 8, !dbg !5920, !noalias !5843, !captures !2063
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8, !dbg !5920
  store i64 %.sroa.4.1.i.i.i.i, ptr %i.cz, align 8, !dbg !5920, !noalias !5843
  %i.da = add nuw nsw i64 %i.ct, 1, !dbg !5952
    #dbg_value(i64 %i.da, !5833, !DIExpression(), !5511)
  store i64 %i.da, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !5921, !alias.scope !5854
    #dbg_value(ptr %i.b, !5662, !DIExpression(), !5557)
    #dbg_value(ptr %i.b, !5669, !DIExpression(), !5558)
  br i1 %i.cs, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsiGRwBGCeC5s_11quiche_apps.exit, label %.lr.ph.split.i.i, !dbg !5914

bb.l:                                             ; preds = %bb.a, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i
  store i64 0, ptr %0, align 8, !dbg !5953
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5953
  store ptr inttoptr (i64 8 to ptr), ptr %i.db, align 8, !dbg !5953
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5953
  store i64 0, ptr %i.dc, align 8, !dbg !5953
  br label %bb.m, !dbg !5954

bb.m:                                             ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsiGRwBGCeC5s_11quiche_apps.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !5954
  ret void, !dbg !5955

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.i.i
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !2116, !DIExpression(), !5614)
    #dbg_value(ptr %i.c, !2122, !DIExpression(), !5616)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsiGRwBGCeC5s_11quiche_apps.exit unwind label %bb.n, !dbg !5956

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %.noexc21, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps.exit.i.i.i.i, %._crit_edge.split.us.split.us.i.i, %.lr.ph.split.us.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiGRwBGCeC5s_11quiche_apps.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !5958
  br label %bb.m, !dbg !5954

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !5959
  unreachable, !dbg !5959

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp74, !dbg !5959
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCskKLDkoKarTP_4core3str4iter6SplitNB11_EE9from_iterCsiGRwBGCeC5s_11quiche_apps(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5965 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [136 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
    #dbg_declare(ptr %1, !6049, !DIExpression(), !6058)
    #dbg_declare(ptr %i.c, !6050, !DIExpression(), !6059)
    #dbg_declare(ptr poison, !6060, !DIExpression(), !6065)
    #dbg_declare(ptr poison, !6068, !DIExpression(), !6072)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6124
  %i.d = tail call fastcc { ptr, i64 } @_RNvXs1i_NtNtCskKLDkoKarTP_4core3str4iterINtB6_6SplitNReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(136) %1) #20, !dbg !6125 ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0, !dbg !6125 ; 2 uses
  %.not = icmp eq ptr %i.e, null, !dbg !6126
  br i1 %.not, label %bb.d, label %bb.b, !dbg !6127

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.e, !6051, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6073)
    #dbg_value(i64 poison, !6051, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6073)
    #dbg_value(i64 0, !6052, !DIExpression(), !6074)
    #dbg_value(i64 4, !6053, !DIExpression(), !6075)
    #dbg_value(i64 4, !6066, !DIExpression(), !6076)
    #dbg_value(i64 4, !6061, !DIExpression(), !6077)
    #dbg_value(i64 4, !6069, !DIExpression(), !6078)
    #dbg_value(i64 4, !1842, !DIExpression(), !5970)
    #dbg_value(i64 4, !1863, !DIExpression(), !5972)
    #dbg_declare(ptr poison, !1846, !DIExpression(), !5973)
    #dbg_value(i64 8, !1847, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5970)
    #dbg_value(i64 8, !1866, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5972)
    #dbg_value(i64 16, !1847, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5970)
    #dbg_value(i64 16, !1866, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5972)
    #dbg_value(i64 0, !1865, !DIExpression(), !5972)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6128
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !6128
  %i.f = load i64, ptr %i.a, align 8, !dbg !6128, !range !1868, !noundef !593
  %i.g = trunc nuw i64 %i.f to i1, !dbg !6129
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6130
  %i.i = load i64, ptr %i.h, align 8, !dbg !6130, !range !1869, !noundef !593 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6130 ; 2 uses
  br i1 %i.g, label %bb.c, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiGRwBGCeC5s_11quiche_apps.exit, !dbg !6129, !prof !1744

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !dbg !6131
    #dbg_value(i64 %i.i, !1849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5974)
    #dbg_value(i64 %i.k, !1849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5974)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #19, !dbg !6132
  unreachable, !dbg !6132

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.d, 1, !dbg !6125
    #dbg_value(i64 %i.l, !6051, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6073)
  %i.m = load ptr, ptr %i.j, align 8, !dbg !6133, !nonnull !593, !noundef !593 ; 3 uses
    #dbg_value(i64 %i.i, !1848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5975)
    #dbg_value(ptr %i.m, !1848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5975)
    #dbg_value(ptr poison, !1864, !DIExpression(), !5976)
  %i.n = icmp ugt i64 %i.i, 3, !dbg !6134
    #dbg_value(i1 true, !1872, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5978)
  tail call void @llvm.assume(i1 %i.n), !dbg !6135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6136
    #dbg_value(i64 %i.i, !6054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6079)
    #dbg_value(ptr %i.m, !6054, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6079)
    #dbg_value(i64 0, !6054, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6079)
    #dbg_value(ptr %i.m, !6080, !DIExpression(), !6084)
    #dbg_value(ptr %i.e, !6081, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6084)
    #dbg_value(i64 %i.l, !6081, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6084)
  store ptr %i.e, ptr %i.m, align 8, !dbg !6137, !captures !2063
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !6137
  store i64 %i.l, ptr %i.o, align 8, !dbg !6137
    #dbg_value(i64 1, !6054, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6079)
  store i64 %i.i, ptr %i.c, align 8, !dbg !6138
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6138 ; 2 uses
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !6138
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !6138 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !6138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false), !dbg !6139
    #dbg_value(ptr %i.c, !6085, !DIExpression(), !5982)
    #dbg_declare(ptr %i.b, !6088, !DIExpression(), !5983)
    #dbg_value(ptr %i.c, !6091, !DIExpression(), !5989)
    #dbg_value(ptr %i.c, !6099, !DIExpression(), !5992)
    #dbg_value(ptr %i.c, !6101, !DIExpression(), !5995)
    #dbg_value(ptr %i.c, !6103, !DIExpression(), !5998)
    #dbg_value(ptr %i.c, !6105, !DIExpression(), !6001)
    #dbg_value(ptr %i.c, !6101, !DIExpression(), !6003)
    #dbg_declare(ptr %i.b, !6094, !DIExpression(), !6004)
    #dbg_value(i64 16, !6108, !DIExpression(), !6009)
    #dbg_value(i64 16, !6108, !DIExpression(), !6012)
  %i.p = invoke fastcc { ptr, i64 } @_RNvXs1i_NtNtCskKLDkoKarTP_4core3str4iterINtB6_6SplitNReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b) #20
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6140 ; 2 uses

.noexc:                                           ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiGRwBGCeC5s_11quiche_apps.exit
  %i.q = extractvalue { ptr, i64 } %i.p, 0, !dbg !6140 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.q, null, !dbg !6141
  br i1 %.not17.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter6SplitNBR_EE11spec_extendCsiGRwBGCeC5s_11quiche_apps.exit, label %.lr.ph.i.i, !dbg !6142

.lr.ph.i.i:                                       ; preds = %.noexc, %.noexc21
  %.pn.i.i = phi { ptr, i64 } [ %i.ab, %.noexc21 ], [ %i.p, %.noexc ]
  %i.r = phi ptr [ %i.ac, %.noexc21 ], [ %i.q, %.noexc ]
  %i.s = extractvalue { ptr, i64 } %.pn.i.i, 1, !dbg !6140
    #dbg_value(ptr %i.r, !6095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6013)
    #dbg_value(i64 %i.s, !6095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6013)
  %i.t = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !6143, !alias.scope !6115, !noundef !593 ; 5 uses
    #dbg_value(i64 %i.t, !6096, !DIExpression(), !6018)
    #dbg_value(i64 %i.t, !6116, !DIExpression(), !6021)
  %i.u = icmp ult i64 %i.t, 576460752303423488, !dbg !6144
  call void @llvm.assume(i1 %i.u), !dbg !6145
    #dbg_value(ptr %i.c, !6111, !DIExpression(), !6022)
  %i.v = load i64, ptr %i.c, align 8, !dbg !6146, !range !1743, !alias.scope !6115, !noundef !593
  %i.w = icmp eq i64 %i.t, %i.v, !dbg !6147
  br i1 %i.w, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.i.i, label %.noexc20, !dbg !6147

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.i.i: ; preds = %.lr.ph.i.i
    #dbg_value(i64 0, !6097, !DIExpression(), !6023)
    #dbg_value(ptr %i.c, !2083, !DIExpression(), !6025)
    #dbg_value(i64 1, !2085, !DIExpression(), !6025)
    #dbg_value(i64 1, !2087, !DIExpression(), !6027)
    #dbg_value(i64 1, !2095, !DIExpression(), !6029)
    #dbg_value(ptr %i.c, !2092, !DIExpression(), !6030)
    #dbg_value(i64 %i.t, !2093, !DIExpression(), !6027)
    #dbg_value(i64 %i.t, !2097, !DIExpression(), !6029)
    #dbg_value(ptr %i.c, !2096, !DIExpression(), !6029)
    #dbg_value(i64 8, !2098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6029)
    #dbg_value(i64 16, !2098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6029)
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.t, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6148

.noexc20:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.i.i, %.lr.ph.i.i
  %i.x = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !6149, !alias.scope !6115, !nonnull !593, !noundef !593
    #dbg_value(ptr %i.x, !6117, !DIExpression(), !6021)
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.t, !dbg !6150 ; 2 uses
    #dbg_value(ptr %i.y, !6119, !DIExpression(), !6039)
    #dbg_value(ptr %i.r, !6120, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6039)
    #dbg_value(i64 %i.s, !6120, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6039)
  store ptr %i.r, ptr %i.y, align 8, !dbg !6151, !noalias !6122, !captures !2063
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !6151
  store i64 %i.s, ptr %i.z, align 8, !dbg !6151, !noalias !6122
  %i.aa = add nuw nsw i64 %i.t, 1, !dbg !6152
    #dbg_value(i64 %i.aa, !6106, !DIExpression(), !6001)
  store i64 %i.aa, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !6153, !alias.scope !6115
  %i.ab = invoke fastcc { ptr, i64 } @_RNvXs1i_NtNtCskKLDkoKarTP_4core3str4iterINtB6_6SplitNReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b) #20
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6140 ; 2 uses

.noexc21:                                         ; preds = %.noexc20
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0, !dbg !6140 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null, !dbg !6141
  br i1 %.not.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter6SplitNBR_EE11spec_extendCsiGRwBGCeC5s_11quiche_apps.exit, label %.lr.ph.i.i, !dbg !6142

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !dbg !6154
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6154
  store ptr inttoptr (i64 8 to ptr), ptr %i.ad, align 8, !dbg !6154
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6154
  store i64 0, ptr %i.ae, align 8, !dbg !6154
  br label %bb.e, !dbg !6155

bb.e:                                             ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter6SplitNBR_EE11spec_extendCsiGRwBGCeC5s_11quiche_apps.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6155
  ret void, !dbg !6156

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc20, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiGRwBGCeC5s_11quiche_apps.exit
  %lpad.loopexit.split-lp27 = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !2116, !DIExpression(), !6044)
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!5351 = !DILocation(line: 61, column: 9, scope: !5183, inlinedAt: !5185)
!5352 = !DILocation(line: 34, column: 6, scope: !5181)
!5353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CharSearcher", scope: !1956, file: !428, size: 384, align: 64, flags: DIFlagPublic, elements: !5633, templateParams: !593, identifier: "be2fdb1da38bb44cc8a459525b9c3f50")
!5354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SplitInternal<char>", scope: !1955, file: !428, size: 576, align: 64, flags: DIFlagProtected, elements: !5626, templateParams: !5635, identifier: "5fd5cb6d5aa1666eb47bbcd0d5eeb0fc")
!5355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Split<char>", scope: !1955, file: !428, size: 576, align: 64, flags: DIFlagPublic, elements: !5620, templateParams: !5635, identifier: "3b3fac6215a536bda45dc116adcc8457")
!5356 = distinct !DILexicalBlock(scope: !5357, file: !1765, line: 30, column: 17)
!5357 = distinct !DILexicalBlock(scope: !5358, file: !1765, line: 28, column: 17)
!5358 = distinct !DILexicalBlock(scope: !5359, file: !1765, line: 27, column: 17)
!5359 = distinct !DILexicalBlock(scope: !5361, file: !1765, line: 26, column: 13)
!5360 = distinct !DILexicalBlock(scope: !5361, file: !1765, line: 24, column: 9)
!5361 = distinct !DISubprogram(name: "from_iter<&str, core::str::iter::Split<char>>", linkageName: "_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE9from_iterCsiGRwBGCeC5s_11quiche_apps", scope: !1953, file: !1765, line: 18, type: !5618, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5644, retainedNodes: !5642)
!5362 = distinct !DISubprogram(name: "with_capacity_in<&str, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE16with_capacity_inCsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 968, type: !1966, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1964, declaration: !1967, retainedNodes: !5649)
!5363 = distinct !DISubprogram(name: "with_capacity<&str>", linkageName: "_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecReE13with_capacityCsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 521, type: !1969, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1815, declaration: !1970, retainedNodes: !5654)
!5364 = distinct !DISubprogram(name: "with_capacity_in<&str, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE16with_capacity_inCsiGRwBGCeC5s_11quiche_apps", scope: !352, file: !1015, line: 175, type: !1972, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1964, declaration: !1973, retainedNodes: !5657)
!5365 = distinct !{!5365, i1 true, !"_RNvXsX_NtNtCskKLDkoKarTP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps"}
!5366 = distinct !{!5366, !5365, !"_RNvXsX_NtNtCskKLDkoKarTP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps: argument 0"}
!5367 = distinct !DISubprogram(name: "next<char>", linkageName: "_RNvXsX_NtNtCskKLDkoKarTP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps", scope: !5663, file: !1974, line: 511, type: !5665, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5635, retainedNodes: !5666)
!5368 = distinct !DILocation(line: 24, column: 41, scope: !5361)
!5369 = distinct !DILocation(line: 0, scope: !5367, inlinedAt: !5368)
!5370 = distinct !{!5370, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsiGRwBGCeC5s_11quiche_apps"}
!5371 = distinct !{!5371, !5370, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsiGRwBGCeC5s_11quiche_apps: argument 0"}
!5372 = distinct !DILexicalBlock(scope: !5373, file: !1974, line: 666, column: 17)
!5373 = distinct !DILexicalBlock(scope: !5374, file: !1974, line: 665, column: 13)
!5374 = distinct !DILexicalBlock(scope: !5375, file: !1974, line: 662, column: 9)
!5375 = distinct !DISubprogram(name: "next<char>", linkageName: "_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsiGRwBGCeC5s_11quiche_apps", scope: !5354, file: !1974, line: 657, type: !5671, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5635, declaration: !5672, retainedNodes: !5677)
!5376 = distinct !DILocation(line: 512, column: 24, scope: !5367, inlinedAt: !5368)
!5377 = distinct !DILocation(line: 0, scope: !5375, inlinedAt: !5376)
!5378 = distinct !DILocation(line: 0, scope: !5374, inlinedAt: !5376)
!5379 = distinct !DISubprogram(name: "get_unchecked<core::ops::range::Range<usize>>", linkageName: "_RINvMNtCskKLDkoKarTP_4core3stre13get_uncheckedINtNtNtB5_3ops5range5RangejEECsiGRwBGCeC5s_11quiche_apps", scope: !1984, file: !1983, line: 700, type: !1986, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1995, retainedNodes: !5681)
!5380 = distinct !DILocation(line: 666, column: 36, scope: !5373, inlinedAt: !5376)
!5381 = distinct !DILocation(line: 0, scope: !5379, inlinedAt: !5380)
!5382 = distinct !DILexicalBlock(scope: !5383, file: !1996, line: 221, column: 13)
!5383 = distinct !DILexicalBlock(scope: !5384, file: !1996, line: 200, column: 9)
!5384 = distinct !DISubprogram(name: "get_unchecked", linkageName: "_RNvXs5_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE13get_unchecked", scope: !1998, file: !1996, line: 199, type: !2000, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !593, retainedNodes: !5686)
!5385 = distinct !DILocation(line: 704, column: 22, scope: !5379, inlinedAt: !5380)
!5386 = distinct !DILocation(line: 0, scope: !5384, inlinedAt: !5385)
!5387 = distinct !{!5387, i1 true, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!5388 = distinct !{!5388, !5387, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!5389 = distinct !DILexicalBlock(scope: !5390, file: !2004, line: 462, column: 96)
!5390 = distinct !DILexicalBlock(scope: !5391, file: !2004, line: 461, column: 21)
!5391 = distinct !DILexicalBlock(scope: !5392, file: !2004, line: 441, column: 67)
!5392 = distinct !DILexicalBlock(scope: !5395, file: !2004, line: 440, column: 13)
!5393 = distinct !DILexicalBlock(scope: !5396, file: !2004, line: 437, column: 84)
!5394 = distinct !DILexicalBlock(scope: !5396, file: !2004, line: 437, column: 84)
!5395 = distinct !DILexicalBlock(scope: !5396, file: !2004, line: 437, column: 13)
!5396 = distinct !DISubprogram(name: "next_match", linkageName: "_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match", scope: !5690, file: !2004, line: 434, type: !5692, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !593, retainedNodes: !5700)
!5397 = distinct !DILocation(line: 663, column: 28, scope: !5374, inlinedAt: !5376)
!5398 = distinct !DILocation(line: 0, scope: !5396, inlinedAt: !5397)
!5399 = distinct !DISubprogram(name: "checked_sub", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj11checked_sub", scope: !1737, file: !1736, line: 1116, type: !5703, scopeLine: 1116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !593, retainedNodes: !5706)
!5400 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs2_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE5indexCsiGRwBGCeC5s_11quiche_apps", scope: !5707, file: !2029, line: 405, type: !5709, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !625, retainedNodes: !5713)
!5401 = distinct !DISubprogram(name: "index<u8, core::ops::range::Range<usize>>", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range5RangejEE5indexCsiGRwBGCeC5s_11quiche_apps", scope: !2031, file: !2029, line: 18, type: !5715, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5719, retainedNodes: !5718)
!5402 = distinct !DISubprogram(name: "index<u8, core::ops::range::Range<usize>, 4>", linkageName: "_RNvXsd_NtCskKLDkoKarTP_4core5arrayAhj4_INtNtNtB7_3ops5index5IndexINtNtBG_5range5RangejEE5indexCsiGRwBGCeC5s_11quiche_apps", scope: !5722, file: !5720, line: 390, type: !5725, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5719, retainedNodes: !5728)
!5403 = distinct !DILocation(line: 463, column: 55, scope: !5389, inlinedAt: !5397)
!5404 = distinct !DILocation(line: 391, column: 9, scope: !5402, inlinedAt: !5403)
!5405 = distinct !DILocation(line: 19, column: 15, scope: !5401, inlinedAt: !5404)
!5406 = distinct !DILocation(line: 407, column: 32, scope: !5400, inlinedAt: !5405)
!5407 = distinct !DILocation(line: 0, scope: !5399, inlinedAt: !5406)
!5408 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core5slice5index24get_offset_len_noubcheckhECsiGRwBGCeC5s_11quiche_apps", scope: !2030, file: !2029, line: 83, type: !2033, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !625, retainedNodes: !5733)
!5409 = distinct !DILocation(line: 411, column: 24, scope: !5400, inlinedAt: !5405)
!5410 = distinct !DILocation(line: 0, scope: !5408, inlinedAt: !5409)
!5411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !5414, file: !428, size: 128, align: 64, flags: DIFlagPublic, elements: !5743, templateParams: !2037, identifier: "2d1f6c87986fc605d930394ee9de9863")
!5412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !5414, file: !428, size: 128, align: 64, flags: DIFlagPublic, elements: !593, templateParams: !2037, identifier: "f8bb646ed90cf79e672b3f1e14836251")
!5413 = distinct !DICompositeType(tag: DW_TAG_variant_part, scope: !5414, file: !428, size: 128, align: 64, elements: !5741, templateParams: !593, identifier: "c22b77edd71b63589b3727bd5c5fd371", discriminator: !5744)
!5414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&[u8]>", scope: !737, file: !428, size: 128, align: 64, flags: DIFlagPublic, elements: !5738, templateParams: !593, identifier: "e2cf22197a6a96bd8dff761881efd273")
!5415 = distinct !DISubprogram(name: "get<u8, core::ops::range::Range<usize>>", linkageName: "_RINvMNtCskKLDkoKarTP_4core5sliceSh3getINtNtNtB5_3ops5range5RangejEECsiGRwBGCeC5s_11quiche_apps", scope: !2035, file: !2034, line: 572, type: !5737, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5719, retainedNodes: !5746)
!5416 = distinct !DILocation(line: 437, column: 50, scope: !5396, inlinedAt: !5397)
!5417 = distinct !DILocation(line: 0, scope: !5415, inlinedAt: !5416)
!5418 = distinct !DISubprogram(name: "get<u8>", linkageName: "_RNvXs2_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range5RangejEINtB5_10SliceIndexShE3getCsiGRwBGCeC5s_11quiche_apps", scope: !5707, file: !2029, line: 335, type: !5749, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !625, retainedNodes: !5752)
!5419 = distinct !DILocation(line: 576, column: 15, scope: !5415, inlinedAt: !5416)
!5420 = distinct !DILocation(line: 0, scope: !5418, inlinedAt: !5419)
!5421 = distinct !DILocation(line: 341, column: 29, scope: !5418, inlinedAt: !5419)
!5422 = distinct !DILocation(line: 0, scope: !5408, inlinedAt: !5421)
!5423 = distinct !DILocation(line: 337, column: 32, scope: !5418, inlinedAt: !5419)
!5424 = distinct !DILocation(line: 0, scope: !5399, inlinedAt: !5423)
!5425 = distinct !DILocation(line: 441, column: 34, scope: !5391, inlinedAt: !5397)
!5426 = distinct !DILocation(line: 0, scope: !5395, inlinedAt: !5397)
!5427 = distinct !DILocation(line: 0, scope: !5392, inlinedAt: !5397)
!5428 = distinct !DILocation(line: 0, scope: !372, inlinedAt: !5425)
!5429 = distinct !DILocation(line: 28, column: 43, scope: !372, inlinedAt: !5425)
!5430 = distinct !DILocation(line: 0, scope: !374, inlinedAt: !5429)
!5431 = distinct !DILocation(line: 0, scope: !373, inlinedAt: !5429)
!5432 = distinct !{!5432, !5387, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!5433 = distinct !DILocation(line: 0, scope: !371, inlinedAt: !5425)
!5434 = distinct !{!5434, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!5435 = distinct !{!5435, !5434, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!5436 = distinct !DILocation(line: 0, scope: !370, inlinedAt: !5425)
!5437 = distinct !DILocation(line: 31, column: 18, scope: !370, inlinedAt: !5425)
!5438 = distinct !DILocation(line: 0, scope: !375, inlinedAt: !5437)
!5439 = distinct !DILocation(line: 0, scope: !5391, inlinedAt: !5397)
!5440 = distinct !DILocation(line: 0, scope: !5390, inlinedAt: !5397)
!5441 = distinct !DILocation(line: 462, column: 67, scope: !5389, inlinedAt: !5397)
!5442 = distinct !DILocation(line: 0, scope: !5415, inlinedAt: !5441)
!5443 = distinct !DILocation(line: 576, column: 15, scope: !5756, inlinedAt: !5441)
!5444 = distinct !DILocation(line: 0, scope: !5418, inlinedAt: !5443)
!5445 = distinct !DILocation(line: 337, column: 32, scope: !5757, inlinedAt: !5443)
!5446 = distinct !DILocation(line: 0, scope: !5399, inlinedAt: !5445)
!5447 = distinct !DILocation(line: 341, column: 29, scope: !5757, inlinedAt: !5443)
!5448 = distinct !DILocation(line: 0, scope: !5408, inlinedAt: !5447)
!5449 = distinct !DILocation(line: 0, scope: !5389, inlinedAt: !5397)
!5450 = distinct !DILexicalBlock(scope: !5451, file: !5760, line: 20, column: 9)
!5451 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCsiGRwBGCeC5s_11quiche_apps", scope: !5763, file: !5760, line: 19, type: !5765, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5770, retainedNodes: !5768)
!5452 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCskKLDkoKarTP_4core3cmp5implsRShNtB7_9PartialEq2eqCsiGRwBGCeC5s_11quiche_apps", scope: !5771, file: !2054, line: 2398, type: !5773, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5779, retainedNodes: !5776)
!5453 = distinct !DILocation(line: 463, column: 28, scope: !5389, inlinedAt: !5397)
!5454 = distinct !DILocation(line: 2399, column: 13, scope: !5452, inlinedAt: !5453)
!5455 = distinct !DILocation(line: 0, scope: !5451, inlinedAt: !5454)
!5456 = distinct !DILocation(line: 2398, column: 15, scope: !5452, inlinedAt: !5453)
!5457 = distinct !DILocation(line: 2398, column: 22, scope: !5452, inlinedAt: !5453)
!5458 = distinct !DILocation(line: 0, scope: !5450, inlinedAt: !5454)
!5459 = distinct !DILexicalBlock(scope: !5460, file: !5760, line: 156, column: 13)
!5460 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCsiGRwBGCeC5s_11quiche_apps", scope: !5781, file: !5760, line: 151, type: !5783, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5789, retainedNodes: !5787)
!5461 = distinct !DILocation(line: 24, column: 22, scope: !5450, inlinedAt: !5454)
!5462 = distinct !DILocation(line: 0, scope: !5460, inlinedAt: !5461)
!5463 = distinct !DILocation(line: 0, scope: !5459, inlinedAt: !5461)
!5464 = distinct !DILocation(line: 0, scope: !5373, inlinedAt: !5376)
!5465 = distinct !DILocation(line: 0, scope: !5383, inlinedAt: !5385)
!5466 = distinct !DILocation(line: 0, scope: !5372, inlinedAt: !5376)
!5467 = distinct !DILexicalBlock(scope: !5468, file: !1974, line: 648, column: 17)
!5468 = distinct !DISubprogram(name: "get_end<char>", linkageName: "_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps", scope: !5354, file: !1974, line: 642, type: !5671, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5635, declaration: !5792, retainedNodes: !5794)
!5469 = distinct !DILocation(line: 670, column: 26, scope: !5374, inlinedAt: !5376)
!5470 = distinct !DILocation(line: 0, scope: !5468, inlinedAt: !5469)
!5471 = distinct !{!5471, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps"}
!5472 = distinct !{!5472, !5471, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps: argument 0"}
!5473 = distinct !DILocation(line: 177, column: 20, scope: !5364, inlinedAt: !5658)
!5474 = distinct !DILocation(line: 0, scope: !331, inlinedAt: !5473)
!5475 = distinct !DILocation(line: 439, column: 50, scope: !330, inlinedAt: !5473)
!5476 = distinct !DILocation(line: 0, scope: !332, inlinedAt: !5475)
!5477 = distinct !DILocation(line: 434, column: 42, scope: !331, inlinedAt: !5473)
!5478 = distinct !DILocation(line: 0, scope: !329, inlinedAt: !5473)
!5479 = distinct !DILocation(line: 0, scope: !330, inlinedAt: !5473)
!5480 = distinct !DILocation(line: 763, column: 28, scope: !332, inlinedAt: !5475)
!5481 = distinct !DILocation(line: 439, column: 21, scope: !330, inlinedAt: !5473)
!5482 = distinct !DILocation(line: 0, scope: !333, inlinedAt: !5481)
!5483 = distinct !DISubprogram(name: "write<&str>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr5writeReECsiGRwBGCeC5s_11quiche_apps", scope: !562, file: !561, line: 1941, type: !2062, scopeLine: 1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1815, retainedNodes: !5805)
!5484 = distinct !{!5484, i1 true, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsiGRwBGCeC5s_11quiche_apps"}
!5485 = distinct !{!5485, !5484, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsiGRwBGCeC5s_11quiche_apps: argument 0"}
!5486 = distinct !{!5486, !5484, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsiGRwBGCeC5s_11quiche_apps: argument 1"}
!5487 = distinct !DISubprogram(name: "spec_extend<&str, core::str::iter::Split<char>, alloc::alloc::Global>", linkageName: "_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEE11spec_extendCsiGRwBGCeC5s_11quiche_apps", scope: !2065, file: !1877, line: 17, type: !5812, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5815, retainedNodes: !5814)
!5488 = distinct !DILocation(line: 41, column: 9, scope: !5360)
!5489 = distinct !DILocation(line: 0, scope: !5487, inlinedAt: !5488)
!5490 = distinct !DILocation(line: 17, column: 39, scope: !5487, inlinedAt: !5488)
!5491 = distinct !{!5491, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEECsiGRwBGCeC5s_11quiche_apps"}
!5492 = distinct !{!5492, !5491, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEECsiGRwBGCeC5s_11quiche_apps: argument 0"}
!5493 = distinct !{!5493, !5491, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEECsiGRwBGCeC5s_11quiche_apps: argument 1"}
!5494 = distinct !DILexicalBlock(scope: !5495, file: !1005, line: 4105, column: 17)
!5495 = distinct !DILexicalBlock(scope: !5496, file: !1005, line: 4103, column: 13)
!5496 = distinct !DILexicalBlock(scope: !5497, file: !1005, line: 4102, column: 51)
!5497 = distinct !DISubprogram(name: "extend_desugared<&str, alloc::alloc::Global, core::str::iter::Split<char>>", linkageName: "_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEECsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 4094, type: !5812, scopeLine: 4094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !5819, declaration: !5820, retainedNodes: !5825)
!5498 = distinct !DILocation(line: 18, column: 14, scope: !5487, inlinedAt: !5488)
!5499 = distinct !DILocation(line: 0, scope: !5497, inlinedAt: !5498)
!5500 = distinct !DISubprogram(name: "len<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE3lenCsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 3099, type: !2068, scopeLine: 3099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1964, declaration: !2069, retainedNodes: !5827)
!5501 = distinct !DILocation(line: 4103, column: 28, scope: !5496, inlinedAt: !5498)
!5502 = distinct !DILocation(line: 0, scope: !5500, inlinedAt: !5501)
!5503 = distinct !DISubprogram(name: "capacity<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE8capacityCsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 1436, type: !2068, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1964, declaration: !2070, retainedNodes: !5829)
!5504 = distinct !DILocation(line: 4104, column: 28, scope: !5495, inlinedAt: !5498)
!5505 = distinct !DILocation(line: 0, scope: !5503, inlinedAt: !5504)
!5506 = distinct !DISubprogram(name: "as_mut_ptr<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE10as_mut_ptrCsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 2049, type: !2072, scopeLine: 2049, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1964, declaration: !2073, retainedNodes: !5831)
!5507 = distinct !DILocation(line: 4109, column: 33, scope: !5495, inlinedAt: !5498)
!5508 = distinct !DILocation(line: 0, scope: !5506, inlinedAt: !5507)
!5509 = distinct !DISubprogram(name: "set_len<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7set_lenCsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 2216, type: !2075, scopeLine: 2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1964, declaration: !2076, retainedNodes: !5834)
!5510 = distinct !DILocation(line: 4113, column: 22, scope: !5495, inlinedAt: !5498)
!5511 = distinct !DILocation(line: 0, scope: !5509, inlinedAt: !5510)
!5512 = distinct !DILocation(line: 2220, column: 63, scope: !5509, inlinedAt: !5510)
!5513 = distinct !DILocation(line: 0, scope: !5503, inlinedAt: !5512)
!5514 = distinct !DILocation(line: 4094, column: 59, scope: !5497, inlinedAt: !5498)
!5515 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner8capacityCsiGRwBGCeC5s_11quiche_apps", scope: !8, file: !1015, line: 615, type: !1741, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !631, declaration: !1742, retainedNodes: !5837)
!5516 = distinct !DISubprogram(name: "capacity<&str, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE8capacityCsiGRwBGCeC5s_11quiche_apps", scope: !352, file: !1015, line: 308, type: !2079, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1964, declaration: !2080, retainedNodes: !5839)
!5517 = distinct !DILocation(line: 1437, column: 18, scope: !5503, inlinedAt: !5504)
!5518 = distinct !DILocation(line: 309, column: 20, scope: !5516, inlinedAt: !5517)
!5519 = distinct !DILocation(line: 0, scope: !5515, inlinedAt: !5518)
!5520 = distinct !DILocation(line: 1437, column: 18, scope: !5841, inlinedAt: !5512)
!5521 = distinct !DILocation(line: 309, column: 20, scope: !5840, inlinedAt: !5520)
!5522 = distinct !DILocation(line: 0, scope: !5515, inlinedAt: !5521)
!5523 = distinct !{!5523, i1 true, !"_RNvXsX_NtNtCskKLDkoKarTP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps"}
!5524 = distinct !{!5524, !5523, !"_RNvXsX_NtNtCskKLDkoKarTP_4core3str4iterINtB5_5SplitcENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps: argument 0"}
!5525 = distinct !{!5525, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsiGRwBGCeC5s_11quiche_apps"}
!5526 = distinct !{!5526, !5525, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsiGRwBGCeC5s_11quiche_apps: argument 0"}
!5527 = distinct !DILocation(line: 4102, column: 44, scope: !5496, inlinedAt: !5498)
!5528 = distinct !DILocation(line: 512, column: 24, scope: !5367, inlinedAt: !5527)
!5529 = distinct !{!5529, i1 true, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match"}
!5530 = distinct !{!5530, !5529, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 1"}
!5531 = distinct !DILocation(line: 663, column: 28, scope: !5374, inlinedAt: !5528)
!5532 = distinct !DILocation(line: 437, column: 50, scope: !5396, inlinedAt: !5531)
!5533 = distinct !DILocation(line: 576, column: 15, scope: !5415, inlinedAt: !5532)
!5534 = distinct !DILocation(line: 337, column: 32, scope: !5418, inlinedAt: !5533)
!5535 = distinct !DILocation(line: 0, scope: !5374, inlinedAt: !5528)
!5536 = distinct !DILocation(line: 0, scope: !5396, inlinedAt: !5531)
!5537 = distinct !DILocation(line: 463, column: 55, scope: !5389, inlinedAt: !5531)
!5538 = distinct !DILocation(line: 391, column: 9, scope: !5402, inlinedAt: !5537)
!5539 = distinct !DILocation(line: 19, column: 15, scope: !5401, inlinedAt: !5538)
!5540 = distinct !DILocation(line: 407, column: 32, scope: !5400, inlinedAt: !5539)
!5541 = distinct !DILocation(line: 0, scope: !5399, inlinedAt: !5540)
!5542 = distinct !DILocation(line: 411, column: 24, scope: !5400, inlinedAt: !5539)
!5543 = distinct !DILocation(line: 0, scope: !5408, inlinedAt: !5542)
!5544 = distinct !DILocation(line: 0, scope: !5415, inlinedAt: !5532)
!5545 = distinct !DILocation(line: 0, scope: !5418, inlinedAt: !5533)
!5546 = distinct !DILocation(line: 341, column: 29, scope: !5418, inlinedAt: !5533)
!5547 = distinct !DILocation(line: 0, scope: !5408, inlinedAt: !5546)
!5548 = distinct !DILocation(line: 0, scope: !5399, inlinedAt: !5534)
!5549 = distinct !DILocation(line: 670, column: 26, scope: !5374, inlinedAt: !5528)
!5550 = distinct !DILocation(line: 0, scope: !5468, inlinedAt: !5549)
!5551 = distinct !DISubprogram(name: "add<&str>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrORe3addCsiGRwBGCeC5s_11quiche_apps", scope: !1038, file: !1031, line: 937, type: !2082, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1815, retainedNodes: !5850)
!5552 = distinct !DILocation(line: 4109, column: 46, scope: !5495, inlinedAt: !5498)
!5553 = distinct !DILocation(line: 0, scope: !5551, inlinedAt: !5552)
!5554 = distinct !DISubprogram(name: "write<&str>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr5writeReECsiGRwBGCeC5s_11quiche_apps", scope: !562, file: !561, line: 1941, type: !2062, scopeLine: 1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1815, retainedNodes: !5853)
!5555 = distinct !DILocation(line: 4109, column: 17, scope: !5495, inlinedAt: !5498)
!5556 = distinct !DILocation(line: 0, scope: !5554, inlinedAt: !5555)
!5557 = distinct !DILocation(line: 0, scope: !5367, inlinedAt: !5527)
!5558 = distinct !DILocation(line: 0, scope: !5375, inlinedAt: !5528)
!5559 = distinct !DILocation(line: 441, column: 34, scope: !5391, inlinedAt: !5531)
!5560 = distinct !DILocation(line: 0, scope: !5395, inlinedAt: !5531)
!5561 = distinct !DILocation(line: 0, scope: !5392, inlinedAt: !5531)
!5562 = distinct !DILocation(line: 0, scope: !372, inlinedAt: !5559)
!5563 = distinct !DILocation(line: 28, column: 43, scope: !372, inlinedAt: !5559)
!5564 = distinct !DILocation(line: 0, scope: !374, inlinedAt: !5563)
!5565 = distinct !DILocation(line: 0, scope: !373, inlinedAt: !5563)
!5566 = distinct !DILocation(line: 0, scope: !371, inlinedAt: !5559)
!5567 = distinct !{!5567, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!5568 = distinct !{!5568, !5567, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!5569 = distinct !{!5569, !5529, !"_RNvXs_NtNtCskKLDkoKarTP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match: argument 0"}
!5570 = distinct !DILocation(line: 0, scope: !370, inlinedAt: !5559)
!5571 = distinct !DILocation(line: 31, column: 18, scope: !370, inlinedAt: !5559)
!5572 = distinct !DILocation(line: 0, scope: !375, inlinedAt: !5571)
!5573 = distinct !DILocation(line: 0, scope: !5391, inlinedAt: !5531)
!5574 = distinct !DILocation(line: 0, scope: !5390, inlinedAt: !5531)
!5575 = distinct !DILocation(line: 462, column: 67, scope: !5389, inlinedAt: !5531)
!5576 = distinct !DILocation(line: 0, scope: !5415, inlinedAt: !5575)
!5577 = distinct !DILocation(line: 576, column: 15, scope: !5756, inlinedAt: !5575)
!5578 = distinct !DILocation(line: 0, scope: !5418, inlinedAt: !5577)
!5579 = distinct !DILocation(line: 337, column: 32, scope: !5757, inlinedAt: !5577)
!5580 = distinct !DILocation(line: 0, scope: !5399, inlinedAt: !5579)
!5581 = distinct !DILocation(line: 341, column: 29, scope: !5757, inlinedAt: !5577)
!5582 = distinct !DILocation(line: 0, scope: !5408, inlinedAt: !5581)
!5583 = distinct !DILocation(line: 0, scope: !5389, inlinedAt: !5531)
!5584 = distinct !DILocation(line: 463, column: 28, scope: !5389, inlinedAt: !5531)
!5585 = distinct !DILocation(line: 2399, column: 13, scope: !5452, inlinedAt: !5584)
!5586 = distinct !DILocation(line: 0, scope: !5451, inlinedAt: !5585)
!5587 = distinct !DILocation(line: 2398, column: 15, scope: !5452, inlinedAt: !5584)
!5588 = distinct !DILocation(line: 2398, column: 22, scope: !5452, inlinedAt: !5584)
!5589 = distinct !DILocation(line: 0, scope: !5450, inlinedAt: !5585)
!5590 = distinct !DILocation(line: 24, column: 22, scope: !5450, inlinedAt: !5585)
!5591 = distinct !DILocation(line: 0, scope: !5460, inlinedAt: !5590)
!5592 = distinct !DILocation(line: 0, scope: !5459, inlinedAt: !5590)
!5593 = distinct !{!5593, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps"}
!5594 = distinct !{!5594, !5593, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps: argument 0"}
!5595 = distinct !DILocation(line: 0, scope: !5496, inlinedAt: !5498)
!5596 = distinct !DILocation(line: 0, scope: !5495, inlinedAt: !5498)
!5597 = distinct !DILocation(line: 308, column: 34, scope: !5516, inlinedAt: !5517)
!5598 = distinct !DILocation(line: 0, scope: !5494, inlinedAt: !5498)
!5599 = distinct !DILocation(line: 4106, column: 22, scope: !5494, inlinedAt: !5498)
!5600 = distinct !DILocation(line: 0, scope: !376, inlinedAt: !5599)
!5601 = distinct !DILocation(line: 1461, column: 18, scope: !376, inlinedAt: !5599)
!5602 = distinct !DILocation(line: 0, scope: !377, inlinedAt: !5601)
!5603 = distinct !DILocation(line: 341, column: 29, scope: !377, inlinedAt: !5601)
!5604 = distinct !DILocation(line: 0, scope: !378, inlinedAt: !5603)
!5605 = distinct !DILocation(line: 339, column: 27, scope: !377, inlinedAt: !5601)
!5606 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &str>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner8non_nullReECsiGRwBGCeC5s_11quiche_apps", scope: !8, file: !1015, line: 610, type: !2101, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2105, declaration: !2106)
!5607 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, &str>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner3ptrReECsiGRwBGCeC5s_11quiche_apps", scope: !8, file: !1015, line: 605, type: !2108, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2105, declaration: !2109)
!5608 = distinct !DISubprogram(name: "ptr<&str, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE3ptrCsiGRwBGCeC5s_11quiche_apps", scope: !352, file: !1015, line: 295, type: !2111, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1964, declaration: !2112)
!5609 = distinct !DILocation(line: 2052, column: 18, scope: !5506, inlinedAt: !5507)
!5610 = distinct !DILocation(line: 296, column: 20, scope: !5608, inlinedAt: !5609)
!5611 = distinct !DILocation(line: 606, column: 14, scope: !5607, inlinedAt: !5610)
!5612 = distinct !DISubprogram(name: "new<&str>", linkageName: "_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecReE3newCsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 461, type: !2114, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1815, declaration: !2115)
!5613 = distinct !DILocation(line: 43, column: 5, scope: !5361)
!5614 = distinct !DILocation(line: 0, scope: !380, inlinedAt: !5613)
!5615 = distinct !DILocation(line: 848, column: 1, scope: !380, inlinedAt: !5613)
!5616 = distinct !DILocation(line: 0, scope: !381, inlinedAt: !5615)
!5617 = !{!353, !5355}
!5618 = !DISubroutineType(types: !5617)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !5355, file: !428, baseType: !5354, size: 576, align: 64, flags: DIFlagProtected)
!5620 = !{!5619}
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5354, file: !428, baseType: !601, size: 64, align: 64, flags: DIFlagProtected)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5354, file: !428, baseType: !601, size: 64, align: 64, offset: 64, flags: DIFlagProtected)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "matcher", scope: !5354, file: !428, baseType: !5353, size: 384, align: 64, offset: 128, flags: DIFlagProtected)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "allow_trailing_empty", scope: !5354, file: !428, baseType: !690, size: 8, align: 8, offset: 512, flags: DIFlagProtected)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "finished", scope: !5354, file: !428, baseType: !690, size: 8, align: 8, offset: 520, flags: DIFlagProtected)
!5626 = !{!5621, !5622, !5623, !5624, !5625}
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "haystack", scope: !5353, file: !428, baseType: !315, size: 128, align: 64, flags: DIFlagPrivate)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "finger", scope: !5353, file: !428, baseType: !601, size: 64, align: 64, offset: 128, flags: DIFlagPrivate)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "finger_back", scope: !5353, file: !428, baseType: !601, size: 64, align: 64, offset: 192, flags: DIFlagPrivate)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "needle", scope: !5353, file: !428, baseType: !1957, size: 32, align: 32, offset: 288, flags: DIFlagPrivate)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_size", scope: !5353, file: !428, baseType: !431, size: 8, align: 8, offset: 320, flags: DIFlagPrivate)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_encoded", scope: !5353, file: !428, baseType: !1119, size: 32, align: 8, offset: 256, flags: DIFlagPrivate)
!5633 = !{!5627, !5628, !5629, !5630, !5631, !5632}
!5634 = !DITemplateTypeParameter(name: "P", type: !1957)
!5635 = !{!5634}
!5636 = !DILocalVariable(name: "iterator", arg: 1, scope: !5361, file: !1765, line: 18, type: !5355)
!5637 = !DILocalVariable(name: "vector", scope: !5360, file: !1765, line: 24, type: !353, align: 64)
!5638 = !DILocalVariable(name: "element", scope: !5359, file: !1765, line: 26, type: !315, align: 64)
!5639 = !DILocalVariable(name: "lower", scope: !5358, file: !1765, line: 27, type: !601, align: 64)
!5640 = !DILocalVariable(name: "initial_capacity", scope: !5357, file: !1765, line: 28, type: !601, align: 64)
!5641 = !DILocalVariable(name: "vector", scope: !5356, file: !1765, line: 30, type: !353, align: 64)
!5642 = !{!5636, !5637, !5638, !5639, !5640, !5641}
!5643 = !DITemplateTypeParameter(name: "I", type: !5355)
!5644 = !{!1814, !5643}
!5645 = !DILocation(line: 18, column: 26, scope: !5361)
!5646 = !DILocation(line: 24, column: 13, scope: !5360)
!5647 = !DILocalVariable(name: "alloc", scope: !5362, file: !1005, line: 968, type: !3, align: 8)
!5648 = !DILocalVariable(name: "capacity", arg: 1, scope: !5362, file: !1005, line: 968, type: !601)
!5649 = !{!5648, !5647}
!5650 = !DILocation(line: 30, column: 34, scope: !5357)
!5651 = !DILocation(line: 522, column: 9, scope: !5363, inlinedAt: !5650)
!5652 = !DILocation(line: 968, column: 46, scope: !5362, inlinedAt: !5651)
!5653 = !DILocalVariable(name: "capacity", arg: 1, scope: !5363, file: !1005, line: 521, type: !601)
!5654 = !{!5653}
!5655 = !DILocalVariable(name: "alloc", scope: !5364, file: !1015, line: 175, type: !3, align: 8)
!5656 = !DILocalVariable(name: "capacity", arg: 1, scope: !5364, file: !1015, line: 175, type: !601)
!5657 = !{!5656, !5655}
!5658 = !DILocation(line: 969, column: 20, scope: !5362, inlinedAt: !5651)
!5659 = !DILocation(line: 175, column: 53, scope: !5364, inlinedAt: !5658)
!5660 = !{!5366}
!5661 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::iter::Split<char>", baseType: !5355, size: 64, align: 64, dwarfAddressSpace: 0)
!5662 = !DILocalVariable(name: "self", arg: 1, scope: !5367, file: !1974, line: 511, type: !5661)
!5663 = !DINamespace(name: "{impl#61}", scope: !1955)
!5664 = !{!357, !5661}
!5665 = !DISubroutineType(types: !5664)
!5666 = !{!5662}
!5667 = !{!5371}
!5668 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::iter::SplitInternal<char>", baseType: !5354, size: 64, align: 64, dwarfAddressSpace: 0)
!5669 = !DILocalVariable(name: "self", arg: 1, scope: !5375, file: !1974, line: 657, type: !5668)
!5670 = !{!357, !5668}
!5671 = !DISubroutineType(types: !5670)
!5672 = !DISubprogram(name: "next<char>", linkageName: "_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE4nextCsiGRwBGCeC5s_11quiche_apps", scope: !5354, file: !1974, line: 657, type: !5671, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5635)
!5673 = !DILocalVariable(name: "haystack", scope: !5374, file: !1974, line: 662, type: !315, align: 64)
!5674 = !DILocalVariable(name: "a", scope: !5373, file: !1974, line: 665, type: !601, align: 64)
!5675 = !DILocalVariable(name: "b", scope: !5373, file: !1974, line: 665, type: !601, align: 64)
!5676 = !DILocalVariable(name: "elt", scope: !5372, file: !1974, line: 666, type: !317, align: 64)
!5677 = !{!5669, !5673, !5674, !5675, !5676}
!5678 = !{!5371, !5366}
!5679 = !DILocalVariable(name: "self", arg: 1, scope: !5379, file: !1983, line: 700, type: !315)
!5680 = !DILocalVariable(name: "i", scope: !5379, file: !1983, line: 700, type: !358, align: 64)
!5681 = !{!5679, !5680}
!5682 = !DILocalVariable(name: "slice", arg: 2, scope: !5384, file: !1996, line: 199, type: !315)
!5683 = !DILocalVariable(name: "self", scope: !5384, file: !1996, line: 199, type: !358, align: 64)
!5684 = !DILocalVariable(name: "slice", scope: !5383, file: !1996, line: 200, type: !359, align: 64)
!5685 = !DILocalVariable(name: "new_len", scope: !5382, file: !1996, line: 221, type: !601, align: 64)
!5686 = !{!5683, !5682, !5684, !5685}
!5687 = !{!5388}
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::pattern::CharSearcher", baseType: !5353, size: 64, align: 64, dwarfAddressSpace: 0)
!5689 = !DILocalVariable(name: "self", arg: 1, scope: !5396, file: !2004, line: 434, type: !5688)
!5690 = !DINamespace(name: "{impl#1}", scope: !1956)
!5691 = !{!364, !5688}
!5692 = !DISubroutineType(types: !5691)
!5693 = !DILocalVariable(name: "bytes", scope: !5395, file: !2004, line: 437, type: !369, align: 64)
!5694 = !DILocalVariable(name: "residual", scope: !5394, file: !2004, line: 437, type: !368, align: 8)
!5695 = !DILocalVariable(name: "val", scope: !5393, file: !2004, line: 437, type: !369, align: 64)
!5696 = !DILocalVariable(name: "last_byte", scope: !5392, file: !2004, line: 440, type: !431, align: 8)
!5697 = !DILocalVariable(name: "index", scope: !5391, file: !2004, line: 441, type: !601, align: 64)
!5698 = !DILocalVariable(name: "found_char", scope: !5390, file: !2004, line: 461, type: !601, align: 64)
!5699 = !DILocalVariable(name: "slice", scope: !5389, file: !2004, line: 462, type: !369, align: 64)
!5700 = !{!5689, !5693, !5694, !5695, !5696, !5697, !5698, !5699}
!5701 = !DILocalVariable(name: "rhs", scope: !5399, file: !1736, line: 1116, type: !601, align: 64)
!5702 = !{!309, !601, !601}
!5703 = !DISubroutineType(types: !5702)
!5704 = !DILocalVariable(name: "self", arg: 1, scope: !5399, file: !1736, line: 1116, type: !601)
!5705 = !DILocalVariable(name: "rhs", arg: 2, scope: !5399, file: !1736, line: 1116, type: !601)
!5706 = !{!5704, !5705, !5701}
!5707 = !DINamespace(name: "{impl#4}", scope: !2030)
!5708 = !{!369, !358, !369, !1804}
!5709 = !DISubroutineType(types: !5708)
!5710 = !DILocalVariable(name: "self", scope: !5400, file: !2029, line: 405, type: !358, align: 64)
!5711 = !DILocalVariable(name: "slice", arg: 2, scope: !5400, file: !2029, line: 405, type: !369)
!5712 = !DILocalVariable(name: "new_len", scope: !5400, file: !2029, line: 407, type: !601, align: 64)
!5713 = !{!5710, !5711, !5712}
!5714 = !{!369, !369, !358, !1804}
!5715 = !DISubroutineType(types: !5714)
!5716 = !DILocalVariable(name: "self", arg: 1, scope: !5401, file: !2029, line: 18, type: !369)
!5717 = !DILocalVariable(name: "index", scope: !5401, file: !2029, line: 18, type: !358, align: 64)
!5718 = !{!5716, !5717}
!5719 = !{!624, !1994}
!5720 = !DIFile(filename: "library/core/src/array/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "17c3352141fad635318d0774997499cb")
!5721 = !DINamespace(name: "array", scope: !429)
!5722 = !DINamespace(name: "{impl#15}", scope: !5721)
!5723 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[u8; 4]", baseType: !1119, size: 64, align: 64, dwarfAddressSpace: 0)
!5724 = !{!369, !5723, !358, !1804}
!5725 = !DISubroutineType(types: !5724)
!5726 = !DILocalVariable(name: "self", arg: 1, scope: !5402, file: !5720, line: 390, type: !5723)
!5727 = !DILocalVariable(name: "index", scope: !5402, file: !5720, line: 390, type: !358, align: 64)
!5728 = !{!5726, !5727}
!5729 = !DILocalVariable(name: "offset", scope: !5408, file: !2029, line: 85, type: !601, align: 64)
!5730 = !DILocalVariable(name: "ptr", arg: 1, scope: !5408, file: !2029, line: 84, type: !369)
!5731 = !DILocalVariable(name: "offset", arg: 2, scope: !5408, file: !2029, line: 85, type: !601)
!5732 = !DILocalVariable(name: "len", arg: 3, scope: !5408, file: !2029, line: 86, type: !601)
!5733 = !{!5730, !5731, !5732, !5729}
!5734 = !{!5388, !5371, !5366}
!5735 = !DILocalVariable(name: "self", arg: 1, scope: !5415, file: !2034, line: 572, type: !369)
!5736 = !{!5414, !369, !358}
!5737 = !DISubroutineType(types: !5736)
!5738 = !{!5413}
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !5413, file: !428, baseType: !5412, size: 128, align: 64, extraData: i64 0)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !5413, file: !428, baseType: !5411, size: 128, align: 64)
!5741 = !{!5739, !5740}
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !5411, file: !428, baseType: !369, size: 128, align: 64, flags: DIFlagPublic)
!5743 = !{!5742}
!5744 = !DIDerivedType(tag: DW_TAG_member, scope: !5414, file: !428, baseType: !493, size: 64, align: 64, flags: DIFlagArtificial)
!5745 = !DILocalVariable(name: "index", scope: !5415, file: !2034, line: 572, type: !358, align: 64)
!5746 = !{!5735, !5745}
!5747 = !DILocalVariable(name: "slice", arg: 2, scope: !5418, file: !2029, line: 335, type: !369)
!5748 = !{!5414, !358, !369}
!5749 = !DISubroutineType(types: !5748)
!5750 = !DILocalVariable(name: "self", scope: !5418, file: !2029, line: 335, type: !358, align: 64)
!5751 = !DILocalVariable(name: "new_len", scope: !5418, file: !2029, line: 337, type: !601, align: 64)
!5752 = !{!5750, !5747, !5751}
!5753 = !{!5432, !5388, !5371, !5366}
!5754 = !{!5435}
!5756 = !DILexicalBlockFile(scope: !5415, file: !2034, discriminator: 2)
!5757 = !DILexicalBlockFile(scope: !5418, file: !2029, discriminator: 2)
!5760 = !DIFile(filename: "library/core/src/slice/cmp.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "1d6518c072587d593bede5b5773a8b8b")
!5761 = !DILocalVariable(name: "self", arg: 1, scope: !5451, file: !5760, line: 19, type: !369)
!5762 = !DINamespace(name: "cmp", scope: !1755)
!5763 = !DINamespace(name: "{impl#0}", scope: !5762)
!5764 = !{!690, !369, !369}
!5765 = !DISubroutineType(types: !5764)
!5766 = !DILocalVariable(name: "other", arg: 2, scope: !5451, file: !5760, line: 19, type: !359)
!5767 = !DILocalVariable(name: "len", scope: !5450, file: !5760, line: 20, type: !601, align: 64)
!5768 = !{!5761, !5766, !5767}
!5769 = !DITemplateTypeParameter(name: "U", type: !431)
!5770 = !{!624, !5769}
!5771 = !DINamespace(name: "{impl#9}", scope: !2056)
!5772 = !{!690, !2057, !2057}
!5773 = !DISubroutineType(types: !5772)
!5774 = !DILocalVariable(name: "self", arg: 1, scope: !5452, file: !2054, line: 2398, type: !2057)
!5775 = !DILocalVariable(name: "other", arg: 2, scope: !5452, file: !2054, line: 2398, type: !2057)
!5776 = !{!5774, !5775}
!5777 = !DITemplateTypeParameter(name: "A", type: !1824)
!5778 = !DITemplateTypeParameter(name: "B", type: !1824)
!5779 = !{!5777, !5778}
!5780 = !DILocalVariable(name: "len", arg: 3, scope: !5460, file: !5760, line: 151, type: !601)
!5781 = !DINamespace(name: "{impl#5}", scope: !5762)
!5782 = !{!690, !627, !627, !601}
!5783 = !DISubroutineType(types: !5782)
!5784 = !DILocalVariable(name: "lhs", arg: 1, scope: !5460, file: !5760, line: 151, type: !627)
!5785 = !DILocalVariable(name: "rhs", arg: 2, scope: !5460, file: !5760, line: 151, type: !627)
!5786 = !DILocalVariable(name: "size", scope: !5459, file: !5760, line: 156, type: !601, align: 64)
!5787 = !{!5784, !5785, !5780, !5786}
!5788 = !DITemplateTypeParameter(name: "A", type: !431)
!5789 = !{!5788, !2058}
!5790 = !{!5432}
!5791 = !DILocalVariable(name: "self", arg: 1, scope: !5468, file: !1974, line: 642, type: !5668)
!5792 = !DISubprogram(name: "get_end<char>", linkageName: "_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCsiGRwBGCeC5s_11quiche_apps", scope: !5354, file: !1974, line: 642, type: !5671, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5635)
!5793 = !DILocalVariable(name: "string", scope: !5467, file: !1974, line: 648, type: !317, align: 64)
!5794 = !{!5791, !5793}
!5795 = !{!5472, !5371, !5366}
!5796 = !DILocation(line: 0, scope: !5359)
!5797 = !DILocation(line: 0, scope: !5358)
!5798 = !DILocation(line: 0, scope: !5357)
!5799 = !DILocation(line: 0, scope: !5363, inlinedAt: !5650)
!5800 = !DILocation(line: 0, scope: !5362, inlinedAt: !5651)
!5801 = !DILocation(line: 0, scope: !5364, inlinedAt: !5658)
!5802 = !DILocation(line: 0, scope: !5356)
!5803 = !DILocalVariable(name: "dst", arg: 1, scope: !5483, file: !561, line: 1941, type: !2060)
!5804 = !DILocalVariable(name: "src", arg: 2, scope: !5483, file: !561, line: 1941, type: !315)
!5805 = !{!5803, !5804}
!5806 = !DILocation(line: 33, column: 21, scope: !5356)
!5807 = !DILocation(line: 0, scope: !5483, inlinedAt: !5806)
!5808 = !{!5485}
!5809 = !{!5486}
!5810 = !DILocalVariable(name: "self", arg: 1, scope: !5487, file: !1877, line: 17, type: !2064)
!5811 = !{null, !2064, !5355}
!5812 = !DISubroutineType(types: !5811)
!5813 = !DILocalVariable(name: "iter", arg: 2, scope: !5487, file: !1877, line: 17, type: !5355)
!5814 = !{!5810, !5813}
!5815 = !{!1814, !5643, !630}
!5816 = !{!5492}
!5817 = !{!5493}
!5818 = !DILocalVariable(name: "self", arg: 1, scope: !5497, file: !1005, line: 4094, type: !2064)
!5819 = !{!1814, !630, !5643}
!5820 = !DISubprogram(name: "extend_desugared<&str, alloc::alloc::Global, core::str::iter::Split<char>>", linkageName: "_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter5SplitcEECsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 4094, type: !5812, scopeLine: 4094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5819)
!5821 = !DILocalVariable(name: "iterator", arg: 2, scope: !5497, file: !1005, line: 4094, type: !5355)
!5822 = !DILocalVariable(name: "element", scope: !5496, file: !1005, line: 4102, type: !315, align: 64)
!5823 = !DILocalVariable(name: "len", scope: !5495, file: !1005, line: 4103, type: !601, align: 64)
!5824 = !DILocalVariable(name: "lower", scope: !5494, file: !1005, line: 4105, type: !601, align: 64)
!5825 = !{!5818, !5821, !5822, !5823, !5824}
!5826 = !DILocalVariable(name: "self", arg: 1, scope: !5500, file: !1005, line: 3099, type: !2064)
!5827 = !{!5826}
!5828 = !DILocalVariable(name: "self", arg: 1, scope: !5503, file: !1005, line: 1436, type: !2064)
!5829 = !{!5828}
!5830 = !DILocalVariable(name: "self", arg: 1, scope: !5506, file: !1005, line: 2049, type: !2064)
!5831 = !{!5830}
!5832 = !DILocalVariable(name: "self", arg: 1, scope: !5509, file: !1005, line: 2216, type: !2064)
!5833 = !DILocalVariable(name: "new_len", arg: 2, scope: !5509, file: !1005, line: 2216, type: !601)
!5834 = !{!5832, !5833}
!5835 = !DILocalVariable(name: "elem_size", scope: !5515, file: !1015, line: 615, type: !601, align: 64)
!5836 = !DILocalVariable(name: "self", arg: 1, scope: !5515, file: !1015, line: 615, type: !1016)
!5837 = !{!5836, !5835}
!5838 = !DILocalVariable(name: "self", arg: 1, scope: !5516, file: !1015, line: 308, type: !2077)
!5839 = !{!5838}
!5840 = !DILexicalBlockFile(scope: !5516, file: !1015, discriminator: 2)
!5841 = !DILexicalBlockFile(scope: !5503, file: !1005, discriminator: 2)
!5842 = !{!5526, !5524, !5493, !5486}
!5843 = !{!5493, !5486}
!5844 = !{!5530, !5526, !5524, !5493, !5486}
!5845 = !{!5524}
!5846 = !{!5526}
!5847 = !{!5530}
!5848 = !DILocalVariable(name: "self", arg: 1, scope: !5551, file: !1031, line: 937, type: !2060)
!5849 = !DILocalVariable(name: "count", arg: 2, scope: !5551, file: !1031, line: 937, type: !601)
!5850 = !{!5848, !5849}
!5851 = !DILocalVariable(name: "dst", arg: 1, scope: !5554, file: !561, line: 1941, type: !2060)
!5852 = !DILocalVariable(name: "src", arg: 2, scope: !5554, file: !561, line: 1941, type: !315)
!5853 = !{!5851, !5852}
!5854 = !{!5492, !5485}
!5855 = !{!5568}
!5856 = !{!5569, !5530, !5526, !5524, !5493, !5486}
!5857 = !{!5569}
!5858 = !{!5594, !5526, !5524, !5493, !5486}
!5859 = !DILocation(line: 25, column: 28, scope: !5361)
!5860 = !DILocation(line: 24, column: 13, scope: !5361)
!5861 = !DILocation(line: 24, column: 41, scope: !5361)
!5862 = !DILocation(line: 512, column: 24, scope: !5367, inlinedAt: !5368)
!5863 = !DILocation(line: 658, column: 12, scope: !5375, inlinedAt: !5376)
!5864 = !DILocation(line: 662, column: 24, scope: !5375, inlinedAt: !5376)
!5865 = !DILocation(line: 662, column: 37, scope: !5375, inlinedAt: !5376)
!5866 = !DILocation(line: 663, column: 28, scope: !5374, inlinedAt: !5376)
!5867 = !DILocation(line: 1122, column: 16, scope: !5399, inlinedAt: !5423)
!5868 = !DILocation(line: 440, column: 38, scope: !5395, inlinedAt: !5397)
!5869 = !DILocation(line: 28, column: 12, scope: !372, inlinedAt: !5425)
!5870 = !DILocation(line: 1126, column: 31, scope: !5399, inlinedAt: !5423)
!5871 = !DILocation(line: 90, column: 24, scope: !5408, inlinedAt: !5421)
!5872 = !DILocation(line: 41, column: 11, scope: !373, inlinedAt: !5429)
!5873 = !DILocation(line: 28, column: 74, scope: !372, inlinedAt: !5425)
!5874 = !DILocation(line: 29, column: 12, scope: !370, inlinedAt: !5425)
!5875 = !DILocation(line: 42, column: 12, scope: !373, inlinedAt: !5429)
!5876 = !DILocation(line: 46, column: 9, scope: !373, inlinedAt: !5429)
!5877 = !DILocation(line: 28, scope: !372, inlinedAt: !5425)
!5878 = !DILocation(line: 31, column: 48, scope: !370, inlinedAt: !5425)
!5879 = !DILocation(line: 210, column: 9, scope: !375, inlinedAt: !5437)
!5880 = !DILocation(line: 459, column: 32, scope: !5391, inlinedAt: !5397)
!5881 = !DILocation(line: 459, column: 17, scope: !5391, inlinedAt: !5397)
!5882 = !DILocation(line: 460, column: 20, scope: !5391, inlinedAt: !5397)
!5883 = !DILocation(line: 470, column: 17, scope: !5392, inlinedAt: !5397)
!5884 = !DILocation(line: 471, column: 17, scope: !5392, inlinedAt: !5397)
!5885 = !DILocation(line: 461, column: 38, scope: !5391, inlinedAt: !5397)
!5886 = !DILocation(line: 90, column: 24, scope: !5408, inlinedAt: !5447)
!5887 = !DILocation(line: 157, column: 13, scope: !5459, inlinedAt: !5461)
!5888 = !DILocation(line: 463, column: 28, scope: !5389, inlinedAt: !5397)
!5889 = !DILocation(line: 666, column: 50, scope: !5373, inlinedAt: !5376)
!5890 = !DILocation(line: 221, column: 27, scope: !5383, inlinedAt: !5385)
!5891 = !DILocation(line: 667, column: 17, scope: !5372, inlinedAt: !5376)
!5892 = !DILocation(line: 669, column: 13, scope: !5374, inlinedAt: !5376)
!5893 = !DILocation(line: 644, column: 13, scope: !5468, inlinedAt: !5469)
!5894 = !DILocation(line: 646, column: 16, scope: !5468, inlinedAt: !5469)
!5895 = !DILocation(line: 648, column: 77, scope: !5468, inlinedAt: !5469)
!5896 = !DILocation(line: 0, scope: !5468, inlinedAt: !5469)
!5897 = !DILocation(line: 670, column: 26, scope: !5374, inlinedAt: !5376)
!5898 = !DILocation(line: 0, scope: !5375, inlinedAt: !5376)
!5899 = !DILocation(line: 435, column: 15, scope: !331, inlinedAt: !5473)
!5900 = !DILocation(line: 435, column: 9, scope: !331, inlinedAt: !5473)
!5901 = !DILocation(line: 0, scope: !331, inlinedAt: !5473)
!5902 = !DILocation(line: 443, column: 17, scope: !331, inlinedAt: !5473)
!5903 = !DILocation(line: 443, column: 25, scope: !329, inlinedAt: !5473)
!5904 = !DILocation(line: 0, scope: !5374, inlinedAt: !5376)
!5905 = !DILocation(line: 436, column: 16, scope: !331, inlinedAt: !5473)
!5906 = !DILocation(line: 764, column: 9, scope: !332, inlinedAt: !5475)
!5907 = !DILocation(line: 210, column: 9, scope: !333, inlinedAt: !5481)
!5908 = !DILocation(line: 444, column: 9, scope: !331, inlinedAt: !5473)
!5909 = !DILocation(line: 1964, column: 41, scope: !5483, inlinedAt: !5806)
!5910 = !DILocation(line: 36, column: 17, scope: !5356)
!5911 = !DILocation(line: 41, column: 64, scope: !5360)
!5912 = !DILocation(line: 41, column: 9, scope: !5360)
!5913 = !DILocation(line: 18, column: 14, scope: !5487, inlinedAt: !5488)
!5914 = !DILocation(line: 658, column: 12, scope: !5375, inlinedAt: !5528)
!5915 = !DILocation(line: 1122, column: 16, scope: !5399, inlinedAt: !5534)
!5916 = !DILocation(line: 4102, column: 44, scope: !5496, inlinedAt: !5498)
!5917 = !DILocation(line: 512, column: 24, scope: !5367, inlinedAt: !5527)
!5918 = !DILocation(line: 663, column: 28, scope: !5374, inlinedAt: !5528)
!5919 = !DILocation(line: 971, column: 18, scope: !5551, inlinedAt: !5552)
!5920 = !DILocation(line: 1964, column: 41, scope: !5554, inlinedAt: !5555)
!5921 = !DILocation(line: 2223, column: 9, scope: !5509, inlinedAt: !5510)
!5922 = !DILocation(line: 440, column: 38, scope: !5395, inlinedAt: !5531)
!5923 = !DILocation(line: 28, column: 12, scope: !372, inlinedAt: !5559)
!5924 = !DILocation(line: 1126, column: 31, scope: !5399, inlinedAt: !5534)
!5925 = !DILocation(line: 90, column: 24, scope: !5408, inlinedAt: !5546)
!5926 = !DILocation(line: 41, column: 11, scope: !373, inlinedAt: !5563)
!5927 = !DILocation(line: 28, column: 74, scope: !372, inlinedAt: !5559)
!5928 = !DILocation(line: 29, column: 12, scope: !370, inlinedAt: !5559)
!5929 = !DILocation(line: 42, column: 12, scope: !373, inlinedAt: !5563)
!5930 = !DILocation(line: 46, column: 9, scope: !373, inlinedAt: !5563)
!5931 = !DILocation(line: 28, scope: !372, inlinedAt: !5559)
!5932 = !DILocation(line: 31, column: 48, scope: !370, inlinedAt: !5559)
!5933 = !DILocation(line: 210, column: 9, scope: !375, inlinedAt: !5571)
!5934 = !DILocation(line: 459, column: 32, scope: !5391, inlinedAt: !5531)
!5935 = !DILocation(line: 459, column: 17, scope: !5391, inlinedAt: !5531)
!5936 = !DILocation(line: 460, column: 20, scope: !5391, inlinedAt: !5531)
!5937 = !DILocation(line: 461, column: 38, scope: !5391, inlinedAt: !5531)
!5938 = !DILocation(line: 90, column: 24, scope: !5408, inlinedAt: !5581)
!5939 = !DILocation(line: 157, column: 13, scope: !5459, inlinedAt: !5590)
!5940 = !DILocation(line: 463, column: 28, scope: !5389, inlinedAt: !5531)
!5941 = !DILocation(line: 644, column: 13, scope: !5468, inlinedAt: !5549)
!5942 = !DILocation(line: 646, column: 16, scope: !5468, inlinedAt: !5549)
!5943 = !DILocation(line: 670, column: 26, scope: !5374, inlinedAt: !5528)
!5944 = !DILocation(line: 0, scope: !5374, inlinedAt: !5528)
!5945 = !DILocation(line: 3100, column: 19, scope: !5500, inlinedAt: !5501)
!5946 = !DILocation(line: 3105, column: 37, scope: !5500, inlinedAt: !5501)
!5947 = !DILocation(line: 3105, column: 18, scope: !5500, inlinedAt: !5501)
!5948 = !DILocation(line: 616, column: 49, scope: !5515, inlinedAt: !5518)
!5949 = !DILocation(line: 4104, column: 16, scope: !5495, inlinedAt: !5498)
!5950 = !DILocation(line: 672, column: 17, scope: !378, inlinedAt: !5603)
!5951 = !DILocation(line: 611, column: 9, scope: !5606, inlinedAt: !5611)
!5952 = !DILocation(line: 4113, column: 30, scope: !5495, inlinedAt: !5498)
!5953 = !DILocation(line: 462, column: 9, scope: !5612, inlinedAt: !5859)
!5954 = !DILocation(line: 43, column: 5, scope: !5361)
!5955 = !DILocation(line: 43, column: 6, scope: !5361)
!5956 = !DILocation(line: 848, column: 1, scope: !381, inlinedAt: !5615)
!5957 = !DILocation(line: 41, column: 72, scope: !5360)
!5958 = !DILocation(line: 42, column: 9, scope: !5360)
!5959 = !DILocation(line: 18, column: 5, scope: !5361)
!5960 = distinct !DILexicalBlock(scope: !5961, file: !1765, line: 30, column: 17)
!5961 = distinct !DILexicalBlock(scope: !5962, file: !1765, line: 28, column: 17)
!5962 = distinct !DILexicalBlock(scope: !5963, file: !1765, line: 27, column: 17)
!5963 = distinct !DILexicalBlock(scope: !5965, file: !1765, line: 26, column: 13)
!5964 = distinct !DILexicalBlock(scope: !5965, file: !1765, line: 24, column: 9)
!5965 = distinct !DISubprogram(name: "from_iter<&str, core::str::iter::SplitN<&str>>", linkageName: "_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCskKLDkoKarTP_4core3str4iter6SplitNB11_EE9from_iterCsiGRwBGCeC5s_11quiche_apps", scope: !1953, file: !1765, line: 18, type: !6048, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !6057, retainedNodes: !6055)
!5966 = distinct !DISubprogram(name: "with_capacity_in<&str, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecReE16with_capacity_inCsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 968, type: !1966, scopeLine: 968, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1964, declaration: !1967, retainedNodes: !6062)
!5967 = distinct !DISubprogram(name: "with_capacity<&str>", linkageName: "_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecReE13with_capacityCsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 521, type: !1969, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1815, declaration: !1970, retainedNodes: !6067)
!5968 = distinct !DISubprogram(name: "with_capacity_in<&str, alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE16with_capacity_inCsiGRwBGCeC5s_11quiche_apps", scope: !352, file: !1015, line: 175, type: !1972, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1964, declaration: !1973, retainedNodes: !6070)
!5969 = distinct !DILocation(line: 177, column: 20, scope: !5968, inlinedAt: !6071)
!5970 = distinct !DILocation(line: 0, scope: !331, inlinedAt: !5969)
!5971 = distinct !DILocation(line: 439, column: 50, scope: !330, inlinedAt: !5969)
!5972 = distinct !DILocation(line: 0, scope: !332, inlinedAt: !5971)
!5973 = distinct !DILocation(line: 434, column: 42, scope: !331, inlinedAt: !5969)
!5974 = distinct !DILocation(line: 0, scope: !329, inlinedAt: !5969)
!5975 = distinct !DILocation(line: 0, scope: !330, inlinedAt: !5969)
!5976 = distinct !DILocation(line: 763, column: 28, scope: !332, inlinedAt: !5971)
!5977 = distinct !DILocation(line: 439, column: 21, scope: !330, inlinedAt: !5969)
!5978 = distinct !DILocation(line: 0, scope: !333, inlinedAt: !5977)
!5979 = distinct !DISubprogram(name: "write<&str>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr5writeReECsiGRwBGCeC5s_11quiche_apps", scope: !562, file: !561, line: 1941, type: !2062, scopeLine: 1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1815, retainedNodes: !6082)
!5980 = distinct !DISubprogram(name: "spec_extend<&str, core::str::iter::SplitN<&str>, alloc::alloc::Global>", linkageName: "_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter6SplitNBR_EE11spec_extendCsiGRwBGCeC5s_11quiche_apps", scope: !2065, file: !1877, line: 17, type: !6087, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !6090, retainedNodes: !6089)
!5981 = distinct !DILocation(line: 41, column: 9, scope: !5964)
!5982 = distinct !DILocation(line: 0, scope: !5980, inlinedAt: !5981)
!5983 = distinct !DILocation(line: 17, column: 39, scope: !5980, inlinedAt: !5981)
!5984 = distinct !DILexicalBlock(scope: !5985, file: !1005, line: 4105, column: 17)
!5985 = distinct !DILexicalBlock(scope: !5986, file: !1005, line: 4103, column: 13)
!5986 = distinct !DILexicalBlock(scope: !5987, file: !1005, line: 4102, column: 51)
!5987 = distinct !DISubprogram(name: "extend_desugared<&str, alloc::alloc::Global, core::str::iter::SplitN<&str>>", linkageName: "_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter6SplitNBG_EECsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 4094, type: !6087, scopeLine: 4094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !6092, declaration: !6093, retainedNodes: !6098)
!5988 = distinct !DILocation(line: 18, column: 14, scope: !5980, inlinedAt: !5981)
!5989 = distinct !DILocation(line: 0, scope: !5987, inlinedAt: !5988)
!5990 = distinct !DISubprogram(name: "len<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE3lenCsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 3099, type: !2068, scopeLine: 3099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1964, declaration: !2069, retainedNodes: !6100)
!5991 = distinct !DILocation(line: 4103, column: 28, scope: !5986, inlinedAt: !5988)
!5992 = distinct !DILocation(line: 0, scope: !5990, inlinedAt: !5991)
!5993 = distinct !DISubprogram(name: "capacity<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE8capacityCsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 1436, type: !2068, scopeLine: 1436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1964, declaration: !2070, retainedNodes: !6102)
!5994 = distinct !DILocation(line: 4104, column: 28, scope: !5985, inlinedAt: !5988)
!5995 = distinct !DILocation(line: 0, scope: !5993, inlinedAt: !5994)
!5996 = distinct !DISubprogram(name: "as_mut_ptr<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE10as_mut_ptrCsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 2049, type: !2072, scopeLine: 2049, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1964, declaration: !2073, retainedNodes: !6104)
!5997 = distinct !DILocation(line: 4109, column: 33, scope: !5985, inlinedAt: !5988)
!5998 = distinct !DILocation(line: 0, scope: !5996, inlinedAt: !5997)
!5999 = distinct !DISubprogram(name: "set_len<&str, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7set_lenCsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 2216, type: !2075, scopeLine: 2216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1964, declaration: !2076, retainedNodes: !6107)
!6000 = distinct !DILocation(line: 4113, column: 22, scope: !5985, inlinedAt: !5988)
!6001 = distinct !DILocation(line: 0, scope: !5999, inlinedAt: !6000)
!6002 = distinct !DILocation(line: 2220, column: 63, scope: !5999, inlinedAt: !6000)
!6003 = distinct !DILocation(line: 0, scope: !5993, inlinedAt: !6002)
!6004 = distinct !DILocation(line: 4094, column: 59, scope: !5987, inlinedAt: !5988)
!6005 = distinct !DISubprogram(name: "capacity<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner8capacityCsiGRwBGCeC5s_11quiche_apps", scope: !8, file: !1015, line: 615, type: !1741, scopeLine: 615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !631, declaration: !1742, retainedNodes: !6110)
!6006 = distinct !DISubprogram(name: "capacity<&str, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE8capacityCsiGRwBGCeC5s_11quiche_apps", scope: !352, file: !1015, line: 308, type: !2079, scopeLine: 308, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1964, declaration: !2080, retainedNodes: !6112)
!6007 = distinct !DILocation(line: 1437, column: 18, scope: !5993, inlinedAt: !5994)
!6008 = distinct !DILocation(line: 309, column: 20, scope: !6006, inlinedAt: !6007)
!6009 = distinct !DILocation(line: 0, scope: !6005, inlinedAt: !6008)
!6010 = distinct !DILocation(line: 1437, column: 18, scope: !6114, inlinedAt: !6002)
!6011 = distinct !DILocation(line: 309, column: 20, scope: !6113, inlinedAt: !6010)
!6012 = distinct !DILocation(line: 0, scope: !6005, inlinedAt: !6011)
!6013 = distinct !DILocation(line: 0, scope: !5986, inlinedAt: !5988)
!6014 = distinct !{!6014, i1 true, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter6SplitNBR_EE11spec_extendCsiGRwBGCeC5s_11quiche_apps"}
!6015 = distinct !{!6015, !6014, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter6SplitNBR_EE11spec_extendCsiGRwBGCeC5s_11quiche_apps: argument 0"}
!6016 = distinct !{!6016, i1 true, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter6SplitNBG_EECsiGRwBGCeC5s_11quiche_apps"}
!6017 = distinct !{!6017, !6016, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter6SplitNBG_EECsiGRwBGCeC5s_11quiche_apps: argument 0"}
!6018 = distinct !DILocation(line: 0, scope: !5985, inlinedAt: !5988)
!6019 = distinct !DISubprogram(name: "add<&str>", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core3ptr7mut_ptrORe3addCsiGRwBGCeC5s_11quiche_apps", scope: !1038, file: !1031, line: 937, type: !2082, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1815, retainedNodes: !6118)
!6020 = distinct !DILocation(line: 4109, column: 46, scope: !5985, inlinedAt: !5988)
!6021 = distinct !DILocation(line: 0, scope: !6019, inlinedAt: !6020)
!6022 = distinct !DILocation(line: 308, column: 34, scope: !6006, inlinedAt: !6007)
!6023 = distinct !DILocation(line: 0, scope: !5984, inlinedAt: !5988)
!6024 = distinct !DILocation(line: 4106, column: 22, scope: !5984, inlinedAt: !5988)
!6025 = distinct !DILocation(line: 0, scope: !376, inlinedAt: !6024)
!6026 = distinct !DILocation(line: 1461, column: 18, scope: !376, inlinedAt: !6024)
!6027 = distinct !DILocation(line: 0, scope: !377, inlinedAt: !6026)
!6028 = distinct !DILocation(line: 341, column: 29, scope: !377, inlinedAt: !6026)
!6029 = distinct !DILocation(line: 0, scope: !378, inlinedAt: !6028)
!6030 = distinct !DILocation(line: 339, column: 27, scope: !377, inlinedAt: !6026)
!6031 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, &str>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner8non_nullReECsiGRwBGCeC5s_11quiche_apps", scope: !8, file: !1015, line: 610, type: !2101, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2105, declaration: !2106)
!6032 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, &str>", linkageName: "_RINvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB6_11RawVecInner3ptrReECsiGRwBGCeC5s_11quiche_apps", scope: !8, file: !1015, line: 605, type: !2108, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !2105, declaration: !2109)
!6033 = distinct !DISubprogram(name: "ptr<&str, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReE3ptrCsiGRwBGCeC5s_11quiche_apps", scope: !352, file: !1015, line: 295, type: !2111, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1964, declaration: !2112)
!6034 = distinct !DILocation(line: 2052, column: 18, scope: !5996, inlinedAt: !5997)
!6035 = distinct !DILocation(line: 296, column: 20, scope: !6033, inlinedAt: !6034)
!6036 = distinct !DILocation(line: 606, column: 14, scope: !6032, inlinedAt: !6035)
!6037 = distinct !DISubprogram(name: "write<&str>", linkageName: "_RINvNtCskKLDkoKarTP_4core3ptr5writeReECsiGRwBGCeC5s_11quiche_apps", scope: !562, file: !561, line: 1941, type: !2062, scopeLine: 1941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1815, retainedNodes: !6121)
!6038 = distinct !DILocation(line: 4109, column: 17, scope: !5985, inlinedAt: !5988)
!6039 = distinct !DILocation(line: 0, scope: !6037, inlinedAt: !6038)
!6040 = distinct !{!6040, !6014, !"_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter6SplitNBR_EE11spec_extendCsiGRwBGCeC5s_11quiche_apps: argument 1"}
!6041 = distinct !{!6041, !6016, !"_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter6SplitNBG_EECsiGRwBGCeC5s_11quiche_apps: argument 1"}
!6042 = distinct !DISubprogram(name: "new<&str>", linkageName: "_RNvMNtCsexYYUdYSQU6_5alloc3vecINtB2_3VecReE3newCsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 461, type: !2114, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1815, declaration: !2115)
!6043 = distinct !DILocation(line: 43, column: 5, scope: !5965)
!6044 = distinct !DILocation(line: 0, scope: !380, inlinedAt: !6043)
!6045 = distinct !DILocation(line: 848, column: 1, scope: !380, inlinedAt: !6043)
!6046 = distinct !DILocation(line: 0, scope: !381, inlinedAt: !6045)
!6047 = !{!353, !393}
!6048 = !DISubroutineType(types: !6047)
!6049 = !DILocalVariable(name: "iterator", arg: 1, scope: !5965, file: !1765, line: 18, type: !393)
!6050 = !DILocalVariable(name: "vector", scope: !5964, file: !1765, line: 24, type: !353, align: 64)
!6051 = !DILocalVariable(name: "element", scope: !5963, file: !1765, line: 26, type: !315, align: 64)
!6052 = !DILocalVariable(name: "lower", scope: !5962, file: !1765, line: 27, type: !601, align: 64)
!6053 = !DILocalVariable(name: "initial_capacity", scope: !5961, file: !1765, line: 28, type: !601, align: 64)
!6054 = !DILocalVariable(name: "vector", scope: !5960, file: !1765, line: 30, type: !353, align: 64)
!6055 = !{!6049, !6050, !6051, !6052, !6053, !6054}
!6056 = !DITemplateTypeParameter(name: "I", type: !393)
!6057 = !{!1814, !6056}
!6058 = !DILocation(line: 18, column: 26, scope: !5965)
!6059 = !DILocation(line: 24, column: 13, scope: !5964)
!6060 = !DILocalVariable(name: "alloc", scope: !5966, file: !1005, line: 968, type: !3, align: 8)
!6061 = !DILocalVariable(name: "capacity", arg: 1, scope: !5966, file: !1005, line: 968, type: !601)
!6062 = !{!6061, !6060}
!6063 = !DILocation(line: 30, column: 34, scope: !5961)
!6064 = !DILocation(line: 522, column: 9, scope: !5967, inlinedAt: !6063)
!6065 = !DILocation(line: 968, column: 46, scope: !5966, inlinedAt: !6064)
!6066 = !DILocalVariable(name: "capacity", arg: 1, scope: !5967, file: !1005, line: 521, type: !601)
!6067 = !{!6066}
!6068 = !DILocalVariable(name: "alloc", scope: !5968, file: !1015, line: 175, type: !3, align: 8)
!6069 = !DILocalVariable(name: "capacity", arg: 1, scope: !5968, file: !1015, line: 175, type: !601)
!6070 = !{!6069, !6068}
!6071 = !DILocation(line: 969, column: 20, scope: !5966, inlinedAt: !6064)
!6072 = !DILocation(line: 175, column: 53, scope: !5968, inlinedAt: !6071)
!6073 = !DILocation(line: 0, scope: !5963)
!6074 = !DILocation(line: 0, scope: !5962)
!6075 = !DILocation(line: 0, scope: !5961)
!6076 = !DILocation(line: 0, scope: !5967, inlinedAt: !6063)
!6077 = !DILocation(line: 0, scope: !5966, inlinedAt: !6064)
!6078 = !DILocation(line: 0, scope: !5968, inlinedAt: !6071)
!6079 = !DILocation(line: 0, scope: !5960)
!6080 = !DILocalVariable(name: "dst", arg: 1, scope: !5979, file: !561, line: 1941, type: !2060)
!6081 = !DILocalVariable(name: "src", arg: 2, scope: !5979, file: !561, line: 1941, type: !315)
!6082 = !{!6080, !6081}
!6083 = !DILocation(line: 33, column: 21, scope: !5960)
!6084 = !DILocation(line: 0, scope: !5979, inlinedAt: !6083)
!6085 = !DILocalVariable(name: "self", arg: 1, scope: !5980, file: !1877, line: 17, type: !2064)
!6086 = !{null, !2064, !393}
!6087 = !DISubroutineType(types: !6086)
!6088 = !DILocalVariable(name: "iter", arg: 2, scope: !5980, file: !1877, line: 17, type: !393)
!6089 = !{!6085, !6088}
!6090 = !{!1814, !6056, !630}
!6091 = !DILocalVariable(name: "self", arg: 1, scope: !5987, file: !1005, line: 4094, type: !2064)
!6092 = !{!1814, !630, !6056}
!6093 = !DISubprogram(name: "extend_desugared<&str, alloc::alloc::Global, core::str::iter::SplitN<&str>>", linkageName: "_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecReE16extend_desugaredINtNtNtCskKLDkoKarTP_4core3str4iter6SplitNBG_EECsiGRwBGCeC5s_11quiche_apps", scope: !353, file: !1005, line: 4094, type: !6087, scopeLine: 4094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !6092)
!6094 = !DILocalVariable(name: "iterator", arg: 2, scope: !5987, file: !1005, line: 4094, type: !393)
!6095 = !DILocalVariable(name: "element", scope: !5986, file: !1005, line: 4102, type: !315, align: 64)
!6096 = !DILocalVariable(name: "len", scope: !5985, file: !1005, line: 4103, type: !601, align: 64)
!6097 = !DILocalVariable(name: "lower", scope: !5984, file: !1005, line: 4105, type: !601, align: 64)
!6098 = !{!6091, !6094, !6095, !6096, !6097}
!6099 = !DILocalVariable(name: "self", arg: 1, scope: !5990, file: !1005, line: 3099, type: !2064)
!6100 = !{!6099}
!6101 = !DILocalVariable(name: "self", arg: 1, scope: !5993, file: !1005, line: 1436, type: !2064)
!6102 = !{!6101}
!6103 = !DILocalVariable(name: "self", arg: 1, scope: !5996, file: !1005, line: 2049, type: !2064)
!6104 = !{!6103}
!6105 = !DILocalVariable(name: "self", arg: 1, scope: !5999, file: !1005, line: 2216, type: !2064)
!6106 = !DILocalVariable(name: "new_len", arg: 2, scope: !5999, file: !1005, line: 2216, type: !601)
!6107 = !{!6105, !6106}
!6108 = !DILocalVariable(name: "elem_size", scope: !6005, file: !1015, line: 615, type: !601, align: 64)
!6109 = !DILocalVariable(name: "self", arg: 1, scope: !6005, file: !1015, line: 615, type: !1016)
!6110 = !{!6109, !6108}
!6111 = !DILocalVariable(name: "self", arg: 1, scope: !6006, file: !1015, line: 308, type: !2077)
!6112 = !{!6111}
!6113 = !DILexicalBlockFile(scope: !6006, file: !1015, discriminator: 2)
!6114 = !DILexicalBlockFile(scope: !5993, file: !1005, discriminator: 2)
!6115 = !{!6017, !6015}
!6116 = !DILocalVariable(name: "count", arg: 2, scope: !6019, file: !1031, line: 937, type: !601)
!6117 = !DILocalVariable(name: "self", arg: 1, scope: !6019, file: !1031, line: 937, type: !2060)
!6118 = !{!6117, !6116}
!6119 = !DILocalVariable(name: "dst", arg: 1, scope: !6037, file: !561, line: 1941, type: !2060)
!6120 = !DILocalVariable(name: "src", arg: 2, scope: !6037, file: !561, line: 1941, type: !315)
!6121 = !{!6119, !6120}
!6122 = !{!6041, !6040}
!6123 = !DILocation(line: 25, column: 28, scope: !5965)
!6124 = !DILocation(line: 24, column: 13, scope: !5965)
!6125 = !DILocation(line: 24, column: 41, scope: !5965)
!6126 = !DILocation(line: 24, column: 32, scope: !5965)
!6127 = !DILocation(line: 24, column: 26, scope: !5965)
!6128 = !DILocation(line: 435, column: 15, scope: !331, inlinedAt: !5969)
!6129 = !DILocation(line: 435, column: 9, scope: !331, inlinedAt: !5969)
!6130 = !DILocation(line: 0, scope: !331, inlinedAt: !5969)
!6131 = !DILocation(line: 443, column: 17, scope: !331, inlinedAt: !5969)
!6132 = !DILocation(line: 443, column: 25, scope: !329, inlinedAt: !5969)
!6133 = !DILocation(line: 436, column: 16, scope: !331, inlinedAt: !5969)
!6134 = !DILocation(line: 764, column: 9, scope: !332, inlinedAt: !5971)
!6135 = !DILocation(line: 210, column: 9, scope: !333, inlinedAt: !5977)
!6136 = !DILocation(line: 444, column: 9, scope: !331, inlinedAt: !5969)
!6137 = !DILocation(line: 1964, column: 41, scope: !5979, inlinedAt: !6083)
!6138 = !DILocation(line: 36, column: 17, scope: !5960)
!6139 = !DILocation(line: 41, column: 64, scope: !5964)
!6140 = !DILocation(line: 4102, column: 44, scope: !5986, inlinedAt: !5988)
!6141 = !DILocation(line: 4102, column: 35, scope: !5986, inlinedAt: !5988)
!6142 = !DILocation(line: 4102, column: 19, scope: !5986, inlinedAt: !5988)
!6143 = !DILocation(line: 3100, column: 19, scope: !5990, inlinedAt: !5991)
end_hunk_1
