Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_formatter-8484042226fb24b2.ruff_python_formatter.6465bac6d8d74cf2-cgu.13?download=true
inline.NumInlined: 628
inline.NumDeleted: 209
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_RNvXs6_NtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assignNtB5_17AnyBeforeOperatorINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt:bb.a
  %i.u = load ptr, ptr %i.k, align 8, !nonnull !3, !align !27, !noundef !3 ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !3, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = tail call { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.u) ; 2 uses
  %i.z = extractvalue { i64, ptr } %i.y, 0
  %i.aa = extractvalue { i64, ptr } %i.y, 1
  store i64 %i.z, ptr %i.b, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = call { ptr, i64 } @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments3mapINtB2_8MultiMapNtNtB4_8node_key18NodeRefEqualityKeyNtB4_13SourceCommentE7leadingB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  %i.ad = extractvalue { ptr, i64 } %i.ac, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.af = load ptr, ptr %i.p, align 8, !nonnull !3, !align !27, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !invariant.load !3, !nonnull !3
  %i.ai = call noundef nonnull align 8 ptr %i.ah(ptr noundef nonnull %i.ae)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !3, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.am = call { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.u) ; 2 uses
  %i.an = extractvalue { i64, ptr } %i.am, 0
  %i.ao = extractvalue { i64, ptr } %i.am, 1
  store i64 %i.an, ptr %i.a, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = call { ptr, i64 } @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments3mapINtB2_8MultiMapNtNtB4_8node_key18NodeRefEqualityKeyNtB4_13SourceCommentE8trailingB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.al, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %i.ar = extractvalue { ptr, i64 } %i.aq, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not18 = icmp eq i64 %i.ar, 0
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.u, ptr %i.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i8 0, ptr %i.as, align 8
  call void @_RNvXs_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB4_10FormatExprINtCs7Ma6rQP8bRy_14ruff_formatter10FormatRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.as, ptr noundef nonnull align 8 %i.u, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.at = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.au = load ptr, ptr %i.p, align 8, !nonnull !3, !align !27, !noundef !3
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !invariant.load !3, !nonnull !3
  %i.ax = call noundef nonnull align 8 ptr %i.aw(ptr noundef nonnull %i.at) ; 2 uses
  %i.ay = load i32, ptr %i.u, align 8, !range !370, !noalias !1233, !noundef !3
  %i.az = icmp eq i32 %i.ay, 30
  br i1 %i.az, label %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit.thread, label %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26has_target_own_parentheses.exit.i

_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26has_target_own_parentheses.exit.i: ; preds = %bb.f
  %i.ba = call noundef i8 @_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression19has_own_parentheses(ptr noundef nonnull align 8 %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ax)
  %.not.i = icmp eq i8 %i.ba, 2
  br i1 %.not.i, label %tailrecurse.i.i, label %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit.thread

tailrecurse.i.i:                                  ; preds = %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26has_target_own_parentheses.exit.i, %bb.h
  %.tr.i.i = phi ptr [ %i.bf, %bb.h ], [ %i.u, %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26has_target_own_parentheses.exit.i ] ; 4 uses
  %i.bb = load i32, ptr %.tr.i.i, align 8, !range !370, !noundef !3
  switch i32 %i.bb, label %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit.thread20 [
    i32 16, label %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit
    i32 25, label %bb.g
    i32 26, label %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit.thread
  ]

bb.g:                                             ; preds = %tailrecurse.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 40 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !3, !noundef !3
  %i.be = call noundef i8 @_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression15has_parentheses(ptr noundef nonnull align 8 %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ax), !inline_history !1238
  %.not.i.i = icmp eq i8 %i.be, 2
  br i1 %.not.i.i, label %bb.h, label %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %i.bc, align 8, !nonnull !3, !noundef !3
  br label %tailrecurse.i.i

_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit: ; preds = %tailrecurse.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !3
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !3, !noundef !3
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !3
  %i.bl = sub i64 0, %i.bk
  %i.bm = icmp eq i64 %i.bh, %i.bl
  br i1 %i.bm, label %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit.thread20, label %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit.thread

_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit.thread: ; preds = %tailrecurse.i.i, %bb.g, %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26has_target_own_parentheses.exit.i, %bb.f, %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.u, ptr %i.d, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i8 2, ptr %i.bn, align 8
  call void @_RNvXs_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB4_10FormatExprINtCs7Ma6rQP8bRy_14ruff_formatter10FormatRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bn, ptr noundef nonnull align 8 %i.u, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit.thread20: ; preds = %tailrecurse.i.i, %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit
  %i.bo = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.bp = load ptr, ptr %i.p, align 8, !nonnull !3, !align !27, !noundef !3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !invariant.load !3, !nonnull !3
  %i.bs = call noundef nonnull align 8 ptr %i.br(ptr noundef nonnull %i.bo)
  %i.bt = call noundef zeroext i1 @_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression29can_omit_optional_parentheses(ptr noundef nonnull align 8 %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bs)
  br i1 %i.bt, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit.thread20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.u, ptr %i.e, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i8 2, ptr %i.bu, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @6, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 1, ptr %i.bw, align 8
  call void @_RNvXs_NtCs8CpBcHC8tKo_21ruff_python_formatter8buildersNtB4_21ParenthesizeIfExpandsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.j:                                             ; preds = %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit.thread20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.u, ptr %i.g, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 2, ptr %i.bx, align 8
  store ptr %i.g, ptr %i.h, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @6, ptr %i.by, align 8
  call void @_RNvXs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11parenthesesNtB5_25FormatOptionalParenthesesINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit.thread, %bb.j, %bb.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_10LineSuffixNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB12_E3fmtB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
