Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_formatter-8484042226fb24b2.ruff_python_formatter.6465bac6d8d74cf2-cgu.02?download=true
inline.NumInlined: 516
inline.NumDeleted: 250
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNvXs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter5other10identifierNtB5_22DotDelimitedIdentifierINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt:bb.a
          to label %bb.y unwind label %bb.x

bb.w:                                             ; preds = %bb.t, %bb.r, %bb.n, %.split.i12, %.split7.i16
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bq, i64 noundef %i.bs, i64 noundef %i.bv, i64 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #22
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #23
          to label %common.resume unwind label %bb.ab

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.x, %bb.z
  %common.resume.op = phi { ptr, i32 } [ %i.cp, %bb.z ], [ %i.co, %bb.x ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.y
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.u

bb.ab:                                            ; preds = %bb.x
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs4_NtCs7Ma6rQP8bRy_14ruff_formatter9argumentsINtB5_9ArgumentsNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB11_E3fmtB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #4 !guid !917 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !918)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %.idx.i = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.sroa.0.02.i = phi ptr [ %i.m, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !920
  %i.g = load ptr, ptr %.sroa.0.02.i, align 8, !alias.scope !919, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !919, !nonnull !5, !align !10, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !5, !noalias !921, !nonnull !5
  call void %i.k(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !921, !inline_history !0
  %i.l = load i32, ptr %i.a, align 8, !range !11, !noalias !920, !noundef !5
  %.not.i = icmp eq i32 %i.l, -1
  br i1 %.not.i, label %bb.c, label %bb.b

._crit_edge.i:                                    ; preds = %bb.c, %bb.a
  store i32 -1, ptr %0, align 8, !alias.scope !918
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !920
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !920
  %i.n = icmp eq ptr %i.m, %i.e
  br i1 %i.n, label %._crit_edge.i, label %.lr.ph.i

_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit: ; preds = %._crit_edge.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #2 personality ptr @rust_eh_personality !guid !963 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = alloca [12 x i8], align 4                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [12 x i8], align 4                ; 6 uses
  %i.f = alloca [12 x i8], align 4                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [8 x i8], align 8                 ; 11 uses
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !5, !align !10, !noundef !5 ; 10 uses
  %i.r = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !align !10, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !5, !nonnull !5 ; 2 uses
  %i.w = tail call noundef nonnull align 8 ptr %i.v(ptr noundef nonnull %i.r)
  %i.x = tail call { i64, ptr } @_RNvXs5b_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %.sroa.0.0) ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = extractvalue { i64, ptr } %i.x, 1
  %i.aa = tail call noundef zeroext i1 @_RNvMNtCs8CpBcHC8tKo_21ruff_python_formatter7contextNtB2_15PyFormatContext27is_expression_parenthesized(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.w, i64 noundef %i.y, ptr noundef %i.z)
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %.sroa.0.0, ptr %i.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i8 2, ptr %i.ab, align 8
  call void @_RNvXs_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB4_10FormatExprINtCs7Ma6rQP8bRy_14ruff_formatter10FormatRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.ab, ptr noundef nonnull align 8 %.sroa.0.0, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ac = tail call noundef nonnull align 8 ptr %i.v(ptr noundef nonnull %i.r)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5 ; 2 uses
  %i.ag = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = add i64 %i.af, 1                        ; 2 uses
  store i64 %i.ah, ptr %i.ae, align 8
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %bb.e, !prof !18

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5
  store ptr %i.aj, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RINvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB6_8Comments25leading_dangling_trailingRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB8_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q, ptr noundef nonnull align 8 %.sroa.0.0)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i, %bb.k, %bb.n, %bb.o, %.noexc57, %.lr.ph.i.i.i46, %bb.p, %.noexc37, %bb.j, %bb.i, %.invoke, %._crit_edge95, %bb.s, %bb.r, %bb.l, %bb.e
  %lpad.loopexit.split-lp184 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !964)
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.ak = load ptr, ptr %i.q, align 8, !alias.scope !967, !nonnull !5, !noundef !5 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !noalias !967, !noundef !5
  %i.am = add i64 %i.al, -1                       ; 2 uses
  store i64 %i.am, ptr %i.ak, align 8, !noalias !967
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit unwind label %bb.ah

