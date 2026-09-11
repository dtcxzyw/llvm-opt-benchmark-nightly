Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_parser-088c5140ebb1fa7a.ruff_python_parser.216343b595be0d0-cgu.0?download=true
inline.NumInlined: 5180
inline.NumDeleted: 1805
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statementNtB4_6Parser20parse_with_statement:bb.a
bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !12218
  invoke fastcc void @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10checkpoint(ptr noalias noundef align 8 captures(none) dereferenceable(88) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(464) %1)
          to label %.noexc37.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i31.i, !noalias !12180

.noexc37.i.i:                                     ; preds = %bb.bd, %.noexc37.i.i.backedge
  %i.km = invoke noundef i8 @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer10next_token(ptr noalias noundef nonnull align 8 dereferenceable(464) %1)
          to label %.noexc.i.i.i.i unwind label %bb.be, !noalias !12180 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %.noexc37.i.i
  switch i8 %i.km, label %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource4peek.exit.i.i.i [
    i8 12, label %.noexc37.i.i.backedge
    i8 14, label %.noexc37.i.i.backedge
  ]

.noexc37.i.i.backedge:                            ; preds = %.noexc.i.i.i.i, %.noexc.i.i.i.i
  br label %.noexc37.i.i

bb.be:                                            ; preds = %.noexc37.i.i
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer15LexerCheckpointEBF_(ptr noalias noundef align 8 dereferenceable(88) %i.n) #44, !noalias !12180
  br label %.loopexit.split-lp.i.i

_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource4peek.exit.i.i.i: ; preds = %.noexc.i.i.i.i
  invoke fastcc void @_RNvMNtCsb6FLkjZuKG_18ruff_python_parser5lexerNtB2_5Lexer6rewind(ptr noalias noundef nonnull align 8 dereferenceable(464) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %i.n)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i31.i, !noalias !12180

