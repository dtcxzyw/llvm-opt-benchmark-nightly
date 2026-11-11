Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/anstream-27f4ccabf1a3a2f1.anstream.2ab96d6329211188-cgu.0?download=true
inline.NumInlined: 162
inline.NumDeleted: 100
begin_hunk_0_@_RNvXs1_NtNtCs3Fq4IkdSWsS_8anstream7adapter6winconNtB5_13WinconCaptureNtCshSYD73oCB2Y_13anstyle_parse7Perform12csi_dispatch:bb.a
  %brmerge.i.i = or i1 %i.x, %.not9.i.i, !dbg !5120
  br i1 %brmerge.i.i, label %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, label %bb.g, !dbg !5120

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq i8 %.sroa.0.sroa.48.0.lcssa, %.sroa.0.sroa.48.0.extract.trunc1645, !dbg !5121
  %i.z = icmp eq i8 %.sroa.0.sroa.49.0.lcssa, %.sroa.0.sroa.49.0.extract.trunc1761, !dbg !5121
  %or.cond1844 = select i1 %i.y, i1 %i.z, i1 false, !dbg !5121
  br i1 %or.cond1844, label %bb.h, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !5121

_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.f
  %.mux.i.i = and i1 %i.x, %i.w, !dbg !5120
  br i1 %.mux.i.i, label %bb.h, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !5118

bb.h:                                             ; preds = %bb.g, %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %bb.e
    #dbg_value(ptr undef, !4796, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !4667)
    #dbg_value(ptr %i.c, !4800, !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value), !4668)
  %.not13.i = icmp eq i8 %.sroa.50.sroa.0.0.lcssa, -1, !dbg !5122
  %i.aa = icmp ne i8 %.sroa.50.sroa.0.0.extract.trunc, -1, !dbg !5122 ; 2 uses
  br i1 %.not13.i, label %bb.j, label %bb.i, !dbg !5123

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr undef, !4804, !DIExpression(), !4669)
    #dbg_value(ptr %.sroa.50.0..sroa_idx, !4805, !DIExpression(), !4669)
    #dbg_value(ptr undef, !4810, !DIExpression(), !4671)
    #dbg_value(ptr %.sroa.50.0..sroa_idx, !4814, !DIExpression(), !4671)
    #dbg_value(i8 %.sroa.50.sroa.0.0.lcssa, !4815, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4672)
    #dbg_value(i8 %.sroa.50.sroa.0.0.extract.trunc, !4816, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4673)
  %i.ab = icmp eq i8 %.sroa.50.sroa.0.0.lcssa, %.sroa.50.sroa.0.0.extract.trunc
  %or.cond1859 = select i1 %i.aa, i1 %i.ab, i1 false, !dbg !5123
  br i1 %or.cond1859, label %bb.k, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !5123

bb.j:                                             ; preds = %bb.h
  br i1 %i.aa, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, label %bb.m, !dbg !5124

bb.k:                                             ; preds = %bb.i
    #dbg_value(i8 %.sroa.50.sroa.0.0.lcssa, !4815, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4672)
  %i.ac = icmp eq i8 %.sroa.50.sroa.45.0.lcssa, %.sroa.50.sroa.45.0.extract.trunc, !dbg !5125 ; 2 uses
  %i.ad = icmp ne i8 %.sroa.50.sroa.0.0.extract.trunc, 2, !dbg !5126 ; 2 uses
  %.not9.i18.i = xor i1 %i.ac, true, !dbg !5126
  %brmerge.i19.i = or i1 %i.ad, %.not9.i18.i, !dbg !5126
  br i1 %brmerge.i19.i, label %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit21.i, label %bb.l, !dbg !5126

bb.l:                                             ; preds = %bb.k
  %i.ae = icmp eq i8 %.sroa.50.sroa.48.0.lcssa, %.sroa.50.sroa.48.0.extract.trunc, !dbg !5127
  %i.af = icmp eq i8 %.sroa.50.sroa.49.0.lcssa, %.sroa.50.sroa.49.0.extract.trunc, !dbg !5127
  %or.cond1847 = select i1 %i.ae, i1 %i.af, i1 false, !dbg !5127
  br i1 %or.cond1847, label %bb.m, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !5127

_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit21.i: ; preds = %bb.k
  %.mux.i20.i = and i1 %i.ad, %i.ac, !dbg !5126
  br i1 %.mux.i20.i, label %bb.m, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !5124

bb.m:                                             ; preds = %bb.l, %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit21.i, %bb.j
    #dbg_value(ptr undef, !4796, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4677)
    #dbg_value(ptr %i.c, !4800, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !4678)
  %.not15.i = icmp eq i8 %.sroa.72.sroa.0.0.lcssa, -1, !dbg !5128
  %i.ag = icmp eq i8 %.sroa.72.sroa.0.0.extract.trunc, -1, !dbg !5128 ; 2 uses
  br i1 %.not15.i, label %bb.o, label %bb.n, !dbg !5129

bb.n:                                             ; preds = %bb.m
    #dbg_value(ptr undef, !4806, !DIExpression(), !4679)
    #dbg_value(ptr %.sroa.72.0..sroa_idx, !4807, !DIExpression(), !4679)
    #dbg_value(ptr undef, !4810, !DIExpression(), !4681)
    #dbg_value(ptr %.sroa.72.0..sroa_idx, !4814, !DIExpression(), !4681)
    #dbg_value(i8 %.sroa.72.sroa.0.0.lcssa, !4815, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4682)
    #dbg_value(i8 %.sroa.72.sroa.0.0.extract.trunc, !4816, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4683)
  %i.ah = icmp ne i8 %.sroa.72.sroa.0.0.lcssa, %.sroa.72.sroa.0.0.extract.trunc
  %or.cond1862.not = select i1 %i.ag, i1 true, i1 %i.ah, !dbg !5129
  br i1 %or.cond1862.not, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, label %bb.p, !dbg !5129

bb.o:                                             ; preds = %bb.m
  %.old = icmp eq i16 %.sroa.89.0.lcssa, %.sroa.89.0.copyload
  %or.cond1852 = select i1 %i.ag, i1 %.old, i1 false, !dbg !5130
  br i1 %or.cond1852, label %bb.r, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !5130

bb.p:                                             ; preds = %bb.n
    #dbg_value(i8 %.sroa.72.sroa.0.0.lcssa, !4815, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !4682)
  %i.ai = icmp eq i8 %.sroa.72.sroa.48.0.lcssa, %.sroa.72.sroa.48.0.extract.trunc, !dbg !5131 ; 2 uses
  %i.aj = icmp ne i8 %.sroa.72.sroa.0.0.extract.trunc, 2, !dbg !5132 ; 2 uses
  %.not9.i23.i = xor i1 %i.ai, true, !dbg !5132
  %brmerge.i24.i = or i1 %i.aj, %.not9.i23.i, !dbg !5132
  br i1 %brmerge.i24.i, label %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit26.i, label %bb.q, !dbg !5132

bb.q:                                             ; preds = %bb.p
  %i.ak = icmp eq i8 %.sroa.72.sroa.49.0.lcssa, %.sroa.72.sroa.49.0.extract.trunc, !dbg !5133
  %i.al = icmp eq i8 %.sroa.72.sroa.50.0.lcssa, %.sroa.72.sroa.50.0.extract.trunc, !dbg !5133
  %or.cond1850 = select i1 %i.ak, i1 %i.al, i1 false, !dbg !5133
  %i.am = icmp eq i16 %.sroa.89.0.lcssa, %.sroa.89.0.copyload
  %or.cond1851 = select i1 %or.cond1850, i1 %i.am, i1 false, !dbg !5133
  br i1 %or.cond1851, label %bb.r, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !5133

_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit26.i: ; preds = %bb.p
  %.mux.i25.i = and i1 %i.aj, %i.ai, !dbg !5132
  %.old.old = icmp eq i16 %.sroa.89.0.lcssa, %.sroa.89.0.copyload
  %or.cond1853 = select i1 %.mux.i25.i, i1 %.old.old, i1 false, !dbg !5130
  br i1 %or.cond1853, label %bb.r, label %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread, !dbg !5130

_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread: ; preds = %bb.q, %bb.l, %bb.g, %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit26.i, %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit21.i, %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i, %bb.e, %bb.j, %bb.o, %bb.d, %bb.i, %bb.n
    #dbg_value(ptr %0, !5034, !DIExpression(), !5040)
    #dbg_value(ptr %0, !5041, !DIExpression(), !5044)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5134
  %i.ao = load i64, ptr %i.an, align 8, !dbg !5134, !noundef !621 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, -1, !dbg !5135
  call void @llvm.assume(i1 %i.ap), !dbg !5136
  %i.aq = icmp eq i64 %i.ao, 0, !dbg !5137
  br i1 %i.aq, label %bb.r, label %bb.s, !dbg !5138

bb.r:                                             ; preds = %_RNvXsi_NtCs2Skuq3AeSHR_7anstyle5colorNtB5_5ColorNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit26.i, %bb.o, %bb.q, %bb.s, %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread
  %.sroa.0.sroa.49.0.insert.ext1762 = zext i8 %.sroa.0.sroa.49.0.lcssa to i32, !dbg !5139
  %.sroa.0.sroa.49.0.insert.shift1763 = shl nuw i32 %.sroa.0.sroa.49.0.insert.ext1762, 24, !dbg !5139
  %.sroa.0.sroa.48.0.insert.ext1646 = zext i8 %.sroa.0.sroa.48.0.lcssa to i32, !dbg !5139
  %.sroa.0.sroa.48.0.insert.shift1647 = shl nuw nsw i32 %.sroa.0.sroa.48.0.insert.ext1646, 16, !dbg !5139
  %.sroa.0.sroa.48.0.insert.insert1649 = or disjoint i32 %.sroa.0.sroa.48.0.insert.shift1647, %.sroa.0.sroa.49.0.insert.shift1763, !dbg !5139
  %.sroa.0.sroa.45.0.insert.ext1531 = zext i8 %.sroa.0.sroa.45.0.lcssa to i32, !dbg !5139
  %.sroa.0.sroa.45.0.insert.shift1532 = shl nuw nsw i32 %.sroa.0.sroa.45.0.insert.ext1531, 8, !dbg !5139
  %.sroa.0.sroa.45.0.insert.insert1534 = or disjoint i32 %.sroa.0.sroa.48.0.insert.insert1649, %.sroa.0.sroa.45.0.insert.shift1532, !dbg !5139
  %.sroa.0.sroa.0.0.insert.ext1442 = zext i8 %.sroa.0.sroa.0.0.lcssa to i32, !dbg !5139
  %.sroa.0.sroa.0.0.insert.insert1444 = or disjoint i32 %.sroa.0.sroa.45.0.insert.insert1534, %.sroa.0.sroa.0.0.insert.ext1442, !dbg !5139
  %.sroa.50.sroa.49.0.insert.ext = zext i8 %.sroa.50.sroa.49.0.lcssa to i32, !dbg !5139
  %.sroa.50.sroa.49.0.insert.shift = shl nuw i32 %.sroa.50.sroa.49.0.insert.ext, 24, !dbg !5139
  %.sroa.50.sroa.48.0.insert.ext = zext i8 %.sroa.50.sroa.48.0.lcssa to i32, !dbg !5139
  %.sroa.50.sroa.48.0.insert.shift = shl nuw nsw i32 %.sroa.50.sroa.48.0.insert.ext, 16, !dbg !5139
  %.sroa.50.sroa.48.0.insert.insert = or disjoint i32 %.sroa.50.sroa.48.0.insert.shift, %.sroa.50.sroa.49.0.insert.shift, !dbg !5139
  %.sroa.50.sroa.45.0.insert.ext = zext i8 %.sroa.50.sroa.45.0.lcssa to i32, !dbg !5139
  %.sroa.50.sroa.45.0.insert.shift = shl nuw nsw i32 %.sroa.50.sroa.45.0.insert.ext, 8, !dbg !5139
  %.sroa.50.sroa.45.0.insert.insert = or disjoint i32 %.sroa.50.sroa.48.0.insert.insert, %.sroa.50.sroa.45.0.insert.shift, !dbg !5139
  %.sroa.50.sroa.0.0.insert.ext = zext i8 %.sroa.50.sroa.0.0.lcssa to i32, !dbg !5139
  %.sroa.50.sroa.0.0.insert.insert = or disjoint i32 %.sroa.50.sroa.45.0.insert.insert, %.sroa.50.sroa.0.0.insert.ext, !dbg !5139
  %.sroa.72.sroa.50.0.insert.ext = zext i8 %.sroa.72.sroa.50.0.lcssa to i32, !dbg !5139
  %.sroa.72.sroa.50.0.insert.shift = shl nuw i32 %.sroa.72.sroa.50.0.insert.ext, 24, !dbg !5139
  %.sroa.72.sroa.49.0.insert.ext = zext i8 %.sroa.72.sroa.49.0.lcssa to i32, !dbg !5139
  %.sroa.72.sroa.49.0.insert.shift = shl nuw nsw i32 %.sroa.72.sroa.49.0.insert.ext, 16, !dbg !5139
  %.sroa.72.sroa.49.0.insert.insert = or disjoint i32 %.sroa.72.sroa.49.0.insert.shift, %.sroa.72.sroa.50.0.insert.shift, !dbg !5139
  %.sroa.72.sroa.48.0.insert.ext = zext i8 %.sroa.72.sroa.48.0.lcssa to i32, !dbg !5139
  %.sroa.72.sroa.48.0.insert.shift = shl nuw nsw i32 %.sroa.72.sroa.48.0.insert.ext, 8, !dbg !5139
  %.sroa.72.sroa.48.0.insert.insert = or disjoint i32 %.sroa.72.sroa.49.0.insert.insert, %.sroa.72.sroa.48.0.insert.shift, !dbg !5139
  %.sroa.72.sroa.0.0.insert.ext = zext i8 %.sroa.72.sroa.0.0.lcssa to i32, !dbg !5139
  %.sroa.72.sroa.0.0.insert.insert = or disjoint i32 %.sroa.72.sroa.48.0.insert.insert, %.sroa.72.sroa.0.0.insert.ext, !dbg !5139
  store i32 %.sroa.0.sroa.0.0.insert.insert1444, ptr %i.c, align 8, !dbg !5140
  store i32 %.sroa.50.sroa.0.0.insert.insert, ptr %.sroa.50.0..sroa_idx, align 4, !dbg !5140
  store i32 %.sroa.72.sroa.0.0.insert.insert, ptr %.sroa.72.0..sroa_idx, align 8, !dbg !5140
  store i16 %.sroa.89.0.lcssa, ptr %.sroa.89.0..sroa_idx, align 4, !dbg !5140
  br label %bb.b, !dbg !5109