bb.g:                                             ; preds = %bb.e
  %i.ao = load ptr, ptr %i.p, align 8, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !5 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !968)
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %.loopexit75.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %.idx = mul nuw nsw i64 %i.aq, 12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx
  %i.at = load ptr, ptr %2, align 8, !alias.scope !968, !nonnull !5
  %i.au = load ptr, ptr %i.s, align 8, !alias.scope !968, !nonnull !5, !align !10
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmt0Bb_.exit.backedge.i, %.lr.ph.i
  %.sroa.03.016.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %i.ba, %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmt0Bb_.exit.backedge.i ] ; 4 uses
  %i.ay = phi ptr [ %i.as, %.lr.ph.i ], [ %i.az, %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmt0Bb_.exit.backedge.i ] ; 3 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -12 ; 2 uses
  %i.ba = add i64 %.sroa.03.016.i, -1             ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %i.bc = load i8, ptr %i.bb, align 4, !range !16, !noalias !969, !noundef !5
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmt0Bb_.exit.backedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !969
  %i.be = load ptr, ptr %i.av, align 8, !invariant.load !5, !noalias !969, !nonnull !5
  %i.bf = invoke noundef nonnull align 8 ptr %i.be(ptr noundef nonnull %i.at)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !932 ; 2 uses

.noexc35:                                         ; preds = %bb.i
  %i.bg = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %i.bh = load i32, ptr %i.bg, align 4, !noalias !969, !noundef !5 ; 2 uses
  %i.bi = load i32, ptr %.sroa.0.0, align 8, !range !17, !noalias !969, !noundef !5
  %i.bj = zext nneg i32 %i.bi to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt, i64 %i.bj
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %switch.ext
  %.sroa.0.0.i.i.i = load i32, ptr %i.bk, align 4, !noalias !969, !noundef !5 ; 2 uses
  %.not.i.i = icmp ugt i32 %i.bh, %.sroa.0.0.i.i.i
  br i1 %.not.i.i, label %.invoke, label %bb.j, !prof !18

bb.j:                                             ; preds = %.noexc35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !969, !noundef !5
  %i.bn = load ptr, ptr %i.bf, align 8, !noalias !969, !nonnull !5, !noundef !5
  invoke void @_RNvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_15SimpleTokenizer3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bm, i32 noundef %i.bh, i32 noundef %.sroa.0.0.i.i.i)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc37:                                         ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !969
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !969
  store ptr %i.aw, ptr %i.g, align 8, !noalias !970
  invoke void @_RNvXs2_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_15SimpleTokenizerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc38:                                         ; preds = %.noexc37
  %i.bo = load i8, ptr %i.ax, align 4, !range !19, !noalias !970, !noundef !5
  %.not18.i.i.i = icmp eq i8 %i.bo, -1
  br i1 %.not18.i.i.i, label %.split.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc38, %.noexc40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !970
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !noalias !970
  %i.bp = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtBW_15SimpleTokenizer11skip_trivia0INtB7_5FnMutTRNtBW_11SimpleTokenEE8call_mutCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.e)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc39:                                         ; preds = %.lr.ph.i.i.i
  br i1 %i.bp, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.thread.i.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.thread.i.i.i: ; preds = %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !970
  br label %bb.k

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i: ; preds = %.noexc39
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !alias.scope !971, !noalias !970 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !970
  %.not.i.i.i.i = icmp eq i8 %.sroa.4.0.copyload.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.k, label %.split13.i

bb.k:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.thread.i.i.i
  invoke void @_RNvXs2_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_15SimpleTokenizerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.h)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %bb.k
  %i.bq = load i8, ptr %i.ax, align 4, !range !19, !noalias !970, !noundef !5
  %.not.i.i.i = icmp eq i8 %i.bq, -1
  br i1 %.not.i.i.i, label %.split.i, label %.lr.ph.i.i.i

.split13.i:                                       ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !969
  %i.br = icmp eq i8 %.sroa.4.0.copyload.i.i.i, 5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !969
  br i1 %i.br, label %.loopexit75, label %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmt0Bb_.exit.backedge.i

_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmt0Bb_.exit.backedge.i: ; preds = %.split.i, %.split13.i, %bb.h
  %i.bs = icmp eq ptr %i.ao, %i.az
  br i1 %i.bs, label %.loopexit75.thread, label %bb.h