bb.bf:                                            ; preds = %_RNvMNtCsb6FLkjZuKG_18ruff_python_parser12token_sourceNtB2_11TokenSource4peek.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !12218
  switch i8 %i.km, label %.loopexit87.i.i [
    i8 13, label %bb.bg
    i8 24, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf
  %i.ko = icmp ult i64 %i.it, 88686269585142076
  tail call void @llvm.assume(i1 %i.ko)
  %i.kp = icmp eq i64 %i.it, 0
  br i1 %i.kp, label %.loopexit87.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.idx.i.i = mul nuw i64 %i.it, 104              ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.is, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statementNtB6_6Parser34try_parse_parenthesized_with_itemss_0B8_.exit.i.i.i, %bb.bh
  %i.kr = phi ptr [ %i.ks, %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statementNtB6_6Parser34try_parse_parenthesized_with_itemss_0B8_.exit.i.i.i ], [ %i.is, %bb.bh ] ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 104 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 96
  %i.ku = load i8, ptr %i.kt, align 8, !range !24, !noalias !12219, !noundef !15
  %i.kv = trunc nuw i8 %i.ku to i1
  br i1 %i.kv, label %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statementNtB6_6Parser34try_parse_parenthesized_with_itemss_0B8_.exit.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i.i
  %i.kw = load i32, ptr %i.kr, align 8, !range !25, !noalias !12219, !noundef !15
  switch i32 %i.kw, label %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statementNtB6_6Parser34try_parse_parenthesized_with_itemss_0B8_.exit.i.i.i [
    i32 1, label %.loopexit87.i.i
    i32 13, label %.loopexit87.i.i
    i32 14, label %.loopexit87.i.i
    i32 27, label %.loopexit87.i.i
  ]

_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statementNtB6_6Parser34try_parse_parenthesized_with_itemss_0B8_.exit.i.i.i: ; preds = %bb.bi, %.lr.ph.i.i.i
  %.not17.i.i.i = icmp eq ptr %i.ks, %i.kq
  br i1 %.not17.i.i.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i:                                       ; preds = %bb.bb, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB7_.exit.backedge.i.i
  %.sroa.03.0109.i.i = phi ptr [ %i.kx, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB7_.exit.backedge.i.i ], [ %i.is, %bb.bb ] ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.sroa.03.0109.i.i, i64 104 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.03.0109.i.i, i64 96
  %i.kz = load i8, ptr %i.ky, align 8, !range !24, !noalias !12180, !noundef !15
  %i.la = trunc nuw i8 %i.kz to i1
  br i1 %i.la, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB7_.exit.backedge.i.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i
  %i.lb = load i32, ptr %.sroa.03.0109.i.i, align 8, !range !25, !noalias !12180, !noundef !15 ; 2 uses
  switch i32 %i.lb, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB7_.exit.backedge.i.i [
    i32 1, label %.thread.i.i
    i32 13, label %bb.bk
    i32 14, label %bb.bk
    i32 27, label %.thread79.i.i
  ]

.thread.i.i:                                      ; preds = %bb.bj
  store i8 8, ptr %i.y, align 8, !noalias !12179
  br label %bb.bl

.thread79.i.i:                                    ; preds = %bb.bj
  store i8 13, ptr %i.y, align 8, !noalias !12179
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bj, %bb.bj
  store i8 12, ptr %i.y, align 8, !noalias !12179
  %i.lc = icmp eq i32 %i.lb, 14                   ; 2 uses
  %spec.select.i45.i = select i1 %i.lc, i64 16, i64 8
  %spec.select85.i.i = select i1 %i.lc, i64 20, i64 12
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread79.i.i, %.thread.i.i
  %.sink2.i.i.i.i.i = phi i64 [ 24, %.thread.i.i ], [ 16, %.thread79.i.i ], [ %spec.select.i45.i, %bb.bk ]
  %.sink.i.i.i.i.i = phi i64 [ 28, %.thread.i.i ], [ 20, %.thread79.i.i ], [ %spec.select85.i.i, %bb.bk ]
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.03.0109.i.i, i64 %.sink2.i.i.i.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.03.0109.i.i, i64 %.sink.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = load i32, ptr %i.ld, align 4, !noalias !12220, !noundef !15
  %.sroa.34.0.i.i.i.i.i = load i32, ptr %i.le, align 4, !noalias !12220, !noundef !15
  invoke fastcc void @_RNvNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB6_6Parser9add_error5inner(ptr noalias noundef align 8 dereferenceable(24) %i.gp, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.y, i32 noundef %.sroa.0.0.i.i.i.i.i, i32 noundef %.sroa.34.0.i.i.i.i.i)
          to label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB7_.exit.backedge.i.i unwind label %.loopexit.i43.i, !noalias !12180

_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB7_.exit.backedge.i.i: ; preds = %bb.bl, %bb.bj, %.lr.ph.i.i
  %i.lf = icmp eq ptr %i.kx, %i.ki
  br i1 %i.lf, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.i, label %.lr.ph.i.i

.loopexit87.i.i:                                  ; preds = %bb.bi, %bb.bi, %bb.bi, %bb.bi, %bb.bg, %bb.bf, %bb.bc
  invoke fastcc void @_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6rewind(ptr noalias noundef nonnull align 8 dereferenceable(464) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(128) %i.w)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i31.i, !noalias !12180

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.i: ; preds = %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statementNtB6_6Parser34try_parse_parenthesized_with_itemss_0B8_.exit.i.i.i, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB7_.exit.backedge.i.i
  %.idx86.pre-phi.i.i = phi i64 [ %.idx110.i.i, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser9add_errorRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB7_.exit.backedge.i.i ], [ %.idx.i.i, %_RNCNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statementNtB6_6Parser34try_parse_parenthesized_with_itemss_0B8_.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !12179
  %i.lg = load i64, ptr %i.z, align 8, !range !26, !noalias !12179, !noundef !15 ; 3 uses
  %i.lh = icmp ult i64 %i.it, 88686269585142076
  tail call void @llvm.assume(i1 %i.lh)
  %i.li = getelementptr inbounds nuw i8, ptr %i.is, i64 %.idx86.pre-phi.i.i ; 4 uses
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12221)
  %.not11.i.i.i.i.i.i = icmp eq i64 %i.it, 0
  br i1 %.not11.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.i
  %i.lj = add i64 %.idx86.pre-phi.i.i, -104       ; 2 uses
  %i.lk = udiv i64 %i.lj, 104
  %i.ll = add nuw nsw i64 %i.lk, 1
  %xtraiter = and i64 %i.ll, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.prol
  %.sroa.4.012.i.i.i.i.i.i.prol = phi ptr [ %i.lo, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.is, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.lm = phi ptr [ %i.ln, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.is, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ]
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 104 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.012.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(96) %i.lm, i64 96, i1 false), !noalias !12222
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i.prol, i64 96 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !12012

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.lcssa503.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ln, %.lr.ph.i.i.i.i.i.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.lo, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.4.012.i.i.i.i.i.i.unr = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.lo, %.lr.ph.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ln, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.lp = icmp ult i64 %i.lj, 728
  br i1 %i.lp, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bn
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENCNvMB1Y_NtB20_6Parser34try_parse_parenthesized_with_itemss0_0EEB22_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x) #44
          to label %.body.thread82.i.i unwind label %bb.bt, !noalias !12224

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.sroa.4.012.i.i.i.i.i.i = phi ptr [ %i.mg, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.4.012.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.lq = phi ptr [ %i.mf, %.lr.ph.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 104
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %i.lq, i64 96, i1 false), !noalias !12222
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 96
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 208
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ls, ptr noundef nonnull align 8 dereferenceable(96) %i.lr, i64 96, i1 false), !noalias !12222
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 192
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 312
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.lu, ptr noundef nonnull align 8 dereferenceable(96) %i.lt, i64 96, i1 false), !noalias !12222
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 288
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lq, i64 416
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.lw, ptr noundef nonnull align 8 dereferenceable(96) %i.lv, i64 96, i1 false), !noalias !12222
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 384
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lq, i64 520
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ly, ptr noundef nonnull align 8 dereferenceable(96) %i.lx, i64 96, i1 false), !noalias !12222
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 480
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lq, i64 624
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ma, ptr noundef nonnull align 8 dereferenceable(96) %i.lz, i64 96, i1 false), !noalias !12222
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 576
  %i.md = getelementptr inbounds nuw i8, ptr %i.lq, i64 728
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.mc, ptr noundef nonnull align 8 dereferenceable(96) %i.mb, i64 96, i1 false), !noalias !12222
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 672
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lq, i64 832 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.me, ptr noundef nonnull align 8 dereferenceable(96) %i.md, i64 96, i1 false), !noalias !12222
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.4.012.i.i.i.i.i.i, i64 768 ; 2 uses
  %.not.i.i.i.i.i.i.7 = icmp eq ptr %i.mf, %i.li
  br i1 %.not.i.i.i.i.i.i.7, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.thread.i
  %.sroa.6.0..sroa_idx.i186.i = phi ptr [ %.sroa.6.0..sroa_idx.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.i ], [ %.sroa.6.0..sroa_idx.i182.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.thread.i ], [ %.sroa.6.0..sroa_idx.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.0..sroa_idx.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.5.0..sroa_idx.i185.i = phi ptr [ %.sroa.5.0..sroa_idx.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.i ], [ %.sroa.5.0..sroa_idx.i181.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.thread.i ], [ %.sroa.5.0..sroa_idx.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.5.0..sroa_idx.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.412.0..sroa_idx.i184.i = phi ptr [ %.sroa.412.0..sroa_idx.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.i ], [ %.sroa.412.0..sroa_idx.i180.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.thread.i ], [ %.sroa.412.0..sroa_idx.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.412.0..sroa_idx.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.mh = phi ptr [ %i.li, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.i ], [ %i.is, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.thread.i ], [ %i.li, %.lr.ph.i.i.i.i.i.i ], [ %i.li, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %i.mi = phi i64 [ %i.lg, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.i ], [ %i.kk, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.thread.i ], [ %i.lg, %.lr.ph.i.i.i.i.i.i ], [ %i.lg, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.val.i.i45.i.i = phi ptr [ %i.is, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.i ], [ %i.is, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.thread.i ], [ %.lcssa503.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.mf, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.sroa.4.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.is, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.i ], [ %i.is, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMBS_NtBU_6Parser34try_parse_parenthesized_with_itemss_0EBW_.exit.thread.i.thread.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %i.mg, %.lr.ph.i.i.i.i.i.i ]
  %i.mj = mul i64 %i.mi, 104                      ; 6 uses
  %i.mk = udiv i64 %i.mj, 96                      ; 2 uses
  %i.ml = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i to i64
  %i.mm = ptrtoint ptr %i.is to i64
  %i.mn = sub nuw i64 %i.ml, %i.mm                ; 3 uses
  %i.mo = udiv exact i64 %i.mn, 96                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !12225
  store ptr %i.is, ptr %i.m, align 8, !noalias !12225
  %i.mp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.mo, ptr %i.mp, align 8, !noalias !12225
  %i.mq = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.mi, ptr %i.mq, align 8, !noalias !12225
  %i.mr = ptrtoint ptr %i.mh to i64
  %i.ms = ptrtoint ptr %.val.i.i45.i.i to i64
  %i.mt = sub nuw i64 %i.mr, %i.ms
  %i.mu = udiv exact i64 %i.mt, 104
  store i64 0, ptr %.sroa.5.0..sroa_idx.i185.i, align 8, !alias.scope !12226, !noalias !12227
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8, !alias.scope !12226, !noalias !12227
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.412.0..sroa_idx.i184.i, align 8, !alias.scope !12226, !noalias !12227
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx.i186.i, align 8, !alias.scope !12226, !noalias !12227
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEBI_(ptr noalias noundef nonnull align 8 %.val.i.i45.i.i, i64 noundef %i.mu)
          to label %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemE32forget_allocation_drop_remainingB11_.exit.i.i.i unwind label %bb.bn, !noalias !12228

bb.bn:                                            ; preds = %bb.br, %._crit_edge.i.i.i.i.i.i
  %i.mv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemEEB1Q_(ptr noalias noundef align 8 dereferenceable(24) %i.m) #44
          to label %bb.bm unwind label %bb.bt, !noalias !12228

_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemE32forget_allocation_drop_remainingB11_.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  %.not.i.i46.i.i = icmp ne i64 %i.mi, 0
  %i.mw = mul nuw i64 %i.mk, 96                   ; 4 uses
  %i.mx = icmp ne i64 %i.mj, %i.mw
  %or.cond.i47.i.i = select i1 %.not.i.i46.i.i, i1 %i.mx, i1 false
  br i1 %or.cond.i47.i.i, label %bb.bo, label %bb.by

bb.bo:                                            ; preds = %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemE32forget_allocation_drop_remainingB11_.exit.i.i.i
  %i.my = icmp ult i64 %i.mj, 96
  br i1 %i.my, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.is, i64 noundef %i.mj, i64 noundef 8) #42, !noalias !12228
  br label %bb.by

bb.bq:                                            ; preds = %bb.bo
  %i.mz = icmp ule i64 %i.mw, %i.mj
  tail call void @llvm.assume(i1 %i.mz)
  %i.na = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.is, i64 noundef %i.mj, i64 noundef 8, i64 noundef %i.mw) #42, !noalias !12228 ; 2 uses
  %i.nb = icmp eq ptr %i.na, null
  br i1 %i.nb, label %bb.br, label %bb.by, !prof !12229

bb.br:                                            ; preds = %bb.bq
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.mw) #41
          to label %bb.bs unwind label %bb.bn, !noalias !12228

bb.bs:                                            ; preds = %bb.br
  unreachable

bb.bt:                                            ; preds = %bb.bn, %bb.bm
  %i.nc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !12228
  unreachable

bb.bu:                                            ; preds = %.loopexit87.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12230)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEBI_(ptr noalias noundef nonnull align 8 %i.is, i64 noundef %i.it)
          to label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i.i.i unwind label %bb.bv, !noalias !12231

bb.bv:                                            ; preds = %bb.bu
  %i.nd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.z, align 8, !range !26, !alias.scope !12230, !noalias !12179, !noundef !15 ; 2 uses
  %i.ne = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ne, label %common.resume, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nf = mul nuw i64 %.val2.i.i.i, 104
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.is, i64 noundef %i.nf, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !12231
  br label %common.resume

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i.i.i: ; preds = %bb.bu
  %.val.i.i.i = load i64, ptr %i.z, align 8, !range !26, !alias.scope !12230, !noalias !12179, !noundef !15 ; 2 uses
  %i.ng = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ng, label %bb.ce, label %bb.bx

bb.bx:                                            ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i.i.i
  %i.nh = mul nuw i64 %.val.i.i.i, 104
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.is, i64 noundef %i.nh, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !12231
  br label %bb.ce

bb.by:                                            ; preds = %bb.bq, %bb.bp, %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemE32forget_allocation_drop_remainingB11_.exit.i.i.i
  %.sroa.03.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bp ], [ %i.na, %bb.bq ], [ %i.is, %_RNvMs0_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemE32forget_allocation_drop_remainingB11_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !12225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !12179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !12179
  %.val.i.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !12179 ; 2 uses
  %i.ni = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ni, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentation22IndentationsCheckpointEBH_.exit.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nj = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.nj, align 8, !noalias !12179, !nonnull !15, !noundef !15
  %i.nk = shl nuw i64 %.val.i.i.i.i.i, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.nk, i64 noundef range(i64 1, -9223372036854775807) 4) #42, !noalias !12232
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentation22IndentationsCheckpointEBH_.exit.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentation22IndentationsCheckpointEBH_.exit.i.i.i.i.i: ; preds = %bb.bz, %bb.by
  %i.nl = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.val2.i.i.i.i.i = load i64, ptr %i.nl, align 8, !noalias !12179 ; 2 uses
  %i.nm = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.nm, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentation22IndentationsCheckpointEBH_.exit.i.i.i.i.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %.val3.i.i.i.i.i = load ptr, ptr %i.nn, align 8, !noalias !12179, !nonnull !15, !noundef !15
  %i.no = mul nuw i64 %.val2.i.i.i.i.i, 12
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %i.no, i64 noundef range(i64 1, -9223372036854775807) 4) #42, !noalias !12232
  br label %bb.cd