bb.s:                                             ; preds = %_RNvXsf_NtCs2Skuq3AeSHR_7anstyle5styleNtB5_5StyleNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 38, !dbg !5141
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.ar, ptr noundef nonnull align 8 dereferenceable(14) %i.c, i64 14, i1 false), !dbg !5142
  br label %bb.r, !dbg !5143

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit2341
  %i.as = phi ptr [ %i.db, %.loopexit2341 ], [ %i.k, %.lr.ph.preheader ] ; 5 uses
  %.sroa.0.sroa.49.020682308 = phi i8 [ %.sroa.0.sroa.49.020682307, %.loopexit2341 ], [ %.sroa.0.sroa.49.02068, %.lr.ph.preheader ] ; 18 uses
  %.sroa.0.sroa.48.020692301 = phi i8 [ %.sroa.0.sroa.48.020692300, %.loopexit2341 ], [ %.sroa.0.sroa.48.02069, %.lr.ph.preheader ] ; 18 uses
  %.sroa.0.sroa.45.020702294 = phi i8 [ %.sroa.0.sroa.45.020702293, %.loopexit2341 ], [ %.sroa.0.sroa.45.02070, %.lr.ph.preheader ] ; 18 uses
  %.sroa.0.sroa.0.020712287 = phi i8 [ %.sroa.0.sroa.0.020712286, %.loopexit2341 ], [ %.sroa.0.sroa.0.02071, %.lr.ph.preheader ] ; 18 uses
  %.sroa.50.sroa.49.020722280 = phi i8 [ %.sroa.50.sroa.49.020722279, %.loopexit2341 ], [ %.sroa.50.sroa.49.02072, %.lr.ph.preheader ] ; 18 uses
  %.sroa.50.sroa.48.020732273 = phi i8 [ %.sroa.50.sroa.48.020732272, %.loopexit2341 ], [ %.sroa.50.sroa.48.02073, %.lr.ph.preheader ] ; 18 uses
  %.sroa.50.sroa.45.020742266 = phi i8 [ %.sroa.50.sroa.45.020742265, %.loopexit2341 ], [ %.sroa.50.sroa.45.02074, %.lr.ph.preheader ] ; 18 uses
  %.sroa.50.sroa.0.020752259 = phi i8 [ %.sroa.50.sroa.0.020752258, %.loopexit2341 ], [ %.sroa.50.sroa.0.02075, %.lr.ph.preheader ] ; 18 uses
  %.sroa.72.sroa.0.020792231 = phi i8 [ %.sroa.72.sroa.0.020792230, %.loopexit2341 ], [ %.sroa.72.sroa.0.02079, %.lr.ph.preheader ] ; 18 uses
  %.sroa.0.12024 = phi i8 [ %.sroa.0.2, %.loopexit2341 ], [ %.sroa.0.02086, %.lr.ph.preheader ]
  %.sroa.05.12023 = phi i8 [ %.sroa.05.2, %.loopexit2341 ], [ %.sroa.05.02085, %.lr.ph.preheader ] ; 20 uses
  %.sroa.010.02022 = phi ptr [ %i.da, %.loopexit2341 ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %.sroa.4150.12021 = phi i16 [ %.sroa.4150.2, %.loopexit2341 ], [ %.sroa.4150.02084, %.lr.ph.preheader ] ; 21 uses
  %.sroa.0149.12020 = phi i1 [ %.sroa.0149.2, %.loopexit2341 ], [ %.sroa.0149.02083, %.lr.ph.preheader ] ; 17 uses
  %.sroa.4148.12019 = phi i16 [ %.sroa.4148.2, %.loopexit2341 ], [ %.sroa.4148.02082, %.lr.ph.preheader ] ; 21 uses
  %.sroa.0147.12018 = phi i1 [ %.sroa.0147.2, %.loopexit2341 ], [ %.sroa.0147.02081, %.lr.ph.preheader ] ; 16 uses
  %.sroa.89.12017 = phi i16 [ %.sroa.89.3, %.loopexit2341 ], [ %.sroa.89.02080, %.lr.ph.preheader ] ; 21 uses
    #dbg_value(i8 %.sroa.0.12024, !4704, !DIExpression(), !4963)
    #dbg_value(i8 %.sroa.05.12023, !4707, !DIExpression(), !4968)
    #dbg_value(ptr %.sroa.010.02022, !4710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4999)
    #dbg_value(i16 %.sroa.4150.12021, !4706, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4967)
    #dbg_value(i16 %.sroa.4148.12019, !4705, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4965)
    #dbg_value(i16 %.sroa.89.12017, !4703, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4957)
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.010.02022, i64 2, !dbg !5144 ; 5 uses
    #dbg_value(ptr %i.at, !4710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4999)
    #dbg_value(ptr %.sroa.010.02022, !4712, !DIExpression(), !5046)
  %i.au = load i16, ptr %.sroa.010.02022, align 2, !dbg !5145, !noundef !621 ; 7 uses
    #dbg_value(i16 %i.au, !4717, !DIExpression(), !5047)
    #dbg_value(i16 %i.au, !4719, !DIExpression(), !5048)
  switch i8 %.sroa.0.12024, label %default.unreachable2211 [
    i8 0, label %.preheader
    i8 1, label %.preheader2340
    i8 2, label %.preheader2352
    i8 3, label %.preheader2344
    i8 4, label %.preheader2348
  ], !dbg !5114

.preheader2352:                                   ; preds = %.lr.ph
  %i.av = zext i8 %.sroa.0.sroa.49.020682308 to i32, !dbg !5146
  %i.aw = zext i8 %.sroa.50.sroa.49.020722280 to i32, !dbg !5146
  %i.ax = zext i8 %.sroa.72.sroa.50.02076 to i32, !dbg !5147
  br label %bb.y, !dbg !5148

.preheader2344:                                   ; preds = %.lr.ph
  %.mask356 = and i16 %.sroa.4150.12021, 255
  %.sroa.5203.0.insert.ext = zext nneg i16 %.mask356 to i32
  %.sroa.5203.0.insert.shift = shl nuw nsw i32 %.sroa.5203.0.insert.ext, 16
  %i.ay = shl i16 %.sroa.4148.12019, 8
  %.sroa.4202.0.insert.shift = zext i16 %i.ay to i32
  %invariant.op = or disjoint i32 %.sroa.5203.0.insert.shift, %.sroa.4202.0.insert.shift, !dbg !5149
  %invariant.op2799 = or disjoint i32 %invariant.op, 2, !dbg !5149 ; 2 uses
  %.mask359 = and i16 %.sroa.4150.12021, 255
  %.sroa.5198.0.insert.ext = zext nneg i16 %.mask359 to i32
  %.sroa.5198.0.insert.shift = shl nuw nsw i32 %.sroa.5198.0.insert.ext, 16
  %i.az = shl i16 %.sroa.4148.12019, 8
  %.sroa.4197.0.insert.shift = zext i16 %i.az to i32
  %invariant.op2800 = or disjoint i32 %.sroa.5198.0.insert.shift, %.sroa.4197.0.insert.shift, !dbg !5149
  %invariant.op2801 = or disjoint i32 %invariant.op2800, 2, !dbg !5149 ; 2 uses
  %i.ba = and i16 %.sroa.4150.12021, 255
  %.sroa.5193.0.insert.ext = zext nneg i16 %i.ba to i32
  %.sroa.5193.0.insert.shift = shl nuw nsw i32 %.sroa.5193.0.insert.ext, 16
  %i.bb = shl i16 %.sroa.4148.12019, 8
  %.sroa.4192.0.insert.shift = zext i16 %i.bb to i32
  %invariant.op2802 = or disjoint i32 %.sroa.5193.0.insert.shift, %.sroa.4192.0.insert.shift, !dbg !5149
  %invariant.op2803 = or disjoint i32 %invariant.op2802, 2, !dbg !5149 ; 2 uses
  br i1 %.sroa.0147.12018, label %.lr.ph3237.peel, label %.loopexit2341, !dbg !5149

.lr.ph3237.peel:                                  ; preds = %.preheader2344
  br i1 %.sroa.0149.12020, label %bb.t, label %.loopexit2341, !dbg !5149

bb.t:                                             ; preds = %.lr.ph3237.peel
    #dbg_value(i16 %.sroa.4148.12019, !4720, !DIExpression(), !5049)
    #dbg_value(i16 %.sroa.4150.12021, !4721, !DIExpression(), !5049)
    #dbg_value(i16 %.sroa.4148.12019, !4722, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5051)
    #dbg_value(i16 %.sroa.4150.12021, !4722, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5051)
    #dbg_value(i16 %i.au, !4722, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 8), !5051)
  %i.bc = and i16 %i.au, 255, !dbg !5051
  %.sroa.6194.0.insert.ext.peel = zext nneg i16 %i.bc to i32, !dbg !5051
  %.sroa.6194.0.insert.shift.peel = shl nuw i32 %.sroa.6194.0.insert.ext.peel, 24, !dbg !5051 ; 3 uses
  switch i8 %.sroa.05.12023, label %.unreachabledefault [
    i8 0, label %bb.w
    i8 1, label %bb.v
    i8 2, label %bb.u
  ], !dbg !5150

bb.u:                                             ; preds = %bb.t
  %.sroa.0.sroa.49.0.insert.ext1754.peel = zext i8 %.sroa.0.sroa.49.020682308 to i32, !dbg !5151
  %.sroa.0.sroa.49.0.insert.shift1755.peel = shl nuw i32 %.sroa.0.sroa.49.0.insert.ext1754.peel, 24, !dbg !5151
  %.sroa.0.sroa.48.0.insert.ext1638.peel = zext i8 %.sroa.0.sroa.48.020692301 to i32, !dbg !5151
  %.sroa.0.sroa.48.0.insert.shift1639.peel = shl nuw nsw i32 %.sroa.0.sroa.48.0.insert.ext1638.peel, 16, !dbg !5151
  %.sroa.0.sroa.48.0.insert.insert1641.peel = or disjoint i32 %.sroa.0.sroa.48.0.insert.shift1639.peel, %.sroa.0.sroa.49.0.insert.shift1755.peel, !dbg !5151
  %.sroa.0.sroa.45.0.insert.ext1523.peel = zext i8 %.sroa.0.sroa.45.020702294 to i32, !dbg !5151
  %.sroa.0.sroa.45.0.insert.shift1524.peel = shl nuw nsw i32 %.sroa.0.sroa.45.0.insert.ext1523.peel, 8, !dbg !5151
  %.sroa.0.sroa.45.0.insert.insert1526.peel = or disjoint i32 %.sroa.0.sroa.48.0.insert.insert1641.peel, %.sroa.0.sroa.45.0.insert.shift1524.peel, !dbg !5151
  %.sroa.0.sroa.0.0.insert.ext1437.peel = zext i8 %.sroa.0.sroa.0.020712287 to i32, !dbg !5151
  %.sroa.0.sroa.0.0.insert.insert1439.peel = or disjoint i32 %.sroa.0.sroa.45.0.insert.insert1526.peel, %.sroa.0.sroa.0.0.insert.ext1437.peel, !dbg !5151
  %.sroa.50.sroa.49.0.insert.ext1391.peel = zext i8 %.sroa.50.sroa.49.020722280 to i32, !dbg !5151
  %.sroa.50.sroa.49.0.insert.shift1392.peel = shl nuw i32 %.sroa.50.sroa.49.0.insert.ext1391.peel, 24, !dbg !5151
  %.sroa.50.sroa.48.0.insert.ext1275.peel = zext i8 %.sroa.50.sroa.48.020732273 to i32, !dbg !5151
  %.sroa.50.sroa.48.0.insert.shift1276.peel = shl nuw nsw i32 %.sroa.50.sroa.48.0.insert.ext1275.peel, 16, !dbg !5151
  %.sroa.50.sroa.48.0.insert.insert1278.peel = or disjoint i32 %.sroa.50.sroa.48.0.insert.shift1276.peel, %.sroa.50.sroa.49.0.insert.shift1392.peel, !dbg !5151
  %.sroa.50.sroa.45.0.insert.ext1160.peel = zext i8 %.sroa.50.sroa.45.020742266 to i32, !dbg !5151
  %.sroa.50.sroa.45.0.insert.shift1161.peel = shl nuw nsw i32 %.sroa.50.sroa.45.0.insert.ext1160.peel, 8, !dbg !5151
  %.sroa.50.sroa.45.0.insert.insert1163.peel = or disjoint i32 %.sroa.50.sroa.48.0.insert.insert1278.peel, %.sroa.50.sroa.45.0.insert.shift1161.peel, !dbg !5151
  %.sroa.50.sroa.0.0.insert.ext1054.peel = zext i8 %.sroa.50.sroa.0.020752259 to i32, !dbg !5151
  %.sroa.50.sroa.0.0.insert.insert1056.peel.a = or disjoint i32 %.sroa.50.sroa.45.0.insert.insert1163.peel, %.sroa.50.sroa.0.0.insert.ext1054.peel, !dbg !5151
  %.sroa.0201.0.insert.insert.reass.peel = or disjoint i32 %.sroa.6194.0.insert.shift.peel, %invariant.op2799
  br label %bb.x, !dbg !5152

bb.v:                                             ; preds = %bb.t
  %.sroa.0.sroa.49.0.insert.ext1750.peel = zext i8 %.sroa.0.sroa.49.020682308 to i32, !dbg !5153
  %.sroa.0.sroa.49.0.insert.shift1751.peel = shl nuw i32 %.sroa.0.sroa.49.0.insert.ext1750.peel, 24, !dbg !5153
  %.sroa.0.sroa.48.0.insert.ext1634.peel = zext i8 %.sroa.0.sroa.48.020692301 to i32, !dbg !5153
  %.sroa.0.sroa.48.0.insert.shift1635.peel = shl nuw nsw i32 %.sroa.0.sroa.48.0.insert.ext1634.peel, 16, !dbg !5153
  %.sroa.0.sroa.48.0.insert.insert1637.peel = or disjoint i32 %.sroa.0.sroa.48.0.insert.shift1635.peel, %.sroa.0.sroa.49.0.insert.shift1751.peel, !dbg !5153
  %.sroa.0.sroa.45.0.insert.ext1519.peel = zext i8 %.sroa.0.sroa.45.020702294 to i32, !dbg !5153
  %.sroa.0.sroa.45.0.insert.shift1520.peel = shl nuw nsw i32 %.sroa.0.sroa.45.0.insert.ext1519.peel, 8, !dbg !5153
  %.sroa.0.sroa.45.0.insert.insert1522.peel = or disjoint i32 %.sroa.0.sroa.48.0.insert.insert1637.peel, %.sroa.0.sroa.45.0.insert.shift1520.peel, !dbg !5153
  %.sroa.0.sroa.0.0.insert.ext1434.peel = zext i8 %.sroa.0.sroa.0.020712287 to i32, !dbg !5153
  %.sroa.0.sroa.0.0.insert.insert1436.peel = or disjoint i32 %.sroa.0.sroa.45.0.insert.insert1522.peel, %.sroa.0.sroa.0.0.insert.ext1434.peel, !dbg !5153
  %.sroa.72.sroa.0.0.insert.ext594.peel = zext i8 %.sroa.72.sroa.0.020792231 to i32, !dbg !5153
  %.sroa.72.sroa.0.0.insert.insert596.peel.a = or disjoint i32 %.sroa.72.sroa.48.0.insert.insert717.peel, %.sroa.72.sroa.0.0.insert.ext594.peel, !dbg !5153
  %.sroa.0196.0.insert.insert.reass.peel = or disjoint i32 %.sroa.6194.0.insert.shift.peel, %invariant.op2801
  br label %bb.x, !dbg !5154

bb.w:                                             ; preds = %bb.t
    #dbg_value(i16 %.sroa.4148.12019, !4722, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5051)
    #dbg_value(i16 %.sroa.4150.12021, !4722, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5051)
    #dbg_value(i16 %i.au, !4722, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 8), !5051)
  %.sroa.50.sroa.49.0.insert.ext1387.peel = zext i8 %.sroa.50.sroa.49.020722280 to i32, !dbg !5155
  %.sroa.50.sroa.49.0.insert.shift1388.peel = shl nuw i32 %.sroa.50.sroa.49.0.insert.ext1387.peel, 24, !dbg !5155
  %.sroa.50.sroa.48.0.insert.ext1271.peel = zext i8 %.sroa.50.sroa.48.020732273 to i32, !dbg !5155
  %.sroa.50.sroa.48.0.insert.shift1272.peel = shl nuw nsw i32 %.sroa.50.sroa.48.0.insert.ext1271.peel, 16, !dbg !5155
  %.sroa.50.sroa.48.0.insert.insert1274.peel = or disjoint i32 %.sroa.50.sroa.48.0.insert.shift1272.peel, %.sroa.50.sroa.49.0.insert.shift1388.peel, !dbg !5155
  %.sroa.50.sroa.45.0.insert.ext1156.peel = zext i8 %.sroa.50.sroa.45.020742266 to i32, !dbg !5155
  %.sroa.50.sroa.45.0.insert.shift1157.peel = shl nuw nsw i32 %.sroa.50.sroa.45.0.insert.ext1156.peel, 8, !dbg !5155
  %.sroa.50.sroa.45.0.insert.insert1159.peel = or disjoint i32 %.sroa.50.sroa.48.0.insert.insert1274.peel, %.sroa.50.sroa.45.0.insert.shift1157.peel, !dbg !5155
  %.sroa.50.sroa.0.0.insert.ext1051.peel = zext i8 %.sroa.50.sroa.0.020752259 to i32, !dbg !5155
  %.sroa.50.sroa.0.0.insert.insert1053.peel = or disjoint i32 %.sroa.50.sroa.45.0.insert.insert1159.peel, %.sroa.50.sroa.0.0.insert.ext1051.peel, !dbg !5155
  %.sroa.72.sroa.0.0.insert.ext591.peel = zext i8 %.sroa.72.sroa.0.020792231 to i32, !dbg !5155
  %.sroa.72.sroa.0.0.insert.insert593.peel.a = or disjoint i32 %.sroa.72.sroa.48.0.insert.insert713.peel, %.sroa.72.sroa.0.0.insert.ext591.peel, !dbg !5155
  %.sroa.0191.0.insert.insert.reass.peel = or disjoint i32 %.sroa.6194.0.insert.shift.peel, %invariant.op2803
  br label %bb.x, !dbg !5156

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.sroa.0166.0.peel = phi i32 [ %.sroa.0191.0.insert.insert.reass.peel, %bb.w ], [ %.sroa.0.sroa.0.0.insert.insert1436.peel, %bb.v ], [ %.sroa.0.sroa.0.0.insert.insert1439.peel, %bb.u ], !dbg !5051 ; 4 uses
  %.sroa.5170.0.peel = phi i32 [ %.sroa.50.sroa.0.0.insert.insert1053.peel, %bb.w ], [ %.sroa.0196.0.insert.insert.reass.peel, %bb.v ], [ %.sroa.50.sroa.0.0.insert.insert1056.peel.a, %bb.u ], !dbg !5051 ; 4 uses
  %.sroa.6177.0.peel = phi i32 [ %.sroa.72.sroa.0.0.insert.insert593.peel.a, %bb.w ], [ %.sroa.72.sroa.0.0.insert.insert596.peel.a, %bb.v ], [ %.sroa.0201.0.insert.insert.reass.peel, %bb.u ], !dbg !5051 ; 4 uses
  %.sroa.0.sroa.0.0.extract.trunc1440.peel = trunc i32 %.sroa.0166.0.peel to i8, !dbg !5157 ; 3 uses
    #dbg_value(i8 %.sroa.0.sroa.0.0.extract.trunc1440.peel, !4703, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4957)
  %.sroa.0.sroa.45.0.extract.shift1527.peel = lshr i32 %.sroa.0166.0.peel, 8, !dbg !5157
  %.sroa.0.sroa.45.0.extract.trunc1528.peel = trunc i32 %.sroa.0.sroa.45.0.extract.shift1527.peel to i8, !dbg !5157 ; 3 uses
    #dbg_value(i8 %.sroa.0.sroa.45.0.extract.trunc1528.peel, !4703, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4957)
  %.sroa.0.sroa.48.0.extract.shift1642.peel = lshr i32 %.sroa.0166.0.peel, 16, !dbg !5157
  %.sroa.0.sroa.48.0.extract.trunc1643.peel = trunc i32 %.sroa.0.sroa.48.0.extract.shift1642.peel to i8, !dbg !5157 ; 3 uses
    #dbg_value(i8 %.sroa.0.sroa.48.0.extract.trunc1643.peel, !4703, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4957)
  %.sroa.0.sroa.49.0.extract.shift1758.peel = lshr i32 %.sroa.0166.0.peel, 24, !dbg !5157 ; 3 uses
    #dbg_value(i32 %.sroa.0.sroa.49.0.extract.shift1758.peel, !4703, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 24, 8), !4957)
  %.sroa.50.sroa.0.0.extract.trunc1057.peel = trunc i32 %.sroa.5170.0.peel to i8, !dbg !5157 ; 3 uses
    #dbg_value(i8 %.sroa.50.sroa.0.0.extract.trunc1057.peel, !4703, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4957)
  %.sroa.50.sroa.45.0.extract.shift1164.peel = lshr i32 %.sroa.5170.0.peel, 8, !dbg !5157
  %.sroa.50.sroa.45.0.extract.trunc1165.peel = trunc i32 %.sroa.50.sroa.45.0.extract.shift1164.peel to i8, !dbg !5157 ; 3 uses
    #dbg_value(i8 %.sroa.50.sroa.45.0.extract.trunc1165.peel, !4703, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4957)
  %.sroa.50.sroa.48.0.extract.shift1279.peel = lshr i32 %.sroa.5170.0.peel, 16, !dbg !5157
  %.sroa.50.sroa.48.0.extract.trunc1280.peel = trunc i32 %.sroa.50.sroa.48.0.extract.shift1279.peel to i8, !dbg !5157 ; 3 uses
    #dbg_value(i8 %.sroa.50.sroa.48.0.extract.trunc1280.peel, !4703, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4957)
  %.sroa.50.sroa.49.0.extract.shift1395.peel = lshr i32 %.sroa.5170.0.peel, 24, !dbg !5157 ; 3 uses
    #dbg_value(i32 %.sroa.50.sroa.49.0.extract.shift1395.peel, !4703, !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 56, 8), !4957)
  %.sroa.72.sroa.0.0.extract.trunc597.peel = trunc i32 %.sroa.6177.0.peel to i8, !dbg !5157 ; 3 uses
    #dbg_value(i8 %.sroa.72.sroa.0.0.extract.trunc597.peel, !4703, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4957)
  %.sroa.72.sroa.48.0.extract.shift718.peel = lshr i32 %.sroa.6177.0.peel, 8, !dbg !5157
  %.sroa.72.sroa.48.0.extract.trunc719.peel = trunc i32 %.sroa.72.sroa.48.0.extract.shift718.peel to i8, !dbg !5157 ; 3 uses
    #dbg_value(i8 %.sroa.72.sroa.48.0.extract.trunc719.peel, !4703, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4957)
  %.sroa.72.sroa.49.0.extract.shift846.peel = lshr i32 %.sroa.6177.0.peel, 16, !dbg !5157
  %.sroa.72.sroa.49.0.extract.trunc847.peel = trunc i32 %.sroa.72.sroa.49.0.extract.shift846.peel to i8, !dbg !5157 ; 3 uses
    #dbg_value(i8 %.sroa.72.sroa.49.0.extract.trunc847.peel, !4703, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4957)
  %.sroa.72.sroa.50.0.extract.shift974.peel = lshr i32 %.sroa.6177.0.peel, 24, !dbg !5157 ; 3 uses
    #dbg_value(i16 %.sroa.89.2, !4703, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4957)
    #dbg_value(i8 %.sroa.72.sroa.0.2, !4703, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.48.2, !4703, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.49.2, !4703, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.50.2, !4703, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.0.2, !4703, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.45.2, !4703, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.48.2, !4703, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.49.2, !4703, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.0.2, !4703, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.45.2, !4703, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.48.2, !4703, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.49.2, !4703, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4957)
    #dbg_value(i8 %.sroa.0.11877, !4704, !DIExpression(), !4963)
    #dbg_value(i8 %.sroa.05.11891, !4707, !DIExpression(), !4968)
    #dbg_value(i16 %.sroa.4150.11905, !4706, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4967)
    #dbg_value(i16 poison, !4706, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4967)
    #dbg_value(i16 %.sroa.4148.11933, !4705, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4965)
    #dbg_value(i16 poison, !4705, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4965)
  %i.bd = call { ptr, i64 } @_RNvXs1_NtCshSYD73oCB2Y_13anstyle_parse6paramsNtB5_10ParamsIterNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !4834 ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 0, !dbg !4834 ; 2 uses
  %.not.jt3.peel = icmp eq ptr %i.be, null, !dbg !4834
  br i1 %.not.jt3.peel, label %._crit_edge.loopexit3277.loopexit3699, label %.lr.ph2087.jt3.peel, !dbg !4834

.lr.ph2087.jt3.peel:                              ; preds = %bb.x
    #dbg_value(i8 %.sroa.0.02086, !4704, !DIExpression(), !4963)
    #dbg_value(i8 %.sroa.05.02085, !4707, !DIExpression(), !4968)
    #dbg_value(i16 %.sroa.4150.02084, !4706, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4967)
    #dbg_value(i16 %.sroa.4148.02082, !4705, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4965)
    #dbg_value(i16 %.sroa.89.02080, !4703, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4957)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4703, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4703, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4703, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4703, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4703, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4703, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4703, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4703, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4703, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4703, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4703, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4703, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4957)
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1, !dbg !4834
    #dbg_value(ptr %i.g, !4709, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4969)
    #dbg_value(ptr %i.g, !4970, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4976)
    #dbg_value(ptr %i.g, !4977, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4980)
    #dbg_value(ptr %i.g, !4981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4988)
    #dbg_value(i64 %i.i, !4709, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4969)
    #dbg_value(i64 %i.i, !4970, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4976)
    #dbg_value(i64 %i.i, !4977, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4980)
    #dbg_value(i64 %i.i, !4981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !4988)
    #dbg_value(i64 %i.i, !4983, !DIExpression(), !4989)
    #dbg_value(i64 %i.i, !4990, !DIExpression(), !4997)
    #dbg_value(ptr %i.g, !4984, !DIExpression(), !4998)
    #dbg_value(ptr %i.g, !4994, !DIExpression(), !4997)
    #dbg_value(ptr %i.g, !4710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4999)
    #dbg_value(!DIArgList(ptr %i.g, i64 %i.i), !4710, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !4999)
    #dbg_value(i16 %.sroa.89.02080, !4703, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4957)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4703, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4703, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4703, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4703, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4703, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4703, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4703, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4703, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4703, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4703, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4703, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4703, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4957)
    #dbg_value(i16 poison, !4706, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4967)
    #dbg_value(i16 poison, !4705, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4965)
    #dbg_value(ptr undef, !4750, !DIExpression(), !4766)
    #dbg_value(ptr %i.g, !4760, !DIExpression(), !5001)
    #dbg_value(ptr %i.g, !4839, !DIExpression(), !4842)
    #dbg_value(!DIArgList(ptr %i.g, i64 %i.i), !4761, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_shl, DW_OP_plus, DW_OP_stack_value), !5003)
    #dbg_value(ptr poison, !5005, !DIExpression(), !5011)
    #dbg_value(ptr poison, !5008, !DIExpression(), !5012)
  %i.bg = icmp eq i64 %i.bf, 0, !dbg !5112
  br i1 %i.bg, label %.loopexit2103.loopexit3278.loopexit3713, label %.lr.ph.jt3.peel, !dbg !5010

.lr.ph.jt3.peel:                                  ; preds = %.lr.ph2087.jt3.peel
    #dbg_value(i8 %.sroa.0.12024, !4704, !DIExpression(), !4963)
    #dbg_value(i8 %.sroa.05.12023, !4707, !DIExpression(), !4968)
    #dbg_value(ptr %.sroa.010.02022, !4710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4999)
    #dbg_value(i16 %.sroa.4150.12021, !4706, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4967)
    #dbg_value(i16 %.sroa.4148.12019, !4705, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4965)
    #dbg_value(i16 %.sroa.89.12017, !4703, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4957)
    #dbg_value(ptr %i.at, !4710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4999)
    #dbg_value(ptr %.sroa.010.02022, !4712, !DIExpression(), !5046)
  %i.bh = load i16, ptr %i.be, align 2, !dbg !5145, !noundef !621
    #dbg_value(i16 %i.au, !4717, !DIExpression(), !5047)
    #dbg_value(i16 %i.au, !4719, !DIExpression(), !5048)
  br label %.lr.ph3237, !dbg !5149

.lr.ph.jt1:                                       ; preds = %.lr.ph2087.jt1
  %.idx.jt1 = shl nuw nsw i64 %i.l, 1, !dbg !5113
  %i.bi = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx.jt1, !dbg !5113
    #dbg_value(i8 %.sroa.0.12024, !4704, !DIExpression(), !4963)
    #dbg_value(i8 %.sroa.05.12023, !4707, !DIExpression(), !4968)
    #dbg_value(ptr %.sroa.010.02022, !4710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4999)
    #dbg_value(i16 %.sroa.4150.12021, !4706, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4967)
    #dbg_value(i16 %.sroa.4148.12019, !4705, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4965)
    #dbg_value(i16 %.sroa.89.12017, !4703, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4957)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.cr, i64 2, !dbg !5144
    #dbg_value(ptr %i.at, !4710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4999)
    #dbg_value(ptr %.sroa.010.02022, !4712, !DIExpression(), !5046)
  %i.bk = load i16, ptr %i.cr, align 2, !dbg !5145, !noundef !621
    #dbg_value(i16 %i.au, !4717, !DIExpression(), !5047)
    #dbg_value(i16 %i.au, !4719, !DIExpression(), !5048)
  br label %.preheader2340, !dbg !5114

.lr.ph.jt4:                                       ; preds = %.lr.ph2087.jt4
  %.idx.jt4 = shl nuw nsw i64 %i.n, 1, !dbg !5113
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx.jt4, !dbg !5113
    #dbg_value(i8 %.sroa.0.12024, !4704, !DIExpression(), !4963)
    #dbg_value(i8 %.sroa.05.12023, !4707, !DIExpression(), !4968)
    #dbg_value(ptr %.sroa.010.02022, !4710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4999)
    #dbg_value(i16 %.sroa.4150.12021, !4706, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4967)
    #dbg_value(i16 %.sroa.4148.12019, !4705, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4965)
    #dbg_value(i16 %.sroa.89.12017, !4703, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4957)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ct, i64 2, !dbg !5144
    #dbg_value(ptr %i.at, !4710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4999)
    #dbg_value(ptr %.sroa.010.02022, !4712, !DIExpression(), !5046)
  %i.bn = load i16, ptr %i.ct, align 2, !dbg !5145, !noundef !621
    #dbg_value(i16 %i.au, !4717, !DIExpression(), !5047)
    #dbg_value(i16 %i.au, !4719, !DIExpression(), !5048)
  br label %.preheader2348, !dbg !5114

.lr.ph.jt3:                                       ; preds = %.lr.ph2087.jt3
    #dbg_value(i8 %.sroa.0.12024, !4704, !DIExpression(), !4963)
    #dbg_value(i8 %.sroa.05.12023, !4707, !DIExpression(), !4968)
    #dbg_value(ptr %.sroa.010.02022, !4710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4999)
    #dbg_value(i16 %.sroa.4150.12021, !4706, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4967)
    #dbg_value(i16 %.sroa.4148.12019, !4705, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4965)
    #dbg_value(i16 %.sroa.89.12017, !4703, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4957)
    #dbg_value(ptr %i.at, !4710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4999)
    #dbg_value(ptr %.sroa.010.02022, !4712, !DIExpression(), !5046)
  %i.bo = load i16, ptr %i.cv, align 2, !dbg !5145, !noundef !621
    #dbg_value(i16 %i.au, !4717, !DIExpression(), !5047)
    #dbg_value(i16 %i.au, !4719, !DIExpression(), !5048)
  br label %.lr.ph3237, !dbg !5149, !llvm.loop !4689

.lr.ph.jt2:                                       ; preds = %.lr.ph2087.jt2
    #dbg_value(i8 %.sroa.0.12024, !4704, !DIExpression(), !4963)
    #dbg_value(i8 %.sroa.05.12023, !4707, !DIExpression(), !4968)
    #dbg_value(ptr %.sroa.010.02022, !4710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4999)
    #dbg_value(i16 %.sroa.4150.12021, !4706, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4967)
    #dbg_value(i16 %.sroa.4148.12019, !4705, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4965)
    #dbg_value(i16 %.sroa.89.12017, !4703, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4957)
    #dbg_value(ptr %i.at, !4710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4999)
    #dbg_value(ptr %.sroa.010.02022, !4712, !DIExpression(), !5046)
  %i.bp = load i16, ptr %i.cx, align 2, !dbg !5145, !noundef !621
    #dbg_value(i16 %i.au, !4717, !DIExpression(), !5047)
    #dbg_value(i16 %i.au, !4719, !DIExpression(), !5048)
  br label %bb.y, !dbg !5114

.lr.ph.jt0:                                       ; preds = %.lr.ph2087.jt0
  %.idx.jt0 = shl nuw nsw i64 %i.t, 1, !dbg !5113
  %i.bq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx.jt0, !dbg !5113
    #dbg_value(i8 %.sroa.0.12024, !4704, !DIExpression(), !4963)
    #dbg_value(i8 %.sroa.05.12023, !4707, !DIExpression(), !4968)
    #dbg_value(ptr %.sroa.010.02022, !4710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4999)
    #dbg_value(i16 %.sroa.4150.12021, !4706, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4967)
    #dbg_value(i16 %.sroa.4148.12019, !4705, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4965)
    #dbg_value(i16 %.sroa.89.12017, !4703, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4957)
  %i.br = getelementptr inbounds nuw i8, ptr %i.cz, i64 2, !dbg !5144
    #dbg_value(ptr %i.at, !4710, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !4999)
    #dbg_value(ptr %.sroa.010.02022, !4712, !DIExpression(), !5046)
  %i.bs = load i16, ptr %i.cz, align 2, !dbg !5145, !noundef !621
    #dbg_value(i16 %i.au, !4717, !DIExpression(), !5047)
    #dbg_value(i16 %i.au, !4719, !DIExpression(), !5048)
  br label %.preheader, !dbg !5114

.unreachabledefault:                              ; preds = %bb.t
  unreachable

default.unreachable2211:                          ; preds = %.lr.ph, %bb.y, %.lr.ph3237
  unreachable

default.unreachable:                              ; preds = %bb.ar, %bb.aq, %bb.ao, %bb.am
  unreachable

.preheader:                                       ; preds = %.lr.ph, %.lr.ph.jt0
  %i.bt = phi i16 [ %i.bs, %.lr.ph.jt0 ], [ %i.au, %.lr.ph ], !dbg !5114 ; 9 uses
  %i.bu = phi ptr [ %i.br, %.lr.ph.jt0 ], [ %i.at, %.lr.ph ], !dbg !5114 ; 4 uses
  %.sroa.89.120172338 = phi i16 [ %.sroa.89.2.jt0, %.lr.ph.jt0 ], [ %.sroa.89.12017, %.lr.ph ], !dbg !5114 ; 46 uses
  %i.bv = phi ptr [ %i.bq, %.lr.ph.jt0 ], [ %i.as, %.lr.ph ], !dbg !5114 ; 4 uses
  %.sroa.0.sroa.49.020682306 = phi i8 [ %.sroa.0.sroa.49.2.jt0, %.lr.ph.jt0 ], [ %.sroa.0.sroa.49.020682308, %.lr.ph ], !dbg !5114 ; 31 uses
  %.sroa.0.sroa.48.020692299 = phi i8 [ %.sroa.0.sroa.48.2.jt0, %.lr.ph.jt0 ], [ %.sroa.0.sroa.48.020692301, %.lr.ph ], !dbg !5114 ; 31 uses
  %.sroa.0.sroa.45.020702292 = phi i8 [ %.sroa.0.sroa.45.2.jt0, %.lr.ph.jt0 ], [ %.sroa.0.sroa.45.020702294, %.lr.ph ], !dbg !5114 ; 31 uses
  %.sroa.0.sroa.0.020712285 = phi i8 [ %.sroa.0.sroa.0.2.jt0, %.lr.ph.jt0 ], [ %.sroa.0.sroa.0.020712287, %.lr.ph ], !dbg !5114 ; 29 uses
  %.sroa.50.sroa.49.020722278 = phi i8 [ %.sroa.50.sroa.49.2.jt0, %.lr.ph.jt0 ], [ %.sroa.50.sroa.49.020722280, %.lr.ph ], !dbg !5114 ; 31 uses
  %.sroa.50.sroa.48.020732271 = phi i8 [ %.sroa.50.sroa.48.2.jt0, %.lr.ph.jt0 ], [ %.sroa.50.sroa.48.020732273, %.lr.ph ], !dbg !5114 ; 31 uses
  %.sroa.50.sroa.45.020742264 = phi i8 [ %.sroa.50.sroa.45.2.jt0, %.lr.ph.jt0 ], [ %.sroa.50.sroa.45.020742266, %.lr.ph ], !dbg !5114 ; 31 uses
  %.sroa.50.sroa.0.020752257 = phi i8 [ %.sroa.50.sroa.0.2.jt0, %.lr.ph.jt0 ], [ %.sroa.50.sroa.0.020752259, %.lr.ph ], !dbg !5114 ; 29 uses
  %.sroa.72.sroa.0.020792229 = phi i8 [ %.sroa.72.sroa.0.2.jt0, %.lr.ph.jt0 ], [ %.sroa.72.sroa.0.020792231, %.lr.ph ], !dbg !5114 ; 46 uses
  switch i16 %i.bt, label %bb.z [
    i16 0, label %.loopexit
    i16 1, label %bb.aa
    i16 2, label %bb.ab
    i16 3, label %bb.ac
    i16 4, label %bb.ad
    i16 21, label %bb.ae
    i16 7, label %bb.af
    i16 8, label %bb.ag
    i16 9, label %bb.ah
    i16 38, label %.loopexit2341
    i16 39, label %.loopexit2103.jt0
    i16 48, label %.loopexit2341.loopexit
    i16 49, label %bb.ak
    i16 58, label %.loopexit2341.loopexit3272
  ], !dbg !5114

.preheader2340:                                   ; preds = %.lr.ph, %.lr.ph.jt1
  %i.bw = phi i16 [ %i.bk, %.lr.ph.jt1 ], [ %i.au, %.lr.ph ], !dbg !5114
  %i.bx = phi ptr [ %i.bj, %.lr.ph.jt1 ], [ %i.at, %.lr.ph ], !dbg !5114 ; 2 uses
  %i.by = phi ptr [ %i.bi, %.lr.ph.jt1 ], [ %i.as, %.lr.ph ], !dbg !5114 ; 2 uses
  switch i16 %i.bw, label %.loopexit2103.jt1 [
    i16 5, label %.loopexit2341
    i16 2, label %bb.bu
  ], !dbg !5114

bb.y:                                             ; preds = %.preheader2352, %.lr.ph.jt2
  %i.bz = phi i16 [ %i.bp, %.lr.ph.jt2 ], [ %i.au, %.preheader2352 ], !dbg !5148
  %.sroa.0.sroa.49.020682304 = phi i32 [ %.sroa.0.sroa.49.0.extract.shift1748, %.lr.ph.jt2 ], [ %i.av, %.preheader2352 ], !dbg !5148 ; 2 uses
  %.sroa.0.sroa.48.020692297 = phi i8 [ %.sroa.0.sroa.48.0.extract.trunc1633, %.lr.ph.jt2 ], [ %.sroa.0.sroa.48.020692301, %.preheader2352 ], !dbg !5148 ; 2 uses
  %.sroa.0.sroa.45.020702290 = phi i8 [ %.sroa.0.sroa.45.0.extract.trunc1518, %.lr.ph.jt2 ], [ %.sroa.0.sroa.45.020702294, %.preheader2352 ], !dbg !5148 ; 2 uses
  %.sroa.0.sroa.0.020712283 = phi i8 [ %.sroa.0.sroa.0.0.extract.trunc1433, %.lr.ph.jt2 ], [ %.sroa.0.sroa.0.020712287, %.preheader2352 ], !dbg !5148 ; 2 uses
  %.sroa.50.sroa.49.020722276 = phi i32 [ %.sroa.50.sroa.49.0.extract.shift1385, %.lr.ph.jt2 ], [ %i.aw, %.preheader2352 ], !dbg !5148 ; 2 uses
  %.sroa.50.sroa.48.020732269 = phi i8 [ %.sroa.50.sroa.48.0.extract.trunc1270, %.lr.ph.jt2 ], [ %.sroa.50.sroa.48.020732273, %.preheader2352 ], !dbg !5148 ; 2 uses
  %.sroa.50.sroa.45.020742262 = phi i8 [ %.sroa.50.sroa.45.0.extract.trunc1155, %.lr.ph.jt2 ], [ %.sroa.50.sroa.45.020742266, %.preheader2352 ], !dbg !5148 ; 2 uses
  %.sroa.50.sroa.0.020752255 = phi i8 [ %.sroa.50.sroa.0.0.extract.trunc1050, %.lr.ph.jt2 ], [ %.sroa.50.sroa.0.020752259, %.preheader2352 ], !dbg !5148 ; 2 uses
  %.sroa.72.sroa.50.020762248 = phi i32 [ %.sroa.72.sroa.50.0.extract.shift964, %.lr.ph.jt2 ], [ %i.ax, %.preheader2352 ], !dbg !5148 ; 2 uses
  %.sroa.72.sroa.49.020772241 = phi i8 [ %.sroa.72.sroa.49.0.extract.trunc837, %.lr.ph.jt2 ], [ %.sroa.72.sroa.49.02077, %.preheader2352 ], !dbg !5148 ; 2 uses
  %.sroa.72.sroa.48.020782234 = phi i8 [ %.sroa.72.sroa.48.0.extract.trunc709, %.lr.ph.jt2 ], [ %.sroa.72.sroa.48.02078, %.preheader2352 ], !dbg !5148 ; 2 uses
  %.sroa.72.sroa.0.020792227 = phi i8 [ %.sroa.72.sroa.0.0.extract.trunc590, %.lr.ph.jt2 ], [ %.sroa.72.sroa.0.020792231, %.preheader2352 ], !dbg !5148 ; 2 uses
    #dbg_value(i16 %i.au, !4718, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5058)
  %i.ca = shl i16 %i.bz, 8, !dbg !5058
  %i.cb = or disjoint i16 %i.ca, 1, !dbg !5058
  %.sroa.0130.0.insert.insert = zext i16 %i.cb to i32, !dbg !5058 ; 3 uses
  switch i8 %.sroa.05.12023, label %default.unreachable2211 [
    i8 0, label %bb.bv
    i8 1, label %bb.bw
    i8 2, label %bb.bx
  ], !dbg !5148

.preheader2348:                                   ; preds = %.lr.ph, %.lr.ph.jt4
  %i.cc = phi i16 [ %i.bn, %.lr.ph.jt4 ], [ %i.au, %.lr.ph ], !dbg !5114
  %i.cd = phi ptr [ %i.bm, %.lr.ph.jt4 ], [ %i.at, %.lr.ph ], !dbg !5114 ; 6 uses
  %i.ce = phi ptr [ %i.bl, %.lr.ph.jt4 ], [ %i.as, %.lr.ph ], !dbg !5114 ; 6 uses
  switch i16 %i.cc, label %.loopexit2103.jt4 [
    i16 0, label %bb.cb
    i16 1, label %.loopexit2341
    i16 2, label %bb.cc
    i16 3, label %bb.cd
    i16 4, label %bb.ce
    i16 5, label %bb.cf
  ], !dbg !5114

bb.z:                                             ; preds = %.preheader
  %i.cf = add i16 %i.bt, -30, !dbg !5158
  %or.cond = icmp ult i16 %i.cf, 8, !dbg !5158
  br i1 %or.cond, label %bb.am, label %bb.al, !dbg !5158

bb.aa:                                            ; preds = %.preheader
    #dbg_value(!DIArgList(i8 %.sroa.0.sroa.49.02068, i8 %.sroa.0.sroa.0.02071, i8 %.sroa.0.sroa.45.02070, i8 undef), !4904, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !5060)
    #dbg_value(!DIArgList(i8 %.sroa.50.sroa.49.02072, i8 %.sroa.50.sroa.0.02075, i8 %.sroa.50.sroa.45.02074, i8 undef), !4904, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !5060)
    #dbg_value(!DIArgList(i8 %.sroa.72.sroa.50.02076, i8 %.sroa.72.sroa.0.02079, i8 %.sroa.72.sroa.48.02078, i8 undef), !4904, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !5060)
    #dbg_value(i16 %.sroa.89.12017, !4904, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !5060)
    #dbg_value(i16 %.sroa.89.12017, !4848, !DIExpression(), !4902)
  %i.cg = or i16 %.sroa.89.120172338, 1, !dbg !5159
    #dbg_value(i16 %i.cg, !4848, !DIExpression(), !4902)
    #dbg_value(i16 %i.cg, !4904, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !5060)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4703, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4703, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4703, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4703, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4703, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4703, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4703, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4703, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4703, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4703, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4703, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4703, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4957)
    #dbg_value(i16 %i.cg, !4703, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4957)
  br label %bb.ak, !dbg !5160

bb.ab:                                            ; preds = %.preheader
    #dbg_value(!DIArgList(i8 %.sroa.0.sroa.49.02068, i8 %.sroa.0.sroa.0.02071, i8 %.sroa.0.sroa.45.02070, i8 undef), !4898, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !5063)
    #dbg_value(!DIArgList(i8 %.sroa.50.sroa.49.02072, i8 %.sroa.50.sroa.0.02075, i8 %.sroa.50.sroa.45.02074, i8 undef), !4898, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !5063)
    #dbg_value(!DIArgList(i8 %.sroa.72.sroa.50.02076, i8 %.sroa.72.sroa.0.02079, i8 %.sroa.72.sroa.48.02078, i8 undef), !4898, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !5063)
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtCs3Fq4IkdSWsS_8anstream7adapter6winconNtB5_13WinconCaptureNtCshSYD73oCB2Y_13anstyle_parse7Perform12csi_dispatch:bb.a
bb.au:                                            ; preds = %bb.ar
  br label %bb.ak, !dbg !5186

bb.av:                                            ; preds = %bb.ar
  br label %bb.ak, !dbg !5187

bb.aw:                                            ; preds = %bb.ar
  br label %bb.ak, !dbg !5188

bb.ax:                                            ; preds = %bb.ar
  br label %bb.ak, !dbg !5189

bb.ay:                                            ; preds = %bb.ar
  br label %bb.ak, !dbg !5190

bb.az:                                            ; preds = %bb.aq
  br label %bb.ak, !dbg !5191

bb.ba:                                            ; preds = %bb.aq
  br label %bb.ak, !dbg !5192

bb.bb:                                            ; preds = %bb.aq
  br label %bb.ak, !dbg !5193

bb.bc:                                            ; preds = %bb.aq
  br label %bb.ak, !dbg !5194

bb.bd:                                            ; preds = %bb.aq
  br label %bb.ak, !dbg !5195

bb.be:                                            ; preds = %bb.aq
  br label %bb.ak, !dbg !5196

bb.bf:                                            ; preds = %bb.aq
  br label %bb.ak, !dbg !5197

bb.bg:                                            ; preds = %bb.ao
  br label %bb.ak, !dbg !5198

bb.bh:                                            ; preds = %bb.ao
  br label %bb.ak, !dbg !5199

bb.bi:                                            ; preds = %bb.ao
  br label %bb.ak, !dbg !5200

bb.bj:                                            ; preds = %bb.ao
  br label %bb.ak, !dbg !5201

bb.bk:                                            ; preds = %bb.ao
  br label %bb.ak, !dbg !5202

bb.bl:                                            ; preds = %bb.ao
  br label %bb.ak, !dbg !5203

bb.bm:                                            ; preds = %bb.ao
  br label %bb.ak, !dbg !5204

bb.bn:                                            ; preds = %bb.am
  br label %bb.ak, !dbg !5205

bb.bo:                                            ; preds = %bb.am
  br label %bb.ak, !dbg !5206

bb.bp:                                            ; preds = %bb.am
  br label %bb.ak, !dbg !5207

bb.bq:                                            ; preds = %bb.am
  br label %bb.ak, !dbg !5208

bb.br:                                            ; preds = %bb.am
  br label %bb.ak, !dbg !5209

bb.bs:                                            ; preds = %bb.am
  br label %bb.ak, !dbg !5210

bb.bt:                                            ; preds = %bb.am
  br label %bb.ak, !dbg !5211

bb.bu:                                            ; preds = %.preheader2340
    #dbg_value(i8 3, !4704, !DIExpression(), !4963)
    #dbg_value(i16 0, !4705, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4965)
    #dbg_value(i16 undef, !4705, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4965)
    #dbg_value(i16 0, !4706, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !4967)
    #dbg_value(i16 undef, !4706, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !4967)
  br label %.loopexit2341, !dbg !5212

bb.bv:                                            ; preds = %bb.y
    #dbg_value(i16 %i.au, !4718, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5058)
  %.sroa.50.sroa.49.0.insert.shift1378 = shl nuw i32 %.sroa.50.sroa.49.020722276, 24, !dbg !5213
  %.sroa.50.sroa.48.0.insert.ext1261 = zext i8 %.sroa.50.sroa.48.020732269 to i32, !dbg !5213
  %.sroa.50.sroa.48.0.insert.shift1262 = shl nuw nsw i32 %.sroa.50.sroa.48.0.insert.ext1261, 16, !dbg !5213
  %.sroa.50.sroa.48.0.insert.insert1264 = or disjoint i32 %.sroa.50.sroa.48.0.insert.shift1262, %.sroa.50.sroa.49.0.insert.shift1378, !dbg !5213
  %.sroa.50.sroa.45.0.insert.ext1146 = zext i8 %.sroa.50.sroa.45.020742262 to i32, !dbg !5213
  %.sroa.50.sroa.45.0.insert.shift1147 = shl nuw nsw i32 %.sroa.50.sroa.45.0.insert.ext1146, 8, !dbg !5213
  %.sroa.50.sroa.45.0.insert.insert1149 = or disjoint i32 %.sroa.50.sroa.48.0.insert.insert1264, %.sroa.50.sroa.45.0.insert.shift1147, !dbg !5213
  %.sroa.50.sroa.0.0.insert.ext1044 = zext i8 %.sroa.50.sroa.0.020752255 to i32, !dbg !5213
  %.sroa.50.sroa.0.0.insert.insert1046 = or disjoint i32 %.sroa.50.sroa.45.0.insert.insert1149, %.sroa.50.sroa.0.0.insert.ext1044, !dbg !5213
  %.sroa.72.sroa.50.0.insert.shift957 = shl nuw i32 %.sroa.72.sroa.50.020762248, 24, !dbg !5213
  %.sroa.72.sroa.49.0.insert.ext828 = zext i8 %.sroa.72.sroa.49.020772241 to i32, !dbg !5213
  %.sroa.72.sroa.49.0.insert.shift829 = shl nuw nsw i32 %.sroa.72.sroa.49.0.insert.ext828, 16, !dbg !5213
  %.sroa.72.sroa.49.0.insert.insert831 = or disjoint i32 %.sroa.72.sroa.49.0.insert.shift829, %.sroa.72.sroa.50.0.insert.shift957, !dbg !5213
  %.sroa.72.sroa.48.0.insert.ext700 = zext i8 %.sroa.72.sroa.48.020782234 to i32, !dbg !5213
  %.sroa.72.sroa.48.0.insert.shift701 = shl nuw nsw i32 %.sroa.72.sroa.48.0.insert.ext700, 8, !dbg !5213
  %.sroa.72.sroa.48.0.insert.insert703 = or disjoint i32 %.sroa.72.sroa.49.0.insert.insert831, %.sroa.72.sroa.48.0.insert.shift701, !dbg !5213
  %.sroa.72.sroa.0.0.insert.ext584 = zext i8 %.sroa.72.sroa.0.020792227 to i32, !dbg !5213
  %.sroa.72.sroa.0.0.insert.insert586 = or disjoint i32 %.sroa.72.sroa.48.0.insert.insert703, %.sroa.72.sroa.0.0.insert.ext584, !dbg !5213
  br label %bb.aj, !dbg !5214

bb.bw:                                            ; preds = %bb.y
  %.sroa.0.sroa.49.0.insert.shift1741 = shl nuw i32 %.sroa.0.sroa.49.020682304, 24, !dbg !5147
  %.sroa.0.sroa.48.0.insert.ext1624 = zext i8 %.sroa.0.sroa.48.020692297 to i32, !dbg !5147
  %.sroa.0.sroa.48.0.insert.shift1625 = shl nuw nsw i32 %.sroa.0.sroa.48.0.insert.ext1624, 16, !dbg !5147
  %.sroa.0.sroa.48.0.insert.insert1627 = or disjoint i32 %.sroa.0.sroa.48.0.insert.shift1625, %.sroa.0.sroa.49.0.insert.shift1741, !dbg !5147
  %.sroa.0.sroa.45.0.insert.ext1509 = zext i8 %.sroa.0.sroa.45.020702290 to i32, !dbg !5147
  %.sroa.0.sroa.45.0.insert.shift1510 = shl nuw nsw i32 %.sroa.0.sroa.45.0.insert.ext1509, 8, !dbg !5147
  %.sroa.0.sroa.45.0.insert.insert1512 = or disjoint i32 %.sroa.0.sroa.48.0.insert.insert1627, %.sroa.0.sroa.45.0.insert.shift1510, !dbg !5147
  %.sroa.0.sroa.0.0.insert.ext1427 = zext i8 %.sroa.0.sroa.0.020712283 to i32, !dbg !5147
  %.sroa.0.sroa.0.0.insert.insert1429 = or disjoint i32 %.sroa.0.sroa.45.0.insert.insert1512, %.sroa.0.sroa.0.0.insert.ext1427, !dbg !5147
  %.sroa.72.sroa.50.0.insert.shift961 = shl nuw i32 %.sroa.72.sroa.50.020762248, 24, !dbg !5147
  %.sroa.72.sroa.49.0.insert.ext832 = zext i8 %.sroa.72.sroa.49.020772241 to i32, !dbg !5147
  %.sroa.72.sroa.49.0.insert.shift833 = shl nuw nsw i32 %.sroa.72.sroa.49.0.insert.ext832, 16, !dbg !5147
  %.sroa.72.sroa.49.0.insert.insert835 = or disjoint i32 %.sroa.72.sroa.49.0.insert.shift833, %.sroa.72.sroa.50.0.insert.shift961, !dbg !5147
  %.sroa.72.sroa.48.0.insert.ext704 = zext i8 %.sroa.72.sroa.48.020782234 to i32, !dbg !5147
  %.sroa.72.sroa.48.0.insert.shift705 = shl nuw nsw i32 %.sroa.72.sroa.48.0.insert.ext704, 8, !dbg !5147
  %.sroa.72.sroa.48.0.insert.insert707 = or disjoint i32 %.sroa.72.sroa.49.0.insert.insert835, %.sroa.72.sroa.48.0.insert.shift705, !dbg !5147
  %.sroa.72.sroa.0.0.insert.ext587 = zext i8 %.sroa.72.sroa.0.020792227 to i32, !dbg !5147
  %.sroa.72.sroa.0.0.insert.insert589 = or disjoint i32 %.sroa.72.sroa.48.0.insert.insert707, %.sroa.72.sroa.0.0.insert.ext587, !dbg !5147
  br label %bb.aj, !dbg !5215

bb.bx:                                            ; preds = %bb.y
  %.sroa.0.sroa.49.0.insert.shift1745 = shl nuw i32 %.sroa.0.sroa.49.020682304, 24, !dbg !5146
  %.sroa.0.sroa.48.0.insert.ext1628 = zext i8 %.sroa.0.sroa.48.020692297 to i32, !dbg !5146
  %.sroa.0.sroa.48.0.insert.shift1629 = shl nuw nsw i32 %.sroa.0.sroa.48.0.insert.ext1628, 16, !dbg !5146
  %.sroa.0.sroa.48.0.insert.insert1631 = or disjoint i32 %.sroa.0.sroa.48.0.insert.shift1629, %.sroa.0.sroa.49.0.insert.shift1745, !dbg !5146
  %.sroa.0.sroa.45.0.insert.ext1513 = zext i8 %.sroa.0.sroa.45.020702290 to i32, !dbg !5146
  %.sroa.0.sroa.45.0.insert.shift1514 = shl nuw nsw i32 %.sroa.0.sroa.45.0.insert.ext1513, 8, !dbg !5146
  %.sroa.0.sroa.45.0.insert.insert1516 = or disjoint i32 %.sroa.0.sroa.48.0.insert.insert1631, %.sroa.0.sroa.45.0.insert.shift1514, !dbg !5146
  %.sroa.0.sroa.0.0.insert.ext1430 = zext i8 %.sroa.0.sroa.0.020712283 to i32, !dbg !5146
  %.sroa.0.sroa.0.0.insert.insert1432 = or disjoint i32 %.sroa.0.sroa.45.0.insert.insert1516, %.sroa.0.sroa.0.0.insert.ext1430, !dbg !5146
  %.sroa.50.sroa.49.0.insert.shift1382 = shl nuw i32 %.sroa.50.sroa.49.020722276, 24, !dbg !5146
  %.sroa.50.sroa.48.0.insert.ext1265 = zext i8 %.sroa.50.sroa.48.020732269 to i32, !dbg !5146
  %.sroa.50.sroa.48.0.insert.shift1266 = shl nuw nsw i32 %.sroa.50.sroa.48.0.insert.ext1265, 16, !dbg !5146
  %.sroa.50.sroa.48.0.insert.insert1268 = or disjoint i32 %.sroa.50.sroa.48.0.insert.shift1266, %.sroa.50.sroa.49.0.insert.shift1382, !dbg !5146
  %.sroa.50.sroa.45.0.insert.ext1150 = zext i8 %.sroa.50.sroa.45.020742262 to i32, !dbg !5146
  %.sroa.50.sroa.45.0.insert.shift1151 = shl nuw nsw i32 %.sroa.50.sroa.45.0.insert.ext1150, 8, !dbg !5146
  %.sroa.50.sroa.45.0.insert.insert1153 = or disjoint i32 %.sroa.50.sroa.48.0.insert.insert1268, %.sroa.50.sroa.45.0.insert.shift1151, !dbg !5146
  %.sroa.50.sroa.0.0.insert.ext1047 = zext i8 %.sroa.50.sroa.0.020752255 to i32, !dbg !5146
  %.sroa.50.sroa.0.0.insert.insert1049 = or disjoint i32 %.sroa.50.sroa.45.0.insert.insert1153, %.sroa.50.sroa.0.0.insert.ext1047, !dbg !5146
  br label %bb.aj, !dbg !5216

.lr.ph3237:                                       ; preds = %.lr.ph.jt3.peel, %.lr.ph.jt3
  %.sroa.72.sroa.0.0207922253236 = phi i8 [ %.sroa.72.sroa.0.0.extract.trunc597, %.lr.ph.jt3 ], [ %.sroa.72.sroa.0.0.extract.trunc597.peel, %.lr.ph.jt3.peel ] ; 2 uses
  %.sroa.72.sroa.48.0207822323235 = phi i8 [ %.sroa.72.sroa.48.0.extract.trunc719, %.lr.ph.jt3 ], [ %.sroa.72.sroa.48.0.extract.trunc719.peel, %.lr.ph.jt3.peel ] ; 2 uses
  %.sroa.72.sroa.49.0207722393234 = phi i8 [ %.sroa.72.sroa.49.0.extract.trunc847, %.lr.ph.jt3 ], [ %.sroa.72.sroa.49.0.extract.trunc847.peel, %.lr.ph.jt3.peel ] ; 2 uses
  %.sroa.72.sroa.50.0207622463233 = phi i32 [ %.sroa.72.sroa.50.0.extract.shift974, %.lr.ph.jt3 ], [ %.sroa.72.sroa.50.0.extract.shift974.peel, %.lr.ph.jt3.peel ] ; 2 uses
  %.sroa.50.sroa.0.0207522533232 = phi i8 [ %.sroa.50.sroa.0.0.extract.trunc1057, %.lr.ph.jt3 ], [ %.sroa.50.sroa.0.0.extract.trunc1057.peel, %.lr.ph.jt3.peel ] ; 2 uses
  %.sroa.50.sroa.45.0207422603231 = phi i8 [ %.sroa.50.sroa.45.0.extract.trunc1165, %.lr.ph.jt3 ], [ %.sroa.50.sroa.45.0.extract.trunc1165.peel, %.lr.ph.jt3.peel ] ; 2 uses
  %.sroa.50.sroa.48.0207322673230 = phi i8 [ %.sroa.50.sroa.48.0.extract.trunc1280, %.lr.ph.jt3 ], [ %.sroa.50.sroa.48.0.extract.trunc1280.peel, %.lr.ph.jt3.peel ] ; 2 uses
  %.sroa.50.sroa.49.0207222743229 = phi i32 [ %.sroa.50.sroa.49.0.extract.shift1395, %.lr.ph.jt3 ], [ %.sroa.50.sroa.49.0.extract.shift1395.peel, %.lr.ph.jt3.peel ] ; 2 uses
  %.sroa.0.sroa.0.0207122813228 = phi i8 [ %.sroa.0.sroa.0.0.extract.trunc1440, %.lr.ph.jt3 ], [ %.sroa.0.sroa.0.0.extract.trunc1440.peel, %.lr.ph.jt3.peel ] ; 2 uses
  %.sroa.0.sroa.45.0207022883227 = phi i8 [ %.sroa.0.sroa.45.0.extract.trunc1528, %.lr.ph.jt3 ], [ %.sroa.0.sroa.45.0.extract.trunc1528.peel, %.lr.ph.jt3.peel ] ; 2 uses
  %.sroa.0.sroa.48.0206922953226 = phi i8 [ %.sroa.0.sroa.48.0.extract.trunc1643, %.lr.ph.jt3 ], [ %.sroa.0.sroa.48.0.extract.trunc1643.peel, %.lr.ph.jt3.peel ] ; 2 uses
  %.sroa.0.sroa.49.0206823023225 = phi i32 [ %.sroa.0.sroa.49.0.extract.shift1758, %.lr.ph.jt3 ], [ %.sroa.0.sroa.49.0.extract.shift1758.peel, %.lr.ph.jt3.peel ] ; 2 uses
  %i.dg = phi i16 [ %i.bo, %.lr.ph.jt3 ], [ %i.bh, %.lr.ph.jt3.peel ]
    #dbg_value(i16 %.sroa.4148.12019, !4720, !DIExpression(), !5049)
    #dbg_value(i16 %.sroa.4150.12021, !4721, !DIExpression(), !5049)
    #dbg_value(i16 %.sroa.4148.12019, !4722, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5051)
    #dbg_value(i16 %.sroa.4150.12021, !4722, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5051)
    #dbg_value(i16 %i.au, !4722, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 8), !5051)
  %i.dh = and i16 %i.dg, 255, !dbg !5051
  %.sroa.6194.0.insert.ext = zext nneg i16 %i.dh to i32, !dbg !5051
  %.sroa.6194.0.insert.shift = shl nuw i32 %.sroa.6194.0.insert.ext, 24, !dbg !5051 ; 3 uses
  switch i8 %.sroa.05.12023, label %default.unreachable2211 [
    i8 0, label %bb.by
    i8 1, label %bb.bz
    i8 2, label %bb.ca
  ], !dbg !5150

bb.by:                                            ; preds = %.lr.ph3237
    #dbg_value(i16 %.sroa.4148.12019, !4722, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !5051)
    #dbg_value(i16 %.sroa.4150.12021, !4722, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 8), !5051)
    #dbg_value(i16 %i.au, !4722, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 16, 8), !5051)
  %.sroa.50.sroa.49.0.insert.shift1388 = shl nuw i32 %.sroa.50.sroa.49.0207222743229, 24, !dbg !5155
  %.sroa.50.sroa.48.0.insert.ext1271 = zext i8 %.sroa.50.sroa.48.0207322673230 to i32, !dbg !5155
  %.sroa.50.sroa.48.0.insert.shift1272 = shl nuw nsw i32 %.sroa.50.sroa.48.0.insert.ext1271, 16, !dbg !5155
  %.sroa.50.sroa.48.0.insert.insert1274 = or disjoint i32 %.sroa.50.sroa.48.0.insert.shift1272, %.sroa.50.sroa.49.0.insert.shift1388, !dbg !5155
  %.sroa.50.sroa.45.0.insert.ext1156 = zext i8 %.sroa.50.sroa.45.0207422603231 to i32, !dbg !5155
  %.sroa.50.sroa.45.0.insert.shift1157 = shl nuw nsw i32 %.sroa.50.sroa.45.0.insert.ext1156, 8, !dbg !5155
  %.sroa.50.sroa.45.0.insert.insert1159 = or disjoint i32 %.sroa.50.sroa.48.0.insert.insert1274, %.sroa.50.sroa.45.0.insert.shift1157, !dbg !5155
  %.sroa.50.sroa.0.0.insert.ext1051 = zext i8 %.sroa.50.sroa.0.0207522533232 to i32, !dbg !5155
  %.sroa.50.sroa.0.0.insert.insert1053 = or disjoint i32 %.sroa.50.sroa.45.0.insert.insert1159, %.sroa.50.sroa.0.0.insert.ext1051, !dbg !5155
  %.sroa.72.sroa.50.0.insert.shift967 = shl nuw i32 %.sroa.72.sroa.50.0207622463233, 24, !dbg !5155
  %.sroa.72.sroa.49.0.insert.ext838 = zext i8 %.sroa.72.sroa.49.0207722393234 to i32, !dbg !5155
  %.sroa.72.sroa.49.0.insert.shift839 = shl nuw nsw i32 %.sroa.72.sroa.49.0.insert.ext838, 16, !dbg !5155
  %.sroa.72.sroa.49.0.insert.insert841 = or disjoint i32 %.sroa.72.sroa.49.0.insert.shift839, %.sroa.72.sroa.50.0.insert.shift967, !dbg !5155
  %.sroa.72.sroa.48.0.insert.ext710 = zext i8 %.sroa.72.sroa.48.0207822323235 to i32, !dbg !5155
  %.sroa.72.sroa.48.0.insert.shift711 = shl nuw nsw i32 %.sroa.72.sroa.48.0.insert.ext710, 8, !dbg !5155
  %.sroa.72.sroa.48.0.insert.insert713 = or disjoint i32 %.sroa.72.sroa.49.0.insert.insert841, %.sroa.72.sroa.48.0.insert.shift711, !dbg !5155
  %.sroa.72.sroa.0.0.insert.ext591 = zext i8 %.sroa.72.sroa.0.0207922253236 to i32, !dbg !5155
  %.sroa.72.sroa.0.0.insert.insert593 = or disjoint i32 %.sroa.72.sroa.48.0.insert.insert713, %.sroa.72.sroa.0.0.insert.ext591, !dbg !5155
  %.sroa.0191.0.insert.insert.reass = or disjoint i32 %.sroa.6194.0.insert.shift, %invariant.op2803
  br label %bb.ai, !dbg !5156

bb.bz:                                            ; preds = %.lr.ph3237
  %.sroa.0.sroa.49.0.insert.shift1751 = shl nuw i32 %.sroa.0.sroa.49.0206823023225, 24, !dbg !5153
  %.sroa.0.sroa.48.0.insert.ext1634 = zext i8 %.sroa.0.sroa.48.0206922953226 to i32, !dbg !5153
  %.sroa.0.sroa.48.0.insert.shift1635 = shl nuw nsw i32 %.sroa.0.sroa.48.0.insert.ext1634, 16, !dbg !5153
  %.sroa.0.sroa.48.0.insert.insert1637 = or disjoint i32 %.sroa.0.sroa.48.0.insert.shift1635, %.sroa.0.sroa.49.0.insert.shift1751, !dbg !5153
  %.sroa.0.sroa.45.0.insert.ext1519 = zext i8 %.sroa.0.sroa.45.0207022883227 to i32, !dbg !5153
  %.sroa.0.sroa.45.0.insert.shift1520 = shl nuw nsw i32 %.sroa.0.sroa.45.0.insert.ext1519, 8, !dbg !5153
  %.sroa.0.sroa.45.0.insert.insert1522 = or disjoint i32 %.sroa.0.sroa.48.0.insert.insert1637, %.sroa.0.sroa.45.0.insert.shift1520, !dbg !5153
  %.sroa.0.sroa.0.0.insert.ext1434 = zext i8 %.sroa.0.sroa.0.0207122813228 to i32, !dbg !5153
  %.sroa.0.sroa.0.0.insert.insert1436 = or disjoint i32 %.sroa.0.sroa.45.0.insert.insert1522, %.sroa.0.sroa.0.0.insert.ext1434, !dbg !5153
  %.sroa.72.sroa.50.0.insert.shift971 = shl nuw i32 %.sroa.72.sroa.50.0207622463233, 24, !dbg !5153
  %.sroa.72.sroa.49.0.insert.ext842 = zext i8 %.sroa.72.sroa.49.0207722393234 to i32, !dbg !5153
  %.sroa.72.sroa.49.0.insert.shift843 = shl nuw nsw i32 %.sroa.72.sroa.49.0.insert.ext842, 16, !dbg !5153
  %.sroa.72.sroa.49.0.insert.insert845 = or disjoint i32 %.sroa.72.sroa.49.0.insert.shift843, %.sroa.72.sroa.50.0.insert.shift971, !dbg !5153
  %.sroa.72.sroa.48.0.insert.ext714 = zext i8 %.sroa.72.sroa.48.0207822323235 to i32, !dbg !5153
  %.sroa.72.sroa.48.0.insert.shift715 = shl nuw nsw i32 %.sroa.72.sroa.48.0.insert.ext714, 8, !dbg !5153
  %.sroa.72.sroa.48.0.insert.insert717 = or disjoint i32 %.sroa.72.sroa.49.0.insert.insert845, %.sroa.72.sroa.48.0.insert.shift715, !dbg !5153
  %.sroa.72.sroa.0.0.insert.ext594 = zext i8 %.sroa.72.sroa.0.0207922253236 to i32, !dbg !5153
  %.sroa.72.sroa.0.0.insert.insert596 = or disjoint i32 %.sroa.72.sroa.48.0.insert.insert717, %.sroa.72.sroa.0.0.insert.ext594, !dbg !5153
  %.sroa.0196.0.insert.insert.reass = or disjoint i32 %.sroa.6194.0.insert.shift, %invariant.op2801
  br label %bb.ai, !dbg !5154

bb.ca:                                            ; preds = %.lr.ph3237
  %.sroa.0.sroa.49.0.insert.shift1755 = shl nuw i32 %.sroa.0.sroa.49.0206823023225, 24, !dbg !5151
  %.sroa.0.sroa.48.0.insert.ext1638 = zext i8 %.sroa.0.sroa.48.0206922953226 to i32, !dbg !5151
  %.sroa.0.sroa.48.0.insert.shift1639 = shl nuw nsw i32 %.sroa.0.sroa.48.0.insert.ext1638, 16, !dbg !5151
  %.sroa.0.sroa.48.0.insert.insert1641 = or disjoint i32 %.sroa.0.sroa.48.0.insert.shift1639, %.sroa.0.sroa.49.0.insert.shift1755, !dbg !5151
  %.sroa.0.sroa.45.0.insert.ext1523 = zext i8 %.sroa.0.sroa.45.0207022883227 to i32, !dbg !5151
  %.sroa.0.sroa.45.0.insert.shift1524 = shl nuw nsw i32 %.sroa.0.sroa.45.0.insert.ext1523, 8, !dbg !5151
  %.sroa.0.sroa.45.0.insert.insert1526 = or disjoint i32 %.sroa.0.sroa.48.0.insert.insert1641, %.sroa.0.sroa.45.0.insert.shift1524, !dbg !5151
  %.sroa.0.sroa.0.0.insert.ext1437 = zext i8 %.sroa.0.sroa.0.0207122813228 to i32, !dbg !5151
  %.sroa.0.sroa.0.0.insert.insert1439 = or disjoint i32 %.sroa.0.sroa.45.0.insert.insert1526, %.sroa.0.sroa.0.0.insert.ext1437, !dbg !5151
  %.sroa.50.sroa.49.0.insert.shift1392 = shl nuw i32 %.sroa.50.sroa.49.0207222743229, 24, !dbg !5151
  %.sroa.50.sroa.48.0.insert.ext1275 = zext i8 %.sroa.50.sroa.48.0207322673230 to i32, !dbg !5151
  %.sroa.50.sroa.48.0.insert.shift1276 = shl nuw nsw i32 %.sroa.50.sroa.48.0.insert.ext1275, 16, !dbg !5151
  %.sroa.50.sroa.48.0.insert.insert1278 = or disjoint i32 %.sroa.50.sroa.48.0.insert.shift1276, %.sroa.50.sroa.49.0.insert.shift1392, !dbg !5151
  %.sroa.50.sroa.45.0.insert.ext1160 = zext i8 %.sroa.50.sroa.45.0207422603231 to i32, !dbg !5151
  %.sroa.50.sroa.45.0.insert.shift1161 = shl nuw nsw i32 %.sroa.50.sroa.45.0.insert.ext1160, 8, !dbg !5151
  %.sroa.50.sroa.45.0.insert.insert1163 = or disjoint i32 %.sroa.50.sroa.48.0.insert.insert1278, %.sroa.50.sroa.45.0.insert.shift1161, !dbg !5151
  %.sroa.50.sroa.0.0.insert.ext1054 = zext i8 %.sroa.50.sroa.0.0207522533232 to i32, !dbg !5151
  %.sroa.50.sroa.0.0.insert.insert1056 = or disjoint i32 %.sroa.50.sroa.45.0.insert.insert1163, %.sroa.50.sroa.0.0.insert.ext1054, !dbg !5151
  %.sroa.0201.0.insert.insert.reass = or disjoint i32 %.sroa.6194.0.insert.shift, %invariant.op2799
  br label %bb.ai, !dbg !5152

bb.cb:                                            ; preds = %.preheader2348
    #dbg_value(i16 %.sroa.89.12017, !4908, !DIExpression(), !4911)
  %i.di = and i16 %.sroa.89.12017, -9, !dbg !5217
    #dbg_value(i16 %i.di, !4908, !DIExpression(), !4911)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4703, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4703, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4703, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4703, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4703, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4703, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4703, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4703, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4703, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4703, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4703, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4703, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4957)
    #dbg_value(i16 %i.di, !4703, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4957)
  br label %.loopexit2341, !dbg !5218

bb.cc:                                            ; preds = %.preheader2348
    #dbg_value(!DIArgList(i8 %.sroa.0.sroa.49.02068, i8 %.sroa.0.sroa.0.02071, i8 %.sroa.0.sroa.45.02070, i8 undef), !4918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !4921)
    #dbg_value(!DIArgList(i8 %.sroa.50.sroa.49.02072, i8 %.sroa.50.sroa.0.02075, i8 %.sroa.50.sroa.45.02074, i8 undef), !4918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !4921)
    #dbg_value(!DIArgList(i8 %.sroa.72.sroa.50.02076, i8 %.sroa.72.sroa.0.02079, i8 %.sroa.72.sroa.48.02078, i8 undef), !4918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !4921)
    #dbg_value(i16 poison, !4918, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4921)
    #dbg_value(i16 %.sroa.89.12017, !4908, !DIExpression(), !4913)
  %i.dj = and i16 %.sroa.89.12017, -25, !dbg !5219
    #dbg_value(i16 %.sroa.89.12017, !4908, !DIExpression(DW_OP_constu, 18446744073709551591, DW_OP_and, DW_OP_stack_value), !4913)
    #dbg_value(i16 %.sroa.89.12017, !4918, !DIExpression(DW_OP_constu, 18446744073709551591, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 16), !4921)
    #dbg_value(ptr undef, !4876, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !5098)
    #dbg_value(i16 %.sroa.89.12017, !4848, !DIExpression(DW_OP_constu, 18446744073709551591, DW_OP_and, DW_OP_stack_value), !4926)
  %i.dk = or disjoint i16 %i.dj, 16, !dbg !5220
    #dbg_value(i16 %i.dk, !4848, !DIExpression(), !4926)
    #dbg_value(i16 %i.dk, !4918, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4921)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4703, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4703, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4703, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4703, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4703, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4703, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4703, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4703, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4703, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4703, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4703, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4703, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4957)
    #dbg_value(i16 %i.dk, !4703, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4957)
  br label %.loopexit2341, !dbg !5221

bb.cd:                                            ; preds = %.preheader2348
    #dbg_value(!DIArgList(i8 %.sroa.0.sroa.49.02068, i8 %.sroa.0.sroa.0.02071, i8 %.sroa.0.sroa.45.02070, i8 undef), !4918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !4930)
    #dbg_value(!DIArgList(i8 %.sroa.50.sroa.49.02072, i8 %.sroa.50.sroa.0.02075, i8 %.sroa.50.sroa.45.02074, i8 undef), !4918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !4930)
    #dbg_value(!DIArgList(i8 %.sroa.72.sroa.50.02076, i8 %.sroa.72.sroa.0.02079, i8 %.sroa.72.sroa.48.02078, i8 undef), !4918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !4930)
    #dbg_value(i16 poison, !4918, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4930)
    #dbg_value(i16 %.sroa.89.12017, !4908, !DIExpression(), !4928)
  %i.dl = and i16 %.sroa.89.12017, -41, !dbg !5222
    #dbg_value(i16 %.sroa.89.12017, !4908, !DIExpression(DW_OP_constu, 18446744073709551575, DW_OP_and, DW_OP_stack_value), !4928)
    #dbg_value(i16 %.sroa.89.12017, !4918, !DIExpression(DW_OP_constu, 18446744073709551575, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 16), !4930)
    #dbg_value(ptr undef, !4876, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !5101)
    #dbg_value(i16 %.sroa.89.12017, !4848, !DIExpression(DW_OP_constu, 18446744073709551575, DW_OP_and, DW_OP_stack_value), !4936)
  %i.dm = or disjoint i16 %i.dl, 32, !dbg !5223
    #dbg_value(i16 %i.dm, !4848, !DIExpression(), !4936)
    #dbg_value(i16 %i.dm, !4918, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4930)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4703, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4703, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4703, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4703, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4703, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4703, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4703, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4703, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4703, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4703, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4703, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4703, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4957)
    #dbg_value(i16 %i.dm, !4703, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4957)
  br label %.loopexit2341, !dbg !5224

bb.ce:                                            ; preds = %.preheader2348
    #dbg_value(!DIArgList(i8 %.sroa.0.sroa.49.02068, i8 %.sroa.0.sroa.0.02071, i8 %.sroa.0.sroa.45.02070, i8 undef), !4918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !4940)
    #dbg_value(!DIArgList(i8 %.sroa.50.sroa.49.02072, i8 %.sroa.50.sroa.0.02075, i8 %.sroa.50.sroa.45.02074, i8 undef), !4918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !4940)
    #dbg_value(!DIArgList(i8 %.sroa.72.sroa.50.02076, i8 %.sroa.72.sroa.0.02079, i8 %.sroa.72.sroa.48.02078, i8 undef), !4918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !4940)
    #dbg_value(i16 poison, !4918, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4940)
    #dbg_value(i16 %.sroa.89.12017, !4908, !DIExpression(), !4938)
  %i.dn = and i16 %.sroa.89.12017, -73, !dbg !5225
    #dbg_value(i16 %.sroa.89.12017, !4908, !DIExpression(DW_OP_constu, 18446744073709551543, DW_OP_and, DW_OP_stack_value), !4938)
    #dbg_value(i16 %.sroa.89.12017, !4918, !DIExpression(DW_OP_constu, 18446744073709551543, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 16), !4940)
    #dbg_value(ptr undef, !4876, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !5104)
    #dbg_value(i16 %.sroa.89.12017, !4848, !DIExpression(DW_OP_constu, 18446744073709551543, DW_OP_and, DW_OP_stack_value), !4946)
  %i.do = or disjoint i16 %i.dn, 64, !dbg !5226
    #dbg_value(i16 %i.do, !4848, !DIExpression(), !4946)
    #dbg_value(i16 %i.do, !4918, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4940)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4703, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4703, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4703, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4703, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4703, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4703, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4703, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4703, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4703, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4703, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4703, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4703, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4957)
    #dbg_value(i16 %i.do, !4703, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4957)
  br label %.loopexit2341, !dbg !5227

bb.cf:                                            ; preds = %.preheader2348
    #dbg_value(!DIArgList(i8 %.sroa.0.sroa.49.02068, i8 %.sroa.0.sroa.0.02071, i8 %.sroa.0.sroa.45.02070, i8 undef), !4918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32), !4950)
    #dbg_value(!DIArgList(i8 %.sroa.50.sroa.49.02072, i8 %.sroa.50.sroa.0.02075, i8 %.sroa.50.sroa.45.02074, i8 undef), !4918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 32), !4950)
    #dbg_value(!DIArgList(i8 %.sroa.72.sroa.50.02076, i8 %.sroa.72.sroa.0.02079, i8 %.sroa.72.sroa.48.02078, i8 undef), !4918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 24, DW_OP_shl, DW_OP_LLVM_arg, 3, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 16, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 32), !4950)
    #dbg_value(i16 poison, !4918, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4950)
    #dbg_value(i16 %.sroa.89.12017, !4908, !DIExpression(), !4948)
  %i.dp = and i16 %.sroa.89.12017, -137, !dbg !5228
    #dbg_value(i16 %.sroa.89.12017, !4908, !DIExpression(DW_OP_constu, 18446744073709551479, DW_OP_and, DW_OP_stack_value), !4948)
    #dbg_value(i16 %.sroa.89.12017, !4918, !DIExpression(DW_OP_constu, 18446744073709551479, DW_OP_and, DW_OP_stack_value, DW_OP_LLVM_fragment, 96, 16), !4950)
    #dbg_value(ptr undef, !4876, !DIExpression(DW_OP_plus_uconst, 12, DW_OP_stack_value), !5107)
    #dbg_value(i16 %.sroa.89.12017, !4848, !DIExpression(DW_OP_constu, 18446744073709551479, DW_OP_and, DW_OP_stack_value), !4956)
  %i.dq = or disjoint i16 %i.dp, 128, !dbg !5229
    #dbg_value(i16 %i.dq, !4848, !DIExpression(), !4956)
    #dbg_value(i16 %i.dq, !4918, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4950)
    #dbg_value(i8 %.sroa.0.sroa.0.02071, !4703, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.45.02070, !4703, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.48.02069, !4703, !DIExpression(DW_OP_LLVM_fragment, 16, 8), !4957)
    #dbg_value(i8 %.sroa.0.sroa.49.02068, !4703, !DIExpression(DW_OP_LLVM_fragment, 24, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.0.02075, !4703, !DIExpression(DW_OP_LLVM_fragment, 32, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.45.02074, !4703, !DIExpression(DW_OP_LLVM_fragment, 40, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.48.02073, !4703, !DIExpression(DW_OP_LLVM_fragment, 48, 8), !4957)
    #dbg_value(i8 %.sroa.50.sroa.49.02072, !4703, !DIExpression(DW_OP_LLVM_fragment, 56, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.0.02079, !4703, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.48.02078, !4703, !DIExpression(DW_OP_LLVM_fragment, 72, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.49.02077, !4703, !DIExpression(DW_OP_LLVM_fragment, 80, 8), !4957)
    #dbg_value(i8 %.sroa.72.sroa.50.02076, !4703, !DIExpression(DW_OP_LLVM_fragment, 88, 8), !4957)
    #dbg_value(i16 %i.dq, !4703, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !4957)
  br label %.loopexit2341, !dbg !5230
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCs3Fq4IkdSWsS_8anstream7adapter6winconNtB5_13WinconCaptureNtCshSYD73oCB2Y_13anstyle_parse7Perform5print(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 !dbg !5231 {
bb.a:
    #dbg_value(ptr %0, !5298, !DIExpression(), !5301)
    #dbg_value(i32 %1, !5299, !DIExpression(), !5301)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5302), !dbg !5312
    #dbg_value(ptr %0, !1671, !DIExpression(), !5235)
    #dbg_value(ptr %0, !1679, !DIExpression(), !5237)
    #dbg_value(ptr %0, !1681, !DIExpression(), !5239)
    #dbg_value(i32 %1, !1675, !DIExpression(), !5235)
    #dbg_value(i32 %1, !5303, !DIExpression(), !5242)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5313 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !5313, !alias.scope !5302, !noundef !621 ; 5 uses
    #dbg_value(i64 %i.b, !1676, !DIExpression(), !5244)
    #dbg_value(i64 %i.b, !1688, !DIExpression(), !5246)
  %i.c = icmp sgt i64 %i.b, -1, !dbg !5314
  tail call void @llvm.assume(i1 %i.c), !dbg !5315
    #dbg_value(i32 %1, !5307, !DIExpression(), !5249)
  %i.d = icmp samesign ult i32 %1, 128, !dbg !5316 ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b, !dbg !5316

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048, !dbg !5317
  br i1 %i.e, label %bb.d, label %bb.c, !dbg !5317

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536, !dbg !5318
  %..i = select i1 %i.f, i64 3, i64 4, !dbg !5319
  br label %bb.d, !dbg !5319

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ], !dbg !5319 ; 3 uses
    #dbg_value(i64 %.sroa.0.0.i, !1677, !DIExpression(), !5250)
    #dbg_value(i64 %.sroa.0.0.i, !1682, !DIExpression(), !5239)
    #dbg_value(ptr %0, !1450, !DIExpression(), !5252)
    #dbg_value(i64 %.sroa.0.0.i, !1454, !DIExpression(), !5252)
    #dbg_value(i64 %.sroa.0.0.i, !1456, !DIExpression(), !5254)
    #dbg_value(i64 %.sroa.0.0.i, !1464, !DIExpression(), !5256)
    #dbg_value(i64 %.sroa.0.0.i, !1471, !DIExpression(), !5258)
    #dbg_value(ptr %0, !1461, !DIExpression(), !5259)
    #dbg_value(i64 %i.b, !1462, !DIExpression(), !5254)
    #dbg_value(i64 %i.b, !1468, !DIExpression(), !5256)
    #dbg_value(i64 %i.b, !1477, !DIExpression(), !5258)
    #dbg_value(i64 %i.b, !1480, !DIExpression(), !5261)
    #dbg_value(ptr %0, !1467, !DIExpression(), !5256)
    #dbg_value(ptr %0, !1476, !DIExpression(), !5258)
    #dbg_value(ptr %0, !1483, !DIExpression(), !5263)
    #dbg_value(i64 1, !1469, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5256)
    #dbg_value(i64 1, !1478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5258)
    #dbg_value(i64 1, !1469, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5256)
    #dbg_value(i64 1, !1478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5258)
    #dbg_value(i64 1, !1487, !DIExpression(), !5263)
  %i.g = load i64, ptr %0, align 8, !dbg !5320, !range !1278, !alias.scope !5309, !noundef !621
    #dbg_value(i64 %i.g, !1481, !DIExpression(), !5261)
  %i.h = sub nsw i64 %i.g, %i.b, !dbg !5321
  %i.i = icmp ugt i64 %.sroa.0.0.i, %i.h, !dbg !5322
  br i1 %i.i, label %bb.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs3Fq4IkdSWsS_8anstream.exit.i, !dbg !5323, !prof !1166

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3Fq4IkdSWsS_8anstream(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i), !dbg !5324
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs3Fq4IkdSWsS_8anstream.exit.i, !dbg !5324

end_hunk_1
