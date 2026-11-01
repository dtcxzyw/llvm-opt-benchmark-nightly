Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_formatter-8484042226fb24b2.ruff_python_formatter.6465bac6d8d74cf2-cgu.03?download=true
inline.NumInlined: 411
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNvXs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement8stmt_tryNtB5_13FormatStmtTryINtB9_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast9generated7StmtTryE10fmt_fields:bb.a
  unreachable

_RNvXs6s_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_26ExceptHandlerExceptHandlerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %bb.y
  br i1 %i.dw, label %bb.aa, label %_RNvXs6s_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_26ExceptHandlerExceptHandlerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.aa:                                            ; preds = %_RNvXs6s_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_26ExceptHandlerExceptHandlerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit
  %i.dx = load ptr, ptr %i.at, align 8, !nonnull !5, !noundef !5
  %i.dy = load i64, ptr %i.dx, align 8, !noundef !5
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %bb.ab, label %_RNvXs6s_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_26ExceptHandlerExceptHandlerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

bb.ab:                                            ; preds = %bb.aa
  %i.ea = load ptr, ptr %i.au, align 8, !nonnull !5, !noundef !5
  %i.eb = load i64, ptr %i.ea, align 8, !noundef !5
  %i.ec = icmp eq i64 %i.eb, 0
  %i.ed = zext i1 %i.ec to i8
  br label %_RNvXs6s_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_26ExceptHandlerExceptHandlerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread

_RNvXs6s_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_26ExceptHandlerExceptHandlerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread: ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.i, %bb.v, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread.i, %.split6.i, %.noexc123, %.noexc109, %.noexc108, %bb.m, %bb.q, %bb.t, %bb.l, %.noexc107, %bb.p, %bb.s, %_RNvXs6s_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_26ExceptHandlerExceptHandlerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, %bb.aa, %bb.ab
  %.sroa.016.0 = phi i8 [ %i.ed, %bb.ab ], [ 0, %bb.aa ], [ 0, %_RNvXs6s_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_26ExceptHandlerExceptHandlerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit ], [ 0, %bb.s ], [ 0, %bb.p ], [ 0, %.noexc107 ], [ 0, %bb.l ], [ 0, %bb.t ], [ 0, %bb.q ], [ 0, %bb.m ], [ 0, %.noexc108 ], [ 0, %.noexc109 ], [ 0, %.noexc123 ], [ 0, %.split6.i ], [ 0, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.thread.i ], [ 0, %bb.v ], [ 0, %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr10content_eq.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6format33leading_alternate_branch_commentsRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEB6_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noundef nonnull align 4 %i.bc, i64 noundef %i.bd, ptr noundef align 8 %.sroa.088.1154)
          to label %.lr.ph.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i:                                         ; preds = %_RNvXs6s_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_26ExceptHandlerExceptHandlerNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !451
  invoke void @_RNvXs_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB4_36FormatLeadingAlternateBranchCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB8_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.h, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc112:                                        ; preds = %.lr.ph.i
  %i.ee = load i32, ptr %i.c, align 8, !range !10, !noalias !451, !noundef !5 ; 2 uses
  %.not.i111 = icmp eq i32 %i.ee, -1
  br i1 %.not.i111, label %.lr.ph.i.1, label %bb.ad

.lr.ph.i.1:                                       ; preds = %.noexc112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !452
  store ptr %.sroa.013.0155, ptr %i.a, align 8, !noalias !452
  store i8 %i.be, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !452
  store i8 %.sroa.016.0, ptr %.sroa.7.0..sroa_idx.i.i.i, align 1, !noalias !452
  invoke void @_RNvYNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter5other29except_handler_except_handler32FormatExceptHandlerExceptHandlerINtB8_14FormatNodeRuleNtNtCskLngH8kgpZI_15ruff_python_ast5nodes26ExceptHandlerExceptHandlerE3fmtB8_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 %.sroa.013.0155, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc112.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc112.1:                                      ; preds = %.lr.ph.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !452
  %i.ef = load i32, ptr %i.c, align 8, !range !10, !noalias !451, !noundef !5 ; 2 uses
  %.not.i111.1 = icmp eq i32 %i.ef, -1
  br i1 %.not.i111.1, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.noexc112.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.013.0155, i64 16 ; 2 uses
  %i.eh = invoke noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eg)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %.noexc112.1, %.noexc112
  %.lcssa = phi i32 [ %i.ee, %.noexc112 ], [ %i.ef, %.noexc112.1 ]
  %.sroa.4.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4139.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx128, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i32 %.lcssa, ptr %0, align 8
  br label %bb.al

bb.ae:                                            ; preds = %bb.ac
  %i.ei = load ptr, ptr %i.eg, align 8, !nonnull !5, !noundef !5
  %i.ej = load i64, ptr %i.ei, align 8, !noundef !5 ; 2 uses
  %.not104 = icmp eq i64 %i.ej, 0
  %i.ek = getelementptr [88 x i8], ptr %i.eh, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 -88
  %.sroa.088.2 = select i1 %.not104, ptr null, ptr %i.el ; 2 uses
  %i.em = icmp eq ptr %i.av, %i.ap
  br i1 %i.em, label %._crit_edge, label %bb.i