.loopexit.split-lp.i.i:                           ; preds = %bb.be, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i31.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i26.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i37.i, %.loopexit.split-lp.loopexit.i58.i, %.loopexit.i43.i, %bb.ak
  %.sroa.015.2.lpad-body.ph.i.i = phi i1 [ true, %bb.ak ], [ true, %bb.be ], [ true, %.loopexit.i43.i ], [ true, %.loopexit.split-lp.loopexit.i58.i ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.i37.i ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i26.i ], [ %.sroa.015.2.ph.ph.ph.ph.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i31.i ]
  %eh.lpad-body.ph.i.i = phi { ptr, i32 } [ %i.hu, %bb.ak ], [ %i.kn, %bb.be ], [ %lpad.loopexit.i44.i, %.loopexit.i43.i ], [ %lpad.loopexit89.i.i, %.loopexit.split-lp.loopexit.i58.i ], [ %lpad.loopexit92.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i37.i ], [ %lpad.loopexit94.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i26.i ], [ %lpad.loopexit.split-lp95.i.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i31.i ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.z) #44
          to label %.body.i27.i unwind label %bb.cb, !noalias !12180

bb.cb:                                            ; preds = %.loopexit.split-lp.i.i
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !12180
  unreachable

bb.cc:                                            ; preds = %bb.ag
  unreachable

