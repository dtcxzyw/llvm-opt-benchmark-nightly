Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.11?download=true
inline.NumInlined: 2055
inline.NumDeleted: 948
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10visit_stmtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1F_:bb.a
  store i8 %.sroa.3.0.i.i.i145.i.i, ptr %i.me, align 1, !noalias !149
  call void @_RNvXs4_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21report_semantic_error(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.aq), !noalias !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !149
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker16check_identifierNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1L_.exit137.i.i

_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker16check_identifierNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1L_.exit137.i.i: ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker9add_errorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1D_.exit.i144.i.i, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i140.i.i, %bb.at, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker9add_errorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1D_.exit.i129.i.i, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i125.i.i, %bb.aq
  %i.od = icmp eq ptr %i.mf, %i.lw
  br i1 %i.od, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker15debug_shadowingNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1K_.exit.i, label %bb.ap

_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker15debug_shadowingNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1K_.exit.i: ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker16check_identifierNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1L_.exit137.i.i, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker16check_identifierNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1L_.exit105.i.i, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker16check_identifierNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1L_.exit90.i.i, %bb.ao, %bb.ak, %bb.ad, %bb.z, %bb.u, %bb.h, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker16check_identifierNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1L_.exit45.i.i, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker23invalid_star_expressionNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1S_.exit109.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %i.oe = load i8, ptr %i.bk, align 4, !range !71, !noundef !6 ; 2 uses
  %i.of = icmp samesign ugt i8 %i.oe, 1
  %i.og = zext nneg i8 %i.oe to i64
  %i.oh = add nsw i64 %i.og, -1
  %i.oi = select i1 %i.of, i64 %i.oh, i64 0
  switch i64 %i.oi, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1F_.exit [
    i64 0, label %bb.aw
    i64 1, label %bb.ax
    i64 4, label %bb.ay
    i64 7, label %bb.az
  ]

bb.aw:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker15debug_shadowingNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1K_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr %2, ptr %i.am, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 8, !align !17, !noundef !6 ; 3 uses
  %.not10.i.i = icmp eq ptr %i.ol, null
  br i1 %.not10.i.i, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2o_.exit.i.i, label %bb.bb

bb.ax:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker15debug_shadowingNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1K_.exit.i
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.on = load ptr, ptr %i.om, align 8, !align !17, !noundef !6 ; 3 uses
  %.not8.i.i = icmp eq ptr %i.on, null
  br i1 %.not8.i.i, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1F_.exit, label %bb.bz

bb.ay:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker15debug_shadowingNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1K_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %2, ptr %i.ai, align 8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  store i8 6, ptr %i.oo, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oq = load ptr, ptr %i.op, align 8, !nonnull !6, !noundef !6
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1x_(ptr noalias noundef align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 %i.oq)
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.os = load ptr, ptr %i.or, align 8, !align !17, !noundef !6 ; 3 uses
  %.not.i52.i = icmp eq ptr %i.os, null
  br i1 %.not.i52.i, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2o_.exit53.i.i, label %bb.cg

bb.az:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker15debug_shadowingNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1K_.exit.i
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 1135 ; 2 uses
  %.sroa.01.0.copyload.i.i.i = load i8, ptr %i.ot, align 1
  %i.ou = trunc nuw i8 %.sroa.01.0.copyload.i.i.i to i1
  br i1 %i.ou, label %_RNvXs4_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext14python_version.exit.i.i, label %.thread.i.i

_RNvXs4_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext14python_version.exit.i.i: ; preds = %bb.az
  %.sroa.4.0..sroa_idx.i.i51.i = getelementptr inbounds nuw i8, ptr %2, i64 1136
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i51.i, align 8
  %.sroa.4.0.copyload.i.fr.i.i = freeze i8 %.sroa.4.0.copyload.i.i.i ; 2 uses
  %i.ov = icmp eq i8 %.sroa.4.0.copyload.i.fr.i.i, 3
  br i1 %i.ov, label %.split.i.i, label %bb.ba

.split.i.i:                                       ; preds = %_RNvXs4_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext14python_version.exit.i.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 1137
  %.sroa.5.0.copyload.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i, align 1
  %i.ow = icmp ugt i8 %.sroa.5.0.copyload.i.i.i, 13
  br i1 %i.ow, label %.thread.i.i, label %bb.cm

bb.ba:                                            ; preds = %_RNvXs4_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext14python_version.exit.i.i
  %i.ox = icmp ugt i8 %.sroa.4.0.copyload.i.fr.i.i, 3
  br i1 %i.ox, label %.thread.i.i, label %bb.cm

bb.bb:                                            ; preds = %bb.aw
  %i.oy = getelementptr i8, ptr %i.ol, i64 8
  %.val17.i.i = load ptr, ptr %i.oy, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.oz = getelementptr i8, ptr %i.ol, i64 16
  %.val18.i.i = load i64, ptr %i.oz, align 8, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %.idx.i.i.i = mul nuw nsw i64 %.val18.i.i, 72
  %i.pa = getelementptr inbounds nuw i8, ptr %.val17.i.i, i64 %.idx.i.i.i
  %i.pb = icmp eq i64 %.val18.i.i, 0
  br i1 %i.pb, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2o_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bb, %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i.i.i
  %.sroa.0.01.i.i.i = phi ptr [ %i.pc, %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i.i.i ], [ %.val17.i.i, %bb.bb ] ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.pd = load i64, ptr %.sroa.0.01.i.i.i, align 8, !range !88, !noalias !158, !noundef !6
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 16
  %i.pf = load ptr, ptr %i.pe, align 8, !noalias !158, !align !17, !noundef !6 ; 4 uses
  %.not2.i.i.i.i = icmp eq ptr %i.pf, null        ; 3 uses
  switch i64 %i.pd, label %.lr.ph.i.i.i.unreachabledefault [
    i64 0, label %bb.bc
    i64 1, label %bb.bd
    i64 2, label %bb.be
  ]

