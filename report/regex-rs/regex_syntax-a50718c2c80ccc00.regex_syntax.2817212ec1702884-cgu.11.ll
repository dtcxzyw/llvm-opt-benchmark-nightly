Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.11?download=true
inline.NumInlined: 186
inline.NumDeleted: 98
begin_hunk_0_@_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeE6negateB9_:bb.a

bb.g:                                             ; preds = %._crit_edge
  %i.am = load ptr, ptr %i.r, align 8, !dbg !4953, !nonnull !20, !noundef !20
    #dbg_value(ptr %i.am, !4695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4908)
    #dbg_value(ptr %i.am, !4702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4910)
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ag, !dbg !4960
  %i.ao = getelementptr i8, ptr %i.an, i64 1, !dbg !4961
  %.val57 = load i8, ptr %i.ao, align 1, !dbg !4961, !noundef !20 ; 2 uses
    #dbg_value(ptr undef, !2706, !DIExpression(), !4661)
    #dbg_value(ptr undef, !2703, !DIExpression(), !4661)
  %.not69 = icmp eq i8 %.val57, -1, !dbg !4962
  br i1 %.not69, label %bb.i, label %_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9increment.exit, !dbg !4963

bb.h:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #13, !dbg !4921
  unreachable, !dbg !4921

bb.i:                                             ; preds = %bb.g, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4964
  call void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE5drainINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEEBJ_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c), !dbg !4965
    #dbg_value(ptr %i.a, !2773, !DIExpression(), !4966)
  call void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !dbg !4968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4969
  br label %bb.k, !dbg !4779

_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9increment.exit: ; preds = %bb.g
    #dbg_value(ptr %0, !4688, !DIExpression(), !4970)
    #dbg_value(ptr %0, !4784, !DIExpression(), !4971)
    #dbg_value(ptr %0, !4789, !DIExpression(), !4973)
    #dbg_value(ptr %0, !4794, !DIExpression(), !4976)
    #dbg_value(i64 %i.af, !4695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4915)
    #dbg_value(i64 %i.af, !4702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4918)
    #dbg_value(ptr %i.am, !4695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4915)
    #dbg_value(ptr %i.am, !4702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4918)
    #dbg_value(i8 %.val57, !4979, !DIExpression(), !4982)
    #dbg_value(i8 %.val57, !4984, !DIExpression(), !4988)
    #dbg_value(i8 1, !4987, !DIExpression(), !4988)
    #dbg_value(i1 false, !4990, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !4993)
  %i.ap = add nuw i8 %.val57, 1, !dbg !4995
    #dbg_value(i8 %i.ap, !4996, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5001)
    #dbg_value(i8 1, !4996, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5001)
    #dbg_value(i8 %i.ap, !4659, !DIExpression(), !5003)
    #dbg_value(ptr %0, !4742, !DIExpression(), !5004)
  %i.aq = tail call { i8, i8 } @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval6createB6_(i8 noundef %i.ap, i8 noundef -1), !dbg !5006 ; 2 uses
  %i.ar = extractvalue { i8, i8 } %i.aq, 0, !dbg !5006
  %i.as = extractvalue { i8, i8 } %i.aq, 1, !dbg !5006
    #dbg_value(i8 %i.ar, !4745, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5004)
    #dbg_value(i8 %i.as, !4745, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5004)
    #dbg_value(ptr %0, !2875, !DIExpression(), !5007)
    #dbg_value(ptr %0, !2889, !DIExpression(), !5009)
    #dbg_value(i8 %i.ar, !2882, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5007)
    #dbg_value(i8 %i.as, !2882, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5007)
    #dbg_value(i64 2, !2897, !DIExpression(), !5011)
  %i.at = load i64, ptr %i.b, align 8, !dbg !5014, !alias.scope !5015, !noundef !20 ; 3 uses
    #dbg_value(i64 %i.at, !2883, !DIExpression(), !5018)
    #dbg_value(i64 %i.at, !2914, !DIExpression(), !5019)
    #dbg_value(ptr %0, !2911, !DIExpression(), !5021)
  %i.au = load i64, ptr %0, align 8, !dbg !5022, !range !2922, !alias.scope !5015, !noundef !20
  %i.av = icmp eq i64 %i.at, %i.au, !dbg !5023
  br i1 %i.av, label %bb.j, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit62, !dbg !5023

bb.j:                                             ; preds = %_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9increment.exit
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #12, !dbg !5024
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit62, !dbg !5025

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit62: ; preds = %_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9increment.exit, %bb.j
  %i.aw = load ptr, ptr %i.r, align 8, !dbg !5026, !alias.scope !5015, !nonnull !20, !noundef !20
    #dbg_value(ptr %i.aw, !2917, !DIExpression(), !5019)
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.at, !dbg !5030 ; 2 uses
    #dbg_value(ptr %i.ax, !2885, !DIExpression(), !5031)
    #dbg_value(ptr %i.ax, !2938, !DIExpression(), !5032)
    #dbg_value(i8 %i.ar, !2943, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5032)
    #dbg_value(i8 %i.as, !2943, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5032)
  store i8 %i.ar, ptr %i.ax, align 1, !dbg !5034
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1, !dbg !5034
  store i8 %i.as, ptr %i.ay, align 1, !dbg !5034
  %i.az = add i64 %i.at, 1, !dbg !5035
  store i64 %i.az, ptr %i.b, align 8, !dbg !5035, !alias.scope !5015
  br label %bb.i, !dbg !5036

bb.k:                                             ; preds = %bb.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit
  ret void, !dbg !4779

bb.l:                                             ; preds = %.lr.ph
  %i.ba = load ptr, ptr %i.r, align 8, !dbg !5037, !nonnull !20, !noundef !20 ; 2 uses
    #dbg_value(ptr %i.ba, !4695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4947)
    #dbg_value(ptr %i.ba, !4702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4949)
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %i.ak, !dbg !5044
  %i.bc = getelementptr i8, ptr %i.bb, i64 1, !dbg !5045
  %.val = load i8, ptr %i.bc, align 1, !dbg !5045, !noundef !20 ; 2 uses
    #dbg_value(i8 %.val, !4979, !DIExpression(), !5046)
    #dbg_value(i8 %.val, !4984, !DIExpression(), !5048)
    #dbg_value(i8 1, !4987, !DIExpression(), !5048)
  %i.bd = icmp eq i8 %.val, -1, !dbg !5050
    #dbg_value(i1 %i.bd, !4990, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5051)
  br i1 %i.bd, label %bb.m, label %_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9increment.exit63, !dbg !5053, !prof !3072

bb.m:                                             ; preds = %bb.l
    #dbg_value(i1 false, !4996, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5054)
    #dbg_value(i8 poison, !4996, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5054)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13, !dbg !5056
  unreachable, !dbg !5056

_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9increment.exit63: ; preds = %bb.l
  %i.be = add nuw i8 %.val, 1, !dbg !5050
    #dbg_value(i8 %i.be, !4996, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5054)
    #dbg_value(i8 1, !4996, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5054)
    #dbg_value(i8 %i.be, !4655, !DIExpression(), !5057)
    #dbg_value(ptr %0, !4688, !DIExpression(), !5058)
    #dbg_value(ptr %0, !4784, !DIExpression(), !5059)
    #dbg_value(ptr %0, !4789, !DIExpression(), !5061)
    #dbg_value(ptr %0, !4794, !DIExpression(), !5064)
    #dbg_value(ptr poison, !4695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4933)
    #dbg_value(ptr poison, !4702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4936)
    #dbg_value(i64 %i.ai, !4695, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4933)
    #dbg_value(i64 %i.ai, !4702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4936)
  %i.bf = icmp ult i64 %.sroa.0.081, %i.ai, !dbg !5067
  br i1 %i.bf, label %bb.o, label %bb.r, !dbg !5067

bb.n:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #13, !dbg !4952
  unreachable, !dbg !4952

bb.o:                                             ; preds = %_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9increment.exit63
    #dbg_value(ptr %i.ba, !4695, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4933)
    #dbg_value(ptr %i.ba, !4702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4936)
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %.sroa.0.081, !dbg !5068
  %.val58 = load i8, ptr %i.bg, align 1, !dbg !5069, !noundef !20 ; 2 uses
    #dbg_value(i8 %.val58, !4821, !DIExpression(), !5070)
    #dbg_value(i8 %.val58, !4829, !DIExpression(), !5072)
    #dbg_value(i8 1, !4846, !DIExpression(), !5072)
  %i.bh = icmp eq i8 %.val58, 0, !dbg !5074
  br i1 %i.bh, label %bb.p, label %_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9decrement.exit64, !dbg !5074, !prof !3072

bb.p:                                             ; preds = %bb.o
    #dbg_value(i1 false, !4850, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5075)
    #dbg_value(i8 poison, !4850, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5075)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #13, !dbg !5077
  unreachable, !dbg !5077

_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9decrement.exit64: ; preds = %bb.o
  %i.bi = add i8 %.val58, -1, !dbg !5078
    #dbg_value(i8 %i.bi, !4850, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5075)
    #dbg_value(i8 1, !4850, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5075)
    #dbg_value(i8 %i.bi, !4657, !DIExpression(), !5079)
    #dbg_value(ptr %0, !4742, !DIExpression(), !5080)
  %i.bj = tail call { i8, i8 } @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval6createB6_(i8 noundef %i.be, i8 noundef %i.bi), !dbg !5082 ; 2 uses
  %i.bk = extractvalue { i8, i8 } %i.bj, 0, !dbg !5082
  %i.bl = extractvalue { i8, i8 } %i.bj, 1, !dbg !5082
    #dbg_value(i8 %i.bk, !4745, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5080)
    #dbg_value(i8 %i.bl, !4745, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5080)
    #dbg_value(ptr %0, !2875, !DIExpression(), !5083)
    #dbg_value(ptr %0, !2889, !DIExpression(), !5085)
    #dbg_value(i8 %i.bk, !2882, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5083)
    #dbg_value(i8 %i.bl, !2882, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5083)
    #dbg_value(i64 2, !2897, !DIExpression(), !5087)
  %i.bm = load i64, ptr %i.b, align 8, !dbg !5090, !alias.scope !5091, !noundef !20 ; 3 uses
    #dbg_value(i64 %i.bm, !2883, !DIExpression(), !5094)
    #dbg_value(i64 %i.bm, !2914, !DIExpression(), !5095)
    #dbg_value(ptr %0, !2911, !DIExpression(), !5097)
  %i.bn = load i64, ptr %0, align 8, !dbg !5098, !range !2922, !alias.scope !5091, !noundef !20
  %i.bo = icmp eq i64 %i.bm, %i.bn, !dbg !5099
  br i1 %i.bo, label %bb.q, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit65, !dbg !5099

bb.q:                                             ; preds = %_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9decrement.exit64
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #12, !dbg !5100
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit65, !dbg !5101

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit65: ; preds = %_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9decrement.exit64, %bb.q
  %i.bp = load ptr, ptr %i.r, align 8, !dbg !5102, !alias.scope !5091, !nonnull !20, !noundef !20
    #dbg_value(ptr %i.bp, !2917, !DIExpression(), !5095)
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.bp, i64 %i.bm, !dbg !5106 ; 2 uses
    #dbg_value(ptr %i.bq, !2885, !DIExpression(), !5107)
    #dbg_value(ptr %i.bq, !2938, !DIExpression(), !5108)
    #dbg_value(i8 %i.bk, !2943, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5108)
    #dbg_value(i8 %i.bl, !2943, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !5108)
  store i8 %i.bk, ptr %i.bq, align 1, !dbg !5110
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1, !dbg !5110
  store i8 %i.bl, ptr %i.br, align 1, !dbg !5110
  %i.bs = add i64 %i.bm, 1, !dbg !5111            ; 3 uses
  store i64 %i.bs, ptr %i.b, align 8, !dbg !5111, !alias.scope !5091
    #dbg_value(i64 %i.aj, !4651, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4809)
    #dbg_value(ptr undef, !4677, !DIExpression(), !4681)
    #dbg_value(ptr undef, !4671, !DIExpression(), !4680)
    #dbg_value(ptr undef, !4663, !DIExpression(), !4667)
    #dbg_value(ptr undef, !4666, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4810)
  %exitcond.not = icmp eq i64 %i.aj, %i.c, !dbg !4811
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !4668

bb.r:                                             ; preds = %_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9increment.exit63
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.081, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #13, !dbg !5067
  unreachable, !dbg !5067
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeE9intersectB9_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5112 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !2703, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5135)
    #dbg_value(ptr poison, !2706, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !5135)
    #dbg_value(ptr poison, !5131, !DIExpression(), !5137)
    #dbg_value(ptr poison, !5138, !DIExpression(), !5142)
    #dbg_value(ptr poison, !5147, !DIExpression(), !5160)
    #dbg_value(ptr poison, !5158, !DIExpression(), !5161)
    #dbg_value(ptr poison, !5147, !DIExpression(), !5162)
    #dbg_value(ptr poison, !5158, !DIExpression(), !5166)
    #dbg_value(ptr poison, !5129, !DIExpression(), !5137)
    #dbg_value(ptr poison, !5138, !DIExpression(), !5167)
    #dbg_value(ptr poison, !5147, !DIExpression(), !5171)
    #dbg_value(ptr poison, !5158, !DIExpression(), !5172)
    #dbg_value(ptr %0, !5115, !DIExpression(), !5173)
    #dbg_value(ptr %1, !5116, !DIExpression(), !5173)
    #dbg_value(i64 1, !5174, !DIExpression(), !5178)
    #dbg_value(i64 1, !5180, !DIExpression(), !5184)
    #dbg_value(i64 1, !5174, !DIExpression(), !5186)
    #dbg_value(i64 1, !5180, !DIExpression(), !5189)
    #dbg_value(i64 1, !5174, !DIExpression(), !5192)
    #dbg_value(i64 1, !5180, !DIExpression(), !5195)
    #dbg_value(ptr %0, !5198, !DIExpression(), !5201)
    #dbg_value(ptr %0, !5203, !DIExpression(), !5206)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5208 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !5208, !noundef !20 ; 4 uses
  %i.d = icmp ult i64 %i.c, 4611686018427387904, !dbg !5209
  tail call void @llvm.assume(i1 %i.d), !dbg !5210
  %i.e = icmp eq i64 %i.c, 0, !dbg !5211
  br i1 %i.e, label %bb.n, label %bb.b, !dbg !5212

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5198, !DIExpression(), !5213)
    #dbg_value(ptr %1, !5203, !DIExpression(), !5215)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5218
  %i.g = load i64, ptr %i.f, align 8, !dbg !5218, !noundef !20 ; 5 uses
  %i.h = icmp ult i64 %i.g, 4611686018427387904, !dbg !5219
  tail call void @llvm.assume(i1 %i.h), !dbg !5220
  %i.i = icmp eq i64 %i.g, 0, !dbg !5221
  br i1 %i.i, label %bb.c, label %.lr.ph, !dbg !5222

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
    #dbg_value(i64 1, !5119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5223)
    #dbg_value(i64 1, !5121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5224)
    #dbg_value(ptr %0, !5225, !DIExpression(), !5229)
    #dbg_value(ptr %0, !5231, !DIExpression(), !5234)
    #dbg_value(ptr %0, !5236, !DIExpression(), !5239)
    #dbg_value(ptr %0, !5241, !DIExpression(), !5244)
    #dbg_value(i64 0, !5123, !DIExpression(), !5246)
    #dbg_value(i64 0, !5228, !DIExpression(), !5247)
    #dbg_value(i64 0, !5248, !DIExpression(), !5252)
    #dbg_value(i64 0, !5254, !DIExpression(), !5258)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !20, !noundef !20
  br label %bb.d, !dbg !5260

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !5261, !DIExpression(), !5271)
    #dbg_value(ptr poison, !5265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5273)
    #dbg_value(i64 poison, !5265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5273)
  store i64 0, ptr %i.b, align 8, !dbg !5274
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5275
  store i8 1, ptr %i.m, align 8, !dbg !5275
  br label %bb.n, !dbg !5276

bb.d:                                             ; preds = %.lr.ph, %.cont.cont
  %.sroa.047.088 = phi i64 [ 1, %.lr.ph ], [ %.sroa.047.172, %.cont.cont ] ; 3 uses
  %.sroa.051.087 = phi i64 [ 1, %.lr.ph ], [ %.sroa.051.170, %.cont.cont ] ; 3 uses
  %.sroa.0.086 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.1, %.cont.cont ] ; 5 uses
  %.sroa.044.085 = phi i64 [ 0, %.lr.ph ], [ %.sroa.044.1, %.cont.cont ] ; 4 uses
    #dbg_value(i64 %.sroa.047.088, !5119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5223)
    #dbg_value(i64 %.sroa.051.087, !5121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5224)
    #dbg_value(i64 %.sroa.0.086, !5123, !DIExpression(), !5246)
    #dbg_value(ptr poison, !5251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5252)
    #dbg_value(ptr poison, !5257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5258)
    #dbg_value(ptr %1, !5225, !DIExpression(), !5278)
    #dbg_value(ptr %1, !5231, !DIExpression(), !5280)
    #dbg_value(ptr %1, !5236, !DIExpression(), !5283)
    #dbg_value(ptr %1, !5241, !DIExpression(), !5286)
    #dbg_value(i64 %.sroa.044.085, !5125, !DIExpression(), !5289)
    #dbg_value(i64 %.sroa.044.085, !5228, !DIExpression(), !5290)
    #dbg_value(i64 %.sroa.044.085, !5248, !DIExpression(), !5291)
    #dbg_value(i64 %.sroa.044.085, !5254, !DIExpression(), !5293)
    #dbg_value(ptr poison, !5251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5291)
    #dbg_value(ptr poison, !5257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5293)
    #dbg_value(i64 %i.g, !5251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5291)
    #dbg_value(i64 %i.g, !5257, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5293)
  %i.n = icmp ult i64 %.sroa.044.085, %i.g, !dbg !5296
  br i1 %i.n, label %bb.e, label %bb.f, !dbg !5296

._crit_edge:                                      ; preds = %.cont.cont
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.1, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #13, !dbg !5260
  unreachable, !dbg !5260

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.l, !5251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5291)
    #dbg_value(ptr %i.l, !5257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5293)
  %i.o = load ptr, ptr %i.j, align 8, !dbg !5297, !nonnull !20, !noundef !20
    #dbg_value(ptr %i.o, !5257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5258)
    #dbg_value(ptr %i.o, !5251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5252)
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.sroa.0.086, !dbg !5306
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.sroa.044.085, !dbg !5307 ; 2 uses
  %i.r = tail call i24 @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB4_8interval8Interval9intersectB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.q), !dbg !5308 ; 2 uses
  %i.s = trunc i24 %i.r to i1, !dbg !5309
  %.pre = load i64, ptr %i.b, align 8, !dbg !5310 ; 4 uses
  br i1 %i.s, label %bb.g, label %bb.i, !dbg !5316

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.044.085, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #13, !dbg !5296
  unreachable, !dbg !5296

bb.g:                                             ; preds = %bb.e
    #dbg_value(i24 %i.r, !5127, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5317)
    #dbg_value(i24 %i.r, !5318, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5322)
    #dbg_value(i24 %i.r, !5127, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5317)
    #dbg_value(i24 %i.r, !5318, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5322)
    #dbg_value(ptr %0, !5321, !DIExpression(), !5322)
    #dbg_value(ptr %0, !2875, !DIExpression(), !5324)
    #dbg_value(ptr %0, !2889, !DIExpression(), !5326)
    #dbg_value(i24 %i.r, !2882, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5324)
    #dbg_value(i24 %i.r, !2882, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5324)
    #dbg_value(i64 2, !2897, !DIExpression(), !5328)
    #dbg_value(i64 %.pre, !2883, !DIExpression(), !5331)
    #dbg_value(i64 %.pre, !2914, !DIExpression(), !5332)
    #dbg_value(ptr %0, !2911, !DIExpression(), !5334)
  %i.t = load i64, ptr %0, align 8, !dbg !5335, !range !2922, !alias.scope !5336, !noundef !20
  %i.u = icmp eq i64 %.pre, %i.t, !dbg !5339
  br i1 %i.u, label %bb.h, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit, !dbg !5339

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #12, !dbg !5340
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit, !dbg !5341

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit: ; preds = %bb.g, %bb.h
  %i.v = load ptr, ptr %i.j, align 8, !dbg !5342, !alias.scope !5336, !nonnull !20, !noundef !20
    #dbg_value(ptr %i.v, !2917, !DIExpression(), !5332)
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %.pre, !dbg !5346
    #dbg_value(ptr %i.w, !2885, !DIExpression(), !5347)
    #dbg_value(ptr %i.w, !2938, !DIExpression(), !5348)
    #dbg_value(i24 %i.r, !2943, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5348)
    #dbg_value(i24 %i.r, !2943, !DIExpression(DW_OP_constu, 16, DW_OP_shr, DW_OP_LLVM_convert, 24, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5348)
  %i.x = lshr i24 %i.r, 8, !dbg !5350
  %i.y = trunc nuw i24 %i.x to i16, !dbg !5350
  store i16 %i.y, ptr %i.w, align 1, !dbg !5350
  %i.z = add i64 %.pre, 1, !dbg !5351             ; 2 uses
  store i64 %i.z, ptr %i.b, align 8, !dbg !5351, !alias.scope !5336
  br label %bb.i, !dbg !5352

bb.i:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit, %bb.e
  %i.aa = phi i64 [ %i.z, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_.exit ], [ %.pre, %bb.e ], !dbg !5310 ; 4 uses
    #dbg_value(ptr %0, !5225, !DIExpression(), !5353)
    #dbg_value(ptr %0, !5231, !DIExpression(), !5354)
    #dbg_value(ptr %0, !5236, !DIExpression(), !5355)
    #dbg_value(ptr %0, !5241, !DIExpression(), !5356)
    #dbg_value(i64 %.sroa.0.086, !5123, !DIExpression(), !5246)
    #dbg_value(i64 %.sroa.0.086, !5228, !DIExpression(), !5359)
    #dbg_value(i64 %.sroa.0.086, !5248, !DIExpression(), !5360)
    #dbg_value(i64 %.sroa.0.086, !5254, !DIExpression(), !5362)
    #dbg_value(ptr poison, !5251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5360)
    #dbg_value(ptr poison, !5257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5362)
    #dbg_value(i64 %i.aa, !5251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5360)
    #dbg_value(i64 %i.aa, !5257, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5362)
  %i.ab = icmp ult i64 %.sroa.0.086, %i.aa, !dbg !5365
  br i1 %i.ab, label %bb.k, label %bb.j, !dbg !5365

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.086, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #13, !dbg !5365
  unreachable, !dbg !5365

bb.k:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.j, align 8, !dbg !5366, !nonnull !20, !noundef !20
    #dbg_value(ptr %i.ac, !5251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5360)
    #dbg_value(ptr %i.ac, !5257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5362)
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %.sroa.0.086, !dbg !5373
  %i.ae = getelementptr i8, ptr %i.ad, i64 1, !dbg !5374
  %.val61 = load i8, ptr %i.ae, align 1, !dbg !5374, !noundef !20
    #dbg_value(ptr %1, !5225, !DIExpression(), !5375)
    #dbg_value(ptr %1, !5231, !DIExpression(), !5377)
    #dbg_value(ptr %1, !5236, !DIExpression(), !5380)
    #dbg_value(ptr %1, !5241, !DIExpression(), !5383)
    #dbg_value(i64 %.sroa.044.085, !5125, !DIExpression(), !5289)
    #dbg_value(i64 %.sroa.044.085, !5228, !DIExpression(), !5386)
    #dbg_value(i64 %.sroa.044.085, !5248, !DIExpression(), !5387)
    #dbg_value(i64 %.sroa.044.085, !5254, !DIExpression(), !5389)
    #dbg_value(i64 %i.g, !5251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5387)
    #dbg_value(i64 %i.g, !5257, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5389)
    #dbg_value(ptr %i.l, !5251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5387)
    #dbg_value(ptr %i.l, !5257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5389)
  %i.af = getelementptr i8, ptr %i.q, i64 1, !dbg !5392
  %.val = load i8, ptr %i.af, align 1, !dbg !5392, !noundef !20
    #dbg_value(ptr undef, !2706, !DIExpression(), !5135)
    #dbg_value(ptr undef, !2703, !DIExpression(), !5135)
  %i.ag = icmp ult i8 %.val61, %.val, !dbg !5393  ; 3 uses
    #dbg_value(ptr undef, !5129, !DIExpression(), !5137)
    #dbg_value(ptr undef, !5158, !DIExpression(), !5166)
    #dbg_value(ptr undef, !5147, !DIExpression(), !5162)
    #dbg_value(ptr undef, !5131, !DIExpression(), !5137)
  %. = select i1 %i.ag, i64 %i.c, i64 %i.g, !dbg !5394
    #dbg_value(ptr poison, !5147, !DIExpression(), !5162)
    #dbg_value(ptr poison, !5158, !DIExpression(), !5166)
    #dbg_value(ptr poison, !5129, !DIExpression(), !5137)
    #dbg_value(ptr poison, !5131, !DIExpression(), !5137)
    #dbg_value(ptr undef, !5138, !DIExpression(DW_OP_deref), !5395)
    #dbg_value(ptr undef, !5141, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !5398)
  %.sroa.speculated = select i1 %i.ag, i64 %.sroa.047.088, i64 %.sroa.051.087, !dbg !5399 ; 2 uses
  %i.ah = icmp ult i64 %.sroa.speculated, %., !dbg !5399
  br i1 %i.ah, label %bb.m, label %bb.l, !dbg !5400

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5401
  call void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE5drainINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEEBJ_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c), !dbg !5402
    #dbg_value(ptr %i.a, !2773, !DIExpression(), !5403)
  call void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !dbg !5405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5406
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5407 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !dbg !5407, !range !2797, !noundef !20
  %i.ak = trunc nuw i8 %i.aj to i1, !dbg !5407
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !5407
  %i.am = load i8, ptr %i.al, align 8, !dbg !5407, !range !2797
  %.sroa.012.0 = select i1 %i.ak, i8 %i.am, i8 0, !dbg !5407
  store i8 %.sroa.012.0, ptr %i.ai, align 8, !dbg !5408
  br label %bb.n, !dbg !5409

bb.m:                                             ; preds = %bb.k
    #dbg_value(i64 %.sroa.speculated, !5152, !DIExpression(), !5410)
    #dbg_value(i64 %.sroa.speculated, !5177, !DIExpression(), !5192)
    #dbg_value(i64 %.sroa.speculated, !5183, !DIExpression(), !5195)
  %i.an = add nuw nsw i64 %.sroa.speculated, 1, !dbg !5411 ; 2 uses
  br i1 %i.ag, label %.cont.cont, label %.cont.else, !dbg !5412