.body.thread82.i.i:                               ; preds = %bb.bm, %.body53.thread.i.i, %.body.i27.i
  %.pn65.i.i = phi { ptr, i32 } [ %i.ge, %.body53.thread.i.i ], [ %eh.lpad-body.ph.i.i, %.body.i27.i ], [ %i.mv, %bb.bm ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser6parser16ParserCheckpointEBF_(ptr noalias noundef align 8 dereferenceable(128) %i.w) #44, !noalias !12180
  br label %common.resume

bb.cd:                                            ; preds = %bb.ca, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsb6FLkjZuKG_18ruff_python_parser5lexer11indentation22IndentationsCheckpointEBH_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !12123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !12123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !12123
  store i64 %i.mk, ptr %i.ak, align 8, !noalias !12123
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %.sroa.03.0.i.i.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !12123
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %i.mo, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !12123
  %i.nq = icmp ult i64 %i.mn, -9223372036854775744
  tail call void @llvm.assume(i1 %i.nq)
  %i.nr = icmp ugt i64 %i.mn, 96
  %brmerge.i = or i1 %i.kh, %i.nr
  br i1 %brmerge.i, label %_RNvMsi_NtCsb6FLkjZuKG_18ruff_python_parser5errorNtB5_26UnsupportedSyntaxErrorKind14is_unsupported.exit.i.i, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser28add_unsupported_syntax_error.exit.i

bb.ce:                                            ; preds = %bb.bx, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statement14ParsedWithItemENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !12179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !12123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !12123
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12233)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !12234
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #42, !noalias !12235
  %i.ns = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, -9223372036854775807) 8) #42, !noalias !12235 ; 3 uses
  %i.nt = icmp eq ptr %i.ns, null
  br i1 %i.nt, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #41, !noalias !12236
  unreachable