.lr.ph.i.i.i.unreachabledefault:                  ; preds = %.lr.ph.i.i.i
  unreachable

default.unreachable:                              ; preds = %.lr.ph.i43.i.i, %.lr.ph.i30.i.i
  unreachable

bb.bc:                                            ; preds = %.lr.ph.i.i.i
  br i1 %.not2.i.i.i.i, label %bb.bg, label %bb.bf

bb.bd:                                            ; preds = %.lr.ph.i.i.i
  br i1 %.not2.i.i.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i.i.i, label %.sink.split.i.i.i.i

bb.be:                                            ; preds = %.lr.ph.i.i.i
  br i1 %.not2.i.i.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i.i.i, label %.sink.split.i.i.i.i

bb.bf:                                            ; preds = %bb.bc
  store i8 0, ptr %i.oj, align 8, !alias.scope !158
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1x_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 %i.pf)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bc
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 24
  %i.ph = load ptr, ptr %i.pg, align 8, !noalias !158, !align !17, !noundef !6 ; 2 uses
  %.not3.i.i.i.i = icmp eq ptr %i.ph, null
  br i1 %.not3.i.i.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.bg, %bb.be, %bb.bd
  %.sink8.i.i.i.i = phi i8 [ 2, %bb.bd ], [ 3, %bb.be ], [ 1, %bb.bg ]
  %.sink.i.i.i.i = phi ptr [ %i.pf, %bb.bd ], [ %i.pf, %bb.be ], [ %i.ph, %bb.bg ]
  store i8 %.sink8.i.i.i.i, ptr %i.oj, align 8, !alias.scope !158
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1x_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 %.sink.i.i.i.i)
  br label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i.i.i

_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i.i.i: ; preds = %.sink.split.i.i.i.i, %bb.bg, %bb.be, %bb.bd
  %i.pi = icmp eq ptr %i.pc, %i.pa
  br i1 %i.pi, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2o_.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2o_.exit.i.i: ; preds = %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i.i.i, %bb.bb, %bb.aw
  %i.pj = getelementptr i8, ptr %2, i64 520
  %.val19.i.i = load i32, ptr %i.pj, align 8, !noundef !6
  %i.pk = and i32 %.val19.i.i, 49152
  %.not75.i.i = icmp eq i32 %i.pk, 0
  br i1 %.not75.i.i, label %bb.bh, label %.thread71.i.i

bb.bh:                                            ; preds = %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2o_.exit.i.i
  %i.pl = getelementptr inbounds nuw i8, ptr %2, i64 1135
  %.sroa.01.0.copyload.i20.i.i = load i8, ptr %i.pl, align 1
  %i.pm = trunc nuw i8 %.sroa.01.0.copyload.i20.i.i to i1
  br i1 %i.pm, label %_RNvXs4_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext14python_version.exit27.i.i, label %.thread71.i.i

_RNvXs4_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext14python_version.exit27.i.i: ; preds = %bb.bh
  %.sroa.4.0..sroa_idx.i25.i.i = getelementptr inbounds nuw i8, ptr %2, i64 1136
  %.sroa.4.0.copyload.i26.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i25.i.i, align 8
  %.sroa.4.0.copyload.i26.fr.i.i = freeze i8 %.sroa.4.0.copyload.i26.i.i ; 2 uses
  %i.pn = icmp eq i8 %.sroa.4.0.copyload.i26.fr.i.i, 3
  br i1 %i.pn, label %.split72.i.i, label %bb.bi

.split72.i.i:                                     ; preds = %_RNvXs4_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext14python_version.exit27.i.i
  %.sroa.5.0..sroa_idx.i23.i.i = getelementptr inbounds nuw i8, ptr %2, i64 1137
  %.sroa.5.0.copyload.i24.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i23.i.i, align 1
  %i.po = icmp ugt i8 %.sroa.5.0.copyload.i24.i.i, 13
  br i1 %i.po, label %.thread71.i.i, label %bb.bj

bb.bi:                                            ; preds = %_RNvXs4_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext14python_version.exit27.i.i
  %i.pp = icmp ugt i8 %.sroa.4.0.copyload.i26.fr.i.i, 3
  br i1 %i.pp, label %.thread71.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %.split72.i.i
  %i.pq = load ptr, ptr %i.ok, align 8, !align !17, !noundef !6
  %.not11.i.i = icmp eq ptr %i.pq, null
  br i1 %.not11.i.i, label %bb.bk, label %.thread71.i.i

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1F_.exit

