Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_formatter-8484042226fb24b2.ruff_python_formatter.6465bac6d8d74cf2-cgu.02?download=true
inline.NumInlined: 516
inline.NumDeleted: 250
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNCNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression7expr_ifNtB6_12FormatExprIfINtBa_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated6ExprIfE10fmt_fields0Ba_:.lr.ph.i
.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !260
  call void @_RNvXs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11parenthesesNtB5_26InParenthesesOnlyLineBreakINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.l, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !261, !inline_history !0
  %i.av = load i32, ptr %i.b, align 8, !range !10, !noalias !260, !noundef !4 ; 2 uses
  %.not.i.1 = icmp eq i32 %i.av, -1
  br i1 %.not.i.1, label %.lr.ph.i.2, label %bb.b

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !260
  call void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB2_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.k, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !261, !inline_history !0
  %i.aw = load i32, ptr %i.b, align 8, !range !10, !noalias !260, !noundef !4 ; 2 uses
  %.not.i.2 = icmp eq i32 %i.aw, -1
  br i1 %.not.i.2, label %.lr.ph.i.3, label %bb.b

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !260
  call void @_RNvXs1_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_5TokenINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.j, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !261, !inline_history !0
  %i.ax = load i32, ptr %i.b, align 8, !range !10, !noalias !260, !noundef !4 ; 2 uses
  %.not.i.3 = icmp eq i32 %i.ax, -1
  br i1 %.not.i.3, label %.lr.ph.i.4, label %bb.b

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !260
  call void @_RNvXsc_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_5SpaceINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !261, !inline_history !0
  %i.ay = load i32, ptr %i.b, align 8, !range !10, !noalias !260, !noundef !4 ; 2 uses
  %.not.i.4 = icmp eq i32 %i.ay, -1
  br i1 %.not.i.4, label %.lr.ph.i.5, label %bb.b

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !260
  call void @_RNvXs_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB4_10FormatExprINtCs7Ma6rQP8bRy_14ruff_formatter10FormatRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ag, ptr noundef nonnull align 8 %i.t, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !261
  %i.az = load i32, ptr %i.b, align 8, !range !10, !noalias !260, !noundef !4 ; 2 uses
  %.not.i.5 = icmp eq i32 %i.az, -1
  br i1 %.not.i.5, label %.lr.ph.i.6, label %bb.b

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !260
  call void @_RNvXs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11parenthesesNtB5_26InParenthesesOnlyLineBreakINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.h, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !261, !inline_history !0
  %i.ba = load i32, ptr %i.b, align 8, !range !10, !noalias !260, !noundef !4 ; 2 uses
  %.not.i.6 = icmp eq i32 %i.ba, -1
  br i1 %.not.i.6, label %.lr.ph.i.7, label %bb.b

.lr.ph.i.7:                                       ; preds = %.lr.ph.i.6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !260
  call void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB2_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !261, !inline_history !0
  %i.bb = load i32, ptr %i.b, align 8, !range !10, !noalias !260, !noundef !4 ; 2 uses
  %.not.i.7 = icmp eq i32 %i.bb, -1
  br i1 %.not.i.7, label %.lr.ph.i.8, label %bb.b

.lr.ph.i.8:                                       ; preds = %.lr.ph.i.7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !260
  call void @_RNvXs1_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_5TokenINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !261, !inline_history !0
  %i.bc = load i32, ptr %i.b, align 8, !range !10, !noalias !260, !noundef !4 ; 2 uses
  %.not.i.8 = icmp eq i32 %i.bc, -1
  br i1 %.not.i.8, label %.lr.ph.i.9, label %bb.b

.lr.ph.i.9:                                       ; preds = %.lr.ph.i.8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !260
  call void @_RNvXsc_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_5SpaceINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !261, !inline_history !0
  %i.bd = load i32, ptr %i.b, align 8, !range !10, !noalias !260, !noundef !4 ; 2 uses
  %.not.i.9 = icmp eq i32 %i.bd, -1
  br i1 %.not.i.9, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i.9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.aj, ptr %i.e, align 8
  call void @_RNvXs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression7expr_ifNtB5_12FormatOrElseINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.9, %.lr.ph.i.8, %.lr.ph.i.7, %.lr.ph.i.6, %.lr.ph.i.5, %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i
  %.lcssa = phi i32 [ %i.au, %.lr.ph.i ], [ %i.av, %.lr.ph.i.1 ], [ %i.aw, %.lr.ph.i.2 ], [ %i.ax, %.lr.ph.i.3 ], [ %i.ay, %.lr.ph.i.4 ], [ %i.az, %.lr.ph.i.5 ], [ %i.ba, %.lr.ph.i.6 ], [ %i.bb, %.lr.ph.i.7 ], [ %i.bc, %.lr.ph.i.8 ], [ %i.bd, %.lr.ph.i.9 ]
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.411.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx2, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i32 %.lcssa, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 13) i8 @_RNvMs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_25FlatBinaryExpressionSlice17lowest_precedence(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.idx = shl i64 %1, 5                           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !range !11, !alias.scope !300, !noalias !301, !noundef !4
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %.lr.ph.i.i.i.i.i._crit_edge.thread, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatoruINtNtNtBf_3ops12control_flow11ControlFlowTNtB28_13OperatorIndexRNtB28_8OperatorEENCINvNvB1e_8find_map5checkTjB25_EB4b_QNCNvMs1_B28_NtB28_25FlatBinaryExpressionSlice9operators0E0E0B2c_.exit.i.i.i.i.i.i.preheader

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatoruINtNtNtBf_3ops12control_flow11ControlFlowTNtB28_13OperatorIndexRNtB28_8OperatorEENCINvNvB1e_8find_map5checkTjB25_EB4b_QNCNvMs1_B28_NtB28_25FlatBinaryExpressionSlice9operators0E0E0B2c_.exit.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.g = icmp samesign eq i64 %.idx, 32
  br i1 %i.g, label %.loopexit, label %.lr.ph.i.i.i.i.i.preheader37

.lr.ph.i.i.i.i.i.preheader37:                     ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatoruINtNtNtBf_3ops12control_flow11ControlFlowTNtB28_13OperatorIndexRNtB28_8OperatorEENCINvNvB1e_8find_map5checkTjB25_EB4b_QNCNvMs1_B28_NtB28_25FlatBinaryExpressionSlice9operators0E0E0B2c_.exit.i.i.i.i.i.i.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i._crit_edge.thread:               ; preds = %.lr.ph.i.i.i.i.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !302
  store i64 0, ptr %i.a, align 8, !noalias !302
  br label %bb.b

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader37, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatoruINtNtNtBf_3ops12control_flow11ControlFlowTNtB28_13OperatorIndexRNtB28_8OperatorEENCINvNvB1e_8find_map5checkTjB25_EB4b_QNCNvMs1_B28_NtB28_25FlatBinaryExpressionSlice9operators0E0E0B2c_.exit.i.i.i.i.i.i
  %i.i = phi i64 [ %i.k, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatoruINtNtNtBf_3ops12control_flow11ControlFlowTNtB28_13OperatorIndexRNtB28_8OperatorEENCINvNvB1e_8find_map5checkTjB25_EB4b_QNCNvMs1_B28_NtB28_25FlatBinaryExpressionSlice9operators0E0E0B2c_.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader37 ] ; 2 uses
  %i.j = phi ptr [ %i.l, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatoruINtNtNtBf_3ops12control_flow11ControlFlowTNtB28_13OperatorIndexRNtB28_8OperatorEENCINvNvB1e_8find_map5checkTjB25_EB4b_QNCNvMs1_B28_NtB28_25FlatBinaryExpressionSlice9operators0E0E0B2c_.exit.i.i.i.i.i.i ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader37 ] ; 4 uses
  %i.k = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 3 uses
  %i.m = load i64, ptr %i.j, align 8, !range !11, !alias.scope !303, !noalias !301, !noundef !4
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %.lr.ph.i.i.i.i.i._crit_edge, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatoruINtNtNtBf_3ops12control_flow11ControlFlowTNtB28_13OperatorIndexRNtB28_8OperatorEENCINvNvB1e_8find_map5checkTjB25_EB4b_QNCNvMs1_B28_NtB28_25FlatBinaryExpressionSlice9operators0E0E0B2c_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i._crit_edge:                      ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.l, ptr %i.b, align 8, !alias.scope !304, !noalias !299
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !302
  %i.o = and i64 %i.k, 1                          ; 2 uses
  store i64 %i.o, ptr %i.a, align 8, !noalias !302
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i._crit_edge.thread, %.lr.ph.i.i.i.i.i._crit_edge
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @27, ptr noundef nonnull @28, ptr nonnull inttoptr (i64 77 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #22, !noalias !302
  unreachable

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatoruINtNtNtBf_3ops12control_flow11ControlFlowTNtB28_13OperatorIndexRNtB28_8OperatorEENCINvNvB1e_8find_map5checkTjB25_EB4b_QNCNvMs1_B28_NtB28_25FlatBinaryExpressionSlice9operators0E0E0B2c_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.p = icmp eq ptr %i.l, %i.c
  br i1 %i.p, label %.loopexit, label %.lr.ph.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !302
  %i.q = add nuw i64 %i.i, 2
  store i64 %i.q, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !305, !noalias !306
  %i.r = getelementptr i8, ptr %i.j, i64 24
  %.val.i.i = load i8, ptr %i.r, align 8, !range !13, !noalias !307, !noundef !4
  switch i8 %.val.i.i, label %default.unreachable [
    i8 0, label %switch.lookup
    i8 1, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatorEENCNvMs1_B2f_NtB2f_25FlatBinaryExpressionSlice9operators0ENCNvB3I_17lowest_precedence0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB52_6max_by4foldNtB2h_18OperatorPrecedenceNvYB64_NtNtBc_3cmp3Ord3cmpE0EB2j_.exit
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.c
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.j, i64 25
  %.val4.i.i = load i8, ptr %i.s, align 1, !noalias !307
  %i.t = zext nneg i8 %.val4.i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_25FlatBinaryExpressionSliceINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt, i64 %i.t
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatorEENCNvMs1_B2f_NtB2f_25FlatBinaryExpressionSlice9operators0ENCNvB3I_17lowest_precedence0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB52_6max_by4foldNtB2h_18OperatorPrecedenceNvYB64_NtNtBc_3cmp3Ord3cmpE0EB2j_.exit

bb.d:                                             ; preds = %bb.c
  br label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatorEENCNvMs1_B2f_NtB2f_25FlatBinaryExpressionSlice9operators0ENCNvB3I_17lowest_precedence0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB52_6max_by4foldNtB2h_18OperatorPrecedenceNvYB64_NtNtBc_3cmp3Ord3cmpE0EB2j_.exit

_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatorEENCNvMs1_B2f_NtB2f_25FlatBinaryExpressionSlice9operators0ENCNvB3I_17lowest_precedence0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB52_6max_by4foldNtB2h_18OperatorPrecedenceNvYB64_NtNtBc_3cmp3Ord3cmpE0EB2j_.exit: ; preds = %switch.lookup, %bb.c, %bb.d
  %.sroa.0.0.i.ph.i = phi i8 [ %switch.load, %switch.lookup ], [ 11, %bb.d ], [ 10, %bb.c ]
  %i.u = call noundef i8 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatorEENCNvMs1_B2l_NtB2l_25FlatBinaryExpressionSlice9operators0ENCNvB3O_17lowest_precedence0ENtNtNtBa_6traits8iterator8Iterator4foldNtB2n_18OperatorPrecedenceNCINvNvB58_6max_by4foldB5L_NvYB5L_NtNtBc_3cmp3Ord3cmpE0EB2p_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, i8 noundef %.sroa.0.0.i.ph.i)
  br label %.loopexit

.loopexit:                                        ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatoruINtNtNtBf_3ops12control_flow11ControlFlowTNtB28_13OperatorIndexRNtB28_8OperatorEENCINvNvB1e_8find_map5checkTjB25_EB4b_QNCNvMs1_B28_NtB28_25FlatBinaryExpressionSlice9operators0E0E0B2c_.exit.i.i.i.i.i.i, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatoruINtNtNtBf_3ops12control_flow11ControlFlowTNtB28_13OperatorIndexRNtB28_8OperatorEENCINvNvB1e_8find_map5checkTjB25_EB4b_QNCNvMs1_B28_NtB28_25FlatBinaryExpressionSlice9operators0E0E0B2c_.exit.i.i.i.i.i.i.preheader, %bb.a, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatorEENCNvMs1_B2f_NtB2f_25FlatBinaryExpressionSlice9operators0ENCNvB3I_17lowest_precedence0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB52_6max_by4foldNtB2h_18OperatorPrecedenceNvYB64_NtNtBc_3cmp3Ord3cmpE0EB2j_.exit
  %i.v = phi i8 [ %i.u, %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB8_10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatorEENCNvMs1_B2f_NtB2f_25FlatBinaryExpressionSlice9operators0ENCNvB3I_17lowest_precedence0ENtNtNtBa_6traits8iterator8Iterator6reduceNCINvNvB52_6max_by4foldNtB2h_18OperatorPrecedenceNvYB64_NtNtBc_3cmp3Ord3cmpE0EB2j_.exit ], [ 0, %bb.a ], [ 0, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatoruINtNtNtBf_3ops12control_flow11ControlFlowTNtB28_13OperatorIndexRNtB28_8OperatorEENCINvNvB1e_8find_map5checkTjB25_EB4b_QNCNvMs1_B28_NtB28_25FlatBinaryExpressionSlice9operators0E0E0B2c_.exit.i.i.i.i.i.i.preheader ], [ 0, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatoruINtNtNtBf_3ops12control_flow11ControlFlowTNtB28_13OperatorIndexRNtB28_8OperatorEENCINvNvB1e_8find_map5checkTjB25_EB4b_QNCNvMs1_B28_NtB28_25FlatBinaryExpressionSlice9operators0E0E0B2c_.exit.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i8 %i.v
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_7Operand36has_unparenthesized_leading_comments(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [12 x i8], align 4                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  %i.i = load i64, ptr %0, align 8, !range !14, !noundef !4
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = icmp ne i64 %i.l, 0
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtNtBU_10expression11binary_likeNtB2L_7Operand36has_unparenthesized_leading_comments0EBU_.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtNtBU_10expression11binary_likeNtB2L_7Operand36has_unparenthesized_leading_comments0EBU_.exit: ; preds = %_RNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7Operand36has_unparenthesized_leading_comments0Bb_.exit.backedge.i, %.split3.i, %bb.e, %bb.d, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.m, %bb.b ], [ %i.ab, %bb.d ], [ false, %bb.e ], [ false, %_RNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7Operand36has_unparenthesized_leading_comments0Bb_.exit.backedge.i ], [ true, %.split3.i ]
  ret i1 %.sroa.0.0.in

bb.c:                                             ; preds = %bb.a
  %.sroa.01.0 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %.sroa.01.0, align 8, !nonnull !4, !align !9, !noundef !4 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.r = tail call { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.n) ; 2 uses
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1
  store i64 %i.s, ptr %i.e, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.t, ptr %i.u, align 8
  %i.v = call { ptr, i64 } @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments3mapINtB2_8MultiMapNtNtB4_8node_key18NodeRefEqualityKeyNtB4_13SourceCommentE7leadingB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e) ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 1        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.x = call { i64, ptr } @_RNvXs5b_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.n) ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = extractvalue { i64, ptr } %i.x, 1
  %i.aa = call noundef zeroext i1 @_RNvMNtCs8CpBcHC8tKo_21ruff_python_formatter7contextNtB2_15PyFormatContext27is_expression_parenthesized(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, i64 noundef %i.y, ptr noundef %i.z)
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp ne i64 %i.w, 0
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtNtBU_10expression11binary_likeNtB2L_7Operand36has_unparenthesized_leading_comments0EBU_.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = extractvalue { ptr, i64 } %i.v, 0       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %.idx = mul nuw nsw i64 %i.w, 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtNtBU_10expression11binary_likeNtB2L_7Operand36has_unparenthesized_leading_comments0EBU_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_RNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7Operand36has_unparenthesized_leading_comments0Bb_.exit.backedge.i, %.lr.ph.i
  %i.ag = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.ah, %_RNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7Operand36has_unparenthesized_leading_comments0Bb_.exit.backedge.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i8, ptr %i.ai, align 1, !range !15, !noalias !321, !noundef !4
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_RNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7Operand36has_unparenthesized_leading_comments0Bb_.exit.backedge.i, label %switch.lookup

switch.lookup:                                    ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !321
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.am = load i32, ptr %i.al, align 4, !noalias !321, !noundef !4 ; 2 uses
  %i.an = load i32, ptr %i.n, align 8, !range !16, !noalias !321, !noundef !4
  %i.ao = zext nneg i32 %i.an to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt, i64 %i.ao
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 %switch.ext
  %.sroa.0.0.i.i.i = load i32, ptr %i.ap, align 4, !noalias !321, !noundef !4 ; 2 uses
  %.not.i.i = icmp ugt i32 %i.am, %.sroa.0.0.i.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.h, !prof !17

bb.g:                                             ; preds = %switch.lookup
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22, !noalias !321
  unreachable

bb.h:                                             ; preds = %switch.lookup
  call void @_RNvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_15SimpleTokenizer3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h, i32 noundef %i.am, i32 noundef %.sroa.0.0.i.i.i), !noalias !321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !321
  store ptr %i.ae, ptr %i.c, align 8, !noalias !322
  call void @_RNvXs2_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_15SimpleTokenizerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d), !noalias !323
  %i.aq = load i8, ptr %i.af, align 4, !range !18, !noalias !322, !noundef !4
  %.not18.i.i.i = icmp eq i8 %i.aq, -1
  br i1 %.not18.i.i.i, label %.split.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !322
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false), !noalias !322
  call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.ar = call noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtBW_15SimpleTokenizer11skip_trivia0INtB7_5FnMutTRNtBW_11SimpleTokenEE8call_mutCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a), !noalias !325
  br i1 %i.ar, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.thread.i.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.thread.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !322
  br label %bb.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !alias.scope !326, !noalias !327 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !322
  %.not.i.i.i.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.i, label %.split3.i

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.thread.i.i.i
  call void @_RNvXs2_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_15SimpleTokenizerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d), !noalias !323
  %i.as = load i8, ptr %i.af, align 4, !range !18, !noalias !322, !noundef !4
  %.not.i.i.i = icmp eq i8 %i.as, -1
  br i1 %.not.i.i.i, label %.split.i, label %.lr.ph.i.i.i