bb.cg:                                            ; preds = %bb.ce
  store i64 1, ptr %i.l, align 8, !noalias !12234
  %i.nu = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.ns, ptr %i.nu, align 8, !noalias !12234
  %i.nv = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %i.nv, align 8, !noalias !12234
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12238)
  %i.nw = load i32, ptr %i.fx, align 8, !alias.scope !12239, !noalias !12240, !noundef !15 ; 2 uses
  %i.nx = or i32 %i.nw, 67108864
  store i32 %i.nx, ptr %i.fx, align 8, !alias.scope !12239, !noalias !12240
  %i.ny = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.nz = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.oa = load i32, ptr %i.fv, align 8, !alias.scope !12241, !noalias !12242
  br label %_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing.exit.i.lr.ph.i63.i

_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing.exit.i.lr.ph.i63.i: ; preds = %.outer.backedge.i.i132.i, %bb.cg
  %i.ob = phi ptr [ %i.ns, %bb.cg ], [ %i.qa, %.outer.backedge.i.i132.i ]
  %i.oc = phi i64 [ 0, %bb.cg ], [ %i.qb, %.outer.backedge.i.i132.i ]
  %i.od = phi i32 [ %i.oa, %bb.cg ], [ %i.pz, %.outer.backedge.i.i132.i ]
  %.sroa.018.0.ph.i77.i64.i = phi i1 [ true, %bb.cg ], [ %.sroa.018.0.ph.be.i.i136.i, %.outer.backedge.i.i132.i ]
  %.sroa.019.0.ph.i76.i65.i = phi i1 [ false, %bb.cg ], [ %.sroa.019.0.ph.be.i.i135.i, %.outer.backedge.i.i132.i ]
  %.sroa.8.0.ph.i75.i66.i = phi i32 [ undef, %bb.cg ], [ %.sroa.8.0.ph.be.i.i134.i, %.outer.backedge.i.i132.i ] ; 3 uses
  %.sroa.11.0.ph.i74.i67.i = phi i32 [ undef, %bb.cg ], [ %.sroa.11.0.ph.be.i.i133.i, %.outer.backedge.i.i132.i ] ; 3 uses
  br label %_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing.exit.i.i68.i

