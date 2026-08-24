Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_ast-79536ef50c0fac99.ruff_python_ast.f1da3f06107471d8-cgu.0?download=true
inline.NumInlined: 7999
inline.NumDeleted: 3540
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_RINvNtNtCskLngH8kgpZI_15ruff_python_ast7visitor12source_order22walk_pattern_argumentsNtNvNtB6_9find_node13covering_node7VisitorEB6_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMsb_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB8_5nodes16PatternArguments18visit_source_orderNtNvNtB8_9find_node13covering_node7VisitorEB8_.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !4406, !nonnull !3, !noundef !3
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.q ; 2 uses
  store i64 75, ptr %i.v, align 8, !noalias !4406
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %1, ptr %i.w, align 8, !noalias !4406
  %i.x = add i64 %i.q, 1
  store i64 %i.x, ptr %i.p, align 8, !alias.scope !4406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.y, align 8, !noalias !4407, !nonnull !3, !noundef !3 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aa = load i64, ptr %.val.i, align 8, !noalias !4407, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !4407, !nonnull !3, !noundef !3 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !4407, !noundef !3 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4.outer

_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4.outer: ; preds = %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4.outer.backedge, %bb.e
  %.sroa.15.0.ph = phi i64 [ 0, %bb.e ], [ %i.au, %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4.outer.backedge ] ; 6 uses
  %.sroa.12.0.ph = phi i64 [ 0, %bb.e ], [ %.sroa.12.0, %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4.outer.backedge ]
  %.not.i2 = icmp ult i64 %.sroa.15.0.ph, %i.ae
  %i.ag = getelementptr inbounds nuw [120 x i8], ptr %i.ac, i64 %.sroa.15.0.ph ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 104
  br label %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4

_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4: ; preds = %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4.outer, %bb.q
  %.sroa.12.0 = phi i64 [ %i.bw, %bb.q ], [ %.sroa.12.0.ph, %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4.outer ] ; 4 uses
  %i.ai = icmp ult i64 %.sroa.12.0, %i.aa
  br i1 %i.ai, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4
  %i.aj = icmp ult i64 %.sroa.15.0.ph, %i.ae
  %i.ak = getelementptr inbounds nuw [120 x i8], ptr %i.ac, i64 %.sroa.15.0.ph
  %.pre36 = load i8, ptr %i.d, align 8, !range !80 ; 2 uses
  br i1 %i.aj, label %bb.h, label %_RINvMsb_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB8_5nodes16PatternArguments18visit_source_orderNtNvNtB8_9find_node13covering_node7VisitorEB8_.exit

bb.g:                                             ; preds = %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4
  %i.al = getelementptr inbounds nuw [72 x i8], ptr %i.z, i64 %.sroa.12.0 ; 3 uses
  br i1 %.not.i2, label %switch.lookup, label %bb.q

switch.lookup:                                    ; preds = %bb.g
  %i.am = load i64, ptr %i.al, align 8, !range !863, !noalias !4412, !noundef !3 ; 3 uses
  %i.an = icmp ne i64 %i.am, -9223372036854775804
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = xor i64 %i.am, -9223372036854775808
  %i.ap = icmp slt i64 %i.am, 0
  %i.aq = select i1 %i.ap, i64 %i.ao, i64 4
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._RNvXsai_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_14AnyRootNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.1405, i64 %i.aq
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 %switch.ext
  %.sroa.024.0.i = load i32, ptr %i.ar, align 4, !noalias !4412, !noundef !3
  %i.as = load i32, ptr %i.ah, align 8, !noalias !4412, !noundef !3
  %.not27.i = icmp ugt i32 %.sroa.024.0.i, %i.as
  br i1 %.not27.i, label %._crit_edge, label %bb.q

._crit_edge:                                      ; preds = %switch.lookup
  %.pre35 = load i8, ptr %i.d, align 8, !range !80, !alias.scope !4415
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %i.at = phi i8 [ %.pre35, %._crit_edge ], [ %.pre36, %bb.f ] ; 2 uses
  %.sroa.02.1.ph.i = phi ptr [ %i.ag, %._crit_edge ], [ %i.ak, %bb.f ] ; 5 uses
  %i.au = add nuw i64 %.sroa.15.0.ph, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.1.ph.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4415)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 76, ptr %i.a, align 8, !noalias !4415
  store ptr %.sroa.02.1.ph.i, ptr %i.af, align 8, !noalias !4415
  %i.av = trunc nuw i8 %i.at to i1
  br i1 %i.av, label %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10enter_node.exit8.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = call { i32, i32 } @_RNvXs82_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !4415 ; 2 uses
  %i.ax = extractvalue { i32, i32 } %i.aw, 0
  %i.ay = extractvalue { i32, i32 } %i.aw, 1
  %i.az = load i32, ptr %i.j, align 8, !alias.scope !4415, !noundef !3
  %i.ba = load i32, ptr %i.l, align 4, !alias.scope !4415, !noundef !3
  %i.bb = icmp ule i32 %i.ax, %i.az
  %i.bc = icmp ule i32 %i.ba, %i.ay
  %or.cond.i5 = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond.i5, label %bb.j, label %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10enter_node.exit8.thread

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4418)
  %i.bd = load i64, ptr %i.p, align 8, !alias.scope !4421, !noundef !3 ; 3 uses
  %i.be = load i64, ptr %0, align 8, !range !86, !alias.scope !4421, !noundef !3
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.l

_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10enter_node.exit8.thread: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvYNtNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node7VisitorNtNtNtB8_7visitor12source_order18SourceOrderVisitor21visit_pattern_keywordB8_.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bg = getelementptr inbounds nuw [120 x i8], ptr %i.ac, i64 %.sroa.15.0.ph
  %i.bh = load ptr, ptr %i.t, align 8, !alias.scope !4421, !nonnull !3, !noundef !3
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bd ; 2 uses
  store i64 76, ptr %i.bi, align 8, !noalias !4421
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %.sroa.02.1.ph.i, ptr %i.bj, align 8, !noalias !4421
  %i.bk = add i64 %i.bd, 1
  store i64 %i.bk, ptr %i.p, align 8, !alias.scope !4421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 72
  tail call fastcc void @_RNvYNtNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node7VisitorNtNtNtB8_7visitor12source_order18SourceOrderVisitor16visit_identifierB8_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 %i.bl), !inline_history !4422
  tail call fastcc void @_RNvYNtNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node7VisitorNtNtNtB8_7visitor12source_order18SourceOrderVisitor13visit_patternB8_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 %.sroa.02.1.ph.i), !inline_history !4422
  %.pre = load i8, ptr %i.d, align 8, !range !80, !alias.scope !4423
  br label %_RNvYNtNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node7VisitorNtNtNtB8_7visitor12source_order18SourceOrderVisitor21visit_pattern_keywordB8_.exit

_RNvYNtNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node7VisitorNtNtNtB8_7visitor12source_order18SourceOrderVisitor21visit_pattern_keywordB8_.exit: ; preds = %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10enter_node.exit8.thread, %bb.l
  %i.bm = phi i8 [ %i.at, %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10enter_node.exit8.thread ], [ %.pre, %bb.l ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4423)
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4.outer.backedge, label %bb.m

_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4.outer.backedge: ; preds = %_RNvYNtNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node7VisitorNtNtNtB8_7visitor12source_order18SourceOrderVisitor21visit_pattern_keywordB8_.exit, %bb.m, %bb.n, %bb.o, %bb.p
  br label %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4.outer

bb.m:                                             ; preds = %_RNvYNtNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node7VisitorNtNtNtB8_7visitor12source_order18SourceOrderVisitor21visit_pattern_keywordB8_.exit
  %i.bo = load i64, ptr %i.p, align 8, !alias.scope !4423, !noundef !3 ; 2 uses
  %.not.i3 = icmp eq i64 %i.bo, 0
  br i1 %.not.i3, label %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4.outer.backedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %i.t, align 8, !alias.scope !4423, !nonnull !3, !noundef !3
  %i.bq = getelementptr [16 x i8], ptr %i.bp, i64 %i.bo ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4426)
  %i.bs = load i64, ptr %i.br, align 8, !range !226, !alias.scope !4426, !noalias !4429, !noundef !3
  %i.bt = icmp eq i64 %i.bs, 76
  br i1 %i.bt, label %bb.o, label %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4.outer.backedge

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr i8, ptr %i.bq, i64 -8
  %.val69.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !4426, !noalias !4429, !nonnull !3, !align !95, !noundef !3
  %i.bv = tail call fastcc noundef zeroext i1 @_RNvXs7_NtNtCs4NRVxsYgnAr_4core3cmp5implsRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes14PatternKeywordNtB7_9PartialEq2eqBH_(ptr nonnull %.val69.i.i, ptr nonnull align 8 %.sroa.02.1.ph.i), !noalias !4431
  br i1 %i.bv, label %bb.p, label %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4.outer.backedge

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.d, align 8, !alias.scope !4423
  br label %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4.outer.backedge

bb.q:                                             ; preds = %switch.lookup, %bb.g
  %i.bw = add nuw i64 %.sroa.12.0, 1
  tail call fastcc void @_RNvYNtNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node7VisitorNtNtNtB8_7visitor12source_order18SourceOrderVisitor13visit_patternB8_(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 %i.al), !inline_history !4432
  br label %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit4

_RINvMsb_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB8_5nodes16PatternArguments18visit_source_orderNtNvNtB8_9find_node13covering_node7VisitorEB8_.exit: ; preds = %bb.f, %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10enter_node.exit.thread
  %i.bx = phi i8 [ %i.e, %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10enter_node.exit.thread ], [ %.pre36, %bb.f ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4433)
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit, label %bb.r

bb.r:                                             ; preds = %_RINvMsb_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB8_5nodes16PatternArguments18visit_source_orderNtNvNtB8_9find_node13covering_node7VisitorEB8_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !4433, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i, label %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !4433, !nonnull !3, !noundef !3
  %i.cd = getelementptr [16 x i8], ptr %i.cc, i64 %i.ca ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 -16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4436)
  %i.cf = load i64, ptr %i.ce, align 8, !range !226, !alias.scope !4436, !noalias !4439, !noundef !3
  %i.cg = icmp eq i64 %i.cf, 75
  br i1 %i.cg, label %bb.t, label %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr i8, ptr %i.cd, i64 -8
  %.val67.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !4436, !noalias !4439, !nonnull !3, !align !95, !noundef !3
  %i.ci = tail call fastcc noundef zeroext i1 @_RNvXs73_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_16PatternArgumentsNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %.val67.i.i, ptr noundef nonnull align 8 %1), !noalias !4441
  br i1 %i.ci, label %bb.u, label %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.d, align 8, !alias.scope !4433
  br label %_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit

_RNvXNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_nodeNtB2_7VisitorNtNtNtB6_7visitor12source_order18SourceOrderVisitor10leave_node.exit: ; preds = %_RINvMsb_NtCskLngH8kgpZI_15ruff_python_ast4nodeNtNtB8_5nodes16PatternArguments18visit_source_orderNtNvNtB8_9find_node13covering_node7VisitorEB8_.exit, %bb.r, %bb.s, %bb.t, %bb.u
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1o_NtB1o_10Parameters17iter_source_order0E0INtNtB2k_3vec3VecBZ_EEB1q_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 8              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 1000000)
  %.sroa.0.0.i11 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c) ; 2 uses
  %.sroa.0.0.i12 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i11, i64 48) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp samesign ugt i64 %.sroa.0.0.i11, 512 ; 3 uses
  br i1 %i.d, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i, label %bb.c

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  %3 = shl nuw nsw i64 %.sroa.0.0.i12, 3          ; 2 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !4442
  %i.e = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, 17) 8) #62, !noalias !4442 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %3) #61
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEEB1y_.exit13, label %bb.f

bb.c:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.a
  %.sroa.6.1 = phi ptr [ undef, %bb.a ], [ %i.e, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 4 uses
  %.sroa.4.0 = phi i64 [ 512, %bb.a ], [ %.sroa.0.0.i12, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ]
  %.pn22 = phi ptr [ %i.a, %bb.a ], [ %i.e, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i.i ]
  %i.h = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1l_NtB1l_10Parameters17iter_source_order0E0EB1n_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.pn22, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.h, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEEB1y_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEEB1y_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEEB1y_.exit: ; preds = %bb.d
  %i.i = shl nuw nsw i64 %.sroa.0.0.i12, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %bb.e

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEEB1y_.exit13, %bb.b
  resume { ptr, i32 } %i.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEEB1y_.exit13: ; preds = %bb.b
  %i.j = shl nuw nsw i64 %.sroa.0.0.i12, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %bb.f
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1t_NtB1t_10Parameters17iter_source_order0E0EB1v_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 144115188075855872) %3) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1t_NtB1t_10Parameters17iter_source_order0E0EB1v_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1t_NtB1t_10Parameters17iter_source_order0E0EB1v_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1t_NtB1t_10Parameters17iter_source_order0E0EB1v_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load ptr, ptr %.sroa.0.0, align 8, !align !95, !noundef !3 ; 3 uses
  %.sroa.04.0.val14 = load ptr, ptr %.sroa.04.0, align 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.val13, null ; 2 uses
  br i1 %.not.i.i.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i = load i32, ptr %.sroa.0.0.val13, align 8, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.02.0.i.i.i = phi i32 [ %.val.i.i.i, %bb.d ], [ -1, %bb.c ]
  %.not.i.i5.i = icmp eq ptr %.sroa.04.0.val14, null ; 2 uses
  br i1 %.not.i.i5.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit, label %bb.e

bb.e:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i
  %.val.i.i6.i = load i32, ptr %.sroa.04.0.val14, align 8, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit: ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i, %bb.e
  %.sroa.02.0.i.i7.i = phi i32 [ %.val.i.i6.i, %bb.e ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i ]
  %i.n = icmp ult i32 %.sroa.02.0.i.i.i, %.sroa.02.0.i.i7.i ; 2 uses
  %.sroa.08.0.val12 = load ptr, ptr %.sroa.08.0, align 8 ; 3 uses
  br i1 %.not.i.i.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i17, label %bb.f

bb.f:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit
  %.val.i.i.i16 = load i32, ptr %.sroa.0.0.val13, align 8, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i17

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i17: ; preds = %bb.f, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit
  %.sroa.02.0.i.i.i18 = phi i32 [ %.val.i.i.i16, %bb.f ], [ -1, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit ]
  %.not.i.i5.i19 = icmp eq ptr %.sroa.08.0.val12, null ; 2 uses
  br i1 %.not.i.i5.i19, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit22, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i17
  %.val.i.i6.i20 = load i32, ptr %.sroa.08.0.val12, align 8, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit22

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit22: ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i17, %bb.g
  %.sroa.02.0.i.i7.i21 = phi i32 [ %.val.i.i6.i20, %bb.g ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i17 ]
  %i.o = icmp ult i32 %.sroa.02.0.i.i.i18, %.sroa.02.0.i.i7.i21
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3INtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1o_NtB1o_10Parameters17iter_source_order0E0EB1q_.exit, label %bb.h

bb.h:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit22
  br i1 %.not.i.i5.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i25, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val.i.i.i24 = load i32, ptr %.sroa.04.0.val14, align 8, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i25

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i25: ; preds = %bb.i, %bb.h
  %.sroa.02.0.i.i.i26 = phi i32 [ %.val.i.i.i24, %bb.i ], [ -1, %bb.h ]
  br i1 %.not.i.i5.i19, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit30, label %bb.j

