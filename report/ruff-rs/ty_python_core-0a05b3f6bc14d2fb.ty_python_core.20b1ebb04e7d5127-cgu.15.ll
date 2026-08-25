Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_core-0a05b3f6bc14d2fb.ty_python_core.20b1ebb04e7d5127-cgu.15?download=true
inline.NumInlined: 867
inline.NumDeleted: 354
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10visit_stmtNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1D_:bb.a
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.019.0147.i.i, i64 48 ; 2 uses
  %i.ng = icmp ugt i8 %i.mx, -49
  %i.nh = load ptr, ptr %i.nf, align 8, !alias.scope !132
  %.sroa.01.0.i.i.i99.i.i = select i1 %i.ng, ptr %i.nh, ptr %i.nf ; 2 uses
  %i.ni = load i64, ptr %.sroa.01.0.i.i.i99.i.i, align 1
  %i.nj = xor i64 %i.ni, 6874592421672673119
  %i.nk = getelementptr i8, ptr %.sroa.01.0.i.i.i99.i.i, i64 8
  %i.nl = load i8, ptr %i.nk, align 1
  %i.nm = zext i8 %i.nl to i64
  %i.nn = xor i64 %i.nm, 95
  %i.no = or i64 %i.nj, %i.nn
  %i.np = icmp ne i64 %i.no, 0
  %i.nq = zext i1 %i.np to i32
  %i.nr = icmp eq i32 %i.nq, 0
  br i1 %i.nr, label %bb.am, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker16check_identifierNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1J_.exit95.i.i

bb.am:                                            ; preds = %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i98.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !137
  %.val.i.i101.i.i = load i8, ptr %i.lp, align 2, !noalias !137, !noundef !4
  %.val1.i.i102.i.i = load i8, ptr %i.lq, align 1, !noalias !137, !noundef !4
  store i8 12, ptr %i.ai, align 8
  store i8 0, ptr %.sroa.4.0..sroa_idx.i103.i.i, align 1
  %i.ns = load <2 x i32>, ptr %i.mv, align 8
  store <2 x i32> %i.ns, ptr %i.lu, align 8, !noalias !137
  store i8 %.val.i.i101.i.i, ptr %i.lv, align 8, !noalias !137
  store i8 %.val1.i.i102.i.i, ptr %i.lw, align 1, !noalias !137
  call void @_RNvXs4_NtCs2O29vuvTAEJ_14ty_python_core7builderNtB5_20SemanticIndexBuilderNtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors21SemanticSyntaxContext21report_semantic_error(ptr noundef nonnull align 8 %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ai), !noalias !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !137
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker16check_identifierNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1J_.exit95.i.i

_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker16check_identifierNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1J_.exit95.i.i: ; preds = %bb.am, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i98.i.i, %bb.al, %bb.ak, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i89.i.i, %bb.aj
  %i.nt = icmp eq ptr %i.lx, %i.ln
  br i1 %i.nt, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker15debug_shadowingNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1I_.exit.i, label %bb.ai

_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker15debug_shadowingNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1I_.exit.i: ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker16check_identifierNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1J_.exit95.i.i, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker16check_identifierNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1J_.exit75.i.i, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker16check_identifierNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1J_.exit66.i.i, %bb.ah, %bb.ae, %bb.y, %bb.v, %bb.r, %bb.f, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker16check_identifierNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1J_.exit39.i.i, %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker23invalid_star_expressionNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1Q_.exit74.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.nu = load i8, ptr %i.bb, align 4, !range !59, !noundef !4 ; 2 uses
  %i.nv = icmp samesign ugt i8 %i.nu, 1
  %i.nw = zext nneg i8 %i.nu to i64
  %i.nx = add nsw i64 %i.nw, -1
  %i.ny = select i1 %i.nv, i64 %i.nx, i64 0
  switch i64 %i.ny, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1D_.exit [
    i64 0, label %bb.an
    i64 1, label %bb.ao
    i64 4, label %bb.ap
    i64 7, label %bb.aq
  ]

bb.an:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker15debug_shadowingNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1I_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %2, ptr %i.ag, align 8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ob = load ptr, ptr %i.oa, align 8, !align !7, !noundef !4 ; 3 uses
  %.not10.i.i = icmp eq ptr %i.ob, null
  br i1 %.not10.i.i, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2m_.exit.i.i, label %bb.ar