.thread71.i.i:                                    ; preds = %bb.bj, %bb.bi, %.split72.i.i, %bb.bh, %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2o_.exit.i.i
  %storemerge.i.i = phi i8 [ 4, %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2o_.exit.i.i ], [ 4, %bb.bi ], [ 5, %bb.bj ], [ 4, %.split72.i.i ], [ 4, %bb.bh ]
  store i8 %storemerge.i.i, ptr %i.oj, align 8
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ps = load ptr, ptr %i.pr, align 8, !nonnull !6, !noundef !6
  call void @_RNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10Parameters4iter(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.al, ptr noundef nonnull align 8 %i.ps)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ak, ptr noundef nonnull align 8 dereferenceable(64) %i.al, i64 64, i1 false)
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ak, i64 64
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ak, i64 56 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.py = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bv, %.thread71.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.pt, ptr %i.ah, align 8, !noalias !162
  %i.qb = load ptr, ptr %i.pv, align 8, !alias.scope !164, !noalias !167, !nonnull !6, !noundef !6
  %.promoted.i.i53.i = load ptr, ptr %i.ak, align 8, !alias.scope !164, !noalias !167
  %.promoted14.i.i.i = load ptr, ptr %i.pu, align 8, !alias.scope !159, !noalias !167
  %.promoted.i.i = load ptr, ptr %i.pw, align 8
  %.promoted76.i.i = load ptr, ptr %i.py, align 8
  %.promoted77.i.i = load ptr, ptr %i.pz, align 8
  %i.qc = load ptr, ptr %i.px, align 8, !nonnull !6
  %i.qd = load ptr, ptr %i.qa, align 8, !nonnull !6
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bu, %bb.bl
  %3 = phi ptr [ %6, %bb.bu ], [ %.promoted77.i.i, %bb.bl ] ; 7 uses
  %4 = phi ptr [ %7, %bb.bu ], [ %.promoted76.i.i, %bb.bl ] ; 4 uses
  %5 = phi ptr [ %8, %bb.bu ], [ %.promoted.i.i, %bb.bl ] ; 7 uses
  %i.qe = phi ptr [ %i.qm, %bb.bu ], [ %.promoted14.i.i.i, %bb.bl ] ; 6 uses
  %i.qf = phi ptr [ %i.qn, %bb.bu ], [ %.promoted.i.i53.i, %bb.bl ] ; 7 uses
  %i.qg = icmp eq ptr %i.qf, %i.qb
  br i1 %i.qg, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qf, i64 80 ; 2 uses
  store ptr %i.qh, ptr %i.ak, align 8, !alias.scope !164, !noalias !167
  br label %bb.bu

bb.bo:                                            ; preds = %bb.bm
  %i.qi = icmp eq ptr %5, %i.qc
  br i1 %i.qi, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qj = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  store ptr %i.qj, ptr %i.pw, align 8, !alias.scope !164, !noalias !167
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bo
  store ptr null, ptr %i.py, align 8, !alias.scope !164, !noalias !167
  %.not.i.i.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i.i.i, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.qk = icmp eq ptr %3, %i.qd
  br i1 %i.qk, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ql = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  store ptr %i.ql, ptr %i.pz, align 8, !alias.scope !164, !noalias !167
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  store ptr null, ptr %i.pu, align 8, !alias.scope !164, !noalias !167
  %.not10.i.i.i.i = icmp eq ptr %i.qe, null
  br i1 %.not10.i.i.i.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.bq, %bb.bp, %bb.bn
  %6 = phi ptr [ %3, %bb.bq ], [ %3, %bb.bp ], [ %i.ql, %bb.bs ], [ %3, %bb.bt ], [ %3, %bb.bn ]
  %7 = phi ptr [ null, %bb.bq ], [ %4, %bb.bp ], [ null, %bb.bs ], [ null, %bb.bt ], [ %4, %bb.bn ]
  %8 = phi ptr [ %5, %bb.bq ], [ %i.qj, %bb.bp ], [ %5, %bb.bs ], [ %5, %bb.bt ], [ %5, %bb.bn ]
  %i.qm = phi ptr [ %i.qe, %bb.bq ], [ %i.qe, %bb.bp ], [ %i.qe, %bb.bs ], [ null, %bb.bt ], [ %i.qe, %bb.bn ]
  %i.qn = phi ptr [ %i.qf, %bb.bq ], [ %i.qf, %bb.bp ], [ %i.qf, %bb.bs ], [ %i.qf, %bb.bt ], [ %i.qh, %bb.bn ]
  %.sroa.7.0.i.ph.i.i.i = phi ptr [ %4, %bb.bq ], [ %5, %bb.bp ], [ %3, %bb.bs ], [ %i.qe, %bb.bt ], [ %i.qf, %bb.bn ]
  %.sroa.0.0.i.ph.i.i.i = phi i64 [ 0, %bb.bq ], [ 1, %bb.bp ], [ 1, %bb.bs ], [ 0, %bb.bt ], [ 1, %bb.bn ]
  %i.qo = call noundef align 8 ptr @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvMs1L_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtBV_15AnyParameterRef10annotationINtB7_5FnMutTB1y_EE8call_mutCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah, i64 noundef range(i64 0, 2) %.sroa.0.0.i.ph.i.i.i, ptr noundef nonnull %.sroa.7.0.i.ph.i.i.i), !noalias !159 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.qo, null
  br i1 %.not8.i.i.i, label %bb.bm, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1x_(ptr noalias noundef align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 %i.qo)
  br label %bb.bl

bb.bw:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.qp = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.qq = load ptr, ptr %i.qp, align 8, !align !17, !noundef !6 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.qq, null
  br i1 %.not13.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1x_(ptr noalias noundef align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 %i.qq)
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1F_.exit

bb.bz:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store ptr %2, ptr %i.aj, align 8
  %i.qr = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  %i.qs = getelementptr i8, ptr %i.on, i64 8
  %.val15.i.i = load ptr, ptr %i.qs, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.qt = getelementptr i8, ptr %i.on, i64 16
  %.val16.i.i = load i64, ptr %i.qt, align 8, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %.idx.i29.i.i = mul nuw nsw i64 %.val16.i.i, 72
  %i.qu = getelementptr inbounds nuw i8, ptr %.val15.i.i, i64 %.idx.i29.i.i
  %i.qv = icmp eq i64 %.val16.i.i, 0
  br i1 %i.qv, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2o_.exit39.i.i, label %.lr.ph.i30.i.i