.split.i:                                         ; preds = %.noexc40, %.noexc38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !969
  br label %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmt0Bb_.exit.backedge.i

.loopexit75:                                      ; preds = %.split13.i
  %i.bt = icmp ult i64 %i.ba, %i.aq
  call void @llvm.assume(i1 %i.bt)
  %.not = icmp ugt i64 %.sroa.03.016.i, %i.aq
  br i1 %.not, label %bb.l, label %.loopexit75.thread, !prof !972

bb.l:                                             ; preds = %.loopexit75
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.03.016.i, i64 noundef %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @62) #22
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit75.thread:                               ; preds = %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmt0Bb_.exit.backedge.i, %bb.g, %.loopexit75
  %.sroa.0.0.i127 = phi i64 [ %.sroa.03.016.i, %.loopexit75 ], [ 0, %bb.g ], [ 0, %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmt0Bb_.exit.backedge.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5 ; 6 uses
  %.idx65 = mul nuw nsw i64 %i.bx, 12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx65 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %i.bz = icmp eq i64 %i.bx, 0
  br i1 %i.bz, label %.loopexit69, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %.loopexit75.thread
  %i.ca = load ptr, ptr %2, align 8, !alias.scope !973, !nonnull !5
  %i.cb = load ptr, ptr %i.s, align 8, !alias.scope !973, !nonnull !5, !align !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i42 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.m

bb.m:                                             ; preds = %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit.thread.i, %.lr.ph.i41
  %.sroa.02.014.i = phi i64 [ 0, %.lr.ph.i41 ], [ %i.cy, %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit.thread.i ] ; 3 uses
  %i.cf = phi ptr [ %i.bv, %.lr.ph.i41 ], [ %i.cg, %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit.thread.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 12 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ci = load i8, ptr %i.ch, align 4, !range !16, !noalias !974, !noundef !5
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !974
  %i.ck = load ptr, ptr %i.cc, align 8, !invariant.load !5, !noalias !974, !nonnull !5
  %i.cl = invoke noundef nonnull align 8 ptr %i.ck(ptr noundef nonnull %i.ca)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !943 ; 2 uses

.noexc55:                                         ; preds = %bb.n
  %i.cm = load i32, ptr %.sroa.0.0, align 8, !range !17, !noalias !974, !noundef !5
  %i.cn = zext nneg i32 %i.cm to i64
  %switch.gep171 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt.76, i64 %i.cn
  %switch.load172 = load i8, ptr %switch.gep171, align 1
  %switch.ext173 = zext i8 %switch.load172 to i64
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 %switch.ext173
  %.sroa.34.0.i.i.i = load i32, ptr %i.co, align 4, !noalias !974, !noundef !5 ; 2 uses
  %i.cp = load i32, ptr %i.cf, align 4, !noalias !974, !noundef !5 ; 2 uses
  %.not.i.i44 = icmp ugt i32 %.sroa.34.0.i.i.i, %i.cp
  br i1 %.not.i.i44, label %.invoke, label %bb.o, !prof !18

.invoke:                                          ; preds = %.noexc35, %.noexc55
  %i.cq = phi ptr [ @14, %.noexc55 ], [ @13, %.noexc35 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq) #22
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.o:                                             ; preds = %.noexc55
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !974, !noundef !5
  %i.ct = load ptr, ptr %i.cl, align 8, !noalias !974, !nonnull !5, !noundef !5
  invoke void @_RNvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_15SimpleTokenizer3new(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cs, i32 noundef %.sroa.34.0.i.i.i, i32 noundef %i.cp)
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc57:                                         ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !974
  store ptr %i.cd, ptr %i.c, align 8, !noalias !975
  invoke void @_RNvXs2_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_15SimpleTokenizerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %.noexc57
  %i.cu = load i8, ptr %i.ce, align 4, !range !19, !noalias !975, !noundef !5
  %.not18.i.i.i45 = icmp eq i8 %i.cu, -1
  br i1 %.not18.i.i.i45, label %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit.thread9.i, label %.lr.ph.i.i.i46

.lr.ph.i.i.i46:                                   ; preds = %.noexc58, %.noexc60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !975
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %i.b, i64 12, i1 false), !noalias !975
  %i.cv = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtBW_15SimpleTokenizer11skip_trivia0INtB7_5FnMutTRNtBW_11SimpleTokenEE8call_mutCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc59:                                         ; preds = %.lr.ph.i.i.i46
  br i1 %i.cv, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i51, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.thread.i.i.i47

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.thread.i.i.i47: ; preds = %.noexc59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !975
  br label %bb.p

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i51: ; preds = %.noexc59
  %.sroa.4.0.copyload.i.i.i52 = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i42, align 4, !alias.scope !976, !noalias !975 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !975
  %.not.i.i.i.i53 = icmp eq i8 %.sroa.4.0.copyload.i.i.i52, -1
  br i1 %.not.i.i.i.i53, label %bb.p, label %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit.i

bb.p:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i51, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.thread.i.i.i47
  invoke void @_RNvXs2_NtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizerNtB5_15SimpleTokenizerNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.p
  %i.cw = load i8, ptr %i.ce, align 4, !range !19, !noalias !975, !noundef !5
  %.not.i.i.i48 = icmp eq i8 %i.cw, -1
  br i1 %.not.i.i.i48, label %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit.thread9.i, label %.lr.ph.i.i.i46

_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit.thread9.i: ; preds = %.noexc60, %.noexc58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !974
  br label %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit.thread.i

_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkNtNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11SimpleTokenQNCNvMs1_B1e_NtB1e_15SimpleTokenizer11skip_trivia0E0Cs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !974
  %i.cx = icmp eq i8 %.sroa.4.0.copyload.i.i.i52, 6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !974
  br i1 %i.cx, label %bb.q, label %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit.thread.i

_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit.thread.i: ; preds = %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit.i, %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit.thread9.i, %bb.m
  %i.cy = add nuw nsw i64 %.sroa.02.014.i, 1
  %i.cz = icmp eq ptr %i.cg, %i.by
  br i1 %i.cz, label %.loopexit69.thread, label %bb.m

.loopexit69.thread:                               ; preds = %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit.thread.i
  %.idx96129 = mul nuw nsw i64 %i.bx, 12
  %i.da = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx96129
  br label %._crit_edge

bb.q:                                             ; preds = %_RNCNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB7_7OperandINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBb_7context15PyFormatContextE3fmts0_0Bb_.exit.i
  %i.db = icmp ult i64 %.sroa.02.014.i, %i.bx
  call void @llvm.assume(i1 %i.db)
  br label %.loopexit69

.loopexit69:                                      ; preds = %.loopexit75.thread, %bb.q
  %.sroa.0.0.i50 = phi i64 [ %.sroa.02.014.i, %bb.q ], [ 0, %.loopexit75.thread ] ; 3 uses
  %i.dc = sub nuw i64 %i.bx, %.sroa.0.0.i50
  %.idx96 = mul nuw nsw i64 %.sroa.0.0.i50, 12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx96 ; 3 uses
  %i.de = icmp eq i64 %.sroa.0.0.i50, %i.bx
  br i1 %i.de, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit69, %.lr.ph
  %.sroa.012.091 = phi ptr [ %i.df, %.lr.ph ], [ %i.dd, %.loopexit69 ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.012.091, i64 12 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.012.091, i64 8
  store i8 1, ptr %i.dg, align 4
  %i.dh = icmp eq ptr %i.df, %i.by
  br i1 %i.dh, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit69.thread, %.loopexit69
  %i.di = phi i1 [ true, %.loopexit69.thread ], [ true, %.loopexit69 ], [ false, %.lr.ph ]
  %i.dj = phi ptr [ %i.da, %.loopexit69.thread ], [ %i.dd, %.loopexit69 ], [ %i.dd, %.lr.ph ] ; 2 uses
  %i.dk = phi i64 [ 0, %.loopexit69.thread ], [ 0, %.loopexit69 ], [ %i.dc, %.lr.ph ]
  %i.dl = icmp eq i64 %.sroa.0.0.i127, 0
  br i1 %i.dl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.v, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %.sroa.0.0, ptr %i.l, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store i8 1, ptr %i.dm, align 8
  invoke void @_RNvXs_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB4_10FormatExprINtCs7Ma6rQP8bRy_14ruff_formatter10FormatRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.dm, ptr noundef nonnull align 8 %.sroa.0.0, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.ao, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.0.0.i127, ptr %i.do, align 8
  store i64 1, ptr %i.n, align 8
  invoke void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB2_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.dp = load i32, ptr %i.o, align 8, !range !11, !noundef !5
  %.not32 = icmp eq i32 %i.dp, -1
  br i1 %.not32, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.r

bb.w:                                             ; preds = %bb.r
  %i.dq = load i32, ptr %i.m, align 8, !range !11, !noundef !5
  %.not33 = icmp eq i32 %i.dq, -1
  br i1 %.not33, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ae

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.di, label %._crit_edge95.thread, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.y, %.lr.ph94
  %.sroa.017.092 = phi ptr [ %i.dr, %.lr.ph94 ], [ %i.dj, %bb.y ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.017.092, i64 12 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.017.092, i64 8
  store i8 0, ptr %i.ds, align 1
  %i.dt = icmp eq ptr %i.dr, %i.by
  br i1 %i.dt, label %._crit_edge95, label %.lr.ph94

._crit_edge95.thread:                             ; preds = %bb.y, %bb.ac
  store i32 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  call void @llvm.experimental.noalias.scope.decl(metadata !978)
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  %i.du = load ptr, ptr %i.q, align 8, !alias.scope !980, !nonnull !5, !noundef !5 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !noalias !980, !noundef !5
  %i.dw = add i64 %i.dv, -1                       ; 2 uses
  store i64 %i.dw, ptr %i.du, align 8, !noalias !980
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit61

bb.z:                                             ; preds = %._crit_edge95.thread
  call void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit61

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit61: ; preds = %._crit_edge95.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ad

._crit_edge95:                                    ; preds = %.lr.ph94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.dj, ptr %i.j, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.dk, ptr %i.dy, align 8
  invoke void @_RNvXs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_22FormatTrailingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %._crit_edge95
  %i.dz = load i32, ptr %i.k, align 8, !range !11, !noundef !5
  %.not34 = icmp eq i32 %i.dz, -1
  br i1 %.not34, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %._crit_edge95.thread

bb.ad:                                            ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit61, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit62
  ret void

bb.ae:                                            ; preds = %bb.ab, %bb.x, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !981)
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %i.ea = load ptr, ptr %i.q, align 8, !alias.scope !984, !nonnull !5, !noundef !5 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !984, !noundef !5
  %i.ec = add i64 %i.eb, -1                       ; 2 uses
  store i64 %i.ec, ptr %i.ea, align 8, !noalias !984
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit62

bb.af:                                            ; preds = %bb.ae
  call void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit62

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit62: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ad

bb.ag:                                            ; preds = %bb.l
  unreachable

bb.ah:                                            ; preds = %bb.f
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  resume { ptr, i32 } %lpad.loopexit.split-lp184
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_8OperatorINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #2 !guid !993 {
.lr.ph.i:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  store ptr %i.g, ptr %i.e, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.i, ptr %i.j, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !995
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %i.k = load i8, ptr %i.f, align 8, !range !14, !alias.scope !996, !noalias !997, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 17 ; 6 uses
  switch i8 %i.k, label %default.unreachable [
    i8 0, label %bb.a
    i8 1, label %bb.b
    i8 2, label %bb.c
  ]

default.unreachable:                              ; preds = %.lr.ph.i
  unreachable

bb.a:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !998
  store ptr %i.l, ptr %i.c, align 8, !noalias !998
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @_RNvXs0_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression8operatorNtB5_14FormatOperatorINtCs7Ma6rQP8bRy_14ruff_formatter10FormatRuleNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8OperatorNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !998
  br label %_RNvXs9_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_14OperatorSymbolINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt.exit

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !998
  store ptr %i.l, ptr %i.b, align 8, !noalias !998
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_RNvXs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression12expr_compareNtB5_11FormatCmpOpINtCs7Ma6rQP8bRy_14ruff_formatter10FormatRuleNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !998
  br label %_RNvXs9_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression11binary_likeNtB5_14OperatorSymbolINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt.exit

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !998
end_hunk_0