bb.ao:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker15debug_shadowingNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1I_.exit.i
  %i.oc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !align !7, !noundef !4 ; 3 uses
  %.not8.i.i = icmp eq ptr %i.od, null
  br i1 %.not8.i.i, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1D_.exit, label %bb.bp

bb.ap:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker15debug_shadowingNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1I_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  store ptr %2, ptr %i.ac, align 8
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  store i8 6, ptr %i.oe, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.og = load ptr, ptr %i.of, align 8, !nonnull !4, !noundef !4
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1v_(ptr noalias noundef align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 %i.og)
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.oi = load ptr, ptr %i.oh, align 8, !align !7, !noundef !4 ; 3 uses
  %.not.i53.i = icmp eq ptr %i.oi, null
  br i1 %.not.i53.i, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2m_.exit49.i.i, label %bb.bw

bb.aq:                                            ; preds = %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker15debug_shadowingNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1I_.exit.i
  %i.oj = getelementptr i8, ptr %2, i64 866
  %.val15.i.i = load i8, ptr %i.oj, align 2, !noundef !4 ; 2 uses
  %i.ok = getelementptr i8, ptr %2, i64 867
  %.val16.i.i = load i8, ptr %i.ok, align 1, !noundef !4
  %i.ol = icmp eq i8 %.val15.i.i, 3
  %i.om = icmp ugt i8 %.val15.i.i, 3
  %i.on = icmp ugt i8 %.val16.i.i, 13
  %.sroa.02.0.i.i = select i1 %i.ol, i1 %i.on, i1 %i.om
  br i1 %.sroa.02.0.i.i, label %bb.cc, label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1D_.exit

bb.ar:                                            ; preds = %bb.an
  %i.oo = getelementptr i8, ptr %i.ob, i64 8
  %.val22.i.i = load ptr, ptr %i.oo, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.op = getelementptr i8, ptr %i.ob, i64 16
  %.val23.i.i = load i64, ptr %i.op, align 8, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %.idx.i.i.i = mul nuw nsw i64 %.val23.i.i, 72
  %i.oq = getelementptr inbounds nuw i8, ptr %.val22.i.i, i64 %.idx.i.i.i
  %i.or = icmp eq i64 %.val23.i.i, 0
  br i1 %i.or, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2m_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ar, %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i.i.i
  %.sroa.0.01.i.i.i = phi ptr [ %i.os, %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i.i.i ], [ %.val22.i.i, %bb.ar ] ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.ot = load i64, ptr %.sroa.0.01.i.i.i, align 8, !range !76, !noalias !146, !noundef !4
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 16
  %i.ov = load ptr, ptr %i.ou, align 8, !noalias !146, !align !7, !noundef !4 ; 4 uses
  %.not2.i.i.i.i = icmp eq ptr %i.ov, null        ; 3 uses
  switch i64 %i.ot, label %.lr.ph.i.i.i.unreachabledefault [
    i64 0, label %bb.as
    i64 1, label %bb.at
    i64 2, label %bb.au
  ]

.lr.ph.i.i.i.unreachabledefault:                  ; preds = %.lr.ph.i.i.i
  unreachable

default.unreachable:                              ; preds = %.lr.ph.i39.i.i, %.lr.ph.i26.i.i
  unreachable

bb.as:                                            ; preds = %.lr.ph.i.i.i
  br i1 %.not2.i.i.i.i, label %bb.aw, label %bb.av

bb.at:                                            ; preds = %.lr.ph.i.i.i
  br i1 %.not2.i.i.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i.i.i, label %.sink.split.i.i.i.i

bb.au:                                            ; preds = %.lr.ph.i.i.i
  br i1 %.not2.i.i.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i.i.i, label %.sink.split.i.i.i.i

bb.av:                                            ; preds = %bb.as
  store i8 0, ptr %i.nz, align 8, !alias.scope !146
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1v_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 %i.ov)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.as
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8, !noalias !146, !align !7, !noundef !4 ; 2 uses
  %.not3.i.i.i.i = icmp eq ptr %i.ox, null
  br i1 %.not3.i.i.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.aw, %bb.au, %bb.at
  %.sink8.i.i.i.i = phi i8 [ 2, %bb.at ], [ 3, %bb.au ], [ 1, %bb.aw ]
  %.sink.i.i.i.i = phi ptr [ %i.ov, %bb.at ], [ %i.ov, %bb.au ], [ %i.ox, %bb.aw ]
  store i8 %.sink8.i.i.i.i, ptr %i.nz, align 8, !alias.scope !146
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1v_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 %.sink.i.i.i.i)
  br label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i.i.i