.lr.ph.i30.i.i:                                   ; preds = %bb.bz, %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i36.i.i
  %.sroa.0.01.i31.i.i = phi ptr [ %i.qw, %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i36.i.i ], [ %.val15.i.i, %bb.bz ] ; 4 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i31.i.i, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.qx = load i64, ptr %.sroa.0.01.i31.i.i, align 8, !range !88, !noalias !174, !noundef !6
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i31.i.i, i64 16
  %i.qz = load ptr, ptr %i.qy, align 8, !noalias !174, !align !17, !noundef !6 ; 4 uses
  %.not2.i.i32.i.i = icmp eq ptr %i.qz, null      ; 3 uses
  switch i64 %i.qx, label %default.unreachable [
    i64 0, label %bb.ca
    i64 1, label %bb.cb
    i64 2, label %bb.cc
  ]

bb.ca:                                            ; preds = %.lr.ph.i30.i.i
  br i1 %.not2.i.i32.i.i, label %bb.ce, label %bb.cd

bb.cb:                                            ; preds = %.lr.ph.i30.i.i
  br i1 %.not2.i.i32.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i36.i.i, label %.sink.split.i.i33.i.i

bb.cc:                                            ; preds = %.lr.ph.i30.i.i
  br i1 %.not2.i.i32.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i36.i.i, label %.sink.split.i.i33.i.i

bb.cd:                                            ; preds = %bb.ca
  store i8 0, ptr %i.qr, align 8, !alias.scope !174
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1x_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 %i.qz)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.ca
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i31.i.i, i64 24
  %i.rb = load ptr, ptr %i.ra, align 8, !noalias !174, !align !17, !noundef !6 ; 2 uses
  %.not3.i.i37.i.i = icmp eq ptr %i.rb, null
  br i1 %.not3.i.i37.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i36.i.i, label %.sink.split.i.i33.i.i

.sink.split.i.i33.i.i:                            ; preds = %bb.ce, %bb.cc, %bb.cb
  %.sink8.i.i34.i.i = phi i8 [ 2, %bb.cb ], [ 3, %bb.cc ], [ 1, %bb.ce ]
  %.sink.i.i35.i.i = phi ptr [ %i.qz, %bb.cb ], [ %i.qz, %bb.cc ], [ %i.rb, %bb.ce ]
  store i8 %.sink8.i.i34.i.i, ptr %i.qr, align 8, !alias.scope !174
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1x_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 %.sink.i.i35.i.i)
  br label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i36.i.i

_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i36.i.i: ; preds = %.sink.split.i.i33.i.i, %bb.ce, %bb.cc, %bb.cb
  %i.rc = icmp eq ptr %i.qw, %i.qu
  br i1 %i.rc, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2o_.exit39.i.i, label %.lr.ph.i30.i.i

_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2o_.exit39.i.i: ; preds = %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i36.i.i, %bb.bz
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.re = load ptr, ptr %i.rd, align 8, !align !17, !noundef !6 ; 4 uses
  %.not9.i.i = icmp eq ptr %i.re, null
  br i1 %.not9.i.i, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor14walk_argumentsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2m_.exit.i.i, label %bb.cf

bb.cf:                                            ; preds = %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2o_.exit39.i.i
  store i8 5, ptr %i.qr, align 8
  %i.rf = load ptr, ptr %i.re, align 8, !noalias !175, !nonnull !6, !noundef !6 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rh = load i64, ptr %i.rg, align 8, !noalias !175, !noundef !6 ; 2 uses
  %.idx.i40.i.i = mul nuw nsw i64 %i.rh, 72
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 %.idx.i40.i.i
  %i.rj = icmp eq i64 %i.rh, 0
  br i1 %i.rj, label %._crit_edge.i.i.i, label %.lr.ph.i41.i.i

.lr.ph.i41.i.i:                                   ; preds = %bb.cf, %.lr.ph.i41.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.rk, %.lr.ph.i41.i.i ], [ %i.rf, %bb.cf ] ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 72 ; 2 uses
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1x_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 %.sroa.0.05.i.i.i), !inline_history !178
  %i.rl = icmp eq ptr %i.rk, %i.ri
  br i1 %i.rl, label %._crit_edge.i.i.i, label %.lr.ph.i41.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i41.i.i, %bb.cf
  %i.rm = getelementptr inbounds nuw i8, ptr %i.re, i64 16 ; 2 uses
  %i.rn = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.rm), !noalias !175, !inline_history !178 ; 3 uses
  %i.ro = load ptr, ptr %i.rm, align 8, !noalias !175, !nonnull !6, !noundef !6
  %i.rp = load i64, ptr %i.ro, align 8, !noalias !175, !noundef !6 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rn) ]
  %.idx10.i.i.i = mul nuw nsw i64 %i.rp, 120
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 %.idx10.i.i.i
  %i.rr = icmp eq i64 %i.rp, 0
  br i1 %i.rr, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor14walk_argumentsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2m_.exit.i.i, label %.lr.ph8.i.i.i

.lr.ph8.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph8.i.i.i
  %.sroa.02.06.i.i.i = phi ptr [ %i.rs, %.lr.ph8.i.i.i ], [ %i.rn, %._crit_edge.i.i.i ] ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 120 ; 2 uses
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1x_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 %.sroa.02.06.i.i.i), !inline_history !179
  %i.rt = icmp eq ptr %i.rs, %i.rq
  br i1 %i.rt, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor14walk_argumentsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2m_.exit.i.i, label %.lr.ph8.i.i.i