bb.af:                                            ; preds = %._crit_edge
  %i.en = load i64, ptr %i.g, align 8, !range !444, !noundef !5
  %i.eo = trunc nuw i64 %i.en to i1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.070.0.copyload = load ptr, ptr %i.ep, align 8 ; 2 uses
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.471.0.copyload = load ptr, ptr %.sroa.471.0..sroa_idx, align 8 ; 3 uses
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.572.0.copyload = load i64, ptr %.sroa.572.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.eo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store ptr %.sroa.070.0.copyload, ptr %0, align 8
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.471.0.copyload, ptr %.sroa.474.0..sroa_idx, align 8
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.572.0.copyload, ptr %.sroa.575.0..sroa_idx, align 8
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvNtNtCs8CpBcHC8tKo_21ruff_python_formatter9statement8stmt_try11format_case(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noundef nonnull align 8 %2, i8 noundef 2, ptr noundef align 8 %.sroa.070.0.copyload, ptr noundef nonnull align 4 %.sroa.471.0.copyload, i64 noundef %.sroa.572.0.copyload, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(16) %3)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  %i.eq = load i64, ptr %i.f, align 8, !range !444, !noundef !5
  %i.er = trunc nuw i64 %i.eq to i1
  br i1 %i.er, label %bb.aj, label %.lr.ph.i113

bb.aj:                                            ; preds = %bb.ai
  %i.es = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.584.0.copyload = load i64, ptr %.sroa.584.0..sroa_idx, align 8
  %i.et = load <2 x ptr>, ptr %i.es, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store <2 x ptr> %i.et, ptr %0, align 8
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.584.0.copyload, ptr %.sroa.587.0..sroa_idx, align 8
  br label %bb.al

.lr.ph.i113:                                      ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.471.0.copyload, ptr %i.eu, align 8, !alias.scope !453
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.572.0.copyload, ptr %i.ev, align 8, !alias.scope !453
  store i64 1, ptr %i.e, align 8, !alias.scope !453
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !455
  invoke void @_RNvXs1_NtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB5_22FormatDanglingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %3)
          to label %.noexc117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc117:                                        ; preds = %.lr.ph.i113
  %i.ew = load i32, ptr %i.b, align 8, !range !10, !noalias !455, !noundef !5
  %.not.i115 = icmp eq i32 %i.ew, -1
  br i1 %.not.i115, label %._crit_edge.i116, label %bb.ak

bb.ak:                                            ; preds = %.noexc117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !455
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit118

._crit_edge.i116:                                 ; preds = %.noexc117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !455
  store i32 -1, ptr %0, align 8, !alias.scope !454
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit118

_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit118: ; preds = %bb.ak, %._crit_edge.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.ex = load ptr, ptr %i.j, align 8, !alias.scope !460, !nonnull !5, !noundef !5 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !460, !noundef !5
  %i.ez = add i64 %i.ey, -1                       ; 2 uses
  store i64 %i.ez, ptr %i.ex, align 8, !noalias !460
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit120.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit120

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit120.sink.split: ; preds = %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit118, %bb.al
  call void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit120

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit120: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit120.sink.split, %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit118, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.al:                                            ; preds = %bb.ad, %bb.ag, %bb.aj, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !461)
  call void @llvm.experimental.noalias.scope.decl(metadata !462)
  call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %i.fb = load ptr, ptr %i.j, align 8, !alias.scope !464, !nonnull !5, !noundef !5 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !noalias !464, !noundef !5
  %i.fd = add i64 %i.fc, -1                       ; 2 uses
  store i64 %i.fd, ptr %i.fb, align 8, !noalias !464
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit120.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit120

bb.am:                                            ; preds = %bb.c
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.c
  resume { ptr, i32 } %lpad.loopexit.split-lp184
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter10expression9expr_dictNtB5_12KeyValuePairINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB9_7context15PyFormatContextE3fmt(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 7 uses
  %i.k = alloca [32 x i8], align 16               ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = load ptr, ptr %1, align 8, !nonnull !5, !align !6, !noundef !5
  %i.n = load i32, ptr %i.m, align 8, !range !18, !noundef !5
  %.not = icmp eq i32 %i.n, -1
  br i1 %.not, label %bb.c, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %3 = load ptr, ptr %i.o, align 8, !nonnull !5, !align !8, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !5
  %4 = load <2 x ptr>, ptr %1, align 8
  store <2 x ptr> %4, ptr %i.k, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %i.q, ptr %.sroa.6.0..sroa_idx, align 8
  store ptr %i.k, ptr %i.l, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @84, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i8 0, ptr %i.t, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !486
  call void @_RNvXsm_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_5GroupNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatBW_E3fmtB10_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.l, ptr noalias noundef nonnull align 8 dereferenceable(16) %2), !noalias !487, !inline_history !0
  %i.u = load i32, ptr %i.b, align 8, !range !10, !noalias !486, !noundef !5
  %.not.i = icmp eq i32 %i.u, -1
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !486
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit

._crit_edge.i:                                    ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !486
  store i32 -1, ptr %0, align 8, !alias.scope !485
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit

_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit: ; preds = %._crit_edge.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.v = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !align !6, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !invariant.load !5, !nonnull !5
  %i.aa = tail call noundef nonnull align 8 ptr %i.z(ptr noundef nonnull %i.v)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5 ; 2 uses
  %i.ae = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = add i64 %i.ad, 1                        ; 2 uses
  store i64 %i.af, ptr %i.ac, align 8
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.e, label %bb.f, !prof !11

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit10, %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %i.ab, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.ah, ptr %i.j, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ak = invoke { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.aj)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.lr.ph.i4, %.lr.ph.i4.1, %bb.h, %bb.f
  %lpad.loopexit.split-lp11 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.al = load ptr, ptr %i.j, align 8, !alias.scope !492, !nonnull !5, !noundef !5 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !noalias !492, !noundef !5
  %i.an = add i64 %i.am, -1                       ; 2 uses
  store i64 %i.an, ptr %i.al, align 8, !noalias !492
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit unwind label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aq = extractvalue { i64, ptr } %i.ak, 0
  %i.ar = extractvalue { i64, ptr } %i.ak, 1
  store i64 %i.aq, ptr %i.c, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = invoke { ptr, i64 } @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments3mapINtB2_8MultiMapNtNtB4_8node_key18NodeRefEqualityKeyNtB4_13SourceCommentE7leadingB6_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %.lr.ph.i4 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.lr.ph.i4:                                        ; preds = %bb.h
  %i.au = extractvalue { ptr, i64 } %i.at, 0
  %i.av = extractvalue { ptr, i64 } %i.at, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.au, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.av, ptr %i.ax, align 8
  store i64 1, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @10, ptr %i.e, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %i.ay, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.aj, ptr %i.d, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i8 0, ptr %i.az, align 8
  store ptr %i.e, ptr %i.f, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @9, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.d, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @6, ptr %i.bc, align 8
  store ptr %i.f, ptr %i.g, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.bd, align 8
  store ptr %i.g, ptr %i.h, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @5, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 0, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i8 0, ptr %i.bg, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !494
  invoke void @_RNvXNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments6formatNtB2_21FormatLeadingCommentsINtCs7Ma6rQP8bRy_14ruff_formatter6FormatNtNtB6_7context15PyFormatContextE3fmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc8:                                          ; preds = %.lr.ph.i4
  %i.bh = load i32, ptr %i.a, align 8, !range !10, !noalias !494, !noundef !5
  %.not.i6 = icmp eq i32 %i.bh, -1
  br i1 %.not.i6, label %.lr.ph.i4.1, label %bb.i

bb.i:                                             ; preds = %.noexc8.1, %.noexc8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !494
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit9

.lr.ph.i4.1:                                      ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !494
  invoke void @_RNvXsm_NtCs7Ma6rQP8bRy_14ruff_formatter8buildersINtB5_5GroupNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEINtB7_6FormatBW_E3fmtB10_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.h, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
          to label %.noexc8.1 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !0

.noexc8.1:                                        ; preds = %.lr.ph.i4.1
  %i.bi = load i32, ptr %i.a, align 8, !range !10, !noalias !494, !noundef !5
  %.not.i6.1 = icmp eq i32 %i.bi, -1
  br i1 %.not.i6.1, label %._crit_edge.i7, label %bb.i

._crit_edge.i7:                                   ; preds = %.noexc8.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !494
  store i32 -1, ptr %0, align 8, !alias.scope !493
  br label %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit9

_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit9: ; preds = %bb.i, %._crit_edge.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !496)
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.bj = load ptr, ptr %i.j, align 8, !alias.scope !499, !nonnull !5, !noundef !5 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !499, !noundef !5
  %i.bl = add i64 %i.bk, -1                       ; 2 uses
  store i64 %i.bl, ptr %i.bj, align 8, !noalias !499
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit10

bb.j:                                             ; preds = %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit9
  call void @_RNvMs6_NtCscdodAO9FK5_5alloc2rcINtB5_2RcNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments12CommentsDataE9drop_slowBG_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit10

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit10: ; preds = %_RNvXs0_NtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB5_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextENtNtB7_6buffer6Buffer9write_fmtB15_.exit9, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.d

bb.k:                                             ; preds = %bb.g
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs8CpBcHC8tKo_21ruff_python_formatter8comments8CommentsEBF_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.g
  resume { ptr, i32 } %lpad.loopexit.split-lp11
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvXs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter7pattern21pattern_match_mappingNtB5_14KeyPatternPairNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
end_hunk_0