_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i.i.i: ; preds = %.sink.split.i.i.i.i, %bb.aw, %bb.au, %bb.at
  %i.oy = icmp eq ptr %i.os, %i.oq
  br i1 %i.oy, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2m_.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2m_.exit.i.i: ; preds = %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i.i.i, %bb.ar, %bb.an
  %i.oz = getelementptr i8, ptr %2, i64 868
  %.val24.i.i = load i8, ptr %i.oz, align 4, !range !3, !noundef !4
  %i.pa = trunc nuw i8 %.val24.i.i to i1
  br i1 %i.pa, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2m_.exit.i.i
  %i.pb = getelementptr i8, ptr %2, i64 866
  %.val.i.i = load i8, ptr %i.pb, align 2, !noundef !4 ; 2 uses
  %i.pc = getelementptr i8, ptr %2, i64 867
  %.val14.i.i = load i8, ptr %i.pc, align 1, !noundef !4
  %i.pd = icmp eq i8 %.val.i.i, 3
  %i.pe = icmp ugt i8 %.val.i.i, 3
  %i.pf = icmp ugt i8 %.val14.i.i, 13
  %.sroa.03.0.i.i = select i1 %i.pd, i1 %i.pf, i1 %i.pe
  br i1 %.sroa.03.0.i.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.pg = load ptr, ptr %i.oa, align 8, !align !7, !noundef !4
  %.not11.i.i = icmp eq ptr %i.pg, null
  br i1 %.not11.i.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1D_.exit

bb.ba:                                            ; preds = %bb.ay, %bb.ax, %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2m_.exit.i.i
  %storemerge.i.i = phi i8 [ 4, %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2m_.exit.i.i ], [ 4, %bb.ax ], [ 5, %bb.ay ]
  store i8 %storemerge.i.i, ptr %i.nz, align 8
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.pi = load ptr, ptr %i.ph, align 8, !nonnull !4, !noundef !4
  call void @_RNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10Parameters4iter(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.af, ptr noundef nonnull align 8 %i.pi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %i.af, i64 64, i1 false)
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.po = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bl, %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.pj, ptr %i.ab, align 8, !noalias !150
  %i.pr = load ptr, ptr %i.pl, align 8, !alias.scope !152, !noalias !155, !nonnull !4, !noundef !4
  %.promoted.i.i54.i = load ptr, ptr %i.ae, align 8, !alias.scope !152, !noalias !155
  %.promoted14.i.i.i = load ptr, ptr %i.pk, align 8, !alias.scope !147, !noalias !155
  %i.ps = load ptr, ptr %i.pn, align 8, !nonnull !4
  %i.pt = load ptr, ptr %i.pq, align 8, !nonnull !4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bk, %bb.bb
  %i.pu = phi ptr [ %i.qc, %bb.bk ], [ %.promoted14.i.i.i, %bb.bb ] ; 6 uses
  %i.pv = phi ptr [ %i.qd, %bb.bk ], [ %.promoted.i.i54.i, %bb.bb ] ; 7 uses
  %i.pw = icmp eq ptr %i.pv, %i.pr
  br i1 %i.pw, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 80 ; 2 uses
  store ptr %i.px, ptr %i.ae, align 8, !alias.scope !152, !noalias !155
  br label %bb.bk

bb.be:                                            ; preds = %bb.bc
  %3 = load ptr, ptr %i.pm, align 8, !alias.scope !152, !noalias !155, !nonnull !4, !noundef !4 ; 3 uses
  %i.py = icmp eq ptr %3, %i.ps
  br i1 %i.py, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.pz = getelementptr inbounds nuw i8, ptr %3, i64 80
  store ptr %i.pz, ptr %i.pm, align 8, !alias.scope !152, !noalias !155
  br label %bb.bk