.lr.ph.i:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 18, ptr %i.f, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.e, ptr %.sroa.41.0..sroa_idx, align 4
  store i8 10, ptr %i.c, align 8
  %i.g = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !align !27, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !3, !nonnull !3
  call void %i.k(ptr noundef nonnull %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1242
  %i.l = load ptr, ptr %1, align 8, !alias.scope !1239, !noalias !1245, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1239, !noalias !1245, !nonnull !3, !align !27, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !3, !noalias !1246, !nonnull !3
  call void %i.p(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.l, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !1246, !inline_history !29
  %i.q = load i32, ptr %i.a, align 8, !range !30, !noalias !1242, !noundef !3 ; 2 uses
  %.not.i = icmp eq i32 %i.q, -1
  br i1 %.not.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1242
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 19, ptr %i.r, align 8
  store i8 10, ptr %i.b, align 8
  %i.s = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.t = load ptr, ptr %i.h, align 8, !nonnull !3, !align !27, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !3, !nonnull !3
  call void %i.v(ptr noundef nonnull %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx5, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1242
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i32 %i.q, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtCs8CpBcHC8tKo_21ruff_python_formatter7contextINtB5_13WithNodeLevelINtNtCs7Ma6rQP8bRy_14ruff_formatter9formatter9FormatterNtB5_15PyFormatContextEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !align !27, !noundef !3
  %i.c = tail call noundef nonnull align 8 ptr @_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9state_mutB15_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assignNtB5_22MaybeParenthesizeValueINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !align !27, !noundef !3 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !range !370, !noundef !3
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !align !27, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !3, !nonnull !3
  %i.o = tail call noundef nonnull align 8 ptr %i.n(ptr noundef nonnull %i.j)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.val = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 31, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.r, align 8
  %i.s = call { ptr, i64 } @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments3mapINtB2_8MultiMapNtNtB4_8node_key18NodeRefEqualityKeyNtB4_13SourceCommentE7leadingB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  %i.t = extractvalue { ptr, i64 } %i.s, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.u = load i64, ptr %1, align 8, !range !631, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noundef !3
  call void @_RINvNtCs8CpBcHC8tKo_21ruff_python_formatter10expression29maybe_parenthesize_expressionNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefEB4_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 8 %i.f, i64 noundef %i.u, ptr noundef %i.w, i8 noundef 1)
  call void @_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB5_27MaybeParenthesizeExpressionINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB7_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.i, ptr %i.c, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 1, ptr %i.x, align 8
  store ptr %i.c, ptr %i.d, align 8, !alias.scope !1247, !noalias !1250
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @7, ptr %i.y, align 8, !alias.scope !1247, !noalias !1250
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 1, ptr %i.z, align 8, !alias.scope !1247, !noalias !1250
  call void @_RNvXs_NtCs8CpBcHC8tKo_21ruff_python_formatter8buildersNtB4_21ParenthesizeIfExpandsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs9_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_18LineSuffixBoundaryINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 7, ptr %i.a, align 8
  %i.b = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !27, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !3, !nonnull !3
  call void %i.f(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsA_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_12FitsExpandedNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB14_E3fmtB18_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
.lr.ph.i:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = load i8, ptr %i.f, align 4, !range !369, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 24, ptr %i.h, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.e, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %i.g, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i8 0, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 4
  store i8 10, ptr %i.c, align 8
  %i.i = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !align !27, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !nonnull !3
  call void %i.m(ptr noundef nonnull %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !1252)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1255
  %i.n = load ptr, ptr %1, align 8, !alias.scope !1252, !noalias !1258, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1252, !noalias !1258, !nonnull !3, !align !27, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !3, !noalias !1259, !nonnull !3
  call void %i.r(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.n, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !1259, !inline_history !29
  %i.s = load i32, ptr %i.a, align 8, !range !30, !noalias !1255, !noundef !3 ; 2 uses
  %.not.i = icmp eq i32 %i.s, -1
  br i1 %.not.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 25, ptr %i.t, align 8
  store i8 10, ptr %i.b, align 8
  %i.u = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.v = load ptr, ptr %i.j, align 8, !nonnull !3, !align !27, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !3, !nonnull !3
  call void %i.x(ptr noundef nonnull %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.414.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx6, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1255
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i32 %i.s, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXsB_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_10FormatWithNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextNCNvXNtNtB16_10expression14expr_list_compNtB2b_18FormatExprListCompINtB16_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprListCompE10fmt_fields0EINtB7_6FormatB12_E3fmtB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !align !27, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1260
  store i32 -1, ptr %i.a, align 8, !noalias !1260
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %i.b, align 8, !noalias !1260
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 33
  store i8 0, ptr %i.c, align 1, !noalias !1260
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %i.d, align 8, !noalias !1260
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !1260, !nonnull !3, !noundef !3 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noalias !1260, !noundef !3
  %i.i = getelementptr inbounds nuw [184 x i8], ptr %i.f, i64 %i.h
  %i.j = call noundef nonnull align 8 ptr @_RINvMsF_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB6_11JoinBuilderNtB6_4LineNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE7entriesINtB8_17FormatRefWithRuleNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionNtNtNtB1i_5other13comprehension19FormatComprehensionB1e_EINtNtB1i_13shared_traits13FormattedIterINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterB2Q_ERB2Q_B1e_EEB1i_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i), !noalias !1264 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1260
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXsB_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_10FormatWithNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextNCNvXs1_NtNtB16_9statement11stmt_assignNtB2e_30FormatStatementsLastExpressionINtB7_6FormatB12_E3fmts0_0EIB3m_B12_E3fmtB16_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !align !27, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.e, align 8            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  %i.f = load i64, ptr %.val, align 8, !range !666, !noalias !1269, !noundef !3
  %switch.not.i = icmp samesign ult i64 %i.f, 2
  br i1 %switch.not.i, label %bb.b, label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  tail call void @_RNvXs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string8implicitNtB5_36FormatImplicitConcatenatedStringFlatINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val1, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %_RNCNvXs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assignNtB7_30FormatStatementsLastExpressionINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1269
  store ptr %2, ptr %i.d, align 8, !noalias !1269
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @16, ptr %i.g, align 8, !noalias !1269
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false), !noalias !1269
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 0, ptr %i.i, align 8, !noalias !1269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1269
  store ptr %i.d, ptr %i.c, align 8, !noalias !1269
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1269
  store ptr %i.c, ptr %i.b, align 8, !noalias !1269
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @19, ptr %i.j, align 8, !noalias !1269
  call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1274
  invoke void @_RNvXs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string8implicitNtB5_36FormatImplicitConcatenatedStringFlatINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull readonly %.val1, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.noexc.i unwind label %bb.d, !noalias !1266, !inline_history !29

.noexc.i:                                         ; preds = %.lr.ph.i.i
  %i.k = load i32, ptr %i.a, align 8, !range !30, !noalias !1274, !noundef !3
  %.not.i.i = icmp eq i32 %i.k, -1
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.c

bb.c:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1274
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit.i

._crit_edge.i.i:                                  ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1274
  store i32 -1, ptr %0, align 8, !alias.scope !1278, !noalias !1277
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBP_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs7Ma6rQP8bRy_14ruff_formatter6buffer21RemoveSoftLinesBufferNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEEB1I_.exit.i unwind label %bb.e, !noalias !1266

_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit.i: ; preds = %._crit_edge.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1269
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1269
  call void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element8InternedBP_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h), !noalias !1266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1269
  br label %_RNCNvXs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assignNtB7_30FormatStatementsLastExpressionINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18, !noalias !1266
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs7Ma6rQP8bRy_14ruff_formatter6buffer21RemoveSoftLinesBufferNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEEB1I_.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.l

_RNCNvXs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assignNtB7_30FormatStatementsLastExpressionINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit: ; preds = %bb.b, %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXsB_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_10FormatWithNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextNCNvXs1_NtNtB16_9statement11stmt_assignNtB2e_30FormatStatementsLastExpressionINtB7_6FormatB12_E3fmts1_0EIB3m_B12_E3fmtB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !3, !align !606, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.c, align 8            ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1279)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  %i.d = load i32, ptr %.val, align 4, !range !1284, !noalias !1285, !noundef !3
  %i.e = load ptr, ptr %2, align 8, !alias.scope !1282, !noalias !1279, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1282, !noalias !1279, !nonnull !3, !align !27, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !3, !noalias !1285, !nonnull !3
  %i.j = tail call noundef nonnull align 8 ptr %i.i(ptr noundef nonnull %i.e), !noalias !1285, !inline_history !1286 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %.sroa.02.0.copyload.i = load i64, ptr %i.k, align 8, !noalias !1285 ; 2 uses
  store i8 2, ptr %i.k, align 8, !noalias !1285
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  store i32 %i.d, ptr %.sroa.41.0..sroa_idx.i, align 4, !noalias !1285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1285
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.l = load i64, ptr %.val1, align 8, !range !666, !noalias !1285, !noundef !3 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !1285, !nonnull !3, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  switch i64 %i.l, label %default.unreachable [
    i64 0, label %.split.i.i
    i64 1, label %bb.b
    i64 2, label %.split9.i.i
    i64 3, label %.split8.i.i
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

.split.i.i:                                       ; preds = %bb.a
  %i.o = load i64, ptr %i.n, align 8, !range !329, !noalias !1290, !noundef !3
  %.not.i.i = icmp eq i64 %i.o, -1
  br i1 %.not.i.i, label %bb.c, label %.lr.ph.i.i, !prof !48

.split9.i.i:                                      ; preds = %bb.a
  %i.p = load i64, ptr %i.n, align 8, !range !349, !noalias !1290, !noundef !3
  %i.q = icmp eq i64 %i.p, -2
  br i1 %i.q, label %.lr.ph.i.i, label %bb.c, !prof !348

.split8.i.i:                                      ; preds = %bb.a
  %i.r = load i64, ptr %i.n, align 8, !range !329, !noalias !1290, !noundef !3
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %.lr.ph.i.i, label %bb.c, !prof !348

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %i.n, align 8, !noalias !1290, !noundef !3
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %.lr.ph.i.i, label %bb.c, !prof !348

bb.c:                                             ; preds = %bb.b, %.split8.i.i, %.split9.i.i, %.split.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #20
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !1285

.noexc.i:                                         ; preds = %bb.c
  unreachable

.loopexit.i:                                      ; preds = %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i:                             ; preds = %bb.c
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.v = invoke noundef nonnull align 8 ptr @_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9state_mutB15_(ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.g unwind label %bb.f, !noalias !1279

.lr.ph.i.i:                                       ; preds = %bb.b, %.split8.i.i, %.split9.i.i, %.split.i.i
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !1287, !noalias !1285
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.n, ptr %i.w, align 8, !alias.scope !1287, !noalias !1285
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 0, ptr %i.x, align 8, !alias.scope !1287, !noalias !1285
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1294
  invoke void @_RNvXs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string8implicitNtB5_40FormatImplicitConcatenatedStringExpandedINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc11.i unwind label %.loopexit.i, !noalias !1279, !inline_history !29

end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assignNtB4_29FormatTargetWithEqualOperatorINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB8_7context15PyFormatContextE3fmt:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.v, ptr %i.f, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i8 2, ptr %i.bq, align 8
  call void @_RNvXs_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB4_10FormatExprINtCs7Ma6rQP8bRy_14ruff_formatter10FormatRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bq, ptr noundef nonnull align 8 %i.v, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  %i.br = load i32, ptr %i.g, align 8, !range !30, !noundef !3
  %.not9 = icmp eq i32 %i.br, -1
  br i1 %.not9, label %bb.i, label %bb.h

_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit.thread14: ; preds = %tailrecurse.i.i, %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.v, ptr %i.h, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 2, ptr %i.bs, align 8
  store ptr %i.h, ptr %i.i, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @6, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 1, ptr %i.bu, align 8
  call void @_RNvXs_NtCs8CpBcHC8tKo_21ruff_python_formatter8buildersNtB4_21ParenthesizeIfExpandsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  %i.bv = load i32, ptr %i.j, align 8, !range !30, !noundef !3
  %.not10 = icmp eq i32 %i.bv, -1
  br i1 %.not10, label %bb.k, label %bb.j

bb.h:                                             ; preds = %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit

bb.i:                                             ; preds = %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %._crit_edge.i

bb.j:                                             ; preds = %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit.thread14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit

bb.k:                                             ; preds = %_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign26should_parenthesize_target.exit.thread14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2773)
  call void @llvm.experimental.noalias.scope.decl(metadata !2776)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2779
  store i8 0, ptr %i.c, align 8, !noalias !2779
  %i.bw = load ptr, ptr %2, align 8, !alias.scope !2776, !noalias !2782, !nonnull !3, !noundef !3
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !2776, !noalias !2782, !nonnull !3, !align !27, !noundef !3
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !invariant.load !3, !noalias !2779, !nonnull !3
  call void %i.ca(ptr noundef nonnull %i.bw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !2779, !inline_history !457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2779
  call void @llvm.experimental.noalias.scope.decl(metadata !2783)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2786
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @53, ptr %i.cb, align 8, !noalias !2786
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1, ptr %i.cc, align 8, !noalias !2786
  store i8 4, ptr %i.b, align 8, !noalias !2786
  %i.cd = load ptr, ptr %2, align 8, !alias.scope !2783, !noalias !2789, !nonnull !3, !noundef !3
  %i.ce = load ptr, ptr %i.bx, align 8, !alias.scope !2783, !noalias !2789, !nonnull !3, !align !27, !noundef !3
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !invariant.load !3, !noalias !2786, !nonnull !3
  call void %i.cg(ptr noundef nonnull %i.cd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2786, !inline_history !393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2786
  call void @llvm.experimental.noalias.scope.decl(metadata !2790)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2793
  store i8 0, ptr %i.a, align 8, !noalias !2793
  %i.ch = load ptr, ptr %2, align 8, !alias.scope !2790, !noalias !2795, !nonnull !3, !noundef !3
  %i.ci = load ptr, ptr %i.bx, align 8, !alias.scope !2790, !noalias !2795, !nonnull !3, !align !27, !noundef !3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !invariant.load !3, !noalias !2793, !nonnull !3
  call void %i.ck(ptr noundef nonnull %i.ch, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2793, !inline_history !457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2793
  store i32 -1, ptr %0, align 8, !alias.scope !2773, !noalias !2796
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit

bb.l:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %._crit_edge.i

_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit: ; preds = %._crit_edge.i, %bb.l, %bb.j, %bb.h
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsa_NtCs8CpBcHC8tKo_21ruff_python_formatter7contextINtB5_15WithIndentLevelINtNtCs7Ma6rQP8bRy_14ruff_formatter9formatter9FormatterNtB5_15PyFormatContextEINtB5_13WithNodeLevelB1d_EENtNtNtCs4NRVxsYgnAr_4core3ops5deref5Deref5derefB7_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !align !27, !noundef !3
  ret ptr %.val
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs8CpBcHC8tKo_21ruff_python_formatter7contextINtB5_15WithIndentLevelINtNtCs7Ma6rQP8bRy_14ruff_formatter9formatter9FormatterNtB5_15PyFormatContextEINtB5_13WithNodeLevelB1d_EENtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mutB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !align !27, !noundef !3
  ret ptr %.val
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsc_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_5SpaceINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 8
  %i.b = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !27, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !3, !nonnull !3
  call void %i.f(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsc_NtCs8CpBcHC8tKo_21ruff_python_formatter7contextINtB5_15WithIndentLevelINtNtCs7Ma6rQP8bRy_14ruff_formatter9formatter9FormatterNtB5_15PyFormatContextEINtB5_13WithNodeLevelB1d_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !align !27, !noundef !3
  %i.b = tail call noundef nonnull align 8 ptr @_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9state_mutB15_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i16, ptr %i.c, align 8, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i16 %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsd_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_6IndentNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatBX_E3fmtB11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
.lr.ph.i:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 0, ptr %i.d, align 8
  store i8 10, ptr %i.c, align 8
  %i.e = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !align !27, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !3, !nonnull !3
  call void %i.i(ptr noundef nonnull %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !2798)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2801
  %i.j = load ptr, ptr %1, align 8, !alias.scope !2798, !noalias !2804, !nonnull !3, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2798, !noalias !2804, !nonnull !3, !align !27, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !invariant.load !3, !noalias !2805, !nonnull !3
  call void %i.n(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.j, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !2805, !inline_history !29
  %i.o = load i32, ptr %i.a, align 8, !range !30, !noalias !2801, !noundef !3 ; 2 uses
  %.not.i = icmp eq i32 %i.o, -1
  br i1 %.not.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 1, ptr %i.p, align 8
  store i8 10, ptr %i.b, align 8
  %i.q = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.r = load ptr, ptr %i.f, align 8, !nonnull !3, !align !27, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !3, !nonnull !3
  call void %i.t(ptr noundef nonnull %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx4, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2801
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i32 %i.o, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCs8CpBcHC8tKo_21ruff_python_formatter7contextINtB5_27WithInterpolatedStringStateINtNtCs7Ma6rQP8bRy_14ruff_formatter9formatter9FormatterNtB5_15PyFormatContextEQB1p_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !3, !align !27, !noundef !3
  %i.a = tail call noundef nonnull align 8 ptr @_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9state_mutB15_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.val)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.c, ptr noundef nonnull align 8 dereferenceable(6) %i.b, i64 6, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsg_NtCs8CpBcHC8tKo_21ruff_python_formatter7optionsNtB5_15PyFormatOptionsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 2 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [208 x i8], align 8               ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 15
  store ptr %i.n, ptr %i.a, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @100, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @101, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @102, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.e, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @103, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.f, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @104, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @105, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.h, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @106, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.i, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @107, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.j, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @108, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.k, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @109, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.l, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr @110, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store ptr %i.m, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr @111, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store ptr %i.a, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr @112, ptr %i.am, align 8
  %i.an = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @126, i64 noundef 13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.an
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsj_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_11BlockIndentNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB13_E3fmtB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !3, !align !27, !noundef !3 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !3, !nonnull !3
  call void %i.p(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noundef nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i8 0, ptr %i.q, align 8
  store i8 10, ptr %i.j, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !3, !nonnull !3 ; 4 uses
  invoke void %i.s(ptr noundef nonnull %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !2728, !noundef !3 ; 2 uses
  switch i8 %i.u, label %default.unreachable [
    i8 0, label %.lr.ph.i
    i8 1, label %.lr.ph.i14
    i8 2, label %.lr.ph.i20
    i8 3, label %.lr.ph.i20
  ]

default.unreachable:                              ; preds = %bb.r, %bb.b
  unreachable

.lr.ph.i:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2806
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store i8 1, ptr %i.v, align 1, !noalias !2806
  store i8 1, ptr %i.f, align 8, !noalias !2806
  invoke void %i.s(ptr noundef nonnull %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !2811

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2806
  br label %bb.f

.lr.ph.i14:                                       ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2812
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store i8 2, ptr %i.w, align 1, !noalias !2812
  store i8 1, ptr %i.e, align 8, !noalias !2812
  invoke void %i.s(ptr noundef nonnull %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !2811

bb.d:                                             ; preds = %.lr.ph.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2812
  br label %bb.f

.lr.ph.i20:                                       ; preds = %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2817
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 0, ptr %i.x, align 1, !noalias !2817
  store i8 1, ptr %i.d, align 8, !noalias !2817
  invoke void %i.s(ptr noundef nonnull %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !2811

bb.e:                                             ; preds = %.lr.ph.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2817
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.y = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.z = load ptr, ptr %i.m, align 8, !nonnull !3, !align !27, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !3, !nonnull !3
  %i.ac = invoke { ptr, i64 } %i.ab(ptr noundef nonnull %i.y)
          to label %.lr.ph.i26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %.noexc30
  %.sroa.7.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4104.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx65, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2822
  store i32 %i.ax, ptr %0, align 8
  %.val12 = load ptr, ptr %i.k, align 8, !noundef !3 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val13 = load ptr, ptr %i.ad, align 8          ; 6 uses
  %i.ae = icmp eq ptr %.val12, null
  br i1 %i.ae, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter6buffer14BufferSnapshotECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  %i.af = load ptr, ptr %.val13, align 8, !invariant.load !3 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void %i.af(ptr noundef nonnull %.val12)
          to label %bb.j unwind label %bb.l
end_hunk_1
begin_hunk_2_@_RNvXsj_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_11BlockIndentNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB13_E3fmtB17_:bb.a

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i20
  %lpad.loopexit130 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.a, %bb.f, %bb.n, %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit117, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit120, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit122, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit125, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit127, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit130, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val = load ptr, ptr %i.k, align 8, !noundef !3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val9 = load ptr, ptr %i.cn, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7Ma6rQP8bRy_14ruff_formatter6buffer14BufferSnapshotECs8CpBcHC8tKo_21ruff_python_formatter(ptr %.val, ptr %.val9) #19
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXsk_Cs7Ma6rQP8bRy_14ruff_formatterRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign17AnyBeforeOperatorINtB5_6FormatNtNtBG_7context15PyFormatContextE3fmtBG_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !3, !align !27, !noundef !3
  tail call void @_RNvXs6_NtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assignNtB5_17AnyBeforeOperatorINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXsk_Cs7Ma6rQP8bRy_14ruff_formatterRNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assign21AnyAssignmentOperatorINtB5_6FormatNtNtBG_7context15PyFormatContextE3fmtBG_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #5 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2856)
  %i.f = load i8, ptr %i.e, align 1, !range !1117, !alias.scope !2854, !noalias !2858, !noundef !3
  %.not.i = icmp eq i8 %i.f, -1
  br i1 %.not.i, label %bb.c, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2859
  store ptr %i.e, ptr %i.d, align 8, !noalias !2859
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2860)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2863
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @_RNvXs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression8operatorNtB5_14FormatOperatorINtCs7Ma6rQP8bRy_14ruff_formatter10FormatRuleNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !2866
  %i.h = load i32, ptr %i.b, align 8, !range !30, !noalias !2863, !noundef !3
  %.not.i.i = icmp eq i32 %i.h, -1
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2863
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2863
  call void @llvm.experimental.noalias.scope.decl(metadata !2868)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2871
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @53, ptr %i.i, align 8, !noalias !2871
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %i.j, align 8, !noalias !2871
  store i8 4, ptr %i.a, align 8, !noalias !2871
  %i.k = load ptr, ptr %2, align 8, !alias.scope !2874, !noalias !2875, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !2874, !noalias !2875, !nonnull !3, !align !27, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !3, !noalias !2876, !nonnull !3
  call void %i.o(ptr noundef nonnull %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2876, !inline_history !2877
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2863
  store i32 -1, ptr %0, align 8, !alias.scope !2878, !noalias !2867
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit.i

_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit.i: ; preds = %._crit_edge.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2859
  br label %_RNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assignNtB5_21AnyAssignmentOperatorINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2859
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @53, ptr %i.p, align 8, !noalias !2859
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1, ptr %i.q, align 8, !noalias !2859
  store i8 4, ptr %i.c, align 8, !noalias !2859
  %i.r = load ptr, ptr %2, align 8, !alias.scope !2856, !noalias !2879, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !2856, !noalias !2879, !nonnull !3, !align !27, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !3, !noalias !2859, !nonnull !3
  call void %i.v(ptr noundef nonnull %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !2859, !inline_history !2880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2859
  store i32 -1, ptr %0, align 8, !alias.scope !2851, !noalias !2881
  br label %_RNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assignNtB5_21AnyAssignmentOperatorINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt.exit

_RNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement11stmt_assignNtB5_21AnyAssignmentOperatorINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt.exit: ; preds = %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_CskLngH8kgpZI_15ruff_python_astNtB5_12PySourceTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !369, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsk_CskLngH8kgpZI_15ruff_python_astNtB5_12PySourceTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsk_CskLngH8kgpZI_15ruff_python_astNtB5_12PySourceTypeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.67, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtCs8CpBcHC8tKo_21ruff_python_formatter7optionsNtB5_10QuoteStyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !369, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsk_NtCs8CpBcHC8tKo_21ruff_python_formatter7optionsNtB5_10QuoteStyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsk_NtCs8CpBcHC8tKo_21ruff_python_formatter7optionsNtB5_10QuoteStyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.68, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsm_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_5GroupNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatBW_E3fmtB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
.lr.ph.i:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i8, ptr %i.d, align 4, !range !98, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 6, ptr %i.h, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.g, ptr %.sroa.42.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 10, ptr %i.c, align 8
  %i.i = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !align !27, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !nonnull !3
  call void %i.m(ptr noundef nonnull %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !2882)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2885
  %i.n = load ptr, ptr %1, align 8, !alias.scope !2882, !noalias !2888, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2882, !noalias !2888, !nonnull !3, !align !27, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !3, !noalias !2889, !nonnull !3
  call void %i.r(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.n, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !2889, !inline_history !29
  %i.s = load i32, ptr %i.a, align 8, !range !30, !noalias !2885, !noundef !3 ; 2 uses
  %.not.i = icmp eq i32 %i.s, -1
  br i1 %.not.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 7, ptr %i.t, align 8
  store i8 10, ptr %i.b, align 8
  %i.u = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.v = load ptr, ptr %i.j, align 8, !nonnull !3, !align !27, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !3, !nonnull !3
  call void %i.x(ptr noundef nonnull %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %.sroa.7.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx7, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2885
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i32 %i.s, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsn_NtNtCs7Ma6rQP8bRy_14ruff_formatter7printer15printer_optionsNtB5_19SourceMapGenerationNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !98, !noundef !3
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 7, i64 8
  %.1 = select i1 %i.b, ptr @97, ptr @96
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_19BestFitParenthesizeNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB1b_E3fmtB1f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
.lr.ph.i:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 28, ptr %i.f, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.e, ptr %.sroa.41.0..sroa_idx, align 4
  store i8 10, ptr %i.c, align 8
  %i.g = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !align !27, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !3, !nonnull !3
  call void %i.k(ptr noundef nonnull %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !2890)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2893
  %i.l = load ptr, ptr %1, align 8, !alias.scope !2890, !noalias !2896, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2890, !noalias !2896, !nonnull !3, !align !27, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !3, !noalias !2897, !nonnull !3
  call void %i.p(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.l, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !2897, !inline_history !29
  %i.q = load i32, ptr %i.a, align 8, !range !30, !noalias !2893, !noundef !3 ; 2 uses
  %.not.i = icmp eq i32 %i.q, -1
  br i1 %.not.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2893
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 29, ptr %i.r, align 8
  store i8 10, ptr %i.b, align 8
  %i.s = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.t = load ptr, ptr %i.h, align 8, !nonnull !3, !align !27, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !3, !nonnull !3
  call void %i.v(ptr noundef nonnull %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx5, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2893
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i32 %i.q, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXsr_Cs7Ma6rQP8bRy_14ruff_formatterINtB5_17FormatRefWithRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated10ExprLambdaNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11expr_lambda16FormatExprLambdaNtNtB1Z_7context15PyFormatContextEINtB5_6FormatB3h_E3fmtB1Z_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !align !27, !noundef !3
  tail call void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11expr_lambda16FormatExprLambdaINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated10ExprLambdaE3fmtB8_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXsr_Cs7Ma6rQP8bRy_14ruff_formatterINtB5_17FormatRefWithRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression10FormatExprNtNtB1Q_7context15PyFormatContextEINtB5_6FormatB2P_E3fmtB1Q_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !align !27, !noundef !3
  tail call void @_RNvXs_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB4_10FormatExprINtCs7Ma6rQP8bRy_14ruff_formatter10FormatRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXss_NtCs4NRVxsYgnAr_4core3fmtuNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter3pad(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXst_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_12ExpandParentINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 2, ptr %i.a, align 8
  %i.b = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !27, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !3, !nonnull !3
  call void %i.f(ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i32 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXst_NtCs8CpBcHC8tKo_21ruff_python_formatter7optionsNtB5_18MagicTrailingCommaNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !98, !noundef !3
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 6, i64 7
  %.1 = select i1 %i.b, ptr @138, ptr @137
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_13IfGroupBreaksNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB15_E3fmtB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
.lr.ph.i:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.e = load i8, ptr %i.d, align 4, !range !98, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 10, ptr %i.h, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.g, ptr %.sroa.41.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %i.e, ptr %.sroa.5.0..sroa_idx, align 8
  store i8 10, ptr %i.c, align 8
  %i.i = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !align !27, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !nonnull !3
  call void %i.m(ptr noundef nonnull %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !2898)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2901
  %i.n = load ptr, ptr %1, align 8, !alias.scope !2898, !noalias !2904, !nonnull !3, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2898, !noalias !2904, !nonnull !3, !align !27, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !3, !noalias !2905, !nonnull !3
  call void %i.r(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.n, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !2905, !inline_history !29
  %i.s = load i32, ptr %i.a, align 8, !range !30, !noalias !2901, !noundef !3 ; 2 uses
  %.not.i = icmp eq i32 %i.s, -1
  br i1 %.not.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 11, ptr %i.t, align 8
  store i8 10, ptr %i.b, align 8
  %i.u = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.v = load ptr, ptr %i.j, align 8, !nonnull !3, !align !27, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !3, !nonnull !3
  call void %i.x(ptr noundef nonnull %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.415.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx6, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2901
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i32 %i.s, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsv_NtNtCs7Ma6rQP8bRy_14ruff_formatter7printer15printer_optionsNtB5_10LineEndingNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !369, !noundef !3 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsv_NtNtCs7Ma6rQP8bRy_14ruff_formatter7printer15printer_optionsNtB5_10LineEndingNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsv_NtNtCs7Ma6rQP8bRy_14ruff_formatter7printer15printer_optionsNtB5_10LineEndingNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.69, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsx_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_19IndentIfGroupBreaksNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB1b_E3fmtB1f_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 {
.lr.ph.i:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !range !1284, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 12, ptr %i.f, align 8
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.e, ptr %.sroa.41.0..sroa_idx, align 4
  store i8 10, ptr %i.c, align 8
  %i.g = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !align !27, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !3, !nonnull !3
  call void %i.k(ptr noundef nonnull %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !2906)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2909
  %i.l = load ptr, ptr %1, align 8, !alias.scope !2906, !noalias !2912, !nonnull !3, !noundef !3
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !2906, !noalias !2912, !nonnull !3, !align !27, !noundef !3
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !invariant.load !3, !noalias !2913, !nonnull !3
  call void %i.p(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.l, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !2913, !inline_history !29
  %i.q = load i32, ptr %i.a, align 8, !range !30, !noalias !2909, !noundef !3 ; 2 uses
  %.not.i = icmp eq i32 %i.q, -1
  br i1 %.not.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 13, ptr %i.r, align 8
  store i8 10, ptr %i.b, align 8
  %i.s = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %i.t = load ptr, ptr %i.h, align 8, !nonnull !3, !align !27, !noundef !3
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !3, !nonnull !3
  call void %i.v(ptr noundef nonnull %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.7.0..sroa_idx5, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2909
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i32 %i.q, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsx_NtCs8CpBcHC8tKo_21ruff_python_formatter7contextNtB5_9NodeLevelNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i8, ptr %0, align 4, !range !2728, !noundef !3
  switch i8 %i.c, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.d, ptr %i.b, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @142)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @144, i64 noundef 17)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.g, ptr %i.a, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @145)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 23)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsy_Cs7Ma6rQP8bRy_14ruff_formatterNtB5_11IndentStyleNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !98, !noundef !3
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 5, i64 3
  %.1 = select i1 %i.b, ptr @149, ptr @148
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsz_NtCs8CpBcHC8tKo_21ruff_python_formatter7optionsNtB5_11PreviewModeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !98, !noundef !3
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 7, i64 8
  %.1 = select i1 %i.b, ptr @97, ptr @96
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression12expr_starred17FormatExprStarredINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprStarredE3fmtB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr noundef nonnull align 8 %2, ptr noalias noundef align 8 dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = load ptr, ptr %3, align 8, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !align !27, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !nonnull !3
  %i.n = tail call noundef nonnull align 8 ptr %i.m(ptr noundef nonnull %i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !3 ; 2 uses
  %i.r = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %i.r)
  %i.s = add i64 %i.q, 1                          ; 2 uses
  store i64 %i.s, ptr %i.p, align 8
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.e, !prof !48

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

.loopexit:                                        ; preds = %.lr.ph.i.1, %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.e, %bb.f, %bb.i, %bb.j, %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2914)
  call void @llvm.experimental.noalias.scope.decl(metadata !2917)
  call void @llvm.experimental.noalias.scope.decl(metadata !2920)
  %i.u = load ptr, ptr %i.h, align 8, !alias.scope !2923, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noalias !2923, !noundef !3
  %i.w = add i64 %i.v, -1                         ; 2 uses
  store i64 %i.w, ptr %i.u, align 8, !noalias !2923
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit unwind label %bb.p

bb.e:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.o, align 8, !nonnull !3, !noundef !3
  store ptr %i.y, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments25leading_dangling_trailingNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefEB8_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, i64 noundef 54, ptr noundef nonnull %2)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.z = load ptr, ptr %i.g, align 8, !nonnull !3, !align !606, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.z, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.ab, ptr %i.ad, align 8
  store i64 1, ptr %i.e, align 8
  invoke void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB2_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.g unwind label %.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.ae = load i32, ptr %i.f, align 8, !range !30, !noundef !3
  %.not = icmp eq i32 %i.ae, -1
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.af = invoke noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprStarredNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5startCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8 %2)
          to label %bb.j unwind label %.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression12expr_starredNtB2_17FormatExprStarredINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprStarredE10fmt_fields(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nonnull readonly captures(address, read_provenance) poison, ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.k unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ag = load i32, ptr %i.d, align 8, !range !30, !noundef !3
  %.not3 = icmp eq i32 %i.ag, -1
  br i1 %.not3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ah = invoke noundef i32 @_RNvYNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprStarredNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged3endCs8CpBcHC8tKo_21ruff_python_formatter(ptr noundef nonnull align 8 %2)
          to label %.lr.ph.i unwind label %.loopexit.split-lp ; 0 uses

.lr.ph.i:                                         ; preds = %bb.m
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !3, !align !606, !noundef !3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !noundef !3
  store ptr %i.aj, ptr %i.b, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.al, ptr %i.am, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2924)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2927
  invoke void @_RNvXsm_Cs7Ma6rQP8bRy_14ruff_formatterINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB5_8builders14SourcePositionEINtB5_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1Z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
end_hunk_2