bb.j:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i25
  %.val.i.i6.i28 = load i32, ptr %.sroa.08.0.val12, align 8, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit30

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit30: ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i25, %bb.j
  %.sroa.02.0.i.i7.i29 = phi i32 [ %.val.i.i6.i28, %bb.j ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i25 ]
  %i.q = icmp ult i32 %.sroa.02.0.i.i.i26, %.sroa.02.0.i.i7.i29
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3INtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1o_NtB1o_10Parameters17iter_source_order0E0EB1q_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3INtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1o_NtB1o_10Parameters17iter_source_order0E0EB1q_.exit: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit22, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit30
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit22 ], [ %..i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit30 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB19_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1y_NtB1y_10Parameters17iter_source_order0E0EB1A_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !align !95, !noundef !3 ; 2 uses
  %.val9 = load ptr, ptr %0, align 8              ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val8, null
  br i1 %.not.i.i.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i.i = load i32, ptr %.val8, align 8, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.02.0.i.i.i = phi i32 [ %.val.i.i.i, %bb.b ], [ -1, %bb.a ]
  %.not.i.i5.i = icmp eq ptr %.val9, null
  br i1 %.not.i.i5.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit, label %bb.c

bb.c:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i
  %.val.i.i6.i = load i32, ptr %.val9, align 8, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit: ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i, %bb.c
  %.sroa.02.0.i.i7.i = phi i32 [ %.val.i.i6.i, %bb.c ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i ]
  %i.b = icmp ult i32 %.sroa.02.0.i.i.i, %.sroa.02.0.i.i7.i ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.c, align 8, !align !95, !noundef !3 ; 2 uses
  %.val7 = load ptr, ptr %i.d, align 8            ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %.val6, null
  br i1 %.not.i.i.i10, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i12, label %bb.d

bb.d:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit
  %.val.i.i.i11 = load i32, ptr %.val6, align 8, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i12

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i12: ; preds = %bb.d, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit
  %.sroa.02.0.i.i.i13 = phi i32 [ %.val.i.i.i11, %bb.d ], [ -1, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit ]
  %.not.i.i5.i14 = icmp eq ptr %.val7, null
  br i1 %.not.i.i5.i14, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit17, label %bb.e

bb.e:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i12
  %.val.i.i6.i15 = load i32, ptr %.val7, align 8, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit17

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit17: ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i12, %bb.e
  %.sroa.02.0.i.i7.i16 = phi i32 [ %.val.i.i6.i15, %bb.e ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i12 ]
  %i.e = icmp ult i32 %.sroa.02.0.i.i.i13, %.sroa.02.0.i.i7.i16 ; 2 uses
  %i.f = zext i1 %i.b to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f ; 3 uses
  %i.h = xor i1 %i.b, true
  %i.i = zext i1 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i ; 4 uses
  %i.k = select i1 %i.e, i64 3, i64 2
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 4 uses
  %i.m = select i1 %i.e, i64 2, i64 3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 3 uses
  %.val4 = load ptr, ptr %i.l, align 8, !align !95, !noundef !3 ; 2 uses
  %.val5 = load ptr, ptr %i.g, align 8            ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %.val4, null
  br i1 %.not.i.i.i18, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i20, label %bb.f

bb.f:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit17
  %.val.i.i.i19 = load i32, ptr %.val4, align 8, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i20

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i20: ; preds = %bb.f, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit17
  %.sroa.02.0.i.i.i21 = phi i32 [ %.val.i.i.i19, %bb.f ], [ -1, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit17 ]
  %.not.i.i5.i22 = icmp eq ptr %.val5, null
  br i1 %.not.i.i5.i22, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit25, label %bb.g

bb.g:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i20
  %.val.i.i6.i23 = load i32, ptr %.val5, align 8, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit25

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit25: ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i20, %bb.g
  %.sroa.02.0.i.i7.i24 = phi i32 [ %.val.i.i6.i23, %bb.g ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i20 ]
  %i.o = icmp ult i32 %.sroa.02.0.i.i.i21, %.sroa.02.0.i.i7.i24 ; 3 uses
  %.val2 = load ptr, ptr %i.n, align 8, !align !95, !noundef !3 ; 2 uses
  %.val3 = load ptr, ptr %i.j, align 8            ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %.val2, null
  br i1 %.not.i.i.i26, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i28, label %bb.h

bb.h:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit25
  %.val.i.i.i27 = load i32, ptr %.val2, align 8, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i28

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i28: ; preds = %bb.h, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit25
  %.sroa.02.0.i.i.i29 = phi i32 [ %.val.i.i.i27, %bb.h ], [ -1, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit25 ]
  %.not.i.i5.i30 = icmp eq ptr %.val3, null
  br i1 %.not.i.i5.i30, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit33, label %bb.i

bb.i:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i28
  %.val.i.i6.i31 = load i32, ptr %.val3, align 8, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit33

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit33: ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i28, %bb.i
  %.sroa.02.0.i.i7.i32 = phi i32 [ %.val.i.i6.i31, %bb.i ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i28 ]
  %i.p = icmp ult i32 %.sroa.02.0.i.i.i29, %.sroa.02.0.i.i7.i32 ; 3 uses
  %i.q = select i1 %i.p, ptr %i.l, ptr %i.j, !unpredictable !3
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB19_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1y_NtB1y_10Parameters17iter_source_order0E0EB1A_:.lr.ph.i
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.1

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.1: ; preds = %bb.f, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.1
  %.sroa.02.0.i.i7.i.i.1 = phi i32 [ %.val.i.i6.i.i.1, %bb.f ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.1 ]
  %i.t = icmp ult i32 %.sroa.02.0.i.i.i.i.1, %.sroa.02.0.i.i7.i.i.1 ; 3 uses
  %..i23.i.1 = select i1 %i.t, ptr %i.j, ptr %i.l
  %i.u = xor i1 %i.t, true
  %i.v = load i64, ptr %..i23.i.1, align 8, !alias.scope !4447, !noalias !4450
  store i64 %i.v, ptr %i.m, align 8, !noalias !4454
  %i.w = zext i1 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.w ; 3 uses
  %i.y = zext i1 %i.u to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.y ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.017.0.val.i.1 = load ptr, ptr %i.q, align 8, !alias.scope !4447, !align !95, !noundef !3 ; 2 uses
  %.sroa.015.0.val.i.1 = load ptr, ptr %i.r, align 8, !alias.scope !4447 ; 2 uses
  %.not.i.i.i24.i.1 = icmp eq ptr %.sroa.017.0.val.i.1, null
  br i1 %.not.i.i.i24.i.1, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.1, label %bb.g

bb.g:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.1
  %.val.i.i.i25.i.1 = load i32, ptr %.sroa.017.0.val.i.1, align 8, !noalias !4447, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.1

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.1: ; preds = %bb.g, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.1
  %.sroa.02.0.i.i.i27.i.1 = phi i32 [ %.val.i.i.i25.i.1, %bb.g ], [ -1, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.1 ]
  %.not.i.i5.i28.i.1 = icmp eq ptr %.sroa.015.0.val.i.1, null
  br i1 %.not.i.i5.i28.i.1, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.1, label %bb.h

bb.h:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.1
  %.val.i.i6.i29.i.1 = load i32, ptr %.sroa.015.0.val.i.1, align 8, !noalias !4447, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.1

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.1: ; preds = %bb.h, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.1
  %.sroa.02.0.i.i7.i30.i.1 = phi i32 [ %.val.i.i6.i29.i.1, %bb.h ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.1 ]
  %i.ab = icmp ult i32 %.sroa.02.0.i.i.i27.i.1, %.sroa.02.0.i.i7.i30.i.1 ; 3 uses
  %..i.i.1 = select i1 %i.ab, ptr %i.r, ptr %i.q
  %i.ac = xor i1 %i.ab, true
  %i.ad = load i64, ptr %..i.i.1, align 8, !alias.scope !4447, !noalias !4455
  store i64 %i.ad, ptr %i.s, align 8, !noalias !4459
  %.neg.i.i.1 = sext i1 %i.ac to i64
  %i.ae = getelementptr [8 x i8], ptr %i.q, i64 %.neg.i.i.1 ; 3 uses
  %.neg15.i.i.1 = sext i1 %i.ab to i64
  %i.af = getelementptr [8 x i8], ptr %i.r, i64 %.neg15.i.i.1 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.011.0.val.i.2 = load ptr, ptr %i.x, align 8, !alias.scope !4447, !align !95, !noundef !3 ; 2 uses
  %.sroa.06.0.val.i.2 = load ptr, ptr %i.z, align 8, !alias.scope !4447 ; 2 uses
  %.not.i.i.i.i.2 = icmp eq ptr %.sroa.011.0.val.i.2, null
  br i1 %.not.i.i.i.i.2, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.2, label %bb.i

bb.i:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.1
  %.val.i.i.i.i.2 = load i32, ptr %.sroa.011.0.val.i.2, align 8, !noalias !4447, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.2

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.2: ; preds = %bb.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.1
  %.sroa.02.0.i.i.i.i.2 = phi i32 [ %.val.i.i.i.i.2, %bb.i ], [ -1, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.1 ]
  %.not.i.i5.i.i.2 = icmp eq ptr %.sroa.06.0.val.i.2, null
  br i1 %.not.i.i5.i.i.2, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.2, label %bb.j

bb.j:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.2
  %.val.i.i6.i.i.2 = load i32, ptr %.sroa.06.0.val.i.2, align 8, !noalias !4447, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.2

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.2: ; preds = %bb.j, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.2
  %.sroa.02.0.i.i7.i.i.2 = phi i32 [ %.val.i.i6.i.i.2, %bb.j ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.2 ]
  %i.ah = icmp ult i32 %.sroa.02.0.i.i.i.i.2, %.sroa.02.0.i.i7.i.i.2 ; 3 uses
  %..i23.i.2 = select i1 %i.ah, ptr %i.x, ptr %i.z
  %i.ai = xor i1 %i.ah, true
  %i.aj = load i64, ptr %..i23.i.2, align 8, !alias.scope !4447, !noalias !4450
  store i64 %i.aj, ptr %i.aa, align 8, !noalias !4454
  %i.ak = zext i1 %i.ah to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ak ; 3 uses
  %i.am = zext i1 %i.ai to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.am ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.017.0.val.i.2 = load ptr, ptr %i.ae, align 8, !alias.scope !4447, !align !95, !noundef !3 ; 2 uses
  %.sroa.015.0.val.i.2 = load ptr, ptr %i.af, align 8, !alias.scope !4447 ; 2 uses
  %.not.i.i.i24.i.2 = icmp eq ptr %.sroa.017.0.val.i.2, null
  br i1 %.not.i.i.i24.i.2, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.2, label %bb.k

bb.k:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.2
  %.val.i.i.i25.i.2 = load i32, ptr %.sroa.017.0.val.i.2, align 8, !noalias !4447, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.2

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.2: ; preds = %bb.k, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.2
  %.sroa.02.0.i.i.i27.i.2 = phi i32 [ %.val.i.i.i25.i.2, %bb.k ], [ -1, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.2 ]
  %.not.i.i5.i28.i.2 = icmp eq ptr %.sroa.015.0.val.i.2, null
  br i1 %.not.i.i5.i28.i.2, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.2, label %bb.l

bb.l:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.2
  %.val.i.i6.i29.i.2 = load i32, ptr %.sroa.015.0.val.i.2, align 8, !noalias !4447, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.2

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.2: ; preds = %bb.l, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.2
  %.sroa.02.0.i.i7.i30.i.2 = phi i32 [ %.val.i.i6.i29.i.2, %bb.l ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.2 ]
  %i.ap = icmp ult i32 %.sroa.02.0.i.i.i27.i.2, %.sroa.02.0.i.i7.i30.i.2 ; 3 uses
  %..i.i.2 = select i1 %i.ap, ptr %i.af, ptr %i.ae
  %i.aq = xor i1 %i.ap, true
  %i.ar = load i64, ptr %..i.i.2, align 8, !alias.scope !4447, !noalias !4455
  store i64 %i.ar, ptr %i.ag, align 8, !noalias !4459
  %.neg.i.i.2 = sext i1 %i.aq to i64
  %i.as = getelementptr [8 x i8], ptr %i.ae, i64 %.neg.i.i.2 ; 3 uses
  %.neg15.i.i.2 = sext i1 %i.ap to i64
  %i.at = getelementptr [8 x i8], ptr %i.af, i64 %.neg15.i.i.2 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.011.0.val.i.3 = load ptr, ptr %i.al, align 8, !alias.scope !4447, !align !95, !noundef !3 ; 2 uses
  %.sroa.06.0.val.i.3 = load ptr, ptr %i.an, align 8, !alias.scope !4447 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq ptr %.sroa.011.0.val.i.3, null
  br i1 %.not.i.i.i.i.3, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.3, label %bb.m

bb.m:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.2
  %.val.i.i.i.i.3 = load i32, ptr %.sroa.011.0.val.i.3, align 8, !noalias !4447, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.3

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.3: ; preds = %bb.m, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.2
  %.sroa.02.0.i.i.i.i.3 = phi i32 [ %.val.i.i.i.i.3, %bb.m ], [ -1, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.2 ]
  %.not.i.i5.i.i.3 = icmp eq ptr %.sroa.06.0.val.i.3, null
  br i1 %.not.i.i5.i.i.3, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.3, label %bb.n

bb.n:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.3
  %.val.i.i6.i.i.3 = load i32, ptr %.sroa.06.0.val.i.3, align 8, !noalias !4447, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.3

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.3: ; preds = %bb.n, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.3
  %.sroa.02.0.i.i7.i.i.3 = phi i32 [ %.val.i.i6.i.i.3, %bb.n ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.3 ]
  %i.av = icmp ult i32 %.sroa.02.0.i.i.i.i.3, %.sroa.02.0.i.i7.i.i.3 ; 3 uses
  %..i23.i.3 = select i1 %i.av, ptr %i.al, ptr %i.an
  %i.aw = xor i1 %i.av, true
  %i.ax = load i64, ptr %..i23.i.3, align 8, !alias.scope !4447, !noalias !4450
  store i64 %i.ax, ptr %i.ao, align 8, !noalias !4454
  %i.ay = zext i1 %i.av to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ay
  %i.ba = zext i1 %i.aw to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ba
  %.sroa.017.0.val.i.3 = load ptr, ptr %i.as, align 8, !alias.scope !4447, !align !95, !noundef !3 ; 2 uses
  %.sroa.015.0.val.i.3 = load ptr, ptr %i.at, align 8, !alias.scope !4447 ; 2 uses
  %.not.i.i.i24.i.3 = icmp eq ptr %.sroa.017.0.val.i.3, null
  br i1 %.not.i.i.i24.i.3, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.3, label %bb.o

bb.o:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.3
  %.val.i.i.i25.i.3 = load i32, ptr %.sroa.017.0.val.i.3, align 8, !noalias !4447, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.3

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.3: ; preds = %bb.o, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.3
  %.sroa.02.0.i.i.i27.i.3 = phi i32 [ %.val.i.i.i25.i.3, %bb.o ], [ -1, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.3 ]
  %.not.i.i5.i28.i.3 = icmp eq ptr %.sroa.015.0.val.i.3, null
  br i1 %.not.i.i5.i28.i.3, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.3, label %bb.p

bb.p:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.3
  %.val.i.i6.i29.i.3 = load i32, ptr %.sroa.015.0.val.i.3, align 8, !noalias !4447, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.3

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.3: ; preds = %bb.p, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.3
  %.sroa.02.0.i.i7.i30.i.3 = phi i32 [ %.val.i.i6.i29.i.3, %bb.p ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.3 ]
  %i.bc = icmp ult i32 %.sroa.02.0.i.i.i27.i.3, %.sroa.02.0.i.i7.i30.i.3 ; 3 uses
  %..i.i.3 = select i1 %i.bc, ptr %i.at, ptr %i.as
  %i.bd = xor i1 %i.bc, true
  %i.be = load i64, ptr %..i.i.3, align 8, !alias.scope !4447, !noalias !4455
  store i64 %i.be, ptr %i.au, align 8, !noalias !4459
  %.neg.i.i.3 = sext i1 %i.bd to i64
  %i.bf = getelementptr [8 x i8], ptr %i.as, i64 %.neg.i.i.3
  %.neg15.i.i.3 = sext i1 %i.bc to i64
  %i.bg = getelementptr [8 x i8], ptr %i.at, i64 %.neg15.i.i.3
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %i.bi = getelementptr i8, ptr %i.bf, i64 8
  %i.bj = icmp ne ptr %i.bb, %i.bh
  %i.bk = icmp ne ptr %i.az, %i.bi
  %or.cond.i = select i1 %i.bj, i1 true, i1 %i.bk, !prof !4460
  br i1 %or.cond.i, label %bb.q, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB1g_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1F_NtB1F_10Parameters17iter_source_order0E0EB1H_.exit, !prof !4460

bb.q:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.3
  tail call void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #61, !noalias !4447
  unreachable

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB1g_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1F_NtB1F_10Parameters17iter_source_order0E0EB1H_.exit: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.3
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1l_NtB1l_10Parameters17iter_source_order0E0EB1n_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %.sroa.0.0.i32, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i110 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i115 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.ak, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.ak ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.eb, %bb.ak ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.dz, %bb.ak ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1s_NtB1s_10Parameters17iter_source_order0E0EB1u_.exit
  %.sroa.021.0 = phi i8 [ %i.bj, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1s_NtB1s_10Parameters17iter_source_order0E0EB1u_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i34, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1s_NtB1s_10Parameters17iter_source_order0E0EB1u_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph77, label %._crit_edge

.lr.ph77:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.x

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 13 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4461)
  %.not.i33 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i33, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread113, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i, %bb.h
  br i1 %4, label %bb.v, label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reverseBV_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val10.i = load ptr, ptr %i.q, align 8, !alias.scope !4461, !noalias !4464, !align !95, !noundef !3 ; 4 uses
  %.val11.i = load ptr, ptr %i.o, align 8, !alias.scope !4461, !noalias !4464 ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %.val10.i, null
  br i1 %.not.i.i.i47, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i49, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val.i.i.i48 = load i32, ptr %.val10.i, align 8, !noalias !4467, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i49

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i49: ; preds = %bb.l, %bb.k
  %.sroa.02.0.i.i.i50 = phi i32 [ %.val.i.i.i48, %bb.l ], [ -1, %bb.k ]
  %.not.i.i5.i51 = icmp eq ptr %.val11.i, null
  br i1 %.not.i.i5.i51, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit54, label %bb.m

bb.m:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i49
  %.val.i.i6.i52 = load i32, ptr %.val11.i, align 8, !noalias !4467, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit54

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit54: ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i49, %bb.m
  %.sroa.02.0.i.i7.i53 = phi i32 [ %.val.i.i6.i52, %bb.m ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i49 ]
  %i.r = icmp ult i32 %.sroa.02.0.i.i.i50, %.sroa.02.0.i.i7.i53 ; 2 uses
  %.not84 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.r, label %.preheader, label %.preheader64

.preheader64:                                     ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit54
  br i1 %.not84, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit54
  br i1 %.not84, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread113, label %.lr.ph72

.lr.ph:                                           ; preds = %.preheader64, %bb.p
  %.val9.i = phi ptr [ %.val8.i, %bb.p ], [ %.val10.i, %.preheader64 ] ; 2 uses
  %.sroa.01.0.i.i69 = phi i64 [ %i.w, %bb.p ], [ 2, %.preheader64 ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.0.i.i69
  %i.t = add nsw i64 %.sroa.01.0.i.i69, -1
  %i.u = icmp ult i64 %i.t, %i.n
  tail call void @llvm.assume(i1 %i.u)
  %.val8.i = load ptr, ptr %i.s, align 8, !alias.scope !4461, !noalias !4464, !align !95, !noundef !3 ; 3 uses
  %.not.i.i.i39 = icmp eq ptr %.val8.i, null
  br i1 %.not.i.i.i39, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i41, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %.val.i.i.i40 = load i32, ptr %.val8.i, align 8, !noalias !4467, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i41

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i41: ; preds = %bb.n, %.lr.ph
  %.sroa.02.0.i.i.i42 = phi i32 [ %.val.i.i.i40, %bb.n ], [ -1, %.lr.ph ]
  %.not.i.i5.i43 = icmp eq ptr %.val9.i, null
  br i1 %.not.i.i5.i43, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit46, label %bb.o

bb.o:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i41
  %.val.i.i6.i44 = load i32, ptr %.val9.i, align 8, !noalias !4467, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit46

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit46: ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i41, %bb.o
  %.sroa.02.0.i.i7.i45 = phi i32 [ %.val.i.i6.i44, %bb.o ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i41 ]
  %i.v = icmp ult i32 %.sroa.02.0.i.i.i42, %.sroa.02.0.i.i7.i45
  br i1 %i.v, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i, label %bb.p

bb.p:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit46
  %i.w = add nuw i64 %.sroa.01.0.i.i69, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i, label %.lr.ph

.lr.ph72:                                         ; preds = %.preheader, %bb.s
  %.val7.i = phi ptr [ %.val.i, %bb.s ], [ %.val10.i, %.preheader ] ; 2 uses
  %.sroa.01.1.i.i71 = phi i64 [ %i.ab, %bb.s ], [ 2, %.preheader ] ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.01.1.i.i71
  %i.y = add nsw i64 %.sroa.01.1.i.i71, -1
  %i.z = icmp ult i64 %i.y, %i.n
  tail call void @llvm.assume(i1 %i.z)
  %.val.i = load ptr, ptr %i.x, align 8, !alias.scope !4461, !noalias !4464, !align !95, !noundef !3 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph72
  %.val.i.i.i = load i32, ptr %.val.i, align 8, !noalias !4467, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i: ; preds = %bb.q, %.lr.ph72
  %.sroa.02.0.i.i.i = phi i32 [ %.val.i.i.i, %bb.q ], [ -1, %.lr.ph72 ]
  %.not.i.i5.i = icmp eq ptr %.val7.i, null
  br i1 %.not.i.i5.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit, label %bb.r

bb.r:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i
  %.val.i.i6.i = load i32, ptr %.val7.i, align 8, !noalias !4467, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit: ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i, %bb.r
  %.sroa.02.0.i.i7.i = phi i32 [ %.val.i.i6.i, %bb.r ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i ]
  %i.aa = icmp ult i32 %.sroa.02.0.i.i.i, %.sroa.02.0.i.i7.i
  br i1 %i.aa, label %bb.s, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i

bb.s:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit
  %i.ab = add nuw i64 %.sroa.01.1.i.i71, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.ab, %i.n
  br i1 %exitcond92.not, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i, label %.lr.ph72

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i: ; preds = %bb.p, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit46, %bb.s, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i71, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit ], [ %i.n, %bb.s ], [ %.sroa.01.0.i.i69, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit46 ], [ %i.n, %bb.p ] ; 6 uses
  %i.ac = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ac)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.t

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread113: ; preds = %.preheader
  br i1 %.not5.i115, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.preheader.i.i

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread: ; preds = %.preheader64
  br i1 %.not5.i110, label %bb.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reverseBV_.exit

bb.t:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i
  br i1 %i.r, label %bb.w, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reverseBV_.exit

bb.u:                                             ; preds = %bb.i
  %.sroa.0.0.i38 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 %.sroa.01.0)
  %i.ad = shl nuw nsw i64 %.sroa.0.0.i38, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1s_NtB1s_10Parameters17iter_source_order0E0EB1u_.exit

bb.v:                                             ; preds = %bb.i
  %.sroa.0.0.i37 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1u_NtB1u_10Parameters17iter_source_order0E0EB1w_(ptr noalias noundef nonnull align 8 %i.o, i64 noundef %.sroa.0.0.i37, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !4468
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i37, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1s_NtB1s_10Parameters17iter_source_order0E0EB1u_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reverseBV_.exit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.i.i, %middle.block, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread, %bb.j, %bb.w, %bb.t
  %.sroa.0.0.i.i5962 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.t ], [ %.sroa.0.0.i.i, %bb.w ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread ], [ %.sroa.0.0.i.i111118122, %middle.block ], [ %.sroa.0.0.i.i111118122, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.i.i ]
  %i.ag = shl nuw nsw i64 %.sroa.0.0.i.i5962, 1
  %i.ah = or disjoint i64 %i.ag, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift10create_runINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB13_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1s_NtB1s_10Parameters17iter_source_order0E0EB1u_.exit

bb.w:                                             ; preds = %bb.t
  %i.ai = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4469), !noalias !4464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4472), !noalias !4464
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE7reverseBV_.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.preheader.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread113, %bb.w
  %i.aj = phi i64 [ %i.ai, %bb.w ], [ 1, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread113 ] ; 4 uses
  %.sroa.0.0.i.i111118122 = phi i64 [ %.sroa.0.0.i.i, %bb.w ], [ 2, %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runINtNtB8_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB12_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1r_NtB1r_10Parameters17iter_source_order0E0EB1t_.exit.i.thread113 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0.0.i.i111118122 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.aj, 4
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit11.preheader.i.i
  %n.vec = and i64 %i.aj, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = xor i64 %index, -1
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.ak, i64 %i.al ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1l_NtB1l_10Parameters17iter_source_order0E0EB1n_:bb.a
  %.val.i.i.i.i.i = load i32, ptr %.val.i.i, align 8, !noalias !4495, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i: ; preds = %bb.af, %.preheader.i
  %.sroa.02.0.i.i.i.i.i = phi i32 [ %.val.i.i.i.i.i, %bb.af ], [ -1, %.preheader.i ]
  %.not.i.i5.i.i.i = icmp eq ptr %.val10.i.i, null
  br i1 %.not.i.i5.i.i.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i
  %.val.i.i6.i.i.i = load i32, ptr %.val10.i.i, align 8, !noalias !4495, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.i: ; preds = %bb.ag, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i
  %.sroa.02.0.i.i7.i.i.i = phi i32 [ %.val.i.i6.i.i.i, %bb.ag ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i ]
  %i.cs = icmp ult i32 %.sroa.02.0.i.i.i.i.i, %.sroa.02.0.i.i7.i.i.i ; 3 uses
  %..i.i = select i1 %i.cs, ptr %i.cp, ptr %i.cq
  %i.ct = load i64, ptr %..i.i, align 8, !alias.scope !4490, !noalias !4496
  store i64 %i.ct, ptr %i.cr, align 8, !alias.scope !4485, !noalias !4494
  %i.cu = xor i1 %i.cs, true
  %i.cv = zext i1 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cv ; 3 uses
  %i.cx = zext i1 %i.cs to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cx ; 3 uses
  %i.cz = icmp eq ptr %i.cw, %i.bv
  %i.da = icmp eq ptr %i.cy, %2
  %or.cond.i.i = select i1 %i.cz, i1 true, i1 %i.da
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1z_NtB1z_10Parameters17iter_source_order0E0EB1B_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i26.i
  %i.db = phi ptr [ %i.dk, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i26.i ], [ %i.bv, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dj, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i26.i ], [ %i.ck, %.critedge.i ] ; 3 uses
  %i.dc = phi ptr [ %i.dh, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i26.i ], [ %2, %.critedge.i ] ; 3 uses
  %.sroa.0.0.val.i.i = load ptr, ptr %.sroa.0.02.i.i, align 8, !alias.scope !4485, !noalias !4497, !align !95, !noundef !3 ; 2 uses
  %.val.i19.i = load ptr, ptr %i.dc, align 8, !alias.scope !4488, !noalias !4500 ; 2 uses
  %.not.i.i.i.i20.i = icmp eq ptr %.sroa.0.0.val.i.i, null
  br i1 %.not.i.i.i.i20.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i22.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i
  %.val.i.i.i.i21.i = load i32, ptr %.sroa.0.0.val.i.i, align 8, !noalias !4501, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i22.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i22.i: ; preds = %bb.ah, %.lr.ph.i.i
  %.sroa.02.0.i.i.i.i23.i = phi i32 [ %.val.i.i.i.i21.i, %bb.ah ], [ -1, %.lr.ph.i.i ]
  %.not.i.i5.i.i24.i = icmp eq ptr %.val.i19.i, null
  br i1 %.not.i.i5.i.i24.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i26.i, label %bb.ai

bb.ai:                                            ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i22.i
  %.val.i.i6.i.i25.i = load i32, ptr %.val.i19.i, align 8, !noalias !4501, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i26.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i26.i: ; preds = %bb.ai, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i22.i
  %.sroa.02.0.i.i7.i.i27.i = phi i32 [ %.val.i.i6.i.i25.i, %bb.ai ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i22.i ]
  %i.dd = icmp ult i32 %.sroa.02.0.i.i.i.i23.i, %.sroa.02.0.i.i7.i.i27.i ; 3 uses
  %i.de = xor i1 %i.dd, true
  %spec.select.i.i = select i1 %i.dd, ptr %.sroa.0.02.i.i, ptr %i.dc
  %i.df = load i64, ptr %spec.select.i.i, align 8, !alias.scope !4490, !noalias !4502
  store i64 %i.df, ptr %i.db, align 8, !alias.scope !4485, !noalias !4497
  %i.dg = zext i1 %i.de to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dg ; 3 uses
  %i.di = zext i1 %i.dd to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.02.i.i, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dl = icmp ne ptr %i.dh, %i.cm
  %i.dm = icmp ne ptr %i.dj, %i.m
  %or.cond.i28.i = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %or.cond.i28.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1z_NtB1z_10Parameters17iter_source_order0E0EB1B_.exit.i

_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1z_NtB1z_10Parameters17iter_source_order0E0EB1B_.exit.i: ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i26.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.i
  %.sroa.13.1.i = phi ptr [ %i.cw, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.i ], [ %i.dk, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i26.i ]
  %.sroa.7.0.i = phi ptr [ %i.cy, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.i ], [ %i.cm, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i26.i ]
  %.sroa.0.1.i = phi ptr [ %2, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.i ], [ %i.dh, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i26.i ] ; 2 uses
  %i.dn = ptrtoint ptr %.sroa.7.0.i to i64
  %i.do = ptrtoint ptr %.sroa.0.1.i to i64
  %i.dp = sub nuw i64 %i.dn, %i.do
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.dp, i1 false), !alias.scope !4490, !noalias !4503
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1m_NtB1m_10Parameters17iter_source_order0E0EB1o_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1m_NtB1m_10Parameters17iter_source_order0E0EB1o_.exit: ; preds = %bb.ad, %bb.ae, %_RINvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtBb_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEE10merge_downNCINvMNtCscdodAO9FK5_5alloc5sliceSB1a_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1z_NtB1z_10Parameters17iter_source_order0E0EB1B_.exit.i
  %i.dq = shl nuw nsw i64 %i.bt, 1
  %i.dr = or disjoint i64 %i.dq, 1
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1v_NtB1v_10Parameters17iter_source_order0E0EB1x_.exit