_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor14walk_argumentsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2m_.exit.i.i: ; preds = %.lr.ph8.i.i.i, %._crit_edge.i.i.i, %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2o_.exit39.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1F_.exit

bb.cg:                                            ; preds = %bb.ay
  %i.ru = getelementptr i8, ptr %i.os, i64 8
  %.val.i.i = load ptr, ptr %i.ru, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.rv = getelementptr i8, ptr %i.os, i64 16
  %.val14.i.i = load i64, ptr %i.rv, align 8, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %.idx.i42.i.i = mul nuw nsw i64 %.val14.i.i, 72
  %i.rw = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i42.i.i
  %i.rx = icmp eq i64 %.val14.i.i, 0
  br i1 %i.rx, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2o_.exit53.i.i, label %.lr.ph.i43.i.i

.lr.ph.i43.i.i:                                   ; preds = %bb.cg, %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i49.i.i
  %.sroa.0.01.i44.i.i = phi ptr [ %i.ry, %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i49.i.i ], [ %.val.i.i, %bb.cg ] ; 4 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i44.i.i, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.rz = load i64, ptr %.sroa.0.01.i44.i.i, align 8, !range !88, !noalias !186, !noundef !6
  %i.sa = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i44.i.i, i64 16
  %i.sb = load ptr, ptr %i.sa, align 8, !noalias !186, !align !17, !noundef !6 ; 4 uses
  %.not2.i.i45.i.i = icmp eq ptr %i.sb, null      ; 3 uses
  switch i64 %i.rz, label %default.unreachable [
    i64 0, label %bb.ch
    i64 1, label %bb.ci
    i64 2, label %bb.cj
  ]

bb.ch:                                            ; preds = %.lr.ph.i43.i.i
  br i1 %.not2.i.i45.i.i, label %bb.cl, label %bb.ck

bb.ci:                                            ; preds = %.lr.ph.i43.i.i
  br i1 %.not2.i.i45.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i49.i.i, label %.sink.split.i.i46.i.i

bb.cj:                                            ; preds = %.lr.ph.i43.i.i
  br i1 %.not2.i.i45.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i49.i.i, label %.sink.split.i.i46.i.i

bb.ck:                                            ; preds = %bb.ch
  store i8 0, ptr %i.oo, align 8, !alias.scope !186
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1x_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 %i.sb)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ch
  %i.sc = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i44.i.i, i64 24
  %i.sd = load ptr, ptr %i.sc, align 8, !noalias !186, !align !17, !noundef !6 ; 2 uses
  %.not3.i.i51.i.i = icmp eq ptr %i.sd, null
  br i1 %.not3.i.i51.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i49.i.i, label %.sink.split.i.i46.i.i

.sink.split.i.i46.i.i:                            ; preds = %bb.cl, %bb.cj, %bb.ci
  %.sink8.i.i47.i.i = phi i8 [ 2, %bb.ci ], [ 3, %bb.cj ], [ 1, %bb.cl ]
  %.sink.i.i48.i.i = phi ptr [ %i.sb, %bb.ci ], [ %i.sb, %bb.cj ], [ %i.sd, %bb.cl ]
  store i8 %.sink8.i.i47.i.i, ptr %i.oo, align 8, !alias.scope !186
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1x_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 %.sink.i.i48.i.i)
  br label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i49.i.i

_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i49.i.i: ; preds = %.sink.split.i.i46.i.i, %bb.cl, %bb.cj, %bb.ci
  %i.se = icmp eq ptr %i.ry, %i.rw
  br i1 %i.se, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2o_.exit53.i.i, label %.lr.ph.i43.i.i

_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEEB2o_.exit53.i.i: ; preds = %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1x_.exit.i49.i.i, %bb.cg, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerEB1F_.exit

.thread.i.i:                                      ; preds = %bb.ba, %.split.i.i, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr %2, ptr %i.ap, align 8
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i8 4, ptr %i.sf, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sh = load ptr, ptr %i.sg, align 8, !nonnull !6, !noundef !6
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7CheckerENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1x_(ptr noalias noundef align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 %i.sh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.cm
end_hunk_0
begin_hunk_1_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules21unrecognized_platform21unrecognized_platform:bb.a
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.l
  resume { ptr, i32 } %i.bb

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.k
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
  br label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules21unrecognized_platform21unrecognized_platform0Bb_.exit

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules21unrecognized_platform21unrecognized_platform0Bb_.exit: ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %.sroa.0.0.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.d, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules21unrecognized_platform21unrecognized_platform0Bb_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c

bb.o:                                             ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules21unrecognized_platform21unrecognized_platform0Bb_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bd = load i8, ptr %i.j, align 1, !range !1267, !noundef !6
  %switch = icmp samesign ult i8 %i.bd, 2
  br i1 %switch, label %bb.q, label %switch.lookup

switch.lookup:                                    ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.be = load i32, ptr %1, align 8, !range !16, !noundef !6 ; 2 uses
  %i.bf = zext nneg i32 %i.be to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.bf
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.bg = zext nneg i32 %i.be to i64
  %switch.gep19 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.505, i64 %i.bg
  %switch.load20 = load i8, ptr %switch.gep19, align 1
  %switch.ext21 = zext i8 %switch.load20 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %switch.ext21
  %.sroa.0.0.i9 = load i32, ptr %i.bh, align 4, !noundef !6
  %.sroa.34.0.i = load i32, ptr %i.bi, align 4, !noundef !6
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !6, !align !17, !noundef !6
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext28report_diagnostic_if_enabledNtNtNtNtNtBa_5rules10flake8_pyi5rules21unrecognized_platform25UnrecognizedPlatformCheckEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull align 8 %i.bk, i32 noundef %.sroa.0.0.i9, i32 noundef %.sroa.34.0.i)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bm = load i16, ptr %i.bl, align 8, !range !1019, !alias.scope !1268, !noundef !6
  %i.bn = icmp eq i16 %i.bm, -1
  br i1 %i.bn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEEB13_.exit, label %bb.p

