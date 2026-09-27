Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.01?download=true
inline.NumInlined: 1394
inline.NumDeleted: 608
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvXsz_NtNtCskKLDkoKarTP_4core3str4iterNtB5_15SplitWhitespaceNtNtNtNtB9_4iter6traits8iterator8Iterator4next:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i8, ptr %i.j, align 8, !range !860, !alias.scope !17530, !noalias !17529
  %i.l = trunc nuw i8 %i.k to i1
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !17530, !noalias !17529 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.promoted24.i.i = load ptr, ptr %i.f, align 8, !alias.scope !17530, !noalias !17529
  %.promoted25.i.i = load i64, ptr %i.i, align 8, !alias.scope !17530, !noalias !17529
  br label %bb.b, !dbg !17583

bb.b:                                             ; preds = %select.unfold.i.i, %bb.a
  %.lcssa1428.i.i = phi i64 [ %.lcssa1426.i.i, %select.unfold.i.i ], [ %.promoted25.i.i, %bb.a ] ; 2 uses
  %i.n = phi ptr [ %i.bz, %select.unfold.i.i ], [ %.promoted24.i.i, %bb.a ] ; 3 uses
  %.pre.i.i.i23.i.i = phi i64 [ %.pre.i.i.i22.i.i, %select.unfold.i.i ], [ %.promoted21.i.i, %bb.a ] ; 5 uses
  %i.o = phi i8 [ %i.ca, %select.unfold.i.i ], [ %.promoted.i.i, %bb.a ]
  call void @llvm.experimental.noalias.scope.decl(metadata !17531), !dbg !17584
  call void @llvm.experimental.noalias.scope.decl(metadata !17532), !dbg !17585
  %i.p = trunc nuw i8 %i.o to i1, !dbg !17586
  br i1 %i.p, label %_RINvYINtNtNtCskKLDkoKarTP_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtB8_10IsNotEmptyECs2NzvFoTxuAy_2rg.exit, label %bb.c, !dbg !17586

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !17535), !dbg !17587
  call void @llvm.experimental.noalias.scope.decl(metadata !17536), !dbg !17588
  %i.q = icmp eq ptr %i.n, %i.h, !dbg !17589
  br i1 %i.q, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs2NzvFoTxuAy_2rg.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !17590

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %bb.l
  %i.r = phi i64 [ %i.bg, %bb.l ], [ %.lcssa1428.i.i, %bb.c ] ; 2 uses
  %i.s = phi ptr [ %i.bc, %bb.l ], [ %i.n, %bb.c ] ; 6 uses
  %i.t = ptrtoint ptr %i.s to i64, !dbg !17591
  call void @llvm.experimental.noalias.scope.decl(metadata !17547), !dbg !17592
  call void @llvm.experimental.noalias.scope.decl(metadata !17548), !dbg !17593
  call void @llvm.experimental.noalias.scope.decl(metadata !17549), !dbg !17594
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1, !dbg !17595 ; 4 uses
  store ptr %i.u, ptr %i.f, align 8, !dbg !17596, !alias.scope !17550, !noalias !17551
  %i.v = load i8, ptr %i.s, align 1, !dbg !17597, !noalias !17552, !noundef !640 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1, !dbg !17598
  br i1 %i.w, label %bb.d, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.i.i.i.i.i.i.i, !dbg !17598

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = and i8 %i.v, 31, !dbg !17599
  %i.y = zext nneg i8 %i.x to i32, !dbg !17599    ; 3 uses
  %i.z = icmp ne ptr %i.u, %i.h, !dbg !17600
  call void @llvm.assume(i1 %i.z), !dbg !17601
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 2, !dbg !17602 ; 4 uses
  store ptr %i.aa, ptr %i.f, align 8, !dbg !17603, !alias.scope !17553, !noalias !17551
  %i.ab = load i8, ptr %i.u, align 1, !dbg !17604, !noalias !17552, !noundef !640
  %i.ac = shl nuw nsw i32 %i.y, 6, !dbg !17605
  %i.ad = and i8 %i.ab, 63, !dbg !17606
  %i.ae = zext nneg i8 %i.ad to i32, !dbg !17606  ; 2 uses
  %i.af = or disjoint i32 %i.ac, %i.ae, !dbg !17605
  %i.ag = icmp samesign ugt i8 %i.v, -33, !dbg !17607
  br i1 %i.ag, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.i.i.i.i.i.i.i, label %bb.e, !dbg !17607

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ah = zext nneg i8 %i.v to i32, !dbg !17608
  br label %bb.e, !dbg !17609

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.i.i.i.i.i.i.i
  %i.ai = icmp ne ptr %i.aa, %i.h, !dbg !17610
  call void @llvm.assume(i1 %i.ai), !dbg !17611
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 3, !dbg !17612 ; 4 uses
  store ptr %i.aj, ptr %i.f, align 8, !dbg !17613, !alias.scope !17555, !noalias !17551
  %i.ak = load i8, ptr %i.aa, align 1, !dbg !17614, !noalias !17552, !noundef !640
  %i.al = shl nuw nsw i32 %i.ae, 6, !dbg !17615
  %i.am = and i8 %i.ak, 63, !dbg !17616
  %i.an = zext nneg i8 %i.am to i32, !dbg !17616
  %i.ao = or disjoint i32 %i.al, %i.an, !dbg !17615 ; 2 uses
  %i.ap = shl nuw nsw i32 %i.y, 12, !dbg !17617
  %i.aq = or disjoint i32 %i.ao, %i.ap, !dbg !17618
  %i.ar = icmp samesign ugt i8 %i.v, -17, !dbg !17619
  br i1 %i.ar, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.i.i.i.i.i.i.i, label %bb.e, !dbg !17619

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.i.i.i.i.i.i.i
  %i.as = icmp ne ptr %i.aj, %i.h, !dbg !17620
  call void @llvm.assume(i1 %i.as), !dbg !17621
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 4, !dbg !17622 ; 2 uses
  store ptr %i.at, ptr %i.f, align 8, !dbg !17623, !alias.scope !17556, !noalias !17551
  %i.au = load i8, ptr %i.aj, align 1, !dbg !17624, !noalias !17552, !noundef !640
  %i.av = shl nuw nsw i32 %i.y, 18, !dbg !17625
  %i.aw = and i32 %i.av, 1835008, !dbg !17625
  %i.ax = shl nuw nsw i32 %i.ao, 6, !dbg !17626
  %i.ay = and i8 %i.au, 63, !dbg !17627
  %i.az = zext nneg i8 %i.ay to i32, !dbg !17627
  %i.ba = or disjoint i32 %i.ax, %i.az, !dbg !17626
  %i.bb = or disjoint i32 %i.ba, %i.aw, !dbg !17628
  br label %bb.e, !dbg !17629