bb.aj:                                            ; preds = %bb.ab
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.br
  %i.dt = or i64 %i.bs, 1
  %i.du = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.dt, i1 true)
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = shl nuw nsw i32 %i.dv, 1
  %i.dx = xor i32 %i.dw, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1u_NtB1u_10Parameters17iter_source_order0E0EB1w_(ptr noalias noundef nonnull align 8 %i.ds, i64 noundef range(i64 0, 1152921504606846976) %i.bs, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.dx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !4484
  br label %bb.ad

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift13logical_mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB16_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1v_NtB1v_10Parameters17iter_source_order0E0EB1x_.exit: ; preds = %bb.aa, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1m_NtB1m_10Parameters17iter_source_order0E0EB1o_.exit
  %.sroa.0.0.i = phi i64 [ %i.dr, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5merge5mergeINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSBX_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1m_NtB1m_10Parameters17iter_source_order0E0EB1o_.exit ], [ %i.cb, %bb.aa ] ; 2 uses
  %i.dy = icmp ugt i64 %i.bk, 1
  br i1 %i.dy, label %bb.x, label %._crit_edge

bb.ak:                                            ; preds = %._crit_edge
  %i.dz = add i64 %.sroa.02.1.lcssa, 1
  %i.ea = lshr i64 %.sroa.018.0, 1
  %i.eb = add nuw i64 %i.ea, %.sroa.09.0
  br label %bb.f

bb.al:                                            ; preds = %._crit_edge
  %i.ec = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.ec, 0
  br i1 %.not31, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ed = or i64 %1, 1
  %i.ee = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ed, i1 true)
  %i.ef = trunc nuw nsw i64 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 1
  %i.eh = xor i32 %i.eg, 126
  tail call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1u_NtB1u_10Parameters17iter_source_order0E0EB1w_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(8) %5), !inline_history !4484
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %bb.an
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1u_NtB1u_10Parameters17iter_source_order0E0EB1w_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias noundef readonly align 8 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph149 = phi ptr [ %i.jp, %.outer ], [ %0, %bb.a ] ; 23 uses
  %.sroa.16.0.ph148 = phi i64 [ %i.ja, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph147 = phi i32 [ %i.cg, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph146 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph149 to i64     ; 2 uses
  %.not = icmp eq ptr %.sroa.028.0.ph146, null
  %i.d = icmp eq i32 %.sroa.025.0.ph147, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph360

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit
  %i.e = icmp eq i32 %i.cg, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph360

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit, %bb.a
  %.sroa.0.0.ph.lcssa134 = phi ptr [ %.sroa.0.0.ph149, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit ], [ %0, %bb.a ], [ %i.jp, %.outer ] ; 11 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE12split_at_mutBV_.exit ], [ %1, %bb.a ], [ %i.ja, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4508)
  call void @llvm.experimental.noalias.scope.decl(metadata !4511)
  %i.f = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.f, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1R_NtB1R_10Parameters17iter_source_order0E0EB1T_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.g = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.h = icmp samesign ult i64 %3, %i.g
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i64 %.sroa.16.0.lcssa, 1            ; 12 uses
  %i.j = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.j, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.k, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB19_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1y_NtB1y_10Parameters17iter_source_order0E0EB1A_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa134, ptr noundef nonnull align 8 %2, ptr noundef %i.l)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa134, i64 %i.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort8_stableINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB19_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1y_NtB1y_10Parameters17iter_source_order0E0EB1A_(ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB19_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1y_NtB1y_10Parameters17iter_source_order0E0EB1A_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa134, ptr noundef nonnull align 8 %2)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa134, i64 %i.i
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB19_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1y_NtB1y_10Parameters17iter_source_order0E0EB1A_(ptr noundef %i.p, ptr noundef %i.q)
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.r = load i64, ptr %.sroa.0.0.ph.lcssa134, align 8, !alias.scope !4508, !noalias !4511
  store i64 %i.r, ptr %2, align 8, !alias.scope !4511, !noalias !4508
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa134, i64 %i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  %i.u = load i64, ptr %i.s, align 8, !alias.scope !4508, !noalias !4511
  store i64 %i.u, ptr %i.t, align 8, !alias.scope !4511, !noalias !4508
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  %i.v = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.i  ; 2 uses
  %i.w = icmp samesign ult i64 %.sroa.0.0.i, %i.i
  br i1 %i.w, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1x_NtB1x_10Parameters17iter_source_order0E0EB1z_.exit.i, %bb.j
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa134, i64 %i.i
  %i.y = getelementptr [8 x i8], ptr %2, i64 %i.i ; 6 uses
  %i.z = icmp samesign ult i64 %.sroa.0.0.i, %i.v
  br i1 %i.z, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1x_NtB1x_10Parameters17iter_source_order0E0EB1z_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.al, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1x_NtB1x_10Parameters17iter_source_order0E0EB1z_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.05.08.1.i
  %.idx.1.i = shl nuw nsw i64 %.sroa.05.08.1.i, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx.1.i ; 3 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !4508, !noalias !4511 ; 4 uses
  store i64 %i.ac, ptr %i.ab, align 8, !alias.scope !4511, !noalias !4508
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -8 ; 3 uses
  %.val9.i.cast.1.i = inttoptr i64 %i.ac to ptr   ; 2 uses
  %.val10.i.1.i = load ptr, ptr %i.ad, align 8, !alias.scope !4511, !noalias !4508 ; 3 uses
  %.not.i.i.i.i30.1.i = icmp eq i64 %i.ac, 0      ; 2 uses
  br i1 %.not.i.i.i.i30.1.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i32.1.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.1.i
  %.val.i.i.i.i31.1.i = load i32, ptr %.val9.i.cast.1.i, align 8, !noalias !4513, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i32.1.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i32.1.i: ; preds = %bb.k, %.lr.ph.1.i
  %.sroa.02.0.i.i.i.i33.1.i = phi i32 [ %.val.i.i.i.i31.1.i, %bb.k ], [ -1, %.lr.ph.1.i ]
  %.not.i.i5.i.i34.1.i = icmp eq ptr %.val10.i.1.i, null
  br i1 %.not.i.i5.i.i34.1.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i36.1.i, label %bb.l

bb.l:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i32.1.i
  %.val.i.i6.i.i35.1.i = load i32, ptr %.val10.i.1.i, align 8, !noalias !4513, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i36.1.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i36.1.i: ; preds = %bb.l, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i32.1.i
  %.sroa.02.0.i.i7.i.i37.1.i = phi i32 [ %.val.i.i6.i.i35.1.i, %bb.l ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i32.1.i ]
  %i.ae = icmp ult i32 %.sroa.02.0.i.i.i.i33.1.i, %.sroa.02.0.i.i7.i.i37.1.i
  br i1 %i.ae, label %.preheader.1.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1x_NtB1x_10Parameters17iter_source_order0E0EB1z_.exit.1.i

.preheader.1.i:                                   ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i36.1.i
  %i.af = ptrtoint ptr %.val10.i.1.i to i64
  store i64 %i.af, ptr %i.ab, align 8, !alias.scope !4511, !noalias !4508
  br i1 %.not.i.i.i.i30.1.i, label %.split.1.i, label %.preheader.split.1.i.preheader

.preheader.split.1.i.preheader:                   ; preds = %.preheader.1.i
  %i.ag = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.ag, label %.split.1.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.1.i.preheader

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.1.i.preheader: ; preds = %.preheader.split.1.i.preheader
  %.val.i.i.i12.i.1.i = load i32, ptr %.val9.i.cast.1.i, align 8, !noalias !4513, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.1.i

.preheader.split.1.i:                             ; preds = %bb.n
  %i.ah = ptrtoint ptr %.val8.i.1.i to i64
  store i64 %i.ah, ptr %.sroa.0.0.i38.1.i367, align 8, !alias.scope !4511, !noalias !4508
  %i.ai = icmp eq ptr %i.aj, %i.y
  br i1 %i.ai, label %.split.1.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.1.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.1.i: ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.1.i.preheader, %.preheader.split.1.i
  %.sroa.0.0.i38.1.i367 = phi ptr [ %i.aj, %.preheader.split.1.i ], [ %i.ad, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.1.i.preheader ] ; 3 uses
  %i.aj = getelementptr inbounds i8, ptr %.sroa.0.0.i38.1.i367, i64 -8 ; 3 uses
  %.val8.i.1.i = load ptr, ptr %i.aj, align 8, !alias.scope !4511, !noalias !4508 ; 3 uses
  %.not.i.i5.i15.i.1.i = icmp eq ptr %.val8.i.1.i, null
  br i1 %.not.i.i5.i15.i.1.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.1.i
  %.val.i.i6.i16.i.1.i = load i32, ptr %.val8.i.1.i, align 8, !noalias !4513, !noundef !3
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.1.i
  %.sroa.02.0.i.i7.i17.i.1.i = phi i32 [ %.val.i.i6.i16.i.1.i, %bb.m ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.1.i ]
  %i.ak = icmp ult i32 %.val.i.i.i12.i.1.i, %.sroa.02.0.i.i7.i17.i.1.i
  br i1 %i.ak, label %.preheader.split.1.i, label %.split.1.i

.split.1.i:                                       ; preds = %.preheader.split.1.i, %bb.n, %.preheader.split.1.i.preheader, %.preheader.1.i
  %.us-phi.1.i = phi ptr [ %i.ad, %.preheader.1.i ], [ %i.y, %.preheader.split.1.i.preheader ], [ %.sroa.0.0.i38.1.i367, %bb.n ], [ %i.y, %.preheader.split.1.i ]
  store i64 %i.ac, ptr %.us-phi.1.i, align 8, !alias.scope !4511, !noalias !4514
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1x_NtB1x_10Parameters17iter_source_order0E0EB1z_.exit.1.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1x_NtB1x_10Parameters17iter_source_order0E0EB1z_.exit.1.i: ; preds = %.split.1.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i36.1.i
  %i.al = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.al, %i.v
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1x_NtB1x_10Parameters17iter_source_order0E0EB1z_.exit.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4519)
  %i.am = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa134, i64 %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.am
  %i.ap = getelementptr i8, ptr %i.y, i64 -8
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.i
  %i.aq = getelementptr i8, ptr %i.bh, i64 8      ; 2 uses
  %i.ar = getelementptr i8, ptr %i.bg, i64 8
  %i.as = and i64 %.sroa.16.0.lcssa, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %bb.t, label %bb.s

.lr.ph.i.i:                                       ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.bc, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.i ], [ %.sroa.0.0.ph.lcssa134, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.au, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.bb, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.az, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.i ], [ %i.y, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.bh, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.i ], [ %i.ap, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.bg, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.i ], [ %i.ao, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.bi, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.i ], [ %i.an, %.loopexit.1.i ] ; 2 uses
  %i.au = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load ptr, ptr %.sroa.011.07.i.i, align 8, !alias.scope !4522, !noalias !4508, !align !95, !noundef !3 ; 2 uses
  %.sroa.06.0.val.i.i = load ptr, ptr %.sroa.06.08.i.i, align 8, !alias.scope !4522, !noalias !4508 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.011.0.val.i.i, null
  br i1 %.not.i.i.i.i.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %.val.i.i.i.i.i = load i32, ptr %.sroa.011.0.val.i.i, align 8, !noalias !4523, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i: ; preds = %bb.o, %.lr.ph.i.i
  %.sroa.02.0.i.i.i.i.i = phi i32 [ %.val.i.i.i.i.i, %bb.o ], [ -1, %.lr.ph.i.i ]
  %.not.i.i5.i.i.i = icmp eq ptr %.sroa.06.0.val.i.i, null
  br i1 %.not.i.i5.i.i.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i
  %.val.i.i6.i.i.i = load i32, ptr %.sroa.06.0.val.i.i, align 8, !noalias !4523, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.i: ; preds = %bb.p, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i
  %.sroa.02.0.i.i7.i.i.i = phi i32 [ %.val.i.i6.i.i.i, %bb.p ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i.i ]
  %i.av = icmp ult i32 %.sroa.02.0.i.i.i.i.i, %.sroa.02.0.i.i7.i.i.i ; 3 uses
  %..i23.i.i = select i1 %i.av, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.aw = xor i1 %i.av, true
  %i.ax = load i64, ptr %..i23.i.i, align 8, !alias.scope !4522, !noalias !4524
  store i64 %i.ax, ptr %.sroa.0.010.i.i, align 8, !alias.scope !4508, !noalias !4528
  %i.ay = zext i1 %i.av to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.07.i.i, i64 %i.ay ; 4 uses
  %i.ba = zext i1 %i.aw to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.08.i.i, i64 %i.ba ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load ptr, ptr %.sroa.017.05.i.i, align 8, !alias.scope !4522, !noalias !4508, !align !95, !noundef !3 ; 2 uses
  %.sroa.015.0.val.i.i = load ptr, ptr %.sroa.015.06.i.i, align 8, !alias.scope !4522, !noalias !4508 ; 2 uses
  %.not.i.i.i24.i.i = icmp eq ptr %.sroa.017.0.val.i.i, null
  br i1 %.not.i.i.i24.i.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.i, label %bb.q

bb.q:                                             ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.i
  %.val.i.i.i25.i.i = load i32, ptr %.sroa.017.0.val.i.i, align 8, !noalias !4523, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.i: ; preds = %bb.q, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.i
  %.sroa.02.0.i.i.i27.i.i = phi i32 [ %.val.i.i.i25.i.i, %bb.q ], [ -1, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i.i ]
  %.not.i.i5.i28.i.i = icmp eq ptr %.sroa.015.0.val.i.i, null
  br i1 %.not.i.i5.i28.i.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.i, label %bb.r

bb.r:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.i
  %.val.i.i6.i29.i.i = load i32, ptr %.sroa.015.0.val.i.i, align 8, !noalias !4523, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i.i: ; preds = %bb.r, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.i
  %.sroa.02.0.i.i7.i30.i.i = phi i32 [ %.val.i.i6.i29.i.i, %bb.r ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i.i ]
  %i.bd = icmp ult i32 %.sroa.02.0.i.i.i27.i.i, %.sroa.02.0.i.i7.i30.i.i ; 3 uses
  %..i.i.i = select i1 %i.bd, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.be = xor i1 %i.bd, true
  %i.bf = load i64, ptr %..i.i.i, align 8, !alias.scope !4522, !noalias !4529
  store i64 %i.bf, ptr %.sroa.019.04.i.i, align 8, !alias.scope !4508, !noalias !4533
  %.neg.i.i.i = sext i1 %i.be to i64
  %i.bg = getelementptr [8 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %i.bd to i64
  %i.bh = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.au, %i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bj = icmp ult ptr %i.bb, %i.aq               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.bj, ptr %i.bb, ptr %i.az
  %i.bk = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 8, !alias.scope !4522, !noalias !4508
  store i64 %i.bk, ptr %i.bc, align 8, !alias.scope !4508, !noalias !4522
  %i.bl = zext i1 %i.bj to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bl
  %i.bn = xor i1 %i.bj, true
  %i.bo = zext i1 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bo
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.az, %._crit_edge.i.i ], [ %i.bp, %bb.s ]
  %.sroa.06.1.i.i = phi ptr [ %i.bb, %._crit_edge.i.i ], [ %i.bm, %bb.s ]
  %i.bq = icmp ne ptr %.sroa.06.1.i.i, %i.aq
  %i.br = icmp ne ptr %.sroa.011.1.i.i, %i.ar
  %or.cond.i.i = select i1 %i.bq, i1 true, i1 %i.br, !prof !4460
  br i1 %or.cond.i.i, label %bb.u, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1R_NtB1R_10Parameters17iter_source_order0E0EB1T_.exit, !prof !4460

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #61
          to label %.noexc.i unwind label %bb.v, !noalias !4513

.noexc.i:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = shl nuw nsw i64 %.sroa.16.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa134, ptr nonnull align 8 %2, i64 %i.bt, i1 false), !alias.scope !4513, !noalias !4534
  resume { ptr, i32 } %i.bs

.lr.ph.i:                                         ; preds = %bb.j, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1x_NtB1x_10Parameters17iter_source_order0E0EB1z_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.cf, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1x_NtB1x_10Parameters17iter_source_order0E0EB1z_.exit.i ], [ %.sroa.0.0.i, %bb.j ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa134, i64 %.sroa.05.08.i
  %.idx.i = shl nuw nsw i64 %.sroa.05.08.i, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i ; 3 uses
  %i.bw = load i64, ptr %i.bu, align 8, !alias.scope !4508, !noalias !4511 ; 4 uses
  store i64 %i.bw, ptr %i.bv, align 8, !alias.scope !4511, !noalias !4508
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 3 uses
  %.val9.i.cast.i = inttoptr i64 %i.bw to ptr     ; 2 uses
  %.val10.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !4511, !noalias !4508 ; 3 uses
  %.not.i.i.i.i30.i = icmp eq i64 %i.bw, 0        ; 2 uses
  br i1 %.not.i.i.i.i30.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i32.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i
  %.val.i.i.i.i31.i = load i32, ptr %.val9.i.cast.i, align 8, !noalias !4513, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i32.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i32.i: ; preds = %bb.w, %.lr.ph.i
  %.sroa.02.0.i.i.i.i33.i = phi i32 [ %.val.i.i.i.i31.i, %bb.w ], [ -1, %.lr.ph.i ]
  %.not.i.i5.i.i34.i = icmp eq ptr %.val10.i.i, null
  br i1 %.not.i.i5.i.i34.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i36.i, label %bb.x

bb.x:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i32.i
  %.val.i.i6.i.i35.i = load i32, ptr %.val10.i.i, align 8, !noalias !4513, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i36.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i36.i: ; preds = %bb.x, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i32.i
  %.sroa.02.0.i.i7.i.i37.i = phi i32 [ %.val.i.i6.i.i35.i, %bb.x ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i32.i ]
  %i.by = icmp ult i32 %.sroa.02.0.i.i.i.i33.i, %.sroa.02.0.i.i7.i.i37.i
  br i1 %i.by, label %.preheader.i, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1x_NtB1x_10Parameters17iter_source_order0E0EB1z_.exit.i

.preheader.i:                                     ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i36.i
  %i.bz = ptrtoint ptr %.val10.i.i to i64
  store i64 %i.bz, ptr %i.bv, align 8, !alias.scope !4511, !noalias !4508
  br i1 %.not.i.i.i.i30.i, label %.split.i, label %.preheader.split.i.preheader

.preheader.split.i.preheader:                     ; preds = %.preheader.i
  %i.ca = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.ca, label %.split.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.i.preheader

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.i.preheader: ; preds = %.preheader.split.i.preheader
  %.val.i.i.i12.i.i = load i32, ptr %.val9.i.cast.i, align 8, !noalias !4513, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.i

.preheader.split.i:                               ; preds = %bb.z
  %i.cb = ptrtoint ptr %.val8.i.i to i64
  store i64 %i.cb, ptr %.sroa.0.0.i38.i364, align 8, !alias.scope !4511, !noalias !4508
  %i.cc = icmp eq ptr %i.cd, %2
  br i1 %i.cc, label %.split.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.i: ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.i.preheader, %.preheader.split.i
  %.sroa.0.0.i38.i364 = phi ptr [ %i.cd, %.preheader.split.i ], [ %i.bx, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.i.preheader ] ; 3 uses
  %i.cd = getelementptr inbounds i8, ptr %.sroa.0.0.i38.i364, i64 -8 ; 3 uses
  %.val8.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !4511, !noalias !4508 ; 3 uses
  %.not.i.i5.i15.i.i = icmp eq ptr %.val8.i.i, null
  br i1 %.not.i.i5.i15.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.i
  %.val.i.i6.i16.i.i = load i32, ptr %.val8.i.i, align 8, !noalias !4513, !noundef !3
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.i
  %.sroa.02.0.i.i7.i17.i.i = phi i32 [ %.val.i.i6.i16.i.i, %bb.y ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i13.i.i ]
  %i.ce = icmp ult i32 %.val.i.i.i12.i.i, %.sroa.02.0.i.i7.i17.i.i
  br i1 %i.ce, label %.preheader.split.i, label %.split.i

.split.i:                                         ; preds = %.preheader.split.i, %bb.z, %.preheader.split.i.preheader, %.preheader.i
  %.us-phi.i = phi ptr [ %i.bx, %.preheader.i ], [ %2, %.preheader.split.i.preheader ], [ %.sroa.0.0.i38.i364, %bb.z ], [ %2, %.preheader.split.i ]
  store i64 %i.bw, ptr %.us-phi.i, align 8, !alias.scope !4511, !noalias !4514
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1x_NtB1x_10Parameters17iter_source_order0E0EB1z_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1x_NtB1x_10Parameters17iter_source_order0E0EB1z_.exit.i: ; preds = %.split.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i36.i
  %i.cf = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cf, %i.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0139.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph148, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1l_NtB1l_10Parameters17iter_source_order0E0EB1n_(ptr noalias noundef nonnull align 8 %.sroa.0.0.ph149, i64 noundef %.sroa.16.0139.lcssa, ptr noalias noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1R_NtB1R_10Parameters17iter_source_order0E0EB1T_.exit

.lr.ph360:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0138359 = phi i32 [ %i.cg, %bb.b ], [ %.sroa.025.0.ph147, %.lr.ph ]
  %.sroa.16.0139358 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph148, %.lr.ph ] ; 19 uses
  %i.cg = add i32 %.sroa.025.0138359, -1          ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4539)
  %i.ch = lshr i64 %.sroa.16.0139358, 3           ; 3 uses
  %.idx.i37 = shl nuw nsw i64 %i.ch, 5
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph149, i64 %.idx.i37 ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.ch, 56
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph149, i64 %.idx2.i ; 3 uses
  %i.ck = icmp samesign ult i64 %.sroa.16.0139358, 64
  br i1 %i.ck, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph360
  %i.cl = call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1t_NtB1t_10Parameters17iter_source_order0E0EB1v_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph149, ptr noundef readonly %i.ci, ptr noundef readonly %i.cj, i64 noundef %i.ch)
  br label %bb.aj

