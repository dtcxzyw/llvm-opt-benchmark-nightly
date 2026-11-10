Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_formatter-8484042226fb24b2.ruff_python_formatter.6465bac6d8d74cf2-cgu.12?download=true
inline.NumInlined: 438
inline.NumDeleted: 181
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter8verbatim57write_suppressed_statements_starting_with_leading_comment:bb.a
  invoke fastcc void @_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter8verbatim27write_suppressed_statements(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 4 %.sroa.7.0.copyload, ptr noalias noundef align 8 captures(address) dereferenceable(16) %1, ptr noundef nonnull align 4 %.val5, i64 noundef %.val6, ptr noalias noundef align 8 dereferenceable(16) %2, ptr noalias noundef align 8 dereferenceable(16) %3)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %.noexc10.1, %.noexc10
  %.lcssa = phi i32 [ %i.an, %.noexc10 ], [ %i.ao, %.noexc10.1 ]
  %.sroa.417.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.428.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.417.0..sroa_idx18, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 %.lcssa, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.aq = load ptr, ptr %i.g, align 8, !alias.scope !256, !nonnull !5, !noundef !5 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !256, !noundef !5
  %i.as = add i64 %i.ar, -1                       ; 2 uses
  store i64 %i.as, ptr %i.aq, align 8, !noalias !256
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit11.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit11

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.au = load ptr, ptr %i.g, align 8, !alias.scope !260, !nonnull !5, !noundef !5 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !noalias !260, !noundef !5
  %i.aw = add i64 %i.av, -1                       ; 2 uses
  store i64 %i.aw, ptr %i.au, align 8, !noalias !260
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit11.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit11

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit11.sink.split: ; preds = %bb.m, %bb.l
  call void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit11

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit11: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit11.sink.split, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.n:                                             ; preds = %bb.c
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.c
  resume { ptr, i32 } %lpad.loopexit.split-lp32
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter8verbatim58write_suppressed_statements_starting_with_trailing_comment(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %2, ptr noalias noundef align 8 dereferenceable(16) %3) unnamed_addr #7 personality ptr @rust_eh_personality !guid !303 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 14 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [12 x i8], align 4                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [12 x i8], align 4                ; 7 uses
  %i.p = alloca [56 x i8], align 8                ; 10 uses
  %i.q = alloca [40 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [56 x i8], align 8                ; 5 uses
  %i.t = alloca [40 x i8], align 8                ; 11 uses
  %i.u = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.v = load ptr, ptr %3, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !align !8, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !5, !nonnull !5 ; 2 uses
  %i.aa = tail call noundef nonnull align 8 ptr %i.z(ptr noundef nonnull %i.v)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.val = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i = load i64, ptr %.val, align 8, !noundef !5 ; 2 uses
  %i.ac = icmp ne i64 %.val.i.i.i, 0
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add i64 %.val.i.i.i, 1                  ; 2 uses
  store i64 %i.ad, ptr %.val, align 8
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.b, label %_RNvXs8_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB5_8CommentsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXs8_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB5_8CommentsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit: ; preds = %bb.a
  store ptr %.val, ptr %i.u, align 8
  %i.af = invoke noundef nonnull align 8 ptr %i.z(ptr noundef nonnull %i.v)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.1.i68, %.noexc71, %.noexc70, %bb.al, %bb.r, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i, %.invoke, %bb.v, %.lr.ph.i.1.i, %.noexc56, %.noexc55, %bb.o, %bb.i, %.noexc52, %bb.e, %bb.ac, %bb.x, %._crit_edge, %bb.j, %bb.f, %bb.d, %_RNvXs8_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB5_8CommentsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  %lpad.loopexit.split-lp182 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  %i.ag = load ptr, ptr %i.u, align 8, !alias.scope !307, !nonnull !5, !noundef !5 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !307, !noundef !5
  %i.ai = add i64 %i.ah, -1                       ; 2 uses
  store i64 %i.ai, ptr %i.ag, align 8, !noalias !307
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit

bb.c:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit unwind label %bb.aq

bb.d:                                             ; preds = %_RNvXs8_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB5_8CommentsNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit
  %.val36 = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.af, i64 8
  %.val37 = load i64, ptr %i.ak, align 8, !noundef !5 ; 2 uses
  %.val43 = load ptr, ptr %1, align 8, !nonnull !5, !align !8, !noundef !5 ; 4 uses
  %i.al = invoke fastcc noundef i32 @_RNvMs3_NtCs8CpBcHC8tKo_21ruff_python_formatter8verbatimNtB5_11Indentation9from_stmt(ptr noundef nonnull align 8 %.val43, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val36, i64 noundef %.val37)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.val44 = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !308
  %i.am = invoke { i64, ptr } @_RNvXs9_NtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement5suiteNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_19SuiteChildStatementE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc52:                                         ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.val44, i64 16
  %i.ao = extractvalue { i64, ptr } %i.am, 0
  %i.ap = extractvalue { i64, ptr } %i.am, 1
  store i64 %i.ao, ptr %i.i, align 8, !noalias !308
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !noalias !308
  %i.ar = invoke { ptr, i64 } @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments3mapINtB2_8MultiMapNtNtB4_8node_key18NodeRefEqualityKeyNtB4_13SourceCommentE8trailingB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.f:                                             ; preds = %.noexc52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !308
  %i.as = extractvalue { ptr, i64 } %i.ar, 0      ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.ar, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.as, ptr %i.t, align 8, !alias.scope !309
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store i64 %i.at, ptr %i.au, align 8, !alias.scope !309
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %.val36, ptr %i.av, align 8, !alias.scope !309
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %.val37, ptr %i.aw, align 8, !alias.scope !309
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i8 0, ptr %i.ax, align 8, !alias.scope !309
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8verbatimNtB5_16CommentRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %i.ay = load i64, ptr %i.s, align 8, !range !11, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.ay, -1
  br i1 %.not, label %bb.j, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.l, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 53 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 46, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #24
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %.val38 = load ptr, ptr %i.t, align 8, !nonnull !5, !align !15, !noundef !5 ; 2 uses
  %.val39 = load i64, ptr %i.au, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %.val39, 12
  %i.ba = getelementptr inbounds nuw i8, ptr %.val38, i64 %.idx
  %i.bb = icmp eq i64 %.val39, 0
  br i1 %i.bb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %.sroa.0.0138 = phi ptr [ %i.bd, %.lr.ph ], [ %.val38, %bb.l ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0138, i64 8
  store i8 1, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0138, i64 12 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ba
  br i1 %i.be, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8 ; 3 uses
  store i8 1, ptr %i.bf, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvXsa_NtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement5suiteNtB5_19SuiteChildStatementINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %._crit_edge
  %i.bg = load i32, ptr %i.r, align 8, !range !9, !noundef !5
  %.not26 = icmp eq i32 %i.bg, -1
  br i1 %.not26, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ag

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i8 0, ptr %i.bf, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  %i.bh = load i32, ptr %.sroa.6.0.copyload, align 4, !noalias !311, !noundef !5
  %i.bi = load ptr, ptr %3, align 8, !alias.scope !310, !nonnull !5, !noundef !5
  %i.bj = load ptr, ptr %i.w, align 8, !alias.scope !310, !nonnull !5, !align !8, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8, !invariant.load !5, !noalias !311, !nonnull !5
  %i.bm = invoke noundef nonnull align 8 ptr %i.bl(ptr noundef nonnull %i.bi)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !312 ; 2 uses

.noexc55:                                         ; preds = %bb.o
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !311, !nonnull !5, !noundef !5
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !311, !noundef !5
  %i.bq = invoke noundef i32 @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer12lines_before(i32 noundef %i.bh, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %.noexc55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !311
  store i32 %i.bq, ptr %i.h, align 4, !noalias !311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !311
  store ptr %.sroa.6.0.copyload, ptr %i.g, align 8, !noalias !311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !313
  invoke void @_RNvXs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_16FormatEmptyLinesINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull %i.h, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc57:                                         ; preds = %.noexc56
  %i.br = load i32, ptr %i.f, align 8, !range !9, !noalias !313, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i32 %i.br, -1
  br i1 %.not.i.i, label %.lr.ph.i.1.i, label %bb.p

.lr.ph.i.1.i:                                     ; preds = %.noexc57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !313
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !313
  invoke void @_RNvXs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_13FormatCommentINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc58:                                         ; preds = %.lr.ph.i.1.i
  %i.bs = load i32, ptr %i.f, align 8, !range !9, !noalias !313, !noundef !5 ; 2 uses
  %.not.i.1.i = icmp eq i32 %i.bs, -1
  br i1 %.not.i.1.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.noexc58, %.noexc57
  %.lcssa.i = phi i32 [ %i.br, %.noexc57 ], [ %i.bs, %.noexc58 ]
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.499.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx2.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !311
  store i32 %.lcssa.i, ptr %0, align 8
  br label %bb.ag

bb.q:                                             ; preds = %.noexc58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !311
  store i8 1, ptr %i.bf, align 4, !noalias !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %bb.r

bb.r:                                             ; preds = %bb.ah, %bb.q
  %.sroa.09.0 = phi ptr [ %.sroa.6.0.copyload, %bb.q ], [ %.sroa.09.1, %bb.ah ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvXs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8verbatimNtB5_16CommentRangeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.q)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.bx = load i64, ptr %i.p, align 8, !range !11, !noundef !5 ; 2 uses
  %.not28 = icmp eq i64 %i.bx, -1
  br i1 %.not28, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %.sroa.63.0.copyload = load ptr, ptr %.sroa.63.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 3 uses
  switch i64 %i.bx, label %default.unreachable [
    i64 0, label %.invoke
    i64 1, label %bb.ai
    i64 2, label %bb.ah
    i64 3, label %.invoke
  ], !prof !13

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.by = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !5, !noundef !5
  %i.cb = icmp eq ptr %i.by, %i.ca
  br i1 %i.cb, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  store ptr %i.cc, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.by, ptr %i.l, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i8 -1, ptr %i.cd, align 8
  %.val45 = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.ce = getelementptr inbounds nuw i8, ptr %.val45, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 84
  %i.cg = load i8, ptr %i.cf, align 4, !range !7, !noundef !5
  %i.ch = call i8 @llvm.umax.i8(i8 %i.cg, i8 1)
  %narrow1.i.i.i = add nuw nsw i8 %i.ch, 1
  %switch.offset.i.i.i = zext nneg i8 %narrow1.i.i.i to i64
  store i64 %switch.offset.i.i.i, ptr %i.e, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.by, ptr %i.ci, align 8
  %i.cj = invoke { ptr, i64 } @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments3mapINtB2_8MultiMapNtNtB4_8node_key18NodeRefEqualityKeyNtB4_13SourceCommentE7leadingB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ce, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.w:                                             ; preds = %bb.u
  %.not29 = icmp eq i64 %i.at, 0
  br i1 %.not29, label %bb.aa, label %bb.ab

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ck = extractvalue { ptr, i64 } %i.cj, 0
  %i.cl = extractvalue { ptr, i64 } %i.cj, 1
  invoke fastcc void @_RNvNtCs8CpBcHC8tKo_21ruff_python_formatter8verbatim27write_suppressed_statements(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 4 %.sroa.09.0, ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull align 4 %i.ck, i64 noundef %i.cl, ptr noalias noundef align 8 dereferenceable(16) %2, ptr noalias noundef align 8 dereferenceable(16) %3)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.z

bb.z:                                             ; preds = %bb.af, %bb.aa, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.cm = load ptr, ptr %i.u, align 8, !alias.scope !318, !nonnull !5, !noundef !5 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !318, !noundef !5
  %i.co = add i64 %i.cn, -1                       ; 2 uses
  store i64 %i.co, ptr %i.cm, align 8, !noalias !318
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit61.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit61

bb.aa:                                            ; preds = %bb.w
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.val43, ptr %i.cq, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.z

bb.ab:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cr = getelementptr i8, ptr %.sroa.09.0, i64 4
  %.sroa.09.0.val51 = load i32, ptr %i.cr, align 4, !noundef !5 ; 2 uses
  %i.cs = getelementptr [12 x i8], ptr %i.as, i64 %i.at
  %i.ct = getelementptr i8, ptr %i.cs, i64 -8
  %.val49 = load i32, ptr %i.ct, align 4, !noundef !5 ; 2 uses
  %.not30 = icmp ugt i32 %.sroa.09.0.val51, %.val49
  br i1 %.not30, label %.invoke, label %bb.ac, !prof !10

bb.ac:                                            ; preds = %bb.ab
  store i32 %.sroa.09.0.val51, ptr %i.j, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %.val49, ptr %i.cu, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %i.al, ptr %i.cv, align 4
  invoke void @_RNvXs4_NtCs8CpBcHC8tKo_21ruff_python_formatter8verbatimNtB5_28FormatVerbatimStatementRangeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB7_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
end_hunk_0
begin_hunk_1_@_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern18pattern_match_starNtB2_22FormatPatternMatchStarINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated16PatternMatchStarE10fmt_fields:bb.a
bb.d:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit unwind label %bb.j

.lr.ph.i:                                         ; preds = %bb.c
  %i.aa = extractvalue { ptr, i64 } %i.v, 0
  %i.ab = extractvalue { ptr, i64 } %i.v, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @47, ptr %i.g, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.aa, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.ab, ptr %i.ae, align 8
  store i64 1, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !512
  invoke void @_RNvXs1_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_5TokenINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc2:                                          ; preds = %.lr.ph.i
  %i.af = load i32, ptr %i.c, align 8, !range !9, !noalias !512, !noundef !5 ; 2 uses
  %.not.i = icmp eq i32 %i.af, -1
  br i1 %.not.i, label %.lr.ph.i.1, label %bb.f

.lr.ph.i.1:                                       ; preds = %.noexc2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !512
  invoke void @_RNvXs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_22FormatDanglingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc2.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc2.1:                                        ; preds = %.lr.ph.i.1
  %i.ag = load i32, ptr %i.c, align 8, !range !9, !noalias !512, !noundef !5 ; 2 uses
  %.not.i.1 = icmp eq i32 %i.ag, -1
  br i1 %.not.i.1, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc2.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 31
  %i.ai = load i8, ptr %i.ah, align 1, !range !17, !noundef !5
  %.not1 = icmp eq i8 %i.ai, -1
  br i1 %.not1, label %.lr.ph.i10, label %.lr.ph.i4

bb.f:                                             ; preds = %.noexc2.1, %.noexc2
  %.lcssa = phi i32 [ %i.af, %.noexc2 ], [ %i.ag, %.noexc2.1 ]
  %.sroa.4.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.427.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx18, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i32 %.lcssa, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.aj = load ptr, ptr %i.h, align 8, !alias.scope !516, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !516, !noundef !5
  %i.al = add i64 %i.ak, -1                       ; 2 uses
  store i64 %i.al, ptr %i.aj, align 8, !noalias !516
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit3.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit3

.lr.ph.i4:                                        ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.an, ptr %i.e, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !518
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter5other10identifierNtB2_16FormatIdentifierINtCs7Ma6rQP8bRy_14ruff_formatter10FormatRuleNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ao, ptr noundef nonnull align 8 %i.an, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %.lr.ph.i4
  %i.ap = load i32, ptr %i.b, align 8, !range !9, !noalias !518, !noundef !5
  %.not.i6 = icmp eq i32 %i.ap, -1
  br i1 %.not.i6, label %._crit_edge.i7, label %bb.g

bb.g:                                             ; preds = %.noexc8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !518
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit9

._crit_edge.i7:                                   ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !518
  store i32 -1, ptr %0, align 8, !alias.scope !517
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit9

.lr.ph.i10:                                       ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @48, ptr %i.d, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.aq, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !521
  invoke void @_RNvXs1_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_5TokenINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc14:                                         ; preds = %.lr.ph.i10
  %i.ar = load i32, ptr %i.a, align 8, !range !9, !noalias !521, !noundef !5
  %.not.i12 = icmp eq i32 %i.ar, -1
  br i1 %.not.i12, label %._crit_edge.i13, label %bb.h

bb.h:                                             ; preds = %.noexc14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !521
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit15

._crit_edge.i13:                                  ; preds = %.noexc14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !521
  store i32 -1, ptr %0, align 8, !alias.scope !520
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit15

_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit9: ; preds = %bb.g, %._crit_edge.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit15, %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit9
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.as = load ptr, ptr %i.h, align 8, !alias.scope !526, !nonnull !5, !noundef !5 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noalias !526, !noundef !5
  %i.au = add i64 %i.at, -1                       ; 2 uses
  store i64 %i.au, ptr %i.as, align 8, !noalias !526
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit3.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit3

_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit15: ; preds = %bb.h, %._crit_edge.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit3.sink.split: ; preds = %bb.i, %bb.f
  call void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit3

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit3: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit3.sink.split, %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.j:                                             ; preds = %bb.d
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.d
  resume { ptr, i32 } %lpad.loopexit.split-lp40
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern19pattern_match_valueNtB2_23FormatPatternMatchValueINtB6_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated17PatternMatchValueE10fmt_fields(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, ptr noalias noundef align 8 dereferenceable(16) %3) unnamed_addr #1 !guid !527 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 2, ptr %i.c, align 8
  call void @_RNvXs_NtCs8CpBcHC8tKo_21ruff_python_formatter10expressionNtB4_10FormatExprINtCs7Ma6rQP8bRy_14ruff_formatter10FormatRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.c, ptr noundef nonnull align 8 %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB2_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB6_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !559 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 7 uses
  %i.i = load i64, ptr %1, align 8, !range !18, !noundef !5
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !align !15, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %bb.b
  %i.q = phi ptr [ %i.l, %bb.b ], [ %i.s, %.backedge ] ; 6 uses
  %i.r = icmp eq ptr %i.q, %i.o
  br i1 %i.r, label %_RNvNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB4_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB8_7context15PyFormatContextE3fmt22write_leading_comments.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load i8, ptr %i.t, align 4, !range !12, !noalias !562, !noundef !5
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.backedge, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNvXNtBS_6formatNtB2M_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt22write_leading_comments0EBU_.exit.i

.backedge:                                        ; preds = %bb.d, %bb.e
  br label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNvXNtBS_6formatNtB2M_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt22write_leading_comments0EBU_.exit.i: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.y = load i32, ptr %i.x, align 4, !noalias !563, !noundef !5
  %i.z = load ptr, ptr %2, align 8, !alias.scope !561, !nonnull !5, !noundef !5
  %i.aa = load ptr, ptr %i.p, align 8, !alias.scope !561, !nonnull !5, !align !8, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !5, !noalias !560, !nonnull !5
  %i.ad = tail call noundef nonnull align 8 ptr %i.ac(ptr noundef nonnull %i.z), !noalias !560, !inline_history !533 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !560, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noalias !560, !noundef !5
  %i.ah = tail call noundef i32 @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11lines_after(i32 noundef %i.y, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef %i.ag), !noalias !560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !563
  store ptr %i.q, ptr %i.f, align 8, !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !563
  store i32 %i.ah, ptr %i.e, align 4, !noalias !563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !564
  call void @_RNvXs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_13FormatCommentINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !565, !inline_history !0
  %i.ai = load i32, ptr %i.d, align 8, !range !9, !noalias !564, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ai, -1
  br i1 %.not.i.i, label %.lr.ph.i.1.i, label %bb.f

.lr.ph.i.1.i:                                     ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNvXNtBS_6formatNtB2M_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt22write_leading_comments0EBU_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !564
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !564
  call void @_RNvXs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_16FormatEmptyLinesINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !565, !inline_history !0
  %i.aj = load i32, ptr %i.d, align 8, !range !9, !noalias !564, !noundef !5 ; 2 uses
  %.not.i.1.i = icmp eq i32 %i.aj, -1
  br i1 %.not.i.1.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !563
  store i8 1, ptr %i.w, align 4, !noalias !563
  br label %.backedge

bb.f:                                             ; preds = %.lr.ph.i.1.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNvXNtBS_6formatNtB2M_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt22write_leading_comments0EBU_.exit.i
  %.lcssa.i = phi i32 [ %i.ai, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNvXNtBS_6formatNtB2M_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt22write_leading_comments0EBU_.exit.i ], [ %i.aj, %.lr.ph.i.1.i ]
  %.sroa.4.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.414.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx5.i, i64 20, i1 false), !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !563
  br label %_RNvNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB4_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB8_7context15PyFormatContextE3fmt22write_leading_comments.exit

_RNvNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB4_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB8_7context15PyFormatContextE3fmt22write_leading_comments.exit: ; preds = %bb.c, %bb.f
  %storemerge.i = phi i32 [ %.lcssa.i, %bb.f ], [ -1, %bb.c ]
  store i32 %storemerge.i, ptr %0, align 8, !alias.scope !560
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ak = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !align !8, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !invariant.load !5, !nonnull !5
  %i.ap = tail call noundef nonnull align 8 ptr %i.ao(ptr noundef nonnull %i.ak)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5 ; 2 uses
  %i.at = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %i.at)
  %i.au = add i64 %i.as, 1                        ; 2 uses
  store i64 %i.au, ptr %i.ar, align 8
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.i, !prof !10

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5 ; 3 uses
  store ptr %i.aw, ptr %i.h, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !19, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !noundef !5
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.ay, ptr %i.g, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ba, ptr %i.bc, align 8
  %i.bd = invoke { ptr, i64 } @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments3mapINtB2_8MultiMapNtNtB4_8node_key18NodeRefEqualityKeyNtB4_13SourceCommentE7leadingB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit:                      ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNvXNtBS_6formatNtB2M_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt22write_leading_comments0EBU_.exit.i2, %.noexc10, %.noexc11, %.lr.ph.i.1.i8
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %i.h, align 8, !alias.scope !566
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.i
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %i.be = phi ptr [ %.pre, %.loopexit.split-lp.loopexit ], [ %i.aw, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp24, %.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.bf = load i64, ptr %i.be, align 8, !noalias !566, !noundef !5
  %i.bg = add i64 %i.bf, -1                       ; 2 uses
  store i64 %i.bg, ptr %i.be, align 8, !noalias !566
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit

bb.j:                                             ; preds = %.loopexit.split-lp
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit unwind label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.bi = extractvalue { ptr, i64 } %i.bd, 0      ; 2 uses
  %i.bj = extractvalue { ptr, i64 } %i.bd, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !570)
  call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %i.bi, i64 %i.bj
  br label %bb.l

bb.l:                                             ; preds = %.backedge45, %bb.k
  %i.bl = phi ptr [ %i.bi, %bb.k ], [ %i.bn, %.backedge45 ] ; 6 uses
  %i.bm = icmp eq ptr %i.bl, %i.bk
  br i1 %i.bm, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = load i8, ptr %i.bo, align 1, !range !12, !noalias !572, !noundef !5
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %.backedge45, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNvXNtBS_6formatNtB2M_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt22write_leading_comments0EBU_.exit.i2

.backedge45:                                      ; preds = %bb.m, %bb.n
  br label %bb.l

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNvXNtBS_6formatNtB2M_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt22write_leading_comments0EBU_.exit.i2: ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !noalias !573, !noundef !5
  %i.bu = load ptr, ptr %2, align 8, !alias.scope !571, !nonnull !5, !noundef !5
  %i.bv = load ptr, ptr %i.al, align 8, !alias.scope !571, !nonnull !5, !align !8, !noundef !5
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8, !invariant.load !5, !noalias !570, !nonnull !5
  %i.by = invoke noundef nonnull align 8 ptr %i.bx(ptr noundef nonnull %i.bu)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit, !inline_history !533 ; 2 uses

.noexc10:                                         ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNvXNtBS_6formatNtB2M_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt22write_leading_comments0EBU_.exit.i2
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !570, !nonnull !5, !noundef !5
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !570, !noundef !5
  %i.cc = invoke noundef i32 @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11lines_after(i32 noundef %i.bt, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bz, i64 noundef %i.cb)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit

.noexc11:                                         ; preds = %.noexc10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !573
  store ptr %i.bl, ptr %i.c, align 8, !noalias !573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !573
  store i32 %i.cc, ptr %i.b, align 4, !noalias !573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !574
  invoke void @_RNvXs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_13FormatCommentINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %.noexc11
  %i.cd = load i32, ptr %i.a, align 8, !range !9, !noalias !574, !noundef !5 ; 2 uses
  %.not.i.i3 = icmp eq i32 %i.cd, -1
  br i1 %.not.i.i3, label %.lr.ph.i.1.i8, label %bb.o

.lr.ph.i.1.i8:                                    ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !574
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !574
  invoke void @_RNvXs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_16FormatEmptyLinesINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit

.noexc13:                                         ; preds = %.lr.ph.i.1.i8
  %i.ce = load i32, ptr %i.a, align 8, !range !9, !noalias !574, !noundef !5 ; 2 uses
  %.not.i.1.i9 = icmp eq i32 %i.ce, -1
  br i1 %.not.i.1.i9, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !573
  store i8 1, ptr %i.br, align 4, !noalias !573
  br label %.backedge45

bb.o:                                             ; preds = %.noexc13, %.noexc12
  %.lcssa.i4 = phi i32 [ %i.cd, %.noexc12 ], [ %i.ce, %.noexc13 ]
  %.sroa.4.0..sroa_idx5.i5 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_22FormatDanglingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt:bb.a
.noexc17:                                         ; preds = %.lr.ph.i13
  %i.bh = load i32, ptr %i.c, align 8, !range !9, !noalias !773, !noundef !5 ; 2 uses
  %.not.i15 = icmp eq i32 %i.bh, -1
  br i1 %.not.i15, label %.lr.ph.i13.1, label %bb.q

.lr.ph.i13.1:                                     ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !773
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !773
  invoke void @_RNvXsc_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersNtB5_5SpaceINtB7_6FormatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE3fmtB1c_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc17.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc17.1:                                       ; preds = %.lr.ph.i13.1
  %i.bi = load i32, ptr %i.c, align 8, !range !9, !noalias !773, !noundef !5 ; 2 uses
  %.not.i15.1 = icmp eq i32 %i.bi, -1
  br i1 %.not.i15.1, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.noexc17.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !773
  br label %bb.m

bb.q:                                             ; preds = %.noexc17.1, %.noexc17
  %.lcssa = phi i32 [ %i.bh, %.noexc17 ], [ %i.bi, %.noexc17.1 ]
  %.sroa.431.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.455.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.431.0..sroa_idx32, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !773
  br label %bb.v

bb.r:                                             ; preds = %.noexc12
  %.sroa.4.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.445.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx28, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.v

bb.s:                                             ; preds = %bb.m
  %i.bj = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !5
  %i.bm = invoke noundef i32 @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer11lines_after(i32 noundef %i.ax, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef %i.bl)
          to label %.lr.ph.i19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i19:                                       ; preds = %bb.s
  store i32 %i.bm, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !774
  invoke void @_RNvXs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_13FormatCommentINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc23:                                         ; preds = %.lr.ph.i19
  %i.bn = load i32, ptr %i.b, align 8, !range !9, !noalias !774, !noundef !5 ; 2 uses
  %.not.i21 = icmp eq i32 %i.bn, -1
  br i1 %.not.i21, label %.lr.ph.i19.1, label %bb.u

.lr.ph.i19.1:                                     ; preds = %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !774
  invoke void @_RNvXs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_16FormatEmptyLinesINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc23.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc23.1:                                       ; preds = %.lr.ph.i19.1
  %i.bo = load i32, ptr %i.b, align 8, !range !9, !noalias !774, !noundef !5 ; 2 uses
  %.not.i21.1 = icmp eq i32 %i.bo, -1
  br i1 %.not.i21.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.noexc23.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i8 1, ptr %i.ar, align 4
  br label %bb.i

bb.u:                                             ; preds = %.noexc23.1, %.noexc23
  %.lcssa104 = phi i32 [ %i.bn, %.noexc23 ], [ %i.bo, %.noexc23.1 ]
  %.sroa.435.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.465.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.435.0..sroa_idx36, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !774
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.r, %bb.u
  %.lcssa.sink = phi i32 [ %.lcssa, %bb.q ], [ %i.bg, %bb.r ], [ %.lcssa104, %bb.u ]
  store i32 %.lcssa.sink, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !775)
  call void @llvm.experimental.noalias.scope.decl(metadata !776)
  call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.bp = load ptr, ptr %i.h, align 8, !alias.scope !778, !nonnull !5, !noundef !5 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !778, !noundef !5
  %i.br = add i64 %i.bq, -1                       ; 2 uses
  store i64 %i.br, ptr %i.bp, align 8, !noalias !778
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit25.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit25