bb.p:                                             ; preds = %switch.lookup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEEB13_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEEB13_.exit: ; preds = %switch.lookup, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.c

bb.q:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %i.n, align 8, !range !16, !noundef !6
  %i.bp = icmp eq i32 %i.bo, 19
  br i1 %i.bp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !6, !align !17, !noundef !6
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 112
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !6
  %i.bv = and i64 %i.bu, 4194304
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.c, label %bb.u

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bx = call fastcc { i32, i32 } @_RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.by = extractvalue { i32, i32 } %i.bx, 0
  %i.bz = extractvalue { i32, i32 } %i.bx, 1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !6, !align !17, !noundef !6
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext28report_diagnostic_if_enabledNtNtNtNtNtBa_5rules10flake8_pyi5rules21unrecognized_platform25UnrecognizedPlatformCheckEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %i.cb, i32 noundef %i.by, i32 noundef %i.bz)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cd = load i16, ptr %i.cc, align 8, !range !1019, !alias.scope !1271, !noundef !6
  %i.ce = icmp eq i16 %i.cd, -1
  br i1 %i.ce, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEEB13_.exit10, label %bb.t

bb.t:                                             ; preds = %bb.s
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEEB13_.exit10

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEEB13_.exit10: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.u:                                             ; preds = %bb.r
  %i.cf = call { ptr, i64 } @_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue6to_str(ptr noundef nonnull align 8 %i.bq) ; 2 uses
  %i.cg = extractvalue { ptr, i64 } %i.cf, 0      ; 8 uses
  %i.ch = extractvalue { ptr, i64 } %i.cf, 1
  switch i64 %i.ch, label %bb.z [
    i64 5, label %bb.v
    i64 6, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %i.ci = load i32, ptr %i.cg, align 1
  %i.cj = xor i32 %i.ci, 1970170220
  %i.ck = getelementptr i8, ptr %i.cg, i64 4
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i32
  %i.cn = xor i32 %i.cm, 120
  %i.co = or i32 %i.cj, %i.cn
  %i.cp = icmp ne i32 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.c, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cs = load i32, ptr %i.cg, align 1
  %i.ct = xor i32 %i.cs, 862873975
  %i.cu = getelementptr i8, ptr %i.cg, i64 4
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = zext i8 %i.cv to i32
  %i.cx = xor i32 %i.cw, 50
  %i.cy = or i32 %i.ct, %i.cx
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = zext i1 %i.cz to i32
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.c, label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.dc = load i32, ptr %i.cg, align 1
  %i.dd = xor i32 %i.dc, 2003269987
  %i.de = getelementptr i8, ptr %i.cg, i64 4
  %i.df = load i16, ptr %i.de, align 1
  %i.dg = zext i16 %i.df to i32
  %i.dh = xor i32 %i.dg, 28265
  %i.di = or i32 %i.dd, %i.dh
  %i.dj = icmp ne i32 %i.di, 0
  %i.dk = zext i1 %i.dj to i32
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.c, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dm = load i32, ptr %i.cg, align 1
  %i.dn = xor i32 %i.dm, 2003984740
  %i.do = getelementptr i8, ptr %i.cg, i64 4
  %i.dp = load i16, ptr %i.do, align 1
  %i.dq = zext i16 %i.dp to i32
  %i.dr = xor i32 %i.dq, 28265
  %i.ds = or i32 %i.dn, %i.dr
  %i.dt = icmp ne i32 %i.ds, 0
  %i.du = zext i1 %i.dt to i32
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.c, label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.u, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes18StringLiteralValueNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.bq)
  %i.dw = call fastcc { i32, i32 } @_RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noundef nonnull align 8 %i.n) ; 2 uses
  %i.dx = extractvalue { i32, i32 } %i.dw, 0
  %i.dy = extractvalue { i32, i32 } %i.dw, 1
  %i.dz = load ptr, ptr %i.br, align 8, !nonnull !6, !align !17, !noundef !6
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules10flake8_pyi5rules21unrecognized_platform24UnrecognizedPlatformNameEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull align 8 %i.dz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, i32 noundef %i.dx, i32 noundef %i.dy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules29no_return_argument_annotation29no_return_argument_annotation(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 13 uses
  %i.d = alloca [64 x i8], align 8                ; 2 uses
  call void @_RNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10Parameters4iter(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noundef nonnull align 8 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1135
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1137
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1024
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8, !noalias !1277
  %i.o = load ptr, ptr %i.g, align 8, !alias.scope !1279, !noalias !1282, !nonnull !6, !noundef !6
  %.promoted.i = load ptr, ptr %i.c, align 8, !alias.scope !1279, !noalias !1282
  %.promoted14.i = load ptr, ptr %i.f, align 8, !alias.scope !1274, !noalias !1282
  %.promoted = load ptr, ptr %i.h, align 8
  %.promoted15 = load ptr, ptr %i.j, align 8
  %.promoted16 = load ptr, ptr %i.k, align 8
  %i.p = load ptr, ptr %i.i, align 8, !nonnull !6
  %i.q = load ptr, ptr %i.l, align 8, !nonnull !6
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %bb.b
  %2 = phi ptr [ %5, %bb.k ], [ %.promoted16, %bb.b ] ; 7 uses
  %3 = phi ptr [ %6, %bb.k ], [ %.promoted15, %bb.b ] ; 4 uses
  %4 = phi ptr [ %7, %bb.k ], [ %.promoted, %bb.b ] ; 7 uses
  %i.r = phi ptr [ %i.z, %bb.k ], [ %.promoted14.i, %bb.b ] ; 6 uses
  %i.s = phi ptr [ %i.aa, %bb.k ], [ %.promoted.i, %bb.b ] ; 7 uses
  %i.t = icmp eq ptr %i.s, %i.o
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 80 ; 2 uses
  store ptr %i.u, ptr %i.c, align 8, !alias.scope !1279, !noalias !1282
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.v = icmp eq ptr %4, %i.p
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  store ptr %i.w, ptr %i.h, align 8, !alias.scope !1279, !noalias !1282
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  store ptr null, ptr %i.j, align 8, !alias.scope !1279, !noalias !1282
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq ptr %2, %i.q
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  store ptr %i.y, ptr %i.k, align 8, !alias.scope !1279, !noalias !1282
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.f, align 8, !alias.scope !1279, !noalias !1282
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.d
  %5 = phi ptr [ %2, %bb.g ], [ %2, %bb.f ], [ %i.y, %bb.i ], [ %2, %bb.j ], [ %2, %bb.d ]
  %6 = phi ptr [ null, %bb.g ], [ %3, %bb.f ], [ null, %bb.i ], [ null, %bb.j ], [ %3, %bb.d ]
  %7 = phi ptr [ %4, %bb.g ], [ %i.w, %bb.f ], [ %4, %bb.i ], [ %4, %bb.j ], [ %4, %bb.d ]
  %i.z = phi ptr [ %i.r, %bb.g ], [ %i.r, %bb.f ], [ %i.r, %bb.i ], [ null, %bb.j ], [ %i.r, %bb.d ]
  %i.aa = phi ptr [ %i.s, %bb.g ], [ %i.s, %bb.f ], [ %i.s, %bb.i ], [ %i.s, %bb.j ], [ %i.u, %bb.d ]
  %.sroa.7.0.i.ph.i = phi ptr [ %3, %bb.g ], [ %4, %bb.f ], [ %2, %bb.i ], [ %i.r, %bb.j ], [ %i.s, %bb.d ]
  %.sroa.0.0.i.ph.i = phi i64 [ 0, %bb.g ], [ 1, %bb.f ], [ 1, %bb.i ], [ 0, %bb.j ], [ 1, %bb.d ]
  %i.ab = call noundef align 8 ptr @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvMs1L_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtBV_15AnyParameterRef10annotationINtB7_5FnMutTB1y_EE8call_mutCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef range(i64 0, 2) %.sroa.0.0.i.ph.i, ptr noundef nonnull %.sroa.7.0.i.ph.i), !noalias !1274 ; 5 uses
  %.not8.i = icmp eq ptr %i.ab, null
  br i1 %.not8.i, label %bb.c, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = call noundef zeroext i1 @_RINvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_7Checker33match_maybe_stringized_annotationNCNvNtNtNtNtBa_5rules10flake8_pyi5rules29no_return_argument_annotation12is_no_return0EBa_(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.ab, ptr noundef nonnull align 8 %0)
  br i1 %i.ac, label %bb.n, label %.backedge

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.sroa.04.0.copyload = load i8, ptr %i.m, align 1
  %i.ad = trunc nuw i8 %.sroa.04.0.copyload to i1
  br i1 %i.ad, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0.copyload.fr = freeze i8 %.sroa.4.0.copyload ; 2 uses
  %i.ae = icmp eq i8 %.sroa.4.0.copyload.fr, 3
  %i.af = icmp ult i8 %.sroa.5.0.copyload, 11
  %i.ag = icmp ult i8 %.sroa.4.0.copyload.fr, 3
  %i.ah = select i1 %i.ae, i1 %i.af, i1 %i.ag
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.n
  %i.ai = phi i1 [ %i.ah, %bb.o ], [ true, %bb.n ]
  %i.aj = load i32, ptr %i.ab, align 8, !range !16, !noundef !6 ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.ak
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.al = zext nneg i32 %i.aj to i64
  %switch.gep24 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.505, i64 %i.al
  %switch.load25 = load i8, ptr %switch.gep24, align 1
  %switch.ext26 = zext i8 %switch.load25 to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 %switch.ext
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 %switch.ext26
  %.sroa.0.0.i8 = load i32, ptr %i.am, align 4, !noundef !6
  %.sroa.34.0.i = load i32, ptr %i.an, align 4, !noundef !6
  %i.ao = load ptr, ptr %i.n, align 8, !nonnull !6, !align !17, !noundef !6
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules10flake8_pyi5rules29no_return_argument_annotation32NoReturnArgumentAnnotationInStubEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %i.ao, i1 noundef zeroext %i.ai, i32 noundef %.sroa.0.0.i8, i32 noundef %.sroa.34.0.i)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.backedge