bb.e:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.i.i.i.i.i.i.i, %bb.d, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.i.i.i.i.i.i.i
  %i.bc = phi ptr [ %i.aj, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.i.i.i.i.i.i.i ], [ %i.at, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.i.i.i.i.i.i.i ], [ %i.aa, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.i.i.i.i.i.i.i ], [ %i.u, %bb.d ], !dbg !17630 ; 5 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i = phi i32 [ %i.aq, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.i.i.i.i.i.i.i ], [ %i.bb, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.i.i.i.i.i.i.i ], [ %i.af, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.i.i.i.i.i.i.i ], [ %i.ah, %bb.d ] ; 8 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, 1114112, !dbg !17631
  call void @llvm.assume(i1 %i.bd), !dbg !17631
  %i.be = ptrtoint ptr %i.bc to i64, !dbg !17632
  %i.bf = sub i64 %i.be, %i.t, !dbg !17633
  %i.bg = add i64 %i.bf, %i.r, !dbg !17634        ; 7 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, label %bb.f [
    i32 32, label %bb.m
    i32 13, label %bb.m
    i32 12, label %bb.m
    i32 11, label %bb.m
    i32 10, label %bb.m
    i32 9, label %bb.m
  ], !dbg !17635

bb.f:                                             ; preds = %bb.e
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, 133, !dbg !17636
  br i1 %i.bh, label %bb.l, label %bb.g, !dbg !17636

bb.g:                                             ; preds = %bb.f
  %i.bi = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, 8, !dbg !17637
  switch i32 %i.bi, label %bb.l [
    i32 0, label %bb.j
    i32 22, label %bb.h
    i32 32, label %bb.k
    i32 48, label %bb.i
  ], !dbg !17638

bb.h:                                             ; preds = %bb.g
  %i.bj = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, 5760, !dbg !17639
  %i.bk = zext i1 %i.bj to i8, !dbg !17639
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i, !dbg !17640

bb.i:                                             ; preds = %bb.g
  %i.bl = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, 12288, !dbg !17641
  %i.bm = zext i1 %i.bl to i8, !dbg !17641
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i, !dbg !17642