bb.ab:                                            ; preds = %.lr.ph360
  %.val6.i = load ptr, ptr %.sroa.0.0.ph149, align 8, !alias.scope !4539, !align !95, !noundef !3 ; 3 uses
  %.val7.i = load ptr, ptr %i.ci, align 8, !alias.scope !4539 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val6.i, null      ; 2 uses
  br i1 %.not.i.i.i.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val.i.i.i.i = load i32, ptr %.val6.i, align 8, !noalias !4539, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i: ; preds = %bb.ac, %bb.ab
  %.sroa.02.0.i.i.i.i = phi i32 [ %.val.i.i.i.i, %bb.ac ], [ -1, %bb.ab ]
  %.not.i.i5.i.i = icmp eq ptr %.val7.i, null     ; 2 uses
  br i1 %.not.i.i5.i.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i, label %bb.ad

bb.ad:                                            ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i
  %.val.i.i6.i.i = load i32, ptr %.val7.i, align 8, !noalias !4539, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i: ; preds = %bb.ad, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i
  %.sroa.02.0.i.i7.i.i = phi i32 [ %.val.i.i6.i.i, %bb.ad ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i ]
  %i.cm = icmp ult i32 %.sroa.02.0.i.i.i.i, %.sroa.02.0.i.i7.i.i ; 2 uses
  %.val5.i = load ptr, ptr %i.cj, align 8, !alias.scope !4539 ; 3 uses
  br i1 %.not.i.i.i.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i10.i, label %bb.ae

bb.ae:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i
  %.val.i.i.i9.i = load i32, ptr %.val6.i, align 8, !noalias !4539, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i10.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i10.i: ; preds = %bb.ae, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i
  %.sroa.02.0.i.i.i11.i = phi i32 [ %.val.i.i.i9.i, %bb.ae ], [ -1, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i ]
  %.not.i.i5.i12.i = icmp eq ptr %.val5.i, null   ; 2 uses
  br i1 %.not.i.i5.i12.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit15.i, label %bb.af

bb.af:                                            ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i10.i
  %.val.i.i6.i13.i = load i32, ptr %.val5.i, align 8, !noalias !4539, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit15.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit15.i: ; preds = %bb.af, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i10.i
  %.sroa.02.0.i.i7.i14.i = phi i32 [ %.val.i.i6.i13.i, %bb.af ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i10.i ]
  %i.cn = icmp ult i32 %.sroa.02.0.i.i.i11.i, %.sroa.02.0.i.i7.i14.i
  %i.co = xor i1 %i.cm, %i.cn
  br i1 %i.co, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit15.i
  br i1 %.not.i.i5.i.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i18.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val.i.i.i17.i = load i32, ptr %.val7.i, align 8, !noalias !4539, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i18.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i18.i: ; preds = %bb.ah, %bb.ag
  %.sroa.02.0.i.i.i19.i = phi i32 [ %.val.i.i.i17.i, %bb.ah ], [ -1, %bb.ag ]
  br i1 %.not.i.i5.i12.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit23.i, label %bb.ai

bb.ai:                                            ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i18.i
  %.val.i.i6.i21.i = load i32, ptr %.val5.i, align 8, !noalias !4539, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit23.i

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit23.i: ; preds = %bb.ai, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i18.i
  %.sroa.02.0.i.i7.i22.i = phi i32 [ %.val.i.i6.i21.i, %bb.ai ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i18.i ]
  %i.cp = icmp ult i32 %.sroa.02.0.i.i.i19.i, %.sroa.02.0.i.i7.i22.i
  %i.cq = xor i1 %i.cm, %i.cp
  %..i.i = select i1 %i.cq, ptr %i.cj, ptr %i.ci
  br label %bb.aj

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtBa_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1R_NtB1R_10Parameters17iter_source_order0E0EB1T_.exit: ; preds = %.outer._crit_edge.thread, %bb.t, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.aj:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit23.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit15.i, %bb.aa
  %.sroa.0.0.i.sink.i = phi ptr [ %i.cl, %bb.aa ], [ %.sroa.0.0.ph149, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit15.i ], [ %..i.i, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit23.i ]
  %i.cr = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.cs = sub nuw i64 %i.cr, %i.c                 ; 3 uses
  %.sroa.0.0.i38 = lshr exact i64 %i.cs, 3        ; 3 uses
  %i.ct = icmp samesign ult i64 %.sroa.0.0.i38, %.sroa.16.0139358
  call void @llvm.assume(i1 %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph149, i64 %i.cs
  %i.cv = load ptr, ptr %i.cu, align 8            ; 9 uses
  store ptr %i.cv, ptr %i.a, align 8
  br i1 %.not, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.sroa.028.0.val = load ptr, ptr %.sroa.028.0.ph146, align 8, !align !95, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.028.0.val, null
  br i1 %.not.i.i.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.val.i.i.i = load i32, ptr %.sroa.028.0.val, align 8, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i: ; preds = %bb.al, %bb.ak
  %.sroa.02.0.i.i.i = phi i32 [ %.val.i.i.i, %bb.al ], [ -1, %bb.ak ]
  %.not.i.i5.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i5.i, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit, label %bb.am

bb.am:                                            ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i
  %.val.i.i6.i = load i32, ptr %i.cv, align 8, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit: ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i, %bb.am
  %.sroa.02.0.i.i7.i = phi i32 [ %.val.i.i6.i, %bb.am ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i ]
  %i.cw = icmp ult i32 %.sroa.02.0.i.i.i, %.sroa.02.0.i.i7.i
  br i1 %i.cw, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.aj, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !4542)
  call void @llvm.experimental.noalias.scope.decl(metadata !4545)
  %.not99 = icmp samesign ult i64 %3, %.sroa.16.0139358
  br i1 %.not99, label %bb.ap, label %bb.ao, !prof !4460

bb.ao:                                            ; preds = %bb.an
  %i.cx = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0139358 ; 3 uses
  %.not.i.i5.i.i42 = icmp eq ptr %i.cv, null      ; 5 uses
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  call void @llvm.trap()
  unreachable

bb.aq:                                            ; preds = %bb.bb, %bb.ao
  %.sroa.43.0.i = phi ptr [ %i.cx, %bb.ao ], [ %i.fd, %bb.bb ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.ao ], [ %.sroa.27.2.lcssa.i, %bb.bb ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph149, %bb.ao ], [ %i.fg, %bb.bb ] ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i38, %bb.ao ], [ %.sroa.16.0139358, %bb.bb ] ; 3 uses
  %i.cy = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i39, i64 3)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph149, i64 %i.cy ; 2 uses
  %i.da = icmp ult ptr %.sroa.9.0.i, %i.cz
  br i1 %i.da, label %.lr.ph.i41, label %._crit_edge.i

.lr.ph.i41:                                       ; preds = %bb.aq, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit49.i
  %.sroa.9.131.i = phi ptr [ %i.ec, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit49.i ], [ %.sroa.9.0.i, %bb.aq ] ; 5 uses
  %.sroa.27.130.i = phi i64 [ %i.eb, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit49.i ], [ %.sroa.27.0.i, %bb.aq ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.dy, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit49.i ], [ %.sroa.43.0.i, %bb.aq ] ; 4 uses
  %.val22.i = load ptr, ptr %.sroa.9.131.i, align 8, !alias.scope !4542, !noalias !4545, !align !95, !noundef !3 ; 3 uses
  %.not.i.i.i.i43 = icmp eq ptr %.val22.i, null
  %i.db = ptrtoint ptr %.val22.i to i64
  br i1 %.not.i.i.i.i43, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i45, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i41
  %.val.i.i.i.i44 = load i32, ptr %.val22.i, align 8, !noalias !4547, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i45

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i45: ; preds = %bb.ar, %.lr.ph.i41
  %.sroa.02.0.i.i.i.i46 = phi i32 [ %.val.i.i.i.i44, %bb.ar ], [ -1, %.lr.ph.i41 ]
  br i1 %.not.i.i5.i.i42, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i48, label %bb.as

bb.as:                                            ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i45
  %.val.i.i6.i.i47 = load i32, ptr %i.cv, align 8, !noalias !4547, !noundef !3
  br label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i48

_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i48: ; preds = %bb.as, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i45
  %.sroa.02.0.i.i7.i.i49 = phi i32 [ %.val.i.i6.i.i47, %bb.as ], [ -1, %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i.i45 ]
  %i.dc = icmp ult i32 %.sroa.02.0.i.i.i.i46, %.sroa.02.0.i.i7.i.i49 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %.sroa.01.0.i.i = select i1 %i.dc, ptr %2, ptr %i.dd
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  store i64 %i.db, ptr %i.de, align 8, !alias.scope !4545, !noalias !4548
  %i.df = zext i1 %i.dc to i64
  %i.dg = add i64 %.sroa.27.130.i, %i.df          ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8
  %.val20.i = load ptr, ptr %i.dh, align 8, !alias.scope !4542, !noalias !4545, !align !95, !noundef !3 ; 3 uses
  %.not.i.i.i24.i = icmp eq ptr %.val20.i, null
  %i.di = ptrtoint ptr %.val20.i to i64
  br i1 %.not.i.i.i24.i, label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i, label %bb.at

bb.at:                                            ; preds = %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i48
  %.val.i.i.i25.i = load i32, ptr %.val20.i, align 8, !noalias !4547, !noundef !3
  br label %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i

_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i: ; preds = %bb.at, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i48
  %.sroa.02.0.i.i.i27.i = phi i32 [ %.val.i.i.i25.i, %bb.at ], [ -1, %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit.i48 ]
  br i1 %.not.i.i5.i.i42, label %_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterE11sort_by_keyNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeNCNvMs1N_B1c_NtB1c_10Parameters17iter_source_order0E0B1e_.exit31.i, label %bb.au

bb.au:                                            ; preds = %_RNCNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB8_10Parameters17iter_source_order0Ba_.exit.i26.i
end_hunk_2
begin_hunk_3_@_RNvMNtCskLngH8kgpZI_15ruff_python_ast7helpersNtB2_10SideEffect9from_expr:bb.a