bb.bg:                                            ; preds = %bb.be
  %4 = load ptr, ptr %i.po, align 8, !alias.scope !152, !noalias !155, !align !7, !noundef !4 ; 2 uses
  store ptr null, ptr %i.po, align 8, !alias.scope !152, !noalias !155
  %.not.i.i.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i.i.i, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %5 = load ptr, ptr %i.pp, align 8, !alias.scope !152, !noalias !155, !nonnull !4, !noundef !4 ; 3 uses
  %i.qa = icmp eq ptr %5, %i.pt
  br i1 %i.qa, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.qb = getelementptr inbounds nuw i8, ptr %5, i64 80
  store ptr %i.qb, ptr %i.pp, align 8, !alias.scope !152, !noalias !155
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  store ptr null, ptr %i.pk, align 8, !alias.scope !152, !noalias !155
  %.not10.i.i.i.i = icmp eq ptr %i.pu, null
  br i1 %.not10.i.i.i.i, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bg, %bb.bf, %bb.bd
  %i.qc = phi ptr [ %i.pu, %bb.bg ], [ %i.pu, %bb.bf ], [ %i.pu, %bb.bi ], [ null, %bb.bj ], [ %i.pu, %bb.bd ]
  %i.qd = phi ptr [ %i.pv, %bb.bg ], [ %i.pv, %bb.bf ], [ %i.pv, %bb.bi ], [ %i.pv, %bb.bj ], [ %i.px, %bb.bd ]
  %.sroa.7.0.i.ph.i.i.i = phi ptr [ %4, %bb.bg ], [ %3, %bb.bf ], [ %5, %bb.bi ], [ %i.pu, %bb.bj ], [ %i.pv, %bb.bd ]
  %.sroa.0.0.i.ph.i.i.i = phi i64 [ 0, %bb.bg ], [ 1, %bb.bf ], [ 1, %bb.bi ], [ 0, %bb.bj ], [ 1, %bb.bd ]
  %i.qe = call noundef align 8 ptr @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNvMs1L_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtBV_15AnyParameterRef10annotationINtB7_5FnMutTB1y_EE8call_mutCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef range(i64 0, 2) %.sroa.0.0.i.ph.i.i.i, ptr noundef nonnull %.sroa.7.0.i.ph.i.i.i), !noalias !147 ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.qe, null
  br i1 %.not8.i.i.i, label %bb.bc, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1v_(ptr noalias noundef align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 %i.qe)
  br label %bb.bb

bb.bm:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.qg = load ptr, ptr %i.qf, align 8, !align !7, !noundef !4 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.qg, null
  br i1 %.not13.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1v_(ptr noalias noundef align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 %i.qg)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1D_.exit

bb.bp:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store ptr %2, ptr %i.ad, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.qi = getelementptr i8, ptr %i.od, i64 8
  %.val20.i.i = load ptr, ptr %i.qi, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.qj = getelementptr i8, ptr %i.od, i64 16
  %.val21.i.i = load i64, ptr %i.qj, align 8, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %.idx.i25.i.i = mul nuw nsw i64 %.val21.i.i, 72
  %i.qk = getelementptr inbounds nuw i8, ptr %.val20.i.i, i64 %.idx.i25.i.i
  %i.ql = icmp eq i64 %.val21.i.i, 0
  br i1 %i.ql, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2m_.exit35.i.i, label %.lr.ph.i26.i.i

.lr.ph.i26.i.i:                                   ; preds = %bb.bp, %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i32.i.i
  %.sroa.0.01.i27.i.i = phi ptr [ %i.qm, %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i32.i.i ], [ %.val20.i.i, %bb.bp ] ; 4 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i27.i.i, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.qn = load i64, ptr %.sroa.0.01.i27.i.i, align 8, !range !76, !noalias !162, !noundef !4
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i27.i.i, i64 16
  %i.qp = load ptr, ptr %i.qo, align 8, !noalias !162, !align !7, !noundef !4 ; 4 uses
  %.not2.i.i28.i.i = icmp eq ptr %i.qp, null      ; 3 uses
  switch i64 %i.qn, label %default.unreachable [
    i64 0, label %bb.bq
    i64 1, label %bb.br
    i64 2, label %bb.bs
  ]

bb.bq:                                            ; preds = %.lr.ph.i26.i.i
  br i1 %.not2.i.i28.i.i, label %bb.bu, label %bb.bt

bb.br:                                            ; preds = %.lr.ph.i26.i.i
  br i1 %.not2.i.i28.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i32.i.i, label %.sink.split.i.i29.i.i

bb.bs:                                            ; preds = %.lr.ph.i26.i.i
  br i1 %.not2.i.i28.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i32.i.i, label %.sink.split.i.i29.i.i