.cont.else:                                       ; preds = %bb.m
    #dbg_value(i64 %.sroa.047.088, !5119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5223)
    #dbg_value(i64 %i.an, !5121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5224)
    #dbg_value(i64 %.sroa.speculated, !5133, !DIExpression(), !5413)
  br label %.cont.cont, !dbg !5414

.cont.cont:                                       ; preds = %bb.m, %.cont.else
  %.sroa.047.172 = phi i64 [ %.sroa.047.088, %.cont.else ], [ %i.an, %bb.m ]
  %.sroa.051.170 = phi i64 [ %i.an, %.cont.else ], [ %.sroa.051.087, %bb.m ]
  %.sroa.044.1 = phi i64 [ %.sroa.051.087, %.cont.else ], [ %.sroa.044.085, %bb.m ], !dbg !5246
  %.sroa.0.1 = phi i64 [ %.sroa.0.086, %.cont.else ], [ %.sroa.047.088, %bb.m ], !dbg !5224 ; 3 uses
    #dbg_value(i64 %.sroa.047.172, !5119, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5223)
    #dbg_value(i64 %.sroa.051.170, !5121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5224)
    #dbg_value(ptr %0, !5225, !DIExpression(), !5229)
    #dbg_value(ptr %0, !5231, !DIExpression(), !5234)
    #dbg_value(ptr %0, !5236, !DIExpression(), !5239)
    #dbg_value(ptr %0, !5241, !DIExpression(), !5244)
    #dbg_value(i64 %.sroa.0.1, !5123, !DIExpression(), !5246)
    #dbg_value(i64 %.sroa.0.1, !5228, !DIExpression(), !5247)
    #dbg_value(i64 %.sroa.0.1, !5248, !DIExpression(), !5252)
    #dbg_value(i64 %.sroa.0.1, !5254, !DIExpression(), !5258)
    #dbg_value(ptr poison, !5251, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5252)
    #dbg_value(ptr poison, !5257, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5258)
    #dbg_value(i64 %i.aa, !5251, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5252)
    #dbg_value(i64 %i.aa, !5257, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5258)
  %i.ao = icmp ult i64 %.sroa.0.1, %i.aa, !dbg !5260
  br i1 %i.ao, label %bb.d, label %._crit_edge, !dbg !5260

bb.n:                                             ; preds = %bb.a, %bb.l, %bb.c
  ret void, !dbg !5409
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE10differenceB9_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5415 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !5441, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5449)
    #dbg_value(ptr poison, !5448, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5449)
  %i.b = alloca [16 x i8], align 4                ; 8 uses
  %i.c = alloca [8 x i8], align 4                 ; 9 uses
    #dbg_value(ptr poison, !5451, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5455)
    #dbg_value(ptr poison, !5454, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5455)
    #dbg_value(ptr poison, !5451, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5457)
    #dbg_value(ptr poison, !5454, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5457)
    #dbg_value(ptr %0, !5421, !DIExpression(), !5459)
    #dbg_value(ptr %1, !5422, !DIExpression(), !5459)
    #dbg_declare(ptr %i.c, !5430, !DIExpression(), !5460)
    #dbg_value(ptr %0, !5461, !DIExpression(), !5464)
    #dbg_value(ptr %0, !5466, !DIExpression(), !5469)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5471 ; 10 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !5471, !noundef !20 ; 5 uses
  %i.f = icmp ult i64 %i.e, 1152921504606846976, !dbg !5472
  tail call void @llvm.assume(i1 %i.f), !dbg !5473
  %i.g = icmp eq i64 %i.e, 0, !dbg !5474
  br i1 %i.g, label %bb.d, label %bb.b, !dbg !5475

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5461, !DIExpression(), !5476)
    #dbg_value(ptr %1, !5466, !DIExpression(), !5478)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !5481
  %i.i = load i64, ptr %i.h, align 8, !dbg !5481, !noundef !20 ; 6 uses
  %i.j = icmp ult i64 %i.i, 1152921504606846976, !dbg !5482
  tail call void @llvm.assume(i1 %i.j), !dbg !5483
  %i.k = icmp eq i64 %i.i, 0, !dbg !5484
  br i1 %i.k, label %bb.d, label %.preheader102, !dbg !5485

.preheader102:                                    ; preds = %bb.b
    #dbg_value(i64 0, !5425, !DIExpression(), !5486)
    #dbg_value(i64 0, !5427, !DIExpression(), !5486)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !20, !noundef !20 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  br label %bb.h, !dbg !5487

.preheader:                                       ; preds = %.backedge
    #dbg_value(i64 %.sroa.0.0.be, !5425, !DIExpression(), !5486)
  br i1 %i.bn, label %.lr.ph126, label %._crit_edge127, !dbg !5488

.lr.ph126:                                        ; preds = %.preheader
  %.pre142 = load i64, ptr %i.d, align 8, !dbg !5489
  br label %bb.c, !dbg !5488

._crit_edge127:                                   ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5516
  call void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE5drainINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEEBJ_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e), !dbg !5517
    #dbg_value(ptr %i.a, !5518, !DIExpression(), !5536)
  call void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !dbg !5538
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5539
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !5540 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !dbg !5540, !range !2797, !noundef !20
  %i.u = trunc nuw i8 %i.t to i1, !dbg !5540
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !5540
  %i.w = load i8, ptr %i.v, align 8, !dbg !5540, !range !2797
  %.sroa.023.0 = select i1 %i.u, i8 %i.w, i8 0, !dbg !5540
  store i8 %.sroa.023.0, ptr %i.s, align 8, !dbg !5541
  br label %bb.d, !dbg !5542

bb.c:                                             ; preds = %.lr.ph126, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit
  %i.x = phi i64 [ %.pre142, %.lr.ph126 ], [ %i.ag, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit ], !dbg !5489 ; 5 uses
  %.sroa.0.1125 = phi i64 [ %.sroa.0.0.be, %.lr.ph126 ], [ %i.ah, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit ] ; 4 uses
    #dbg_value(i64 %.sroa.0.1125, !5425, !DIExpression(), !5486)
    #dbg_value(ptr %0, !5512, !DIExpression(), !5543)
    #dbg_value(ptr %0, !5505, !DIExpression(), !5544)
    #dbg_value(ptr %0, !5500, !DIExpression(), !5545)
    #dbg_value(ptr %0, !5546, !DIExpression(), !5552)
    #dbg_value(i64 %.sroa.0.1125, !5513, !DIExpression(), !5555)
    #dbg_value(i64 %.sroa.0.1125, !5556, !DIExpression(), !5567)
    #dbg_value(i64 %.sroa.0.1125, !5569, !DIExpression(), !5575)
    #dbg_value(ptr poison, !5561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5567)
    #dbg_value(ptr poison, !5574, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5575)
    #dbg_value(i64 %i.x, !5561, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5567)
    #dbg_value(i64 %i.x, !5574, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5575)
  %i.y = icmp ult i64 %.sroa.0.1125, %i.x, !dbg !5578
  br i1 %i.y, label %bb.e, label %bb.g, !dbg !5578

bb.d:                                             ; preds = %bb.a, %bb.b, %._crit_edge127
  ret void, !dbg !5542

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.n, align 8, !dbg !5579, !nonnull !20, !noundef !20 ; 2 uses
    #dbg_value(ptr %i.z, !5561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5567)
    #dbg_value(ptr %i.z, !5574, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5575)
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.sroa.0.1125, !dbg !5600
  %i.ab = load <2 x i32>, ptr %i.aa, align 4, !dbg !5601
    #dbg_value(i32 poison, !5439, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5602)
    #dbg_value(i32 poison, !5603, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5610)
    #dbg_value(i32 poison, !5439, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5602)
    #dbg_value(i32 poison, !5603, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5610)
    #dbg_value(ptr %0, !5609, !DIExpression(), !5610)
    #dbg_value(ptr %0, !5612, !DIExpression(), !5624)
    #dbg_value(ptr %0, !5626, !DIExpression(), !5632)
    #dbg_value(i32 poison, !5619, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5624)
    #dbg_value(i32 poison, !5619, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5624)
    #dbg_value(i64 8, !5634, !DIExpression(), !5638)
    #dbg_value(i64 %i.x, !5620, !DIExpression(), !5647)
    #dbg_value(i64 %i.x, !5648, !DIExpression(), !5652)
    #dbg_value(ptr %0, !5645, !DIExpression(), !5654)
  %i.ac = load i64, ptr %0, align 8, !dbg !5655, !range !2922, !alias.scope !5656, !noundef !20
  %i.ad = icmp eq i64 %i.x, %i.ac, !dbg !5659
  br i1 %i.ad, label %bb.f, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit, !dbg !5659

bb.f:                                             ; preds = %bb.e
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #12, !dbg !5660
  %.pre143 = load ptr, ptr %i.n, align 8, !dbg !5661, !alias.scope !5656
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit, !dbg !5668

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit: ; preds = %bb.e, %bb.f
  %i.ae = phi ptr [ %i.z, %bb.e ], [ %.pre143, %bb.f ], !dbg !5661
    #dbg_value(ptr %i.ae, !5651, !DIExpression(), !5652)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.x, !dbg !5669
    #dbg_value(ptr %i.af, !5622, !DIExpression(), !5670)
    #dbg_value(ptr %i.af, !5671, !DIExpression(), !5677)
    #dbg_value(i32 poison, !5676, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !5677)
    #dbg_value(i32 poison, !5676, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !5677)
  store <2 x i32> %i.ab, ptr %i.af, align 4, !dbg !5679
  %i.ag = add i64 %i.x, 1, !dbg !5680             ; 2 uses
  store i64 %i.ag, ptr %i.d, align 8, !dbg !5680, !alias.scope !5656
  %i.ah = add nuw i64 %.sroa.0.1125, 1, !dbg !5681 ; 2 uses
    #dbg_value(i64 %i.ah, !5425, !DIExpression(), !5486)
  %exitcond140.not = icmp eq i64 %i.ah, %i.e, !dbg !5488
  br i1 %exitcond140.not, label %._crit_edge127, label %bb.c, !dbg !5488

bb.g:                                             ; preds = %bb.c
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.1125, i64 noundef %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #13, !dbg !5578
  unreachable, !dbg !5578

bb.h:                                             ; preds = %.preheader102, %.backedge
  %.sroa.0.0124 = phi i64 [ 0, %.preheader102 ], [ %.sroa.0.0.be, %.backedge ] ; 10 uses
  %.sroa.012.0123 = phi i64 [ 0, %.preheader102 ], [ %.sroa.012.0.be, %.backedge ] ; 8 uses
    #dbg_value(i64 %.sroa.0.0124, !5425, !DIExpression(), !5486)
    #dbg_value(i64 %.sroa.012.0123, !5427, !DIExpression(), !5486)
    #dbg_value(ptr %1, !5512, !DIExpression(), !5682)
    #dbg_value(ptr %1, !5505, !DIExpression(), !5684)
    #dbg_value(ptr %1, !5500, !DIExpression(), !5686)
    #dbg_value(ptr %1, !5546, !DIExpression(), !5688)
    #dbg_value(i64 %.sroa.012.0123, !5513, !DIExpression(), !5690)
    #dbg_value(i64 %.sroa.012.0123, !5556, !DIExpression(), !5691)
    #dbg_value(i64 %.sroa.012.0123, !5569, !DIExpression(), !5693)
    #dbg_value(i64 %i.i, !5561, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5691)
    #dbg_value(i64 %i.i, !5574, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5693)
    #dbg_value(ptr %i.m, !5561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5691)
    #dbg_value(ptr %i.m, !5574, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5693)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.sroa.012.0123, !dbg !5695 ; 3 uses
    #dbg_value(ptr %0, !5512, !DIExpression(), !5696)
    #dbg_value(ptr %0, !5505, !DIExpression(), !5698)
    #dbg_value(ptr %0, !5500, !DIExpression(), !5701)
    #dbg_value(ptr %0, !5546, !DIExpression(), !5704)
    #dbg_value(i64 %.sroa.0.0124, !5513, !DIExpression(), !5707)
    #dbg_value(i64 %.sroa.0.0124, !5556, !DIExpression(), !5708)
    #dbg_value(i64 %.sroa.0.0124, !5569, !DIExpression(), !5710)
  %i.aj = load i64, ptr %i.d, align 8, !dbg !5713, !noundef !20 ; 5 uses
    #dbg_value(ptr poison, !5561, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5708)
    #dbg_value(ptr poison, !5574, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5710)
    #dbg_value(i64 %i.aj, !5561, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5708)
    #dbg_value(i64 %i.aj, !5574, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5710)
  %i.ak = icmp ult i64 %.sroa.0.0124, %i.aj, !dbg !5714
  br i1 %i.ak, label %bb.i, label %bb.j, !dbg !5714

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr i8, ptr %i.ai, i64 4, !dbg !5715
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE6negateB9_:bb.a
  %i.aw = add nsw i32 %i.av, -1114112, !dbg !7623
  %i.ax = icmp ult i32 %i.aw, -1112064, !dbg !7623
  br i1 %i.ax, label %bb.n, label %_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9increment.exit, !dbg !7623, !prof !3072

bb.n:                                             ; preds = %bb.m
    #dbg_value(i32 -1, !7624, !DIExpression(), !7629)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13, !dbg !7631
  unreachable, !dbg !7631

_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9increment.exit: ; preds = %bb.m, %bb.l
  %.sroa.0.0.i62 = phi i32 [ 57344, %bb.l ], [ %i.au, %bb.m ], !dbg !7595
    #dbg_value(i32 %.sroa.0.0.i62, !7225, !DIExpression(), !7632)
    #dbg_value(ptr %0, !7306, !DIExpression(), !7633)
  %i.ay = tail call { i32, i32 } @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtNtB4_8interval8Interval6createB6_(i32 noundef %.sroa.0.0.i62, i32 noundef 1114111), !dbg !7635 ; 2 uses
  %i.az = extractvalue { i32, i32 } %i.ay, 0, !dbg !7635
  %i.ba = extractvalue { i32, i32 } %i.ay, 1, !dbg !7635
    #dbg_value(i32 %i.az, !7309, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7633)
    #dbg_value(i32 %i.ba, !7309, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7633)
    #dbg_value(ptr %0, !5612, !DIExpression(), !7636)
    #dbg_value(ptr %0, !5626, !DIExpression(), !7638)
    #dbg_value(i32 %i.az, !5619, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7636)
    #dbg_value(i32 %i.ba, !5619, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7636)
    #dbg_value(i64 8, !5634, !DIExpression(), !7640)
  %i.bb = load i64, ptr %i.b, align 8, !dbg !7643, !alias.scope !7644, !noundef !20 ; 3 uses
    #dbg_value(i64 %i.bb, !5620, !DIExpression(), !7647)
    #dbg_value(i64 %i.bb, !5648, !DIExpression(), !7648)
    #dbg_value(ptr %0, !5645, !DIExpression(), !7650)
  %i.bc = load i64, ptr %0, align 8, !dbg !7651, !range !2922, !alias.scope !7644, !noundef !20
  %i.bd = icmp eq i64 %i.bb, %i.bc, !dbg !7652
  br i1 %i.bd, label %bb.o, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit63, !dbg !7652

bb.o:                                             ; preds = %_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9increment.exit
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #12, !dbg !7653
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit63, !dbg !7654

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit63: ; preds = %_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9increment.exit, %bb.o
  %i.be = load ptr, ptr %i.r, align 8, !dbg !7655, !alias.scope !7644, !nonnull !20, !noundef !20
    #dbg_value(ptr %i.be, !5651, !DIExpression(), !7648)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bb, !dbg !7659 ; 2 uses
    #dbg_value(ptr %i.bf, !5622, !DIExpression(), !7660)
    #dbg_value(ptr %i.bf, !5671, !DIExpression(), !7661)
    #dbg_value(i32 %i.az, !5676, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7661)
    #dbg_value(i32 %i.ba, !5676, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7661)
  store i32 %i.az, ptr %i.bf, align 4, !dbg !7663
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4, !dbg !7663
  store i32 %i.ba, ptr %i.bg, align 4, !dbg !7663
  %i.bh = add i64 %i.bb, 1, !dbg !7664
  store i64 %i.bh, ptr %i.b, align 8, !dbg !7664, !alias.scope !7644
  br label %bb.k, !dbg !7665

bb.p:                                             ; preds = %bb.k, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit
  ret void, !dbg !7343

bb.q:                                             ; preds = %.lr.ph
  %i.bi = load ptr, ptr %i.r, align 8, !dbg !7666, !nonnull !20, !noundef !20 ; 2 uses
    #dbg_value(ptr %i.bi, !7259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7558)
    #dbg_value(ptr %i.bi, !7266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7560)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.an, !dbg !7673
  %i.bk = getelementptr i8, ptr %i.bj, i64 4, !dbg !7674
  %.val = load i32, ptr %i.bk, align 4, !dbg !7674, !range !5716, !noundef !20 ; 3 uses
    #dbg_value(i32 %.val, !7590, !DIExpression(), !7675)
    #dbg_value(i32 %.val, !7593, !DIExpression(), !7677)
    #dbg_value(i32 1, !7598, !DIExpression(), !7678)
  %i.bl = icmp eq i32 %.val, 55295, !dbg !7680
  br i1 %i.bl, label %_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9increment.exit65, label %bb.r, !dbg !7680

bb.r:                                             ; preds = %bb.q
    #dbg_value(i32 %.val, !7601, !DIExpression(), !7678)
  %i.bm = add nuw nsw i32 %.val, 1, !dbg !7681    ; 2 uses
    #dbg_value(i32 %i.bm, !7606, !DIExpression(), !7682)
    #dbg_value(i32 %i.bm, !7611, !DIExpression(), !7684)
    #dbg_value(i32 %i.bm, !7618, !DIExpression(), !7686)
  %i.bn = xor i32 %i.bm, 55296, !dbg !7688
  %i.bo = add nsw i32 %i.bn, -1114112, !dbg !7688
  %i.bp = icmp ult i32 %i.bo, -1112064, !dbg !7688
  br i1 %i.bp, label %bb.t, label %bb.s, !dbg !7688, !prof !3072

bb.s:                                             ; preds = %bb.r
  %i.bq = icmp samesign ult i32 %.val, 1114111, !dbg !7689
  tail call void @llvm.assume(i1 %i.bq), !dbg !7689
    #dbg_value(i32 %i.bm, !7624, !DIExpression(), !7690)
  br label %_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9increment.exit65, !dbg !7692

bb.t:                                             ; preds = %bb.r
    #dbg_value(i32 -1, !7624, !DIExpression(), !7690)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13, !dbg !7693
  unreachable, !dbg !7693

_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9increment.exit65: ; preds = %bb.q, %bb.s
  %.sroa.0.0.i64 = phi i32 [ %i.bm, %bb.s ], [ 57344, %bb.q ], !dbg !7675
    #dbg_value(i32 %.sroa.0.0.i64, !7221, !DIExpression(), !7694)
    #dbg_value(ptr %0, !7252, !DIExpression(), !7695)
    #dbg_value(ptr %0, !7348, !DIExpression(), !7696)
    #dbg_value(ptr %0, !7353, !DIExpression(), !7698)
    #dbg_value(ptr %0, !7358, !DIExpression(), !7701)
    #dbg_value(ptr poison, !7259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7544)
    #dbg_value(ptr poison, !7266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7547)
    #dbg_value(i64 %i.al, !7259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7544)
    #dbg_value(i64 %i.al, !7266, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7547)
  %i.br = icmp ult i64 %.sroa.0.086, %i.al, !dbg !7704
  br i1 %i.br, label %bb.v, label %bb.aa, !dbg !7704

bb.u:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #13, !dbg !7563
  unreachable, !dbg !7563

bb.v:                                             ; preds = %_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9increment.exit65
    #dbg_value(ptr %i.bi, !7259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7544)
    #dbg_value(ptr %i.bi, !7266, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7547)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.sroa.0.086, !dbg !7705
  %.val58 = load i32, ptr %i.bs, align 4, !dbg !7706, !range !5716, !noundef !20 ; 2 uses
    #dbg_value(i32 %.val58, !7391, !DIExpression(), !7707)
    #dbg_value(i32 %.val58, !7392, !DIExpression(), !7709)
    #dbg_value(i32 1, !7383, !DIExpression(), !7710)
  switch i32 %.val58, label %bb.w [
    i32 57344, label %_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9decrement.exit67
    i32 0, label %bb.x
  ], !dbg !7712, !prof !7713

bb.w:                                             ; preds = %bb.v
  %i.bt = add nsw i32 %.val58, -1, !dbg !7714     ; 2 uses
    #dbg_value(i32 %i.bt, !7394, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7715)
    #dbg_value(i32 1, !7394, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7715)
    #dbg_value(i32 %i.bt, !7404, !DIExpression(), !7717)
    #dbg_value(i32 %i.bt, !7424, !DIExpression(), !7719)
    #dbg_value(i32 %i.bt, !7433, !DIExpression(), !7721)
  %i.bu = xor i32 %i.bt, 55296, !dbg !7723
  %i.bv = add nsw i32 %i.bu, -1114112, !dbg !7723
  %i.bw = icmp ult i32 %i.bv, -1112064, !dbg !7723
  br i1 %i.bw, label %bb.y, label %_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9decrement.exit67, !dbg !7723, !prof !3072

bb.x:                                             ; preds = %bb.v
    #dbg_value(i32 poison, !7394, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7715)
    #dbg_value(i32 poison, !7394, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7715)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13, !dbg !7724
  unreachable, !dbg !7724

bb.y:                                             ; preds = %bb.w
    #dbg_value(i32 -1, !7459, !DIExpression(), !7725)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13, !dbg !7727
  unreachable, !dbg !7727

_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9decrement.exit67: ; preds = %bb.v, %bb.w
  %.sroa.0.0.i66 = phi i32 [ 55295, %bb.v ], [ %i.bt, %bb.w ], !dbg !7707
    #dbg_value(i32 %.sroa.0.0.i66, !7223, !DIExpression(), !7728)
    #dbg_value(ptr %0, !7306, !DIExpression(), !7729)
  %i.bx = tail call { i32, i32 } @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtNtB4_8interval8Interval6createB6_(i32 noundef %.sroa.0.0.i64, i32 noundef %.sroa.0.0.i66), !dbg !7731 ; 2 uses
  %i.by = extractvalue { i32, i32 } %i.bx, 0, !dbg !7731
  %i.bz = extractvalue { i32, i32 } %i.bx, 1, !dbg !7731
    #dbg_value(i32 %i.by, !7309, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7729)
    #dbg_value(i32 %i.bz, !7309, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7729)
    #dbg_value(ptr %0, !5612, !DIExpression(), !7732)
    #dbg_value(ptr %0, !5626, !DIExpression(), !7734)
    #dbg_value(i32 %i.by, !5619, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7732)
    #dbg_value(i32 %i.bz, !5619, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7732)
    #dbg_value(i64 8, !5634, !DIExpression(), !7736)
  %i.ca = load i64, ptr %i.b, align 8, !dbg !7739, !alias.scope !7740, !noundef !20 ; 3 uses
    #dbg_value(i64 %i.ca, !5620, !DIExpression(), !7743)
    #dbg_value(i64 %i.ca, !5648, !DIExpression(), !7744)
    #dbg_value(ptr %0, !5645, !DIExpression(), !7746)
  %i.cb = load i64, ptr %0, align 8, !dbg !7747, !range !2922, !alias.scope !7740, !noundef !20
  %i.cc = icmp eq i64 %i.ca, %i.cb, !dbg !7748
  br i1 %i.cc, label %bb.z, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit68, !dbg !7748

bb.z:                                             ; preds = %_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9decrement.exit67
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #12, !dbg !7749
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit68, !dbg !7750

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit68: ; preds = %_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9decrement.exit67, %bb.z
  %i.cd = load ptr, ptr %i.r, align 8, !dbg !7751, !alias.scope !7740, !nonnull !20, !noundef !20
    #dbg_value(ptr %i.cd, !5651, !DIExpression(), !7744)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ca, !dbg !7755 ; 2 uses
    #dbg_value(ptr %i.ce, !5622, !DIExpression(), !7756)
    #dbg_value(ptr %i.ce, !5671, !DIExpression(), !7757)
    #dbg_value(i32 %i.by, !5676, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7757)
    #dbg_value(i32 %i.bz, !5676, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7757)
  store i32 %i.by, ptr %i.ce, align 4, !dbg !7759
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4, !dbg !7759
  store i32 %i.bz, ptr %i.cf, align 4, !dbg !7759
  %i.cg = add i64 %i.ca, 1, !dbg !7760            ; 3 uses
  store i64 %i.cg, ptr %i.b, align 8, !dbg !7760, !alias.scope !7740
    #dbg_value(i64 %i.am, !7217, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7373)
    #dbg_value(ptr undef, !7243, !DIExpression(), !7247)
    #dbg_value(ptr undef, !7237, !DIExpression(), !7246)
    #dbg_value(ptr undef, !7229, !DIExpression(), !7233)
    #dbg_value(ptr undef, !7232, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !7374)
  %exitcond.not = icmp eq i64 %i.am, %i.c, !dbg !7375
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !dbg !7234