bb.w:                                             ; preds = %bb.f
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  resume { ptr, i32 } %lpad.loopexit.split-lp128
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeNtB6_5Debug3fmtCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !779 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXNtCs2MoD74u7shA_14ruff_text_size5rangeNtB2_9TextRangeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast3int3IntNtB6_5Debug3fmtCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !780 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs1_NtCskLngH8kgpZI_15ruff_python_ast3intNtB5_3IntNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCs8CpBcHC8tKo_21ruff_python_formatter8verbatimNtB5_24TrailingFormatOffCommentINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB7_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #1 !guid !785 {
.lr.ph.i:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !align !15, !noundef !5 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !noundef !5
  %i.f = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !8, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !5, !nonnull !5
  %i.k = tail call noundef nonnull align 8 ptr %i.j(ptr noundef nonnull %i.f) ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  %i.o = tail call noundef i32 @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia9tokenizer12lines_before(i32 noundef %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.o, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !786
  call void @_RNvXs4_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_16FormatEmptyLinesINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !787, !inline_history !0
  %i.p = load i32, ptr %i.a, align 8, !range !9, !noalias !786, !noundef !5 ; 2 uses
  %.not.i = icmp eq i32 %i.p, -1
  br i1 %.not.i, label %.lr.ph.i.1, label %bb.b

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !786
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !786
  call void @_RNvXs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_13FormatCommentINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !787, !inline_history !0
  %i.q = load i32, ptr %i.a, align 8, !range !9, !noalias !786, !noundef !5 ; 2 uses
  %.not.i.1 = icmp eq i32 %i.q, -1
  br i1 %.not.i.1, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 1, ptr %i.r, align 4
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.1, %.lr.ph.i
  %.lcssa = phi i32 [ %i.p, %.lr.ph.i ], [ %i.q, %.lr.ph.i.1 ]
  %.sroa.4.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.411.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx2, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i32 [ %.lcssa, %bb.b ], [ -1, %bb.a ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_37FormatDanglingOpenParenthesisCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !790 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !align !15, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %i.f = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.e
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.g = phi ptr [ %i.c, %bb.a ], [ %i.i, %.backedge ] ; 5 uses
  %i.h = icmp eq ptr %i.g, %i.f
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i8, ptr %i.j, align 4, !range !12, !noalias !791, !noundef !5
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.backedge, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs2_NtBS_6formatNtB2N_37FormatDanglingOpenParenthesisCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt0EBU_.exit

.backedge:                                        ; preds = %bb.c, %bb.g
  br label %bb.b

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs2_NtBS_6formatNtB2N_37FormatDanglingOpenParenthesisCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt0EBU_.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  call void @_RNvXs5_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_30FormatTrailingEndOfLineCommentINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  %i.m = load i32, ptr %i.b, align 8, !range !9, !noundef !5
  %.not2 = icmp eq i32 %i.m, -1
  br i1 %.not2, label %bb.g, label %bb.f

bb.d:                                             ; preds = %bb.b
  store i32 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  ret void

bb.f:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs2_NtBS_6formatNtB2N_37FormatDanglingOpenParenthesisCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt0EBU_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.g:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments13SourceCommentENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvXs2_NtBS_6formatNtB2N_37FormatDanglingOpenParenthesisCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtBU_7context15PyFormatContextE3fmt0EBU_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 1, ptr %i.n, align 4
  br label %.backedge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvYNtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression18OperatorPrecedenceNtNtBb_3cmp3Ord3cmpINtB7_6FnOnceTRBR_B2z_EE9call_onceBV_(ptr noalias nofree noundef nonnull readnone captures(none) %0, ptr noalias noundef readonly captures(none) dereferenceable(1) %1, ptr noalias noundef readonly captures(none) dereferenceable(1) %2) unnamed_addr #0 !guid !792 {
bb.a:
  %.val = load i8, ptr %1, align 1, !range !22, !noundef !5
  %.val1 = load i8, ptr %2, align 1, !range !22, !noundef !5
  %i.a = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val, i8 %.val1)
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_13FormatCommentINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !797 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !5, !align !15, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !8, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !5, !nonnull !5
  %i.i = tail call noundef nonnull align 8 ptr %i.h(ptr noundef nonnull %i.d) ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6format17normalize_comment(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noundef nonnull align 4 %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l)
  %i.m = load i64, ptr %i.b, align 8, !range !18, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.q = load <2 x i32>, ptr %i.c, align 4
  store <2 x i32> %i.q, ptr %i.p, align 8
  invoke void @_RNvXs6_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_23FormatNormalizedCommentINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6format23FormatNormalizedCommentEBH_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #23
          to label %common.resume unwind label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.s = load i64, ptr %i.a, align 8, !range !6, !alias.scope !798, !noundef !5
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6format23FormatNormalizedCommentEBH_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.g ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i: ; preds = %bb.f
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6format23FormatNormalizedCommentEBH_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6format23FormatNormalizedCommentEBH_.exit: ; preds = %bb.e, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6format23FormatNormalizedCommentEBH_.exit, %bb.b
  ret void

bb.j:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvXs4_NtCs7Ma6rQP8bRy_14ruff_formatter9argumentsINtB5_9ArgumentsNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatB11_E3fmtB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #8 !guid !803 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  %.idx.i = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.sroa.0.02.i = phi ptr [ %i.m, %bb.c ], [ %i.b, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !806
  %i.g = load ptr, ptr %.sroa.0.02.i, align 8, !alias.scope !805, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !805, !nonnull !5, !align !8, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !invariant.load !5, !noalias !807, !nonnull !5
  call void %i.k(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !807, !inline_history !0
  %i.l = load i32, ptr %i.a, align 8, !range !9, !noalias !806, !noundef !5
  %.not.i = icmp eq i32 %i.l, -1
  br i1 %.not.i, label %bb.c, label %bb.b

._crit_edge.i:                                    ; preds = %bb.c, %bb.a
  store i32 -1, ptr %0, align 8, !alias.scope !804
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !808
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !806
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !806
  %i.n = icmp eq ptr %i.m, %i.e
  br i1 %i.n, label %._crit_edge.i, label %.lr.ph.i

_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit: ; preds = %._crit_edge.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs8CpBcHC8tKo_21ruff_python_formatter8verbatimNtB5_28FormatVerbatimStatementRangeINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB7_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !823 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 14 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %i.f = alloca [8 x i8], align 4                 ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 5 uses
  %i.h = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !align !8, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !5, !nonnull !5
  %i.m = tail call noundef nonnull align 8 ptr %i.l(ptr noundef nonnull %i.h)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !align !8, !noundef !5
  %i.p = load i32, ptr %1, align 4, !noundef !5   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i32, ptr %i.q, align 4, !noundef !5 ; 4 uses
  %i.s = tail call { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens8in_range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, i32 noundef %i.p, i32 noundef %i.r) ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0        ; 3 uses
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.t, i64 %i.u ; 3 uses
  %.sroa.13.8.insert.ext = zext i32 %i.r to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i32, ptr %i.w, align 4              ; 3 uses
  %i.y = icmp eq i32 %i.x, 0
  %i.z = zext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.sroa.10.0 = phi i32 [ %i.p, %bb.a ], [ %.sroa.10.1.ph.ph, %.backedge ] ; 6 uses
  %.sroa.0.0 = phi ptr [ %i.t, %bb.a ], [ %.sroa.0.2.ph.ph, %.backedge ] ; 2 uses
  %.sroa.01.0 = phi i1 [ true, %bb.a ], [ false, %.backedge ]
  %i.ae = icmp eq ptr %.sroa.0.0, %i.v
  br i1 %i.ae, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.0.037.i = phi i32 [ %.sroa.0.1.i, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.af = phi ptr [ %i.ag, %bb.c ], [ %.sroa.0.0, %bb.b ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 10
  %i.ai = load i8, ptr %i.ah, align 2, !range !23, !noalias !824, !noundef !5
  switch i8 %i.ai, label %bb.c [
    i8 106, label %bb.k
end_hunk_2