.backedge:                                        ; preds = %.thread, %bb.l
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all30unsupported_method_call_on_all(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = load i32, ptr %1, align 8, !range !16, !noundef !6
  %i.g = icmp eq i32 %i.f, 25
  br i1 %i.g, label %bb.b, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all21is_unsupported_method.exit.thread9

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !range !16, !noundef !6
  %i.l = icmp eq i32 %i.k, 28
  br i1 %i.l, label %bb.c, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all21is_unsupported_method.exit.thread9

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all21is_unsupported_method.exit.thread9: ; preds = %bb.e, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all21is_unsupported_method.exit, %bb.d, %bb.c, %bb.b, %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 23
  %i.n = load i8, ptr %i.m, align 1, !range !24, !alias.scope !1283, !noundef !6 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !1283, !noundef !6
  %i.q = and i64 %i.p, 72057594037927935
  %i.r = icmp ult i8 %i.n, -48
  %i.s = zext i8 %i.n to i64
  %i.t = add nsw i64 %i.s, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 16)
  %.sroa.0.0.i = select i1 %i.r, i64 %spec.store.select.i, i64 %i.q
  %i.u = icmp eq i64 %.sroa.0.0.i, 7
  br i1 %i.u, label %bb.d, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all21is_unsupported_method.exit.thread9