bb.aa:                                            ; preds = %_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9increment.exit65
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.086, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #13, !dbg !7704
  unreachable, !dbg !7704
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE9intersectB9_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !7761 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !5451, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7783)
    #dbg_value(ptr poison, !5454, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7783)
    #dbg_value(ptr poison, !7780, !DIExpression(), !7785)
    #dbg_value(ptr poison, !7786, !DIExpression(), !7790)
    #dbg_value(ptr poison, !7795, !DIExpression(), !7808)
    #dbg_value(ptr poison, !7806, !DIExpression(), !7809)
    #dbg_value(ptr poison, !7795, !DIExpression(), !7810)
    #dbg_value(ptr poison, !7806, !DIExpression(), !7814)
    #dbg_value(ptr poison, !7778, !DIExpression(), !7785)
    #dbg_value(ptr poison, !7786, !DIExpression(), !7815)
    #dbg_value(ptr poison, !7795, !DIExpression(), !7819)
    #dbg_value(ptr poison, !7806, !DIExpression(), !7820)
    #dbg_value(ptr %0, !7764, !DIExpression(), !7821)
    #dbg_value(ptr %1, !7765, !DIExpression(), !7821)
    #dbg_value(i64 1, !7822, !DIExpression(), !7826)
    #dbg_value(i64 1, !7828, !DIExpression(), !7832)
    #dbg_value(i64 1, !7822, !DIExpression(), !7834)
    #dbg_value(i64 1, !7828, !DIExpression(), !7837)
    #dbg_value(i64 1, !7822, !DIExpression(), !7840)
    #dbg_value(i64 1, !7828, !DIExpression(), !7843)
    #dbg_value(ptr %0, !7846, !DIExpression(), !7849)
    #dbg_value(ptr %0, !7851, !DIExpression(), !7854)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7856 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !7856, !noundef !20 ; 4 uses
  %i.d = icmp ult i64 %i.c, 1152921504606846976, !dbg !7857
  tail call void @llvm.assume(i1 %i.d), !dbg !7858
  %i.e = icmp eq i64 %i.c, 0, !dbg !7859
  br i1 %i.e, label %bb.n, label %bb.b, !dbg !7860

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !7846, !DIExpression(), !7861)
    #dbg_value(ptr %1, !7851, !DIExpression(), !7863)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !7866
  %i.g = load i64, ptr %i.f, align 8, !dbg !7866, !noundef !20 ; 5 uses
  %i.h = icmp ult i64 %i.g, 1152921504606846976, !dbg !7867
  tail call void @llvm.assume(i1 %i.h), !dbg !7868
  %i.i = icmp eq i64 %i.g, 0, !dbg !7869
  br i1 %i.i, label %bb.c, label %.lr.ph, !dbg !7870

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
    #dbg_value(i64 1, !7768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7871)
    #dbg_value(i64 1, !7770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7872)
    #dbg_value(ptr %0, !7873, !DIExpression(), !7877)
    #dbg_value(ptr %0, !7879, !DIExpression(), !7882)
    #dbg_value(ptr %0, !7884, !DIExpression(), !7887)
    #dbg_value(ptr %0, !7889, !DIExpression(), !7892)
    #dbg_value(i64 0, !7772, !DIExpression(), !7894)
    #dbg_value(i64 0, !7876, !DIExpression(), !7895)
    #dbg_value(i64 0, !7896, !DIExpression(), !7900)
    #dbg_value(i64 0, !7902, !DIExpression(), !7906)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !20, !noundef !20
  br label %bb.d, !dbg !7908

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !7909, !DIExpression(), !7919)
    #dbg_value(ptr poison, !7913, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7921)
    #dbg_value(i64 poison, !7913, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7921)
  store i64 0, ptr %i.b, align 8, !dbg !7922
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7923
  store i8 1, ptr %i.m, align 8, !dbg !7923
  br label %bb.n, !dbg !7924

bb.d:                                             ; preds = %.lr.ph, %.cont.cont
  %.sroa.047.088 = phi i64 [ 1, %.lr.ph ], [ %.sroa.047.172, %.cont.cont ] ; 3 uses
  %.sroa.051.087 = phi i64 [ 1, %.lr.ph ], [ %.sroa.051.170, %.cont.cont ] ; 3 uses
  %.sroa.0.086 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.1, %.cont.cont ] ; 5 uses
  %.sroa.044.085 = phi i64 [ 0, %.lr.ph ], [ %.sroa.044.1, %.cont.cont ] ; 4 uses
    #dbg_value(i64 %.sroa.047.088, !7768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7871)
    #dbg_value(i64 %.sroa.051.087, !7770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7872)
    #dbg_value(i64 %.sroa.0.086, !7772, !DIExpression(), !7894)
    #dbg_value(ptr poison, !7899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7900)
    #dbg_value(ptr poison, !7905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7906)
    #dbg_value(ptr %1, !7873, !DIExpression(), !7926)
    #dbg_value(ptr %1, !7879, !DIExpression(), !7928)
    #dbg_value(ptr %1, !7884, !DIExpression(), !7931)
    #dbg_value(ptr %1, !7889, !DIExpression(), !7934)
    #dbg_value(i64 %.sroa.044.085, !7774, !DIExpression(), !7937)
    #dbg_value(i64 %.sroa.044.085, !7876, !DIExpression(), !7938)
    #dbg_value(i64 %.sroa.044.085, !7896, !DIExpression(), !7939)
    #dbg_value(i64 %.sroa.044.085, !7902, !DIExpression(), !7941)
    #dbg_value(ptr poison, !7899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7939)
    #dbg_value(ptr poison, !7905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7941)
    #dbg_value(i64 %i.g, !7899, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7939)
    #dbg_value(i64 %i.g, !7905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7941)
  %i.n = icmp ult i64 %.sroa.044.085, %i.g, !dbg !7944
  br i1 %i.n, label %bb.e, label %bb.f, !dbg !7944

._crit_edge:                                      ; preds = %.cont.cont
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.1, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #13, !dbg !7908
  unreachable, !dbg !7908

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.l, !7899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7939)
    #dbg_value(ptr %i.l, !7905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7941)
  %i.o = load ptr, ptr %i.j, align 8, !dbg !7945, !nonnull !20, !noundef !20
    #dbg_value(ptr %i.o, !7905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7906)
    #dbg_value(ptr %i.o, !7899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7900)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.086, !dbg !7954
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.sroa.044.085, !dbg !7955 ; 2 uses
  %i.r = tail call { i32, i32 } @_RNvYNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeNtNtB4_8interval8Interval9intersectB6_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.q), !dbg !7956 ; 2 uses
  %i.s = extractvalue { i32, i32 } %i.r, 0, !dbg !7956 ; 2 uses
  %.not = icmp eq i32 %i.s, -1, !dbg !7957
  %.pre = load i64, ptr %i.b, align 8, !dbg !7958 ; 4 uses
  br i1 %.not, label %bb.i, label %bb.g, !dbg !7964

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.044.085, i64 noundef %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #13, !dbg !7944
  unreachable, !dbg !7944

bb.g:                                             ; preds = %bb.e
  %i.t = extractvalue { i32, i32 } %i.r, 1, !dbg !7956
    #dbg_value(i32 %i.s, !7776, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7965)
    #dbg_value(i32 %i.s, !7966, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7970)
    #dbg_value(i32 %i.t, !7776, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7965)
    #dbg_value(i32 %i.t, !7966, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7970)
    #dbg_value(ptr %0, !7969, !DIExpression(), !7970)
    #dbg_value(ptr %0, !5612, !DIExpression(), !7972)
    #dbg_value(ptr %0, !5626, !DIExpression(), !7974)
    #dbg_value(i32 %i.s, !5619, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7972)
    #dbg_value(i32 %i.t, !5619, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7972)
    #dbg_value(i64 8, !5634, !DIExpression(), !7976)
    #dbg_value(i64 %.pre, !5620, !DIExpression(), !7979)
    #dbg_value(i64 %.pre, !5648, !DIExpression(), !7980)
    #dbg_value(ptr %0, !5645, !DIExpression(), !7982)
  %i.u = load i64, ptr %0, align 8, !dbg !7983, !range !2922, !alias.scope !7984, !noundef !20
  %i.v = icmp eq i64 %.pre, %i.u, !dbg !7987
  br i1 %i.v, label %bb.h, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit, !dbg !7987

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #12, !dbg !7988
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit, !dbg !7989

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit: ; preds = %bb.g, %bb.h
  %i.w = load ptr, ptr %i.j, align 8, !dbg !7990, !alias.scope !7984, !nonnull !20, !noundef !20
    #dbg_value(ptr %i.w, !5651, !DIExpression(), !7980)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.pre, !dbg !7994 ; 2 uses
    #dbg_value(ptr %i.x, !5622, !DIExpression(), !7995)
    #dbg_value(ptr %i.x, !5671, !DIExpression(), !7996)
    #dbg_value(i32 %i.s, !5676, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !7996)
    #dbg_value(i32 %i.t, !5676, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !7996)
  store i32 %i.s, ptr %i.x, align 4, !dbg !7998
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4, !dbg !7998
  store i32 %i.t, ptr %i.y, align 4, !dbg !7998
  %i.z = add i64 %.pre, 1, !dbg !7999             ; 2 uses
  store i64 %i.z, ptr %i.b, align 8, !dbg !7999, !alias.scope !7984
  br label %bb.i, !dbg !8000

bb.i:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit, %bb.e
  %i.aa = phi i64 [ %i.z, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_.exit ], [ %.pre, %bb.e ], !dbg !7958 ; 4 uses
    #dbg_value(ptr %0, !7873, !DIExpression(), !8001)
    #dbg_value(ptr %0, !7879, !DIExpression(), !8002)
    #dbg_value(ptr %0, !7884, !DIExpression(), !8003)
    #dbg_value(ptr %0, !7889, !DIExpression(), !8004)
    #dbg_value(i64 %.sroa.0.086, !7772, !DIExpression(), !7894)
    #dbg_value(i64 %.sroa.0.086, !7876, !DIExpression(), !8007)
    #dbg_value(i64 %.sroa.0.086, !7896, !DIExpression(), !8008)
    #dbg_value(i64 %.sroa.0.086, !7902, !DIExpression(), !8010)
    #dbg_value(ptr poison, !7899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8008)
    #dbg_value(ptr poison, !7905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8010)
    #dbg_value(i64 %i.aa, !7899, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8008)
    #dbg_value(i64 %i.aa, !7905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8010)
  %i.ab = icmp ult i64 %.sroa.0.086, %i.aa, !dbg !8013
  br i1 %i.ab, label %bb.k, label %bb.j, !dbg !8013

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.086, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #13, !dbg !8013
  unreachable, !dbg !8013

bb.k:                                             ; preds = %bb.i
  %i.ac = load ptr, ptr %i.j, align 8, !dbg !8014, !nonnull !20, !noundef !20
    #dbg_value(ptr %i.ac, !7899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8008)
    #dbg_value(ptr %i.ac, !7905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8010)
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.0.086, !dbg !8021
  %i.ae = getelementptr i8, ptr %i.ad, i64 4, !dbg !8022
  %.val61 = load i32, ptr %i.ae, align 4, !dbg !8022, !range !5716, !noundef !20
    #dbg_value(ptr %1, !7873, !DIExpression(), !8023)
    #dbg_value(ptr %1, !7879, !DIExpression(), !8025)
    #dbg_value(ptr %1, !7884, !DIExpression(), !8028)
    #dbg_value(ptr %1, !7889, !DIExpression(), !8031)
    #dbg_value(i64 %.sroa.044.085, !7774, !DIExpression(), !7937)
    #dbg_value(i64 %.sroa.044.085, !7876, !DIExpression(), !8034)
    #dbg_value(i64 %.sroa.044.085, !7896, !DIExpression(), !8035)
    #dbg_value(i64 %.sroa.044.085, !7902, !DIExpression(), !8037)
    #dbg_value(i64 %i.g, !7899, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8035)
    #dbg_value(i64 %i.g, !7905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8037)
    #dbg_value(ptr %i.l, !7899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8035)
    #dbg_value(ptr %i.l, !7905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8037)
  %i.af = getelementptr i8, ptr %i.q, i64 4, !dbg !8040
  %.val = load i32, ptr %i.af, align 4, !dbg !8040, !range !5716, !noundef !20
    #dbg_value(ptr undef, !5454, !DIExpression(), !7783)
    #dbg_value(ptr undef, !5451, !DIExpression(), !7783)
  %i.ag = icmp samesign ult i32 %.val61, %.val, !dbg !8041 ; 3 uses
    #dbg_value(ptr undef, !7778, !DIExpression(), !7785)
    #dbg_value(ptr undef, !7806, !DIExpression(), !7814)
    #dbg_value(ptr undef, !7795, !DIExpression(), !7810)
    #dbg_value(ptr undef, !7780, !DIExpression(), !7785)
  %. = select i1 %i.ag, i64 %i.c, i64 %i.g, !dbg !8042
    #dbg_value(ptr poison, !7795, !DIExpression(), !7810)
    #dbg_value(ptr poison, !7806, !DIExpression(), !7814)
    #dbg_value(ptr poison, !7778, !DIExpression(), !7785)
    #dbg_value(ptr poison, !7780, !DIExpression(), !7785)
    #dbg_value(ptr undef, !7786, !DIExpression(DW_OP_deref), !8043)
    #dbg_value(ptr undef, !7789, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 8), !8046)
  %.sroa.speculated = select i1 %i.ag, i64 %.sroa.047.088, i64 %.sroa.051.087, !dbg !8047 ; 2 uses
  %i.ah = icmp ult i64 %.sroa.speculated, %., !dbg !8047
  br i1 %i.ah, label %bb.m, label %bb.l, !dbg !8048

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8049
  call void @_RINvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE5drainINtNtNtCsj6eKBz9Db1c_4core3ops5range7RangeTojEEBJ_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c), !dbg !8050
    #dbg_value(ptr %i.a, !5518, !DIExpression(), !8051)
  call void @_RNvXs5_NtNtCs4wP2HXfJTCR_5alloc3vec5drainINtB5_5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a), !dbg !8053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8054
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !8055 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8, !dbg !8055, !range !2797, !noundef !20
  %i.ak = trunc nuw i8 %i.aj to i1, !dbg !8055
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !8055
  %i.am = load i8, ptr %i.al, align 8, !dbg !8055, !range !2797
  %.sroa.013.0 = select i1 %i.ak, i8 %i.am, i8 0, !dbg !8055
  store i8 %.sroa.013.0, ptr %i.ai, align 8, !dbg !8056
  br label %bb.n, !dbg !8057

bb.m:                                             ; preds = %bb.k
    #dbg_value(i64 %.sroa.speculated, !7800, !DIExpression(), !8058)
    #dbg_value(i64 %.sroa.speculated, !7825, !DIExpression(), !7840)
    #dbg_value(i64 %.sroa.speculated, !7831, !DIExpression(), !7843)
  %i.an = add nuw nsw i64 %.sroa.speculated, 1, !dbg !8059 ; 2 uses
  br i1 %i.ag, label %.cont.cont, label %.cont.else, !dbg !8060

.cont.else:                                       ; preds = %bb.m
    #dbg_value(i64 %.sroa.047.088, !7768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7871)
    #dbg_value(i64 %i.an, !7770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7872)
    #dbg_value(i64 %.sroa.speculated, !7781, !DIExpression(), !8061)
  br label %.cont.cont, !dbg !8062

.cont.cont:                                       ; preds = %bb.m, %.cont.else
  %.sroa.047.172 = phi i64 [ %.sroa.047.088, %.cont.else ], [ %i.an, %bb.m ]
  %.sroa.051.170 = phi i64 [ %i.an, %.cont.else ], [ %.sroa.051.087, %bb.m ]
  %.sroa.044.1 = phi i64 [ %.sroa.051.087, %.cont.else ], [ %.sroa.044.085, %bb.m ], !dbg !7894
  %.sroa.0.1 = phi i64 [ %.sroa.0.086, %.cont.else ], [ %.sroa.047.088, %bb.m ], !dbg !7872 ; 3 uses
    #dbg_value(i64 %.sroa.047.172, !7768, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7871)
    #dbg_value(i64 %.sroa.051.170, !7770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7872)
    #dbg_value(ptr %0, !7873, !DIExpression(), !7877)
    #dbg_value(ptr %0, !7879, !DIExpression(), !7882)
    #dbg_value(ptr %0, !7884, !DIExpression(), !7887)
    #dbg_value(ptr %0, !7889, !DIExpression(), !7892)
    #dbg_value(i64 %.sroa.0.1, !7772, !DIExpression(), !7894)
    #dbg_value(i64 %.sroa.0.1, !7876, !DIExpression(), !7895)
    #dbg_value(i64 %.sroa.0.1, !7896, !DIExpression(), !7900)
    #dbg_value(i64 %.sroa.0.1, !7902, !DIExpression(), !7906)
    #dbg_value(ptr poison, !7899, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7900)
    #dbg_value(ptr poison, !7905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7906)
    #dbg_value(i64 %i.aa, !7899, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7900)
    #dbg_value(i64 %i.aa, !7905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7906)
  %i.ao = icmp ult i64 %.sroa.0.1, %i.aa, !dbg !7908
  br i1 %i.ao, label %bb.d, label %._crit_edge, !dbg !7908

bb.n:                                             ; preds = %bb.a, %bb.l, %bb.c
  ret void, !dbg !8057
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtNtCs3roNzt6HBWW_12regex_syntax3hir8interval11IntervalSetNtBB_15ClassBytesRangeENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !8063 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !8070, !DIExpression(), !8072)
    #dbg_value(ptr %1, !8071, !DIExpression(), !8072)
  %i.b = load ptr, ptr %0, align 8, !dbg !8073, !nonnull !20, !align !8074, !noundef !20 ; 2 uses
    #dbg_value(ptr %i.b, !8075, !DIExpression(), !8082)
    #dbg_value(ptr %1, !8081, !DIExpression(), !8082)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8084, !noalias !8085
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !8084
  store ptr %i.c, ptr %i.a, align 8, !dbg !8084, !noalias !8085
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 6, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26), !dbg !8089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8090, !noalias !8085
  ret i1 %i.d, !dbg !8091
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtNtCs3roNzt6HBWW_12regex_syntax3hir8interval11IntervalSetNtBB_17ClassUnicodeRangeENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !8092 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !8097, !DIExpression(), !8099)
    #dbg_value(ptr %1, !8098, !DIExpression(), !8099)
  %i.b = load ptr, ptr %0, align 8, !dbg !8100, !nonnull !20, !align !8074, !noundef !20 ; 2 uses
    #dbg_value(ptr %i.b, !8101, !DIExpression(), !8107)
    #dbg_value(ptr %1, !8106, !DIExpression(), !8107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8109, !noalias !8110
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !8109
  store ptr %i.c, ptr %i.a, align 8, !dbg !8109, !noalias !8110
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 6, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @26), !dbg !8114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8115, !noalias !8110
  ret i1 %i.d, !dbg !8116
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, -1) i8 @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9decrement(i8 noundef %0) unnamed_addr #0 !dbg !4822 {
bb.a:
    #dbg_value(i8 %0, !4821, !DIExpression(), !8117)
    #dbg_value(i8 %0, !4829, !DIExpression(), !8118)
    #dbg_value(i8 1, !4846, !DIExpression(), !8118)
  %i.a = icmp eq i8 %0, 0, !dbg !8120
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !8120, !prof !3072

bb.b:                                             ; preds = %bb.a
  %i.b = add i8 %0, -1, !dbg !8121
    #dbg_value(i8 %i.b, !4850, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !8122)
    #dbg_value(i8 1, !4850, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !8122)
  ret i8 %i.b, !dbg !8124

bb.c:                                             ; preds = %bb.a
    #dbg_value(i1 false, !4850, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !8122)
    #dbg_value(i8 poison, !4850, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !8122)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #13, !dbg !8125
  unreachable, !dbg !8125
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 1, 0) i8 @_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9increment(i8 noundef %0) unnamed_addr #0 !dbg !4980 {
bb.a:
    #dbg_value(i8 %0, !4979, !DIExpression(), !8126)
    #dbg_value(i8 %0, !4984, !DIExpression(), !8127)
    #dbg_value(i8 1, !4987, !DIExpression(), !8127)
  %i.a = icmp eq i8 %0, -1, !dbg !8129
    #dbg_value(i1 %i.a, !4990, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8130)
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !8132, !prof !3072

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw i8 %0, 1, !dbg !8129
    #dbg_value(i8 %i.b, !4996, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !8133)
    #dbg_value(i8 1, !4996, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !8133)
  ret i8 %i.b, !dbg !8135