bb.j:                                             ; preds = %bb.g
  %i.bn = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, 255, !dbg !17643
  %i.bo = zext nneg i32 %i.bn to i64, !dbg !17643
  %i.bp = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bo, !dbg !17644
  %i.bq = load i8, ptr %i.bp, align 1, !dbg !17644, !noalias !17574, !noundef !640
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i, !dbg !17645

bb.k:                                             ; preds = %bb.g
  %i.br = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i, 255, !dbg !17646
  %i.bs = zext nneg i32 %i.br to i64, !dbg !17646
  %i.bt = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCskKLDkoKarTP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bs, !dbg !17647
  %i.bu = load i8, ptr %i.bt, align 1, !dbg !17647, !noalias !17574, !noundef !640
  %i.bv = lshr i8 %i.bu, 1, !dbg !17647
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i, !dbg !17648

_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.bm, %bb.i ], [ %i.bq, %bb.j ], [ %i.bk, %bb.h ], [ %i.bv, %bb.k ], !dbg !17649
  %i.bw = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i to i1, !dbg !17650
  br i1 %i.bw, label %bb.m, label %bb.l, !dbg !17651

bb.l:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i, %bb.g, %bb.f
  %i.bx = icmp eq ptr %i.bc, %i.h, !dbg !17589
  br i1 %i.bx, label %._RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs2NzvFoTxuAy_2rg.exit.loopexit_crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !dbg !17590

._RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs2NzvFoTxuAy_2rg.exit.loopexit_crit_edge.i.i.i.i.i.i: ; preds = %bb.l
  store i64 %i.bg, ptr %i.i, align 8, !dbg !17652, !alias.scope !17575, !noalias !17551
  br label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs2NzvFoTxuAy_2rg.exit.i.i.i.i, !dbg !17590

bb.m:                                             ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str7patternNtB7_12IsWhitespaceNtB5_11MultiCharEq7matchesCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  store i64 %i.bg, ptr %i.i, align 8, !dbg !17652, !alias.scope !17575, !noalias !17551
  store i64 %i.bg, ptr %0, align 8, !dbg !17653, !alias.scope !17528, !noalias !17529
  br label %select.unfold.i.i, !dbg !17654

_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs2NzvFoTxuAy_2rg.exit.i.i.i.i: ; preds = %._RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs2NzvFoTxuAy_2rg.exit.loopexit_crit_edge.i.i.i.i.i.i, %bb.c
  %.lcssa1427.i.i = phi i64 [ %i.bg, %._RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs2NzvFoTxuAy_2rg.exit.loopexit_crit_edge.i.i.i.i.i.i ], [ %.lcssa1428.i.i, %bb.c ]
  %i.by = phi ptr [ %i.bc, %._RNvXs8_NtNtCskKLDkoKarTP_4core3str7patternINtB5_19MultiCharEqSearcherNtB7_12IsWhitespaceENtB5_8Searcher4nextCs2NzvFoTxuAy_2rg.exit.loopexit_crit_edge.i.i.i.i.i.i ], [ %i.n, %bb.c ]
  store i8 1, ptr %i.d, align 1, !dbg !17655, !alias.scope !17576, !noalias !17529
  %.not.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.pre.i.i.i23.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.l, i1 true, i1 %.not.i.i.i.i.i, !dbg !17656
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RINvYINtNtNtCskKLDkoKarTP_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtB8_10IsNotEmptyECs2NzvFoTxuAy_2rg.exit, !dbg !17657