.outer.i._crit_edge.i95.i:                        ; preds = %.outer.backedge.i.i132.i, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect.exit.i.i93.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12243
  %i.oe = load i32, ptr %i.av, align 8, !alias.scope !12244, !noalias !12242, !noundef !15 ; 2 uses
  %i.of = load i32, ptr %i.aw, align 4, !alias.scope !12244, !noalias !12242, !noundef !15 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.val.i.i.i96.i = load ptr, ptr %i.og, align 8, !alias.scope !12244, !noalias !12242, !nonnull !15, !noundef !15
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 392
  %.val13.i.i.i97.i = load i64, ptr %i.oh, align 8, !alias.scope !12244, !noalias !12242, !noundef !15
  %i.oi = invoke fastcc { ptr, i64 } @_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_6Parser8src_textNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEB7_(ptr nonnull %.val.i.i.i96.i, i64 %.val13.i.i.i97.i, i32 noundef %i.oe, i32 noundef %i.of)
          to label %.noexc.i98.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i79.i, !noalias !12236 ; 2 uses

.noexc.i98.i:                                     ; preds = %.outer.i._crit_edge.i95.i
  %i.oj = extractvalue { ptr, i64 } %i.oi, 0
  %i.ok = extractvalue { ptr, i64 } %i.oi, 1
  store ptr %i.oj, ptr %i.i, align 8, !noalias !12243
  %i.ol = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.ok, ptr %i.ol, align 8, !noalias !12243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12243
  %i.om = load i8, ptr %i.an, align 4, !range !22, !alias.scope !12244, !noalias !12242, !noundef !15
  store i8 %i.om, ptr %i.h, align 1, !noalias !12243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12243
  store i32 %i.oe, ptr %i.g, align 4, !noalias !12243
  %i.on = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %i.of, ptr %i.on, align 4, !noalias !12243
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12243
  store ptr %i.i, ptr %i.f, align 8, !noalias !12243
  %.sroa.42.0..sroa_idx.i.i.i99.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsb6FLkjZuKG_18ruff_python_parser, ptr %.sroa.42.0..sroa_idx.i.i.i99.i, align 8, !noalias !12243
  %i.oo = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.h, ptr %i.oo, align 8, !noalias !12243
  %.sroa.46.0..sroa_idx.i.i.i100.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @_RNvXsn_NtCskLngH8kgpZI_15ruff_python_ast5tokenNtB5_9TokenKindNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i100.i, align 8, !noalias !12243
  %i.op = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.g, ptr %i.op, align 8, !noalias !12243
  %.sroa.410.0..sroa_idx.i.i.i101.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr @_RNvXNtCs2MoD74u7shA_14ruff_text_size5rangeNtB2_9TextRangeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.410.0..sroa_idx.i.i.i101.i, align 8, !noalias !12243
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @289, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @291) #41
          to label %.noexc7.i102.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i79.i, !noalias !12236