bb.g:                                             ; preds = %.lr.ph56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ad, i64 64 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.not.i.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartRNtB1h_7FStringuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMsn_B1h_NtB1h_12FStringValue9f_strings0NCINvNtB6_3map12map_try_foldB27_INtNtNtBa_5slice4iter4IterNtNtB1j_9generated25InterpolatedStringElementEuB2n_NCNvB38_8elements0NCINvNvMsg_NtB6_7flattenINtB5Z_13FlattenCompatppE13iter_try_fold7flattenB4h_uB2n_NCINvNvXsi_B5Z_B6c_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB4h_uB2n_NCINvNvB7q_3any5checkRB4H_NvNtB1j_7helpers27has_uncertain_interpolationE0E0E0E0E0B1j_.exit.i.i.i.i.i, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.f, %bb.g
  %i.ad = phi ptr [ %i.ac, %bb.g ], [ %.val5.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.ae = tail call fastcc noundef zeroext i1 @_RNvYNvNtCskLngH8kgpZI_15ruff_python_ast7helpers27has_uncertain_interpolationINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRNtNtB6_9generated25InterpolatedStringElementEE8call_mutB6_(ptr noundef nonnull readonly align 8 %i.ad), !noalias !6886
  br i1 %i.ae, label %_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENCNvMsn_B2o_NtB2o_12FStringValue9f_strings0ENCNvB3j_8elements0EIB1X_NtNtB2q_9generated25InterpolatedStringElementEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4g_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB5H_3any5checkRB4l_NvNtB2q_7helpers27has_uncertain_interpolationE0E0B6B_EB2q_.exit.thread, label %bb.g

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartRNtB1h_7FStringuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMsn_B1h_NtB1h_12FStringValue9f_strings0NCINvNtB6_3map12map_try_foldB27_INtNtNtBa_5slice4iter4IterNtNtB1j_9generated25InterpolatedStringElementEuB2n_NCNvB38_8elements0NCINvNvMsg_NtB6_7flattenINtB5Z_13FlattenCompatppE13iter_try_fold7flattenB4h_uB2n_NCINvNvXsi_B5Z_B6c_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB4h_uB2n_NCINvNvB7q_3any5checkRB4H_NvNtB1j_7helpers27has_uncertain_interpolationE0E0E0E0E0B1j_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %.not9.i.i.i.i.i = icmp eq ptr %i.x, %i.v
  br i1 %.not9.i.i.i.i.i, label %_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENCNvMsn_B2o_NtB2o_12FStringValue9f_strings0ENCNvB3j_8elements0EIB1X_NtNtB2q_9generated25InterpolatedStringElementEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4g_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB5H_3any5checkRB4l_NvNtB2q_7helpers27has_uncertain_interpolationE0E0B6B_EB2q_.exit.thread, label %.lr.ph.i.i.i.i.i

bb.h:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !range !280, !noalias !6891, !noundef !3
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %bb.i, label %.thread43

.thread43:                                        ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %.lr.ph.i.i.i.i.preheader

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !6891, !nonnull !3, !noundef !3 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i64, ptr %i.al, align 8, !noalias !6891, !noundef !3 ; 2 uses
  %i.an = mul nuw nsw i64 %i.am, 40
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  %.not.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i, label %_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENCNvMsn_B2o_NtB2o_12FStringValue9f_strings0ENCNvB3j_8elements0EIB1X_NtNtB2q_9generated25InterpolatedStringElementEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4g_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB5H_3any5checkRB4l_NvNtB2q_7helpers27has_uncertain_interpolationE0E0B6B_EB2q_.exit.thread, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.thread43, %bb.i
  %i.ap = phi ptr [ %i.ai, %.thread43 ], [ %i.ao, %bb.i ]
  %.sroa.0.0.i547 = phi ptr [ %i.af, %.thread43 ], [ %i.ak, %bb.i ]
  br label %.lr.ph.i.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringINtNtNtBa_5slice4iter4IterNtNtB14_9generated25InterpolatedStringElementEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMst_B12_NtB12_12TStringValue8elements0NCINvNvMsg_NtB6_7flattenINtB4w_13FlattenCompatppE13iter_try_fold7flattenB1N_uB2Y_NCINvNvXsi_B4w_B4J_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1N_uB2Y_NCINvNvB5X_3any5checkRB2d_NvNtB14_7helpers27has_uncertain_interpolationE0E0E0E0B14_.exit.loopexit.i.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i.i
  %.not8.i.i.i.i = icmp eq ptr %i.ar, %i.ap
  br i1 %.not8.i.i.i.i, label %_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENCNvMsn_B2o_NtB2o_12FStringValue9f_strings0ENCNvB3j_8elements0EIB1X_NtNtB2q_9generated25InterpolatedStringElementEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4g_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB5H_3any5checkRB4l_NvNtB2q_7helpers27has_uncertain_interpolationE0E0B6B_EB2q_.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringINtNtNtBa_5slice4iter4IterNtNtB14_9generated25InterpolatedStringElementEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMst_B12_NtB12_12TStringValue8elements0NCINvNvMsg_NtB6_7flattenINtB4w_13FlattenCompatppE13iter_try_fold7flattenB1N_uB2Y_NCINvNvXsi_B4w_B4J_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1N_uB2Y_NCINvNvB5X_3any5checkRB2d_NvNtB14_7helpers27has_uncertain_interpolationE0E0E0E0B14_.exit.loopexit.i.i.i.i
  %i.aq = phi ptr [ %i.ar, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringINtNtNtBa_5slice4iter4IterNtNtB14_9generated25InterpolatedStringElementEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMst_B12_NtB12_12TStringValue8elements0NCINvNvMsg_NtB6_7flattenINtB4w_13FlattenCompatppE13iter_try_fold7flattenB1N_uB2Y_NCINvNvXsi_B4w_B4J_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1N_uB2Y_NCINvNvB5X_3any5checkRB2d_NvNtB14_7helpers27has_uncertain_interpolationE0E0E0E0B14_.exit.loopexit.i.i.i.i ], [ %.sroa.0.0.i547, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40 ; 2 uses
  %i.as = getelementptr i8, ptr %i.aq, i64 8
  %.val6.i.i.i.i = load ptr, ptr %i.as, align 8, !noalias !6894, !nonnull !3, !noundef !3 ; 2 uses
  %i.at = getelementptr i8, ptr %i.aq, i64 16
  %.val7.i.i.i.i = load i64, ptr %i.at, align 8, !noalias !6894, !noundef !3 ; 2 uses
  %.idx = shl nuw nsw i64 %.val7.i.i.i.i, 6
  %i.au = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i, i64 %.idx
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i54 = icmp eq i64 %.val7.i.i.i.i, 0
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i54, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringINtNtNtBa_5slice4iter4IterNtNtB14_9generated25InterpolatedStringElementEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMst_B12_NtB12_12TStringValue8elements0NCINvNvMsg_NtB6_7flattenINtB4w_13FlattenCompatppE13iter_try_fold7flattenB1N_uB2Y_NCINvNvXsi_B4w_B4J_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1N_uB2Y_NCINvNvB5X_3any5checkRB2d_NvNtB14_7helpers27has_uncertain_interpolationE0E0E0E0B14_.exit.loopexit.i.i.i.i, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.aw, i64 64 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i = icmp eq ptr %i.av, %i.au
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringINtNtNtBa_5slice4iter4IterNtNtB14_9generated25InterpolatedStringElementEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMst_B12_NtB12_12TStringValue8elements0NCINvNvMsg_NtB6_7flattenINtB4w_13FlattenCompatppE13iter_try_fold7flattenB1N_uB2Y_NCINvNvXsi_B4w_B4J_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1N_uB2Y_NCINvNvB5X_3any5checkRB2d_NvNtB14_7helpers27has_uncertain_interpolationE0E0E0E0B14_.exit.loopexit.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i, %bb.j
  %i.aw = phi ptr [ %i.av, %bb.j ], [ %.val6.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ax = tail call fastcc noundef zeroext i1 @_RNvYNvNtCskLngH8kgpZI_15ruff_python_ast7helpers27has_uncertain_interpolationINtNtNtCs4NRVxsYgnAr_4core3ops8function5FnMutTRNtNtB6_9generated25InterpolatedStringElementEE8call_mutB6_(ptr noundef nonnull readonly align 8 %i.aw), !noalias !6905
  br i1 %i.ax, label %_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENCNvMsn_B2o_NtB2o_12FStringValue9f_strings0ENCNvB3j_8elements0EIB1X_NtNtB2q_9generated25InterpolatedStringElementEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4g_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB5H_3any5checkRB4l_NvNtB2q_7helpers27has_uncertain_interpolationE0E0B6B_EB2q_.exit.thread, label %bb.j

_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENCNvMsn_B2o_NtB2o_12FStringValue9f_strings0ENCNvB3j_8elements0EIB1X_NtNtB2q_9generated25InterpolatedStringElementEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4g_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB5H_3any5checkRB4l_NvNtB2q_7helpers27has_uncertain_interpolationE0E0B6B_EB2q_.exit.thread: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringINtNtNtBa_5slice4iter4IterNtNtB14_9generated25InterpolatedStringElementEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMst_B12_NtB12_12TStringValue8elements0NCINvNvMsg_NtB6_7flattenINtB4w_13FlattenCompatppE13iter_try_fold7flattenB1N_uB2Y_NCINvNvXsi_B4w_B4J_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1N_uB2Y_NCINvNvB5X_3any5checkRB2d_NvNtB14_7helpers27has_uncertain_interpolationE0E0E0E0B14_.exit.loopexit.i.i.i.i, %.lr.ph, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartRNtB1h_7FStringuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMsn_B1h_NtB1h_12FStringValue9f_strings0NCINvNtB6_3map12map_try_foldB27_INtNtNtBa_5slice4iter4IterNtNtB1j_9generated25InterpolatedStringElementEuB2n_NCNvB38_8elements0NCINvNvMsg_NtB6_7flattenINtB5Z_13FlattenCompatppE13iter_try_fold7flattenB4h_uB2n_NCINvNvXsi_B5Z_B6c_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB4h_uB2n_NCINvNvB7q_3any5checkRB4H_NvNtB1j_7helpers27has_uncertain_interpolationE0E0E0E0E0B1j_.exit.i.i.i.i.i, %.lr.ph56, %switch.lookup, %bb.i, %bb.e, %bb.m, %bb.l, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.k
  %.sroa.0.0 = phi i8 [ 1, %.lr.ph ], [ 1, %.lr.ph56 ], [ 2, %bb.k ], [ %switch.load, %switch.lookup ], [ 0, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map19filter_map_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartRNtB1h_7FStringuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMsn_B1h_NtB1h_12FStringValue9f_strings0NCINvNtB6_3map12map_try_foldB27_INtNtNtBa_5slice4iter4IterNtNtB1j_9generated25InterpolatedStringElementEuB2n_NCNvB38_8elements0NCINvNvMsg_NtB6_7flattenINtB5Z_13FlattenCompatppE13iter_try_fold7flattenB4h_uB2n_NCINvNvXsi_B5Z_B6c_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB4h_uB2n_NCINvNvB7q_3any5checkRB4H_NvNtB1j_7helpers27has_uncertain_interpolationE0E0E0E0E0B1j_.exit.i.i.i.i.i ], [ 0, %bb.a ], [ %spec.select, %bb.m ], [ 2, %bb.l ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %bb.a ], [ 0, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringINtNtNtBa_5slice4iter4IterNtNtB14_9generated25InterpolatedStringElementEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMst_B12_NtB12_12TStringValue8elements0NCINvNvMsg_NtB6_7flattenINtB4w_13FlattenCompatppE13iter_try_fold7flattenB1N_uB2Y_NCINvNvXsi_B4w_B4J_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB1N_uB2Y_NCINvNvB5X_3any5checkRB2d_NvNtB14_7helpers27has_uncertain_interpolationE0E0E0E0B14_.exit.loopexit.i.i.i.i ]
  ret i8 %.sroa.0.0

switch.lookup:                                    ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !3, !noundef !3
  %i.ba = load i32, ptr %i.az, align 8, !range !613, !noundef !3
  %i.bb = zext nneg i32 %i.ba to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMNtCskLngH8kgpZI_15ruff_python_ast7helpersNtB2_10SideEffect9from_expr, i64 %i.bb
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENCNvMsn_B2o_NtB2o_12FStringValue9f_strings0ENCNvB3j_8elements0EIB1X_NtNtB2q_9generated25InterpolatedStringElementEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4g_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB5H_3any5checkRB4l_NvNtB2q_7helpers27has_uncertain_interpolationE0E0B6B_EB2q_.exit.thread

bb.k:                                             ; preds = %bb.c, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENCNvMsn_B2o_NtB2o_12FStringValue9f_strings0ENCNvB3j_8elements0EIB1X_NtNtB2q_9generated25InterpolatedStringElementEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4g_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB5H_3any5checkRB4l_NvNtB2q_7helpers27has_uncertain_interpolationE0E0B6B_EB2q_.exit.thread

bb.l:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.be = load i32, ptr %i.bd, align 8, !range !613, !noundef !3
  %i.bf = icmp eq i32 %i.be, 28
  br i1 %i.bf, label %bb.m, label %_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENCNvMsn_B2o_NtB2o_12FStringValue9f_strings0ENCNvB3j_8elements0EIB1X_NtNtB2q_9generated25InterpolatedStringElementEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4g_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB5H_3any5checkRB4l_NvNtB2q_7helpers27has_uncertain_interpolationE0E0B6B_EB2q_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 23
  %i.bi = load i8, ptr %i.bh, align 1, !range !1631, !alias.scope !6910, !noundef !3 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !6910, !noundef !3
  %i.bl = and i64 %i.bk, 72057594037927935
  %i.bm = icmp ult i8 %i.bi, -48
  %i.bn = zext i8 %i.bi to i64
  %i.bo = add nsw i64 %i.bn, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.bo, i64 16)
  %.sroa.0.0.i18 = select i1 %i.bm, i64 %spec.store.select.i, i64 %i.bl
  %i.bp = icmp ugt i8 %i.bi, -49
  %i.bq = load ptr, ptr %i.bg, align 8, !alias.scope !6910
  %.sroa.01.0.i = select i1 %i.bp, ptr %i.bq, ptr %i.bg
  %i.br = tail call fastcc noundef zeroext i1 @_RINvNtCskLngH8kgpZI_15ruff_python_ast7helpers23is_iterable_initializerNCNvMB2_NtB2_10SideEffect9from_expr0EB4_(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i18, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  %spec.select = select i1 %i.br, i8 0, i8 2
  br label %_RINvMsg_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENCNvMsn_B2o_NtB2o_12FStringValue9f_strings0ENCNvB3j_8elements0EIB1X_NtNtB2q_9generated25InterpolatedStringElementEE13iter_try_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator8try_fold7flattenB4g_uINtNtNtBc_3ops12control_flow11ControlFlowuENCINvNvB5H_3any5checkRB4l_NvNtB2q_7helpers27has_uncertain_interpolationE0E0B6B_EB2q_.exit.thread
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMNtCskLngH8kgpZI_15ruff_python_ast9find_nodeNtB2_12CoveringNode4node(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @250, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #61
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr [16 x i8], ptr %i.d, i64 %i.b ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -16
  %i.g = load i64, ptr %i.f, align 8, !range !226, !noundef !3
  %i.h = getelementptr i8, ptr %i.e, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !noundef !3
  %i.j = insertvalue { i64, ptr } poison, i64 %i.g, 0
  %i.k = insertvalue { i64, ptr } %i.j, ptr %i.i, 1
  ret { i64, ptr } %i.k
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define void @_RNvMNtCskLngH8kgpZI_15ruff_python_ast9traversalNtB2_14EnclosingSuite3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 0, 104811045873349726) %2, i64 noundef range(i64 0, 94) %3, ptr nofree noundef readnone captures(address) %4) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %2, 88
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %.sroa.02.08.i = phi i64 [ 0, %.lr.ph.i ], [ %i.j, %bb.c ] ; 3 uses
  %i.c = phi ptr [ %1, %.lr.ph.i ], [ %i.i, %bb.c ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  %i.e = load i8, ptr %i.d, align 4, !range !72, !noalias !6913, !noundef !3
  %i.f = tail call i8 @llvm.umax.i8(i8 %i.e, i8 1)
  %narrow1.i.i.i = add nuw nsw i8 %i.f, 1
  %switch.offset.i.i.i = zext nneg i8 %narrow1.i.i.i to i64
  %i.g = icmp eq ptr %i.c, %4
  %i.h = icmp eq i64 %3, %switch.offset.i.i.i
  %.sroa.0.0.i.i.i = and i1 %i.g, %i.h
  br i1 %.sroa.0.0.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.02.08.i, 1
  %i.k = icmp eq ptr %i.i, %i.a
  br i1 %i.k, label %.loopexit, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.l = icmp samesign ult i64 %.sroa.02.08.i, %2
  tail call void @llvm.assume(i1 %i.l)
  store ptr %1, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.02.08.i, ptr %.sroa.55.0..sroa_idx, align 8
  br label %bb.e

.loopexit:                                        ; preds = %bb.c, %bb.a
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens11token_range(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6917)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !6917, !noalias !6920, !nonnull !3, !noundef !3 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val39.i = load i64, ptr %i.b, align 8, !alias.scope !6917, !noalias !6920, !noundef !3 ; 8 uses
  switch i64 %.val39.i, label %.lr.ph.i.i.i.i [
    i64 0, label %.thread25
    i64 1, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens22binary_search_by_start0EBz_.exit.i.i
  ]

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.sroa.01.020.i.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i.i ], [ %.val39.i, %bb.a ] ; 2 uses
  %.sroa.05.019.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = lshr i64 %.sroa.01.020.i.i.i.i, 1        ; 2 uses
  %i.d = add nuw nsw i64 %i.c, %.sroa.05.019.i.i.i.i ; 3 uses
  %i.e = icmp ult i64 %i.d, %.val39.i
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [12 x i8], ptr %.val.i, i64 %i.d
  %.val16.i.i.i.i = load i32, ptr %i.f, align 4, !alias.scope !6922, !noalias !6927, !noundef !3
  %.not.i.i.i.i = icmp ult i32 %.val16.i.i.i.i, %1
  %i.g = select i1 %.not.i.i.i.i, i64 %i.d, i64 %.sroa.05.019.i.i.i.i, !unpredictable !3 ; 2 uses
  %i.h = sub nuw nsw i64 %.sroa.01.020.i.i.i.i, %i.c ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %.lr.ph.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens22binary_search_by_start0EBz_.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens22binary_search_by_start0EBz_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %.val.i, i64 %.sroa.05.0.lcssa.i.i.i.i
  %.val14.i.i.i.i = load i32, ptr %i.j, align 4, !alias.scope !6922, !noalias !6927, !noundef !3
  %i.k = icmp ult i32 %.val14.i.i.i.i, %1
  %i.l = zext i1 %i.k to i64
  %i.m = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.l ; 5 uses
  %i.n = icmp ule i64 %i.m, %.val39.i
  tail call void @llvm.assume(i1 %i.n)
  %.not.i.i = icmp eq i64 %.val39.i, %i.m
  br i1 %.not.i.i, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.thread44.i, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.i

_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.i: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens22binary_search_by_start0EBz_.exit.i.i
  %i.o = getelementptr [12 x i8], ptr %.val.i, i64 %i.m ; 5 uses
  %i.p = load i32, ptr %i.o, align 4, !noalias !6930, !noundef !3
  %.not.i = icmp eq i32 %i.p, %1
  %i.q = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %.not.i, label %bb.b, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.i

_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.i: ; preds = %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.i
  br i1 %i.q, label %.thread25, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.thread44.i

bb.b:                                             ; preds = %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.i
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.428.0..sroa_idx.i = getelementptr i8, ptr %i.o, i64 -8
  %.sroa.428.0.copyload.i = load i32, ptr %.sroa.428.0..sroa_idx.i, align 4, !noalias !6930
  %i.r = icmp eq i32 %.sroa.428.0.copyload.i, %1
  br i1 %i.r, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens9at_offset.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !noalias !6917
  br label %.thread25

_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.thread44.i: ; preds = %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.i, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens22binary_search_by_start0EBz_.exit.i.i
  %.sroa.4.0.i.i3.i4246.i = phi i64 [ %i.m, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.i ], [ %.val39.i, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens22binary_search_by_start0EBz_.exit.i.i ]
  %i.s = add nsw i64 %.sroa.4.0.i.i3.i4246.i, -1  ; 3 uses
  %i.t = icmp ult i64 %i.s, %.val39.i
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.thread44.i
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %.val.i, i64 %i.s ; 2 uses
  %.sroa.030.0.copyload.i = load i32, ptr %i.u, align 4, !noalias !6930 ; 2 uses
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.sroa.431.0.copyload.i = load i32, ptr %.sroa.431.0..sroa_idx.i, align 4, !noalias !6930 ; 2 uses
  %i.v = icmp ule i32 %.sroa.030.0.copyload.i, %1
  %i.w = icmp ule i32 %1, %.sroa.431.0.copyload.i
  %or.cond.i = and i1 %i.v, %i.w                  ; 2 uses
  %spec.select = select i1 %or.cond.i, i32 %.sroa.431.0.copyload.i, i32 %1
  %spec.select27 = select i1 %or.cond.i, i32 %.sroa.030.0.copyload.i, i32 %1
  br label %.thread25

bb.f:                                             ; preds = %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.thread44.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %.val39.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #61, !noalias !6930
  unreachable

_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens9at_offset.exit.thread: ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.o, i64 -12
  %.sroa.027.0.copyload.i = load i32, ptr %i.x, align 4, !noalias !6930
  %.sroa.12.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 10
  %.sroa.12.12.copyload = load i8, ptr %.sroa.12.12..sroa_idx, align 2, !noalias !6917
  %.sroa.12.12.copyload.fr = freeze i8 %.sroa.12.12.copyload
  %i.y = icmp eq i8 %.sroa.12.12.copyload.fr, 108
  %spec.select28 = select i1 %i.y, i32 %.sroa.027.0.copyload.i, i32 %1
  br label %.thread25

.thread25:                                        ; preds = %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens9at_offset.exit.thread, %bb.e, %bb.d, %bb.a, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.i
  %i.z = phi i32 [ %.sroa.6.0.copyload, %bb.d ], [ %1, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens9at_offset.exit.thread ], [ %1, %bb.a ], [ %spec.select, %bb.e ], [ %1, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.i ]
  %i.aa = phi i32 [ %1, %bb.d ], [ %spec.select28, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens9at_offset.exit.thread ], [ %1, %bb.a ], [ %spec.select27, %bb.e ], [ %1, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.i ]
  %i.ab = insertvalue { i32, i32 } poison, i32 %i.aa, 0
  %i.ac = insertvalue { i32, i32 } %i.ab, i32 %i.z, 1
  ret { i32, i32 } %i.ac
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 8 uses
  switch i64 %i.g, label %.lr.ph.i.i [
    i64 0, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.thread
    i64 1, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit
  ]

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.021.i.i = phi i64 [ %i.n, %.lr.ph.i.i ], [ %i.g, %bb.a ] ; 2 uses
  %.sroa.05.020.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = lshr i64 %.sroa.01.021.i.i, 1            ; 2 uses
  %i.i = add nuw nsw i64 %i.h, %.sroa.05.020.i.i  ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.i
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val16.i.i = load i32, ptr %i.l, align 4, !alias.scope !6931, !noalias !6936, !noundef !3
  %.not.i18.i.i = icmp ugt i32 %.val16.i.i, %1
  %i.m = select i1 %.not.i18.i.i, i64 %.sroa.05.020.i.i, i64 %i.i, !unpredictable !3 ; 2 uses
  %i.n = sub nuw nsw i64 %.sroa.01.021.i.i, %i.h  ; 2 uses
  %i.o = icmp ugt i64 %i.n, 1
  br i1 %i.o, label %.lr.ph.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit

_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit: ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.m, %.lr.ph.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %.sroa.05.0.lcssa.i.i
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %.val14.i.i = load i32, ptr %i.q, align 4, !alias.scope !6931, !noalias !6936, !noundef !3
  %.not.i.i.i = icmp ule i32 %.val14.i.i, %1
  %i.r = zext i1 %.not.i.i.i to i64
  %i.s = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.r ; 4 uses
  %i.t = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.s ; 4 uses
  %.not = icmp eq i64 %i.g, %i.s
  br i1 %.not, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit
  store ptr %i.u, ptr %i.b, align 8
  %i.v = load i32, ptr %i.u, align 4, !noundef !3
  %.not10 = icmp ugt i32 %1, %i.v
  br i1 %.not10, label %bb.c, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.thread, !prof !5

_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.thread: ; preds = %bb.a, %bb.b, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit
  %i.w = phi ptr [ %i.u, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit ], [ %i.u, %bb.b ], [ %i.e, %bb.a ]
  %.sroa.4.0.i.i13 = phi i64 [ %i.g, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit ], [ %i.s, %bb.b ], [ %i.g, %bb.a ]
  %i.x = sub nuw i64 %i.g, %.sroa.4.0.i.i13
  %i.y = insertvalue { ptr, i64 } poison, ptr %i.w, 0
  %i.z = insertvalue { ptr, i64 } %i.y, i64 %i.x, 1
  ret { ptr, i64 } %i.z

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtCs2MoD74u7shA_14ruff_text_size4sizeNtB2_8TextSizeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.aa, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenNtB6_5Debug3fmtBA_, ptr %.sroa.47.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @256, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @259) #61
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens6before(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6939)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %1, ptr %i.c, align 4, !noalias !6939
  switch i64 %i.g, label %.lr.ph.i.i.i [
    i64 0, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens11before_impl.exit
    i64 1, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i
  ]

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.01.020.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i ], [ %i.g, %bb.a ] ; 2 uses
  %.sroa.05.019.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = lshr i64 %.sroa.01.020.i.i.i, 1          ; 2 uses
  %i.i = add nuw nsw i64 %i.h, %.sroa.05.019.i.i.i ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.i
  %.val16.i.i.i = load i32, ptr %i.k, align 4, !alias.scope !6942, !noalias !6947, !noundef !3
  %.not.i.i.i = icmp ult i32 %.val16.i.i.i, %1
  %i.l = select i1 %.not.i.i.i, i64 %i.i, i64 %.sroa.05.019.i.i.i, !unpredictable !3 ; 2 uses
  %i.m = sub nuw nsw i64 %.sroa.01.020.i.i.i, %i.h ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %.lr.ph.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i

_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %i.l, %.lr.ph.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %.sroa.05.0.lcssa.i.i.i
  %.val14.i.i.i = load i32, ptr %i.o, align 4, !alias.scope !6942, !noalias !6947, !noundef !3
  %i.p = icmp ult i32 %.val14.i.i.i, %1
  %i.q = zext i1 %i.p to i64
  %i.r = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i, %i.q ; 4 uses
  %i.s = icmp ule i64 %i.r, %i.g
  tail call void @llvm.assume(i1 %i.s)
  %.not9.i = icmp eq i64 %i.r, 0
  br i1 %.not9.i, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens11before_impl.exit, label %bb.b

bb.b:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i
  %i.t = getelementptr [12 x i8], ptr %i.e, i64 %i.r ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -12
  store ptr %i.u, ptr %i.b, align 8, !noalias !6939
  %i.v = getelementptr i8, ptr %i.t, i64 -8
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !6939, !noundef !3
  %.not10.i = icmp ult i32 %1, %i.w
  br i1 %.not10.i, label %bb.c, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens11before_impl.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6939
  store ptr %i.c, ptr %i.a, align 8, !noalias !6939
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtCs2MoD74u7shA_14ruff_text_size4sizeNtB2_8TextSizeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !6939
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.x, align 8, !noalias !6939
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenNtB6_5Debug3fmtBA_, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !6939
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @256, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #61
  unreachable

_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens11before_impl.exit: ; preds = %bb.a, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i, %bb.b
  %.sroa.4.0.i.i13.i = phi i64 [ 0, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i ], [ %i.r, %bb.b ], [ %i.g, %bb.a ]
  %i.y = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.z = insertvalue { ptr, i64 } %i.y, i64 %.sroa.4.0.i.i13.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { ptr, i64 } %i.z
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens8in_range(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6950)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %1, ptr %i.f, align 4, !noalias !6950
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !6950, !nonnull !3, !noundef !3 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !6950, !noundef !3 ; 8 uses
  switch i64 %i.j, label %.lr.ph.i.i.i [
    i64 0, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit
    i64 1, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i
  ]

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.01.021.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ %i.j, %bb.a ] ; 2 uses
  %.sroa.05.020.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.sroa.01.021.i.i.i, 1          ; 2 uses
  %i.l = add nuw nsw i64 %i.k, %.sroa.05.020.i.i.i ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.j
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %i.l
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %.val16.i.i.i = load i32, ptr %i.o, align 4, !alias.scope !6953, !noalias !6958, !noundef !3
  %.not.i18.i.i.i = icmp ugt i32 %.val16.i.i.i, %1
  %i.p = select i1 %.not.i18.i.i.i, i64 %.sroa.05.020.i.i.i, i64 %i.l, !unpredictable !3 ; 2 uses
  %i.q = sub nuw nsw i64 %.sroa.01.021.i.i.i, %i.k ; 2 uses
  %i.r = icmp ugt i64 %i.q, 1
  br i1 %i.r, label %.lr.ph.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i

_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %i.p, %.lr.ph.i.i.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %.sroa.05.0.lcssa.i.i.i
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %.val14.i.i.i = load i32, ptr %i.t, align 4, !alias.scope !6953, !noalias !6958, !noundef !3
  %.not.i.i.i.i = icmp ule i32 %.val14.i.i.i, %1
  %i.u = zext i1 %.not.i.i.i.i to i64
  %i.v = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i, %i.u ; 4 uses
  %i.w = icmp ule i64 %i.v, %i.j
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %i.v ; 4 uses
  %.not.i = icmp eq i64 %i.j, %i.v
  br i1 %.not.i, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit, label %bb.b

bb.b:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i
  store ptr %i.x, ptr %i.e, align 8, !noalias !6950
  %i.y = load i32, ptr %i.x, align 4, !noalias !6950, !noundef !3
  %.not10.i = icmp ugt i32 %1, %i.y
  br i1 %.not10.i, label %bb.c, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6950
  store ptr %i.f, ptr %i.d, align 8, !noalias !6950
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXNtCs2MoD74u7shA_14ruff_text_size4sizeNtB2_8TextSizeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !6950
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.z, align 8, !noalias !6950
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenNtB6_5Debug3fmtBA_, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !6950
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @256, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @259) #61, !noalias !6950
  unreachable

_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit: ; preds = %bb.a, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i, %bb.b
  %i.aa = phi ptr [ %i.x, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i ], [ %i.x, %bb.b ], [ %i.h, %bb.a ] ; 4 uses
  %.sroa.4.0.i.i13.i = phi i64 [ %i.j, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i ], [ %i.v, %bb.b ], [ %i.j, %bb.a ]
  %i.ab = sub nuw i64 %i.j, %.sroa.4.0.i.i13.i    ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6961)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %2, ptr %i.c, align 4, !noalias !6961
  switch i64 %i.ab, label %.lr.ph.i.i.i7 [
    i64 0, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens11before_impl.exit
    i64 1, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i
  ]