bb.bt:                                            ; preds = %bb.bq
  store i8 0, ptr %i.qh, align 8, !alias.scope !162
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1v_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 %i.qp)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bq
  %i.qq = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i27.i.i, i64 24
  %i.qr = load ptr, ptr %i.qq, align 8, !noalias !162, !align !7, !noundef !4 ; 2 uses
  %.not3.i.i33.i.i = icmp eq ptr %i.qr, null
  br i1 %.not3.i.i33.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i32.i.i, label %.sink.split.i.i29.i.i

.sink.split.i.i29.i.i:                            ; preds = %bb.bu, %bb.bs, %bb.br
  %.sink8.i.i30.i.i = phi i8 [ 2, %bb.br ], [ 3, %bb.bs ], [ 1, %bb.bu ]
  %.sink.i.i31.i.i = phi ptr [ %i.qp, %bb.br ], [ %i.qp, %bb.bs ], [ %i.qr, %bb.bu ]
  store i8 %.sink8.i.i30.i.i, ptr %i.qh, align 8, !alias.scope !162
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1v_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 %.sink.i.i31.i.i)
  br label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i32.i.i

_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i32.i.i: ; preds = %.sink.split.i.i29.i.i, %bb.bu, %bb.bs, %bb.br
  %i.qs = icmp eq ptr %i.qm, %i.qk
  br i1 %i.qs, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2m_.exit35.i.i, label %.lr.ph.i26.i.i

_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2m_.exit35.i.i: ; preds = %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i32.i.i, %bb.bp
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.qu = load ptr, ptr %i.qt, align 8, !align !7, !noundef !4 ; 4 uses
  %.not9.i.i = icmp eq ptr %i.qu, null
  br i1 %.not9.i.i, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor14walk_argumentsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2k_.exit.i.i, label %bb.bv

bb.bv:                                            ; preds = %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2m_.exit35.i.i
  store i8 5, ptr %i.qh, align 8
  %i.qv = load ptr, ptr %i.qu, align 8, !noalias !163, !nonnull !4, !noundef !4 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qx = load i64, ptr %i.qw, align 8, !noalias !163, !noundef !4 ; 2 uses
  %.idx.i36.i.i = mul nuw nsw i64 %i.qx, 72
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 %.idx.i36.i.i
  %i.qz = icmp eq i64 %i.qx, 0
  br i1 %i.qz, label %._crit_edge.i.i.i, label %.lr.ph.i37.i.i

.lr.ph.i37.i.i:                                   ; preds = %bb.bv, %.lr.ph.i37.i.i
  %.sroa.0.05.i.i.i = phi ptr [ %i.ra, %.lr.ph.i37.i.i ], [ %i.qv, %bb.bv ] ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i, i64 72 ; 2 uses
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1v_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 %.sroa.0.05.i.i.i), !inline_history !166
  %i.rb = icmp eq ptr %i.ra, %i.qy
  br i1 %i.rb, label %._crit_edge.i.i.i, label %.lr.ph.i37.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i37.i.i, %bb.bv
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qu, i64 16 ; 2 uses
  %i.rd = call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCs2O29vuvTAEJ_14ty_python_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.rc), !noalias !163, !inline_history !166 ; 3 uses
  %i.re = load ptr, ptr %i.rc, align 8, !noalias !163, !nonnull !4, !noundef !4
  %i.rf = load i64, ptr %i.re, align 8, !noalias !163, !noundef !4 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rd) ]
  %.idx10.i.i.i = mul nuw nsw i64 %i.rf, 120
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 %.idx10.i.i.i
  %i.rh = icmp eq i64 %i.rf, 0
  br i1 %i.rh, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor14walk_argumentsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2k_.exit.i.i, label %.lr.ph8.i.i.i

.lr.ph8.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %.lr.ph8.i.i.i
  %.sroa.02.06.i.i.i = phi ptr [ %i.ri, %.lr.ph8.i.i.i ], [ %i.rd, %._crit_edge.i.i.i ] ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 120 ; 2 uses
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1v_(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 %.sroa.02.06.i.i.i), !inline_history !167
  %i.rj = icmp eq ptr %i.ri, %i.rg
  br i1 %i.rj, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor14walk_argumentsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2k_.exit.i.i, label %.lr.ph8.i.i.i

_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor14walk_argumentsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2k_.exit.i.i: ; preds = %.lr.ph8.i.i.i, %._crit_edge.i.i.i, %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2m_.exit35.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1D_.exit