.noexc7.i102.i:                                   ; preds = %.noexc.i98.i
  unreachable

_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing.exit.i.i68.i: ; preds = %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect.exit.i.i93.i, %_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing.exit.i.lr.ph.i63.i
  %i.oq = phi ptr [ %i.ob, %_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing.exit.i.lr.ph.i63.i ], [ %i.qc, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect.exit.i.i93.i ] ; 2 uses
  %i.or = phi i64 [ %i.oc, %_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing.exit.i.lr.ph.i63.i ], [ %i.qd, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect.exit.i.i93.i ] ; 4 uses
  %i.os = phi i32 [ %i.od, %_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing.exit.i.lr.ph.i63.i ], [ %i.re, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect.exit.i.i93.i ] ; 2 uses
  %.sroa.018.0.i73.i69.i = phi i1 [ %.sroa.018.0.ph.i77.i64.i, %_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing.exit.i.lr.ph.i63.i ], [ %.sroa.018.1.i.i75.i, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect.exit.i.i93.i ]
  %.sroa.019.0.i72.i70.i = phi i1 [ %.sroa.019.0.ph.i76.i65.i, %_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing.exit.i.lr.ph.i63.i ], [ %.sroa.019.1.i.i74.i, %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser6expect.exit.i.i93.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12245)
  %i.ot = load i8, ptr %i.an, align 4, !range !22, !alias.scope !12246, !noalias !12240, !noundef !15 ; 3 uses
  %i.ou = zext nneg i8 %i.ot to i128
  %i.ov = shl nuw nsw i128 1, %i.ou
  %i.ow = and i128 %i.ov, 2700567407061847201394260445503
  %i.ox = icmp ne i128 %i.ow, 0
  %i.oy = add nsw i8 %i.ot, -102
  %spec.select30.i.i.i71.i = icmp ult i8 %i.oy, 4
  %or.cond.i.i72.i = select i1 %i.ox, i1 true, i1 %spec.select30.i.i.i71.i
  br i1 %or.cond.i.i72.i, label %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.thread.i.i143.i, label %_RNvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB4_6Parser3eat.exit.thread.i.i73.i