.lr.ph.i.i.i7:                                    ; preds = %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit, %.lr.ph.i.i.i7
  %.sroa.01.020.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i7 ], [ %i.ab, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit ] ; 2 uses
  %.sroa.05.019.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i7 ], [ 0, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit ] ; 2 uses
  %i.ac = lshr i64 %.sroa.01.020.i.i.i, 1         ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, %.sroa.05.019.i.i.i ; 3 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %i.ad
  %.val16.i.i.i8 = load i32, ptr %i.af, align 4, !alias.scope !6964, !noalias !6969, !noundef !3
  %.not.i.i.i = icmp ult i32 %.val16.i.i.i8, %2
  %i.ag = select i1 %.not.i.i.i, i64 %i.ad, i64 %.sroa.05.019.i.i.i, !unpredictable !3 ; 2 uses
  %i.ah = sub nuw nsw i64 %.sroa.01.020.i.i.i, %i.ac ; 2 uses
  %i.ai = icmp ugt i64 %i.ah, 1
  br i1 %i.ai, label %.lr.ph.i.i.i7, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i

_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i: ; preds = %.lr.ph.i.i.i7, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit
  %.sroa.05.0.lcssa.i.i.i1 = phi i64 [ 0, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit ], [ %i.ag, %.lr.ph.i.i.i7 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %.sroa.05.0.lcssa.i.i.i1
  %.val14.i.i.i2 = load i32, ptr %i.aj, align 4, !alias.scope !6964, !noalias !6969, !noundef !3
  %i.ak = icmp ult i32 %.val14.i.i.i2, %2
  %i.al = zext i1 %i.ak to i64
  %i.am = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i1, %i.al ; 4 uses
  %i.an = icmp ule i64 %i.am, %i.ab
  tail call void @llvm.assume(i1 %i.an)
  %.not9.i = icmp eq i64 %i.am, 0
  br i1 %.not9.i, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens11before_impl.exit, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i
  %i.ao = getelementptr [12 x i8], ptr %i.aa, i64 %i.am ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 -12
  store ptr %i.ap, ptr %i.b, align 8, !noalias !6961
  %i.aq = getelementptr i8, ptr %i.ao, i64 -8
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !6961, !noundef !3
  %.not10.i3 = icmp ult i32 %2, %i.ar
  br i1 %.not10.i3, label %bb.e, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens11before_impl.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6961
  store ptr %i.c, ptr %i.a, align 8, !noalias !6961
  %.sroa.43.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtCs2MoD74u7shA_14ruff_text_size4sizeNtB2_8TextSizeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i5, align 8, !noalias !6961
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.as, align 8, !noalias !6961
  %.sroa.47.0..sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenNtB6_5Debug3fmtBA_, ptr %.sroa.47.0..sroa_idx.i6, align 8, !noalias !6961
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @256, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #61
  unreachable

_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens11before_impl.exit: ; preds = %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i, %bb.d
  %.sroa.4.0.i.i13.i4 = phi i64 [ 0, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i ], [ %i.am, %bb.d ], [ %i.ab, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit ]
  %i.at = insertvalue { ptr, i64 } poison, ptr %i.aa, 0
  %i.au = insertvalue { ptr, i64 } %i.at, i64 %.sroa.4.0.i.i13.i4, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { ptr, i64 } %i.au
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens8split_at(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %2, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 6 uses
  switch i64 %i.g, label %.lr.ph.i.i [
    i64 0, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token8split_atBy_.exit
    i64 1, label %._crit_edge.i.i
  ]

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.020.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.g, %bb.a ] ; 2 uses
  %.sroa.05.019.i.i = phi i64 [ %i.l, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = lshr i64 %.sroa.01.020.i.i, 1            ; 2 uses
  %i.i = add nuw nsw i64 %i.h, %.sroa.05.019.i.i  ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.i
  %.val16.i.i = load i32, ptr %i.k, align 4, !alias.scope !6972, !noalias !6977, !noundef !3
  %.not.i.i = icmp ult i32 %.val16.i.i, %2
  %i.l = select i1 %.not.i.i, i64 %i.i, i64 %.sroa.05.019.i.i, !unpredictable !3 ; 2 uses
  %i.m = sub nuw nsw i64 %.sroa.01.020.i.i, %i.h  ; 2 uses
  %i.n = icmp ugt i64 %i.m, 1
  br i1 %i.n, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.l, %.lr.ph.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %.sroa.05.0.lcssa.i.i
  %.val14.i.i = load i32, ptr %i.o, align 4, !alias.scope !6972, !noalias !6977, !noundef !3
  %i.p = icmp ult i32 %.val14.i.i, %2
  %i.q = zext i1 %i.p to i64
  %i.r = add nuw nsw i64 %.sroa.05.0.lcssa.i.i, %i.q ; 2 uses
  %i.s = icmp ule i64 %i.r, %i.g
  tail call void @llvm.assume(i1 %i.s)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token8split_atBy_.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token8split_atBy_.exit: ; preds = %bb.a, %._crit_edge.i.i
  %.sroa.4.0.i.i = phi i64 [ %i.g, %bb.a ], [ %i.r, %._crit_edge.i.i ] ; 4 uses
  %i.t = getelementptr [12 x i8], ptr %i.e, i64 %.sroa.4.0.i.i ; 3 uses
  %i.u = sub nuw nsw i64 %i.g, %.sroa.4.0.i.i
  store ptr %i.e, ptr %0, align 8, !alias.scope !6980, !noalias !6983
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !6980, !noalias !6983
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.t, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !6980, !noalias !6983
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.u, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !6980, !noalias !6983
  %.not = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token8split_atBy_.exit
  %i.v = getelementptr i8, ptr %i.t, i64 -12
  store ptr %i.v, ptr %i.b, align 8
  %i.w = getelementptr i8, ptr %i.t, i64 -8
  %i.x = load i32, ptr %i.w, align 4, !noundef !3
  %.not8 = icmp ult i32 %2, %i.x
  br i1 %.not8, label %bb.d, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token8split_atBy_.exit
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtCs2MoD74u7shA_14ruff_text_size4sizeNtB2_8TextSizeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.y, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenNtB6_5Debug3fmtBA_, ptr %.sroa.47.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @256, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @260) #61
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens9at_offset(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 4 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val39 = load i64, ptr %i.b, align 8, !noundef !3 ; 8 uses
  switch i64 %.val39, label %.lr.ph.i.i.i [
    i64 0, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.thread
    i64 1, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens22binary_search_by_start0EBz_.exit.i
  ]

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.01.020.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i ], [ %.val39, %bb.a ] ; 2 uses
  %.sroa.05.019.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.c = lshr i64 %.sroa.01.020.i.i.i, 1          ; 2 uses
  %i.d = add nuw nsw i64 %i.c, %.sroa.05.019.i.i.i ; 3 uses
  %i.e = icmp ult i64 %i.d, %.val39
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.d
  %.val16.i.i.i = load i32, ptr %i.f, align 4, !alias.scope !6985, !noalias !6990, !noundef !3
  %.not.i.i.i = icmp ult i32 %.val16.i.i.i, %2
  %i.g = select i1 %.not.i.i.i, i64 %i.d, i64 %.sroa.05.019.i.i.i, !unpredictable !3 ; 2 uses
  %i.h = sub nuw nsw i64 %.sroa.01.020.i.i.i, %i.c ; 2 uses
  %i.i = icmp ugt i64 %i.h, 1
  br i1 %i.i, label %.lr.ph.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens22binary_search_by_start0EBz_.exit.i

_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens22binary_search_by_start0EBz_.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph.i.i.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %.sroa.05.0.lcssa.i.i.i
  %.val14.i.i.i = load i32, ptr %i.j, align 4, !alias.scope !6985, !noalias !6990, !noundef !3
  %i.k = icmp ult i32 %.val14.i.i.i, %2
  %i.l = zext i1 %i.k to i64
  %i.m = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i, %i.l ; 5 uses
  %i.n = icmp ule i64 %i.m, %.val39
  tail call void @llvm.assume(i1 %i.n)
  %.not.i = icmp eq i64 %.val39, %i.m
  br i1 %.not.i, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.thread44, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit

_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens22binary_search_by_start0EBz_.exit.i
  %i.o = getelementptr [12 x i8], ptr %.val, i64 %i.m ; 6 uses
  %i.p = load i32, ptr %i.o, align 4, !noundef !3
  %.not = icmp eq i32 %i.p, %2
  %i.q = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %.not, label %bb.b, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread

_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread: ; preds = %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit
  br i1 %i.q, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.thread, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.thread44

bb.b:                                             ; preds = %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit
  br i1 %i.q, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.428.0..sroa_idx = getelementptr i8, ptr %i.o, i64 -8
  %.sroa.428.0.copyload = load i32, ptr %.sroa.428.0..sroa_idx, align 4
  %i.r = icmp eq i32 %.sroa.428.0.copyload, %2
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.o, i64 -12
  %.sroa.529.0..sroa_idx = getelementptr i8, ptr %i.o, i64 -4
  %.sroa.529.0.copyload = load i32, ptr %.sroa.529.0..sroa_idx, align 4
  %.sroa.027.0.copyload = load i32, ptr %i.s, align 4
  store i32 %.sroa.027.0.copyload, ptr %0, align 4
  %.sroa.57.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %.sroa.57.0..sroa_idx8, align 4
  %.sroa.6.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.529.0.copyload, ptr %.sroa.6.0..sroa_idx10, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false)
  br label %bb.i

bb.e:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 108, ptr %i.u, align 2
  br label %bb.i

_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.thread44: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens22binary_search_by_start0EBz_.exit.i, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread
  %.sroa.4.0.i.i3.i4246 = phi i64 [ %i.m, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread ], [ %.val39, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens22binary_search_by_start0EBz_.exit.i ]
  %i.v = add nsw i64 %.sroa.4.0.i.i3.i4246, -1    ; 3 uses
  %i.w = icmp ult i64 %i.v, %.val39
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.thread44
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %i.v ; 3 uses
  %.sroa.030.0.copyload = load i32, ptr %i.x, align 4 ; 2 uses
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %.sroa.431.0.copyload = load i32, ptr %.sroa.431.0..sroa_idx, align 4 ; 2 uses
  %i.y = icmp ule i32 %.sroa.030.0.copyload, %2
  %i.z = icmp ule i32 %2, %.sroa.431.0.copyload
  %or.cond = and i1 %i.y, %i.z
  br i1 %or.cond, label %bb.h, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.thread

bb.g:                                             ; preds = %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.thread44
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %.val39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261) #61
  unreachable

bb.h:                                             ; preds = %bb.f
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.532.0.copyload = load i32, ptr %.sroa.532.0..sroa_idx, align 4
  store i32 %.sroa.030.0.copyload, ptr %0, align 4
  %.sroa.618.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.431.0.copyload, ptr %.sroa.618.0..sroa_idx19, align 4
  %.sroa.721.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.532.0.copyload, ptr %.sroa.721.0..sroa_idx22, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 108, ptr %i.aa, align 2
  br label %bb.i

_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.thread: ; preds = %bb.a, %bb.f, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 107, ptr %i.ab, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens22binary_search_by_start.exit.thread.thread, %bb.d, %bb.h
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtNtCsiVHPhtDv1FH_6memchr4arch6x86_644avx210packedpairNtB2_6Finder14with_pair_impl(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 32 captures(none) dereferenceable(160) %0, i64 noundef range(i64 2, -9223372036854775808) %1, i8 noundef %2, i8 noundef %3) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i8 %2 to i64                        ; 3 uses
  %i.b = icmp samesign ugt i64 %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %3 to i64                        ; 3 uses
  %i.d = icmp samesign ugt i64 %1, %i.c
  br i1 %i.d, label %_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic10packedpairINtB2_6FinderNtNtNtCs4NRVxsYgnAr_4core9core_arch3x867___m256iE3newCskLngH8kgpZI_15ruff_python_ast.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef range(i64 2, -9223372036854775808) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #61, !noalias !6993
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.c, i64 noundef range(i64 2, -9223372036854775808) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #61, !noalias !6993
  unreachable

_RNvMNtNtNtCsiVHPhtDv1FH_6memchr4arch7generic10packedpairINtB2_6FinderNtNtNtCs4NRVxsYgnAr_4core9core_arch3x867___m256iE3newCskLngH8kgpZI_15ruff_python_ast.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr @233, i64 %i.a
  %i.f = load i8, ptr %i.e, align 1, !noalias !6993, !noundef !3 ; 2 uses
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %.sroa.0.0.i = tail call noundef i8 @llvm.umax.i8(i8 %3, i8 %2)
  %i.i = zext i8 %.sroa.0.0.i to i64              ; 2 uses
  %i.j = add nuw nsw i64 %i.i, 16
  %.sroa.0.0.i1 = tail call noundef i64 @llvm.umax.i64(i64 %i.j, i64 range(i64 2, -9223372036854775808) %1)
  %i.k = getelementptr inbounds nuw i8, ptr @233, i64 %i.c
  %i.l = load i8, ptr %i.k, align 1, !noalias !6993, !noundef !3 ; 2 uses
  %i.m = insertelement <16 x i8> poison, i8 %i.l, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.o = add nuw nsw i64 %i.i, 32
  %.sroa.0.0.i3 = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 range(i64 2, -9223372036854775808) %1)
  %i.p = insertelement <32 x i8> poison, i8 %i.f, i64 0
  %i.q = shufflevector <32 x i8> %i.p, <32 x i8> poison, <32 x i32> zeroinitializer
  %i.r = insertelement <32 x i8> poison, i8 %i.l, i64 0
  %i.s = shufflevector <32 x i8> %i.r, <32 x i8> poison, <32 x i32> zeroinitializer
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <16 x i8> %i.h, ptr %i.t, align 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <16 x i8> %i.n, ptr %.sroa.4.0..sroa_idx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.0.0.i1, ptr %.sroa.5.0..sroa_idx, align 32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 %2, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 137
  store i8 %3, ptr %.sroa.7.0..sroa_idx, align 1
  store <32 x i8> %i.q, ptr %0, align 32
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <32 x i8> %i.s, ptr %.sroa.42.0..sroa_idx, align 32
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.0.0.i3, ptr %.sroa.53.0..sroa_idx, align 32
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %2, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 %3, ptr %.sroa.75.0..sroa_idx, align 1
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsg7m2K3K1Fzf_11compact_str4reprNtB5_4Repr8push_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 8 uses
  tail call void asm sideeffect inteldialect "/* ${0:q} */", "r,~{dirflag},~{fpsr},~{flags}"(i64 %i.c) #64, !srcloc !6996
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 23 ; 7 uses
  %i.e = load i8, ptr %i.d, align 1, !range !6997, !noundef !3 ; 10 uses
  %i.f = zext i8 %i.e to i64
  %i.g = add nsw i64 %i.f, -192
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 24)
  %i.h = icmp ugt i8 %i.e, -41                    ; 2 uses
  %spec.store.select = select i1 %i.h, i64 %i.c, i64 %.sroa.0.0.i ; 4 uses
  %i.i = icmp eq i8 %i.e, -39
  br i1 %i.i, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.b
  %.pre10 = add i64 %i.c, %2
  br label %bb.e

bb.c:                                             ; preds = %bb.ax, %bb.ay, %bb.av, %bb.aw, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.j = add i64 %spec.store.select, %2           ; 2 uses
  %cond = icmp eq i8 %i.e, -40
  br i1 %cond, label %bb.ap, label %bb.ao, !prof !6998

bb.e:                                             ; preds = %._crit_edge, %bb.ao
  %.pre-phi = phi i64 [ %.pre10, %._crit_edge ], [ %i.j, %bb.ao ] ; 4 uses
  %i.k = phi i8 [ -39, %._crit_edge ], [ %i.cy, %bb.ao ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6999)
  tail call void asm sideeffect inteldialect "/* ${0:q} */", "r,~{dirflag},~{fpsr},~{flags}"(i64 %i.c) #64, !srcloc !6996
  %i.l = icmp ult i64 %.pre-phi, %spec.store.select
  br i1 %i.l, label %bb.aq, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  switch i8 %i.e, label %bb.h [
    i8 -39, label %.thread.i
    i8 -40, label %bb.i
end_hunk_3
begin_hunk_4_@_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueE6insertCskLngH8kgpZI_15ruff_python_ast:bb.a
.lr.ph.i.i:                                       ; preds = %bb.aj
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.57.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.bc

bb.ak:                                            ; preds = %bb.ai, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i)
  br label %bb.co

._crit_edge.i.i:                                  ; preds = %bb.cm, %bb.aj
  %.sroa.17.0.i.i = phi i64 [ %.sroa.6.0.copyload.i.i.i.i.i, %bb.aj ], [ %.sroa.6.0.copyload.i.i.i37.i.i, %bb.cm ] ; 2 uses
  %.sroa.14.0.i.i = phi ptr [ %.sroa.5.0.copyload.i.i.i.i.i, %bb.aj ], [ %.sroa.5.0.copyload.i.i.i35.i.i, %bb.cm ] ; 5 uses
  %.lcssa222.i.i = phi ptr [ %i.bf, %bb.aj ], [ %i.gj, %bb.cm ] ; 4 uses
  %.lcssa214.i.i = phi i64 [ 0, %bb.aj ], [ %i.du, %bb.cm ] ; 3 uses
  %.lcssa.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.aj ], [ %i.dq, %bb.cm ]
  %.sroa.0.0.copyload.i.i.i33199.lcssa.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.aj ], [ %.sroa.0.0.copyload.i.i.i33.i.i, %bb.cm ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7489
  %.sroa.02.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.02.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19.i.i, i64 32, i1 false), !noalias !7489
  store i64 %.sroa.0.0.copyload.i.i.i33199.lcssa.i.i, ptr %i.f, align 8, !noalias !7489
  %.sroa.02.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.14.0.i.i, ptr %.sroa.02.sroa.4.0..sroa_idx.i.i, align 8, !noalias !7489
  %.sroa.02.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.17.0.i.i, ptr %.sroa.02.sroa.5.0..sroa_idx.i.i, align 8, !noalias !7489
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %.lcssa.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !7489
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 %.lcssa214.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !7489
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr %.lcssa222.i.i, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !7489
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i64 %.lcssa214.i.i, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !noalias !7489
  %i.cx = load ptr, ptr %1, align 8, !noalias !7493, !noundef !3 ; 4 uses
  %.not.i23.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i23.i.i, label %bb.al, label %bb.an, !prof !5

bb.al:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #61
          to label %bb.am unwind label %bb.ay, !noalias !7493

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7496)
  %i.cy = load i64, ptr %i.i, align 8, !alias.scope !7496, !noalias !7493, !noundef !3 ; 2 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !7499
  %i.cz = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 728, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !7499 ; 13 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.ao, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i, !prof !5

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #61
          to label %.noexc.i.i.i.i unwind label %bb.as, !noalias !7499

.noexc.i.i.i.i:                                   ; preds = %bb.ao
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i: ; preds = %bb.an
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 352
  store ptr null, ptr %i.db, align 8, !noalias !7499
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 626 ; 2 uses
  store i16 0, ptr %i.dc, align 2, !noalias !7499
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 632
  store ptr %i.cx, ptr %i.dd, align 8, !noalias !7499
  %i.de = add i64 %i.cy, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ap, label %bb.at, !prof !5

bb.ap:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #61
          to label %bb.aq unwind label %bb.ar, !noalias !7499

bb.aq:                                            ; preds = %bb.ap
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cz, i64 noundef 728, i64 noundef 8) #62, !noalias !7499
  br label %.body.i.i.i.i

bb.as:                                            ; preds = %bb.ao
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.as, %bb.ar
  tail call void @llvm.trap()
  unreachable

bb.at:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cx, i64 352
  store ptr %i.cz, ptr %i.dh, align 8, !noalias !7500
  %i.di = getelementptr inbounds nuw i8, ptr %i.cx, i64 624
  store i16 0, ptr %i.di, align 8, !noalias !7505
  store ptr %i.cz, ptr %1, align 8, !alias.scope !7496, !noalias !7493
  store i64 %i.de, ptr %i.i, align 8, !alias.scope !7496, !noalias !7493
  %i.dj = icmp eq i64 %.lcssa214.i.i, %i.cy
  br i1 %i.dj, label %bb.cn, label %.invoke.i.i.i.i, !prof !91

.invoke.i.i.i.i:                                  ; preds = %bb.at
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @347, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @348) #61
          to label %.cont.i.i.i.i unwind label %bb.au, !noalias !7506

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.au:                                            ; preds = %.invoke.i.i.i.i
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %.sroa.02.sroa.6.0..sroa_idx.i.i) #59
          to label %bb.aw unwind label %bb.av, !noalias !7489

bb.av:                                            ; preds = %bb.au
  %i.dl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !7506
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.dm = icmp eq i64 %.sroa.0.0.copyload.i.i.i33199.lcssa.i.i, 0
  br i1 %i.dm, label %.body, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14.0.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i33199.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !7510
  br label %.body

bb.ay:                                            ; preds = %bb.al
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = icmp eq i64 %.sroa.0.0.copyload.i.i.i33199.lcssa.i.i, 0
  br i1 %i.do, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14.0.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i33199.lcssa.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !7513
  br label %bb.bb

bb.ba:                                            ; preds = %bb.bb
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !7493
  unreachable

bb.bb:                                            ; preds = %bb.az, %bb.ay
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef readonly align 8 dereferenceable(32) %.sroa.02.sroa.6.0..sroa_idx.i.i) #59
          to label %.body unwind label %bb.ba, !noalias !7489