bb.bw:                                            ; preds = %bb.ap
  %i.rk = getelementptr i8, ptr %i.oi, i64 8
  %.val18.i.i = load ptr, ptr %i.rk, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.rl = getelementptr i8, ptr %i.oi, i64 16
  %.val19.i.i = load i64, ptr %i.rl, align 8, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %.idx.i38.i.i = mul nuw nsw i64 %.val19.i.i, 72
  %i.rm = getelementptr inbounds nuw i8, ptr %.val18.i.i, i64 %.idx.i38.i.i
  %i.rn = icmp eq i64 %.val19.i.i, 0
  br i1 %i.rn, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2m_.exit49.i.i, label %.lr.ph.i39.i.i

.lr.ph.i39.i.i:                                   ; preds = %bb.bw, %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i45.i.i
  %.sroa.0.01.i40.i.i = phi ptr [ %i.ro, %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i45.i.i ], [ %.val18.i.i, %bb.bw ] ; 4 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i40.i.i, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.rp = load i64, ptr %.sroa.0.01.i40.i.i, align 8, !range !76, !noalias !174, !noundef !4
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i40.i.i, i64 16
  %i.rr = load ptr, ptr %i.rq, align 8, !noalias !174, !align !7, !noundef !4 ; 4 uses
  %.not2.i.i41.i.i = icmp eq ptr %i.rr, null      ; 3 uses
  switch i64 %i.rp, label %default.unreachable [
    i64 0, label %bb.bx
    i64 1, label %bb.by
    i64 2, label %bb.bz
  ]

bb.bx:                                            ; preds = %.lr.ph.i39.i.i
  br i1 %.not2.i.i41.i.i, label %bb.cb, label %bb.ca

bb.by:                                            ; preds = %.lr.ph.i39.i.i
  br i1 %.not2.i.i41.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i45.i.i, label %.sink.split.i.i42.i.i

bb.bz:                                            ; preds = %.lr.ph.i39.i.i
  br i1 %.not2.i.i41.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i45.i.i, label %.sink.split.i.i42.i.i

bb.ca:                                            ; preds = %bb.bx
  store i8 0, ptr %i.oe, align 8, !alias.scope !174
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1v_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 %i.rr)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bx
  %i.rs = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i40.i.i, i64 24
  %i.rt = load ptr, ptr %i.rs, align 8, !noalias !174, !align !7, !noundef !4 ; 2 uses
  %.not3.i.i47.i.i = icmp eq ptr %i.rt, null
  br i1 %.not3.i.i47.i.i, label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i45.i.i, label %.sink.split.i.i42.i.i

.sink.split.i.i42.i.i:                            ; preds = %bb.cb, %bb.bz, %bb.by
  %.sink8.i.i43.i.i = phi i8 [ 2, %bb.by ], [ 3, %bb.bz ], [ 1, %bb.cb ]
  %.sink.i.i44.i.i = phi ptr [ %i.rr, %bb.by ], [ %i.rr, %bb.bz ], [ %i.rt, %bb.cb ]
  store i8 %.sink8.i.i43.i.i, ptr %i.oe, align 8, !alias.scope !174
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1v_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 %.sink.i.i44.i.i)
  br label %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i45.i.i

_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i45.i.i: ; preds = %.sink.split.i.i42.i.i, %bb.cb, %bb.bz, %bb.by
  %i.ru = icmp eq ptr %i.ro, %i.rm
  br i1 %i.ru, label %_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2m_.exit49.i.i, label %.lr.ph.i39.i.i

_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor16walk_type_paramsINtNtCsb6FLkjZuKG_18ruff_python_parser15semantic_errors24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEEB2m_.exit49.i.i: ; preds = %_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor16visit_type_paramB1v_.exit.i45.i.i, %bb.bw, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1D_.exit

bb.cc:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %2, ptr %i.ah, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i8 4, ptr %i.rv, align 8
  %i.rw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8, !nonnull !4, !noundef !4
  call fastcc void @_RNvXsc_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsINtB5_24InvalidExpressionVisitorNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderENtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_exprB1v_(ptr noalias noundef align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 %i.rx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %_RINvMs_NtCsb6FLkjZuKG_18ruff_python_parser15semantic_errorsNtB5_21SemanticSyntaxChecker10check_stmtNtNtCs2O29vuvTAEJ_14ty_python_core7builder20SemanticIndexBuilderEB1D_.exit
end_hunk_0