select.unfold.i.i:                                ; preds = %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs2NzvFoTxuAy_2rg.exit.i.i.i.i, %bb.m
  %.lcssa1426.i.i = phi i64 [ %i.bg, %bb.m ], [ %.lcssa1427.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs2NzvFoTxuAy_2rg.exit.i.i.i.i ]
  %i.bz = phi ptr [ %i.bc, %bb.m ], [ %i.by, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs2NzvFoTxuAy_2rg.exit.i.i.i.i ]
  %.pre.i.i.i22.i.i = phi i64 [ %i.bg, %bb.m ], [ %.pre.i.i.i23.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs2NzvFoTxuAy_2rg.exit.i.i.i.i ]
  %i.ca = phi i8 [ 0, %bb.m ], [ 1, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs2NzvFoTxuAy_2rg.exit.i.i.i.i ]
  %.pn31.i.i = phi i64 [ %i.r, %bb.m ], [ %.pre2.i.i.i.i.i, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs2NzvFoTxuAy_2rg.exit.i.i.i.i ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn31.i.i, %.pre.i.i.i23.i.i, !dbg !17658 ; 2 uses
  %.sroa.0.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.pre.i.i.i23.i.i, !dbg !17658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !17527
  store ptr %.sroa.0.1.i.i.i.i, ptr %i.a, align 8, !noalias !17577
  store i64 %.sroa.4.1.i.i.i.i, ptr %i.m, align 8, !noalias !17577
  %i.cb = call noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNtNtBb_3str10IsNotEmptyINtB7_5FnMutTRReEE8call_mutCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !dbg !17659, !noalias !17530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17660, !noalias !17527
  br i1 %i.cb, label %_RINvYINtNtNtCskKLDkoKarTP_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtB8_10IsNotEmptyECs2NzvFoTxuAy_2rg.exit.split.loop.exit32, label %bb.b, !dbg !17661

_RINvYINtNtNtCskKLDkoKarTP_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtB8_10IsNotEmptyECs2NzvFoTxuAy_2rg.exit.split.loop.exit32: ; preds = %select.unfold.i.i
  %.sroa.0.1.i.i.i.i.le = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.pre.i.i.i23.i.i
  br label %_RINvYINtNtNtCskKLDkoKarTP_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtB8_10IsNotEmptyECs2NzvFoTxuAy_2rg.exit, !dbg !17662

_RINvYINtNtNtCskKLDkoKarTP_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtB8_10IsNotEmptyECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.b, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs2NzvFoTxuAy_2rg.exit.i.i.i.i, %_RINvYINtNtNtCskKLDkoKarTP_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtB8_10IsNotEmptyECs2NzvFoTxuAy_2rg.exit.split.loop.exit32
  %.sroa.3.0.i.i = phi i64 [ %.sroa.4.1.i.i.i.i, %_RINvYINtNtNtCskKLDkoKarTP_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtB8_10IsNotEmptyECs2NzvFoTxuAy_2rg.exit.split.loop.exit32 ], [ undef, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs2NzvFoTxuAy_2rg.exit.i.i.i.i ], [ undef, %bb.b ], !dbg !17663
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.le, %_RINvYINtNtNtCskKLDkoKarTP_4core3str4iter5SplitNtB8_12IsWhitespaceENtNtNtNtBa_4iter6traits8iterator8Iterator4findQNtB8_10IsNotEmptyECs2NzvFoTxuAy_2rg.exit.split.loop.exit32 ], [ null, %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalNtB7_12IsWhitespaceE7get_endCs2NzvFoTxuAy_2rg.exit.i.i.i.i ], [ null, %bb.b ], !dbg !17663 ; 2 uses
  %i.cc = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0, !dbg !17662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !17662, !noalias !17526
  %.not.i = icmp eq ptr %.sroa.0.0.i.i, null, !dbg !17664
  %.sroa.3.0.i = select i1 %.not.i, i64 undef, i64 %.sroa.3.0.i.i, !dbg !17665
  %i.cd = insertvalue { ptr, i64 } %i.cc, i64 %.sroa.3.0.i, 1, !dbg !17666
  ret { ptr, i64 } %i.cd, !dbg !17667
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtB7_5ErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17668 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17669
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtB7_5ErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !17670 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @162, i64 16, i1 false), !dbg !17673
  ret void, !dbg !17674
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtCsiVkrP66SkGw_6lexopt5ErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17675 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17676
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtCsiVkrP66SkGw_6lexopt5ErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !17677 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @163, i64 16, i1 false), !dbg !17680
  ret void, !dbg !17681
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error12ContextErrorReNtCsiVkrP66SkGw_6lexopt5ErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17682 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17683
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error12ContextErrorReNtCsiVkrP66SkGw_6lexopt5ErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !17684 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @164, i64 16, i1 false), !dbg !17687
  ret void, !dbg !17688
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error12ContextErrorReNtNtCsgwyS1EwTFAS_8grep_cli5human14ParseSizeErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17689 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17690
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error12ContextErrorReNtNtCsgwyS1EwTFAS_8grep_cli5human14ParseSizeErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !17691 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @165, i64 16, i1 false), !dbg !17694
  ret void, !dbg !17695
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error12ContextErrorReNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17696 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17697
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error12ContextErrorReNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !17698 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @166, i64 16, i1 false), !dbg !17701
  ret void, !dbg !17702
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error12ContextErrorReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorENtNtBU_5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17703 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17704
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error12ContextErrorReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorENtNtBU_5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !17705 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @167, i64 16, i1 false), !dbg !17708
  ret void, !dbg !17709
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtB7_5ErrorEENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !17710 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17711
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtB7_5ErrorEENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 !dbg !17712 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @168, i64 16, i1 false), !dbg !17715
  ret void, !dbg !17716
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtCsiVkrP66SkGw_6lexopt5ErrorEENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !17717 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17718
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplINtB5_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtCsiVkrP66SkGw_6lexopt5ErrorEENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 !dbg !17719 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @169, i64 16, i1 false), !dbg !17722
  ret void, !dbg !17723
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtCsiVkrP66SkGw_6lexopt5ErrorEENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !17724 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17725
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtCsiVkrP66SkGw_6lexopt5ErrorEENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 !dbg !17726 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @170, i64 16, i1 false), !dbg !17729
  ret void, !dbg !17730
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsgwyS1EwTFAS_8grep_cli5human14ParseSizeErrorEENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !17731 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17732
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCsgwyS1EwTFAS_8grep_cli5human14ParseSizeErrorEENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 !dbg !17733 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @171, i64 16, i1 false), !dbg !17736
  ret void, !dbg !17737
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorEENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !17738 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17739
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorEENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 !dbg !17740 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @172, i64 16, i1 false), !dbg !17743
  ret void, !dbg !17744
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorEENtNtB1a_5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !17745 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17746
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplINtB5_12ContextErrorReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorEENtNtB1a_5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 !dbg !17747 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @173, i64 16, i1 false), !dbg !17750
  ret void, !dbg !17751
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !17752 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17753
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringEENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 !dbg !17754 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @174, i64 16, i1 false), !dbg !17757
  ret void, !dbg !17758
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !17759 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17760
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplINtNtB7_7wrapper12MessageErrorReEENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 !dbg !17761 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @175, i64 16, i1 false), !dbg !17764
  ret void, !dbg !17765
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplNtCsc0anycpf6TS_6ignore5ErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !17766 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17767
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplNtCsc0anycpf6TS_6ignore5ErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 !dbg !17768 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @176, i64 16, i1 false), !dbg !17771
  ret void, !dbg !17772
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !17773 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17774
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 !dbg !17775 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @177, i64 16, i1 false), !dbg !17778
  ret void, !dbg !17779
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplNtNtCshhHc5tDBDRu_12grep_printer5color10ColorErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !17780 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17781
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplNtNtCshhHc5tDBDRu_12grep_printer5color10ColorErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 !dbg !17782 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @178, i64 16, i1 false), !dbg !17785
  ret void, !dbg !17786
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplNtNtCshqpdr3wwzuw_13grep_searcher8searcher11ConfigErrorENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !17787 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17788
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplNtNtCshqpdr3wwzuw_13grep_searcher8searcher11ConfigErrorENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 !dbg !17789 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @179, i64 16, i1 false), !dbg !17792
  ret void, !dbg !17793
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBO_5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 !dbg !17794 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17795
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow5error9ErrorImplNtNtNtCskKLDkoKarTP_4core2io5error5ErrorENtNtBO_5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 !dbg !17796 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @180, i64 16, i1 false), !dbg !17799
  ret void, !dbg !17800
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17801 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17802
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCseNfSUspcXaQ_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5error5Error6sourceCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17803 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17804
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5error5Error7provideCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !17805 {
bb.a:
  ret void, !dbg !17806
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !17807 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @181, i64 16, i1 false), !dbg !17810
  ret void, !dbg !17811
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYINtNtCseNfSUspcXaQ_6anyhow7wrapper12MessageErrorReENtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17812 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17813
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYINtNtCseNfSUspcXaQ_6anyhow7wrapper12MessageErrorReENtNtCskKLDkoKarTP_4core5error5Error6sourceCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17814 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17815
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow7wrapper12MessageErrorReENtNtCskKLDkoKarTP_4core5error5Error7provideCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !17816 {
bb.a:
  ret void, !dbg !17817
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYINtNtCseNfSUspcXaQ_6anyhow7wrapper12MessageErrorReENtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !17818 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @182, i64 16, i1 false), !dbg !17821
  ret void, !dbg !17822
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtCsc0anycpf6TS_6ignore5ErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17823 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17824
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsc0anycpf6TS_6ignore5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !17825 {
bb.a:
  ret void, !dbg !17826
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsc0anycpf6TS_6ignore5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !17827 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @69, i64 16, i1 false), !dbg !17830
  ret void, !dbg !17831
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtCsiVkrP66SkGw_6lexopt5ErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17832 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17833
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtCsiVkrP66SkGw_6lexopt5ErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !17834 {
bb.a:
  ret void, !dbg !17835
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtCsiVkrP66SkGw_6lexopt5ErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !17836 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @74, i64 16, i1 false), !dbg !17839
  ret void, !dbg !17840
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvYNtNtCsG258MDvU3F_3std3env6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator3nthCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !17841 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17893), !dbg !17907
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17894), !dbg !17908
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17909 ; 3 uses
  %.val.i.i = load ptr, ptr %i.a, align 8, !dbg !17909, !alias.scope !17896, !nonnull !640, !noundef !640 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !17909
  %.val3.i.i = load ptr, ptr %i.b, align 8, !dbg !17909, !alias.scope !17896, !nonnull !640, !noundef !640 ; 3 uses
  %i.c = ptrtoint ptr %.val3.i.i to i64, !dbg !17910
  %i.d = ptrtoint ptr %.val.i.i to i64, !dbg !17910
  %i.e = sub nuw i64 %i.c, %i.d, !dbg !17910
  %i.f = udiv exact i64 %i.e, 24, !dbg !17910     ; 2 uses
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 %i.f), !dbg !17911 ; 4 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %..i.i.i, !dbg !17912 ; 4 uses
  store ptr %i.g, ptr %i.a, align 8, !dbg !17913, !alias.scope !17896
  %i.h = icmp eq ptr %.val3.i.i, %.val.i.i, !dbg !17914
  br i1 %i.h, label %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_by.exit, label %.lr.ph, !dbg !17914

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit.i.i.i: ; preds = %.lr.ph
  %i.i = icmp eq i64 %i.k, %..i.i.i, !dbg !17914
  br i1 %i.i, label %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_by.exit, label %.lr.ph, !dbg !17914

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit.i.i.i
  %.sroa.0.0.i.i.i1 = phi i64 [ %i.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.0.i.i.i1, !dbg !17914
  %i.k = add nuw nsw i64 %.sroa.0.0.i.i.i1, 1, !dbg !17914 ; 4 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit.i.i.i unwind label %bb.b, !dbg !17915, !noalias !17896

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit7.i.i.i: ; preds = %.lr.ph3
  %i.l = add i64 %.sroa.0.1.i.i.i2, 1, !dbg !17914 ; 2 uses
  %i.m = icmp eq i64 %i.l, %..i.i.i, !dbg !17914
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit7.i.i.i._crit_edge, label %.lr.ph3, !dbg !17914

bb.b:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.k, %..i.i.i, !dbg !17914
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit7.i.i.i._crit_edge, label %.lr.ph3, !dbg !17914

.lr.ph3:                                          ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit7.i.i.i
  %.sroa.0.1.i.i.i2 = phi i64 [ %i.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit7.i.i.i ], [ %i.k, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.1.i.i.i2, !dbg !17914
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit7.i.i.i unwind label %bb.c, !dbg !17916, !noalias !17896

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit7.i.i.i._crit_edge: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit7.i.i.i, %bb.b
  resume { ptr, i32 } %i.n, !dbg !17914

bb.c:                                             ; preds = %.lr.ph3
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !17914, !noalias !17896
  unreachable, !dbg !17914

_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_by.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECs2NzvFoTxuAy_2rg.exit.i.i.i, %bb.a
  %.not.not = icmp ugt i64 %2, %i.f, !dbg !17917
  br i1 %.not.not, label %bb.d, label %bb.e, !dbg !17918

bb.d:                                             ; preds = %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_by.exit
  store i64 -1, ptr %0, align 8, !dbg !17919
  br label %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit, !dbg !17920

bb.e:                                             ; preds = %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_by.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17901), !dbg !17921
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17902), !dbg !17921
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17903), !dbg !17922
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17904), !dbg !17922
  %i.r = icmp eq ptr %i.g, %.val3.i.i, !dbg !17923
  br i1 %i.r, label %bb.g, label %bb.f, !dbg !17924

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !17925
  store ptr %i.s, ptr %i.a, align 8, !dbg !17926, !alias.scope !17905, !noalias !17906
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !17927, !noalias !17905
  br label %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit, !dbg !17928