bb.c:                                             ; preds = %bb.a
    #dbg_value(i1 false, !4996, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !8133)
    #dbg_value(i8 poison, !4996, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !8133)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #13, !dbg !8136
  unreachable, !dbg !8136
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, 1114111) i32 @_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9decrement(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #0 !dbg !7386 {
bb.a:
    #dbg_value(i32 %0, !7391, !DIExpression(), !8137)
    #dbg_value(i32 %0, !7392, !DIExpression(), !8138)
    #dbg_value(i32 1, !7383, !DIExpression(), !8139)
  switch i32 %0, label %bb.c [
    i32 57344, label %bb.b
    i32 0, label %bb.d
  ], !dbg !8141, !prof !7713

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi i32 [ 55295, %bb.a ], [ %i.a, %bb.c ], !dbg !8137
  ret i32 %.sroa.0.0, !dbg !8142

bb.c:                                             ; preds = %bb.a
  %i.a = add nsw i32 %0, -1, !dbg !8143           ; 2 uses
    #dbg_value(i32 %i.a, !7394, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8144)
    #dbg_value(i32 1, !7394, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8144)
    #dbg_value(i32 %i.a, !7404, !DIExpression(), !8146)
    #dbg_value(i32 %i.a, !7424, !DIExpression(), !8148)
    #dbg_value(i32 %i.a, !7433, !DIExpression(), !8150)
  %i.b = xor i32 %i.a, 55296, !dbg !8152
  %i.c = add nsw i32 %i.b, -1114112, !dbg !8152
  %i.d = icmp ult i32 %i.c, -1112064, !dbg !8152
  br i1 %i.d, label %bb.e, label %bb.b, !dbg !8152, !prof !3072

bb.d:                                             ; preds = %bb.a
    #dbg_value(i32 poison, !7394, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !8144)
    #dbg_value(i32 poison, !7394, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !8144)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #13, !dbg !8153
  unreachable, !dbg !8153

bb.e:                                             ; preds = %bb.c
    #dbg_value(i32 -1, !7459, !DIExpression(), !8154)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #13, !dbg !8156
  unreachable, !dbg !8156
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 1, 1114112) i32 @_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9increment(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #0 !dbg !7591 {
bb.a:
    #dbg_value(i32 %0, !7590, !DIExpression(), !8157)
    #dbg_value(i32 %0, !7593, !DIExpression(), !8158)
    #dbg_value(i32 1, !7598, !DIExpression(), !8159)
  %i.a = icmp eq i32 %0, 55295, !dbg !8161
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !8161

bb.b:                                             ; preds = %bb.a
    #dbg_value(i32 %0, !7601, !DIExpression(), !8159)
  %i.b = add nuw nsw i32 %0, 1, !dbg !8162        ; 2 uses
    #dbg_value(i32 %i.b, !7606, !DIExpression(), !8163)
    #dbg_value(i32 %i.b, !7611, !DIExpression(), !8165)
    #dbg_value(i32 %i.b, !7618, !DIExpression(), !8167)
  %i.c = xor i32 %i.b, 55296, !dbg !8169
  %i.d = add nsw i32 %i.c, -1114112, !dbg !8169
  %i.e = icmp ult i32 %i.d, -1112064, !dbg !8169
  br i1 %i.e, label %bb.e, label %bb.d, !dbg !8169, !prof !3072

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.0.0 = phi i32 [ %i.b, %bb.d ], [ 57344, %bb.a ], !dbg !8157
  ret i32 %.sroa.0.0, !dbg !8170

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %0, 1114111, !dbg !8171
  tail call void @llvm.assume(i1 %i.f), !dbg !8171
    #dbg_value(i32 %i.b, !7624, !DIExpression(), !8172)
  br label %bb.c, !dbg !8174

bb.e:                                             ; preds = %bb.b
    #dbg_value(i32 -1, !7624, !DIExpression(), !8172)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #13, !dbg !8175
  unreachable, !dbg !8175
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB4_11IntervalSetNtB6_15ClassBytesRangeENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB8_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 !dbg !8176 {
bb.a:
    #dbg_value(ptr %0, !8181, !DIExpression(), !8183)
    #dbg_value(ptr %1, !8182, !DIExpression(), !8183)
    #dbg_declare(ptr poison, !8184, !DIExpression(), !8188)
    #dbg_declare(ptr poison, !8184, !DIExpression(), !8195)
    #dbg_value(ptr %0, !8192, !DIExpression(), !8197)
    #dbg_value(ptr %0, !8187, !DIExpression(), !8198)
    #dbg_value(ptr %0, !8199, !DIExpression(), !8202)
    #dbg_value(ptr %0, !8204, !DIExpression(), !8207)
    #dbg_value(ptr %0, !8209, !DIExpression(), !8212)
    #dbg_value(ptr %1, !8193, !DIExpression(), !8214)
    #dbg_value(ptr %1, !8187, !DIExpression(), !8215)
    #dbg_value(ptr %1, !8199, !DIExpression(), !8216)
    #dbg_value(ptr %1, !8204, !DIExpression(), !8219)
    #dbg_value(ptr %1, !8209, !DIExpression(), !8222)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !8225
end_hunk_1
begin_hunk_2_@llvm.experimental.noalias.scope.decl
!4937 = !DILocation(line: 19, column: 15, scope: !4938, inlinedAt: !4934)
!4938 = !DILexicalBlockFile(scope: !4693, file: !2815, discriminator: 8)
!4939 = !DILocation(line: 3936, column: 14, scope: !4686, inlinedAt: !4927)
!4940 = !DILocation(line: 3854, column: 14, scope: !4785, inlinedAt: !4925)
!4941 = !DILocation(line: 1848, column: 27, scope: !4790, inlinedAt: !4923)
!4942 = !DILocation(line: 1966, column: 25, scope: !4795, inlinedAt: !4943)
!4943 = !DILocation(line: 1865, column: 76, scope: !4944, inlinedAt: !4923)
!4944 = !DILexicalBlockFile(scope: !4790, file: !538, discriminator: 4)
!4945 = !DILocation(line: 345, column: 37, scope: !4654)
!4946 = !DILocation(line: 0, scope: !4686, inlinedAt: !4927)
!4947 = !DILocation(line: 0, scope: !4693, inlinedAt: !4948)
!4948 = !DILocation(line: 3937, column: 9, scope: !4926, inlinedAt: !4927)
!4949 = !DILocation(line: 0, scope: !4700, inlinedAt: !4950)
!4950 = !DILocation(line: 19, column: 15, scope: !4951, inlinedAt: !4948)
!4951 = !DILexicalBlockFile(scope: !4693, file: !2815, discriminator: 4)
!4952 = !DILocation(line: 238, column: 10, scope: !4700, inlinedAt: !4950)
!4953 = !DILocation(line: 611, column: 9, scope: !4800, inlinedAt: !4954)
!4954 = !DILocation(line: 606, column: 14, scope: !4955, inlinedAt: !4956)
!4955 = !DILexicalBlockFile(scope: !4802, file: !2842, discriminator: 6)
!4956 = !DILocation(line: 296, column: 20, scope: !4957, inlinedAt: !4958)
!4957 = !DILexicalBlockFile(scope: !4804, file: !2842, discriminator: 6)
!4958 = !DILocation(line: 1969, column: 18, scope: !4959, inlinedAt: !4904)
!4959 = !DILexicalBlockFile(scope: !4795, file: !538, discriminator: 6)
!4960 = !DILocation(line: 238, column: 9, scope: !4700, inlinedAt: !4911)
!4961 = !DILocation(line: 349, column: 39, scope: !4648)
!4962 = !DILocation(line: 2192, column: 50, scope: !2704, inlinedAt: !4662)
!4963 = !DILocation(line: 349, column: 12, scope: !4648)
!4964 = !DILocation(line: 353, column: 9, scope: !4648)
!4965 = !DILocation(line: 353, column: 21, scope: !4648)
!4966 = !DILocation(line: 0, scope: !2774, inlinedAt: !4967)
!4967 = distinct !DILocation(line: 353, column: 39, scope: !4648)
!4968 = !DILocation(line: 847, column: 1, scope: !2774, inlinedAt: !4967)
!4969 = !DILocation(line: 353, column: 39, scope: !4648)
!4970 = !DILocation(line: 3936, column: 14, scope: !4686, inlinedAt: !4914)
!4971 = !DILocation(line: 3854, column: 14, scope: !4785, inlinedAt: !4972)
!4972 = !DILocation(line: 3937, column: 23, scope: !4917, inlinedAt: !4914)
!4973 = !DILocation(line: 1848, column: 27, scope: !4790, inlinedAt: !4974)
!4974 = !DILocation(line: 3855, column: 14, scope: !4975, inlinedAt: !4972)
!4975 = !DILexicalBlockFile(scope: !4785, file: !538, discriminator: 10)
!4976 = !DILocation(line: 1966, column: 25, scope: !4795, inlinedAt: !4977)
!4977 = !DILocation(line: 1865, column: 76, scope: !4978, inlinedAt: !4974)
!4978 = !DILexicalBlockFile(scope: !4790, file: !538, discriminator: 10)
!4979 = !DILocalVariable(name: "self", arg: 1, scope: !4980, file: !367, line: 557, type: !18)
!4980 = distinct !DISubprogram(name: "increment", linkageName: "_RNvXs2_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalhNtB5_5Bound9increment", scope: !4823, file: !367, line: 557, type: !4824, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !20, retainedNodes: !4981)
!4981 = !{!4979}
!4982 = !DILocation(line: 0, scope: !4980, inlinedAt: !4983)
!4983 = distinct !DILocation(line: 350, column: 60, scope: !4648)
!4984 = !DILocalVariable(name: "self", arg: 1, scope: !4985, file: !3361, line: 930, type: !18)
!4985 = distinct !DISubprogram(name: "checked_add", linkageName: "_RNvMs4_NtCsj6eKBz9Db1c_4core3numh11checked_add", scope: !4831, file: !3361, line: 930, type: !4832, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !20, retainedNodes: !4986)
!4986 = !{!4984, !4987}
!4987 = !DILocalVariable(name: "rhs", scope: !4985, file: !3361, line: 930, type: !18, align: 8)
!4988 = !DILocation(line: 0, scope: !4985, inlinedAt: !4989)
!4989 = distinct !DILocation(line: 558, column: 14, scope: !4980, inlinedAt: !4983)
!4990 = !DILocalVariable(name: "b", arg: 1, scope: !4991, file: !3579, line: 477, type: !130)
!4991 = distinct !DISubprogram(name: "unlikely", linkageName: "_RNvNtCsj6eKBz9Db1c_4core10intrinsics8unlikely", scope: !3580, file: !3579, line: 477, type: !3581, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !20, retainedNodes: !4992)
!4992 = !{!4990}
!4993 = !DILocation(line: 0, scope: !4991, inlinedAt: !4994)
!4994 = distinct !DILocation(line: 938, column: 16, scope: !4985, inlinedAt: !4989)
!4995 = !DILocation(line: 938, column: 37, scope: !4985, inlinedAt: !4989)
!4996 = !DILocalVariable(name: "self", arg: 1, scope: !4997, file: !3465, line: 1011, type: !4834)
!4997 = distinct !DISubprogram(name: "unwrap<u8>", linkageName: "_RNvMNtCsj6eKBz9Db1c_4core6optionINtB2_6OptionhE6unwrapCs3roNzt6HBWW_12regex_syntax", scope: !4834, file: !3465, line: 1011, type: !4852, scopeLine: 1011, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !107, declaration: !4854, retainedNodes: !4998)
!4998 = !{!4996, !4999}
!4999 = !DILocalVariable(name: "val", scope: !5000, file: !3465, line: 1013, type: !18, align: 8)
!5000 = distinct !DILexicalBlock(scope: !4997, file: !3465, line: 1013, column: 13)
!5001 = !DILocation(line: 0, scope: !4997, inlinedAt: !5002)
!5002 = distinct !DILocation(line: 558, column: 29, scope: !4980, inlinedAt: !4983)
!5003 = !DILocation(line: 0, scope: !4660)
!5004 = !DILocation(line: 0, scope: !4743, inlinedAt: !5005)
!5005 = !DILocation(line: 351, column: 25, scope: !4660)
!5006 = !DILocation(line: 351, column: 30, scope: !4660)
!5007 = !DILocation(line: 0, scope: !2876, inlinedAt: !5008)
!5008 = distinct !DILocation(line: 996, column: 22, scope: !4743, inlinedAt: !5005)
!5009 = !DILocation(line: 0, scope: !2890, inlinedAt: !5010)
!5010 = distinct !DILocation(line: 1036, column: 28, scope: !2884, inlinedAt: !5008)
!5011 = !DILocation(line: 0, scope: !2898, inlinedAt: !5012)
!5012 = distinct !DILocation(line: 309, column: 20, scope: !2906, inlinedAt: !5013)
!5013 = distinct !DILocation(line: 1032, column: 28, scope: !2884, inlinedAt: !5008)
!5014 = !DILocation(line: 1029, column: 19, scope: !2876, inlinedAt: !5008)
!5015 = !{!5016}
!5016 = distinct !{!5016, !5017, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_: argument 0"}
!5017 = distinct !{!5017, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_"}
!5018 = !DILocation(line: 0, scope: !2884, inlinedAt: !5008)
!5019 = !DILocation(line: 0, scope: !2915, inlinedAt: !5020)
!5020 = distinct !DILocation(line: 1036, column: 41, scope: !2884, inlinedAt: !5008)
!5021 = !DILocation(line: 308, column: 34, scope: !2906, inlinedAt: !5013)
!5022 = !DILocation(line: 616, column: 49, scope: !2898, inlinedAt: !5012)
!5023 = !DILocation(line: 1032, column: 12, scope: !2884, inlinedAt: !5008)
!5024 = !DILocation(line: 1033, column: 22, scope: !2884, inlinedAt: !5008)
!5025 = !DILocation(line: 1032, column: 9, scope: !2884, inlinedAt: !5008)
!5026 = !DILocation(line: 611, column: 9, scope: !2929, inlinedAt: !5027)
!5027 = distinct !DILocation(line: 606, column: 14, scope: !2931, inlinedAt: !5028)
!5028 = distinct !DILocation(line: 296, column: 20, scope: !2933, inlinedAt: !5029)
!5029 = distinct !DILocation(line: 2053, column: 18, scope: !2890, inlinedAt: !5010)
!5030 = !DILocation(line: 970, column: 18, scope: !2915, inlinedAt: !5020)
!5031 = !DILocation(line: 0, scope: !2886, inlinedAt: !5008)
!5032 = !DILocation(line: 0, scope: !2939, inlinedAt: !5033)
!5033 = distinct !DILocation(line: 1037, column: 13, scope: !2886, inlinedAt: !5008)
!5034 = !DILocation(line: 1963, column: 41, scope: !2939, inlinedAt: !5033)
!5035 = !DILocation(line: 1038, column: 13, scope: !2886, inlinedAt: !5008)
!5036 = !DILocation(line: 349, column: 9, scope: !4648)
!5037 = !DILocation(line: 611, column: 9, scope: !4800, inlinedAt: !5038)
!5038 = !DILocation(line: 606, column: 14, scope: !5039, inlinedAt: !5040)
!5039 = !DILexicalBlockFile(scope: !4802, file: !2842, discriminator: 4)
!5040 = !DILocation(line: 296, column: 20, scope: !5041, inlinedAt: !5042)
!5041 = !DILexicalBlockFile(scope: !4804, file: !2842, discriminator: 4)
!5042 = !DILocation(line: 1969, column: 18, scope: !5043, inlinedAt: !4943)
!5043 = !DILexicalBlockFile(scope: !4795, file: !538, discriminator: 4)
!5044 = !DILocation(line: 238, column: 9, scope: !4700, inlinedAt: !4950)
!5045 = !DILocation(line: 345, column: 44, scope: !4654)
!5046 = !DILocation(line: 0, scope: !4980, inlinedAt: !5047)
!5047 = distinct !DILocation(line: 345, column: 52, scope: !4654)
!5048 = !DILocation(line: 0, scope: !4985, inlinedAt: !5049)
!5049 = distinct !DILocation(line: 558, column: 14, scope: !4980, inlinedAt: !5047)
!5050 = !DILocation(line: 938, column: 37, scope: !4985, inlinedAt: !5049)
!5051 = !DILocation(line: 0, scope: !4991, inlinedAt: !5052)
!5052 = distinct !DILocation(line: 938, column: 16, scope: !4985, inlinedAt: !5049)
!5053 = !DILocation(line: 478, column: 8, scope: !4991, inlinedAt: !5052)
!5054 = !DILocation(line: 0, scope: !4997, inlinedAt: !5055)
!5055 = distinct !DILocation(line: 558, column: 29, scope: !4980, inlinedAt: !5047)
!5056 = !DILocation(line: 1014, column: 21, scope: !4997, inlinedAt: !5055)
!5057 = !DILocation(line: 0, scope: !4656)
!5058 = !DILocation(line: 3936, column: 14, scope: !4686, inlinedAt: !4932)
!5059 = !DILocation(line: 3854, column: 14, scope: !4785, inlinedAt: !5060)
!5060 = !DILocation(line: 3937, column: 23, scope: !4935, inlinedAt: !4932)
!5061 = !DILocation(line: 1848, column: 27, scope: !4790, inlinedAt: !5062)
!5062 = !DILocation(line: 3855, column: 14, scope: !5063, inlinedAt: !5060)
!5063 = !DILexicalBlockFile(scope: !4785, file: !538, discriminator: 8)
!5064 = !DILocation(line: 1966, column: 25, scope: !4795, inlinedAt: !5065)
!5065 = !DILocation(line: 1865, column: 76, scope: !5066, inlinedAt: !5062)
!5066 = !DILexicalBlockFile(scope: !4790, file: !538, discriminator: 8)
!5067 = !DILocation(line: 238, column: 10, scope: !4700, inlinedAt: !4937)
!5068 = !DILocation(line: 238, column: 9, scope: !4700, inlinedAt: !4937)
!5069 = !DILocation(line: 346, column: 40, scope: !4656)
!5070 = !DILocation(line: 0, scope: !4822, inlinedAt: !5071)
!5071 = distinct !DILocation(line: 346, column: 48, scope: !4656)
!5072 = !DILocation(line: 0, scope: !4830, inlinedAt: !5073)
!5073 = distinct !DILocation(line: 561, column: 14, scope: !4822, inlinedAt: !5071)
!5074 = !DILocation(line: 1092, column: 16, scope: !4830, inlinedAt: !5073)
!5075 = !DILocation(line: 0, scope: !4851, inlinedAt: !5076)
!5076 = distinct !DILocation(line: 561, column: 29, scope: !4822, inlinedAt: !5071)
!5077 = !DILocation(line: 1014, column: 21, scope: !4851, inlinedAt: !5076)
!5078 = !DILocation(line: 1096, column: 31, scope: !4830, inlinedAt: !5073)
!5079 = !DILocation(line: 0, scope: !4658)
!5080 = !DILocation(line: 0, scope: !4743, inlinedAt: !5081)
!5081 = !DILocation(line: 347, column: 25, scope: !4658)
!5082 = !DILocation(line: 347, column: 30, scope: !4658)
!5083 = !DILocation(line: 0, scope: !2876, inlinedAt: !5084)
!5084 = distinct !DILocation(line: 996, column: 22, scope: !4743, inlinedAt: !5081)
!5085 = !DILocation(line: 0, scope: !2890, inlinedAt: !5086)
!5086 = distinct !DILocation(line: 1036, column: 28, scope: !2884, inlinedAt: !5084)
!5087 = !DILocation(line: 0, scope: !2898, inlinedAt: !5088)
!5088 = distinct !DILocation(line: 309, column: 20, scope: !2906, inlinedAt: !5089)
!5089 = distinct !DILocation(line: 1032, column: 28, scope: !2884, inlinedAt: !5084)
!5090 = !DILocation(line: 1029, column: 19, scope: !2876, inlinedAt: !5084)
!5091 = !{!5092}
!5092 = distinct !{!5092, !5093, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_: argument 0"}
!5093 = distinct !{!5093, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_"}
!5094 = !DILocation(line: 0, scope: !2884, inlinedAt: !5084)
!5095 = !DILocation(line: 0, scope: !2915, inlinedAt: !5096)
!5096 = distinct !DILocation(line: 1036, column: 41, scope: !2884, inlinedAt: !5084)
!5097 = !DILocation(line: 308, column: 34, scope: !2906, inlinedAt: !5089)
!5098 = !DILocation(line: 616, column: 49, scope: !2898, inlinedAt: !5088)
!5099 = !DILocation(line: 1032, column: 12, scope: !2884, inlinedAt: !5084)
!5100 = !DILocation(line: 1033, column: 22, scope: !2884, inlinedAt: !5084)
!5101 = !DILocation(line: 1032, column: 9, scope: !2884, inlinedAt: !5084)
!5102 = !DILocation(line: 611, column: 9, scope: !2929, inlinedAt: !5103)
!5103 = distinct !DILocation(line: 606, column: 14, scope: !2931, inlinedAt: !5104)
!5104 = distinct !DILocation(line: 296, column: 20, scope: !2933, inlinedAt: !5105)
!5105 = distinct !DILocation(line: 2053, column: 18, scope: !2890, inlinedAt: !5086)
!5106 = !DILocation(line: 970, column: 18, scope: !2915, inlinedAt: !5096)
!5107 = !DILocation(line: 0, scope: !2886, inlinedAt: !5084)
!5108 = !DILocation(line: 0, scope: !2939, inlinedAt: !5109)
!5109 = distinct !DILocation(line: 1037, column: 13, scope: !2886, inlinedAt: !5084)
!5110 = !DILocation(line: 1963, column: 41, scope: !2939, inlinedAt: !5109)
!5111 = !DILocation(line: 1038, column: 13, scope: !2886, inlinedAt: !5084)
!5112 = distinct !DISubprogram(name: "intersect<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeE9intersectB9_", scope: !140, file: !367, line: 171, type: !2667, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !156, declaration: !5113, retainedNodes: !5114)
!5113 = !DISubprogram(name: "intersect<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeE9intersectB9_", scope: !140, file: !367, line: 171, type: !2667, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !156)
!5114 = !{!5115, !5116, !5117, !5119, !5121, !5123, !5125, !5127, !5129, !5131, !5133}
!5115 = !DILocalVariable(name: "self", arg: 1, scope: !5112, file: !367, line: 171, type: !2631)
!5116 = !DILocalVariable(name: "other", arg: 2, scope: !5112, file: !367, line: 171, type: !2669)
!5117 = !DILocalVariable(name: "drain_end", scope: !5118, file: !367, line: 186, type: !9, align: 64)
!5118 = distinct !DILexicalBlock(scope: !5112, file: !367, line: 186, column: 9)
!5119 = !DILocalVariable(name: "ita", scope: !5120, file: !367, line: 188, type: !3297, align: 64)
!5120 = distinct !DILexicalBlock(scope: !5118, file: !367, line: 188, column: 9)
!5121 = !DILocalVariable(name: "itb", scope: !5122, file: !367, line: 189, type: !3297, align: 64)
!5122 = distinct !DILexicalBlock(scope: !5120, file: !367, line: 189, column: 9)
!5123 = !DILocalVariable(name: "a", scope: !5124, file: !367, line: 190, type: !9, align: 64)
!5124 = distinct !DILexicalBlock(scope: !5122, file: !367, line: 190, column: 9)
!5125 = !DILocalVariable(name: "b", scope: !5126, file: !367, line: 191, type: !9, align: 64)
!5126 = distinct !DILexicalBlock(scope: !5124, file: !367, line: 191, column: 9)
!5127 = !DILocalVariable(name: "ab", scope: !5128, file: !367, line: 193, type: !13, align: 8)
!5128 = distinct !DILexicalBlock(scope: !5126, file: !367, line: 193, column: 74)
!5129 = !DILocalVariable(name: "it", scope: !5130, file: !367, line: 196, type: !3333, align: 64)
!5130 = distinct !DILexicalBlock(scope: !5126, file: !367, line: 196, column: 13)
!5131 = !DILocalVariable(name: "aorb", scope: !5130, file: !367, line: 196, type: !5132, align: 64)
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut usize", baseType: !9, size: 64, align: 64, dwarfAddressSpace: 0)
!5133 = !DILocalVariable(name: "v", scope: !5134, file: !367, line: 203, type: !9, align: 64)
!5134 = distinct !DILexicalBlock(scope: !5130, file: !367, line: 203, column: 17)
!5135 = !DILocation(line: 0, scope: !2704, inlinedAt: !5136)
!5136 = distinct !DILocation(line: 197, column: 20, scope: !5126)
!5137 = !DILocation(line: 0, scope: !5130)
!5138 = !DILocalVariable(name: "self", arg: 1, scope: !5139, file: !2694, line: 2192, type: !3322)
!5139 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCsj6eKBz9Db1c_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !3319, file: !2694, line: 2192, type: !3320, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !20, retainedNodes: !5140)
!5140 = !{!5138, !5141}
!5141 = !DILocalVariable(name: "other", arg: 2, scope: !5139, file: !2694, line: 2192, type: !3322)
!5142 = !DILocation(line: 2192, column: 19, scope: !5139, inlinedAt: !5143)
!5143 = !DILocation(line: 1100, column: 12, scope: !5144, inlinedAt: !5154)
!5144 = !DILexicalBlockFile(scope: !5145, file: !3328, discriminator: 2)
!5145 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs3roNzt6HBWW_12regex_syntax", scope: !3329, file: !3328, line: 1099, type: !3331, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !271, retainedNodes: !5146)
!5146 = !{!5147, !5148, !5150, !5152}
!5147 = !DILocalVariable(name: "self", arg: 1, scope: !5145, file: !3328, line: 1099, type: !3333)
!5148 = !DILocalVariable(name: "old", scope: !5149, file: !3328, line: 1101, type: !9, align: 64)
!5149 = distinct !DILexicalBlock(scope: !5145, file: !3328, line: 1101, column: 13)
!5150 = !DILocalVariable(name: "old", scope: !5151, file: !3328, line: 1101, type: !9, align: 64)
!5151 = distinct !DILexicalBlock(scope: !5145, file: !3328, line: 1101, column: 13)
!5152 = !DILocalVariable(name: "old", scope: !5153, file: !3328, line: 1101, type: !9, align: 64)
!5153 = distinct !DILexicalBlock(scope: !5145, file: !3328, line: 1101, column: 13)
!5154 = !DILocation(line: 1185, column: 14, scope: !5155, inlinedAt: !5159)
!5155 = !DILexicalBlockFile(scope: !5156, file: !3328, discriminator: 2)
!5156 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax", scope: !3340, file: !3328, line: 1184, type: !3331, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !3343, retainedNodes: !5157)
!5157 = !{!5158}
!5158 = !DILocalVariable(name: "self", arg: 1, scope: !5156, file: !3328, line: 1184, type: !3333)
!5159 = !DILocation(line: 191, column: 25, scope: !5124)
!5160 = !DILocation(line: 1099, column: 18, scope: !5145, inlinedAt: !5154)
!5161 = !DILocation(line: 1184, column: 13, scope: !5156, inlinedAt: !5159)
!5162 = !DILocation(line: 0, scope: !5145, inlinedAt: !5163)
!5163 = !DILocation(line: 1185, column: 14, scope: !5164, inlinedAt: !5165)
!5164 = !DILexicalBlockFile(scope: !5156, file: !3328, discriminator: 4)
!5165 = !DILocation(line: 202, column: 22, scope: !5130)
!5166 = !DILocation(line: 0, scope: !5156, inlinedAt: !5165)
!5167 = !DILocation(line: 2192, column: 19, scope: !5139, inlinedAt: !5168)
!5168 = !DILocation(line: 1100, column: 12, scope: !5145, inlinedAt: !5169)
!5169 = !DILocation(line: 1185, column: 14, scope: !5156, inlinedAt: !5170)
!5170 = !DILocation(line: 190, column: 25, scope: !5122)
!5171 = !DILocation(line: 1099, column: 18, scope: !5145, inlinedAt: !5169)
!5172 = !DILocation(line: 1184, column: 13, scope: !5156, inlinedAt: !5170)
!5173 = !DILocation(line: 0, scope: !5112)
!5174 = !DILocalVariable(name: "n", scope: !5175, file: !3328, line: 263, type: !9, align: 64)
!5175 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCsj6eKBz9Db1c_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !3352, file: !3328, line: 263, type: !3353, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !20, retainedNodes: !5176)
!5176 = !{!5177, !5174}
!5177 = !DILocalVariable(name: "start", arg: 1, scope: !5175, file: !3328, line: 263, type: !9)
!5178 = !DILocation(line: 0, scope: !5175, inlinedAt: !5179)
!5179 = !DILocation(line: 1103, column: 35, scope: !5149, inlinedAt: !5169)
!5180 = !DILocalVariable(name: "rhs", scope: !5181, file: !3361, line: 1001, type: !9, align: 64)
!5181 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj13unchecked_add", scope: !3362, file: !3361, line: 1001, type: !3363, scopeLine: 1001, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !20, retainedNodes: !5182)
!5182 = !{!5183, !5180}
!5183 = !DILocalVariable(name: "self", arg: 1, scope: !5181, file: !3361, line: 1001, type: !9)
!5184 = !DILocation(line: 0, scope: !5181, inlinedAt: !5185)
!5185 = !DILocation(line: 265, column: 28, scope: !5175, inlinedAt: !5179)
!5186 = !DILocation(line: 0, scope: !5175, inlinedAt: !5187)
!5187 = !DILocation(line: 1103, column: 35, scope: !5188, inlinedAt: !5154)
!5188 = !DILexicalBlockFile(scope: !5151, file: !3328, discriminator: 2)
!5189 = !DILocation(line: 0, scope: !5181, inlinedAt: !5190)
!5190 = !DILocation(line: 265, column: 28, scope: !5191, inlinedAt: !5187)
!5191 = !DILexicalBlockFile(scope: !5175, file: !3328, discriminator: 2)
!5192 = !DILocation(line: 0, scope: !5175, inlinedAt: !5193)
!5193 = !DILocation(line: 1103, column: 35, scope: !5194, inlinedAt: !5163)
!5194 = !DILexicalBlockFile(scope: !5153, file: !3328, discriminator: 4)
!5195 = !DILocation(line: 0, scope: !5181, inlinedAt: !5196)
!5196 = !DILocation(line: 265, column: 28, scope: !5197, inlinedAt: !5193)
!5197 = !DILexicalBlockFile(scope: !5175, file: !3328, discriminator: 4)
!5198 = !DILocalVariable(name: "self", arg: 1, scope: !5199, file: !538, line: 3125, type: !577)
!5199 = distinct !DISubprogram(name: "is_empty<regex_syntax::hir::ClassBytesRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8is_emptyBI_", scope: !143, file: !538, line: 3125, type: !575, scopeLine: 3125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !153, declaration: !578, retainedNodes: !5200)
!5200 = !{!5198}
!5201 = !DILocation(line: 3125, column: 27, scope: !5199, inlinedAt: !5202)
!5202 = !DILocation(line: 172, column: 24, scope: !5112)
!5203 = !DILocalVariable(name: "self", arg: 1, scope: !5204, file: !538, line: 3100, type: !577)
!5204 = distinct !DISubprogram(name: "len<regex_syntax::hir::ClassBytesRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE3lenBI_", scope: !143, file: !538, line: 3100, type: !584, scopeLine: 3100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !153, declaration: !586, retainedNodes: !5205)
!5205 = !{!5203}
!5206 = !DILocation(line: 3100, column: 22, scope: !5204, inlinedAt: !5207)
!5207 = !DILocation(line: 3126, column: 14, scope: !5199, inlinedAt: !5202)
!5208 = !DILocation(line: 3101, column: 19, scope: !5204, inlinedAt: !5207)
!5209 = !DILocation(line: 3106, column: 37, scope: !5204, inlinedAt: !5207)
!5210 = !DILocation(line: 3106, column: 18, scope: !5204, inlinedAt: !5207)
!5211 = !DILocation(line: 3126, column: 9, scope: !5199, inlinedAt: !5202)
!5212 = !DILocation(line: 172, column: 12, scope: !5112)
!5213 = !DILocation(line: 3125, column: 27, scope: !5199, inlinedAt: !5214)
!5214 = !DILocation(line: 175, column: 25, scope: !5112)
!5215 = !DILocation(line: 3100, column: 22, scope: !5204, inlinedAt: !5216)
!5216 = !DILocation(line: 3126, column: 14, scope: !5217, inlinedAt: !5214)
!5217 = !DILexicalBlockFile(scope: !5199, file: !538, discriminator: 2)
!5218 = !DILocation(line: 3101, column: 19, scope: !5204, inlinedAt: !5216)
!5219 = !DILocation(line: 3106, column: 37, scope: !5204, inlinedAt: !5216)
!5220 = !DILocation(line: 3106, column: 18, scope: !5204, inlinedAt: !5216)
!5221 = !DILocation(line: 3126, column: 9, scope: !5199, inlinedAt: !5214)
!5222 = !DILocation(line: 175, column: 12, scope: !5112)
!5223 = !DILocation(line: 0, scope: !5120)
!5224 = !DILocation(line: 0, scope: !5122)
!5225 = !DILocalVariable(name: "self", arg: 1, scope: !5226, file: !538, line: 3936, type: !577)
!5226 = distinct !DISubprogram(name: "index<regex_syntax::hir::ClassBytesRange, usize, alloc::alloc::Global>", linkageName: "_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBJ_", scope: !2762, file: !538, line: 3936, type: !2763, scopeLine: 3936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !2768, retainedNodes: !5227)
!5227 = !{!5225, !5228}
!5228 = !DILocalVariable(name: "index", arg: 2, scope: !5226, file: !538, line: 3936, type: !9)
!5229 = !DILocation(line: 3936, column: 14, scope: !5226, inlinedAt: !5230)
!5230 = !DILocation(line: 193, column: 42, scope: !5128)
!5231 = !DILocalVariable(name: "self", arg: 1, scope: !5232, file: !538, line: 3854, type: !577)
!5232 = distinct !DISubprogram(name: "deref<regex_syntax::hir::ClassBytesRange, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefBJ_", scope: !2756, file: !538, line: 3854, type: !2743, scopeLine: 3854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !153, retainedNodes: !5233)
!5233 = !{!5231}
!5234 = !DILocation(line: 3854, column: 14, scope: !5232, inlinedAt: !5235)
!5235 = !DILocation(line: 3937, column: 23, scope: !5226, inlinedAt: !5230)
!5236 = !DILocalVariable(name: "self", arg: 1, scope: !5237, file: !538, line: 1848, type: !577)
!5237 = distinct !DISubprogram(name: "as_slice<regex_syntax::hir::ClassBytesRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8as_sliceBI_", scope: !143, file: !538, line: 1848, type: !2743, scopeLine: 1848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !153, declaration: !2750, retainedNodes: !5238)
!5238 = !{!5236}
!5239 = !DILocation(line: 1848, column: 27, scope: !5237, inlinedAt: !5240)
!5240 = !DILocation(line: 3855, column: 14, scope: !5232, inlinedAt: !5235)
!5241 = !DILocalVariable(name: "self", arg: 1, scope: !5242, file: !538, line: 1966, type: !577)
!5242 = distinct !DISubprogram(name: "as_ptr<regex_syntax::hir::ClassBytesRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE6as_ptrBI_", scope: !143, file: !538, line: 1966, type: !2805, scopeLine: 1966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !153, declaration: !2807, retainedNodes: !5243)
!5243 = !{!5241}
!5244 = !DILocation(line: 1966, column: 25, scope: !5242, inlinedAt: !5245)
!5245 = !DILocation(line: 1865, column: 76, scope: !5237, inlinedAt: !5240)
!5246 = !DILocation(line: 0, scope: !5124)
!5247 = !DILocation(line: 0, scope: !5226, inlinedAt: !5230)
!5248 = !DILocalVariable(name: "index", arg: 2, scope: !5249, file: !2815, line: 18, type: !9)
!5249 = distinct !DISubprogram(name: "index<regex_syntax::hir::ClassBytesRange, usize>", linkageName: "_RNvXNtNtCsj6eKBz9Db1c_4core5slice5indexSNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeINtNtNtB6_3ops5index5IndexjE5indexBG_", scope: !2816, file: !2815, line: 18, type: !2818, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !2826, retainedNodes: !5250)
!5250 = !{!5251, !5248}
!5251 = !DILocalVariable(name: "self", arg: 1, scope: !5249, file: !2815, line: 18, type: !2822)
!5252 = !DILocation(line: 0, scope: !5249, inlinedAt: !5253)
!5253 = !DILocation(line: 3937, column: 9, scope: !5226, inlinedAt: !5230)
!5254 = !DILocalVariable(name: "self", arg: 1, scope: !5255, file: !2815, line: 236, type: !9)
!5255 = distinct !DISubprogram(name: "index<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE5indexB12_", scope: !2831, file: !2815, line: 236, type: !2832, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !151, retainedNodes: !5256)
!5256 = !{!5254, !5257}
!5257 = !DILocalVariable(name: "slice", arg: 2, scope: !5255, file: !2815, line: 236, type: !2822)
!5258 = !DILocation(line: 0, scope: !5255, inlinedAt: !5259)
!5259 = !DILocation(line: 19, column: 15, scope: !5249, inlinedAt: !5253)
!5260 = !DILocation(line: 238, column: 10, scope: !5255, inlinedAt: !5259)
!5261 = !DILocalVariable(name: "self", arg: 1, scope: !5262, file: !538, line: 3068, type: !2587)
!5262 = distinct !DISubprogram(name: "clear<regex_syntax::hir::ClassBytesRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE5clearBI_", scope: !143, file: !538, line: 3068, type: !2585, scopeLine: 3068, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !153, declaration: !5263, retainedNodes: !5264)
!5263 = !DISubprogram(name: "clear<regex_syntax::hir::ClassBytesRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE5clearBI_", scope: !143, file: !538, line: 3068, type: !2585, scopeLine: 3068, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !153)
!5264 = !{!5261, !5265}
!5265 = !DILocalVariable(name: "elems", scope: !5266, file: !538, line: 3073, type: !5267, align: 64)
!5266 = distinct !DILexicalBlock(scope: !5262, file: !538, line: 3073, column: 9)
!5267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*mut [regex_syntax::hir::ClassBytesRange]", file: !2, size: 128, align: 64, elements: !5268, templateParams: !20, identifier: "ce0d635876665bb95c4405f2a3cc5f77")
!5268 = !{!5269, !5270}
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !5267, file: !2, baseType: !2748, size: 64, align: 64)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5267, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!5271 = !DILocation(line: 3068, column: 18, scope: !5262, inlinedAt: !5272)
!5272 = !DILocation(line: 176, column: 25, scope: !5112)
!5273 = !DILocation(line: 0, scope: !5266, inlinedAt: !5272)
!5274 = !DILocation(line: 3082, column: 13, scope: !5266, inlinedAt: !5272)
!5275 = !DILocation(line: 178, column: 13, scope: !5112)
!5276 = !DILocation(line: 0, scope: !5277)
!5277 = !DILexicalBlockFile(scope: !5112, file: !2997, discriminator: 0)
!5278 = !DILocation(line: 3936, column: 14, scope: !5226, inlinedAt: !5279)
!5279 = !DILocation(line: 193, column: 69, scope: !5128)
!5280 = !DILocation(line: 3854, column: 14, scope: !5232, inlinedAt: !5281)
!5281 = !DILocation(line: 3937, column: 23, scope: !5282, inlinedAt: !5279)
!5282 = !DILexicalBlockFile(scope: !5226, file: !538, discriminator: 2)
!5283 = !DILocation(line: 1848, column: 27, scope: !5237, inlinedAt: !5284)
!5284 = !DILocation(line: 3855, column: 14, scope: !5285, inlinedAt: !5281)
!5285 = !DILexicalBlockFile(scope: !5232, file: !538, discriminator: 2)
!5286 = !DILocation(line: 1966, column: 25, scope: !5242, inlinedAt: !5287)
!5287 = !DILocation(line: 1865, column: 76, scope: !5288, inlinedAt: !5284)
!5288 = !DILexicalBlockFile(scope: !5237, file: !538, discriminator: 2)
!5289 = !DILocation(line: 0, scope: !5126)
!5290 = !DILocation(line: 0, scope: !5226, inlinedAt: !5279)
!5291 = !DILocation(line: 0, scope: !5249, inlinedAt: !5292)
!5292 = !DILocation(line: 3937, column: 9, scope: !5282, inlinedAt: !5279)
!5293 = !DILocation(line: 0, scope: !5255, inlinedAt: !5294)
!5294 = !DILocation(line: 19, column: 15, scope: !5295, inlinedAt: !5292)
!5295 = !DILexicalBlockFile(scope: !5249, file: !2815, discriminator: 2)
!5296 = !DILocation(line: 238, column: 10, scope: !5255, inlinedAt: !5294)
!5297 = !DILocation(line: 611, column: 9, scope: !5298, inlinedAt: !5299)
!5298 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, regex_syntax::hir::ClassBytesRange>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEB15_", scope: !93, file: !2842, line: 610, type: !2843, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !2847, declaration: !2846)
!5299 = !DILocation(line: 606, column: 14, scope: !5300, inlinedAt: !5302)
!5300 = !DILexicalBlockFile(scope: !5301, file: !2842, discriminator: 2)
!5301 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, regex_syntax::hir::ClassBytesRange>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEB10_", scope: !93, file: !2842, line: 605, type: !2851, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !2847, declaration: !2853)
!5302 = !DILocation(line: 296, column: 20, scope: !5303, inlinedAt: !5305)
!5303 = !DILexicalBlockFile(scope: !5304, file: !2842, discriminator: 2)
!5304 = distinct !DISubprogram(name: "ptr<regex_syntax::hir::ClassBytesRange, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE3ptrBQ_", scope: !146, file: !2842, line: 295, type: !2857, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !153, declaration: !2860)
!5305 = !DILocation(line: 1969, column: 18, scope: !5242, inlinedAt: !5245)
!5306 = !DILocation(line: 238, column: 9, scope: !5255, inlinedAt: !5259)
!5307 = !DILocation(line: 238, column: 9, scope: !5255, inlinedAt: !5294)
!5308 = !DILocation(line: 193, column: 46, scope: !5128)
!5309 = !DILocation(line: 193, column: 31, scope: !5128)
!5310 = !DILocation(line: 1865, column: 86, scope: !5237, inlinedAt: !5311)
!5311 = !DILocation(line: 3855, column: 14, scope: !5312, inlinedAt: !5313)
!5312 = !DILexicalBlockFile(scope: !5232, file: !538, discriminator: 4)
!5313 = !DILocation(line: 3937, column: 23, scope: !5314, inlinedAt: !5315)
!5314 = !DILexicalBlockFile(scope: !5226, file: !538, discriminator: 4)
!5315 = !DILocation(line: 197, column: 31, scope: !5126)
!5316 = !DILocation(line: 193, column: 20, scope: !5128)
!5317 = !DILocation(line: 0, scope: !5128)
!5318 = !DILocalVariable(name: "value", arg: 2, scope: !5319, file: !538, line: 995, type: !13)
!5319 = distinct !DISubprogram(name: "push<regex_syntax::hir::ClassBytesRange, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE4pushBJ_", scope: !143, file: !538, line: 995, type: !2868, scopeLine: 995, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !153, declaration: !2870, retainedNodes: !5320)
!5320 = !{!5321, !5318}
!5321 = !DILocalVariable(name: "self", arg: 1, scope: !5319, file: !538, line: 995, type: !2587)
!5322 = !DILocation(line: 0, scope: !5319, inlinedAt: !5323)
!5323 = !DILocation(line: 194, column: 29, scope: !5128)
!5324 = !DILocation(line: 0, scope: !2876, inlinedAt: !5325)
!5325 = distinct !DILocation(line: 996, column: 22, scope: !5319, inlinedAt: !5323)
!5326 = !DILocation(line: 0, scope: !2890, inlinedAt: !5327)
!5327 = distinct !DILocation(line: 1036, column: 28, scope: !2884, inlinedAt: !5325)
!5328 = !DILocation(line: 0, scope: !2898, inlinedAt: !5329)
!5329 = distinct !DILocation(line: 309, column: 20, scope: !2906, inlinedAt: !5330)
!5330 = distinct !DILocation(line: 1032, column: 28, scope: !2884, inlinedAt: !5325)
!5331 = !DILocation(line: 0, scope: !2884, inlinedAt: !5325)
!5332 = !DILocation(line: 0, scope: !2915, inlinedAt: !5333)
!5333 = distinct !DILocation(line: 1036, column: 41, scope: !2884, inlinedAt: !5325)
!5334 = !DILocation(line: 308, column: 34, scope: !2906, inlinedAt: !5330)
!5335 = !DILocation(line: 616, column: 49, scope: !2898, inlinedAt: !5329)
!5336 = !{!5337}
!5337 = distinct !{!5337, !5338, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_: argument 0"}
!5338 = distinct !{!5338, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8push_mutBJ_"}
!5339 = !DILocation(line: 1032, column: 12, scope: !2884, inlinedAt: !5325)
!5340 = !DILocation(line: 1033, column: 22, scope: !2884, inlinedAt: !5325)
!5341 = !DILocation(line: 1032, column: 9, scope: !2884, inlinedAt: !5325)
!5342 = !DILocation(line: 611, column: 9, scope: !2929, inlinedAt: !5343)
!5343 = distinct !DILocation(line: 606, column: 14, scope: !2931, inlinedAt: !5344)
!5344 = distinct !DILocation(line: 296, column: 20, scope: !2933, inlinedAt: !5345)
!5345 = distinct !DILocation(line: 2053, column: 18, scope: !2890, inlinedAt: !5327)
!5346 = !DILocation(line: 970, column: 18, scope: !2915, inlinedAt: !5333)
!5347 = !DILocation(line: 0, scope: !2886, inlinedAt: !5325)
!5348 = !DILocation(line: 0, scope: !2939, inlinedAt: !5349)
!5349 = distinct !DILocation(line: 1037, column: 13, scope: !2886, inlinedAt: !5325)
!5350 = !DILocation(line: 1963, column: 41, scope: !2939, inlinedAt: !5349)
!5351 = !DILocation(line: 1038, column: 13, scope: !2886, inlinedAt: !5325)
!5352 = !DILocation(line: 193, column: 13, scope: !5126)
!5353 = !DILocation(line: 3936, column: 14, scope: !5226, inlinedAt: !5315)
!5354 = !DILocation(line: 3854, column: 14, scope: !5232, inlinedAt: !5313)
!5355 = !DILocation(line: 1848, column: 27, scope: !5237, inlinedAt: !5311)
!5356 = !DILocation(line: 1966, column: 25, scope: !5242, inlinedAt: !5357)
!5357 = !DILocation(line: 1865, column: 76, scope: !5358, inlinedAt: !5311)
!5358 = !DILexicalBlockFile(scope: !5237, file: !538, discriminator: 4)
!5359 = !DILocation(line: 0, scope: !5226, inlinedAt: !5315)
!5360 = !DILocation(line: 0, scope: !5249, inlinedAt: !5361)
!5361 = !DILocation(line: 3937, column: 9, scope: !5314, inlinedAt: !5315)
!5362 = !DILocation(line: 0, scope: !5255, inlinedAt: !5363)
!5363 = !DILocation(line: 19, column: 15, scope: !5364, inlinedAt: !5361)
!5364 = !DILexicalBlockFile(scope: !5249, file: !2815, discriminator: 4)
!5365 = !DILocation(line: 238, column: 10, scope: !5255, inlinedAt: !5363)
!5366 = !DILocation(line: 611, column: 9, scope: !5298, inlinedAt: !5367)
!5367 = !DILocation(line: 606, column: 14, scope: !5368, inlinedAt: !5369)
!5368 = !DILexicalBlockFile(scope: !5301, file: !2842, discriminator: 6)
!5369 = !DILocation(line: 296, column: 20, scope: !5370, inlinedAt: !5371)
!5370 = !DILexicalBlockFile(scope: !5304, file: !2842, discriminator: 6)
!5371 = !DILocation(line: 1969, column: 18, scope: !5372, inlinedAt: !5357)
!5372 = !DILexicalBlockFile(scope: !5242, file: !538, discriminator: 4)
!5373 = !DILocation(line: 238, column: 9, scope: !5255, inlinedAt: !5363)
!5374 = !DILocation(line: 197, column: 35, scope: !5126)
!5375 = !DILocation(line: 3936, column: 14, scope: !5226, inlinedAt: !5376)
!5376 = !DILocation(line: 197, column: 57, scope: !5126)
!5377 = !DILocation(line: 3854, column: 14, scope: !5232, inlinedAt: !5378)
!5378 = !DILocation(line: 3937, column: 23, scope: !5379, inlinedAt: !5376)
!5379 = !DILexicalBlockFile(scope: !5226, file: !538, discriminator: 6)
!5380 = !DILocation(line: 1848, column: 27, scope: !5237, inlinedAt: !5381)
!5381 = !DILocation(line: 3855, column: 14, scope: !5382, inlinedAt: !5378)
!5382 = !DILexicalBlockFile(scope: !5232, file: !538, discriminator: 6)
!5383 = !DILocation(line: 1966, column: 25, scope: !5242, inlinedAt: !5384)
!5384 = !DILocation(line: 1865, column: 76, scope: !5385, inlinedAt: !5381)
!5385 = !DILexicalBlockFile(scope: !5237, file: !538, discriminator: 6)
!5386 = !DILocation(line: 0, scope: !5226, inlinedAt: !5376)
!5387 = !DILocation(line: 0, scope: !5249, inlinedAt: !5388)
!5388 = !DILocation(line: 3937, column: 9, scope: !5379, inlinedAt: !5376)
!5389 = !DILocation(line: 0, scope: !5255, inlinedAt: !5390)
!5390 = !DILocation(line: 19, column: 15, scope: !5391, inlinedAt: !5388)
!5391 = !DILexicalBlockFile(scope: !5249, file: !2815, discriminator: 6)
!5392 = !DILocation(line: 197, column: 61, scope: !5126)
!5393 = !DILocation(line: 2192, column: 50, scope: !2704, inlinedAt: !5136)
!5394 = !DILocation(line: 197, column: 17, scope: !5126)
!5395 = !DILocation(line: 2192, column: 19, scope: !5139, inlinedAt: !5396)
!5396 = !DILocation(line: 1100, column: 12, scope: !5397, inlinedAt: !5163)
!5397 = !DILexicalBlockFile(scope: !5145, file: !3328, discriminator: 4)
!5398 = !DILocation(line: 2192, column: 26, scope: !5139, inlinedAt: !5396)
!5399 = !DILocation(line: 2192, column: 50, scope: !5139, inlinedAt: !5396)
!5400 = !DILocation(line: 1100, column: 12, scope: !5145, inlinedAt: !5163)
!5401 = !DILocation(line: 207, column: 9, scope: !5126)
!5402 = !DILocation(line: 207, column: 21, scope: !5126)
!5403 = !DILocation(line: 0, scope: !2774, inlinedAt: !5404)
!5404 = distinct !DILocation(line: 207, column: 39, scope: !5126)
!5405 = !DILocation(line: 847, column: 1, scope: !2774, inlinedAt: !5404)
!5406 = !DILocation(line: 207, column: 39, scope: !5126)
!5407 = !DILocation(line: 208, column: 23, scope: !5126)
!5408 = !DILocation(line: 208, column: 9, scope: !5126)
!5409 = !DILocation(line: 209, column: 6, scope: !5112)
!5410 = !DILocation(line: 0, scope: !5153, inlinedAt: !5163)
!5411 = !DILocation(line: 1013, column: 17, scope: !5181, inlinedAt: !5196)
!5412 = !DILocation(line: 1103, column: 13, scope: !5153, inlinedAt: !5163)
!5413 = !DILocation(line: 0, scope: !5134)
!5414 = !DILocation(line: 203, column: 28, scope: !5134)
!5415 = distinct !DISubprogram(name: "difference<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE10differenceB9_", scope: !80, file: !367, line: 212, type: !5416, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !131, declaration: !5419, retainedNodes: !5420)
!5416 = !DISubroutineType(types: !5417)
!5417 = !{null, !2650, !5418}
!5418 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&regex_syntax::hir::interval::IntervalSet<regex_syntax::hir::ClassUnicodeRange>", baseType: !80, size: 64, align: 64, dwarfAddressSpace: 0)
!5419 = !DISubprogram(name: "difference<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE10differenceB9_", scope: !80, file: !367, line: 212, type: !5416, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !131)
!5420 = !{!5421, !5422, !5423, !5425, !5427, !5428, !5430, !5432, !5434, !5436, !5438, !5439}
!5421 = !DILocalVariable(name: "self", arg: 1, scope: !5415, file: !367, line: 212, type: !2650)
!5422 = !DILocalVariable(name: "other", arg: 2, scope: !5415, file: !367, line: 212, type: !5418)
!5423 = !DILocalVariable(name: "drain_end", scope: !5424, file: !367, line: 229, type: !9, align: 64)
!5424 = distinct !DILexicalBlock(scope: !5415, file: !367, line: 229, column: 9)
!5425 = !DILocalVariable(name: "a", scope: !5426, file: !367, line: 230, type: !9, align: 64)
!5426 = distinct !DILexicalBlock(scope: !5424, file: !367, line: 230, column: 9)
!5427 = !DILocalVariable(name: "b", scope: !5426, file: !367, line: 230, type: !9, align: 64)
!5428 = !DILocalVariable(name: "range", scope: !5429, file: !367, line: 242, type: !30, align: 32)
!5429 = distinct !DILexicalBlock(scope: !5426, file: !367, line: 242, column: 17)
!5430 = !DILocalVariable(name: "range", scope: !5431, file: !367, line: 261, type: !30, align: 32)
!5431 = distinct !DILexicalBlock(scope: !5426, file: !367, line: 261, column: 13)
!5432 = !DILocalVariable(name: "old_range", scope: !5433, file: !367, line: 265, type: !30, align: 32)
!5433 = distinct !DILexicalBlock(scope: !5431, file: !367, line: 265, column: 17)
!5434 = !DILocalVariable(name: "range1", scope: !5435, file: !367, line: 273, type: !30, align: 32)
!5435 = distinct !DILexicalBlock(scope: !5433, file: !367, line: 273, column: 21)
!5436 = !DILocalVariable(name: "range1", scope: !5437, file: !367, line: 274, type: !30, align: 32)
!5437 = distinct !DILexicalBlock(scope: !5433, file: !367, line: 274, column: 21)
!5438 = !DILocalVariable(name: "range2", scope: !5437, file: !367, line: 274, type: !30, align: 32)
!5439 = !DILocalVariable(name: "range", scope: !5440, file: !367, line: 296, type: !30, align: 32)
!5440 = distinct !DILexicalBlock(scope: !5426, file: !367, line: 296, column: 13)
!5441 = !DILocalVariable(name: "other", arg: 2, scope: !5442, file: !2694, line: 2196, type: !5446)
!5442 = distinct !DISubprogram(name: "gt", linkageName: "_RNvXsS_NtNtCsj6eKBz9Db1c_4core3cmp5implscNtB7_10PartialOrd2gt", scope: !5443, file: !2694, line: 2196, type: !5444, scopeLine: 2196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !20, retainedNodes: !5447)
!5443 = !DINamespace(name: "{impl#56}", scope: !2696)
!5444 = !DISubroutineType(types: !5445)
!5445 = !{!130, !5446, !5446}
!5446 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&char", baseType: !33, size: 64, align: 64, dwarfAddressSpace: 0)
!5447 = !{!5448, !5441}
!5448 = !DILocalVariable(name: "self", arg: 1, scope: !5442, file: !2694, line: 2196, type: !5446)
!5449 = !DILocation(line: 0, scope: !5442, inlinedAt: !5450)
!5450 = distinct !DILocation(line: 285, column: 20, scope: !5433)
!5451 = !DILocalVariable(name: "other", arg: 2, scope: !5452, file: !2694, line: 2192, type: !5446)
!5452 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsS_NtNtCsj6eKBz9Db1c_4core3cmp5implscNtB7_10PartialOrd2lt", scope: !5443, file: !2694, line: 2192, type: !5444, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !20, retainedNodes: !5453)
!5453 = !{!5454, !5451}
!5454 = !DILocalVariable(name: "self", arg: 1, scope: !5452, file: !2694, line: 2192, type: !5446)
!5455 = !DILocation(line: 0, scope: !5452, inlinedAt: !5456)
!5456 = distinct !DILocation(line: 241, column: 16, scope: !5426)
!5457 = !DILocation(line: 0, scope: !5452, inlinedAt: !5458)
!5458 = distinct !DILocation(line: 235, column: 16, scope: !5426)
!5459 = !DILocation(line: 0, scope: !5415)
!5460 = !DILocation(line: 261, column: 17, scope: !5431)
!5461 = !DILocalVariable(name: "self", arg: 1, scope: !5462, file: !538, line: 3125, type: !1453)
!5462 = distinct !DISubprogram(name: "is_empty<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8is_emptyBI_", scope: !84, file: !538, line: 3125, type: !1451, scopeLine: 3125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !127, declaration: !1454, retainedNodes: !5463)
!5463 = !{!5461}
!5464 = !DILocation(line: 3125, column: 27, scope: !5462, inlinedAt: !5465)
!5465 = !DILocation(line: 213, column: 24, scope: !5415)
!5466 = !DILocalVariable(name: "self", arg: 1, scope: !5467, file: !538, line: 3100, type: !1453)
!5467 = distinct !DISubprogram(name: "len<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE3lenBI_", scope: !84, file: !538, line: 3100, type: !1460, scopeLine: 3100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !127, declaration: !1462, retainedNodes: !5468)
!5468 = !{!5466}
!5469 = !DILocation(line: 3100, column: 22, scope: !5467, inlinedAt: !5470)
!5470 = !DILocation(line: 3126, column: 14, scope: !5462, inlinedAt: !5465)
!5471 = !DILocation(line: 3101, column: 19, scope: !5467, inlinedAt: !5470)
!5472 = !DILocation(line: 3106, column: 37, scope: !5467, inlinedAt: !5470)
!5473 = !DILocation(line: 3106, column: 18, scope: !5467, inlinedAt: !5470)
!5474 = !DILocation(line: 3126, column: 9, scope: !5462, inlinedAt: !5465)
!5475 = !DILocation(line: 213, column: 12, scope: !5415)
!5476 = !DILocation(line: 3125, column: 27, scope: !5462, inlinedAt: !5477)
!5477 = !DILocation(line: 213, column: 51, scope: !5415)
!5478 = !DILocation(line: 3100, column: 22, scope: !5467, inlinedAt: !5479)
!5479 = !DILocation(line: 3126, column: 14, scope: !5480, inlinedAt: !5477)
!5480 = !DILexicalBlockFile(scope: !5462, file: !538, discriminator: 2)
!5481 = !DILocation(line: 3101, column: 19, scope: !5467, inlinedAt: !5479)
!5482 = !DILocation(line: 3106, column: 37, scope: !5467, inlinedAt: !5479)
!5483 = !DILocation(line: 3106, column: 18, scope: !5467, inlinedAt: !5479)
!5484 = !DILocation(line: 3126, column: 9, scope: !5462, inlinedAt: !5477)
!5485 = !DILocation(line: 213, column: 38, scope: !5415)
!5486 = !DILocation(line: 0, scope: !5426)
!5487 = !DILocation(line: 231, column: 22, scope: !5426)
!5488 = !DILocation(line: 295, column: 15, scope: !5426)
!5489 = !DILocation(line: 1865, column: 86, scope: !5490, inlinedAt: !5501)
!5490 = distinct !DISubprogram(name: "as_slice<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8as_sliceBI_", scope: !84, file: !538, line: 1848, type: !5491, scopeLine: 1848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !127, declaration: !5498, retainedNodes: !5499)
!5491 = !DISubroutineType(types: !5492)
!5492 = !{!5493, !1453}
!5493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "&[regex_syntax::hir::ClassUnicodeRange]", file: !2, size: 128, align: 64, elements: !5494, templateParams: !20, identifier: "233f4e0fe5fc75fedef4b27ffdd26ee0")
!5494 = !{!5495, !5497}
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !5493, file: !2, baseType: !5496, size: 64, align: 64)
!5496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64, dwarfAddressSpace: 0)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5493, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!5498 = !DISubprogram(name: "as_slice<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8as_sliceBI_", scope: !84, file: !538, line: 1848, type: !5491, scopeLine: 1848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !127)
!5499 = !{!5500}
!5500 = !DILocalVariable(name: "self", arg: 1, scope: !5490, file: !538, line: 1848, type: !1453)
!5501 = !DILocation(line: 3855, column: 14, scope: !5502, inlinedAt: !5506)
!5502 = !DILexicalBlockFile(scope: !5503, file: !538, discriminator: 22)
!5503 = distinct !DISubprogram(name: "deref<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefBJ_", scope: !2756, file: !538, line: 3854, type: !5491, scopeLine: 3854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !127, retainedNodes: !5504)
!5504 = !{!5505}
!5505 = !DILocalVariable(name: "self", arg: 1, scope: !5503, file: !538, line: 3854, type: !1453)
!5506 = !DILocation(line: 3937, column: 23, scope: !5507, inlinedAt: !5515)
!5507 = !DILexicalBlockFile(scope: !5508, file: !538, discriminator: 22)
!5508 = distinct !DISubprogram(name: "index<regex_syntax::hir::ClassUnicodeRange, usize, alloc::alloc::Global>", linkageName: "_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBJ_", scope: !2762, file: !538, line: 3936, type: !5509, scopeLine: 3936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !5514, retainedNodes: !5511)
!5509 = !DISubroutineType(types: !5510)
!5510 = !{!29, !1453, !9, !937}
!5511 = !{!5512, !5513}
!5512 = !DILocalVariable(name: "self", arg: 1, scope: !5508, file: !538, line: 3936, type: !1453)
!5513 = !DILocalVariable(name: "index", arg: 2, scope: !5508, file: !538, line: 3936, type: !9)
!5514 = !{!126, !2769, !122}
!5515 = !DILocation(line: 296, column: 36, scope: !5426)
!5516 = !DILocation(line: 300, column: 9, scope: !5426)
!5517 = !DILocation(line: 300, column: 21, scope: !5426)
!5518 = !DILocalVariable(arg: 1, scope: !5519, file: !2584, line: 847, type: !5522)
!5519 = distinct !DISubprogram(name: "drop_glue<alloc::vec::drain::Drain<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>>", linkageName: "_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEEB1m_", scope: !98, file: !2584, line: 847, type: !5520, scopeLine: 847, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !5534, retainedNodes: !5533)
!5520 = !DISubroutineType(types: !5521)
!5521 = !{null, !5522}
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut alloc::vec::drain::Drain<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", baseType: !5523, size: 64, align: 64, dwarfAddressSpace: 0)
!5523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Drain<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", scope: !2779, file: !2, size: 320, align: 64, flags: DIFlagPublic, elements: !5524, templateParams: !127, identifier: "c1113f16fabb4b03cb49b5010a73632d")
!5524 = !{!5525, !5526, !5527, !5528}
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "tail_start", scope: !5523, file: !2, baseType: !9, size: 64, align: 64, offset: 192, flags: DIFlagProtected)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "tail_len", scope: !5523, file: !2, baseType: !9, size: 64, align: 64, offset: 256, flags: DIFlagProtected)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !5523, file: !2, baseType: !1156, size: 128, align: 64, flags: DIFlagProtected)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !5523, file: !2, baseType: !5529, size: 64, align: 64, offset: 128, flags: DIFlagProtected)
!5529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NonNull<alloc::vec::Vec<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>>", scope: !103, file: !2, size: 64, align: 64, flags: DIFlagPublic, elements: !5530, templateParams: !1785, identifier: "f648a2800662ae2ccd53ef57ee507918")
!5530 = !{!5531}
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5529, file: !2, baseType: !5532, size: 64, align: 64, flags: DIFlagPrivate)
!5532 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const alloc::vec::Vec<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", baseType: !84, size: 64, align: 64, dwarfAddressSpace: 0)
!5533 = !{!5518}
!5534 = !{!5535}
!5535 = !DITemplateTypeParameter(name: "T", type: !5523)
!5536 = !DILocation(line: 0, scope: !5519, inlinedAt: !5537)
!5537 = distinct !DILocation(line: 300, column: 39, scope: !5426)
!5538 = !DILocation(line: 847, column: 1, scope: !5519, inlinedAt: !5537)
!5539 = !DILocation(line: 300, column: 39, scope: !5426)
!5540 = !DILocation(line: 301, column: 23, scope: !5426)
!5541 = !DILocation(line: 301, column: 9, scope: !5426)
!5542 = !DILocation(line: 302, column: 6, scope: !5415)
!5543 = !DILocation(line: 3936, column: 14, scope: !5508, inlinedAt: !5515)
!5544 = !DILocation(line: 3854, column: 14, scope: !5503, inlinedAt: !5506)
!5545 = !DILocation(line: 1848, column: 27, scope: !5490, inlinedAt: !5501)
!5546 = !DILocalVariable(name: "self", arg: 1, scope: !5547, file: !538, line: 1966, type: !1453)
!5547 = distinct !DISubprogram(name: "as_ptr<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE6as_ptrBI_", scope: !84, file: !538, line: 1966, type: !5548, scopeLine: 1966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !127, declaration: !5550, retainedNodes: !5551)
!5548 = !DISubroutineType(types: !5549)
!5549 = !{!1162, !1453}
!5550 = !DISubprogram(name: "as_ptr<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE6as_ptrBI_", scope: !84, file: !538, line: 1966, type: !5548, scopeLine: 1966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !127)
!5551 = !{!5546}
!5552 = !DILocation(line: 1966, column: 25, scope: !5547, inlinedAt: !5553)
!5553 = !DILocation(line: 1865, column: 76, scope: !5554, inlinedAt: !5501)
!5554 = !DILexicalBlockFile(scope: !5490, file: !538, discriminator: 22)
!5555 = !DILocation(line: 0, scope: !5508, inlinedAt: !5515)
!5556 = !DILocalVariable(name: "index", arg: 2, scope: !5557, file: !2815, line: 18, type: !9)
!5557 = distinct !DISubprogram(name: "index<regex_syntax::hir::ClassUnicodeRange, usize>", linkageName: "_RNvXNtNtCsj6eKBz9Db1c_4core5slice5indexSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeINtNtNtB6_3ops5index5IndexjE5indexBG_", scope: !2816, file: !2815, line: 18, type: !5558, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !5566, retainedNodes: !5560)
!5558 = !DISubroutineType(types: !5559)
!5559 = !{!29, !5493, !9, !937}
!5560 = !{!5561, !5556}
!5561 = !DILocalVariable(name: "self", arg: 1, scope: !5557, file: !2815, line: 18, type: !5562)
!5562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*const [regex_syntax::hir::ClassUnicodeRange]", file: !2, size: 128, align: 64, elements: !5563, templateParams: !20, identifier: "4df5d4e0e5666b9cda33e49e6b106a06")
!5563 = !{!5564, !5565}
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !5562, file: !2, baseType: !5496, size: 64, align: 64)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5562, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!5566 = !{!126, !2769}
!5567 = !DILocation(line: 0, scope: !5557, inlinedAt: !5568)
!5568 = !DILocation(line: 3937, column: 9, scope: !5507, inlinedAt: !5515)
!5569 = !DILocalVariable(name: "self", arg: 1, scope: !5570, file: !2815, line: 236, type: !9)
!5570 = distinct !DISubprogram(name: "index<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE5indexB12_", scope: !2831, file: !2815, line: 236, type: !5571, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !125, retainedNodes: !5573)
!5571 = !DISubroutineType(types: !5572)
!5572 = !{!29, !9, !5493, !937}
!5573 = !{!5569, !5574}
!5574 = !DILocalVariable(name: "slice", arg: 2, scope: !5570, file: !2815, line: 236, type: !5562)
!5575 = !DILocation(line: 0, scope: !5570, inlinedAt: !5576)
!5576 = !DILocation(line: 19, column: 15, scope: !5577, inlinedAt: !5568)
!5577 = !DILexicalBlockFile(scope: !5557, file: !2815, discriminator: 22)
!5578 = !DILocation(line: 238, column: 10, scope: !5570, inlinedAt: !5576)
!5579 = !DILocation(line: 611, column: 9, scope: !5580, inlinedAt: !5585)
!5580 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEB15_", scope: !93, file: !2842, line: 610, type: !5581, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !5584, declaration: !5583)
!5581 = !DISubroutineType(types: !5582)
!5582 = !{!1159, !2845}
!5583 = !DISubprogram(name: "non_null<alloc::alloc::Global, regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEB15_", scope: !93, file: !2842, line: 610, type: !5581, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5584)
!5584 = !{!122, !126}
!5585 = !DILocation(line: 606, column: 14, scope: !5586, inlinedAt: !5591)
!5586 = !DILexicalBlockFile(scope: !5587, file: !2842, discriminator: 22)
!5587 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEB10_", scope: !93, file: !2842, line: 605, type: !5588, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !5584, declaration: !5590)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{!1789, !2845}
!5590 = !DISubprogram(name: "ptr<alloc::alloc::Global, regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEB10_", scope: !93, file: !2842, line: 605, type: !5588, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !5584)
!5591 = !DILocation(line: 296, column: 20, scope: !5592, inlinedAt: !5598)
!5592 = !DILexicalBlockFile(scope: !5593, file: !2842, discriminator: 22)
!5593 = distinct !DISubprogram(name: "ptr<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE3ptrBQ_", scope: !89, file: !2842, line: 295, type: !5594, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !127, declaration: !5597)
!5594 = !DISubroutineType(types: !5595)
!5595 = !{!1789, !5596}
!5596 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&alloc::raw_vec::RawVec<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", baseType: !89, size: 64, align: 64, dwarfAddressSpace: 0)
!5597 = !DISubprogram(name: "ptr<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE3ptrBQ_", scope: !89, file: !2842, line: 295, type: !5594, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !127)
!5598 = !DILocation(line: 1969, column: 18, scope: !5599, inlinedAt: !5553)
!5599 = !DILexicalBlockFile(scope: !5547, file: !538, discriminator: 22)
!5600 = !DILocation(line: 238, column: 9, scope: !5570, inlinedAt: !5576)
!5601 = !DILocation(line: 296, column: 25, scope: !5426)
!5602 = !DILocation(line: 0, scope: !5440)
!5603 = !DILocalVariable(name: "value", arg: 2, scope: !5604, file: !538, line: 995, type: !30)
!5604 = distinct !DISubprogram(name: "push<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE4pushBJ_", scope: !84, file: !538, line: 995, type: !5605, scopeLine: 995, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !127, declaration: !5607, retainedNodes: !5608)
!5605 = !DISubroutineType(types: !5606)
!5606 = !{null, !2609, !30}
!5607 = !DISubprogram(name: "push<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE4pushBJ_", scope: !84, file: !538, line: 995, type: !5605, scopeLine: 995, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !127)
!5608 = !{!5609, !5603}
!5609 = !DILocalVariable(name: "self", arg: 1, scope: !5604, file: !538, line: 995, type: !2609)
!5610 = !DILocation(line: 0, scope: !5604, inlinedAt: !5611)
!5611 = !DILocation(line: 297, column: 25, scope: !5440)
!5612 = !DILocalVariable(name: "self", arg: 1, scope: !5613, file: !538, line: 1027, type: !2609)
end_hunk_2
begin_hunk_3_@llvm.experimental.noalias.scope.decl
!7585 = !DILocation(line: 3855, column: 14, scope: !7586, inlinedAt: !7583)
!7586 = !DILexicalBlockFile(scope: !7349, file: !538, discriminator: 10)
!7587 = !DILocation(line: 1966, column: 25, scope: !7359, inlinedAt: !7588)
!7588 = !DILocation(line: 1865, column: 76, scope: !7589, inlinedAt: !7585)
!7589 = !DILexicalBlockFile(scope: !7354, file: !538, discriminator: 10)
!7590 = !DILocalVariable(name: "self", arg: 1, scope: !7591, file: !367, line: 576, type: !33)
!7591 = distinct !DISubprogram(name: "increment", linkageName: "_RNvXs3_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalcNtB5_5Bound9increment", scope: !7387, file: !367, line: 576, type: !7388, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !20, retainedNodes: !7592)
!7592 = !{!7590, !7593}
!7593 = !DILocalVariable(name: "c", scope: !7594, file: !367, line: 579, type: !33, align: 32)
!7594 = distinct !DILexicalBlock(scope: !7591, file: !367, line: 579, column: 13)
!7595 = !DILocation(line: 0, scope: !7591, inlinedAt: !7596)
!7596 = distinct !DILocation(line: 350, column: 60, scope: !7214)
!7597 = !DILocation(line: 0, scope: !7594, inlinedAt: !7596)
!7598 = !DILocalVariable(name: "rhs", scope: !7599, file: !3361, line: 930, type: !165, align: 32)
!7599 = distinct !DISubprogram(name: "checked_add", linkageName: "_RNvMs6_NtCsj6eKBz9Db1c_4core3numm11checked_add", scope: !7378, file: !3361, line: 930, type: !7379, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !20, retainedNodes: !7600)
!7600 = !{!7601, !7598}
!7601 = !DILocalVariable(name: "self", arg: 1, scope: !7599, file: !3361, line: 930, type: !165)
!7602 = !DILocation(line: 0, scope: !7599, inlinedAt: !7603)
!7603 = distinct !DILocation(line: 579, column: 46, scope: !7594, inlinedAt: !7596)
!7604 = !DILocation(line: 577, column: 9, scope: !7591, inlinedAt: !7596)
!7605 = !DILocation(line: 938, column: 37, scope: !7599, inlinedAt: !7603)
!7606 = !DILocalVariable(name: "i", arg: 1, scope: !7607, file: !7406, line: 132, type: !165)
!7607 = distinct !DISubprogram(name: "from_u32", linkageName: "_RNvNtCsj6eKBz9Db1c_4core4char8from_u32", scope: !7407, file: !7406, line: 132, type: !7408, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !20, retainedNodes: !7608)
!7608 = !{!7606}
!7609 = !DILocation(line: 0, scope: !7607, inlinedAt: !7610)
!7610 = distinct !DILocation(line: 579, column: 18, scope: !7594, inlinedAt: !7596)
!7611 = !DILocalVariable(name: "i", arg: 1, scope: !7612, file: !7426, line: 13, type: !165)
!7612 = distinct !DISubprogram(name: "from_u32", linkageName: "_RNvNtNtCsj6eKBz9Db1c_4core4char7convert8from_u32", scope: !7427, file: !7426, line: 13, type: !7408, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !20, retainedNodes: !7613)
!7613 = !{!7611, !7614}
!7614 = !DILocalVariable(name: "c", scope: !7615, file: !7426, line: 16, type: !33, align: 32)
!7615 = distinct !DILexicalBlock(scope: !7612, file: !7426, line: 16, column: 9)
!7616 = !DILocation(line: 0, scope: !7612, inlinedAt: !7617)
!7617 = distinct !DILocation(line: 133, column: 5, scope: !7607, inlinedAt: !7610)
!7618 = !DILocalVariable(name: "i", arg: 1, scope: !7619, file: !7426, line: 280, type: !165)
!7619 = distinct !DISubprogram(name: "char_try_from_u32", linkageName: "_RNvNtNtCsj6eKBz9Db1c_4core4char7convert17char_try_from_u32", scope: !7427, file: !7426, line: 280, type: !7435, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !20, retainedNodes: !7620)
!7620 = !{!7618}
!7621 = !DILocation(line: 0, scope: !7619, inlinedAt: !7622)
!7622 = distinct !DILocation(line: 15, column: 11, scope: !7612, inlinedAt: !7617)
!7623 = !DILocation(line: 293, column: 8, scope: !7619, inlinedAt: !7622)
!7624 = !DILocalVariable(name: "self", arg: 1, scope: !7625, file: !3465, line: 1011, type: !7410)
!7625 = distinct !DISubprogram(name: "unwrap<char>", linkageName: "_RNvMNtCsj6eKBz9Db1c_4core6optionINtB2_6OptioncE6unwrapCs3roNzt6HBWW_12regex_syntax", scope: !7410, file: !3465, line: 1011, type: !7461, scopeLine: 1011, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !2082, declaration: !7463, retainedNodes: !7626)
!7626 = !{!7624, !7627}
!7627 = !DILocalVariable(name: "val", scope: !7628, file: !3465, line: 1013, type: !33, align: 32)
!7628 = distinct !DILexicalBlock(scope: !7625, file: !3465, line: 1013, column: 13)
!7629 = !DILocation(line: 0, scope: !7625, inlinedAt: !7630)
!7630 = distinct !DILocation(line: 579, column: 71, scope: !7594, inlinedAt: !7596)
!7631 = !DILocation(line: 1014, column: 21, scope: !7625, inlinedAt: !7630)
!7632 = !DILocation(line: 0, scope: !7226)
!7633 = !DILocation(line: 0, scope: !7307, inlinedAt: !7634)
!7634 = !DILocation(line: 351, column: 25, scope: !7226)
!7635 = !DILocation(line: 351, column: 30, scope: !7226)
!7636 = !DILocation(line: 0, scope: !5613, inlinedAt: !7637)
!7637 = distinct !DILocation(line: 996, column: 22, scope: !7307, inlinedAt: !7634)
!7638 = !DILocation(line: 0, scope: !5627, inlinedAt: !7639)
!7639 = distinct !DILocation(line: 1036, column: 28, scope: !5621, inlinedAt: !7637)
!7640 = !DILocation(line: 0, scope: !5635, inlinedAt: !7641)
!7641 = distinct !DILocation(line: 309, column: 20, scope: !5640, inlinedAt: !7642)
!7642 = distinct !DILocation(line: 1032, column: 28, scope: !5621, inlinedAt: !7637)
!7643 = !DILocation(line: 1029, column: 19, scope: !5613, inlinedAt: !7637)
!7644 = !{!7645}
!7645 = distinct !{!7645, !7646, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_: argument 0"}
!7646 = distinct !{!7646, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_"}
!7647 = !DILocation(line: 0, scope: !5621, inlinedAt: !7637)
!7648 = !DILocation(line: 0, scope: !5649, inlinedAt: !7649)
!7649 = distinct !DILocation(line: 1036, column: 41, scope: !5621, inlinedAt: !7637)
!7650 = !DILocation(line: 308, column: 34, scope: !5640, inlinedAt: !7642)
!7651 = !DILocation(line: 616, column: 49, scope: !5635, inlinedAt: !7641)
!7652 = !DILocation(line: 1032, column: 12, scope: !5621, inlinedAt: !7637)
!7653 = !DILocation(line: 1033, column: 22, scope: !5621, inlinedAt: !7637)
!7654 = !DILocation(line: 1032, column: 9, scope: !5621, inlinedAt: !7637)
!7655 = !DILocation(line: 611, column: 9, scope: !5662, inlinedAt: !7656)
!7656 = distinct !DILocation(line: 606, column: 14, scope: !5664, inlinedAt: !7657)
!7657 = distinct !DILocation(line: 296, column: 20, scope: !5666, inlinedAt: !7658)
!7658 = distinct !DILocation(line: 2053, column: 18, scope: !5627, inlinedAt: !7639)
!7659 = !DILocation(line: 970, column: 18, scope: !5649, inlinedAt: !7649)
!7660 = !DILocation(line: 0, scope: !5623, inlinedAt: !7637)
!7661 = !DILocation(line: 0, scope: !5672, inlinedAt: !7662)
!7662 = distinct !DILocation(line: 1037, column: 13, scope: !5623, inlinedAt: !7637)
!7663 = !DILocation(line: 1963, column: 41, scope: !5672, inlinedAt: !7662)
!7664 = !DILocation(line: 1038, column: 13, scope: !5623, inlinedAt: !7637)
!7665 = !DILocation(line: 349, column: 9, scope: !7214)
!7666 = !DILocation(line: 611, column: 9, scope: !7364, inlinedAt: !7667)
!7667 = !DILocation(line: 606, column: 14, scope: !7668, inlinedAt: !7669)
!7668 = !DILexicalBlockFile(scope: !7366, file: !2842, discriminator: 4)
!7669 = !DILocation(line: 296, column: 20, scope: !7670, inlinedAt: !7671)
!7670 = !DILexicalBlockFile(scope: !7368, file: !2842, discriminator: 4)
!7671 = !DILocation(line: 1969, column: 18, scope: !7672, inlinedAt: !7554)
!7672 = !DILexicalBlockFile(scope: !7359, file: !538, discriminator: 4)
!7673 = !DILocation(line: 238, column: 9, scope: !7264, inlinedAt: !7561)
!7674 = !DILocation(line: 345, column: 44, scope: !7220)
!7675 = !DILocation(line: 0, scope: !7591, inlinedAt: !7676)
!7676 = distinct !DILocation(line: 345, column: 52, scope: !7220)
!7677 = !DILocation(line: 0, scope: !7594, inlinedAt: !7676)
!7678 = !DILocation(line: 0, scope: !7599, inlinedAt: !7679)
!7679 = distinct !DILocation(line: 579, column: 46, scope: !7594, inlinedAt: !7676)
!7680 = !DILocation(line: 577, column: 9, scope: !7591, inlinedAt: !7676)
!7681 = !DILocation(line: 938, column: 37, scope: !7599, inlinedAt: !7679)
!7682 = !DILocation(line: 0, scope: !7607, inlinedAt: !7683)
!7683 = distinct !DILocation(line: 579, column: 18, scope: !7594, inlinedAt: !7676)
!7684 = !DILocation(line: 0, scope: !7612, inlinedAt: !7685)
!7685 = distinct !DILocation(line: 133, column: 5, scope: !7607, inlinedAt: !7683)
!7686 = !DILocation(line: 0, scope: !7619, inlinedAt: !7687)
!7687 = distinct !DILocation(line: 15, column: 11, scope: !7612, inlinedAt: !7685)
!7688 = !DILocation(line: 293, column: 8, scope: !7619, inlinedAt: !7687)
!7689 = !DILocation(line: 297, column: 21, scope: !7619, inlinedAt: !7687)
!7690 = !DILocation(line: 0, scope: !7625, inlinedAt: !7691)
!7691 = distinct !DILocation(line: 579, column: 71, scope: !7594, inlinedAt: !7676)
!7692 = !DILocation(line: 579, column: 78, scope: !7591, inlinedAt: !7676)
!7693 = !DILocation(line: 1014, column: 21, scope: !7625, inlinedAt: !7691)
!7694 = !DILocation(line: 0, scope: !7222)
!7695 = !DILocation(line: 3936, column: 14, scope: !7250, inlinedAt: !7543)
!7696 = !DILocation(line: 3854, column: 14, scope: !7349, inlinedAt: !7697)
!7697 = !DILocation(line: 3937, column: 23, scope: !7546, inlinedAt: !7543)
!7698 = !DILocation(line: 1848, column: 27, scope: !7354, inlinedAt: !7699)
!7699 = !DILocation(line: 3855, column: 14, scope: !7700, inlinedAt: !7697)
!7700 = !DILexicalBlockFile(scope: !7349, file: !538, discriminator: 8)
!7701 = !DILocation(line: 1966, column: 25, scope: !7359, inlinedAt: !7702)
!7702 = !DILocation(line: 1865, column: 76, scope: !7703, inlinedAt: !7699)
!7703 = !DILexicalBlockFile(scope: !7354, file: !538, discriminator: 8)
!7704 = !DILocation(line: 238, column: 10, scope: !7264, inlinedAt: !7548)
!7705 = !DILocation(line: 238, column: 9, scope: !7264, inlinedAt: !7548)
!7706 = !DILocation(line: 346, column: 40, scope: !7222)
!7707 = !DILocation(line: 0, scope: !7386, inlinedAt: !7708)
!7708 = distinct !DILocation(line: 346, column: 48, scope: !7222)
!7709 = !DILocation(line: 0, scope: !7385, inlinedAt: !7708)
!7710 = !DILocation(line: 0, scope: !7377, inlinedAt: !7711)
!7711 = distinct !DILocation(line: 586, column: 46, scope: !7385, inlinedAt: !7708)
!7712 = !DILocation(line: 584, column: 9, scope: !7386, inlinedAt: !7708)
!7713 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!7714 = !DILocation(line: 1096, column: 31, scope: !7377, inlinedAt: !7711)
!7715 = !DILocation(line: 0, scope: !7395, inlinedAt: !7716)
!7716 = distinct !DILocation(line: 586, column: 61, scope: !7385, inlinedAt: !7708)
!7717 = !DILocation(line: 0, scope: !7405, inlinedAt: !7718)
!7718 = distinct !DILocation(line: 586, column: 18, scope: !7385, inlinedAt: !7708)
!7719 = !DILocation(line: 0, scope: !7425, inlinedAt: !7720)
!7720 = distinct !DILocation(line: 133, column: 5, scope: !7405, inlinedAt: !7718)
!7721 = !DILocation(line: 0, scope: !7434, inlinedAt: !7722)
!7722 = distinct !DILocation(line: 15, column: 11, scope: !7425, inlinedAt: !7720)
!7723 = !DILocation(line: 293, column: 8, scope: !7434, inlinedAt: !7722)
!7724 = !DILocation(line: 1014, column: 21, scope: !7395, inlinedAt: !7716)
!7725 = !DILocation(line: 0, scope: !7460, inlinedAt: !7726)
!7726 = distinct !DILocation(line: 586, column: 71, scope: !7385, inlinedAt: !7708)
!7727 = !DILocation(line: 1014, column: 21, scope: !7460, inlinedAt: !7726)
!7728 = !DILocation(line: 0, scope: !7224)
!7729 = !DILocation(line: 0, scope: !7307, inlinedAt: !7730)
!7730 = !DILocation(line: 347, column: 25, scope: !7224)
!7731 = !DILocation(line: 347, column: 30, scope: !7224)
!7732 = !DILocation(line: 0, scope: !5613, inlinedAt: !7733)
!7733 = distinct !DILocation(line: 996, column: 22, scope: !7307, inlinedAt: !7730)
!7734 = !DILocation(line: 0, scope: !5627, inlinedAt: !7735)
!7735 = distinct !DILocation(line: 1036, column: 28, scope: !5621, inlinedAt: !7733)
!7736 = !DILocation(line: 0, scope: !5635, inlinedAt: !7737)
!7737 = distinct !DILocation(line: 309, column: 20, scope: !5640, inlinedAt: !7738)
!7738 = distinct !DILocation(line: 1032, column: 28, scope: !5621, inlinedAt: !7733)
!7739 = !DILocation(line: 1029, column: 19, scope: !5613, inlinedAt: !7733)
!7740 = !{!7741}
!7741 = distinct !{!7741, !7742, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_: argument 0"}
!7742 = distinct !{!7742, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_"}
!7743 = !DILocation(line: 0, scope: !5621, inlinedAt: !7733)
!7744 = !DILocation(line: 0, scope: !5649, inlinedAt: !7745)
!7745 = distinct !DILocation(line: 1036, column: 41, scope: !5621, inlinedAt: !7733)
!7746 = !DILocation(line: 308, column: 34, scope: !5640, inlinedAt: !7738)
!7747 = !DILocation(line: 616, column: 49, scope: !5635, inlinedAt: !7737)
!7748 = !DILocation(line: 1032, column: 12, scope: !5621, inlinedAt: !7733)
!7749 = !DILocation(line: 1033, column: 22, scope: !5621, inlinedAt: !7733)
!7750 = !DILocation(line: 1032, column: 9, scope: !5621, inlinedAt: !7733)
!7751 = !DILocation(line: 611, column: 9, scope: !5662, inlinedAt: !7752)
!7752 = distinct !DILocation(line: 606, column: 14, scope: !5664, inlinedAt: !7753)
!7753 = distinct !DILocation(line: 296, column: 20, scope: !5666, inlinedAt: !7754)
!7754 = distinct !DILocation(line: 2053, column: 18, scope: !5627, inlinedAt: !7735)
!7755 = !DILocation(line: 970, column: 18, scope: !5649, inlinedAt: !7745)
!7756 = !DILocation(line: 0, scope: !5623, inlinedAt: !7733)
!7757 = !DILocation(line: 0, scope: !5672, inlinedAt: !7758)
!7758 = distinct !DILocation(line: 1037, column: 13, scope: !5623, inlinedAt: !7733)
!7759 = !DILocation(line: 1963, column: 41, scope: !5672, inlinedAt: !7758)
!7760 = !DILocation(line: 1038, column: 13, scope: !5623, inlinedAt: !7733)
!7761 = distinct !DISubprogram(name: "intersect<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE9intersectB9_", scope: !80, file: !367, line: 171, type: !5416, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !131, declaration: !7762, retainedNodes: !7763)
!7762 = !DISubprogram(name: "intersect<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RNvMs0_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeE9intersectB9_", scope: !80, file: !367, line: 171, type: !5416, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !131)
!7763 = !{!7764, !7765, !7766, !7768, !7770, !7772, !7774, !7776, !7778, !7780, !7781}
!7764 = !DILocalVariable(name: "self", arg: 1, scope: !7761, file: !367, line: 171, type: !2650)
!7765 = !DILocalVariable(name: "other", arg: 2, scope: !7761, file: !367, line: 171, type: !5418)
!7766 = !DILocalVariable(name: "drain_end", scope: !7767, file: !367, line: 186, type: !9, align: 64)
!7767 = distinct !DILexicalBlock(scope: !7761, file: !367, line: 186, column: 9)
!7768 = !DILocalVariable(name: "ita", scope: !7769, file: !367, line: 188, type: !3297, align: 64)
!7769 = distinct !DILexicalBlock(scope: !7767, file: !367, line: 188, column: 9)
!7770 = !DILocalVariable(name: "itb", scope: !7771, file: !367, line: 189, type: !3297, align: 64)
!7771 = distinct !DILexicalBlock(scope: !7769, file: !367, line: 189, column: 9)
!7772 = !DILocalVariable(name: "a", scope: !7773, file: !367, line: 190, type: !9, align: 64)
!7773 = distinct !DILexicalBlock(scope: !7771, file: !367, line: 190, column: 9)
!7774 = !DILocalVariable(name: "b", scope: !7775, file: !367, line: 191, type: !9, align: 64)
!7775 = distinct !DILexicalBlock(scope: !7773, file: !367, line: 191, column: 9)
!7776 = !DILocalVariable(name: "ab", scope: !7777, file: !367, line: 193, type: !30, align: 32)
!7777 = distinct !DILexicalBlock(scope: !7775, file: !367, line: 193, column: 74)
!7778 = !DILocalVariable(name: "it", scope: !7779, file: !367, line: 196, type: !3333, align: 64)
!7779 = distinct !DILexicalBlock(scope: !7775, file: !367, line: 196, column: 13)
!7780 = !DILocalVariable(name: "aorb", scope: !7779, file: !367, line: 196, type: !5132, align: 64)
!7781 = !DILocalVariable(name: "v", scope: !7782, file: !367, line: 203, type: !9, align: 64)
!7782 = distinct !DILexicalBlock(scope: !7779, file: !367, line: 203, column: 17)
!7783 = !DILocation(line: 0, scope: !5452, inlinedAt: !7784)
!7784 = distinct !DILocation(line: 197, column: 20, scope: !7775)
!7785 = !DILocation(line: 0, scope: !7779)
!7786 = !DILocalVariable(name: "self", arg: 1, scope: !7787, file: !2694, line: 2192, type: !3322)
!7787 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCsj6eKBz9Db1c_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !3319, file: !2694, line: 2192, type: !3320, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !20, retainedNodes: !7788)
!7788 = !{!7786, !7789}
!7789 = !DILocalVariable(name: "other", arg: 2, scope: !7787, file: !2694, line: 2192, type: !3322)
!7790 = !DILocation(line: 2192, column: 19, scope: !7787, inlinedAt: !7791)
!7791 = !DILocation(line: 1100, column: 12, scope: !7792, inlinedAt: !7802)
!7792 = !DILexicalBlockFile(scope: !7793, file: !3328, discriminator: 2)
!7793 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs3roNzt6HBWW_12regex_syntax", scope: !3329, file: !3328, line: 1099, type: !3331, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !271, retainedNodes: !7794)
!7794 = !{!7795, !7796, !7798, !7800}
!7795 = !DILocalVariable(name: "self", arg: 1, scope: !7793, file: !3328, line: 1099, type: !3333)
!7796 = !DILocalVariable(name: "old", scope: !7797, file: !3328, line: 1101, type: !9, align: 64)
!7797 = distinct !DILexicalBlock(scope: !7793, file: !3328, line: 1101, column: 13)
!7798 = !DILocalVariable(name: "old", scope: !7799, file: !3328, line: 1101, type: !9, align: 64)
!7799 = distinct !DILexicalBlock(scope: !7793, file: !3328, line: 1101, column: 13)
!7800 = !DILocalVariable(name: "old", scope: !7801, file: !3328, line: 1101, type: !9, align: 64)
!7801 = distinct !DILexicalBlock(scope: !7793, file: !3328, line: 1101, column: 13)
!7802 = !DILocation(line: 1185, column: 14, scope: !7803, inlinedAt: !7807)
!7803 = !DILexicalBlockFile(scope: !7804, file: !3328, discriminator: 2)
!7804 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs3roNzt6HBWW_12regex_syntax", scope: !3340, file: !3328, line: 1184, type: !3331, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !3343, retainedNodes: !7805)
!7805 = !{!7806}
!7806 = !DILocalVariable(name: "self", arg: 1, scope: !7804, file: !3328, line: 1184, type: !3333)
!7807 = !DILocation(line: 191, column: 25, scope: !7773)
!7808 = !DILocation(line: 1099, column: 18, scope: !7793, inlinedAt: !7802)
!7809 = !DILocation(line: 1184, column: 13, scope: !7804, inlinedAt: !7807)
!7810 = !DILocation(line: 0, scope: !7793, inlinedAt: !7811)
!7811 = !DILocation(line: 1185, column: 14, scope: !7812, inlinedAt: !7813)
!7812 = !DILexicalBlockFile(scope: !7804, file: !3328, discriminator: 4)
!7813 = !DILocation(line: 202, column: 22, scope: !7779)
!7814 = !DILocation(line: 0, scope: !7804, inlinedAt: !7813)
!7815 = !DILocation(line: 2192, column: 19, scope: !7787, inlinedAt: !7816)
!7816 = !DILocation(line: 1100, column: 12, scope: !7793, inlinedAt: !7817)
!7817 = !DILocation(line: 1185, column: 14, scope: !7804, inlinedAt: !7818)
!7818 = !DILocation(line: 190, column: 25, scope: !7771)
!7819 = !DILocation(line: 1099, column: 18, scope: !7793, inlinedAt: !7817)
!7820 = !DILocation(line: 1184, column: 13, scope: !7804, inlinedAt: !7818)
!7821 = !DILocation(line: 0, scope: !7761)
!7822 = !DILocalVariable(name: "n", scope: !7823, file: !3328, line: 263, type: !9, align: 64)
!7823 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCsj6eKBz9Db1c_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !3352, file: !3328, line: 263, type: !3353, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !20, retainedNodes: !7824)
!7824 = !{!7825, !7822}
!7825 = !DILocalVariable(name: "start", arg: 1, scope: !7823, file: !3328, line: 263, type: !9)
!7826 = !DILocation(line: 0, scope: !7823, inlinedAt: !7827)
!7827 = !DILocation(line: 1103, column: 35, scope: !7797, inlinedAt: !7817)
!7828 = !DILocalVariable(name: "rhs", scope: !7829, file: !3361, line: 1001, type: !9, align: 64)
!7829 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCsj6eKBz9Db1c_4core3numj13unchecked_add", scope: !3362, file: !3361, line: 1001, type: !3363, scopeLine: 1001, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !20, retainedNodes: !7830)
!7830 = !{!7831, !7828}
!7831 = !DILocalVariable(name: "self", arg: 1, scope: !7829, file: !3361, line: 1001, type: !9)
!7832 = !DILocation(line: 0, scope: !7829, inlinedAt: !7833)
!7833 = !DILocation(line: 265, column: 28, scope: !7823, inlinedAt: !7827)
!7834 = !DILocation(line: 0, scope: !7823, inlinedAt: !7835)
!7835 = !DILocation(line: 1103, column: 35, scope: !7836, inlinedAt: !7802)
!7836 = !DILexicalBlockFile(scope: !7799, file: !3328, discriminator: 2)
!7837 = !DILocation(line: 0, scope: !7829, inlinedAt: !7838)
!7838 = !DILocation(line: 265, column: 28, scope: !7839, inlinedAt: !7835)
!7839 = !DILexicalBlockFile(scope: !7823, file: !3328, discriminator: 2)
!7840 = !DILocation(line: 0, scope: !7823, inlinedAt: !7841)
!7841 = !DILocation(line: 1103, column: 35, scope: !7842, inlinedAt: !7811)
!7842 = !DILexicalBlockFile(scope: !7801, file: !3328, discriminator: 4)
!7843 = !DILocation(line: 0, scope: !7829, inlinedAt: !7844)
!7844 = !DILocation(line: 265, column: 28, scope: !7845, inlinedAt: !7841)
!7845 = !DILexicalBlockFile(scope: !7823, file: !3328, discriminator: 4)
!7846 = !DILocalVariable(name: "self", arg: 1, scope: !7847, file: !538, line: 3125, type: !1453)
!7847 = distinct !DISubprogram(name: "is_empty<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8is_emptyBI_", scope: !84, file: !538, line: 3125, type: !1451, scopeLine: 3125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !127, declaration: !1454, retainedNodes: !7848)
!7848 = !{!7846}
!7849 = !DILocation(line: 3125, column: 27, scope: !7847, inlinedAt: !7850)
!7850 = !DILocation(line: 172, column: 24, scope: !7761)
!7851 = !DILocalVariable(name: "self", arg: 1, scope: !7852, file: !538, line: 3100, type: !1453)
!7852 = distinct !DISubprogram(name: "len<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE3lenBI_", scope: !84, file: !538, line: 3100, type: !1460, scopeLine: 3100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !127, declaration: !1462, retainedNodes: !7853)
!7853 = !{!7851}
!7854 = !DILocation(line: 3100, column: 22, scope: !7852, inlinedAt: !7855)
!7855 = !DILocation(line: 3126, column: 14, scope: !7847, inlinedAt: !7850)
!7856 = !DILocation(line: 3101, column: 19, scope: !7852, inlinedAt: !7855)
!7857 = !DILocation(line: 3106, column: 37, scope: !7852, inlinedAt: !7855)
!7858 = !DILocation(line: 3106, column: 18, scope: !7852, inlinedAt: !7855)
!7859 = !DILocation(line: 3126, column: 9, scope: !7847, inlinedAt: !7850)
!7860 = !DILocation(line: 172, column: 12, scope: !7761)
!7861 = !DILocation(line: 3125, column: 27, scope: !7847, inlinedAt: !7862)
!7862 = !DILocation(line: 175, column: 25, scope: !7761)
!7863 = !DILocation(line: 3100, column: 22, scope: !7852, inlinedAt: !7864)
!7864 = !DILocation(line: 3126, column: 14, scope: !7865, inlinedAt: !7862)
!7865 = !DILexicalBlockFile(scope: !7847, file: !538, discriminator: 2)
!7866 = !DILocation(line: 3101, column: 19, scope: !7852, inlinedAt: !7864)
!7867 = !DILocation(line: 3106, column: 37, scope: !7852, inlinedAt: !7864)
!7868 = !DILocation(line: 3106, column: 18, scope: !7852, inlinedAt: !7864)
!7869 = !DILocation(line: 3126, column: 9, scope: !7847, inlinedAt: !7862)
!7870 = !DILocation(line: 175, column: 12, scope: !7761)
!7871 = !DILocation(line: 0, scope: !7769)
!7872 = !DILocation(line: 0, scope: !7771)
!7873 = !DILocalVariable(name: "self", arg: 1, scope: !7874, file: !538, line: 3936, type: !1453)
!7874 = distinct !DISubprogram(name: "index<regex_syntax::hir::ClassUnicodeRange, usize, alloc::alloc::Global>", linkageName: "_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBJ_", scope: !2762, file: !538, line: 3936, type: !5509, scopeLine: 3936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !5514, retainedNodes: !7875)
!7875 = !{!7873, !7876}
!7876 = !DILocalVariable(name: "index", arg: 2, scope: !7874, file: !538, line: 3936, type: !9)
!7877 = !DILocation(line: 3936, column: 14, scope: !7874, inlinedAt: !7878)
!7878 = !DILocation(line: 193, column: 42, scope: !7777)
!7879 = !DILocalVariable(name: "self", arg: 1, scope: !7880, file: !538, line: 3854, type: !1453)
!7880 = distinct !DISubprogram(name: "deref<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefBJ_", scope: !2756, file: !538, line: 3854, type: !5491, scopeLine: 3854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !127, retainedNodes: !7881)
!7881 = !{!7879}
!7882 = !DILocation(line: 3854, column: 14, scope: !7880, inlinedAt: !7883)
!7883 = !DILocation(line: 3937, column: 23, scope: !7874, inlinedAt: !7878)
!7884 = !DILocalVariable(name: "self", arg: 1, scope: !7885, file: !538, line: 1848, type: !1453)
!7885 = distinct !DISubprogram(name: "as_slice<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8as_sliceBI_", scope: !84, file: !538, line: 1848, type: !5491, scopeLine: 1848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !127, declaration: !5498, retainedNodes: !7886)
!7886 = !{!7884}
!7887 = !DILocation(line: 1848, column: 27, scope: !7885, inlinedAt: !7888)
!7888 = !DILocation(line: 3855, column: 14, scope: !7880, inlinedAt: !7883)
!7889 = !DILocalVariable(name: "self", arg: 1, scope: !7890, file: !538, line: 1966, type: !1453)
!7890 = distinct !DISubprogram(name: "as_ptr<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE6as_ptrBI_", scope: !84, file: !538, line: 1966, type: !5548, scopeLine: 1966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !127, declaration: !5550, retainedNodes: !7891)
!7891 = !{!7889}
!7892 = !DILocation(line: 1966, column: 25, scope: !7890, inlinedAt: !7893)
!7893 = !DILocation(line: 1865, column: 76, scope: !7885, inlinedAt: !7888)
!7894 = !DILocation(line: 0, scope: !7773)
!7895 = !DILocation(line: 0, scope: !7874, inlinedAt: !7878)
!7896 = !DILocalVariable(name: "index", arg: 2, scope: !7897, file: !2815, line: 18, type: !9)
!7897 = distinct !DISubprogram(name: "index<regex_syntax::hir::ClassUnicodeRange, usize>", linkageName: "_RNvXNtNtCsj6eKBz9Db1c_4core5slice5indexSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeINtNtNtB6_3ops5index5IndexjE5indexBG_", scope: !2816, file: !2815, line: 18, type: !5558, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !5566, retainedNodes: !7898)
!7898 = !{!7899, !7896}
!7899 = !DILocalVariable(name: "self", arg: 1, scope: !7897, file: !2815, line: 18, type: !5562)
!7900 = !DILocation(line: 0, scope: !7897, inlinedAt: !7901)
!7901 = !DILocation(line: 3937, column: 9, scope: !7874, inlinedAt: !7878)
!7902 = !DILocalVariable(name: "self", arg: 1, scope: !7903, file: !2815, line: 236, type: !9)
!7903 = distinct !DISubprogram(name: "index<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RNvXs0_NtNtCsj6eKBz9Db1c_4core5slice5indexjINtB5_10SliceIndexSNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE5indexB12_", scope: !2831, file: !2815, line: 236, type: !5571, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !125, retainedNodes: !7904)
!7904 = !{!7902, !7905}
!7905 = !DILocalVariable(name: "slice", arg: 2, scope: !7903, file: !2815, line: 236, type: !5562)
!7906 = !DILocation(line: 0, scope: !7903, inlinedAt: !7907)
!7907 = !DILocation(line: 19, column: 15, scope: !7897, inlinedAt: !7901)
!7908 = !DILocation(line: 238, column: 10, scope: !7903, inlinedAt: !7907)
!7909 = !DILocalVariable(name: "self", arg: 1, scope: !7910, file: !538, line: 3068, type: !2609)
!7910 = distinct !DISubprogram(name: "clear<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE5clearBI_", scope: !84, file: !538, line: 3068, type: !2607, scopeLine: 3068, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !127, declaration: !7911, retainedNodes: !7912)
!7911 = !DISubprogram(name: "clear<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE5clearBI_", scope: !84, file: !538, line: 3068, type: !2607, scopeLine: 3068, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !127)
!7912 = !{!7909, !7913}
!7913 = !DILocalVariable(name: "elems", scope: !7914, file: !538, line: 3073, type: !7915, align: 64)
!7914 = distinct !DILexicalBlock(scope: !7910, file: !538, line: 3073, column: 9)
!7915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "*mut [regex_syntax::hir::ClassUnicodeRange]", file: !2, size: 128, align: 64, elements: !7916, templateParams: !20, identifier: "65ef291c0a81dc88a59a4a8fc2d95c4f")
!7916 = !{!7917, !7918}
!7917 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !7915, file: !2, baseType: !5496, size: 64, align: 64)
!7918 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !7915, file: !2, baseType: !9, size: 64, align: 64, offset: 64)
!7919 = !DILocation(line: 3068, column: 18, scope: !7910, inlinedAt: !7920)
!7920 = !DILocation(line: 176, column: 25, scope: !7761)
!7921 = !DILocation(line: 0, scope: !7914, inlinedAt: !7920)
!7922 = !DILocation(line: 3082, column: 13, scope: !7914, inlinedAt: !7920)
!7923 = !DILocation(line: 178, column: 13, scope: !7761)
!7924 = !DILocation(line: 0, scope: !7925)
!7925 = !DILexicalBlockFile(scope: !7761, file: !2997, discriminator: 0)
!7926 = !DILocation(line: 3936, column: 14, scope: !7874, inlinedAt: !7927)
!7927 = !DILocation(line: 193, column: 69, scope: !7777)
!7928 = !DILocation(line: 3854, column: 14, scope: !7880, inlinedAt: !7929)
!7929 = !DILocation(line: 3937, column: 23, scope: !7930, inlinedAt: !7927)
!7930 = !DILexicalBlockFile(scope: !7874, file: !538, discriminator: 2)
!7931 = !DILocation(line: 1848, column: 27, scope: !7885, inlinedAt: !7932)
!7932 = !DILocation(line: 3855, column: 14, scope: !7933, inlinedAt: !7929)
!7933 = !DILexicalBlockFile(scope: !7880, file: !538, discriminator: 2)
!7934 = !DILocation(line: 1966, column: 25, scope: !7890, inlinedAt: !7935)
!7935 = !DILocation(line: 1865, column: 76, scope: !7936, inlinedAt: !7932)
!7936 = !DILexicalBlockFile(scope: !7885, file: !538, discriminator: 2)
!7937 = !DILocation(line: 0, scope: !7775)
!7938 = !DILocation(line: 0, scope: !7874, inlinedAt: !7927)
!7939 = !DILocation(line: 0, scope: !7897, inlinedAt: !7940)
!7940 = !DILocation(line: 3937, column: 9, scope: !7930, inlinedAt: !7927)
!7941 = !DILocation(line: 0, scope: !7903, inlinedAt: !7942)
!7942 = !DILocation(line: 19, column: 15, scope: !7943, inlinedAt: !7940)
!7943 = !DILexicalBlockFile(scope: !7897, file: !2815, discriminator: 2)
!7944 = !DILocation(line: 238, column: 10, scope: !7903, inlinedAt: !7942)
!7945 = !DILocation(line: 611, column: 9, scope: !7946, inlinedAt: !7947)
!7946 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEB15_", scope: !93, file: !2842, line: 610, type: !5581, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !5584, declaration: !5583)
!7947 = !DILocation(line: 606, column: 14, scope: !7948, inlinedAt: !7950)
!7948 = !DILexicalBlockFile(scope: !7949, file: !2842, discriminator: 2)
!7949 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeEB10_", scope: !93, file: !2842, line: 605, type: !5588, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !5584, declaration: !5590)
!7950 = !DILocation(line: 296, column: 20, scope: !7951, inlinedAt: !7953)
!7951 = !DILexicalBlockFile(scope: !7952, file: !2842, discriminator: 2)
!7952 = distinct !DISubprogram(name: "ptr<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE3ptrBQ_", scope: !89, file: !2842, line: 295, type: !5594, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !127, declaration: !5597)
!7953 = !DILocation(line: 1969, column: 18, scope: !7890, inlinedAt: !7893)
!7954 = !DILocation(line: 238, column: 9, scope: !7903, inlinedAt: !7907)
!7955 = !DILocation(line: 238, column: 9, scope: !7903, inlinedAt: !7942)
!7956 = !DILocation(line: 193, column: 46, scope: !7777)
!7957 = !DILocation(line: 193, column: 31, scope: !7777)
!7958 = !DILocation(line: 1865, column: 86, scope: !7885, inlinedAt: !7959)
!7959 = !DILocation(line: 3855, column: 14, scope: !7960, inlinedAt: !7961)
!7960 = !DILexicalBlockFile(scope: !7880, file: !538, discriminator: 4)
!7961 = !DILocation(line: 3937, column: 23, scope: !7962, inlinedAt: !7963)
!7962 = !DILexicalBlockFile(scope: !7874, file: !538, discriminator: 4)
!7963 = !DILocation(line: 197, column: 31, scope: !7775)
!7964 = !DILocation(line: 193, column: 20, scope: !7777)
!7965 = !DILocation(line: 0, scope: !7777)
!7966 = !DILocalVariable(name: "value", arg: 2, scope: !7967, file: !538, line: 995, type: !30)
!7967 = distinct !DISubprogram(name: "push<regex_syntax::hir::ClassUnicodeRange, alloc::alloc::Global>", linkageName: "_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE4pushBJ_", scope: !84, file: !538, line: 995, type: !5605, scopeLine: 995, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !127, declaration: !5607, retainedNodes: !7968)
!7968 = !{!7969, !7966}
!7969 = !DILocalVariable(name: "self", arg: 1, scope: !7967, file: !538, line: 995, type: !2609)
!7970 = !DILocation(line: 0, scope: !7967, inlinedAt: !7971)
!7971 = !DILocation(line: 194, column: 29, scope: !7777)
!7972 = !DILocation(line: 0, scope: !5613, inlinedAt: !7973)
!7973 = distinct !DILocation(line: 996, column: 22, scope: !7967, inlinedAt: !7971)
!7974 = !DILocation(line: 0, scope: !5627, inlinedAt: !7975)
!7975 = distinct !DILocation(line: 1036, column: 28, scope: !5621, inlinedAt: !7973)
!7976 = !DILocation(line: 0, scope: !5635, inlinedAt: !7977)
!7977 = distinct !DILocation(line: 309, column: 20, scope: !5640, inlinedAt: !7978)
!7978 = distinct !DILocation(line: 1032, column: 28, scope: !5621, inlinedAt: !7973)
!7979 = !DILocation(line: 0, scope: !5621, inlinedAt: !7973)
!7980 = !DILocation(line: 0, scope: !5649, inlinedAt: !7981)
!7981 = distinct !DILocation(line: 1036, column: 41, scope: !5621, inlinedAt: !7973)
!7982 = !DILocation(line: 308, column: 34, scope: !5640, inlinedAt: !7978)
!7983 = !DILocation(line: 616, column: 49, scope: !5635, inlinedAt: !7977)
!7984 = !{!7985}
!7985 = distinct !{!7985, !7986, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_: argument 0"}
!7986 = distinct !{!7986, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir17ClassUnicodeRangeE8push_mutBJ_"}
!7987 = !DILocation(line: 1032, column: 12, scope: !5621, inlinedAt: !7973)
!7988 = !DILocation(line: 1033, column: 22, scope: !5621, inlinedAt: !7973)
!7989 = !DILocation(line: 1032, column: 9, scope: !5621, inlinedAt: !7973)
!7990 = !DILocation(line: 611, column: 9, scope: !5662, inlinedAt: !7991)
!7991 = distinct !DILocation(line: 606, column: 14, scope: !5664, inlinedAt: !7992)
!7992 = distinct !DILocation(line: 296, column: 20, scope: !5666, inlinedAt: !7993)
!7993 = distinct !DILocation(line: 2053, column: 18, scope: !5627, inlinedAt: !7975)
!7994 = !DILocation(line: 970, column: 18, scope: !5649, inlinedAt: !7981)
!7995 = !DILocation(line: 0, scope: !5623, inlinedAt: !7973)
!7996 = !DILocation(line: 0, scope: !5672, inlinedAt: !7997)
!7997 = distinct !DILocation(line: 1037, column: 13, scope: !5623, inlinedAt: !7973)
!7998 = !DILocation(line: 1963, column: 41, scope: !5672, inlinedAt: !7997)
!7999 = !DILocation(line: 1038, column: 13, scope: !5623, inlinedAt: !7973)
!8000 = !DILocation(line: 193, column: 13, scope: !7775)
!8001 = !DILocation(line: 3936, column: 14, scope: !7874, inlinedAt: !7963)
!8002 = !DILocation(line: 3854, column: 14, scope: !7880, inlinedAt: !7961)
!8003 = !DILocation(line: 1848, column: 27, scope: !7885, inlinedAt: !7959)
!8004 = !DILocation(line: 1966, column: 25, scope: !7890, inlinedAt: !8005)
!8005 = !DILocation(line: 1865, column: 76, scope: !8006, inlinedAt: !7959)
!8006 = !DILexicalBlockFile(scope: !7885, file: !538, discriminator: 4)
!8007 = !DILocation(line: 0, scope: !7874, inlinedAt: !7963)
!8008 = !DILocation(line: 0, scope: !7897, inlinedAt: !8009)
!8009 = !DILocation(line: 3937, column: 9, scope: !7962, inlinedAt: !7963)
!8010 = !DILocation(line: 0, scope: !7903, inlinedAt: !8011)
!8011 = !DILocation(line: 19, column: 15, scope: !8012, inlinedAt: !8009)
!8012 = !DILexicalBlockFile(scope: !7897, file: !2815, discriminator: 4)
!8013 = !DILocation(line: 238, column: 10, scope: !7903, inlinedAt: !8011)
!8014 = !DILocation(line: 611, column: 9, scope: !7946, inlinedAt: !8015)
!8015 = !DILocation(line: 606, column: 14, scope: !8016, inlinedAt: !8017)
!8016 = !DILexicalBlockFile(scope: !7949, file: !2842, discriminator: 6)
!8017 = !DILocation(line: 296, column: 20, scope: !8018, inlinedAt: !8019)
!8018 = !DILexicalBlockFile(scope: !7952, file: !2842, discriminator: 6)
!8019 = !DILocation(line: 1969, column: 18, scope: !8020, inlinedAt: !8005)
!8020 = !DILexicalBlockFile(scope: !7890, file: !538, discriminator: 4)
!8021 = !DILocation(line: 238, column: 9, scope: !7903, inlinedAt: !8011)
!8022 = !DILocation(line: 197, column: 35, scope: !7775)
!8023 = !DILocation(line: 3936, column: 14, scope: !7874, inlinedAt: !8024)
!8024 = !DILocation(line: 197, column: 57, scope: !7775)
!8025 = !DILocation(line: 3854, column: 14, scope: !7880, inlinedAt: !8026)
!8026 = !DILocation(line: 3937, column: 23, scope: !8027, inlinedAt: !8024)
!8027 = !DILexicalBlockFile(scope: !7874, file: !538, discriminator: 6)
!8028 = !DILocation(line: 1848, column: 27, scope: !7885, inlinedAt: !8029)
!8029 = !DILocation(line: 3855, column: 14, scope: !8030, inlinedAt: !8026)
!8030 = !DILexicalBlockFile(scope: !7880, file: !538, discriminator: 6)
!8031 = !DILocation(line: 1966, column: 25, scope: !7890, inlinedAt: !8032)
!8032 = !DILocation(line: 1865, column: 76, scope: !8033, inlinedAt: !8029)
!8033 = !DILexicalBlockFile(scope: !7885, file: !538, discriminator: 6)
!8034 = !DILocation(line: 0, scope: !7874, inlinedAt: !8024)
!8035 = !DILocation(line: 0, scope: !7897, inlinedAt: !8036)
!8036 = !DILocation(line: 3937, column: 9, scope: !8027, inlinedAt: !8024)
!8037 = !DILocation(line: 0, scope: !7903, inlinedAt: !8038)
!8038 = !DILocation(line: 19, column: 15, scope: !8039, inlinedAt: !8036)
!8039 = !DILexicalBlockFile(scope: !7897, file: !2815, discriminator: 6)
!8040 = !DILocation(line: 197, column: 61, scope: !7775)
!8041 = !DILocation(line: 2192, column: 50, scope: !5452, inlinedAt: !7784)
!8042 = !DILocation(line: 197, column: 17, scope: !7775)
!8043 = !DILocation(line: 2192, column: 19, scope: !7787, inlinedAt: !8044)
!8044 = !DILocation(line: 1100, column: 12, scope: !8045, inlinedAt: !7811)
!8045 = !DILexicalBlockFile(scope: !7793, file: !3328, discriminator: 4)
!8046 = !DILocation(line: 2192, column: 26, scope: !7787, inlinedAt: !8044)
!8047 = !DILocation(line: 2192, column: 50, scope: !7787, inlinedAt: !8044)
!8048 = !DILocation(line: 1100, column: 12, scope: !7793, inlinedAt: !7811)
!8049 = !DILocation(line: 207, column: 9, scope: !7775)
!8050 = !DILocation(line: 207, column: 21, scope: !7775)
!8051 = !DILocation(line: 0, scope: !5519, inlinedAt: !8052)
!8052 = distinct !DILocation(line: 207, column: 39, scope: !7775)
!8053 = !DILocation(line: 847, column: 1, scope: !5519, inlinedAt: !8052)
!8054 = !DILocation(line: 207, column: 39, scope: !7775)
!8055 = !DILocation(line: 208, column: 23, scope: !7775)
!8056 = !DILocation(line: 208, column: 9, scope: !7775)
!8057 = !DILocation(line: 209, column: 6, scope: !7761)
!8058 = !DILocation(line: 0, scope: !7801, inlinedAt: !7811)
!8059 = !DILocation(line: 1013, column: 17, scope: !7829, inlinedAt: !7844)
!8060 = !DILocation(line: 1103, column: 13, scope: !7801, inlinedAt: !7811)
!8061 = !DILocation(line: 0, scope: !7782)
!8062 = !DILocation(line: 203, column: 28, scope: !7782)
!8063 = distinct !DISubprogram(name: "fmt<regex_syntax::hir::interval::IntervalSet<regex_syntax::hir::ClassBytesRange>>", linkageName: "_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtNtCs3roNzt6HBWW_12regex_syntax3hir8interval11IntervalSetNtBB_15ClassBytesRangeENtB6_5Debug3fmtBD_", scope: !8065, file: !8064, line: 2887, type: !8066, scopeLine: 2887, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !2634, retainedNodes: !8069)
!8064 = !DIFile(filename: "library/core/src/fmt/mod.rs", directory: "/rustc/67854e511de21d881bb16426996cd4259d44aa2e", checksumkind: CSK_MD5, checksum: "05ae4d1b33199de888249ef022c590ca")
!8065 = !DINamespace(name: "{impl#80}", scope: !463)
!8066 = !DISubroutineType(types: !8067)
!8067 = !{!483, !8068, !500}
!8068 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&regex_syntax::hir::interval::IntervalSet<regex_syntax::hir::ClassBytesRange>", baseType: !2669, size: 64, align: 64, dwarfAddressSpace: 0)
!8069 = !{!8070, !8071}
!8070 = !DILocalVariable(name: "self", arg: 1, scope: !8063, file: !8064, line: 2887, type: !8068)
!8071 = !DILocalVariable(name: "f", arg: 2, scope: !8063, file: !8064, line: 2887, type: !500)
!8072 = !DILocation(line: 0, scope: !8063)
!8073 = !DILocation(line: 2887, column: 71, scope: !8063)
!8074 = !{i64 8}
!8075 = !DILocalVariable(name: "self", arg: 1, scope: !8076, file: !367, line: 33, type: !2669)
!8076 = distinct !DISubprogram(name: "fmt<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvXs5_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtB9_", scope: !8077, file: !367, line: 33, type: !8078, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !156, retainedNodes: !8080)
!8077 = !DINamespace(name: "{impl#7}", scope: !81)
!8078 = !DISubroutineType(types: !8079)
!8079 = !{!483, !2669, !500}
!8080 = !{!8075, !8081}
!8081 = !DILocalVariable(name: "f", arg: 2, scope: !8076, file: !367, line: 33, type: !500)
!8082 = !DILocation(line: 0, scope: !8076, inlinedAt: !8083)
!8083 = distinct !DILocation(line: 2887, column: 62, scope: !8063)
!8084 = !DILocation(line: 53, column: 5, scope: !8076, inlinedAt: !8083)
!8085 = !{!8086, !8088}
!8086 = distinct !{!8086, !8087, !"_RNvXs5_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtB9_: argument 0"}
!8087 = distinct !{!8087, !"_RNvXs5_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtB9_"}
!8088 = distinct !{!8088, !8087, !"_RNvXs5_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_15ClassBytesRangeENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtB9_: argument 1"}
!8089 = !DILocation(line: 33, column: 17, scope: !8076, inlinedAt: !8083)
!8090 = !DILocation(line: 33, column: 21, scope: !8076, inlinedAt: !8083)
!8091 = !DILocation(line: 2887, column: 84, scope: !8063)
!8092 = distinct !DISubprogram(name: "fmt<regex_syntax::hir::interval::IntervalSet<regex_syntax::hir::ClassUnicodeRange>>", linkageName: "_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtNtCs3roNzt6HBWW_12regex_syntax3hir8interval11IntervalSetNtBB_17ClassUnicodeRangeENtB6_5Debug3fmtBD_", scope: !8065, file: !8064, line: 2887, type: !8093, scopeLine: 2887, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !2653, retainedNodes: !8096)
!8093 = !DISubroutineType(types: !8094)
!8094 = !{!483, !8095, !500}
!8095 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&regex_syntax::hir::interval::IntervalSet<regex_syntax::hir::ClassUnicodeRange>", baseType: !5418, size: 64, align: 64, dwarfAddressSpace: 0)
!8096 = !{!8097, !8098}
!8097 = !DILocalVariable(name: "self", arg: 1, scope: !8092, file: !8064, line: 2887, type: !8095)
!8098 = !DILocalVariable(name: "f", arg: 2, scope: !8092, file: !8064, line: 2887, type: !500)
!8099 = !DILocation(line: 0, scope: !8092)
!8100 = !DILocation(line: 2887, column: 71, scope: !8092)
!8101 = !DILocalVariable(name: "self", arg: 1, scope: !8102, file: !367, line: 33, type: !5418)
!8102 = distinct !DISubprogram(name: "fmt<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RNvXs5_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtB9_", scope: !8077, file: !367, line: 33, type: !8103, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !131, retainedNodes: !8105)
!8103 = !DISubroutineType(types: !8104)
!8104 = !{!483, !5418, !500}
!8105 = !{!8101, !8106}
!8106 = !DILocalVariable(name: "f", arg: 2, scope: !8102, file: !367, line: 33, type: !500)
!8107 = !DILocation(line: 0, scope: !8102, inlinedAt: !8108)
!8108 = distinct !DILocation(line: 2887, column: 62, scope: !8092)
!8109 = !DILocation(line: 53, column: 5, scope: !8102, inlinedAt: !8108)
!8110 = !{!8111, !8113}
!8111 = distinct !{!8111, !8112, !"_RNvXs5_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtB9_: argument 0"}
!8112 = distinct !{!8112, !"_RNvXs5_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtB9_"}
!8113 = distinct !{!8113, !8112, !"_RNvXs5_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB5_11IntervalSetNtB7_17ClassUnicodeRangeENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtB9_: argument 1"}
!8114 = !DILocation(line: 33, column: 17, scope: !8102, inlinedAt: !8108)
!8115 = !DILocation(line: 33, column: 21, scope: !8102, inlinedAt: !8108)
!8116 = !DILocation(line: 2887, column: 84, scope: !8092)
!8117 = !DILocation(line: 0, scope: !4822)
!8118 = !DILocation(line: 0, scope: !4830, inlinedAt: !8119)
!8119 = !DILocation(line: 561, column: 14, scope: !4822)
!8120 = !DILocation(line: 1092, column: 16, scope: !4830, inlinedAt: !8119)
!8121 = !DILocation(line: 1096, column: 31, scope: !4830, inlinedAt: !8119)
!8122 = !DILocation(line: 0, scope: !4851, inlinedAt: !8123)
!8123 = !DILocation(line: 561, column: 29, scope: !4822)
!8124 = !DILocation(line: 562, column: 6, scope: !4822)
!8125 = !DILocation(line: 1014, column: 21, scope: !4851, inlinedAt: !8123)
!8126 = !DILocation(line: 0, scope: !4980)
!8127 = !DILocation(line: 0, scope: !4985, inlinedAt: !8128)
!8128 = !DILocation(line: 558, column: 14, scope: !4980)
!8129 = !DILocation(line: 938, column: 37, scope: !4985, inlinedAt: !8128)
!8130 = !DILocation(line: 0, scope: !4991, inlinedAt: !8131)
!8131 = !DILocation(line: 938, column: 16, scope: !4985, inlinedAt: !8128)
!8132 = !DILocation(line: 478, column: 8, scope: !4991, inlinedAt: !8131)
!8133 = !DILocation(line: 0, scope: !4997, inlinedAt: !8134)
!8134 = !DILocation(line: 558, column: 29, scope: !4980)
!8135 = !DILocation(line: 559, column: 6, scope: !4980)
!8136 = !DILocation(line: 1014, column: 21, scope: !4997, inlinedAt: !8134)
!8137 = !DILocation(line: 0, scope: !7386)
!8138 = !DILocation(line: 0, scope: !7385)
!8139 = !DILocation(line: 0, scope: !7377, inlinedAt: !8140)
!8140 = !DILocation(line: 586, column: 46, scope: !7385)
!8141 = !DILocation(line: 584, column: 9, scope: !7386)
!8142 = !DILocation(line: 588, column: 6, scope: !7386)
!8143 = !DILocation(line: 1096, column: 31, scope: !7377, inlinedAt: !8140)
!8144 = !DILocation(line: 0, scope: !7395, inlinedAt: !8145)
!8145 = !DILocation(line: 586, column: 61, scope: !7385)
!8146 = !DILocation(line: 0, scope: !7405, inlinedAt: !8147)
!8147 = !DILocation(line: 586, column: 18, scope: !7385)
!8148 = !DILocation(line: 0, scope: !7425, inlinedAt: !8149)
!8149 = !DILocation(line: 133, column: 5, scope: !7405, inlinedAt: !8147)
!8150 = !DILocation(line: 0, scope: !7434, inlinedAt: !8151)
!8151 = !DILocation(line: 15, column: 11, scope: !7425, inlinedAt: !8149)
!8152 = !DILocation(line: 293, column: 8, scope: !7434, inlinedAt: !8151)
!8153 = !DILocation(line: 1014, column: 21, scope: !7395, inlinedAt: !8145)
!8154 = !DILocation(line: 0, scope: !7460, inlinedAt: !8155)
!8155 = !DILocation(line: 586, column: 71, scope: !7385)
!8156 = !DILocation(line: 1014, column: 21, scope: !7460, inlinedAt: !8155)
!8157 = !DILocation(line: 0, scope: !7591)
!8158 = !DILocation(line: 0, scope: !7594)
!8159 = !DILocation(line: 0, scope: !7599, inlinedAt: !8160)
!8160 = !DILocation(line: 579, column: 46, scope: !7594)
!8161 = !DILocation(line: 577, column: 9, scope: !7591)
!8162 = !DILocation(line: 938, column: 37, scope: !7599, inlinedAt: !8160)
!8163 = !DILocation(line: 0, scope: !7607, inlinedAt: !8164)
!8164 = !DILocation(line: 579, column: 18, scope: !7594)
!8165 = !DILocation(line: 0, scope: !7612, inlinedAt: !8166)
!8166 = !DILocation(line: 133, column: 5, scope: !7607, inlinedAt: !8164)
!8167 = !DILocation(line: 0, scope: !7619, inlinedAt: !8168)
!8168 = !DILocation(line: 15, column: 11, scope: !7612, inlinedAt: !8166)
!8169 = !DILocation(line: 293, column: 8, scope: !7619, inlinedAt: !8168)
!8170 = !DILocation(line: 581, column: 6, scope: !7591)
!8171 = !DILocation(line: 297, column: 21, scope: !7619, inlinedAt: !8168)
!8172 = !DILocation(line: 0, scope: !7625, inlinedAt: !8173)
!8173 = !DILocation(line: 579, column: 71, scope: !7594)
!8174 = !DILocation(line: 579, column: 78, scope: !7591)
!8175 = !DILocation(line: 1014, column: 21, scope: !7625, inlinedAt: !8173)
!8176 = distinct !DISubprogram(name: "eq<regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvXs_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB4_11IntervalSetNtB6_15ClassBytesRangeENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB8_", scope: !8177, file: !367, line: 62, type: !8178, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !156, retainedNodes: !8180)
!8177 = !DINamespace(name: "{impl#1}", scope: !81)
!8178 = !DISubroutineType(types: !8179)
!8179 = !{!130, !2669, !2669}
!8180 = !{!8181, !8182}
!8181 = !DILocalVariable(name: "self", arg: 1, scope: !8176, file: !367, line: 62, type: !2669)
!8182 = !DILocalVariable(name: "other", arg: 2, scope: !8176, file: !367, line: 62, type: !2669)
!8183 = !DILocation(line: 0, scope: !8176)
!8184 = !DILocalVariable(name: "index", scope: !8185, file: !538, line: 3936, type: !3941, align: 8)
!8185 = distinct !DISubprogram(name: "index<regex_syntax::hir::ClassBytesRange, core::ops::range::RangeFull, alloc::alloc::Global>", linkageName: "_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexNtNtB1C_5range9RangeFullE5indexBJ_", scope: !2762, file: !538, line: 3936, type: !3939, scopeLine: 3936, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !3944, retainedNodes: !8186)
!8186 = !{!8187, !8184}
!8187 = !DILocalVariable(name: "self", arg: 1, scope: !8185, file: !538, line: 3936, type: !577)
!8188 = !DILocation(line: 3936, column: 21, scope: !8185, inlinedAt: !8189)
!8189 = !DILocation(line: 15, column: 54, scope: !8190, inlinedAt: !8194)
!8190 = distinct !DISubprogram(name: "eq<regex_syntax::hir::ClassBytesRange, regex_syntax::hir::ClassBytesRange, alloc::alloc::Global, alloc::alloc::Global>", linkageName: "_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec10partial_eqINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqBU_", scope: !3950, file: !3949, line: 15, type: !3952, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !3957, retainedNodes: !8191)
!8191 = !{!8192, !8193}
!8192 = !DILocalVariable(name: "self", arg: 1, scope: !8190, file: !3949, line: 15, type: !577)
!8193 = !DILocalVariable(name: "other", arg: 2, scope: !8190, file: !3949, line: 15, type: !577)
!8194 = !DILocation(line: 63, column: 21, scope: !8176)
!8195 = !DILocation(line: 3936, column: 21, scope: !8185, inlinedAt: !8196)
!8196 = !DILocation(line: 15, column: 67, scope: !8190, inlinedAt: !8194)
!8197 = !DILocation(line: 15, column: 19, scope: !8190, inlinedAt: !8194)
!8198 = !DILocation(line: 3936, column: 14, scope: !8185, inlinedAt: !8189)
!8199 = !DILocalVariable(name: "self", arg: 1, scope: !8200, file: !538, line: 3854, type: !577)
!8200 = distinct !DISubprogram(name: "deref<regex_syntax::hir::ClassBytesRange, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeENtNtNtCsj6eKBz9Db1c_4core3ops5deref5Deref5derefBJ_", scope: !2756, file: !538, line: 3854, type: !2743, scopeLine: 3854, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !153, retainedNodes: !8201)
!8201 = !{!8199}
!8202 = !DILocation(line: 3854, column: 14, scope: !8200, inlinedAt: !8203)
!8203 = !DILocation(line: 3937, column: 23, scope: !8185, inlinedAt: !8189)
!8204 = !DILocalVariable(name: "self", arg: 1, scope: !8205, file: !538, line: 1848, type: !577)
!8205 = distinct !DISubprogram(name: "as_slice<regex_syntax::hir::ClassBytesRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE8as_sliceBI_", scope: !143, file: !538, line: 1848, type: !2743, scopeLine: 1848, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !153, declaration: !2750, retainedNodes: !8206)
!8206 = !{!8204}
!8207 = !DILocation(line: 1848, column: 27, scope: !8205, inlinedAt: !8208)
!8208 = !DILocation(line: 3855, column: 14, scope: !8200, inlinedAt: !8203)
!8209 = !DILocalVariable(name: "self", arg: 1, scope: !8210, file: !538, line: 1966, type: !577)
!8210 = distinct !DISubprogram(name: "as_ptr<regex_syntax::hir::ClassBytesRange, alloc::alloc::Global>", linkageName: "_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE6as_ptrBI_", scope: !143, file: !538, line: 1966, type: !2805, scopeLine: 1966, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !153, declaration: !2807, retainedNodes: !8211)
!8211 = !{!8209}
!8212 = !DILocation(line: 1966, column: 25, scope: !8210, inlinedAt: !8213)
!8213 = !DILocation(line: 1865, column: 76, scope: !8205, inlinedAt: !8208)
!8214 = !DILocation(line: 15, column: 26, scope: !8190, inlinedAt: !8194)
!8215 = !DILocation(line: 3936, column: 14, scope: !8185, inlinedAt: !8196)
!8216 = !DILocation(line: 3854, column: 14, scope: !8200, inlinedAt: !8217)
!8217 = !DILocation(line: 3937, column: 23, scope: !8218, inlinedAt: !8196)
!8218 = !DILexicalBlockFile(scope: !8185, file: !538, discriminator: 2)
!8219 = !DILocation(line: 1848, column: 27, scope: !8205, inlinedAt: !8220)
!8220 = !DILocation(line: 3855, column: 14, scope: !8221, inlinedAt: !8217)
!8221 = !DILexicalBlockFile(scope: !8200, file: !538, discriminator: 2)
!8222 = !DILocation(line: 1966, column: 25, scope: !8210, inlinedAt: !8223)
!8223 = !DILocation(line: 1865, column: 76, scope: !8224, inlinedAt: !8220)
!8224 = !DILexicalBlockFile(scope: !8205, file: !538, discriminator: 2)
!8225 = !DILocation(line: 1865, column: 86, scope: !8205, inlinedAt: !8208)
!8226 = !DILocalVariable(name: "len", scope: !8227, file: !4010, line: 20, type: !9, align: 64)
!8227 = distinct !DILexicalBlock(scope: !8228, file: !4010, line: 20, column: 9)
!8228 = distinct !DISubprogram(name: "eq<regex_syntax::hir::ClassBytesRange, regex_syntax::hir::ClassBytesRange>", linkageName: "_RNvXNtNtCsj6eKBz9Db1c_4core5slice3cmpSNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeNtNtB6_3cmp9PartialEq2eqBE_", scope: !4012, file: !4010, line: 19, type: !4014, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !4019, retainedNodes: !8229)
!8229 = !{!8230, !8231, !8226}
!8230 = !DILocalVariable(name: "self", arg: 1, scope: !8228, file: !4010, line: 19, type: !2822)
!8231 = !DILocalVariable(name: "other", arg: 2, scope: !8228, file: !4010, line: 19, type: !2822)
!8232 = !DILocation(line: 0, scope: !8227, inlinedAt: !8233)
!8233 = !DILocation(line: 15, column: 50, scope: !8190, inlinedAt: !8194)
!8234 = !DILocation(line: 0, scope: !8228, inlinedAt: !8233)
!8235 = !DILocation(line: 1865, column: 86, scope: !8205, inlinedAt: !8220)
!8236 = !DILocation(line: 21, column: 12, scope: !8227, inlinedAt: !8233)
!8237 = !DILocation(line: 611, column: 9, scope: !8238, inlinedAt: !8239)
!8238 = distinct !DISubprogram(name: "non_null<alloc::alloc::Global, regex_syntax::hir::ClassBytesRange>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner8non_nullNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEB15_", scope: !93, file: !2842, line: 610, type: !2843, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !2847, declaration: !2846)
!8239 = !DILocation(line: 606, column: 14, scope: !8240, inlinedAt: !8242)
!8240 = !DILexicalBlockFile(scope: !8241, file: !2842, discriminator: 2)
!8241 = distinct !DISubprogram(name: "ptr<alloc::alloc::Global, regex_syntax::hir::ClassBytesRange>", linkageName: "_RINvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB6_11RawVecInner3ptrNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeEB10_", scope: !93, file: !2842, line: 605, type: !2851, scopeLine: 605, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !2847, declaration: !2853)
!8242 = !DILocation(line: 296, column: 20, scope: !8243, inlinedAt: !8245)
!8243 = !DILexicalBlockFile(scope: !8244, file: !2842, discriminator: 2)
!8244 = distinct !DISubprogram(name: "ptr<regex_syntax::hir::ClassBytesRange, alloc::alloc::Global>", linkageName: "_RNvMs0_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCs3roNzt6HBWW_12regex_syntax3hir15ClassBytesRangeE3ptrBQ_", scope: !146, file: !2842, line: 295, type: !2857, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !153, declaration: !2860)
!8245 = !DILocation(line: 1969, column: 18, scope: !8246, inlinedAt: !8223)
!8246 = !DILexicalBlockFile(scope: !8210, file: !538, discriminator: 2)
!8247 = !DILocation(line: 611, column: 9, scope: !8238, inlinedAt: !8248)
!8248 = !DILocation(line: 606, column: 14, scope: !8241, inlinedAt: !8249)
!8249 = !DILocation(line: 296, column: 20, scope: !8244, inlinedAt: !8250)
!8250 = !DILocation(line: 1969, column: 18, scope: !8210, inlinedAt: !8213)
!8251 = !DILocation(line: 24, column: 22, scope: !8227, inlinedAt: !8233)
!8252 = !DILocation(line: 64, column: 6, scope: !8176)
!8253 = distinct !DISubprogram(name: "eq<regex_syntax::hir::ClassUnicodeRange>", linkageName: "_RNvXs_NtNtCs3roNzt6HBWW_12regex_syntax3hir8intervalINtB4_11IntervalSetNtB6_17ClassUnicodeRangeENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB8_", scope: !8177, file: !367, line: 62, type: !8254, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !355, templateParams: !131, retainedNodes: !8256)
!8254 = !DISubroutineType(types: !8255)
!8255 = !{!130, !5418, !5418}
!8256 = !{!8257, !8258}
!8257 = !DILocalVariable(name: "self", arg: 1, scope: !8253, file: !367, line: 62, type: !5418)
!8258 = !DILocalVariable(name: "other", arg: 2, scope: !8253, file: !367, line: 62, type: !5418)
!8259 = !DILocation(line: 0, scope: !8253)
!8260 = !DILocalVariable(name: "index", scope: !8261, file: !538, line: 3936, type: !3941, align: 8)
end_hunk_3