bb.bc:                                            ; preds = %.lr.ph.i.i, %bb.cm
  %.sroa.17.1.i.i = phi i64 [ %.sroa.6.0.copyload.i.i.i.i.i, %.lr.ph.i.i ], [ %.sroa.6.0.copyload.i.i.i37.i.i, %bb.cm ] ; 4 uses
  %.sroa.14.1.i.i = phi ptr [ %.sroa.5.0.copyload.i.i.i.i.i, %.lr.ph.i.i ], [ %.sroa.5.0.copyload.i.i.i35.i.i, %bb.cm ] ; 6 uses
  %i.dq = phi ptr [ %i.cv, %.lr.ph.i.i ], [ %i.km, %bb.cm ] ; 20 uses
  %i.dr = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %i.dq, %bb.cm ]
  %i.ds = phi i64 [ 0, %.lr.ph.i.i ], [ %i.du, %bb.cm ]
  %i.dt = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %i.gj, %bb.cm ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i33199239.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i.i.i, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i.i.i33.i.i, %bb.cm ] ; 6 uses
  %i.du = add i64 %i.ds, 1                        ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 624
  %i.dw = load i16, ptr %i.dv, align 8, !noalias !7490 ; 4 uses
  %i.dx = zext i16 %i.dw to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.737.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.sroa.6.i.i)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 626 ; 4 uses
  %i.dz = load i16, ptr %i.dy, align 2, !noalias !7516, !noundef !3 ; 5 uses
  %i.ea = icmp ult i16 %i.dz, 11
  br i1 %i.ea, label %bb.bf, label %bb.be

bb.bd:                                            ; preds = %bb.bn
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.be:                                            ; preds = %bb.bc
  %i.ec = icmp ult i16 %i.dw, 5
  br i1 %i.ec, label %bb.bm, label %bb.bj

bb.bf:                                            ; preds = %bb.bc
  %i.ed = zext nneg i16 %i.dz to i64              ; 4 uses
  %i.ee = add nuw nsw i16 %i.dz, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dq, i64 360 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7522)
  %i.eg = add nuw nsw i64 %i.dx, 1                ; 7 uses
  %.not.i.i41.not.i.i = icmp ult i16 %i.dw, %i.dz
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %i.dx ; 7 uses
  br i1 %.not.i.i41.not.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i64 %.sroa.0.0.copyload.i.i.i33199239.i.i, ptr %i.eh, align 8, !alias.scope !7525, !noalias !7527
  %.sroa.946.0..sroa_idx53.i.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %.sroa.14.1.i.i, ptr %.sroa.946.0..sroa_idx53.i.i, align 8, !alias.scope !7525, !noalias !7527
  %.sroa.1155.0..sroa_idx62.i.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i64 %.sroa.17.1.i.i, ptr %.sroa.1155.0..sroa_idx62.i.i, align 8, !alias.scope !7525, !noalias !7527
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.dq, i64 %i.dx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19.i.i, i64 32, i1 false), !noalias !7489
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.ej = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %i.eg
  %i.ek = sub nuw nsw i64 %i.ed, %i.dx            ; 3 uses
  %i.el = mul nuw nsw i64 %i.ek, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr nonnull align 8 %i.eh, i64 %i.el, i1 false), !alias.scope !7531, !noalias !7532
  store i64 %.sroa.0.0.copyload.i.i.i33199239.i.i, ptr %i.eh, align 8, !alias.scope !7525, !noalias !7527
  %.sroa.946.0..sroa_idx51.i.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %.sroa.14.1.i.i, ptr %.sroa.946.0..sroa_idx51.i.i, align 8, !alias.scope !7525, !noalias !7527
  %.sroa.1155.0..sroa_idx60.i.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i64 %.sroa.17.1.i.i, ptr %.sroa.1155.0..sroa_idx60.i.i, align 8, !alias.scope !7525, !noalias !7527
  %i.em = getelementptr inbounds nuw [32 x i8], ptr %i.dq, i64 %i.dx ; 2 uses
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %i.dq, i64 %i.eg
  %i.eo = shl nuw nsw i64 %i.ek, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.en, ptr nonnull align 8 %i.em, i64 %i.eo, i1 false), !alias.scope !7534, !noalias !7537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.em, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.19.i.i, i64 32, i1 false), !noalias !7489
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dq, i64 632 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.eg
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.dx
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = shl nuw nsw i64 %i.ek, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.es, ptr nonnull align 8 %i.eq, i64 %i.et, i1 false), !alias.scope !7539, !noalias !7542
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dq, i64 632 ; 6 uses
  %i.ev = add nuw nsw i64 %i.ed, 2                ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.eg
  store ptr %i.dt, ptr %i.ew, align 8, !alias.scope !7539, !noalias !7542
  store i16 %i.ee, ptr %i.dy, align 2, !noalias !7542
  %i.ex = icmp samesign ult i64 %i.eg, %i.ev
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i.preheader, label %.thread83.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.bi
  %i.ey = add nuw nsw i64 %i.ed, 1
  %i.ez = sub nsw i64 %i.ey, %i.dx
  %i.fa = sub nsw i64 %i.ed, %i.dx
  %xtraiter628 = and i64 %i.ez, 3                 ; 2 uses
  %lcmp.mod629.not = icmp eq i64 %xtraiter628, 0
  br i1 %lcmp.mod629.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.fb, %.lr.ph.i.i.i.i.i.prol ], [ %i.eg, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter630 = phi i64 [ %prol.iter630.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.fc = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.fc)
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !7542, !nonnull !3, !noundef !3 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 352
  store ptr %i.dq, ptr %i.ff, align 8, !noalias !7542
  %i.fg = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 624
  store i16 %i.fg, ptr %i.fh, align 8, !noalias !7542
  %prol.iter630.next = add i64 %prol.iter630, 1   ; 2 uses
  %prol.iter630.cmp.not = icmp eq i64 %prol.iter630.next, %xtraiter628
  br i1 %prol.iter630.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !7543

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.eg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fb, %.lr.ph.i.i.i.i.i.prol ]
  %i.fi = icmp ult i64 %i.fa, 3
  br i1 %i.fi, label %.thread83.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.fj = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.sroa.0.06.i.i.i.i.i
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !7542, !nonnull !3, !noundef !3 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 352
  store ptr %i.dq, ptr %i.fm, align 8, !noalias !7542
  %i.fn = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 624
  store i16 %i.fn, ptr %i.fo, align 8, !noalias !7542
  %i.fp = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.fj
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !7542, !nonnull !3, !noundef !3 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 352
  store ptr %i.dq, ptr %i.fs, align 8, !noalias !7542
  %i.ft = trunc nuw nsw i64 %i.fj to i16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 624
  store i16 %i.ft, ptr %i.fu, align 8, !noalias !7542
  %i.fv = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.fp
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !7542, !nonnull !3, !noundef !3 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 352
  store ptr %i.dq, ptr %i.fy, align 8, !noalias !7542
  %i.fz = trunc nuw nsw i64 %i.fp to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 624
  store i16 %i.fz, ptr %i.ga, align 8, !noalias !7542
  %i.gb = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.gc = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.gc)
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.fv
  %i.ge = load ptr, ptr %i.gd, align 8, !noalias !7542, !nonnull !3, !noundef !3 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 352
  store ptr %i.dq, ptr %i.gf, align 8, !noalias !7542
  %i.gg = trunc nuw nsw i64 %i.fv to i16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 624
  store i16 %i.gg, ptr %i.gh, align 8, !noalias !7542
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.gb, %i.ev
  br i1 %exitcond.not.i.i.i.i.i.3, label %.thread83.i.i, label %.lr.ph.i.i.i.i.i

bb.bj:                                            ; preds = %bb.be
  switch i16 %i.dw, label %bb.bk [
    i16 5, label %bb.bm
    i16 6, label %bb.bl
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.gi = add nsw i64 %i.dx, -7
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.be
  %.sroa.06.0.i.i.i = phi i64 [ 5, %bb.bl ], [ 6, %bb.bk ], [ 4, %bb.be ], [ 5, %bb.bj ] ; 7 uses
  %.sroa.5.0.i.i.i = phi i64 [ 0, %bb.bl ], [ %i.gi, %bb.bk ], [ %i.dx, %bb.be ], [ 5, %bb.bj ] ; 9 uses
  %.sroa.03.0.i.i.i = phi i1 [ true, %bb.bl ], [ true, %bb.bk ], [ false, %bb.be ], [ false, %bb.bj ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #62, !noalias !7544
  %i.gj = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 728, i64 noundef range(i64 1, -9223372036854775807) 8) #62, !noalias !7544 ; 11 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %bb.bn, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i, !prof !5

bb.bn:                                            ; preds = %bb.bm
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #61
          to label %.noexc.i40.i.i unwind label %bb.bd, !noalias !7516

.noexc.i40.i.i:                                   ; preds = %bb.bn
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i: ; preds = %bb.bm
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 352
  store ptr null, ptr %i.gl, align 8, !noalias !7544
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 626 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7551)
  %i.gn = load i16, ptr %i.dy, align 2, !noalias !7553, !noundef !3
  %i.go = zext i16 %i.gn to i64
  %i.gp = xor i64 %.sroa.06.0.i.i.i, -1
  %i.gq = add nsw i64 %i.go, %i.gp                ; 5 uses
  %i.gr = trunc i64 %i.gq to i16
  store i16 %i.gr, ptr %i.gm, align 2, !alias.scope !7551, !noalias !7554
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dq, i64 360 ; 2 uses
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %.sroa.06.0.i.i.i ; 3 uses
  %.sroa.0.0.copyload.i.i.i33.i.i = load i64, ptr %i.gt, align 8, !noalias !7553 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i.i34.i.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %.sroa.5.0.copyload.i.i.i35.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i34.i.i, align 8, !noalias !7553 ; 5 uses
  %.sroa.6.0..sroa_idx.i.i.i36.i.i = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %.sroa.6.0.copyload.i.i.i37.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i36.i.i, align 8, !noalias !7553 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7553
  %i.gu = getelementptr inbounds nuw [32 x i8], ptr %i.dq, i64 %.sroa.06.0.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.gu, i64 32, i1 false), !noalias !7553
  %i.gv = icmp ult i64 %i.gq, 12
  br i1 %i.gv, label %bb.bu, label %bb.bo, !prof !7450

bb.bo:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gq, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @332) #61
          to label %bb.bq unwind label %bb.bp, !noalias !7553

bb.bp:                                            ; preds = %bb.bo
  %i.gw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECskLngH8kgpZI_15ruff_python_ast(ptr noalias noundef align 8 dereferenceable(32) %i.a) #59
          to label %bb.bs unwind label %bb.br, !noalias !7553

bb.bq:                                            ; preds = %bb.bo
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #60, !noalias !7553
  unreachable

bb.bs:                                            ; preds = %bb.bp
  %i.gy = icmp eq i64 %.sroa.0.0.copyload.i.i.i33.i.i, 0
  br i1 %i.gy, label %bb.cd, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i35.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i35.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i33.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #62, !noalias !7555
  br label %bb.cd

bb.bu:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCskLngH8kgpZI_15ruff_python_ast.exit.i.i.i.i
  %i.gz = add nuw nsw i64 %.sroa.06.0.i.i.i, 1    ; 2 uses
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %i.gs, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gj, i64 360
  %i.hc = mul nuw nsw i64 %i.gq, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hb, ptr nonnull readonly align 8 %i.ha, i64 %i.hc, i1 false), !alias.scope !7558, !noalias !7554
  %i.hd = getelementptr inbounds nuw [32 x i8], ptr %i.dq, i64 %i.gz
  %i.he = shl nuw nsw i64 %i.gq, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.gj, ptr nonnull readonly align 8 %i.hd, i64 %i.he, i1 false), !alias.scope !7562, !noalias !7554
  %i.hf = trunc nuw nsw i64 %.sroa.06.0.i.i.i to i16
  store i16 %i.hf, ptr %i.dy, align 2, !noalias !7553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cw, ptr noundef nonnull align 8 dereferenceable(32) %i.gu, i64 32, i1 false), !noalias !7516
  store i64 %.sroa.0.0.copyload.i.i.i33.i.i, ptr %i.b, align 8, !alias.scope !7548, !noalias !7566
  store ptr %.sroa.5.0.copyload.i.i.i35.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !7548, !noalias !7566
  store i64 %.sroa.6.0.copyload.i.i.i37.i.i, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !7548, !noalias !7566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7553
  %i.hg = load i16, ptr %i.gm, align 2, !noalias !7544, !noundef !3 ; 2 uses
  %i.hh = zext i16 %i.hg to i64                   ; 3 uses
  %i.hi = add nuw nsw i64 %i.hh, 1                ; 3 uses
  %i.hj = icmp ult i16 %i.hg, 12
  br i1 %i.hj, label %bb.bv, label %bb.bx, !prof !7450

bb.bv:                                            ; preds = %bb.bu
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gj, i64 632 ; 2 uses
  %i.hl = zext i16 %i.dz to i64
  %i.hm = sub nuw nsw i64 %i.hl, %.sroa.06.0.i.i.i
  %i.hn = icmp eq i64 %i.hm, %i.hi
  br i1 %i.hn, label %bb.bz, label %bb.bw, !prof !91

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #61
          to label %.noexc.i.i38.i.i unwind label %bb.by, !noalias !7544

.noexc.i.i38.i.i:                                 ; preds = %bb.bw
  unreachable

end_hunk_4
begin_hunk_5_@_RNvNtCskLngH8kgpZI_15ruff_python_ast9find_node13covering_node:bb.a

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i157.i.i
  %lpad.loopexit115 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i160.i.i
  %lpad.loopexit119 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i163.i.i
  %lpad.loopexit122 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.d, %bb.e, %bb.f, %bb.g, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.w, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.av, %bb.aw, %bb.ax, %bb.az, %bb.ba, %bb.bc, %bb.bd, %bb.bf, %bb.bg, %bb.bh, %bb.bj, %bb.bk, %.noexc70, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %_RINvMs85_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB7_10AnyNodeRef18visit_source_orderNtNvNtB9_9find_node13covering_node7VisitorEB9_.exit.i
  %lpad.loopexit.split-lp123 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit87, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit91, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit94, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit98, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit101, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit105, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit108, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit112, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit115, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit119, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit122, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp123, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.cx = icmp eq i64 %.val, 0
  br i1 %i.cx, label %bb.bz, label %bb.ca

bb.ca:                                            ; preds = %.loopexit.split-lp
  %.val5 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.cy = shl nuw i64 %.val, 4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 8) #62
  br label %bb.bz
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses19parenthesized_range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, i64 noundef range(i64 0, 33) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 0, 94) %3, ptr noundef %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses20parentheses_iterator(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8 ; 2 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.0.copyload = load i8, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.64.0.copyload = load ptr, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.8.0.copyload = load i8, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8985)
  %i.b = trunc nuw i8 %.sroa.53.0.copyload to i1
  br i1 %i.b, label %_RINvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB6_3ZipINtNtB8_10take_while9TakeWhileINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2f_11parentheses20parentheses_iterator0ENCB31_s_0EIBY_IB1s_INtNtB8_3rev3RevB1N_ENCB31_s0_0ENCB31_s1_0EENtB6_8SpecFold9spec_foldINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCINvNtB8_3map8map_foldTRB2d_B6I_EB5v_B59_NCB31_s2_0INvNvNtNtNtBa_6traits8iterator8Iterator4last4someB5v_EE0EB2h_.exit, label %.split.i

.split.i:                                         ; preds = %bb.a
  %.fr83.i = freeze i8 %.sroa.8.0.copyload
  %i.c = trunc i8 %.fr83.i to i1
  br i1 %i.c, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i: ; preds = %.split.i, %bb.b
  %i.d = phi ptr [ %i.f, %bb.b ], [ %.sroa.3.0.copyload, %.split.i ] ; 3 uses
  %i.e = icmp eq ptr %i.d, %.sroa.42.0.copyload
  br i1 %i.e, label %_RINvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB6_3ZipINtNtB8_10take_while9TakeWhileINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2f_11parentheses20parentheses_iterator0ENCB31_s_0EIBY_IB1s_INtNtB8_3rev3RevB1N_ENCB31_s0_0ENCB31_s1_0EENtB6_8SpecFold9spec_foldINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCINvNtB8_3map8map_foldTRB2d_B6I_EB5v_B59_NCB31_s2_0INvNvNtNtNtBa_6traits8iterator8Iterator4last4someB5v_EE0EB2h_.exit, label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.h = load i8, ptr %i.g, align 2, !range !6680, !noalias !8988, !noundef !3
  %i.i = and i8 %i.h, 125
  %switch.selectcmp.i.i.not.i.i.i.i.us.i = icmp eq i8 %i.i, 12
  br i1 %switch.selectcmp.i.i.not.i.i.i.i.us.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i, label %_RINvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB6_3ZipINtNtB8_10take_while9TakeWhileINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2f_11parentheses20parentheses_iterator0ENCB31_s_0EIBY_IB1s_INtNtB8_3rev3RevB1N_ENCB31_s0_0ENCB31_s1_0EENtB6_8SpecFold9spec_foldINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCINvNtB8_3map8map_foldTRB2d_B6I_EB5v_B59_NCB31_s2_0INvNvNtNtNtBa_6traits8iterator8Iterator4last4someB5v_EE0EB2h_.exit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i: ; preds = %.split.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i
  %i.j = phi ptr [ %i.u, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i ], [ %.sroa.7.0.copyload, %.split.i ]
  %i.k = phi ptr [ %i.n, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i ], [ %.sroa.3.0.copyload, %.split.i ]
  %.sroa.7.0.i = phi i32 [ %.val.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i ], [ undef, %.split.i ] ; 4 uses
  %.sroa.6.0.i = phi i32 [ %.val6.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i ], [ undef, %.split.i ] ; 4 uses
  %.sroa.07.0.i = phi i32 [ 1, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i ], [ 0, %.split.i ] ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i
  %i.l = phi ptr [ %i.n, %bb.d ], [ %i.k, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i ] ; 5 uses
  %i.m = icmp eq ptr %i.l, %.sroa.42.0.copyload
  br i1 %i.m, label %_RINvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB6_3ZipINtNtB8_10take_while9TakeWhileINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2f_11parentheses20parentheses_iterator0ENCB31_s_0EIBY_IB1s_INtNtB8_3rev3RevB1N_ENCB31_s0_0ENCB31_s1_0EENtB6_8SpecFold9spec_foldINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCINvNtB8_3map8map_foldTRB2d_B6I_EB5v_B59_NCB31_s2_0INvNvNtNtNtBa_6traits8iterator8Iterator4last4someB5v_EE0EB2h_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 10
  %i.p = load i8, ptr %i.o, align 2, !range !6680, !noalias !8988, !noundef !3 ; 2 uses
  %i.q = and i8 %i.p, 125
  %switch.selectcmp.i.i.not.i.i.i.i.i = icmp eq i8 %i.q, 12
  br i1 %switch.selectcmp.i.i.not.i.i.i.i.i, label %bb.c, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i: ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.r = icmp eq i8 %i.p, 21
  br i1 %i.r, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i, label %_RINvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB6_3ZipINtNtB8_10take_while9TakeWhileINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2f_11parentheses20parentheses_iterator0ENCB31_s_0EIBY_IB1s_INtNtB8_3rev3RevB1N_ENCB31_s0_0ENCB31_s1_0EENtB6_8SpecFold9spec_foldINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCINvNtB8_3map8map_foldTRB2d_B6I_EB5v_B59_NCB31_s2_0INvNvNtNtNtBa_6traits8iterator8Iterator4last4someB5v_EE0EB2h_.exit

_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i, %bb.e
  %i.s = phi ptr [ %i.u, %bb.e ], [ %i.j, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i ] ; 3 uses
  %i.t = icmp eq ptr %.sroa.64.0.copyload, %i.s
  br i1 %i.t, label %_RINvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB6_3ZipINtNtB8_10take_while9TakeWhileINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2f_11parentheses20parentheses_iterator0ENCB31_s_0EIBY_IB1s_INtNtB8_3rev3RevB1N_ENCB31_s0_0ENCB31_s1_0EENtB6_8SpecFold9spec_foldINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCINvNtB8_3map8map_foldTRB2d_B6I_EB5v_B59_NCB31_s2_0INvNvNtNtNtBa_6traits8iterator8Iterator4last4someB5v_EE0EB2h_.exit, label %bb.e

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -12 ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -2
  %i.w = load i8, ptr %i.v, align 2, !range !6680, !alias.scope !8999, !noalias !9002, !noundef !3 ; 2 uses
  %i.x = and i8 %i.w, 125
  %switch.selectcmp.i.i.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.x, 12
  br i1 %switch.selectcmp.i.i.not.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i: ; preds = %bb.e
  %i.y = icmp eq i8 %i.w, 20
  br i1 %i.y, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i, label %_RINvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB6_3ZipINtNtB8_10take_while9TakeWhileINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2f_11parentheses20parentheses_iterator0ENCB31_s_0EIBY_IB1s_INtNtB8_3rev3RevB1N_ENCB31_s0_0ENCB31_s1_0EENtB6_8SpecFold9spec_foldINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCINvNtB8_3map8map_foldTRB2d_B6I_EB5v_B59_NCB31_s2_0INvNvNtNtNtBa_6traits8iterator8Iterator4last4someB5v_EE0EB2h_.exit

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i
  %i.z = getelementptr i8, ptr %i.l, i64 4
  %.val.i = load i32, ptr %i.z, align 4, !noalias !9013, !noundef !3 ; 2 uses
  %.val6.i = load i32, ptr %i.u, align 4, !noalias !9013, !noundef !3 ; 2 uses
  %.not.i.i.i = icmp ugt i32 %.val6.i, %.val.i
  br i1 %.not.i.i.i, label %bb.f, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.i, !prof !5

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtB7_10take_while9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2e_11parentheses20parentheses_iterator0ENCB30_s_0EIBX_IB1r_INtNtB7_3rev3RevB1M_ENCB30_s0_0ENCB30_s1_0EEINtB5_7ZipImplBW_B3T_E4nextB2g_.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #61, !noalias !9014
  unreachable