bb.g:                                             ; preds = %bb.e
  store i64 -1, ptr %0, align 8, !dbg !17929, !alias.scope !17906, !noalias !17905
  br label %_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit, !dbg !17928

_RNvXsi_NtCsG258MDvU3F_3std3envNtB5_6ArgsOsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.g, %bb.f, %bb.d
  ret void, !dbg !17920
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli5human14ParseSizeErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17930 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17931
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli5human14ParseSizeErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17932 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17933
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli5human14ParseSizeErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17934 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17935
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli5human14ParseSizeErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !17936 {
bb.a:
  ret void, !dbg !17937
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli5human14ParseSizeErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !17938 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @75, i64 16, i1 false), !dbg !17941
  ret void, !dbg !17942
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17943 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17944
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17945 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17946
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !17947 {
bb.a:
  ret void, !dbg !17948
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !17949 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @70, i64 16, i1 false), !dbg !17952
  ret void, !dbg !17953
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCshhHc5tDBDRu_12grep_printer5color10ColorErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17954 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17955
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCshhHc5tDBDRu_12grep_printer5color10ColorErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17956 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17957
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCshhHc5tDBDRu_12grep_printer5color10ColorErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !17958 {
bb.a:
  ret void, !dbg !17959
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCshhHc5tDBDRu_12grep_printer5color10ColorErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !17960 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @71, i64 16, i1 false), !dbg !17963
  ret void, !dbg !17964
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17965 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17966
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorNtNtCskKLDkoKarTP_4core5error5Error5causeCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17967 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17968
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17969 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17970
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !17971 {
bb.a:
  ret void, !dbg !17972
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !17973 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @76, i64 16, i1 false), !dbg !17976
  ret void, !dbg !17977
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCshqpdr3wwzuw_13grep_searcher8searcher11ConfigErrorNtNtCskKLDkoKarTP_4core5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17978 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17979
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCshqpdr3wwzuw_13grep_searcher8searcher11ConfigErrorNtNtCskKLDkoKarTP_4core5error5Error6sourceCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17980 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !17981
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCshqpdr3wwzuw_13grep_searcher8searcher11ConfigErrorNtNtCskKLDkoKarTP_4core5error5Error7provideCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !17982 {
bb.a:
  ret void, !dbg !17983
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCshqpdr3wwzuw_13grep_searcher8searcher11ConfigErrorNtNtCskKLDkoKarTP_4core5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !17984 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @72, i64 16, i1 false), !dbg !17987
  ret void, !dbg !17988
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #2 !dbg !17989 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17990
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7provideCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !17991 {
bb.a:
  ret void, !dbg !17992
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core2io5error5ErrorNtNtB8_5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #9 !dbg !17993 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @73, i64 16, i1 false), !dbg !17996
  ret void, !dbg !17997
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 !dbg !17998 {
bb.a:
  ret { ptr, i64 } { ptr @87, i64 40 }, !dbg !17999
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly captures(none) %0) unnamed_addr #2 !dbg !18000 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }, !dbg !18001
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCs2NzvFoTxuAy_2rg(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #2 !dbg !18002 {
bb.a:
  ret void, !dbg !18003
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #9 !dbg !18004 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @77, i64 16, i1 false), !dbg !18007
  ret void, !dbg !18008
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvYNtNtNtCskKLDkoKarTP_4core3str4iter15SplitWhitespaceNtNtNtNtB8_4iter6traits8iterator8Iterator3nthCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #6 !dbg !18009 {
bb.a:
  %i.a = tail call noundef i64 @_RNvXs_NvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator10advance_byNtNtNtBe_3str4iter15SplitWhitespaceNtB4_13SpecAdvanceBy15spec_advance_byCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0, i64 noundef range(i64 1, 0) %1), !dbg !18014
  %.not = icmp eq i64 %i.a, 0, !dbg !18015
  br i1 %.not, label %bb.b, label %bb.c, !dbg !18016

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc { ptr, i64 } @_RNvXsz_NtNtCskKLDkoKarTP_4core3str4iterNtB5_15SplitWhitespaceNtNtNtNtB9_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(64) %0) #30, !dbg !18017 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0, !dbg !18017
  %i.d = extractvalue { ptr, i64 } %i.b, 1, !dbg !18017
  br label %bb.c, !dbg !18017

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.d, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ], !dbg !18018
  %i.e = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0, !dbg !18019
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %.sroa.3.0, 1, !dbg !18019
  ret { ptr, i64 } %i.f, !dbg !18019
}

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error11object_dropNtCsc0anycpf6TS_6ignore5ErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCseNfSUspcXaQ_6anyhow5error23object_reallocate_boxedNtCsc0anycpf6TS_6ignore5ErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error17object_drop_frontNtCsc0anycpf6TS_6ignore5ErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error11object_dropNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCseNfSUspcXaQ_6anyhow5error23object_reallocate_boxedNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error17object_drop_frontNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error11object_dropNtNtCshhHc5tDBDRu_12grep_printer5color10ColorErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCseNfSUspcXaQ_6anyhow5error23object_reallocate_boxedNtNtCshhHc5tDBDRu_12grep_printer5color10ColorErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error17object_drop_frontNtNtCshhHc5tDBDRu_12grep_printer5color10ColorErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error11object_dropNtNtCshqpdr3wwzuw_13grep_searcher8searcher11ConfigErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCseNfSUspcXaQ_6anyhow5error23object_reallocate_boxedNtNtCshqpdr3wwzuw_13grep_searcher8searcher11ConfigErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error17object_drop_frontNtNtCshqpdr3wwzuw_13grep_searcher8searcher11ConfigErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error11object_dropNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCseNfSUspcXaQ_6anyhow5error23object_reallocate_boxedNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error17object_drop_frontNtNtNtCskKLDkoKarTP_4core2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error11object_dropINtNtB4_7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCseNfSUspcXaQ_6anyhow5error23object_reallocate_boxedINtNtB4_7wrapper12MessageErrorNtNtCsexYYUdYSQU6_5alloc6string6StringEECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error17object_drop_frontNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error11object_dropINtNtB4_7wrapper12MessageErrorReEECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCseNfSUspcXaQ_6anyhow5error23object_reallocate_boxedINtNtB4_7wrapper12MessageErrorReEECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error17object_drop_frontReECs2NzvFoTxuAy_2rg(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error11object_dropINtB2_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtCsiVkrP66SkGw_6lexopt5ErrorEECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCseNfSUspcXaQ_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtCsiVkrP66SkGw_6lexopt5ErrorEECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error17context_drop_restNtNtCsexYYUdYSQU6_5alloc6string6StringNtCsiVkrP66SkGw_6lexopt5ErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error11object_dropINtB2_12ContextErrorReNtCsiVkrP66SkGw_6lexopt5ErrorEECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCseNfSUspcXaQ_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtCsiVkrP66SkGw_6lexopt5ErrorEECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error17context_drop_restReNtCsiVkrP66SkGw_6lexopt5ErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error11object_dropINtB2_12ContextErrorReNtNtCsgwyS1EwTFAS_8grep_cli5human14ParseSizeErrorEECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCseNfSUspcXaQ_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtNtCsgwyS1EwTFAS_8grep_cli5human14ParseSizeErrorEECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error17context_drop_restReNtNtCsgwyS1EwTFAS_8grep_cli5human14ParseSizeErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error11object_dropINtB2_12ContextErrorReNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorEECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCseNfSUspcXaQ_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorEECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error17context_drop_restReNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkFormatErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error11object_dropINtB2_12ContextErrorReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorEECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCseNfSUspcXaQ_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorEECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error17context_drop_restReNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorECs2NzvFoTxuAy_2rg(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs2_NtCsG258MDvU3F_3std9backtraceNtB5_9Backtrace7capture(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48)) unnamed_addr #4

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error11object_dropINtB2_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtB4_5ErrorEECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtCseNfSUspcXaQ_6anyhow5error23object_reallocate_boxedINtB2_12ContextErrorNtNtCsexYYUdYSQU6_5alloc6string6StringNtB4_5ErrorEECs2NzvFoTxuAy_2rg(ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtCseNfSUspcXaQ_6anyhow5error22context_chain_downcastNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCseNfSUspcXaQ_6anyhow5error23context_chain_drop_restNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECs2NzvFoTxuAy_2rg(i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCs6Ur84ob3I15_9termcolorQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtB2_6BufferENtB2_10WriteColor19supports_hyperlinksCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCs6Ur84ob3I15_9termcolorQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtB2_6BufferENtB2_10WriteColor14supports_colorCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs7_NtCshhHc5tDBDRu_12grep_printer9hyperlinkNtB5_4Part14interpolate_to(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXCs6Ur84ob3I15_9termcolorQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtB2_6BufferENtB2_10WriteColor13set_hyperlinkCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

end_hunk_0