bb.d:                                             ; preds = %bb.c
  %i.v = icmp ugt i8 %i.n, -49
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !1283
  %.sroa.01.0.i = select i1 %i.v, ptr %i.x, ptr %i.w ; 2 uses
  %i.y = load i32, ptr %.sroa.01.0.i, align 1
  %i.z = xor i32 %i.y, 1818320735
  %i.aa = getelementptr i8, ptr %.sroa.01.0.i, i64 3
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = xor i32 %i.ab, 1600089196
  %i.ad = or i32 %i.z, %i.ac
  %i.ae = icmp ne i32 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.e, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all21is_unsupported_method.exit.thread9

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.ai = load i8, ptr %i.ah, align 1, !range !24, !alias.scope !1286, !noundef !6 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !1286, !noundef !6
  %i.al = and i64 %i.ak, 72057594037927935
  %i.am = icmp ult i8 %i.ai, -48
  %i.an = zext i8 %i.ai to i64
  %i.ao = add nsw i64 %i.an, -192
  %spec.store.select.i3 = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 16)
  %.sroa.0.0.i4 = select i1 %i.am, i64 %spec.store.select.i3, i64 %i.al
  %i.ap = icmp ugt i8 %i.ai, -49
  %i.aq = load ptr, ptr %i.ag, align 8, !alias.scope !1286
  %.sroa.01.0.i5 = select i1 %i.ap, ptr %i.aq, ptr %i.ag ; 6 uses
  %cond.i = icmp eq i64 %.sroa.0.0.i4, 6
  br i1 %cond.i, label %bb.f, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all21is_unsupported_method.exit.thread9

bb.f:                                             ; preds = %bb.e
  %i.ar = load i32, ptr %.sroa.01.0.i5, align 1
  %i.as = xor i32 %i.ar, 1701867617
  %i.at = getelementptr i8, ptr %.sroa.01.0.i5, i64 4
  %i.au = load i16, ptr %i.at, align 1
  %i.av = zext i16 %i.au to i32
  %i.aw = xor i32 %i.av, 25710
  %i.ax = or i32 %i.as, %i.aw
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all21is_unsupported_method.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = load i32, ptr %.sroa.01.0.i5, align 1
  %i.bc = xor i32 %i.bb, 1702131813
  %i.bd = getelementptr i8, ptr %.sroa.01.0.i5, i64 4
  %i.be = load i16, ptr %i.bd, align 1
  %i.bf = zext i16 %i.be to i32
  %i.bg = xor i32 %i.bf, 25710
  %i.bh = or i32 %i.bc, %i.bg
  %i.bi = icmp ne i32 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all21is_unsupported_method.exit.thread, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all21is_unsupported_method.exit

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all21is_unsupported_method.exit: ; preds = %bb.g
  %i.bl = load i32, ptr %.sroa.01.0.i5, align 1
  %i.bm = xor i32 %i.bl, 1869440370
  %i.bn = getelementptr i8, ptr %.sroa.01.0.i5, i64 4
  %i.bo = load i16, ptr %i.bn, align 1
  %i.bp = zext i16 %i.bo to i32
  %i.bq = xor i32 %i.bp, 25974
  %i.br = or i32 %i.bm, %i.bq
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all21is_unsupported_method.exit.thread, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all21is_unsupported_method.exit.thread9

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all21is_unsupported_method.exit.thread: ; preds = %bb.g, %bb.f, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all21is_unsupported_method.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1289
  store i64 0, ptr %i.c, align 8, !noalias !1289
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1289
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !1289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1289
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.bv, align 8, !noalias !1289
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !1289
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !1289
  store ptr %i.c, ptr %i.b, align 8, !noalias !1289
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @300, ptr %i.bw, align 8, !noalias !1289
  %i.bx = invoke noundef zeroext i1 @_RNvXs2i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10IdentifierNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %i.h, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.i unwind label %bb.h, !noalias !1289

bb.h:                                             ; preds = %bb.j, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all21is_unsupported_method.exit.thread
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #26
          to label %common.resume unwind label %bb.k, !noalias !1289

bb.i:                                             ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules30unsupported_method_call_on_all21is_unsupported_method.exit.thread
  br i1 %i.bx, label %bb.j, label %_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierNtB5_12SpecToString14spec_to_stringCsEhZmuQNqkz_11ruff_linter.exit, !prof !7

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @301, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @303) #25
          to label %.noexc.i unwind label %bb.h, !noalias !1289
end_hunk_1