_RINvXsh_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB6_3ZipINtNtB8_10take_while9TakeWhileINtNtB8_6filter6FilterINtNtNtBc_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB2f_11parentheses20parentheses_iterator0ENCB31_s_0EIBY_IB1s_INtNtB8_3rev3RevB1N_ENCB31_s0_0ENCB31_s1_0EENtB6_8SpecFold9spec_foldINtNtBc_6option6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENCINvNtB8_3map8map_foldTRB2d_B6I_EB5v_B59_NCB31_s2_0INvNvNtNtNtBa_6traits8iterator8Iterator4last4someB5v_EE0EB2h_.exit: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i, %bb.c, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i, %bb.b, %bb.a
  %.sroa.7.056.i = phi i32 [ undef, %bb.a ], [ undef, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i ], [ %.sroa.7.0.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i ], [ %.sroa.7.0.i, %bb.c ], [ undef, %bb.b ], [ %.sroa.7.0.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i ], [ %.sroa.7.0.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i ]
  %.sroa.6.050.i = phi i32 [ undef, %bb.a ], [ undef, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i ], [ %.sroa.6.0.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i ], [ %.sroa.6.0.i, %bb.c ], [ undef, %bb.b ], [ %.sroa.6.0.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i ], [ %.sroa.6.0.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i ]
  %.sroa.07.044.i = phi i32 [ 0, %bb.a ], [ 0, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldTRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenBV_ENtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtBa_6option6OptionB1L_ENCNvNtBY_11parentheses20parentheses_iterators2_0INvNvNtNtNtB8_6traits8iterator8Iterator4last4someB1L_EE0B10_.exit.us65.i ], [ %.sroa.07.0.i, %_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB5_9TakeWhileINtNtB7_6filter6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1Y_11parentheses20parentheses_iterator0ENCB2K_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB20_.exit.i.i ], [ %.sroa.07.0.i, %bb.c ], [ 0, %bb.b ], [ %.sroa.07.0.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtB7_3rev3RevINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenEENCNvNtB1K_11parentheses20parentheses_iterators0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1M_.exit.i.i.i ], [ %.sroa.07.0.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenENCNvNtB1u_11parentheses20parentheses_iterator0ENtNtNtB9_6traits8iterator8Iterator4nextB1w_.exit.i.i.i ]
  store i32 %.sroa.07.044.i, ptr %0, align 4, !alias.scope !8985, !noalias !9017
  %.sroa.6.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.6.050.i, ptr %.sroa.6.0..sroa_idx12.i, align 4, !alias.scope !8985, !noalias !9017
  %.sroa.7.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.7.056.i, ptr %.sroa.7.0..sroa_idx16.i, align 4, !alias.scope !8985, !noalias !9017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses20parentheses_iterator(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i64 noundef range(i64 0, 33) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef range(i64 -1, 94) %3, ptr %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %.not = icmp eq i64 %3, -1
  br i1 %.not, label %switch.lookup48, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %4, ptr %i.h, align 8
  %i.i = icmp eq i64 %3, 78
  %i.j = call { i32, i32 } @_RNvXs82_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
  %i.k = extractvalue { i32, i32 } %i.j, 1
  %i.l = sext i1 %i.i to i32
  %.sroa.03.0 = add i32 %i.k, %i.l                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses20parentheses_iterator.1387, i64 %1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.m = getelementptr i8, ptr %2, i64 %switch.ext
  %.val2.pn.i12 = load i32, ptr %i.m, align 4, !noalias !9018, !noundef !3 ; 2 uses
  %.not8 = icmp ugt i32 %.val2.pn.i12, %.sroa.03.0
  br i1 %.not8, label %bb.d, label %bb.e, !prof !5

switch.lookup48:                                  ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %switch.gep49 = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtCskLngH8kgpZI_15ruff_python_ast5token11parentheses20parentheses_iterator.1387, i64 %1
  %switch.load50 = load i8, ptr %switch.gep49, align 1
  %switch.ext51 = zext i8 %switch.load50 to i64
  %i.n = getelementptr i8, ptr %2, i64 %switch.ext51
  %.val2.pn.i = load i32, ptr %i.n, align 4, !noalias !9021, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9024)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i32 %.val2.pn.i, ptr %i.f, align 4, !noalias !9024
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !9024, !nonnull !3, !noundef !3 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !9024, !noundef !3 ; 8 uses
  switch i64 %i.r, label %.lr.ph.i.i.i [
    i64 0, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit
    i64 1, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

.lr.ph.i.i.i:                                     ; preds = %switch.lookup48, %.lr.ph.i.i.i
  %.sroa.01.021.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i ], [ %i.r, %switch.lookup48 ] ; 2 uses
  %.sroa.05.020.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i ], [ 0, %switch.lookup48 ] ; 2 uses
  %i.s = lshr i64 %.sroa.01.021.i.i.i, 1          ; 2 uses
  %i.t = add nuw nsw i64 %i.s, %.sroa.05.020.i.i.i ; 3 uses
  %i.u = icmp ult i64 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.t
  %i.w = getelementptr i8, ptr %i.v, i64 4
  %.val16.i.i.i = load i32, ptr %i.w, align 4, !alias.scope !9027, !noalias !9032, !noundef !3
  %.not.i18.i.i.i = icmp ugt i32 %.val16.i.i.i, %.val2.pn.i
  %i.x = select i1 %.not.i18.i.i.i, i64 %.sroa.05.020.i.i.i, i64 %i.t, !unpredictable !3 ; 2 uses
  %i.y = sub nuw nsw i64 %.sroa.01.021.i.i.i, %i.s ; 2 uses
  %i.z = icmp ugt i64 %i.y, 1
  br i1 %i.z, label %.lr.ph.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i

_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i: ; preds = %.lr.ph.i.i.i, %switch.lookup48
  %.sroa.05.0.lcssa.i.i.i = phi i64 [ 0, %switch.lookup48 ], [ %i.x, %.lr.ph.i.i.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %.sroa.05.0.lcssa.i.i.i
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %.val14.i.i.i = load i32, ptr %i.ab, align 4, !alias.scope !9027, !noalias !9032, !noundef !3
  %.not.i.i.i.i = icmp ule i32 %.val14.i.i.i, %.val2.pn.i
  %i.ac = zext i1 %.not.i.i.i.i to i64
  %i.ad = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i, %i.ac ; 4 uses
  %i.ae = icmp ule i64 %i.ad, %i.r
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.ad ; 4 uses
  %.not.i = icmp eq i64 %i.r, %i.ad
  br i1 %.not.i, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit, label %bb.b

bb.b:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i
  store ptr %i.af, ptr %i.e, align 8, !noalias !9024
  %i.ag = load i32, ptr %i.af, align 4, !noalias !9024, !noundef !3
  %.not10.i = icmp ugt i32 %.val2.pn.i, %i.ag
  br i1 %.not10.i, label %bb.c, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9024
  store ptr %i.f, ptr %i.d, align 8, !noalias !9024
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXNtCs2MoD74u7shA_14ruff_text_size4sizeNtB2_8TextSizeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !9024
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.ah, align 8, !noalias !9024
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenNtB6_5Debug3fmtBA_, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !9024
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @256, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @259) #61, !noalias !9024
  unreachable

_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit: ; preds = %switch.lookup48, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i, %bb.b
  %i.ai = phi ptr [ %i.af, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i ], [ %i.af, %bb.b ], [ %i.p, %switch.lookup48 ]
  %.sroa.4.0.i.i13.i = phi i64 [ %i.r, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens5after0EBz_.exit.i ], [ %i.ad, %bb.b ], [ %i.r, %switch.lookup48 ]
  %i.aj = sub nuw i64 %i.r, %.sroa.4.0.i.i13.i
  %i.ak = insertvalue { ptr, i64 } poison, ptr %i.ai, 0
  %i.al = insertvalue { ptr, i64 } %i.ak, i64 %i.aj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.d:                                             ; preds = %switch.lookup
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @382) #61
  unreachable

bb.e:                                             ; preds = %switch.lookup
  %i.am = tail call { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens8in_range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5, i32 noundef %.val2.pn.i12, i32 noundef %.sroa.03.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit
  %.pn = phi { ptr, i64 } [ %i.am, %bb.e ], [ %i.al, %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  switch i64 %1, label %default.unreachable [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
    i64 5, label %bb.l
    i64 6, label %bb.m
    i64 7, label %bb.n
    i64 8, label %bb.o
    i64 9, label %bb.p
    i64 10, label %bb.q
    i64 11, label %bb.r
    i64 12, label %bb.s
    i64 13, label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25
    i64 14, label %bb.t
    i64 15, label %bb.u
    i64 16, label %bb.v
    i64 17, label %bb.w
    i64 18, label %bb.x
    i64 19, label %bb.y
    i64 20, label %bb.z
    i64 21, label %bb.aa
    i64 22, label %bb.ab
    i64 23, label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25
    i64 24, label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25
    i64 25, label %bb.ac
    i64 26, label %bb.ad
    i64 27, label %bb.ae
    i64 28, label %bb.af
    i64 29, label %bb.ag
    i64 30, label %bb.ah
    i64 31, label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25
    i64 32, label %bb.ai
  ]

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr i8, ptr %2, i64 24
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.h:                                             ; preds = %bb.f
  %i.ao = getelementptr i8, ptr %2, i64 16
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.i:                                             ; preds = %bb.f
  %i.ap = getelementptr i8, ptr %2, i64 16
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.j:                                             ; preds = %bb.f
  %i.aq = getelementptr i8, ptr %2, i64 8
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.k:                                             ; preds = %bb.f
  %i.ar = getelementptr i8, ptr %2, i64 8
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.l:                                             ; preds = %bb.f
  %i.as = getelementptr i8, ptr %2, i64 24
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.m:                                             ; preds = %bb.f
  %i.at = getelementptr i8, ptr %2, i64 24
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.n:                                             ; preds = %bb.f
  %i.au = getelementptr i8, ptr %2, i64 24
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.o:                                             ; preds = %bb.f
  %i.av = getelementptr i8, ptr %2, i64 32
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.p:                                             ; preds = %bb.f
  %i.aw = getelementptr i8, ptr %2, i64 32
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.q:                                             ; preds = %bb.f
  %i.ax = getelementptr i8, ptr %2, i64 32
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.r:                                             ; preds = %bb.f
  %i.ay = getelementptr i8, ptr %2, i64 32
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.s:                                             ; preds = %bb.f
  %i.az = getelementptr i8, ptr %2, i64 8
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.t:                                             ; preds = %bb.f
  %i.ba = getelementptr i8, ptr %2, i64 8
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.u:                                             ; preds = %bb.f
  %i.bb = getelementptr i8, ptr %2, i64 40
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.v:                                             ; preds = %bb.f
  %i.bc = getelementptr i8, ptr %2, i64 48
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.w:                                             ; preds = %bb.f
  %i.bd = getelementptr i8, ptr %2, i64 40
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.x:                                             ; preds = %bb.f
  %i.be = getelementptr i8, ptr %2, i64 40
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.y:                                             ; preds = %bb.f
  %i.bf = getelementptr i8, ptr %2, i64 48
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.z:                                             ; preds = %bb.f
  %i.bg = getelementptr i8, ptr %2, i64 32
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.aa:                                            ; preds = %bb.f
  %i.bh = getelementptr i8, ptr %2, i64 24
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.ab:                                            ; preds = %bb.f
  %i.bi = getelementptr i8, ptr %2, i64 4
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.ac:                                            ; preds = %bb.f
  %i.bj = getelementptr i8, ptr %2, i64 40
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.ad:                                            ; preds = %bb.f
  %i.bk = getelementptr i8, ptr %2, i64 16
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.ae:                                            ; preds = %bb.f
  %i.bl = getelementptr i8, ptr %2, i64 8
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.af:                                            ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %2, i64 16
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.ag:                                            ; preds = %bb.f
  %i.bn = getelementptr i8, ptr %2, i64 24
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.ah:                                            ; preds = %bb.f
  %i.bo = getelementptr i8, ptr %2, i64 24
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

bb.ai:                                            ; preds = %bb.f
  %i.bp = getelementptr i8, ptr %2, i64 16
  br label %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25

_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25: ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai
  %.val.pn.in.i19 = phi ptr [ %i.bp, %bb.ai ], [ %2, %bb.f ], [ %i.bo, %bb.ah ], [ %i.bn, %bb.ag ], [ %i.bm, %bb.af ], [ %i.bl, %bb.ae ], [ %i.bk, %bb.ad ], [ %i.bj, %bb.ac ], [ %2, %bb.f ], [ %2, %bb.f ], [ %i.bi, %bb.ab ], [ %i.bh, %bb.aa ], [ %i.bg, %bb.z ], [ %i.bf, %bb.y ], [ %i.be, %bb.x ], [ %i.bd, %bb.w ], [ %i.bc, %bb.v ], [ %i.bb, %bb.u ], [ %i.ba, %bb.t ], [ %i.an, %bb.g ], [ %i.az, %bb.s ], [ %i.ay, %bb.r ], [ %i.ax, %bb.q ], [ %i.aw, %bb.p ], [ %i.av, %bb.o ], [ %i.au, %bb.n ], [ %i.at, %bb.m ], [ %i.as, %bb.l ], [ %i.ar, %bb.k ], [ %i.aq, %bb.j ], [ %i.ap, %bb.i ], [ %i.ao, %bb.h ], [ %2, %bb.f ]
  %.val.pn.i21 = load i32, ptr %.val.pn.in.i19, align 4, !noalias !9035, !noundef !3 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9038)
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !9038, !nonnull !3, !noundef !3 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !9038, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9041)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9038
  store i32 %.val.pn.i21, ptr %i.c, align 4, !noalias !9044
  switch i64 %i.bt, label %.lr.ph.i.i.i.i [
    i64 0, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens6before.exit
    i64 1, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i.i
  ]

.lr.ph.i.i.i.i:                                   ; preds = %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25, %.lr.ph.i.i.i.i
  %.sroa.01.020.i.i.i.i = phi i64 [ %i.bz, %.lr.ph.i.i.i.i ], [ %i.bt, %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25 ] ; 2 uses
  %.sroa.05.019.i.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i.i.i ], [ 0, %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25 ] ; 2 uses
  %i.bu = lshr i64 %.sroa.01.020.i.i.i.i, 1       ; 2 uses
  %i.bv = add nuw nsw i64 %i.bu, %.sroa.05.019.i.i.i.i ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %i.bt
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %i.bv
  %.val16.i.i.i.i = load i32, ptr %i.bx, align 4, !alias.scope !9045, !noalias !9050, !noundef !3
  %.not.i.i.i.i26 = icmp ult i32 %.val16.i.i.i.i, %.val.pn.i21
  %i.by = select i1 %.not.i.i.i.i26, i64 %i.bv, i64 %.sroa.05.019.i.i.i.i, !unpredictable !3 ; 2 uses
  %i.bz = sub nuw nsw i64 %.sroa.01.020.i.i.i.i, %i.bu ; 2 uses
  %i.ca = icmp ugt i64 %i.bz, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25
  %.sroa.05.0.lcssa.i.i.i.i = phi i64 [ 0, %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25 ], [ %i.by, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %.sroa.05.0.lcssa.i.i.i.i
  %.val14.i.i.i.i = load i32, ptr %i.cb, align 4, !alias.scope !9045, !noalias !9050, !noundef !3
  %i.cc = icmp ult i32 %.val14.i.i.i.i, %.val.pn.i21
  %i.cd = zext i1 %i.cc to i64
  %i.ce = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i.i, %i.cd ; 4 uses
  %i.cf = icmp ule i64 %i.ce, %i.bt
  tail call void @llvm.assume(i1 %i.cf)
  %.not9.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not9.i.i, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens6before.exit, label %bb.aj

bb.aj:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i.i
  %i.cg = getelementptr [12 x i8], ptr %i.br, i64 %i.ce ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 -12
  store ptr %i.ch, ptr %i.b, align 8, !noalias !9044
  %i.ci = getelementptr i8, ptr %i.cg, i64 -8
  %i.cj = load i32, ptr %i.ci, align 4, !alias.scope !9041, !noalias !9038, !noundef !3
  %.not10.i.i = icmp ult i32 %.val.pn.i21, %i.cj
  br i1 %.not10.i.i, label %bb.ak, label %_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens6before.exit, !prof !5

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9044
  store ptr %i.c, ptr %i.a, align 8, !noalias !9044
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXNtCs2MoD74u7shA_14ruff_text_size4sizeNtB2_8TextSizeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !9044
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ck, align 8, !noalias !9044
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast5token5TokenNtB6_5Debug3fmtBA_, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !9044
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @256, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #61, !noalias !9038
  unreachable

_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens6before.exit: ; preds = %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i.i, %bb.aj
  %.sroa.4.0.i.i13.i.i = phi i64 [ 0, %_RINvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCskLngH8kgpZI_15ruff_python_ast5token5Token15partition_pointNCNvMNtBx_6tokensNtB1C_6Tokens11before_impl0EBz_.exit.i.i ], [ %i.ce, %bb.aj ], [ %i.bt, %_RNvXs5J_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_7ExprRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit25 ]
  %.sroa.05.0 = extractvalue { ptr, i64 } %.pn, 0 ; 2 uses
  %.sroa.4.0 = extractvalue { ptr, i64 } %.pn, 1
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %.sroa.05.0, i64 %.sroa.4.0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9038
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %.sroa.4.0.i.i13.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.05.0, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.cl, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %.sroa.640.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.br, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.cm, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNvNtCskLngH8kgpZI_15ruff_python_ast7helpers13any_over_expr5inner(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [16 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [48 x i8], align 8               ; 7 uses
  %i.aj = alloca [48 x i8], align 8               ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !invariant.load !3, !nonnull !3
  %i.am = tail call noundef zeroext i1 %i.al(ptr noundef nonnull %1, ptr noundef nonnull align 8 %0)
  br i1 %i.am, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvNtBU_7helpers13any_over_expr5inner0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.an = load i32, ptr %0, align 8, !range !613, !noundef !3
  switch i32 %i.an, label %default.unreachable144 [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.aa
    i32 8, label %bb.ab
    i32 9, label %bb.ab
    i32 10, label %bb.l
    i32 11, label %bb.ab
    i32 12, label %bb.ao
    i32 13, label %bb.m
    i32 14, label %bb.ao
    i32 15, label %bb.n
    i32 16, label %bb.o
    i32 17, label %bb.p
    i32 18, label %bb.r
    i32 19, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvNtBU_7helpers13any_over_expr5inner0EBU_.exit
    i32 20, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvNtBU_7helpers13any_over_expr5inner0EBU_.exit
    i32 21, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvNtBU_7helpers13any_over_expr5inner0EBU_.exit
    i32 22, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvNtBU_7helpers13any_over_expr5inner0EBU_.exit
    i32 23, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvNtBU_7helpers13any_over_expr5inner0EBU_.exit
    i32 24, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvNtBU_7helpers13any_over_expr5inner0EBU_.exit
    i32 25, label %bb.t
    i32 26, label %bb.u
    i32 27, label %bb.ao
    i32 28, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvNtBU_7helpers13any_over_expr5inner0EBU_.exit
    i32 29, label %bb.aa
    i32 30, label %bb.aa
    i32 31, label %bb.v
    i32 32, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvNtBU_7helpers13any_over_expr5inner0EBU_.exit
  ]

default.unreachable144:                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !3 ; 2 uses
  %.idx213 = mul nuw nsw i64 %i.ar, 72
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx213
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.not86.not201 = icmp eq i64 %i.ar, 0
  br i1 %.not86.not201, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvNtBU_7helpers13any_over_expr5inner0EBU_.exit, label %.lr.ph203

.lr.ph203:                                        ; preds = %.lr.ph203, %bb.c
  %.sroa.0.073202 = phi ptr [ %i.av, %.lr.ph203 ], [ %i.ap, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !9053
  store ptr %1, ptr %i.r, align 8, !noalias !9058
  store ptr %2, ptr %i.at, align 8, !noalias !9058
  %i.au = call noundef zeroext i1 @_RNvNvNtCskLngH8kgpZI_15ruff_python_ast7helpers13any_over_expr5inner(ptr noundef nonnull align 8 %.sroa.0.073202, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @61), !noalias !9053, !inline_history !9061 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !9053
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.073202, i64 72 ; 2 uses
  %.not86.not = icmp eq ptr %i.av, %i.as
  %or.cond = select i1 %i.au, i1 true, i1 %.not86.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvNtBU_7helpers13any_over_expr5inner0EBU_.exit, label %.lr.ph203

bb.d:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %1, ptr %i.ah, align 8, !noalias !9062
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %2, ptr %i.ay, align 8, !noalias !9062
  %i.az = call noundef zeroext i1 @_RNvNvNtCskLngH8kgpZI_15ruff_python_ast7helpers13any_over_expr5inner(ptr noundef nonnull align 8 %i.ax, ptr noundef nonnull %i.ah, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @61), !inline_history !8355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br i1 %i.az, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvNtBU_7helpers13any_over_expr5inner0EBU_.exit, label %bb.w

bb.e:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %1, ptr %i.ag, align 8, !noalias !9065
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %2, ptr %i.bc, align 8, !noalias !9065
  %i.bd = call noundef zeroext i1 @_RNvNvNtCskLngH8kgpZI_15ruff_python_ast7helpers13any_over_expr5inner(ptr noundef nonnull align 8 %i.bb, ptr noundef nonnull %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @61), !inline_history !8355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br i1 %i.bd, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvNtBU_7helpers13any_over_expr5inner0EBU_.exit, label %bb.x

bb.f:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %1, ptr %i.af, align 8, !noalias !9068
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %2, ptr %i.bg, align 8, !noalias !9068
  %i.bh = call noundef zeroext i1 @_RNvNvNtCskLngH8kgpZI_15ruff_python_ast7helpers13any_over_expr5inner(ptr noundef nonnull align 8 %i.bf, ptr noundef nonnull %i.af, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @61), !inline_history !8355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNvNtBU_7helpers13any_over_expr5inner0EBU_.exit
end_hunk_5