_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.thread.i.i143.i: ; preds = %_RNvMs_NtNtCsb6FLkjZuKG_18ruff_python_parser6parser8progressNtB4_14ParserProgress18assert_progressing.exit.i.i68.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12248
  invoke fastcc void @_RNvMNtNtCsb6FLkjZuKG_18ruff_python_parser6parser9statementNtB4_6Parser15parse_with_item(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(464) %1, i1 noundef zeroext false)
          to label %.noexc8.i144.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i89.i, !noalias !12236

.noexc8.i144.i:                                   ; preds = %_RNvMs7_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB5_19RecoveryContextKind15is_list_element.exit.thread.i.i143.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !12249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12250)
  %i.oz = load i64, ptr %i.l, align 8, !range !26, !alias.scope !12251, !noalias !12252, !noundef !15
  %i.pa = icmp eq i64 %i.or, %i.oz
  br i1 %i.pa, label %bb.ch, label %_RNCINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB7_6Parser49parse_comma_separated_list_into_vec_with_capacityNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemNCNvMNtB7_9statementBN_16parse_with_items0E0B9_.exit.i.i.i

bb.ch:                                            ; preds = %.noexc8.i144.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemE8grow_oneCsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %._RNCINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB7_6Parser49parse_comma_separated_list_into_vec_with_capacityNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemNCNvMNtB7_9statementBN_16parse_with_items0E0B9_.exit.i_crit_edge.i.i unwind label %bb.ci, !noalias !12253

._RNCINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB7_6Parser49parse_comma_separated_list_into_vec_with_capacityNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemNCNvMNtB7_9statementBN_16parse_with_items0E0B9_.exit.i_crit_edge.i.i: ; preds = %bb.ch
  %.pre.i160.i = load ptr, ptr %i.nu, align 8, !alias.scope !12251, !noalias !12252
  br label %_RNCINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB7_6Parser49parse_comma_separated_list_into_vec_with_capacityNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemNCNvMNtB7_9statementBN_16parse_with_items0E0B9_.exit.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.pb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemECsb6FLkjZuKG_18ruff_python_parser(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.e) #44
          to label %.body.i81.i unwind label %bb.cj, !noalias !12254

bb.cj:                                            ; preds = %bb.ci
  %i.pc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #43, !noalias !12254
  unreachable

_RNCINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB7_6Parser49parse_comma_separated_list_into_vec_with_capacityNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemNCNvMNtB7_9statementBN_16parse_with_items0E0B9_.exit.i.i.i: ; preds = %._RNCINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB7_6Parser49parse_comma_separated_list_into_vec_with_capacityNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemNCNvMNtB7_9statementBN_16parse_with_items0E0B9_.exit.i_crit_edge.i.i, %.noexc8.i144.i
  %i.pd = phi ptr [ %.pre.i160.i, %._RNCINvMs_NtCsb6FLkjZuKG_18ruff_python_parser6parserNtB7_6Parser49parse_comma_separated_list_into_vec_with_capacityNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8WithItemNCNvMNtB7_9statementBN_16parse_with_items0E0B9_.exit.i_crit_edge.i.i ], [ %i.oq, %.noexc8.i144.i ] ; 3 uses
  %i.pe = getelementptr inbounds nuw [96 x i8], ptr %i.pd, i64 %i.or
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.pe, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i64 96, i1 false), !noalias !12254
end_hunk_0