.split3.i:                                        ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !321
  %i.at = icmp eq i8 %.sroa.4.0.copyload.i.i.i, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !321
  br i1 %i.at, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtNtBU_10expression11binary_likeNtB2L_7Operand36has_unparenthesized_leading_comments0EBU_.exit, label %_RNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7Operand36has_unparenthesized_leading_comments0Bb_.exit.backedge.i

_RNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7Operand36has_unparenthesized_leading_comments0Bb_.exit.backedge.i: ; preds = %.split.i, %.split3.i, %bb.f
  %.not7.i = icmp eq ptr %i.ah, %i.ad
  br i1 %.not7.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs4_NtNtBU_10expression11binary_likeNtB2L_7Operand36has_unparenthesized_leading_comments0EBU_.exit, label %bb.f

.split.i:                                         ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !321
  br label %_RNCNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7Operand36has_unparenthesized_leading_comments0Bb_.exit.backedge.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 0) i64 @_RNvMsb_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_13OperatorIndex3new(i64 noundef returned %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = and i64 %0, 1                            ; 2 uses
  store i64 %i.b, ptr %i.a, align 8
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %0

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @27, ptr noundef nonnull @28, ptr nonnull inttoptr (i64 77 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression19expr_number_literal25normalize_floating_number(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 11 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 21 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 9 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = icmp samesign eq i64 %2, 0
  br i1 %i.d, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.f = load i8, ptr %1, align 1, !noalias !370, !noundef !4 ; 5 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.c, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i: ; preds = %bb.b
  %i.h = and i8 %i.f, 31
  %i.i = zext nneg i8 %i.h to i32                 ; 3 uses
  %i.j = icmp samesign ne i64 %2, 1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.l = load i8, ptr %i.e, align 1, !noalias !370, !noundef !4
  %i.m = shl nuw nsw i32 %i.i, 6
  %i.n = and i8 %i.l, 63
  %i.o = zext nneg i8 %i.n to i32                 ; 2 uses
  %i.p = or disjoint i32 %i.m, %i.o
  %i.q = icmp samesign ugt i8 %i.f, -33
  br i1 %i.q, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = zext nneg i8 %i.f to i32
  br label %bb.e

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i
  %i.s = icmp samesign ne i64 %2, 2
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.u = load i8, ptr %i.k, align 1, !noalias !370, !noundef !4
  %i.v = shl nuw nsw i32 %i.o, 6
  %i.w = and i8 %i.u, 63
  %i.x = zext nneg i8 %i.w to i32
  %i.y = or disjoint i32 %i.v, %i.x               ; 2 uses
  %i.z = shl nuw nsw i32 %i.i, 12
  %i.aa = or disjoint i32 %i.y, %i.z
  %i.ab = icmp samesign ugt i8 %i.f, -17
  br i1 %i.ab, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i, label %bb.e

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i
  %i.ac = icmp samesign ne i64 %2, 3
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = load i8, ptr %i.t, align 1, !noalias !370, !noundef !4
  %i.af = shl nuw nsw i32 %i.i, 18
  %i.ag = and i32 %i.af, 1835008
  %i.ah = shl nuw nsw i32 %i.y, 6
  %i.ai = and i8 %i.ae, 63
  %i.aj = zext nneg i8 %i.ai to i32
  %i.ak = or disjoint i32 %i.ah, %i.aj
  %i.al = or disjoint i32 %i.ak, %i.ag
  br label %bb.e

bb.d:                                             ; preds = %.invoke, %bb.bi, %bb.az, %bb.ap, %bb.an, %bb.ac, %bb.aa, %bb.p, %bb.n, %bb.g, %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #23
          to label %common.resume unwind label %bb.bl

bb.e:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i, %bb.c, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i
  %.sroa.0.1138 = phi ptr [ %i.e, %bb.c ], [ %i.ad, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i ], [ %i.t, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i ], [ %i.k, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i ] ; 3 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.r, %bb.c ], [ %i.al, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i ], [ %i.aa, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i ], [ %i.p, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i ] ; 2 uses
  %i.an = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = ptrtoint ptr %.sroa.0.1138 to i64
  %i.ap = sub i64 %i.ao, %i.c                     ; 2 uses
  %i.aq = icmp eq i32 %.sroa.4.0.i.ph.i, 46
  br i1 %i.aq, label %bb.f, label %.preheader

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !371, !nonnull !4, !noundef !4
  store i8 48, ptr %i.ar, align 1
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !371
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
          to label %bb.h unwind label %bb.d

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !372, !nonnull !4, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 46, ptr %i.at, align 1
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !372
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.h, %bb.e
  %.sroa.3.0.i197 = phi i1 [ false, %bb.e ], [ true, %bb.h ], [ false, %bb.a ] ; 4 uses
  %.sroa.0.2139196 = phi ptr [ %.sroa.0.1138, %bb.e ], [ %.sroa.0.1138, %bb.h ], [ %1, %bb.a ] ; 2 uses
  %.sroa.23.1195 = phi i64 [ %i.ap, %bb.e ], [ %i.ap, %bb.h ], [ 0, %bb.a ]
  %.sroa.0.0.ph = phi i64 [ 0, %bb.e ], [ 1, %bb.h ], [ 0, %bb.a ] ; 22 uses
  %i.au = icmp eq ptr %.sroa.0.2139196, %i.b
  br i1 %i.au, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.q
  %.sroa.016.0176 = phi i1 [ %i.cz, %bb.q ], [ %.sroa.3.0.i197, %.preheader ]
  %.sroa.0.0137175 = phi ptr [ %.sroa.0.3140, %bb.q ], [ %.sroa.0.2139196, %.preheader ] ; 6 uses
  %.sroa.23.0174 = phi i64 [ %i.ch, %bb.q ], [ %.sroa.23.1195, %.preheader ] ; 27 uses
  %i.av = ptrtoint ptr %.sroa.0.0137175 to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0137175, i64 1 ; 3 uses
  %i.ax = load i8, ptr %.sroa.0.0137175, align 1, !noalias !373, !noundef !4 ; 5 uses
  %i.ay = icmp sgt i8 %i.ax, -1
  br i1 %i.ay, label %bb.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i67

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i67: ; preds = %.lr.ph
  %i.az = and i8 %i.ax, 31
  %i.ba = zext nneg i8 %i.az to i32               ; 3 uses
  %i.bb = icmp ne ptr %i.aw, %i.b
  call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0137175, i64 2 ; 3 uses
  %i.bd = load i8, ptr %i.aw, align 1, !noalias !373, !noundef !4
  %i.be = shl nuw nsw i32 %i.ba, 6
  %i.bf = and i8 %i.bd, 63
  %i.bg = zext nneg i8 %i.bf to i32               ; 2 uses
  %i.bh = or disjoint i32 %i.be, %i.bg
  %i.bi = icmp samesign ugt i8 %i.ax, -33
  br i1 %i.bi, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i71, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.bj = zext nneg i8 %i.ax to i32
  br label %bb.j

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i71: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i67
  %i.bk = icmp ne ptr %i.bc, %i.b
  call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0137175, i64 3 ; 3 uses
  %i.bm = load i8, ptr %i.bc, align 1, !noalias !373, !noundef !4
  %i.bn = shl nuw nsw i32 %i.bg, 6
  %i.bo = and i8 %i.bm, 63
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bn, %i.bp            ; 2 uses
  %i.br = shl nuw nsw i32 %i.ba, 12
  %i.bs = or disjoint i32 %i.bq, %i.br
  %i.bt = icmp samesign ugt i8 %i.ax, -17
  br i1 %i.bt, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i72, label %bb.j

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i72: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i71
  %i.bu = icmp ne ptr %i.bl, %i.b
  call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0137175, i64 4
  %i.bw = load i8, ptr %i.bl, align 1, !noalias !373, !noundef !4
  %i.bx = shl nuw nsw i32 %i.ba, 18
  %i.by = and i32 %i.bx, 1835008
  %i.bz = shl nuw nsw i32 %i.bq, 6
  %i.ca = and i8 %i.bw, 63
  %i.cb = zext nneg i8 %i.ca to i32
  %i.cc = or disjoint i32 %i.bz, %i.cb
  %i.cd = or disjoint i32 %i.cc, %i.by
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i67, %bb.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i71, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i72
  %.sroa.0.3140 = phi ptr [ %i.aw, %bb.i ], [ %i.bv, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i72 ], [ %i.bl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i71 ], [ %i.bc, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i67 ] ; 8 uses
  %.sroa.4.0.i.ph.i68 = phi i32 [ %i.bj, %bb.i ], [ %i.cd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit16.i.i72 ], [ %i.bs, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit14.i.i71 ], [ %i.bh, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8CpBcHC8tKo_21ruff_python_formatter.exit12.i.i67 ] ; 4 uses
  %i.ce = icmp samesign ult i32 %.sroa.4.0.i.ph.i68, 1114112
  call void @llvm.assume(i1 %i.ce)
  %i.cf = ptrtoint ptr %.sroa.0.3140 to i64
  %i.cg = sub i64 %.sroa.23.0174, %i.av
  %i.ch = add i64 %i.cg, %i.cf                    ; 14 uses
  switch i32 %.sroa.4.0.i.ph.i68, label %bb.q [
    i32 69, label %bb.r
    i32 101, label %bb.r
  ]

.thread:                                          ; preds = %bb.q, %.preheader
  %.sroa.016.0.lcssa = phi i1 [ %.sroa.3.0.i197, %.preheader ], [ %i.cz, %bb.q ]
  br i1 %.sroa.016.0.lcssa, label %bb.k, label %.thread159

bb.k:                                             ; preds = %.thread
  br i1 %.sroa.3.0.i197, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.not.i = icmp ult i64 %.sroa.0.0.ph, %2
  br i1 %.not.i, label %bb.m, label %.split.i

.split.i:                                         ; preds = %bb.l
  %i.ci = icmp eq i64 %.sroa.0.0.ph, %2
  br i1 %i.ci, label %bb.n, label %.invoke

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.ph
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !374, !noundef !4
  %i.cl = icmp sgt i8 %i.ck, -65
  br i1 %i.cl, label %bb.n, label %.invoke
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB4_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB8_7context15PyFormatContextE3fmt:bb.a
  %.sink1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 40, %bb.p ], [ 32, %bb.o ], [ 40, %bb.q ], [ 48, %bb.n ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 44, %bb.p ], [ 36, %bb.o ], [ 44, %bb.q ], [ 52, %bb.n ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.sink1.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.cn, align 4, !noalias !1294, !noundef !4
  %.sroa.015.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.cm, align 8, !noalias !1294, !noundef !4
  %i.co = invoke noundef zeroext i1 @_RNvMs0_NtCskVZVgnzM3Oh_18ruff_python_trivia14comment_rangesNtB5_24ParenthesizedExpressions8contains(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.014.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 noundef %.sroa.015.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 noundef %.sroa.10.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc82:                                         ; preds = %_RNCNCNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB8_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBc_7context15PyFormatContextE3fmt00Bc_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.co, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.r

.thread.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.m, %.noexc82, %bb.q, %bb.p, %bb.o, %bb.n, %bb.l
  %i.cp = add nuw nsw i64 %i.by, 1
  %i.cq = icmp eq ptr %i.ca, %i.bw
  br i1 %i.cq, label %.loopexit270.loopexit, label %bb.l

bb.r:                                             ; preds = %.noexc82
  invoke void @_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11parentheses41write_in_parentheses_only_group_start_tag(ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit270.loopexit:                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre489 = load i64, ptr %i.bq, align 8, !alias.scope !1295, !noalias !1296
  %.pre490 = load ptr, ptr %i.ar, align 8, !alias.scope !1295, !noalias !1296
  %.pre491 = load i64, ptr %i.bu, align 8, !alias.scope !1295, !noalias !1296
  br label %.loopexit270

.loopexit270:                                     ; preds = %.loopexit270.loopexit, %bb.k
  %i.cr = phi i64 [ %.pre491, %.loopexit270.loopexit ], [ %i.bv, %bb.k ]
  %i.cs = phi ptr [ %.pre490, %.loopexit270.loopexit ], [ %i.bt, %bb.k ]
  %i.ct = phi i64 [ %.pre489, %.loopexit270.loopexit ], [ %i.br, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.cu = icmp ugt i64 %i.ct, 8                   ; 2 uses
  %.sink10.i.i83 = select i1 %i.cu, ptr %i.cs, ptr %i.ar
  %.sink9.i.i84 = select i1 %i.cu, i64 %i.cr, i64 %i.ct
  store ptr %.sink10.i.i83, ptr %i.w, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.sink9.i.i84, ptr %i.cv, align 8
  store ptr %i.w, ptr %i.x, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @2, ptr %i.cw, align 8
  invoke void @_RNvXs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11parenthesesNtB5_28FormatInParenthesesOnlyGroupINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %.loopexit270
  %i.cx = load i32, ptr %i.y, align 8, !range !10, !noundef !4
  %.not43 = icmp eq i32 %i.cx, -1
  br i1 %.not43, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.dh

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.v

bb.v:                                             ; preds = %_RNvMs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_25FlatBinaryExpressionSlice12get_operator.exit.thread, %bb.u
  store i32 -1, ptr %0, align 8
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatorj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(264) %i.ar)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like20FlatBinaryExpressionEBH_.exit86 unwind label %bb.d

bb.w:                                             ; preds = %bb.r
  %i.cy = icmp eq i64 %i.by, 0
  br i1 %i.cy, label %bb.al, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11parentheses41write_in_parentheses_only_group_start_tag(ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.5196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  br label %bb.aj

bb.z:                                             ; preds = %bb.dc, %bb.db
  %i.dr = icmp eq ptr %.sroa.16.1528, %i.bw
  br i1 %i.dr, label %.loopexit263.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z, %.thread.i.i.i.i.i.i
  %.sroa.24.4 = phi i64 [ %i.eq, %.thread.i.i.i.i.i.i ], [ %.sroa.24.1522, %bb.z ] ; 9 uses
  %i.ds = phi ptr [ %i.dt, %.thread.i.i.i.i.i.i ], [ %.sroa.16.1528, %bb.z ] ; 7 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 32 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  %i.du = load i64, ptr %i.ds, align 8, !range !11, !alias.scope !1299, !noalias !1300, !noundef !4
  %i.dv = icmp eq i64 %i.du, -1
  br i1 %i.dv, label %.thread.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %.sroa.06.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.06.0.i.i.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i.i.i, align 8, !alias.scope !1304, !noalias !1305, !nonnull !4, !align !9, !noundef !4 ; 17 uses
  %i.dw = load i32, ptr %.sroa.06.0.i.i.i.i.i.i, align 8, !range !16, !noalias !1306, !noundef !4
  switch i32 %i.dw, label %.thread.i.i.i.i.i.i [
    i32 17, label %bb.ad
    i32 18, label %bb.ae
    i32 19, label %bb.ab
    i32 20, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %.sroa.7.06.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 8
  %i.dx = load i64, ptr %.sroa.7.06.i.i.i.i.i.i, align 8, !range !21, !noalias !1307, !noundef !4
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dx, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %_RNCNCNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB8_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBc_7context15PyFormatContextE3fmt00Bc_.exit.i.i.i.i.i.i.i.jt0

bb.ac:                                            ; preds = %bb.aa
  %.sroa.7.013.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 8
  %i.dy = load ptr, ptr %.sroa.7.013.i.i.i.i.i.i, align 8, !noalias !1307, !noundef !4
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %_RNCNCNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB8_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBc_7context15PyFormatContextE3fmt00Bc_.exit.i.i.i.i.i.i.i.jt1, label %.thread.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.aa
  %.sroa.7.018.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 8
  %i.ea = load i64, ptr %.sroa.7.018.i.i.i.i.i.i, align 8, !range !24, !noalias !1307, !noundef !4
  %i.eb = icmp eq i64 %i.ea, -2
  br i1 %i.eb, label %_RNCNCNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB8_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBc_7context15PyFormatContextE3fmt00Bc_.exit.i.i.i.i.i.i.i.jt2, label %.thread.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.aa
  %.sroa.7.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 8
  %i.ec = load i64, ptr %.sroa.7.0.i.i.i.i.i.i, align 8, !range !21, !noalias !1307, !noundef !4
  %i.ed = icmp eq i64 %i.ec, -1
  br i1 %i.ed, label %_RNCNCNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB8_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBc_7context15PyFormatContextE3fmt00Bc_.exit.i.i.i.i.i.i.i.jt3, label %.thread.i.i.i.i.i.i

_RNCNCNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB8_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBc_7context15PyFormatContextE3fmt00Bc_.exit.i.i.i.i.i.i.i.jt0: ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 56
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 60
  %.sroa.10.0.i.i.i.i.i.i.i.i.jt0 = load i32, ptr %i.ef, align 4, !noalias !1307, !noundef !4
  %.sroa.015.0.i.i.i.i.i.i.i.i.jt0 = load i32, ptr %i.ee, align 8, !noalias !1307, !noundef !4
  %i.eg = invoke noundef zeroext i1 @_RNvMs0_NtCskVZVgnzM3Oh_18ruff_python_trivia14comment_rangesNtB5_24ParenthesizedExpressions8contains(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.014.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 noundef %.sroa.015.0.i.i.i.i.i.i.i.i.jt0, i32 noundef %.sroa.10.0.i.i.i.i.i.i.i.i.jt0)
          to label %.noexc88.jt0 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

_RNCNCNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB8_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBc_7context15PyFormatContextE3fmt00Bc_.exit.i.i.i.i.i.i.i.jt3: ; preds = %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 48
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 52
  %.sroa.10.0.i.i.i.i.i.i.i.i.jt3 = load i32, ptr %i.ei, align 4, !noalias !1307, !noundef !4
  %.sroa.015.0.i.i.i.i.i.i.i.i.jt3 = load i32, ptr %i.eh, align 8, !noalias !1307, !noundef !4
  %i.ej = invoke noundef zeroext i1 @_RNvMs0_NtCskVZVgnzM3Oh_18ruff_python_trivia14comment_rangesNtB5_24ParenthesizedExpressions8contains(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.014.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 noundef %.sroa.015.0.i.i.i.i.i.i.i.i.jt3, i32 noundef %.sroa.10.0.i.i.i.i.i.i.i.i.jt3)
          to label %.noexc88.jt3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

_RNCNCNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB8_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBc_7context15PyFormatContextE3fmt00Bc_.exit.i.i.i.i.i.i.i.jt1: ; preds = %bb.ac
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 44
  %.sroa.10.0.i.i.i.i.i.i.i.i.jt1 = load i32, ptr %i.el, align 4, !noalias !1307, !noundef !4
  %.sroa.015.0.i.i.i.i.i.i.i.i.jt1 = load i32, ptr %i.ek, align 8, !noalias !1307, !noundef !4
  %i.em = invoke noundef zeroext i1 @_RNvMs0_NtCskVZVgnzM3Oh_18ruff_python_trivia14comment_rangesNtB5_24ParenthesizedExpressions8contains(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.014.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 noundef %.sroa.015.0.i.i.i.i.i.i.i.i.jt1, i32 noundef %.sroa.10.0.i.i.i.i.i.i.i.i.jt1)
          to label %.noexc88.jt1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

_RNCNCNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB8_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBc_7context15PyFormatContextE3fmt00Bc_.exit.i.i.i.i.i.i.i.jt2: ; preds = %bb.ad
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 48
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 52
  %.sroa.10.0.i.i.i.i.i.i.i.i.jt2 = load i32, ptr %i.eo, align 4, !noalias !1307, !noundef !4
  %.sroa.015.0.i.i.i.i.i.i.i.i.jt2 = load i32, ptr %i.en, align 8, !noalias !1307, !noundef !4
  %i.ep = invoke noundef zeroext i1 @_RNvMs0_NtCskVZVgnzM3Oh_18ruff_python_trivia14comment_rangesNtB5_24ParenthesizedExpressions8contains(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.014.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i32 noundef %.sroa.015.0.i.i.i.i.i.i.i.i.jt2, i32 noundef %.sroa.10.0.i.i.i.i.i.i.i.i.jt2)
          to label %.noexc88.jt2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit

.noexc88.jt0:                                     ; preds = %_RNCNCNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB8_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBc_7context15PyFormatContextE3fmt00Bc_.exit.i.i.i.i.i.i.i.jt0
  br i1 %i.eg, label %.thread.i.i.i.i.i.i, label %bb.af

.noexc88.jt3:                                     ; preds = %_RNCNCNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB8_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBc_7context15PyFormatContextE3fmt00Bc_.exit.i.i.i.i.i.i.i.jt3
  br i1 %i.ej, label %.thread.i.i.i.i.i.i, label %bb.ag

.noexc88.jt1:                                     ; preds = %_RNCNCNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB8_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBc_7context15PyFormatContextE3fmt00Bc_.exit.i.i.i.i.i.i.i.jt1
  br i1 %i.em, label %.thread.i.i.i.i.i.i, label %bb.ah

.noexc88.jt2:                                     ; preds = %_RNCNCNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB8_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBc_7context15PyFormatContextE3fmt00Bc_.exit.i.i.i.i.i.i.i.jt2
  br i1 %i.ep, label %.thread.i.i.i.i.i.i, label %bb.ai

.thread.i.i.i.i.i.i:                              ; preds = %.noexc88.jt0, %.noexc88.jt3, %.noexc88.jt1, %.noexc88.jt2, %bb.aa, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %.lr.ph.i
  %i.eq = add i64 %.sroa.24.4, 1
  %i.er = icmp eq ptr %i.dt, %i.bw
  br i1 %i.er, label %.loopexit263.thread, label %.lr.ph.i

bb.af:                                            ; preds = %.noexc88.jt0
  %.sroa.7.06.i.i.i.i.i.i.le = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.es = icmp eq i64 %.sroa.24.4, 0
  br i1 %i.es, label %bb.am, label %bb.aj

bb.ag:                                            ; preds = %.noexc88.jt3
  %.sroa.7.0.i.i.i.i.i.i.le = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.et = icmp eq i64 %.sroa.24.4, 0
  br i1 %i.et, label %bb.an, label %bb.aj

bb.ah:                                            ; preds = %.noexc88.jt1
  %.sroa.7.013.i.i.i.i.i.i.le = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.eu = icmp eq i64 %.sroa.24.4, 0
  br i1 %i.eu, label %bb.ao, label %bb.aj

bb.ai:                                            ; preds = %.noexc88.jt2
  %.sroa.7.018.i.i.i.i.i.i.le = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ev = icmp eq i64 %.sroa.24.4, 0
  br i1 %i.ev, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %bb.y, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %i.ew = phi ptr [ %i.ju, %bb.af ], [ %i.ju, %bb.ag ], [ %i.ju, %bb.ah ], [ %i.ju, %bb.ai ], [ %i.dq, %bb.y ]
  %i.ex = phi ptr [ %i.jv, %bb.af ], [ %i.jv, %bb.ag ], [ %i.jv, %bb.ah ], [ %i.jv, %bb.ai ], [ %i.dp, %bb.y ]
  %i.ey = phi ptr [ %i.jw, %bb.af ], [ %i.jw, %bb.ag ], [ %i.jw, %bb.ah ], [ %i.jw, %bb.ai ], [ %i.do, %bb.y ]
  %i.ez = phi ptr [ %i.jx, %bb.af ], [ %i.jx, %bb.ag ], [ %i.jx, %bb.ah ], [ %i.jx, %bb.ai ], [ %i.dn, %bb.y ]
  %i.fa = phi ptr [ %i.jy, %bb.af ], [ %i.jy, %bb.ag ], [ %i.jy, %bb.ah ], [ %i.jy, %bb.ai ], [ %i.dm, %bb.y ]
  %i.fb = phi ptr [ %i.jz, %bb.af ], [ %i.jz, %bb.ag ], [ %i.jz, %bb.ah ], [ %i.jz, %bb.ai ], [ %i.dl, %bb.y ]
  %i.fc = phi ptr [ %i.ka, %bb.af ], [ %i.ka, %bb.ag ], [ %i.ka, %bb.ah ], [ %i.ka, %bb.ai ], [ %i.dk, %bb.y ]
  %i.fd = phi ptr [ %i.kb, %bb.af ], [ %i.kb, %bb.ag ], [ %i.kb, %bb.ah ], [ %i.kb, %bb.ai ], [ %i.dj, %bb.y ] ; 2 uses
  %i.fe = phi ptr [ %i.kc, %bb.af ], [ %i.kc, %bb.ag ], [ %i.kc, %bb.ah ], [ %i.kc, %bb.ai ], [ %i.di, %bb.y ] ; 2 uses
  %i.ff = phi ptr [ %i.kd, %bb.af ], [ %i.kd, %bb.ag ], [ %i.kd, %bb.ah ], [ %i.kd, %bb.ai ], [ %i.dh, %bb.y ] ; 2 uses
  %i.fg = phi ptr [ %i.ke, %bb.af ], [ %i.ke, %bb.ag ], [ %i.ke, %bb.ah ], [ %i.ke, %bb.ai ], [ %i.dg, %bb.y ] ; 2 uses
  %i.fh = phi ptr [ %i.kf, %bb.af ], [ %i.kf, %bb.ag ], [ %i.kf, %bb.ah ], [ %i.kf, %bb.ai ], [ %i.df, %bb.y ] ; 2 uses
  %i.fi = phi ptr [ %i.kg, %bb.af ], [ %i.kg, %bb.ag ], [ %i.kg, %bb.ah ], [ %i.kg, %bb.ai ], [ %i.de, %bb.y ] ; 2 uses
  %i.fj = phi ptr [ %i.kh, %bb.af ], [ %i.kh, %bb.ag ], [ %i.kh, %bb.ah ], [ %i.kh, %bb.ai ], [ %i.dd, %bb.y ] ; 2 uses
  %.sroa.5196.0..sroa_idx610 = phi ptr [ %.sroa.5196.0..sroa_idx609, %bb.af ], [ %.sroa.5196.0..sroa_idx609, %bb.ag ], [ %.sroa.5196.0..sroa_idx609, %bb.ah ], [ %.sroa.5196.0..sroa_idx609, %bb.ai ], [ %.sroa.5196.0..sroa_idx, %bb.y ] ; 2 uses
  %.sroa.4195.0..sroa_idx606 = phi ptr [ %.sroa.4195.0..sroa_idx605, %bb.af ], [ %.sroa.4195.0..sroa_idx605, %bb.ag ], [ %.sroa.4195.0..sroa_idx605, %bb.ah ], [ %.sroa.4195.0..sroa_idx605, %bb.ai ], [ %.sroa.4195.0..sroa_idx, %bb.y ] ; 2 uses
  %i.fk = phi ptr [ %i.ki, %bb.af ], [ %i.ki, %bb.ag ], [ %i.ki, %bb.ah ], [ %i.ki, %bb.ai ], [ %i.dc, %bb.y ] ; 2 uses
  %i.fl = phi ptr [ %i.kj, %bb.af ], [ %i.kj, %bb.ag ], [ %i.kj, %bb.ah ], [ %i.kj, %bb.ai ], [ %i.db, %bb.y ] ; 2 uses
  %i.fm = phi ptr [ %i.kk, %bb.af ], [ %i.kk, %bb.ag ], [ %i.kk, %bb.ah ], [ %i.kk, %bb.ai ], [ %i.da, %bb.y ] ; 2 uses
  %i.fn = phi ptr [ %i.kl, %bb.af ], [ %i.kl, %bb.ag ], [ %i.kl, %bb.ah ], [ %i.kl, %bb.ai ], [ %i.cz, %bb.y ] ; 2 uses
  %.sroa.02.0541 = phi i64 [ 0, %bb.af ], [ 3, %bb.ag ], [ 1, %bb.ah ], [ 2, %bb.ai ], [ %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i, %bb.y ] ; 3 uses
  %.sroa.9.0536 = phi ptr [ %.sroa.7.06.i.i.i.i.i.i.le, %bb.af ], [ %.sroa.7.0.i.i.i.i.i.i.le, %bb.ag ], [ %.sroa.7.013.i.i.i.i.i.i.le, %bb.ah ], [ %.sroa.7.018.i.i.i.i.i.i.le, %bb.ai ], [ %.sroa.7.09.i.i.i.i.i.i.i.i.i.i.i.i, %bb.y ] ; 4 uses
  %.sroa.10.0530 = phi i64 [ %.sroa.24.4, %bb.af ], [ %.sroa.24.4, %bb.ag ], [ %.sroa.24.4, %bb.ah ], [ %.sroa.24.4, %bb.ai ], [ %i.by, %bb.y ] ; 3 uses
  %.sroa.11.0529 = phi ptr [ %i.ds, %bb.af ], [ %i.ds, %bb.ag ], [ %i.ds, %bb.ah ], [ %i.ds, %bb.ai ], [ %i.bz, %bb.y ] ; 5 uses
  %.sroa.16.1523 = phi ptr [ %i.dt, %bb.af ], [ %i.dt, %bb.ag ], [ %i.dt, %bb.ah ], [ %i.dt, %bb.ai ], [ %i.ca, %bb.y ]
  %storemerge516 = phi i64 [ %i.km, %bb.af ], [ %i.km, %bb.ag ], [ %i.km, %bb.ah ], [ %i.km, %bb.ai ], [ 0, %bb.y ] ; 3 uses
  %.sroa.24.1517 = add i64 %.sroa.10.0530, 1
  %i.fo = add i64 %.sroa.10.0530, -1              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.fp = and i64 %i.fo, 1                        ; 2 uses
  store i64 %i.fp, ptr %i.p, align 8
  %.not.i.i = icmp eq i64 %i.fp, 0
  br i1 %.not.i.i, label %.invoke591, label %bb.ak, !prof !17

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.not51 = icmp ne i64 %storemerge516, 0         ; 2 uses
  %i.fq = icmp eq i64 %storemerge516, %i.fo
  %or.cond = and i1 %.not51, %i.fq
  br i1 %or.cond, label %bb.at, label %bb.au

bb.al:                                            ; preds = %bb.w
  %i.fr = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 4 uses
  %.sroa.4195.0..sroa_idx602 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %.sroa.5196.0..sroa_idx603 = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %.val69 = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  switch i64 %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i, label %default.unreachable694 [
    i64 0, label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCskLngH8kgpZI_15ruff_python_ast10expression10StringLikeINtB5_4IntoNtNtBC_9generated10AnyNodeRefE4intoCs8CpBcHC8tKo_21ruff_python_formatter.exit.i
    i64 1, label %bb.aq
    i64 2, label %bb.ar
    i64 3, label %bb.as
  ]

bb.am:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %.val69.jt0 = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  br label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCskLngH8kgpZI_15ruff_python_ast10expression10StringLikeINtB5_4IntoNtNtBC_9generated10AnyNodeRefE4intoCs8CpBcHC8tKo_21ruff_python_formatter.exit.i

bb.an:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %.val69.jt3 = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  br label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCskLngH8kgpZI_15ruff_python_ast10expression10StringLikeINtB5_4IntoNtNtBC_9generated10AnyNodeRefE4intoCs8CpBcHC8tKo_21ruff_python_formatter.exit.i

bb.ao:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %.val69.jt1 = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  br label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCskLngH8kgpZI_15ruff_python_ast10expression10StringLikeINtB5_4IntoNtNtBC_9generated10AnyNodeRefE4intoCs8CpBcHC8tKo_21ruff_python_formatter.exit.i

bb.ap:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %.val69.jt2 = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  br label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCskLngH8kgpZI_15ruff_python_ast10expression10StringLikeINtB5_4IntoNtNtBC_9generated10AnyNodeRefE4intoCs8CpBcHC8tKo_21ruff_python_formatter.exit.i

bb.aq:                                            ; preds = %bb.al
  br label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCskLngH8kgpZI_15ruff_python_ast10expression10StringLikeINtB5_4IntoNtNtBC_9generated10AnyNodeRefE4intoCs8CpBcHC8tKo_21ruff_python_formatter.exit.i

bb.ar:                                            ; preds = %bb.al
  br label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCskLngH8kgpZI_15ruff_python_ast10expression10StringLikeINtB5_4IntoNtNtBC_9generated10AnyNodeRefE4intoCs8CpBcHC8tKo_21ruff_python_formatter.exit.i

bb.as:                                            ; preds = %bb.al
  br label %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCskLngH8kgpZI_15ruff_python_ast10expression10StringLikeINtB5_4IntoNtNtBC_9generated10AnyNodeRefE4intoCs8CpBcHC8tKo_21ruff_python_formatter.exit.i

_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCskLngH8kgpZI_15ruff_python_ast10expression10StringLikeINtB5_4IntoNtNtBC_9generated10AnyNodeRefE4intoCs8CpBcHC8tKo_21ruff_python_formatter.exit.i: ; preds = %bb.an, %bb.ap, %bb.ao, %bb.am, %bb.as, %bb.ar, %bb.aq, %bb.al
  %i.gj = phi ptr [ %i.ju, %bb.am ], [ %i.gi, %bb.ar ], [ %i.gi, %bb.aq ], [ %i.gi, %bb.al ], [ %i.ju, %bb.ao ], [ %i.ju, %bb.ap ], [ %i.ju, %bb.an ], [ %i.gi, %bb.as ]
  %i.gk = phi ptr [ %i.jv, %bb.am ], [ %i.gh, %bb.ar ], [ %i.gh, %bb.aq ], [ %i.gh, %bb.al ], [ %i.jv, %bb.ao ], [ %i.jv, %bb.ap ], [ %i.jv, %bb.an ], [ %i.gh, %bb.as ] ; 2 uses
  %i.gl = phi ptr [ %i.jw, %bb.am ], [ %i.gg, %bb.ar ], [ %i.gg, %bb.aq ], [ %i.gg, %bb.al ], [ %i.jw, %bb.ao ], [ %i.jw, %bb.ap ], [ %i.jw, %bb.an ], [ %i.gg, %bb.as ] ; 2 uses
  %i.gm = phi ptr [ %i.jx, %bb.am ], [ %i.gf, %bb.ar ], [ %i.gf, %bb.aq ], [ %i.gf, %bb.al ], [ %i.jx, %bb.ao ], [ %i.jx, %bb.ap ], [ %i.jx, %bb.an ], [ %i.gf, %bb.as ] ; 2 uses
  %i.gn = phi ptr [ %i.jy, %bb.am ], [ %i.ge, %bb.ar ], [ %i.ge, %bb.aq ], [ %i.ge, %bb.al ], [ %i.jy, %bb.ao ], [ %i.jy, %bb.ap ], [ %i.jy, %bb.an ], [ %i.ge, %bb.as ] ; 2 uses
  %i.go = phi ptr [ %i.jz, %bb.am ], [ %i.gd, %bb.ar ], [ %i.gd, %bb.aq ], [ %i.gd, %bb.al ], [ %i.jz, %bb.ao ], [ %i.jz, %bb.ap ], [ %i.jz, %bb.an ], [ %i.gd, %bb.as ] ; 2 uses
  %i.gp = phi ptr [ %i.ka, %bb.am ], [ %i.gc, %bb.ar ], [ %i.gc, %bb.aq ], [ %i.gc, %bb.al ], [ %i.ka, %bb.ao ], [ %i.ka, %bb.ap ], [ %i.ka, %bb.an ], [ %i.gc, %bb.as ] ; 2 uses
  %i.gq = phi ptr [ %i.kb, %bb.am ], [ %i.gb, %bb.ar ], [ %i.gb, %bb.aq ], [ %i.gb, %bb.al ], [ %i.kb, %bb.ao ], [ %i.kb, %bb.ap ], [ %i.kb, %bb.an ], [ %i.gb, %bb.as ]
  %i.gr = phi ptr [ %i.kc, %bb.am ], [ %i.ga, %bb.ar ], [ %i.ga, %bb.aq ], [ %i.ga, %bb.al ], [ %i.kc, %bb.ao ], [ %i.kc, %bb.ap ], [ %i.kc, %bb.an ], [ %i.ga, %bb.as ]
  %i.gs = phi ptr [ %i.kd, %bb.am ], [ %i.fz, %bb.ar ], [ %i.fz, %bb.aq ], [ %i.fz, %bb.al ], [ %i.kd, %bb.ao ], [ %i.kd, %bb.ap ], [ %i.kd, %bb.an ], [ %i.fz, %bb.as ]
  %i.gt = phi ptr [ %i.ke, %bb.am ], [ %i.fy, %bb.ar ], [ %i.fy, %bb.aq ], [ %i.fy, %bb.al ], [ %i.ke, %bb.ao ], [ %i.ke, %bb.ap ], [ %i.ke, %bb.an ], [ %i.fy, %bb.as ]
  %i.gu = phi ptr [ %i.kf, %bb.am ], [ %i.fx, %bb.ar ], [ %i.fx, %bb.aq ], [ %i.fx, %bb.al ], [ %i.kf, %bb.ao ], [ %i.kf, %bb.ap ], [ %i.kf, %bb.an ], [ %i.fx, %bb.as ]
  %i.gv = phi ptr [ %i.kg, %bb.am ], [ %i.fw, %bb.ar ], [ %i.fw, %bb.aq ], [ %i.fw, %bb.al ], [ %i.kg, %bb.ao ], [ %i.kg, %bb.ap ], [ %i.kg, %bb.an ], [ %i.fw, %bb.as ]
  %i.gw = phi ptr [ %i.kh, %bb.am ], [ %i.fv, %bb.ar ], [ %i.fv, %bb.aq ], [ %i.fv, %bb.al ], [ %i.kh, %bb.ao ], [ %i.kh, %bb.ap ], [ %i.kh, %bb.an ], [ %i.fv, %bb.as ]
  %.sroa.5196.0..sroa_idx608 = phi ptr [ %.sroa.5196.0..sroa_idx609, %bb.am ], [ %.sroa.5196.0..sroa_idx603, %bb.ar ], [ %.sroa.5196.0..sroa_idx603, %bb.aq ], [ %.sroa.5196.0..sroa_idx603, %bb.al ], [ %.sroa.5196.0..sroa_idx609, %bb.ao ], [ %.sroa.5196.0..sroa_idx609, %bb.ap ], [ %.sroa.5196.0..sroa_idx609, %bb.an ], [ %.sroa.5196.0..sroa_idx603, %bb.as ]
  %.sroa.4195.0..sroa_idx604 = phi ptr [ %.sroa.4195.0..sroa_idx605, %bb.am ], [ %.sroa.4195.0..sroa_idx602, %bb.ar ], [ %.sroa.4195.0..sroa_idx602, %bb.aq ], [ %.sroa.4195.0..sroa_idx602, %bb.al ], [ %.sroa.4195.0..sroa_idx605, %bb.ao ], [ %.sroa.4195.0..sroa_idx605, %bb.ap ], [ %.sroa.4195.0..sroa_idx605, %bb.an ], [ %.sroa.4195.0..sroa_idx602, %bb.as ]
  %i.gx = phi ptr [ %i.ki, %bb.am ], [ %i.fu, %bb.ar ], [ %i.fu, %bb.aq ], [ %i.fu, %bb.al ], [ %i.ki, %bb.ao ], [ %i.ki, %bb.ap ], [ %i.ki, %bb.an ], [ %i.fu, %bb.as ]
  %i.gy = phi ptr [ %i.kj, %bb.am ], [ %i.ft, %bb.ar ], [ %i.ft, %bb.aq ], [ %i.ft, %bb.al ], [ %i.kj, %bb.ao ], [ %i.kj, %bb.ap ], [ %i.kj, %bb.an ], [ %i.ft, %bb.as ]
  %i.gz = phi ptr [ %i.kk, %bb.am ], [ %i.fs, %bb.ar ], [ %i.fs, %bb.aq ], [ %i.fs, %bb.al ], [ %i.kk, %bb.ao ], [ %i.kk, %bb.ap ], [ %i.kk, %bb.an ], [ %i.fs, %bb.as ]
  %i.ha = phi ptr [ %i.kl, %bb.am ], [ %i.fr, %bb.ar ], [ %i.fr, %bb.aq ], [ %i.fr, %bb.al ], [ %i.kl, %bb.ao ], [ %i.kl, %bb.ap ], [ %i.kl, %bb.an ], [ %i.fr, %bb.as ]
  %.val69547 = phi ptr [ %.val69.jt0, %bb.am ], [ %.val69, %bb.ar ], [ %.val69, %bb.aq ], [ %.val69, %bb.al ], [ %.val69.jt1, %bb.ao ], [ %.val69.jt2, %bb.ap ], [ %.val69.jt3, %bb.an ], [ %.val69, %bb.as ]
  %.sroa.02.0543 = phi i64 [ 0, %bb.am ], [ %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ar ], [ %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aq ], [ %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ 1, %bb.ao ], [ 2, %bb.ap ], [ 3, %bb.an ], [ %.sroa.05.07.i.i.i.i.i.i.i.i.i.i.i.i, %bb.as ] ; 2 uses
  %.sroa.9.0538 = phi ptr [ %.sroa.7.06.i.i.i.i.i.i.le, %bb.am ], [ %.sroa.7.09.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ar ], [ %.sroa.7.09.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aq ], [ %.sroa.7.09.i.i.i.i.i.i.i.i.i.i.i.i, %bb.al ], [ %.sroa.7.013.i.i.i.i.i.i.le, %bb.ao ], [ %.sroa.7.018.i.i.i.i.i.i.le, %bb.ap ], [ %.sroa.7.0.i.i.i.i.i.i.le, %bb.an ], [ %.sroa.7.09.i.i.i.i.i.i.i.i.i.i.i.i, %bb.as ] ; 3 uses
  %.sroa.16.1525 = phi ptr [ %i.dt, %bb.am ], [ %i.ca, %bb.ar ], [ %i.ca, %bb.aq ], [ %i.ca, %bb.al ], [ %i.dt, %bb.ao ], [ %i.dt, %bb.ap ], [ %i.dt, %bb.an ], [ %i.ca, %bb.as ]
  %.sroa.05.0.i.i.i = phi i64 [ 46, %bb.am ], [ 44, %bb.ar ], [ 47, %bb.aq ], [ 46, %bb.al ], [ 47, %bb.ao ], [ 44, %bb.ap ], [ 45, %bb.an ], [ 45, %bb.as ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.val69547, i64 16
  store i64 %.sroa.05.0.i.i.i, ptr %i.o, align 8
  store ptr %.sroa.9.0538, ptr %i.gp, align 8
  %i.hc = invoke { ptr, i64 } @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments3mapINtB2_8MultiMapNtNtB4_8node_key18NodeRefEqualityKeyNtB4_13SourceCommentE7leadingB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.hb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o)
          to label %bb.by unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.at:                                            ; preds = %bb.ak
  invoke void @_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11parentheses39write_in_parentheses_only_group_end_tag(ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.bq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.au:                                            ; preds = %bb.ak
  %i.hd = load i64, ptr %i.bq, align 8, !alias.scope !1308, !noalias !1309, !noundef !4 ; 2 uses
  %i.he = icmp ugt i64 %i.hd, 8                   ; 2 uses
  %i.hf = load ptr, ptr %i.ar, align 8, !alias.scope !1308, !noalias !1309, !nonnull !4
  %i.hg = load i64, ptr %i.bu, align 8, !alias.scope !1308, !noalias !1309
  %.sink10.i.i92 = select i1 %i.he, ptr %i.hf, ptr %i.ar ; 2 uses
  %.sink9.i.i93 = select i1 %i.he, i64 %i.hg, i64 %i.hd ; 4 uses
  %i.hh = add i64 %storemerge516, 1
  %spec.select.i.i = select i1 %.not51, i64 %i.hh, i64 0 ; 5 uses
  %i.hi = icmp ult i64 %i.fo, %spec.select.i.i
  %.not.i95 = icmp ugt i64 %i.fo, %.sink9.i.i93
  %or.cond.i = or i1 %i.hi, %.not.i95
  br i1 %or.cond.i, label %.invoke, label %bb.av, !prof !27

bb.av:                                            ; preds = %bb.au
  %i.hj = sub nuw i64 %i.fo, %spec.select.i.i
  %i.hk = getelementptr inbounds nuw [32 x i8], ptr %.sink10.i.i92, i64 %spec.select.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  %i.hl = icmp ult i64 %i.fo, %.sink9.i.i93
  br i1 %i.hl, label %bb.aw, label %.invoke587

bb.aw:                                            ; preds = %bb.av
  %i.hm = getelementptr [32 x i8], ptr %.sink10.i.i92, i64 %i.fo ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  %i.hn = load i64, ptr %i.hm, align 8, !range !11, !alias.scope !1312, !noalias !1313, !noundef !4
  %i.ho = icmp eq i64 %i.hn, -1
  br i1 %i.ho, label %bb.ay, label %bb.ax, !prof !19

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1314
  store ptr %i.hm, ptr %i.n, align 8, !noalias !1314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1314
  store ptr %i.n, ptr %i.m, align 8, !noalias !1314
  br label %.invoke589.sink.split

bb.ay:                                            ; preds = %bb.aw
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB4_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB8_7context15PyFormatContextE3fmt:bb.a
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.iv = load i64, ptr %.sroa.11.0529, align 8, !range !14, !alias.scope !1321, !noundef !4
  %.not252 = icmp eq i64 %i.iv, 0
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.11.0529, i64 16 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.11.0529, i64 24 ; 2 uses
  br i1 %.not252, label %bb.br, label %switch.lookup

switch.lookup:                                    ; preds = %bb.bq, %bb.br
  %.sink = phi i64 [ 1, %bb.br ], [ 2, %bb.bq ]
  store i64 %.sink, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %.val68 = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0536) ]
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB4_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB8_7context15PyFormatContextE3fmt.78, i64 %.sroa.02.0541
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %.val68, i64 16
  store i64 %switch.ext, ptr %i.k, align 8
  store ptr %.sroa.9.0536, ptr %i.fj, align 8
  %i.iz = invoke { ptr, i64 } @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments3mapINtB2_8MultiMapNtNtB4_8node_key18NodeRefEqualityKeyNtB4_13SourceCommentE7leadingB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.iy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k)
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.ja = load ptr, ptr %i.iw, align 8, !alias.scope !1321, !nonnull !4, !align !8
  %i.jb = load i64, ptr %i.ix, align 8, !alias.scope !1321
  store ptr %i.ja, ptr %.sroa.4195.0..sroa_idx606, align 8
  store i64 %i.jb, ptr %.sroa.5196.0..sroa_idx610, align 8
  br label %switch.lookup

bb.bs:                                            ; preds = %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.jc = extractvalue { ptr, i64 } %i.iz, 0
  %i.jd = extractvalue { ptr, i64 } %i.iz, 1
  store ptr %i.jc, ptr %i.fi, align 8, !alias.scope !1322
  store i64 %i.jd, ptr %i.fh, align 8, !alias.scope !1322
  store i64 1, ptr %i.aj, align 8, !alias.scope !1322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.je = invoke { i64, ptr } @_RINvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter6string8implicitNtB3_32FormatImplicitConcatenatedString3newNtNtCskLngH8kgpZI_15ruff_python_ast10expression10StringLikeEB7_(i64 noundef %.sroa.02.0541, ptr noundef nonnull %.sroa.9.0536)
          to label %switch.lookup758 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

switch.lookup758:                                 ; preds = %bb.bs
  %i.jf = extractvalue { i64, ptr } %i.je, 0
  %i.jg = extractvalue { i64, ptr } %i.je, 1
  store i64 %i.jf, ptr %i.ai, align 8
  store ptr %i.jg, ptr %i.fg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %.val75 = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %switch.gep759 = getelementptr inbounds i8, ptr @switch.table._RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB4_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB8_7context15PyFormatContextE3fmt.78, i64 %.sroa.02.0541
  %switch.load760 = load i8, ptr %switch.gep759, align 1
  %switch.ext761 = zext i8 %switch.load760 to i64
  %i.jh = getelementptr inbounds nuw i8, ptr %.val75, i64 16
  store i64 %switch.ext761, ptr %i.j, align 8
  store ptr %.sroa.9.0536, ptr %i.ff, align 8
  %i.ji = invoke { ptr, i64 } @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments3mapINtB2_8MultiMapNtNtB4_8node_key18NodeRefEqualityKeyNtB4_13SourceCommentE8trailingB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.jh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j)
          to label %bb.bt unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.bt:                                            ; preds = %switch.lookup758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.jj = extractvalue { ptr, i64 } %i.ji, 0
  %i.jk = extractvalue { ptr, i64 } %i.ji, 1
  store ptr %i.jj, ptr %i.ah, align 8
  store i64 %i.jk, ptr %i.fe, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %i.jl = load i64, ptr %.sroa.11.0529, align 8, !range !14, !alias.scope !1323, !noundef !4
  %.not253 = icmp eq i64 %i.jl, 2
  br i1 %.not253, label %bb.bv, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %bb.bt, %bb.bv
  %.sink488 = phi ptr [ %i.js, %bb.bv ], [ null, %bb.bt ]
  store ptr %.sink488, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1324
  invoke void @_RNvXsm_Cs7Ma6rQP8bRy_14ruff_formatterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6format21FormatLeadingCommentsEINtB5_6FormatNtNtB1h_7context15PyFormatContextE3fmtB1h_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc129 unwind label %.loopexit.split-lp.loopexit, !inline_history !0

.noexc129:                                        ; preds = %.lr.ph.i125
  %i.jm = load i32, ptr %i.i, align 8, !range !10, !noalias !1324, !noundef !4 ; 2 uses
  %.not.i127 = icmp eq i32 %i.jm, -1
  br i1 %.not.i127, label %.lr.ph.i125.1, label %bb.bw

.lr.ph.i125.1:                                    ; preds = %.noexc129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1324
  invoke void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB2_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc129.1 unwind label %.loopexit.split-lp.loopexit, !inline_history !0

.noexc129.1:                                      ; preds = %.lr.ph.i125.1
  %i.jn = load i32, ptr %i.i, align 8, !range !10, !noalias !1324, !noundef !4 ; 2 uses
  %.not.i127.1 = icmp eq i32 %i.jn, -1
  br i1 %.not.i127.1, label %.lr.ph.i125.2, label %bb.bw

.lr.ph.i125.2:                                    ; preds = %.noexc129.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1324
  invoke void @_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string8implicitNtB4_32FormatImplicitConcatenatedStringINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB8_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc129.2 unwind label %.loopexit.split-lp.loopexit, !inline_history !0

.noexc129.2:                                      ; preds = %.lr.ph.i125.2
  %i.jo = load i32, ptr %i.i, align 8, !range !10, !noalias !1324, !noundef !4 ; 2 uses
  %.not.i127.2 = icmp eq i32 %i.jo, -1
  br i1 %.not.i127.2, label %.lr.ph.i125.3, label %bb.bw

.lr.ph.i125.3:                                    ; preds = %.noexc129.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1324
  invoke void @_RNvXs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_22FormatTrailingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc129.3 unwind label %.loopexit.split-lp.loopexit, !inline_history !0

.noexc129.3:                                      ; preds = %.lr.ph.i125.3
  %i.jp = load i32, ptr %i.i, align 8, !range !10, !noalias !1324, !noundef !4 ; 2 uses
  %.not.i127.3 = icmp eq i32 %i.jp, -1
  br i1 %.not.i127.3, label %.lr.ph.i125.4, label %bb.bw

.lr.ph.i125.4:                                    ; preds = %.noexc129.3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1324
  invoke void @_RNvXsm_Cs7Ma6rQP8bRy_14ruff_formatterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6format22FormatTrailingCommentsEINtB5_6FormatNtNtB1h_7context15PyFormatContextE3fmtB1h_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc129.4 unwind label %.loopexit.split-lp.loopexit, !inline_history !0

.noexc129.4:                                      ; preds = %.lr.ph.i125.4
  %i.jq = load i32, ptr %i.i, align 8, !range !10, !noalias !1324, !noundef !4 ; 2 uses
  %.not.i127.4 = icmp eq i32 %i.jq, -1
  br i1 %.not.i127.4, label %.lr.ph.i125.5, label %bb.bw

.lr.ph.i125.5:                                    ; preds = %.noexc129.4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1324
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1324
  invoke void @_RNvXs9_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_18LineSuffixBoundaryINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1q_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc129.5 unwind label %.loopexit.split-lp.loopexit, !inline_history !0

.noexc129.5:                                      ; preds = %.lr.ph.i125.5
  %i.jr = load i32, ptr %i.i, align 8, !range !10, !noalias !1324, !noundef !4 ; 2 uses
  %.not.i127.5 = icmp eq i32 %i.jr, -1
  br i1 %.not.i127.5, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %.noexc129.5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.bx

bb.bv:                                            ; preds = %bb.bt
  %i.js = load ptr, ptr %i.iw, align 8, !alias.scope !1323, !nonnull !4, !align !8
  %i.jt = load i64, ptr %i.ix, align 8, !alias.scope !1323
  store i64 %i.jt, ptr %i.fd, align 8
  br label %.lr.ph.i125

bb.bw:                                            ; preds = %.noexc129.5, %.noexc129.4, %.noexc129.3, %.noexc129.2, %.noexc129.1, %.noexc129
  %.lcssa383 = phi i32 [ %i.jm, %.noexc129 ], [ %i.jn, %.noexc129.1 ], [ %i.jo, %.noexc129.2 ], [ %i.jp, %.noexc129.3 ], [ %i.jq, %.noexc129.4 ], [ %i.jr, %.noexc129.5 ]
  %.sroa.4175.0..sroa_idx176 = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %.sroa.4206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4206.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4175.0..sroa_idx176, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i32 %.lcssa383, ptr %0, align 8
  br label %bb.dh

bb.bx:                                            ; preds = %bb.bz, %bb.bu
  %i.ju = phi ptr [ %i.gj, %bb.bz ], [ %i.ew, %bb.bu ] ; 9 uses
  %i.jv = phi ptr [ %i.gk, %bb.bz ], [ %i.ex, %bb.bu ] ; 8 uses
  %i.jw = phi ptr [ %i.gl, %bb.bz ], [ %i.ey, %bb.bu ] ; 8 uses
  %i.jx = phi ptr [ %i.gm, %bb.bz ], [ %i.ez, %bb.bu ] ; 8 uses
  %i.jy = phi ptr [ %i.gn, %bb.bz ], [ %i.fa, %bb.bu ] ; 8 uses
  %i.jz = phi ptr [ %i.go, %bb.bz ], [ %i.fb, %bb.bu ] ; 8 uses
  %i.ka = phi ptr [ %i.gp, %bb.bz ], [ %i.fc, %bb.bu ] ; 8 uses
  %i.kb = phi ptr [ %i.gq, %bb.bz ], [ %i.fd, %bb.bu ] ; 8 uses
  %i.kc = phi ptr [ %i.gr, %bb.bz ], [ %i.fe, %bb.bu ] ; 8 uses
  %i.kd = phi ptr [ %i.gs, %bb.bz ], [ %i.ff, %bb.bu ] ; 8 uses
  %i.ke = phi ptr [ %i.gt, %bb.bz ], [ %i.fg, %bb.bu ] ; 8 uses
  %i.kf = phi ptr [ %i.gu, %bb.bz ], [ %i.fh, %bb.bu ] ; 8 uses
  %i.kg = phi ptr [ %i.gv, %bb.bz ], [ %i.fi, %bb.bu ] ; 8 uses
  %i.kh = phi ptr [ %i.gw, %bb.bz ], [ %i.fj, %bb.bu ] ; 8 uses
  %.sroa.5196.0..sroa_idx609 = phi ptr [ %.sroa.5196.0..sroa_idx608, %bb.bz ], [ %.sroa.5196.0..sroa_idx610, %bb.bu ] ; 8 uses
  %.sroa.4195.0..sroa_idx605 = phi ptr [ %.sroa.4195.0..sroa_idx604, %bb.bz ], [ %.sroa.4195.0..sroa_idx606, %bb.bu ] ; 8 uses
  %i.ki = phi ptr [ %i.gx, %bb.bz ], [ %i.fk, %bb.bu ] ; 8 uses
  %i.kj = phi ptr [ %i.gy, %bb.bz ], [ %i.fl, %bb.bu ] ; 8 uses
  %i.kk = phi ptr [ %i.gz, %bb.bz ], [ %i.fm, %bb.bu ] ; 8 uses
  %i.kl = phi ptr [ %i.ha, %bb.bz ], [ %i.fn, %bb.bu ] ; 8 uses
  %.sroa.10.0535 = phi i64 [ 0, %bb.bz ], [ %.sroa.10.0530, %bb.bu ] ; 2 uses
  %.sroa.16.1528 = phi ptr [ %.sroa.16.1525, %bb.bz ], [ %.sroa.16.1523, %bb.bu ] ; 2 uses
  %.sroa.24.1522 = phi i64 [ 1, %bb.bz ], [ %.sroa.24.1517, %bb.bu ]
  %i.km = add i64 %.sroa.10.0535, 1               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.kn = and i64 %i.km, 1                        ; 2 uses
  store i64 %i.kn, ptr %i.h, align 8
  %.not.i.i131 = icmp eq i64 %i.kn, 0
  br i1 %.not.i.i131, label %.invoke591, label %bb.cb, !prof !17

.invoke591:                                       ; preds = %bb.bx, %bb.aj
  %i.ko = phi ptr [ %i.p, %bb.aj ], [ %i.h, %bb.bx ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ko, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @27, ptr noundef nonnull @28, ptr nonnull inttoptr (i64 77 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #22
          to label %.cont592 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont592:                                         ; preds = %.invoke591
  unreachable

bb.by:                                            ; preds = %_RNvXs1_NtCs4NRVxsYgnAr_4core7convertNtNtCskLngH8kgpZI_15ruff_python_ast10expression10StringLikeINtB5_4IntoNtNtBC_9generated10AnyNodeRefE4intoCs8CpBcHC8tKo_21ruff_python_formatter.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.kp = extractvalue { ptr, i64 } %i.hc, 0
  %i.kq = extractvalue { ptr, i64 } %i.hc, 1
  store ptr %i.kp, ptr %i.go, align 8, !alias.scope !1325
  store i64 %i.kq, ptr %i.gn, align 8, !alias.scope !1325
  store i64 1, ptr %i.af, align 8, !alias.scope !1325
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.kr = invoke { i64, ptr } @_RINvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter6string8implicitNtB3_32FormatImplicitConcatenatedString3newNtNtCskLngH8kgpZI_15ruff_python_ast10expression10StringLikeEB7_(i64 noundef %.sroa.02.0543, ptr noundef nonnull %.sroa.9.0538)
          to label %switch.lookup762 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

switch.lookup762:                                 ; preds = %bb.by
  %i.ks = extractvalue { i64, ptr } %i.kr, 0
  %i.kt = extractvalue { i64, ptr } %i.kr, 1
  store i64 %i.ks, ptr %i.ae, align 8
  store ptr %i.kt, ptr %i.gm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %.val74 = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %switch.gep763 = getelementptr inbounds i8, ptr @switch.table._RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB4_10BinaryLikeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB8_7context15PyFormatContextE3fmt.78, i64 %.sroa.02.0543
  %switch.load764 = load i8, ptr %switch.gep763, align 1
  %switch.ext765 = zext i8 %switch.load764 to i64
  %i.ku = getelementptr inbounds nuw i8, ptr %.val74, i64 16
  store i64 %switch.ext765, ptr %i.g, align 8
  store ptr %.sroa.9.0538, ptr %i.gl, align 8
  %i.kv = invoke { ptr, i64 } @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments3mapINtB2_8MultiMapNtNtB4_8node_key18NodeRefEqualityKeyNtB4_13SourceCommentE8trailingB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ku, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %.lr.ph.i139 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.lr.ph.i139:                                      ; preds = %switch.lookup762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.kw = extractvalue { ptr, i64 } %i.kv, 0
  %i.kx = extractvalue { ptr, i64 } %i.kv, 1
  store ptr %i.kw, ptr %i.ad, align 8
  store i64 %i.kx, ptr %i.gk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1326
  invoke void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB2_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull %i.af, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc143 unwind label %.loopexit, !inline_history !0

.noexc143:                                        ; preds = %.lr.ph.i139
  %i.ky = load i32, ptr %i.f, align 8, !range !10, !noalias !1326, !noundef !4 ; 2 uses
  %.not.i141 = icmp eq i32 %i.ky, -1
  br i1 %.not.i141, label %.lr.ph.i139.1, label %bb.ca

.lr.ph.i139.1:                                    ; preds = %.noexc143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1326
  invoke void @_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string8implicitNtB4_32FormatImplicitConcatenatedStringINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB8_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull %i.ae, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc143.1 unwind label %.loopexit, !inline_history !0

.noexc143.1:                                      ; preds = %.lr.ph.i139.1
  %i.kz = load i32, ptr %i.f, align 8, !range !10, !noalias !1326, !noundef !4 ; 2 uses
  %.not.i141.1 = icmp eq i32 %i.kz, -1
  br i1 %.not.i141.1, label %.lr.ph.i139.2, label %bb.ca

.lr.ph.i139.2:                                    ; preds = %.noexc143.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1326
  invoke void @_RNvXs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_22FormatTrailingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc143.2 unwind label %.loopexit, !inline_history !0

.noexc143.2:                                      ; preds = %.lr.ph.i139.2
  %i.la = load i32, ptr %i.f, align 8, !range !10, !noalias !1326, !noundef !4 ; 2 uses
  %.not.i141.2 = icmp eq i32 %i.la, -1
  br i1 %.not.i141.2, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.noexc143.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.bx

bb.ca:                                            ; preds = %.noexc143.2, %.noexc143.1, %.noexc143
  %.lcssa385 = phi i32 [ %i.ky, %.noexc143 ], [ %i.kz, %.noexc143.1 ], [ %i.la, %.noexc143.2 ]
  %.sroa.4179.0..sroa_idx180 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.4216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4216.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4179.0..sroa_idx180, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  store i32 %.lcssa385, ptr %0, align 8
  br label %bb.dh

bb.cb:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.lb = load i64, ptr %i.bq, align 8, !alias.scope !1327, !noalias !1328, !noundef !4 ; 2 uses
  %i.lc = icmp ugt i64 %i.lb, 8                   ; 2 uses
  %i.ld = load ptr, ptr %i.ar, align 8, !alias.scope !1327, !noalias !1328, !nonnull !4
  %i.le = load i64, ptr %i.bu, align 8, !alias.scope !1327, !noalias !1328
  %.sink9.i.i146 = select i1 %i.lc, i64 %i.le, i64 %i.lb
  call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  %i.lf = icmp ult i64 %i.km, %.sink9.i.i146
  br i1 %i.lf, label %bb.cc, label %_RNvMs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_25FlatBinaryExpressionSlice12get_operator.exit.thread

bb.cc:                                            ; preds = %bb.cb
  %.sink10.i.i145 = select i1 %i.lc, ptr %i.ld, ptr %i.ar
  %i.lg = getelementptr inbounds nuw [32 x i8], ptr %.sink10.i.i145, i64 %i.km ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  %i.lh = load i64, ptr %i.lg, align 8, !range !11, !alias.scope !1331, !noundef !4
  %i.li = icmp eq i64 %i.lh, -1
  br i1 %i.li, label %bb.ce, label %bb.cd, !prof !19

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1331
  store ptr %i.lg, ptr %i.e, align 8, !noalias !1331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1331
  store ptr %i.e, ptr %i.d, align 8, !noalias !1331
  br label %.invoke589.sink.split

bb.ce:                                            ; preds = %bb.cc
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  invoke void @_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11parentheses41write_in_parentheses_only_group_start_tag(ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cf:                                            ; preds = %bb.ce
  %i.lk = load i64, ptr %i.bq, align 8, !alias.scope !1332, !noalias !1333, !noundef !4 ; 2 uses
  %i.ll = icmp ugt i64 %i.lk, 8                   ; 2 uses
  %i.lm = load ptr, ptr %i.ar, align 8, !alias.scope !1332, !noalias !1333, !nonnull !4
  %i.ln = load i64, ptr %i.bu, align 8, !alias.scope !1332, !noalias !1333
  %.sink9.i.i155 = select i1 %i.ll, i64 %i.ln, i64 %i.lk ; 2 uses
  %i.lo = add i64 %.sroa.10.0535, 2               ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  %i.lp = icmp ult i64 %i.lo, %.sink9.i.i155
  br i1 %i.lp, label %bb.cg, label %.invoke587

bb.cg:                                            ; preds = %bb.cf
  %.sink10.i.i154 = select i1 %i.ll, ptr %i.lm, ptr %i.ar
  %i.lq = getelementptr inbounds nuw [32 x i8], ptr %.sink10.i.i154, i64 %i.lo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %i.lr = load i64, ptr %i.lq, align 8, !range !11, !alias.scope !1336, !noalias !1337, !noundef !4
  %i.ls = icmp eq i64 %i.lr, -1
  br i1 %i.ls, label %bb.ch, label %_RNvXsd_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_25FlatBinaryExpressionSliceINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexNtB5_12OperandIndexE5index.exit, !prof !17

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1338
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store ptr %i.lt, ptr %i.c, align 8, !noalias !1338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1338
  store ptr %i.c, ptr %i.b, align 8, !noalias !1338
  br label %.invoke589.sink.split

.invoke589.sink.split:                            ; preds = %bb.ch, %bb.cd, %bb.ax
  %.sink595.sroa.phi = phi ptr [ %.sink595.sroa.gep, %bb.ax ], [ %.sink595.sroa.gep599, %bb.cd ], [ %.sink595.sroa.gep600, %bb.ch ]
  %.sink595 = phi ptr [ %i.m, %bb.ax ], [ %i.d, %bb.cd ], [ %i.b, %bb.ch ]
  %_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like7OperandNtB6_5Debug3fmtBC_.sink = phi ptr [ @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like7OperandNtB6_5Debug3fmtBC_, %bb.ax ], [ @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like7OperandNtB6_5Debug3fmtBC_, %bb.cd ], [ @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like8OperatorNtB6_5Debug3fmtBC_, %bb.ch ]
  %.ph = phi ptr [ @25, %bb.ax ], [ @25, %bb.cd ], [ @23, %bb.ch ]
  %.ph594 = phi ptr [ @26, %bb.ax ], [ @26, %bb.cd ], [ @24, %bb.ch ]
  store ptr %_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like7OperandNtB6_5Debug3fmtBC_.sink, ptr %.sink595.sroa.phi, align 8, !noalias !4
  br label %.invoke589

.invoke589:                                       ; preds = %.invoke589.sink.split, %.thread, %bb.ay, %bb.az
  %i.lu = phi ptr [ @18, %bb.az ], [ @18, %.thread ], [ @18, %bb.ay ], [ %.ph, %.invoke589.sink.split ]
  %i.lv = phi ptr [ inttoptr (i64 123 to ptr), %bb.az ], [ inttoptr (i64 123 to ptr), %.thread ], [ inttoptr (i64 123 to ptr), %bb.ay ], [ %.sink595, %.invoke589.sink.split ]
  %i.lw = phi ptr [ @20, %bb.az ], [ @19, %.thread ], [ @20, %bb.ay ], [ %.ph594, %.invoke589.sink.split ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull %i.lu, ptr noundef nonnull %i.lv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lw) #22
          to label %.cont590 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont590:                                         ; preds = %.invoke589
  unreachable

.invoke587:                                       ; preds = %bb.cf, %bb.av
  %i.lx = phi i64 [ %i.fo, %bb.av ], [ %i.lo, %bb.cf ]
  %i.ly = phi i64 [ %.sink9.i.i93, %bb.av ], [ %.sink9.i.i155, %bb.cf ]
  %i.lz = phi ptr [ @87, %bb.av ], [ @88, %bb.cf ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.lx, i64 noundef %i.ly, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lz) #22
          to label %.cont588 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont588:                                         ; preds = %.invoke587
  unreachable

_RNvXsd_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_25FlatBinaryExpressionSliceINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexNtB5_12OperandIndexE5index.exit: ; preds = %bb.cg
  %i.ma = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.mb = load ptr, ptr %i.au, align 8, !nonnull !4, !align !9, !noundef !4
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 48
  %i.md = load ptr, ptr %i.mc, align 8, !invariant.load !4, !nonnull !4
  %i.me = invoke noundef nonnull align 8 ptr %i.md(ptr noundef nonnull %i.ma)
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ci:                                            ; preds = %_RNvXsd_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_25FlatBinaryExpressionSliceINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexNtB5_12OperandIndexE5index.exit
  %i.mf = invoke fastcc noundef zeroext i1 @_RNvMs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_7Operand36has_unparenthesized_leading_comments(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.lq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.me)
          to label %bb.cj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.mf, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store i8 0, ptr %i.t, align 8
  %i.mg = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.mh = load ptr, ptr %i.au, align 8, !nonnull !4, !align !9, !noundef !4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8, !invariant.load !4, !nonnull !4
  invoke void %i.mj(ptr noundef nonnull %i.mg, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t)
          to label %bb.cq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i8 1, ptr %i.ab, align 1
  invoke void @_RNvXs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11parenthesesNtB5_26InParenthesesOnlyLineBreakINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.cm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cm:                                            ; preds = %bb.cl
  %i.mk = load i32, ptr %i.ac, align 8, !range !10, !noundef !4
  %.not60 = icmp eq i32 %i.mk, -1
  br i1 %.not60, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.dh

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cq, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvXs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_8OperatorINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.lj, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cq:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.cp

bb.cr:                                            ; preds = %bb.cp
  %i.ml = load i32, ptr %i.aa, align 8, !range !10, !noundef !4
  %.not61 = icmp eq i32 %i.ml, -1
  br i1 %.not61, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.dh

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br i1 %i.mf, label %bb.cu, label %bb.cz

bb.cu:                                            ; preds = %bb.ct
  %i.mm = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.mn = load ptr, ptr %i.au, align 8, !nonnull !4, !align !9, !noundef !4
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 48
  %i.mp = load ptr, ptr %i.mo, align 8, !invariant.load !4, !nonnull !4
  %i.mq = invoke noundef nonnull align 8 ptr %i.mp(ptr noundef nonnull %i.mm)
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cv:                                            ; preds = %bb.cu
  %i.mr = getelementptr i8, ptr %i.lq, i64 8
  %.val76 = load ptr, ptr %i.mr, align 8, !nonnull !4, !align !9, !noundef !4
  %i.ms = invoke { i64, ptr } @_RNvXs5b_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %.val76)
          to label %bb.cw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.cw:                                            ; preds = %bb.cv
  %i.mt = extractvalue { i64, ptr } %i.ms, 0
  %i.mu = extractvalue { i64, ptr } %i.ms, 1
  %i.mv = invoke noundef zeroext i1 @_RNvMNtCs8CpBcHC8tKo_21ruff_python_formatter7contextNtB2_15PyFormatContext27is_expression_parenthesized(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.mq, i64 noundef %i.mt, ptr noundef %i.mu)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cx:                                            ; preds = %bb.cw
  br i1 %i.mv, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i8 2, ptr %i.ju, align 1
  store i8 1, ptr %i.s, align 8
  %i.mw = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.mx = load ptr, ptr %i.au, align 8, !nonnull !4, !align !9, !noundef !4
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  %i.mz = load ptr, ptr %i.my, align 8, !invariant.load !4, !nonnull !4
  invoke void %i.mz(ptr noundef nonnull %i.mw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.dc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.cz:                                            ; preds = %bb.ct, %bb.cx
  %i.na = getelementptr i8, ptr %i.lg, i64 16
  %.val72 = load i64, ptr %i.na, align 8, !noundef !4
  %.not254 = icmp eq i64 %.val72, 0
  br i1 %.not254, label %bb.da, label %bb.cy

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 0, ptr %i.r, align 8
  %i.nb = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4
  %i.nc = load ptr, ptr %i.au, align 8, !nonnull !4, !align !9, !noundef !4
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  %i.ne = load ptr, ptr %i.nd, align 8, !invariant.load !4, !nonnull !4
  invoke void %i.ne(ptr noundef nonnull %i.nb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.z

bb.dc:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.z

_RNvMs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_25FlatBinaryExpressionSlice12get_operator.exit.thread: ; preds = %bb.cb, %bb.dg
  invoke void @_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11parentheses39write_in_parentheses_only_group_end_tag(ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit263.thread:                              ; preds = %.thread.i.i.i.i.i.i, %bb.z
  %i.nf = load i64, ptr %i.bq, align 8, !alias.scope !1339, !noalias !1340, !noundef !4 ; 2 uses
  %i.ng = icmp ugt i64 %i.nf, 8                   ; 2 uses
  %i.nh = load i64, ptr %i.bu, align 8, !alias.scope !1339, !noalias !1340
  %.sink9.i.i160 = select i1 %i.ng, i64 %i.nh, i64 %i.nf ; 4 uses
  %i.ni = icmp ugt i64 %i.lo, %.sink9.i.i160
  br i1 %i.ni, label %.invoke, label %bb.dd, !prof !17

.invoke:                                          ; preds = %.loopexit263.thread, %bb.au
  %i.nj = phi i64 [ %spec.select.i.i, %bb.au ], [ %i.lo, %.loopexit263.thread ]
  %i.nk = phi i64 [ %i.fo, %bb.au ], [ %.sink9.i.i160, %.loopexit263.thread ]
  %i.nl = phi i64 [ %.sink9.i.i93, %bb.au ], [ %.sink9.i.i160, %.loopexit263.thread ]
  %i.nm = phi ptr [ @22, %bb.au ], [ @21, %.loopexit263.thread ]
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.nj, i64 noundef %i.nk, i64 noundef %i.nl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.nm) #22
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.dd:                                            ; preds = %.loopexit263.thread
  %i.nn = load ptr, ptr %i.ar, align 8, !alias.scope !1339, !noalias !1340, !nonnull !4
  %.sink10.i.i159 = select i1 %i.ng, ptr %i.nn, ptr %i.ar
  %i.no = sub nuw i64 %.sink9.i.i160, %i.lo
  %i.np = getelementptr inbounds nuw [32 x i8], ptr %.sink10.i.i159, i64 %i.lo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  invoke void @_RNvXs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_25FlatBinaryExpressionSliceINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.np, i64 noundef %i.no, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.de unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.de:                                            ; preds = %bb.dd
  %i.nq = load i32, ptr %i.z, align 8, !range !10, !noundef !4
  %.not48 = icmp eq i32 %i.nq, -1
  br i1 %.not48, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.dh

bb.dg:                                            ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11parentheses39write_in_parentheses_only_group_end_tag(ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %_RNvMs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_25FlatBinaryExpressionSlice12get_operator.exit.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dh:                                            ; preds = %bb.bc, %bb.bh, %bb.df, %bb.bw, %bb.ca, %bb.cs, %bb.cn, %bb.t, %bb.dj
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like17OperandOrOperatorj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(264) %i.ar)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like20FlatBinaryExpressionEBH_.exit163 unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like20FlatBinaryExpressionEBH_.exit86: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.experimental.noalias.scope.decl(metadata !1341)
  call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  %i.nr = load ptr, ptr %i.as, align 8, !alias.scope !1344, !nonnull !4, !noundef !4 ; 2 uses
  %i.ns = load i64, ptr %i.nr, align 8, !noalias !1344, !noundef !4
  %i.nt = add i64 %i.ns, -1                       ; 2 uses
  store i64 %i.nt, ptr %i.nr, align 8, !noalias !1344
  %i.nu = icmp eq i64 %i.nt, 0
  br i1 %i.nu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit165.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit165

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit165.sink.split: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like20FlatBinaryExpressionEBH_.exit86, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like20FlatBinaryExpressionEBH_.exit163
  call void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.as)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit165

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit165: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit165.sink.split, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like20FlatBinaryExpressionEBH_.exit86, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like20FlatBinaryExpressionEBH_.exit163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  ret void

bb.di:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.ar, ptr noundef nonnull align 8 dereferenceable(264) %i.q, i64 264, i1 false), !noalias !1281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ar, i64 256
  %i.nw = load i64, ptr %i.nv, align 8, !alias.scope !1345, !noalias !1346, !noundef !4 ; 2 uses
  %i.nx = icmp ugt i64 %i.nw, 8                   ; 2 uses
  %i.ny = load ptr, ptr %i.ar, align 8, !alias.scope !1345, !noalias !1346, !nonnull !4
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.oa = load i64, ptr %i.nz, align 8, !alias.scope !1345, !noalias !1346
  %.sink10.i.i78 = select i1 %i.nx, ptr %i.ny, ptr %i.ar
  %.sink9.i.i79 = select i1 %i.nx, i64 %i.oa, i64 %i.nw
  store ptr %.sink10.i.i78, ptr %i.ap, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 %.sink9.i.i79, ptr %i.ob, align 8
  store ptr %i.ap, ptr %i.aq, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @2, ptr %i.oc, align 8
  invoke void @_RNvXs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11parenthesesNtB5_28FormatInParenthesesOnlyGroupINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.dj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.dh

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_like20FlatBinaryExpressionEBH_.exit163: ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %i.od = load ptr, ptr %i.as, align 8, !alias.scope !1350, !nonnull !4, !noundef !4 ; 2 uses
  %i.oe = load i64, ptr %i.od, align 8, !noalias !1350, !noundef !4
  %i.of = add i64 %i.oe, -1                       ; 2 uses
  store i64 %i.of, ptr %i.od, align 8, !noalias !1350
  %i.og = icmp eq i64 %i.of, 0
  br i1 %i.og, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit165.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit165

bb.dk:                                            ; preds = %.loopexit.split-lp, %bb.c
  %i.oh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit: ; preds = %.body, %bb.c
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression14expr_generatorNtB4_19FormatExprGeneratorINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorE10fmt_fields(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noundef nonnull align 8 %2, ptr noalias noundef align 8 dereferenceable(16) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [72 x i8], align 8                ; 12 uses
  %i.k = alloca [1 x i8], align 1                 ; 4 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [8 x i8], align 8                 ; 8 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %2, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.p = load ptr, ptr %3, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4, !align !9, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !4, !nonnull !4
  %i.u = tail call noundef nonnull align 8 ptr %i.t(ptr noundef nonnull %i.p)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !noundef !4 ; 2 uses
  %i.y = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add i64 %i.x, 1                          ; 2 uses
  store i64 %i.z, ptr %i.w, align 8
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4
  store ptr %i.ab, ptr %i.n, align 8
  %i.ac = invoke { ptr, i64 } @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments8danglingRNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorEB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noundef nonnull align 8 %2)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i2.2, %.lr.ph.i2.1, %.lr.ph.i2
  %lpad.loopexit9 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.c
  %lpad.loopexit.split-lp10 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit9, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp10, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %i.ad = load ptr, ptr %i.n, align 8, !alias.scope !1385, !nonnull !4, !noundef !4 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !1385, !noundef !4
  %i.af = add i64 %i.ae, -1                       ; 2 uses
  store i64 %i.af, ptr %i.ad, align 8, !noalias !1385
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit

bb.d:                                             ; preds = %.loopexit.split-lp
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit unwind label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.ah = extractvalue { ptr, i64 } %i.ac, 0
  %i.ai = extractvalue { ptr, i64 } %i.ac, 1      ; 2 uses
  %i.aj = load i8, ptr %1, align 1, !range !15, !noundef !4
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = icmp eq i64 %i.ai, 0
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
end_hunk_2
