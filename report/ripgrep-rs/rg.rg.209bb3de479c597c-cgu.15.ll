Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.15?download=true
inline.NumInlined: 496
inline.NumDeleted: 260
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bq = add nuw nsw i64 %i.bg, 2
  %i.br = icmp samesign ne i64 %i.bq, %i.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bt = add nuw nsw i64 %i.bg, 3
  %i.bu = icmp samesign ne i64 %i.bt, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9573), !dbg !9609
  br i1 %i.bh, label %bb.m, label %bb.k, !dbg !9611

bb.k:                                             ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %.not.i.i.us, label %bb.l, label %.split.i.i.us, !dbg !9612

.split.i.i.us:                                    ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %.split.us161, !dbg !9614

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bj, align 1, !dbg !9615, !alias.scope !9563, !noalias !9574, !noundef !263
  %i.bw = icmp sgt i8 %i.bv, -65, !dbg !9616
  br i1 %i.bw, label %bb.m, label %.split.us161, !dbg !9614

bb.m:                                             ; preds = %bb.l, %.split.i.i.us, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %i.bl, label %.critedge, label %bb.n, !dbg !9619

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bk, align 1, !dbg !9620, !noalias !9575, !noundef !263 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1, !dbg !9621
  br i1 %i.by, label %bb.o, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us, !dbg !9621

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us: ; preds = %bb.n
  %i.bz = and i8 %i.bx, 31, !dbg !9623
  %i.ca = zext nneg i8 %i.bz to i32, !dbg !9623   ; 3 uses
  tail call void @llvm.assume(i1 %i.bo), !dbg !9625
  %i.cb = load i8, ptr %i.bm, align 1, !dbg !9626, !noalias !9575, !noundef !263
  %i.cc = shl nuw nsw i32 %i.ca, 6, !dbg !9627
  %i.cd = and i8 %i.cb, 63, !dbg !9628
  %i.ce = zext nneg i8 %i.cd to i32, !dbg !9628   ; 2 uses
  %i.cf = or disjoint i32 %i.cc, %i.ce, !dbg !9627
  %i.cg = icmp samesign ugt i8 %i.bx, -33, !dbg !9629
  br i1 %i.cg, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us, label %.loopexit42.split.us.loopexit, !dbg !9629

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us
  tail call void @llvm.assume(i1 %i.br), !dbg !9632
  %i.ch = load i8, ptr %i.bp, align 1, !dbg !9633, !noalias !9575, !noundef !263
  %i.ci = shl nuw nsw i32 %i.ce, 6, !dbg !9634
  %i.cj = and i8 %i.ch, 63, !dbg !9635
  %i.ck = zext nneg i8 %i.cj to i32, !dbg !9635
  %i.cl = or disjoint i32 %i.ci, %i.ck, !dbg !9634 ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ca, 12, !dbg !9636
  %i.cn = or disjoint i32 %i.cl, %i.cm, !dbg !9637
  %i.co = icmp samesign ugt i8 %i.bx, -17, !dbg !9638
  br i1 %i.co, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us, label %.loopexit42.split.us.loopexit, !dbg !9638

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us
  tail call void @llvm.assume(i1 %i.bu), !dbg !9641
  %i.cp = load i8, ptr %i.bs, align 1, !dbg !9642, !noalias !9575, !noundef !263
  %i.cq = shl nuw nsw i32 %i.ca, 18, !dbg !9643
  %i.cr = and i32 %i.cq, 1835008, !dbg !9643
  %i.cs = shl nuw nsw i32 %i.cl, 6, !dbg !9644
  %i.ct = and i8 %i.cp, 63, !dbg !9645
  %i.cu = zext nneg i8 %i.ct to i32, !dbg !9645
  %i.cv = or disjoint i32 %i.cs, %i.cu, !dbg !9644
  %i.cw = or disjoint i32 %i.cv, %i.cr, !dbg !9646
  br label %.loopexit42.split.us.loopexit, !dbg !9647

bb.o:                                             ; preds = %bb.n
  %i.cx = zext nneg i8 %i.bx to i32, !dbg !9648
  br label %.loopexit42.split.us.loopexit, !dbg !9649

.loopexit42.split.us.loopexit:                    ; preds = %bb.o, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us
  %.sroa.4.0.i.ph.i.us = phi i32 [ %i.cn, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us ], [ %i.cw, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us ], [ %i.cf, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us ], [ %i.cx, %bb.o ]
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us, 1114112, !dbg !9650
  tail call void @llvm.assume(i1 %i.cy), !dbg !9650
  br label %.loopexit42.split.us, !dbg !9657

.split.us161:                                     ; preds = %bb.l, %.split.i.i.us, %bb.c, %.split.i.i.us.peel
  %.lcssa323 = phi i64 [ %.promoted157, %.split.i.i.us.peel ], [ %.promoted157, %bb.c ], [ %i.bg, %.split.i.i.us ], [ %i.bg, %bb.l ]
  %.lcssa320 = phi i8 [ %.promoted206, %.split.i.i.us.peel ], [ %.promoted206, %bb.c ], [ 1, %.split.i.i.us ], [ 1, %bb.l ]
  %i.cz = xor i8 %.lcssa320, 1
  store i8 %i.cz, ptr %i.f, align 8, !dbg !9657, !alias.scope !9573
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %.lcssa323, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @687) #30, !dbg !9658, !noalias !9574
  unreachable, !dbg !9658

.split166.us:                                     ; preds = %bb.d
  %i.da = xor i8 %.promoted206, 1
  store i8 %i.da, ptr %i.f, align 8, !dbg !9657, !alias.scope !9573
  br i1 %i.k, label %bb.s, label %bb.p, !dbg !9651

.loopexit42.split.us:                             ; preds = %.loopexit42.split.us.loopexit, %bb.g
  %.lcssa325 = phi i64 [ %.promoted157, %bb.g ], [ %i.bg, %.loopexit42.split.us.loopexit ]
  store i8 0, ptr %i.f, align 8, !dbg !9657, !alias.scope !9573
  br label %bb.s, !dbg !9659

default.unreachable261:                           ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %.split166.us
  store i8 1, ptr %i.c, align 2, !dbg !9660, !alias.scope !9573
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !9661

bb.q:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !9662
  %i.dc = load i64, ptr %i.db, align 8, !dbg !9662, !noundef !263 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9663 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !dbg !9663, !noundef !263 ; 4 uses
  %.not = icmp ult i64 %i.de, %i.dc, !dbg !9663
  br i1 %.not, label %bb.t, label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !9663

bb.r:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9664 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !9665 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !dbg !9665, !noundef !263 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1, !dbg !9665
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !9577
  %i.dk = load ptr, ptr %i.dj, align 8, !dbg !9577, !nonnull !263, !noundef !263 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !9577
  %i.dm = load i64, ptr %i.dl, align 8, !dbg !9577, !noundef !263 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !9577
  %i.do = load ptr, ptr %i.dn, align 8, !dbg !9577, !nonnull !263, !noundef !263 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !9577
  %i.dq = load i64, ptr %i.dp, align 8, !dbg !9577, !noundef !263 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !9666 ; 8 uses
  %i.ds = add nsw i64 %i.dq, -1, !dbg !9667       ; 4 uses
  br i1 %i.di, label %bb.ae, label %bb.w, !dbg !9668

.critedge:                                        ; preds = %bb.m
  store i8 0, ptr %i.f, align 8, !dbg !9657, !alias.scope !9573
  br label %bb.s, !dbg !9651

bb.s:                                             ; preds = %.critedge, %.loopexit42.split.us, %.split166.us
  %i.dt = phi i64 [ %.lcssa325, %.loopexit42.split.us ], [ %i.j, %.split166.us ], [ %i.j, %.critedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9659
  store i64 %i.dt, ptr %i.du, align 8, !dbg !9659
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9659
  store i64 %i.dt, ptr %i.dv, align 8, !dbg !9659
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !9669

_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit: ; preds = %bb.s, %bb.p, %.preheader, %.split.us.i21, %._crit_edge.i13, %.split.us.i11, %._crit_edge.i, %.loopexit43, %.loopexit44, %bb.q
  %storemerge.i.sink = phi i64 [ 1, %.loopexit43 ], [ 1, %.split.us.i11 ], [ 0, %bb.q ], [ 1, %.split.us.i21 ], [ 0, %.loopexit44 ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i13 ], [ 1, %bb.s ], [ 0, %bb.p ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8, !dbg !9670
  ret void, !dbg !9671

bb.t:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !9662
  %i.dx = load ptr, ptr %i.dw, align 8, !dbg !9662, !nonnull !263, !noundef !263
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !9672
  %i.dz = load i8, ptr %i.dy, align 8, !dbg !9672, !noundef !263 ; 2 uses
  %i.ea = sub nuw i64 %i.dc, %i.de, !dbg !9673    ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.de, !dbg !9674 ; 2 uses
  %i.ec = icmp samesign ult i64 %i.ea, 16, !dbg !9675
  br i1 %i.ec, label %.lr.ph.i, label %bb.u, !dbg !9675

bb.u:                                             ; preds = %bb.t
  %i.ed = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ea), !dbg !9676 ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0, !dbg !9676
  %i.ef = extractvalue { i64, i64 } %i.ed, 1, !dbg !9676
  %i.eg = trunc nuw i64 %i.ee to i1, !dbg !9677
  br i1 %i.eg, label %.loopexit43, label %.loopexit44, !dbg !9677

.lr.ph.i:                                         ; preds = %bb.t, %bb.v
  %.sroa.04.011.i = phi i64 [ %i.ek, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sroa.04.011.i, !dbg !9678
  %i.ei = load i8, ptr %i.eh, align 1, !dbg !9678, !alias.scope !9582, !noundef !263
  %i.ej = icmp eq i8 %i.ei, %i.dz, !dbg !9678
  br i1 %i.ej, label %.loopexit43, label %bb.v, !dbg !9678

bb.v:                                             ; preds = %.lr.ph.i
  %i.ek = add nuw nsw i64 %.sroa.04.011.i, 1, !dbg !9679 ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %i.ek, %i.ea, !dbg !9680
  br i1 %exitcond.not.i7, label %.loopexit44, label %.lr.ph.i, !dbg !9680

.loopexit43:                                      ; preds = %.lr.ph.i, %bb.u
  %.sroa.5.0.i = phi i64 [ %i.ef, %bb.u ], [ %.sroa.04.011.i, %.lr.ph.i ], !dbg !9681 ; 2 uses
  %i.el = icmp ult i64 %.sroa.5.0.i, %i.ea, !dbg !9682
  tail call void @llvm.assume(i1 %i.el), !dbg !9683
  %i.em = add i64 %.sroa.5.0.i, %i.de, !dbg !9684 ; 2 uses
  %i.en = add i64 %i.em, 1, !dbg !9685            ; 2 uses
  store i64 %i.en, ptr %i.dd, align 8, !dbg !9685
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9686
  store i64 %i.em, ptr %i.eo, align 8, !dbg !9686
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9686
  store i64 %i.en, ptr %i.ep, align 8, !dbg !9686
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !9687

.loopexit44:                                      ; preds = %bb.v, %bb.u
  store i64 %i.dc, ptr %i.dd, align 8, !dbg !9688
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !9689

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9583), !dbg !9690
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9584), !dbg !9690
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9585), !dbg !9690
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9586), !dbg !9690
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !9584 ; 2 uses
  %i.eq = add i64 %.promoted.i, %i.ds, !dbg !9691 ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dm, !dbg !9692
  br i1 %i.er, label %.lr.ph.i8, label %._crit_edge.i, !dbg !9692

.lr.ph.i8:                                        ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !9584, !noundef !263
  %i.eu = load i64, ptr %i.df, align 8, !alias.scope !9584
  %.fr60.i = freeze i64 %i.eu, !dbg !9693         ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !9584 ; 2 uses
  %i.ex = sub i64 %i.dq, %i.ew
  %invariant.op = sub i64 1, %.fr60.i, !dbg !9693
  br label %.lr.ph.split.i, !dbg !9693

._crit_edge.i:                                    ; preds = %bb.z, %bb.w
  store i64 %i.dm, ptr %i.dr, align 8, !dbg !9694, !alias.scope !9584
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !9695

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.i8
  %i.ey = phi i64 [ %.sink70.i, %bb.z ], [ %i.dh, %.lr.ph.i8 ] ; 3 uses
  %i.ez = phi i64 [ %i.fj, %bb.z ], [ %i.eq, %.lr.ph.i8 ]
  %i.fa = phi i64 [ %.sink71.i, %bb.z ], [ %.promoted.i, %.lr.ph.i8 ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez, !dbg !9696
  %i.fc = load i8, ptr %i.fb, align 1, !dbg !9697, !alias.scope !9585, !noundef !263
  %i.fd = and i8 %i.fc, 63, !dbg !9698
  %i.fe = zext nneg i8 %i.fd to i64, !dbg !9699
  %i.ff = shl nuw i64 1, %i.fe, !dbg !9700
  %i.fg = and i64 %i.ff, %i.et, !dbg !9700
  %.not.i9 = icmp eq i64 %i.fg, 0, !dbg !9700
  br i1 %.not.i9, label %bb.x, label %bb.y, !dbg !9693

bb.x:                                             ; preds = %.lr.ph.split.i
  %i.fh = add i64 %i.fa, %i.dq, !dbg !9701
  br label %bb.z, !dbg !9702

bb.y:                                             ; preds = %.lr.ph.split.i
  %..i.i10 = tail call noundef i64 @llvm.umax.i64(i64 %i.ey, i64 %.fr60.i), !dbg !9703 ; 2 uses
  %i.fi = icmp ult i64 %..i.i10, %i.dq, !dbg !9704
  br i1 %i.fi, label %.lr.ph306, label %.preheader36.i.preheader, !dbg !9705

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.x
  %.sink71.i = phi i64 [ %i.gh, %bb.ad ], [ %i.gg, %bb.ac ], [ %i.fh, %bb.x ] ; 3 uses
  %.sink70.i = phi i64 [ 0, %bb.ad ], [ %i.ex, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  store i64 %.sink71.i, ptr %i.dr, align 8, !dbg !9706, !alias.scope !9584
  store i64 %.sink70.i, ptr %i.dg, align 8, !dbg !9706, !alias.scope !9584
  %i.fj = add i64 %.sink71.i, %i.ds, !dbg !9691   ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.dm, !dbg !9692
  br i1 %i.fk, label %.lr.ph.split.i, label %._crit_edge.i, !dbg !9692

bb.aa:                                            ; preds = %.lr.ph306
  %i.fl = add nuw nsw i64 %.sroa.04.0.i305, 1, !dbg !9707 ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.dq, !dbg !9704
  br i1 %i.fm, label %.lr.ph306, label %.preheader36.i.preheader, !dbg !9705

.preheader36.i.preheader:                         ; preds = %bb.aa, %bb.y
  %i.fn = icmp ult i64 %i.ey, %.fr60.i, !dbg !9708
  br i1 %i.fn, label %.lr.ph308, label %.split.us.i11, !dbg !9709

.lr.ph306:                                        ; preds = %bb.y, %bb.aa
  %.sroa.04.0.i305 = phi i64 [ %i.fl, %bb.aa ], [ %..i.i10, %bb.y ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.i305, !dbg !9710
  %i.fp = load i8, ptr %i.fo, align 1, !dbg !9710, !alias.scope !9586, !noundef !263
  %i.fq = add i64 %.sroa.04.0.i305, %i.fa, !dbg !9711 ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.dm, !dbg !9712
  tail call void @llvm.assume(i1 %i.fr), !dbg !9713
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fq, !dbg !9714
  %i.ft = load i8, ptr %i.fs, align 1, !dbg !9715, !alias.scope !9585, !noundef !263
  %.not21.i = icmp eq i8 %i.fp, %i.ft, !dbg !9710
  br i1 %.not21.i, label %bb.aa, label %bb.ad, !dbg !9710

.preheader36.i:                                   ; preds = %bb.ab
  %i.fu = icmp ult i64 %i.ey, %i.fy, !dbg !9708
  br i1 %i.fu, label %.lr.ph308, label %.split.us.i11, !dbg !9709

.split.us.i11:                                    ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.fv = add i64 %i.fa, %i.dq, !dbg !9716        ; 2 uses
  store i64 %i.fv, ptr %i.dr, align 8, !dbg !9716, !alias.scope !9584
  store i64 0, ptr %i.dg, align 8, !dbg !9717, !alias.scope !9584
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9718
  store i64 %i.fa, ptr %i.fw, align 8, !dbg !9718, !alias.scope !9596
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9718
  store i64 %i.fv, ptr %i.fx, align 8, !dbg !9718, !alias.scope !9596
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !9719

.lr.ph308:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i307 = phi i64 [ %i.fy, %.preheader36.i ], [ %.fr60.i, %.preheader36.i.preheader ]
  %i.fy = add i64 %.sroa.2.0.i307, -1, !dbg !9720 ; 6 uses
  %i.fz = icmp ult i64 %i.fy, %i.dq, !dbg !9721
  br i1 %i.fz, label %bb.ab, label %.split32.us.i, !dbg !9721

bb.ab:                                            ; preds = %.lr.ph308
  %i.ga = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fy, !dbg !9721
  %i.gb = load i8, ptr %i.ga, align 1, !dbg !9721, !alias.scope !9586, !noundef !263
  %i.gc = add i64 %i.fy, %i.fa, !dbg !9722        ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.dm, !dbg !9723
  tail call void @llvm.assume(i1 %i.gd), !dbg !9724
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gc, !dbg !9725
  %i.gf = load i8, ptr %i.ge, align 1, !dbg !9726, !alias.scope !9585, !noundef !263
  %.not20.i = icmp eq i8 %i.gb, %i.gf, !dbg !9721
  br i1 %.not20.i, label %.preheader36.i, label %bb.ac, !dbg !9721

.split32.us.i:                                    ; preds = %.lr.ph308
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fy, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !dbg !9721, !noalias !9599
  unreachable, !dbg !9721

bb.ac:                                            ; preds = %bb.ab
  %i.gg = add i64 %i.fa, %i.ew, !dbg !9727
  br label %bb.z, !dbg !9728

bb.ad:                                            ; preds = %.lr.ph306
  %.reass.reass = add i64 %i.fa, %invariant.op
  %i.gh = add i64 %.reass.reass, %.sroa.04.0.i305, !dbg !9729
  br label %bb.z, !dbg !9730

bb.ae:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9600), !dbg !9731
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9601), !dbg !9731
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9602), !dbg !9731
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9603), !dbg !9731
  %.promoted.i12 = load i64, ptr %i.dr, align 8, !alias.scope !9601 ; 2 uses
  %i.gi = add i64 %.promoted.i12, %i.ds, !dbg !9732 ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.dm, !dbg !9733
  br i1 %i.gj, label %.lr.ph.i15, label %._crit_edge.i13, !dbg !9733

.lr.ph.i15:                                       ; preds = %bb.ae
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !9601, !noundef !263
  %i.gm = load i64, ptr %i.df, align 8, !alias.scope !9601
  %.fr215 = freeze i64 %i.gm, !dbg !9734          ; 7 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !9601
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr215, i64 range(i64 0, -9223372036854775808) %i.dq), !dbg !9734
  %i.gp = add i64 %.fr215, -1, !dbg !9734         ; 2 uses
  %.first_iter.i16 = icmp ult i64 %i.gp, %i.dq
  %exitcond.not.i17310.not = icmp ult i64 %.fr215, %i.dq
  %invariant.op359 = sub i64 1, %.fr215, !dbg !9734
  %.not34.i.us313 = icmp eq i64 %.fr215, 0        ; 2 uses
  br label %.lr.ph.split.us.i, !dbg !9734

.lr.ph.split.us.i:                                ; preds = %bb.ah, %.lr.ph.i15
  %i.gq = phi i64 [ %i.hp, %bb.ah ], [ %i.gi, %.lr.ph.i15 ]
  %i.gr = phi i64 [ %.sink.i18, %bb.ah ], [ %.promoted.i12, %.lr.ph.i15 ] ; 7 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gq, !dbg !9735
  %i.gt = load i8, ptr %i.gs, align 1, !dbg !9736, !alias.scope !9602, !noundef !263
  %i.gu = and i8 %i.gt, 63, !dbg !9737
  %i.gv = zext nneg i8 %i.gu to i64, !dbg !9738
  %i.gw = shl nuw i64 1, %i.gv, !dbg !9739
  %i.gx = and i64 %i.gw, %i.gl, !dbg !9739
  %.not.us.i = icmp eq i64 %i.gx, 0, !dbg !9739
  br i1 %.not.us.i, label %bb.ag, label %.preheader35.i.preheader, !dbg !9734

.preheader35.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i17310.not, label %.lr.ph312, label %.preheader.i19.preheader, !dbg !9740

.preheader35.i:                                   ; preds = %.lr.ph312
  %i.gy = add i64 %.sroa.04.0.us.i311, 1, !dbg !9741 ; 2 uses
  %exitcond.not.i17 = icmp eq i64 %i.gy, %umax.i, !dbg !9742
  br i1 %exitcond.not.i17, label %.preheader.i19.preheader, label %.lr.ph312, !dbg !9740

.preheader.i19.preheader:                         ; preds = %.preheader35.i, %.preheader35.i.preheader
  br i1 %.first_iter.i16, label %.preheader.i19.us.preheader, label %.preheader.split.i21

.preheader.i19.us.preheader:                      ; preds = %.preheader.i19.preheader
  br i1 %.not34.i.us313, label %.split.us.i21, label %.lr.ph315, !dbg !9743

.preheader.i19.us:                                ; preds = %.lr.ph315
  %.not34.i.us = icmp eq i64 %i.gz, 0, !dbg !9744
  br i1 %.not34.i.us, label %.split.us.i21, label %.lr.ph315, !dbg !9743

.lr.ph315:                                        ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us
  %.sroa.2.0.us.i.us314 = phi i64 [ %i.gz, %.preheader.i19.us ], [ %.fr215, %.preheader.i19.us.preheader ]
  %i.gz = add i64 %.sroa.2.0.us.i.us314, -1, !dbg !9745 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gz, !dbg !9746
  %i.hb = load i8, ptr %i.ha, align 1, !dbg !9746, !alias.scope !9603, !noundef !263
  %i.hc = add i64 %i.gz, %i.gr, !dbg !9747        ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.dm, !dbg !9748
  tail call void @llvm.assume(i1 %i.hd), !dbg !9749
  %i.he = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hc, !dbg !9750
  %i.hf = load i8, ptr %i.he, align 1, !dbg !9751, !alias.scope !9602, !noundef !263
  %.not20.us.i.us = icmp eq i8 %i.hb, %i.hf, !dbg !9746
  br i1 %.not20.us.i.us, label %.preheader.i19.us, label %.split.us, !dbg !9746

.split.us:                                        ; preds = %.lr.ph315
  %i.hg = add i64 %i.gr, %i.go, !dbg !9752
  br label %bb.ah, !dbg !9753

.preheader.split.i21:                             ; preds = %.preheader.i19.preheader
  br i1 %.not34.i.us313, label %.split.us.i21, label %.split32.us.i22, !dbg !9743

.lr.ph312:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i311 = phi i64 [ %i.gy, %.preheader35.i ], [ %.fr215, %.preheader35.i.preheader ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.us.i311, !dbg !9754
  %i.hi = load i8, ptr %i.hh, align 1, !dbg !9754, !alias.scope !9603, !noundef !263
  %i.hj = add i64 %.sroa.04.0.us.i311, %i.gr, !dbg !9755 ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %i.dm, !dbg !9756
  tail call void @llvm.assume(i1 %i.hk), !dbg !9757
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hj, !dbg !9758
  %i.hm = load i8, ptr %i.hl, align 1, !dbg !9759, !alias.scope !9602, !noundef !263
  %.not21.us.i = icmp eq i8 %i.hi, %i.hm, !dbg !9754
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.af, !dbg !9754

bb.af:                                            ; preds = %.lr.ph312
  %.reass282.reass = add i64 %i.gr, %invariant.op359
  %i.hn = add i64 %.reass282.reass, %.sroa.04.0.us.i311, !dbg !9760
  br label %bb.ah, !dbg !9761

bb.ag:                                            ; preds = %.lr.ph.split.us.i
  %i.ho = add i64 %i.gr, %i.dq, !dbg !9762
  br label %bb.ah, !dbg !9763

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.split.us
  %.sink.i18 = phi i64 [ %i.ho, %bb.ag ], [ %i.hn, %bb.af ], [ %i.hg, %.split.us ] ; 3 uses
  store i64 %.sink.i18, ptr %i.dr, align 8, !dbg !9764, !alias.scope !9601
  %i.hp = add i64 %.sink.i18, %i.ds, !dbg !9732   ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.dm, !dbg !9733
  br i1 %i.hq, label %.lr.ph.split.us.i, label %._crit_edge.i13, !dbg !9733

._crit_edge.i13:                                  ; preds = %bb.ah, %bb.ae
  store i64 %i.dm, ptr %i.dr, align 8, !dbg !9765, !alias.scope !9601
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !9766

.split.us.i21:                                    ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us, %.preheader.split.i21
  %i.hr = add i64 %i.gr, %i.dq, !dbg !9767        ; 2 uses
  store i64 %i.hr, ptr %i.dr, align 8, !dbg !9767, !alias.scope !9601
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9768
  store i64 %i.gr, ptr %i.hs, align 8, !dbg !9768, !alias.scope !9604
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9768
  store i64 %i.hr, ptr %i.ht, align 8, !dbg !9768, !alias.scope !9604
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg.exit, !dbg !9769

.split32.us.i22:                                  ; preds = %.preheader.split.i21
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gp, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !dbg !9746, !noalias !9605
  unreachable, !dbg !9746
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9770 {
bb.a:
  ret i8 3, !dbg !9771
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag12doc_variable(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9772 {
bb.a:
  ret { ptr, i64 } { ptr @688, i64 6 }, !dbg !9773
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9774 {
bb.a:
  ret { ptr, i64 } { ptr @689, i64 29 }, !dbg !9775
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9776 {
bb.a:
  ret i1 false, !dbg !9777
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9778 {
bb.a:
  ret { ptr, i64 } { ptr @690, i64 16 }, !dbg !9779
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9780 {
bb.a:
  ret i8 2, !dbg !9781
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag12doc_variable(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9782 {
bb.a:
  ret { ptr, i64 } { ptr @280, i64 4 }, !dbg !9783
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9784 {
bb.a:
  ret { ptr, i64 } { ptr @691, i64 413 }, !dbg !9785
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9786 {
bb.a:
  ret { ptr, i64 } { ptr @692, i64 41 }, !dbg !9787
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9788 {
bb.a:
  ret i1 false, !dbg !9789
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9790 {
bb.a:
  ret { ptr, i64 } { ptr @693, i64 5 }, !dbg !9791
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { i1, i8 } @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag10name_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9792 {
bb.a:
  ret { i1, i8 } { i1 true, i8 105 }, !dbg !9793
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9794 {
bb.a:
  ret i8 1, !dbg !9795
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9796 {
bb.a:
  ret { ptr, i64 } { ptr @694, i64 524 }, !dbg !9797
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9798 {
bb.a:
  ret { ptr, i64 } { ptr @695, i64 24 }, !dbg !9799
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9800 {
bb.a:
  ret i1 true, !dbg !9801
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9802 {
bb.a:
  ret { ptr, i64 } { ptr @696, i64 11 }, !dbg !9803
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 7) i8 @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag12doc_category(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9804 {
bb.a:
  ret i8 2, !dbg !9805
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag12doc_variable(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9806 {
bb.a:
  ret { ptr, i64 } { ptr @697, i64 4 }, !dbg !9807
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef range(i8 0, 5) i8 @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag15completion_type(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9808 {
bb.a:
  ret i8 1, !dbg !9809
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag8doc_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9810 {
bb.a:
  ret { ptr, i64 } { ptr @698, i64 676 }, !dbg !9811
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag9doc_short(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9812 {
bb.a:
  ret { ptr, i64 } { ptr @699, i64 32 }, !dbg !9813
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag9is_switch(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9814 {
bb.a:
  ret i1 false, !dbg !9815
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag9name_long(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #11 !dbg !9816 {
bb.a:
  ret { ptr, i64 } { ptr @700, i64 11 }, !dbg !9817
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNtCseNfSUspcXaQ_6anyhow7context6QuotedQNtNtCskKLDkoKarTP_4core3fmt9FormatterENtBK_5Write10write_charCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(8) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 !dbg !9818 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9836
  store i32 0, ptr %i.a, align 4, !dbg !9836
  %i.b = icmp samesign ult i32 %1, 128, !dbg !9837
  br i1 %i.b, label %bb.c, label %bb.b, !dbg !9837

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048, !dbg !9838
  %i.d = trunc i32 %1 to i8, !dbg !9839
  %i.e = and i8 %i.d, 63, !dbg !9839
  %i.f = or disjoint i8 %i.e, -128, !dbg !9839    ; 3 uses
  %i.g = lshr i32 %1, 6, !dbg !9840
  %i.h = trunc i32 %i.g to i8, !dbg !9841         ; 2 uses
  %i.i = and i8 %i.h, 63, !dbg !9841
  %i.j = or disjoint i8 %i.i, -128, !dbg !9841    ; 2 uses
  %i.k = lshr i32 %1, 12, !dbg !9842
  %i.l = trunc i32 %i.k to i8, !dbg !9843         ; 2 uses
  %i.m = and i8 %i.l, 63, !dbg !9843
  %i.n = or disjoint i8 %i.m, -128, !dbg !9843
  %i.o = lshr i32 %1, 18, !dbg !9844
  %i.p = trunc nuw nsw i32 %i.o to i8, !dbg !9845
  %i.q = or disjoint i8 %i.p, -16, !dbg !9845
  br i1 %i.c, label %bb.d, label %bb.e, !dbg !9846

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8, !dbg !9847
  store i8 %i.r, ptr %i.a, align 4, !dbg !9847, !alias.scope !9835
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit, !dbg !9848

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64, !dbg !9849
  store i8 %i.s, ptr %i.a, align 4, !dbg !9849, !alias.scope !9835
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !9850
  store i8 %i.f, ptr %i.t, align 1, !dbg !9851, !alias.scope !9835
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit, !dbg !9852

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536, !dbg !9838
  br i1 %i.u, label %bb.f, label %bb.g, !dbg !9853

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32, !dbg !9854
  store i8 %i.v, ptr %i.a, align 4, !dbg !9854, !alias.scope !9835
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !9855
  store i8 %i.j, ptr %i.w, align 1, !dbg !9856, !alias.scope !9835
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2, !dbg !9857
  store i8 %i.f, ptr %i.x, align 2, !dbg !9858, !alias.scope !9835
  br label %_RNvNtNtCskKLDkoKarTP_4core4char7methods15encode_utf8_raw.exit, !dbg !9852

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !dbg !9859, !alias.scope !9835
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!9404 = distinct !DILocation(line: 496, column: 34, scope: !9382, inlinedAt: !9390)
!9405 = distinct !DILocation(line: 515, column: 36, scope: !9403, inlinedAt: !9404)
!9406 = distinct !DILocation(line: 222, column: 28, scope: !9401, inlinedAt: !9405)
!9407 = distinct !DISubprogram(name: "eq<u8>", linkageName: "_RNvXsd_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullhENtNtB9_3cmp9PartialEq2eqCs2NzvFoTxuAy_2rg", scope: !421, file: !334, line: 1662, type: !264, scopeLine: 1662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9408 = distinct !DISubprogram(name: "next<u8>", linkageName: "_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !487, file: !337, line: 157, type: !264, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9409 = distinct !DILexicalBlock(scope: !9408, file: !337, line: 161, column: 17)
!9410 = distinct !DILexicalBlock(scope: !9409, file: !337, line: 162, column: 17)
!9411 = distinct !DISubprogram(name: "next_code_point<core::slice::iter::Iter<u8>>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2NzvFoTxuAy_2rg", scope: !9568, file: !9567, line: 35, type: !264, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9412 = distinct !DISubprogram(name: "next", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next", scope: !9569, file: !321, line: 39, type: !264, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9413 = distinct !DILocation(line: 1148, column: 52, scope: !9387, inlinedAt: !9378)
!9414 = distinct !DILocation(line: 42, column: 18, scope: !9412, inlinedAt: !9413)
!9415 = distinct !DILocation(line: 37, column: 20, scope: !9411, inlinedAt: !9414)
!9416 = distinct !DILocation(line: 180, column: 28, scope: !9410, inlinedAt: !9415)
!9417 = distinct !{!9417, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2NzvFoTxuAy_2rg"}
!9418 = distinct !{!9418, !9417, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2NzvFoTxuAy_2rg: argument 0"}
!9419 = distinct !DILexicalBlock(scope: !9411, file: !9567, line: 37, column: 5)
!9420 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullhE3addCs2NzvFoTxuAy_2rg", scope: !336, file: !334, line: 619, type: !264, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9421 = distinct !DILocation(line: 185, column: 40, scope: !9410, inlinedAt: !9415)
!9422 = distinct !DISubprogram(name: "utf8_first_byte", linkageName: "_RNvNtNtCskKLDkoKarTP_4core3str11validations15utf8_first_byte", scope: !9568, file: !9567, line: 10, type: !264, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9423 = distinct !DILocation(line: 45, column: 16, scope: !9419, inlinedAt: !9414)
!9424 = distinct !DILexicalBlock(scope: !9419, file: !9567, line: 45, column: 5)
!9425 = distinct !DILocation(line: 48, column: 29, scope: !9424, inlinedAt: !9414)
!9426 = distinct !DILocation(line: 180, column: 28, scope: !9410, inlinedAt: !9425)
!9427 = distinct !DISubprogram(name: "utf8_acc_cont_byte", linkageName: "_RNvNtNtCskKLDkoKarTP_4core3str11validations18utf8_acc_cont_byte", scope: !9568, file: !9567, line: 16, type: !264, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9428 = distinct !DILexicalBlock(scope: !9424, file: !9567, line: 48, column: 5)
!9429 = distinct !DILocation(line: 49, column: 18, scope: !9428, inlinedAt: !9414)
!9430 = distinct !DILexicalBlock(scope: !9428, file: !9567, line: 49, column: 5)
!9431 = distinct !DILocation(line: 185, column: 40, scope: !9410, inlinedAt: !9425)
!9432 = distinct !DILocation(line: 55, column: 33, scope: !9430, inlinedAt: !9414)
!9433 = distinct !DILocation(line: 180, column: 28, scope: !9410, inlinedAt: !9432)
!9434 = distinct !DILexicalBlock(scope: !9430, file: !9567, line: 55, column: 9)
!9435 = distinct !DILocation(line: 56, column: 19, scope: !9434, inlinedAt: !9414)
!9436 = distinct !DILexicalBlock(scope: !9434, file: !9567, line: 56, column: 9)
!9437 = distinct !DILocation(line: 185, column: 40, scope: !9410, inlinedAt: !9432)
!9438 = distinct !DILocation(line: 63, column: 37, scope: !9436, inlinedAt: !9414)
!9439 = distinct !DILocation(line: 180, column: 28, scope: !9410, inlinedAt: !9438)
!9440 = distinct !DILexicalBlock(scope: !9436, file: !9567, line: 63, column: 13)
!9441 = distinct !DILocation(line: 64, column: 37, scope: !9440, inlinedAt: !9414)
!9442 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvNtNtCskKLDkoKarTP_4core4char7convert18from_u32_unchecked", scope: !493, file: !491, line: 26, type: !264, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9443 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc18from_u32_unchecked", scope: !635, file: !633, line: 243, type: !264, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9444 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXNtNtCskKLDkoKarTP_4core3str4iterNtB4_5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator4next0Cs2NzvFoTxuAy_2rg", scope: !9572, file: !321, line: 42, type: !264, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9445 = distinct !DISubprogram(name: "map<u32, char, core::str::iter::{impl#0}::next::{closure_env#0}>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionmE3mapcNCNvXNtNtB5_3str4iterNtBU_5CharsNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECs2NzvFoTxuAy_2rg", scope: !327, file: !325, line: 1160, type: !264, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9446 = distinct !DILexicalBlock(scope: !9445, file: !325, line: 1165, column: 13)
!9447 = distinct !DILocation(line: 42, column: 50, scope: !9412, inlinedAt: !9413)
!9448 = distinct !DILocation(line: 1165, column: 29, scope: !9446, inlinedAt: !9447)
!9449 = distinct !DILocation(line: 42, column: 59, scope: !9444, inlinedAt: !9448)
!9450 = distinct !DILocation(line: 245, column: 18, scope: !9443, inlinedAt: !9449)
!9451 = distinct !DISubprogram(name: "len_utf8", linkageName: "_RNvNtNtCskKLDkoKarTP_4core4char7methods8len_utf8", scope: !634, file: !633, line: 2488, type: !264, scopeLine: 2488, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9452 = distinct !DISubprogram(name: "len_utf8", linkageName: "_RNvMNtNtCskKLDkoKarTP_4core4char7methodsc8len_utf8", scope: !635, file: !633, line: 667, type: !264, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9453 = distinct !DILexicalBlock(scope: !9387, file: !342, line: 1154, column: 21)
!9454 = distinct !DILocation(line: 1155, column: 49, scope: !9453, inlinedAt: !9378)
!9455 = distinct !DILocation(line: 668, column: 9, scope: !9452, inlinedAt: !9454)
!9456 = distinct !{!9456, !9394, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!9457 = distinct !DILexicalBlock(scope: !9375, file: !342, line: 1209, column: 21)
!9458 = distinct !DILexicalBlock(scope: !9375, file: !342, line: 1214, column: 13)
!9459 = distinct !DILexicalBlock(scope: !9458, file: !342, line: 1215, column: 17)
!9460 = distinct !DILexicalBlock(scope: !9375, file: !342, line: 1231, column: 13)
!9461 = distinct !DILexicalBlock(scope: !9460, file: !342, line: 1232, column: 17)
!9462 = distinct !DISubprogram(name: "next<core::str::pattern::MatchOnly>", linkageName: "_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg", scope: !9576, file: !342, line: 1541, type: !264, scopeLine: 1541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9463 = distinct !DILexicalBlock(scope: !9462, file: !342, line: 1546, column: 9)
!9464 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs5_NtNtCskKLDkoKarTP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCs2NzvFoTxuAy_2rg", scope: !662, file: !403, line: 543, type: !264, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9465 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCskKLDkoKarTP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCs2NzvFoTxuAy_2rg", scope: !405, file: !403, line: 18, type: !264, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9466 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCskKLDkoKarTP_4core5slice5index24get_offset_len_noubcheckhECs2NzvFoTxuAy_2rg", scope: !404, file: !403, line: 83, type: !264, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9467 = distinct !DILexicalBlock(scope: !9466, file: !403, line: 88, column: 5)
!9468 = distinct !DILexicalBlock(scope: !9464, file: !403, line: 549, column: 13)
!9469 = distinct !DILocation(line: 1219, column: 23, scope: !9459)
!9470 = distinct !DILocation(line: 28, column: 43, scope: !168, inlinedAt: !9469)
!9471 = distinct !{!9471, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!9472 = distinct !{!9472, !9471, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!9473 = distinct !DILocation(line: 31, column: 18, scope: !172, inlinedAt: !9469)
!9474 = distinct !DILexicalBlock(scope: !9459, file: !342, line: 1220, column: 21)
!9475 = distinct !DILexicalBlock(scope: !9474, file: !342, line: 1221, column: 25)
!9476 = distinct !{!9476, i1 true, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg"}
!9477 = distinct !{!9477, !9476, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 0"}
!9478 = distinct !{!9478, !9476, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 1"}
!9479 = distinct !{!9479, !9476, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 2"}
!9480 = distinct !{!9480, !9476, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 3"}
!9481 = distinct !DILexicalBlock(scope: !9463, file: !342, line: 1547, column: 9)
!9482 = distinct !DILocation(line: 1242, column: 30, scope: !9461)
!9483 = distinct !DISubprogram(name: "get<u8>", linkageName: "_RNvXs0_NtNtCskKLDkoKarTP_4core5slice5indexjINtB5_10SliceIndexShE3getCs2NzvFoTxuAy_2rg", scope: !9587, file: !403, line: 183, type: !264, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9484 = distinct !DISubprogram(name: "get<u8, usize>", linkageName: "_RINvMNtCskKLDkoKarTP_4core5sliceSh3getjECs2NzvFoTxuAy_2rg", scope: !296, file: !294, line: 572, type: !264, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9485 = distinct !DILocation(line: 1552, column: 44, scope: !9481, inlinedAt: !9482)
!9486 = distinct !DILocation(line: 576, column: 15, scope: !9484, inlinedAt: !9485)
!9487 = distinct !DILexicalBlock(scope: !9481, file: !342, line: 1552, column: 13)
!9488 = distinct !DISubprogram(name: "byteset_contains", linkageName: "_RNvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB5_14TwoWaySearcher16byteset_contains", scope: !9576, file: !342, line: 1531, type: !264, scopeLine: 1531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9489 = distinct !DILocation(line: 1565, column: 22, scope: !9487, inlinedAt: !9482)
!9490 = distinct !DISubprogram(name: "max<usize>", linkageName: "_RINvNtCskKLDkoKarTP_4core3cmp3maxjECs2NzvFoTxuAy_2rg", scope: !415, file: !414, line: 1741, type: !264, scopeLine: 1741, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9491 = distinct !DILocation(line: 1575, column: 57, scope: !9487, inlinedAt: !9482)
!9492 = distinct !DILocation(line: 1742, column: 8, scope: !9490, inlinedAt: !9491)
!9493 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCskKLDkoKarTP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !417, file: !414, line: 2192, type: !264, scopeLine: 2192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9494 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCs2NzvFoTxuAy_2rg", scope: !408, file: !406, line: 1099, type: !264, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9495 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !409, file: !406, line: 1184, type: !264, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9496 = distinct !DILexicalBlock(scope: !9487, file: !342, line: 1574, column: 13)
!9497 = distinct !DILexicalBlock(scope: !9496, file: !342, line: 1576, column: 13)
!9498 = distinct !DILocation(line: 1576, column: 22, scope: !9589, inlinedAt: !9482)
!9499 = distinct !DILocation(line: 1185, column: 14, scope: !9495, inlinedAt: !9498)
!9500 = distinct !DILocation(line: 1100, column: 12, scope: !9494, inlinedAt: !9499)
!9501 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_add", scope: !412, file: !410, line: 1031, type: !264, scopeLine: 1031, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9502 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !413, file: !406, line: 263, type: !264, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9503 = distinct !DILexicalBlock(scope: !9494, file: !406, line: 1101, column: 13)
!9504 = distinct !DILocation(line: 1103, column: 35, scope: !9503, inlinedAt: !9499)
!9505 = distinct !DILocation(line: 265, column: 28, scope: !9502, inlinedAt: !9504)
!9506 = distinct !DISubprogram(name: "spec_next_back<usize>", linkageName: "_RNvXs3_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCs2NzvFoTxuAy_2rg", scope: !408, file: !406, line: 1141, type: !264, scopeLine: 1141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9507 = distinct !DISubprogram(name: "next_back<usize>", linkageName: "_RNvXs5_NtNtCskKLDkoKarTP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCs2NzvFoTxuAy_2rg", scope: !9590, file: !406, line: 1315, type: !264, scopeLine: 1315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9508 = distinct !DISubprogram(name: "next<core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg", scope: !9593, file: !9591, line: 52, type: !264, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9509 = distinct !DILexicalBlock(scope: !9496, file: !342, line: 1593, column: 13)
!9510 = distinct !DILexicalBlock(scope: !9509, file: !342, line: 1594, column: 13)
!9511 = distinct !DILocation(line: 1594, column: 22, scope: !9594, inlinedAt: !9482)
!9512 = distinct !DILocation(line: 53, column: 19, scope: !9508, inlinedAt: !9511)
!9513 = distinct !DILocation(line: 1316, column: 14, scope: !9507, inlinedAt: !9512)
!9514 = distinct !DILocation(line: 1142, column: 12, scope: !9506, inlinedAt: !9513)
!9515 = distinct !DILexicalBlock(scope: !9497, file: !342, line: 1576, column: 13)
!9516 = distinct !DISubprogram(name: "get_unchecked<u8>", linkageName: "_RNvXs0_NtNtCskKLDkoKarTP_4core5slice5indexjINtB5_10SliceIndexShE13get_uncheckedCs2NzvFoTxuAy_2rg", scope: !9587, file: !403, line: 205, type: !264, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9517 = distinct !DISubprogram(name: "get_unchecked<u8, usize>", linkageName: "_RINvMNtCskKLDkoKarTP_4core5sliceSh13get_uncheckedjECs2NzvFoTxuAy_2rg", scope: !296, file: !294, line: 640, type: !264, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9518 = distinct !DILocation(line: 1583, column: 52, scope: !9515, inlinedAt: !9482)
!9519 = distinct !DILocation(line: 647, column: 26, scope: !9517, inlinedAt: !9518)
!9520 = distinct !DILexicalBlock(scope: !9509, file: !342, line: 1611, column: 13)
!9521 = distinct !DISubprogram(name: "matching", linkageName: "_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching", scope: !9595, file: !342, line: 1844, type: !264, scopeLine: 1844, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9522 = distinct !DILocation(line: 1619, column: 20, scope: !9520, inlinedAt: !9482)
!9523 = distinct !{!9523, i1 true, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!9524 = distinct !{!9524, !9523, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!9525 = distinct !DISubprogram(name: "unchecked_sub", linkageName: "_RNvMs9_NtCskKLDkoKarTP_4core3numj13unchecked_sub", scope: !412, file: !410, line: 1210, type: !264, scopeLine: 1210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9526 = distinct !DISubprogram(name: "backward_unchecked", linkageName: "_RNvXsL_NtNtCskKLDkoKarTP_4core4iter5rangejNtB5_4Step18backward_unchecked", scope: !413, file: !406, line: 269, type: !264, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9527 = distinct !DILocation(line: 1144, column: 33, scope: !9506, inlinedAt: !9513)
!9528 = distinct !DILocation(line: 271, column: 28, scope: !9526, inlinedAt: !9527)
!9529 = distinct !DILexicalBlock(scope: !9510, file: !342, line: 1594, column: 13)
!9530 = distinct !DILocation(line: 1601, column: 52, scope: !9529, inlinedAt: !9482)
!9531 = distinct !DILocation(line: 647, column: 26, scope: !9598, inlinedAt: !9530)
!9532 = distinct !{!9532, i1 true, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg"}
!9533 = distinct !{!9533, !9532, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 0"}
!9534 = distinct !{!9534, !9532, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 1"}
!9535 = distinct !{!9535, !9532, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 2"}
!9536 = distinct !{!9536, !9532, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs2NzvFoTxuAy_2rg: argument 3"}
!9537 = distinct !DILocation(line: 1236, column: 30, scope: !9461)
!9538 = distinct !DILocation(line: 1552, column: 44, scope: !9481, inlinedAt: !9537)
!9539 = distinct !DILocation(line: 576, column: 15, scope: !9484, inlinedAt: !9538)
!9540 = distinct !DILocation(line: 1565, column: 22, scope: !9487, inlinedAt: !9537)
!9541 = distinct !DILocation(line: 1576, column: 22, scope: !9589, inlinedAt: !9537)
!9542 = distinct !DILocation(line: 1185, column: 14, scope: !9495, inlinedAt: !9541)
!9543 = distinct !DILocation(line: 1103, column: 35, scope: !9503, inlinedAt: !9542)
!9544 = distinct !DILocation(line: 265, column: 28, scope: !9502, inlinedAt: !9543)
!9545 = distinct !DILocation(line: 1100, column: 12, scope: !9494, inlinedAt: !9542)
!9546 = distinct !DILocation(line: 1594, column: 22, scope: !9594, inlinedAt: !9537)
!9547 = distinct !DILocation(line: 53, column: 19, scope: !9508, inlinedAt: !9546)
!9548 = distinct !DILocation(line: 1316, column: 14, scope: !9507, inlinedAt: !9547)
!9549 = distinct !DILocation(line: 1142, column: 12, scope: !9506, inlinedAt: !9548)
!9550 = distinct !DILocation(line: 1144, column: 33, scope: !9506, inlinedAt: !9548)
!9551 = distinct !DILocation(line: 271, column: 28, scope: !9526, inlinedAt: !9550)
!9552 = distinct !DILocation(line: 1601, column: 52, scope: !9529, inlinedAt: !9537)
!9553 = distinct !DILocation(line: 647, column: 26, scope: !9598, inlinedAt: !9552)
!9554 = distinct !DILocation(line: 1583, column: 52, scope: !9515, inlinedAt: !9537)
!9555 = distinct !DILocation(line: 647, column: 26, scope: !9517, inlinedAt: !9554)
!9556 = distinct !DILocation(line: 1619, column: 20, scope: !9520, inlinedAt: !9537)
!9557 = distinct !{!9557, i1 true, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!9558 = distinct !{!9558, !9557, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!9559 = !DINamespace(name: "{impl#33}", scope: !343)
!9560 = !{!9380}
!9561 = !DINamespace(name: "{impl#11}", scope: !332)
!9562 = !DINamespace(name: "{impl#4}", scope: !332)
!9563 = !{!9393}
!9564 = !{!9395, !9380}
!9565 = !DIFile(filename: "library/core/src/num/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "ecb2f290941f286067e076e0d471735a")
!9566 = !DINamespace(name: "{impl#6}", scope: !411)
!9567 = !DIFile(filename: "library/core/src/str/validations.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "3ff4baf6e4458f1a7f4e35f76384ccd7")
!9568 = !DINamespace(name: "validations", scope: !319)
!9569 = !DINamespace(name: "{impl#0}", scope: !322)
!9570 = !{!9418, !9395, !9380}
!9571 = !DILexicalBlockFile(scope: !9419, file: !387, discriminator: 0)
!9572 = !DINamespace(name: "next", scope: !9569)
!9573 = !{!9456}
!9574 = !{!9395, !9456}
!9575 = !{!9418, !9395, !9456}
!9576 = !DINamespace(name: "TwoWaySearcher", scope: !343)
!9577 = !DILocation(line: 0, scope: !9461)
!9578 = !DILexicalBlockFile(scope: !9375, file: !387, discriminator: 0)
!9579 = !DILocation(line: 1219, column: 56, scope: !9459)
!9580 = !DILocation(line: 19, column: 15, scope: !9465, inlinedAt: !9579)
!9581 = !DILocation(line: 550, column: 15, scope: !9468, inlinedAt: !9580)
!9582 = !{!9472}
!9583 = !{!9477}
!9584 = !{!9478}
!9585 = !{!9479}
!9586 = !{!9480}
!9587 = !DINamespace(name: "{impl#2}", scope: !404)
!9588 = !DILexicalBlockFile(scope: !9481, file: !387, discriminator: 0)
!9589 = !DILexicalBlockFile(scope: !9497, file: !342, discriminator: 2)
!9590 = !DINamespace(name: "{impl#7}", scope: !407)
!9591 = !DIFile(filename: "library/core/src/iter/adapters/rev.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "97bbf16646f958a86a45b6ba280b14d9")
!9592 = !DINamespace(name: "rev", scope: !302)
!9593 = !DINamespace(name: "{impl#1}", scope: !9592)
!9594 = !DILexicalBlockFile(scope: !9510, file: !342, discriminator: 2)
!9595 = !DINamespace(name: "{impl#36}", scope: !343)
!9596 = !{!9524, !9477}
!9597 = !DILexicalBlockFile(scope: !9487, file: !387, discriminator: 0)
!9598 = !DILexicalBlockFile(scope: !9517, file: !294, discriminator: 2)
!9599 = !{!9477, !9478, !9479, !9480}
!9600 = !{!9533}
!9601 = !{!9534}
!9602 = !{!9535}
!9603 = !{!9536}
!9604 = !{!9558, !9533}
!9605 = !{!9533, !9534, !9535, !9536}
!9606 = !DILocation(line: 1206, column: 15, scope: !9375)
!9607 = !DILocation(line: 1206, column: 9, scope: !9375)
!9608 = !DILocation(line: 1141, column: 20, scope: !9377, inlinedAt: !9378)
!9609 = !DILocation(line: 1208, column: 28, scope: !9375)
!9610 = !DILocation(line: 1145, column: 32, scope: !9377, inlinedAt: !9378)
!9611 = !DILocation(line: 380, column: 12, scope: !9381, inlinedAt: !9391)
!9612 = !DILocation(line: 384, column: 12, scope: !9381, inlinedAt: !9391)
!9613 = !DILocation(line: 394, column: 13, scope: !9381, inlinedAt: !9391)
!9614 = !DILocation(line: 493, column: 12, scope: !9382, inlinedAt: !9390)
!9615 = !DILocation(line: 396, column: 13, scope: !9381, inlinedAt: !9391)
!9616 = !DILocation(line: 1231, column: 9, scope: !9396, inlinedAt: !9397)
!9617 = !DILocation(line: 872, column: 18, scope: !9398, inlinedAt: !9406)
!9618 = !DILocation(line: 1663, column: 9, scope: !9407, inlinedAt: !9416)
!9619 = !DILocation(line: 180, column: 28, scope: !9410, inlinedAt: !9415)
!9620 = !DILocation(line: 37, column: 13, scope: !9411, inlinedAt: !9414)
!9621 = !DILocation(line: 38, column: 8, scope: !9419, inlinedAt: !9414)
!9622 = !DILocation(line: 627, column: 28, scope: !9420, inlinedAt: !9421)
!9623 = !DILocation(line: 11, column: 5, scope: !9422, inlinedAt: !9423)
!9624 = !DILocation(line: 1663, column: 9, scope: !9407, inlinedAt: !9426)
!9625 = !DILocation(line: 180, column: 28, scope: !9410, inlinedAt: !9425)
!9626 = !DILocation(line: 48, column: 22, scope: !9424, inlinedAt: !9414)
!9627 = !DILocation(line: 17, column: 5, scope: !9427, inlinedAt: !9429)
!9628 = !DILocation(line: 17, column: 17, scope: !9427, inlinedAt: !9429)
!9629 = !DILocation(line: 50, column: 8, scope: !9430, inlinedAt: !9414)
!9630 = !DILocation(line: 627, column: 28, scope: !9420, inlinedAt: !9431)
!9631 = !DILocation(line: 1663, column: 9, scope: !9407, inlinedAt: !9433)
!9632 = !DILocation(line: 180, column: 28, scope: !9410, inlinedAt: !9432)
!9633 = !DILocation(line: 55, column: 26, scope: !9430, inlinedAt: !9414)
!9634 = !DILocation(line: 17, column: 5, scope: !9427, inlinedAt: !9435)
!9635 = !DILocation(line: 17, column: 17, scope: !9427, inlinedAt: !9435)
!9636 = !DILocation(line: 57, column: 14, scope: !9436, inlinedAt: !9414)
!9637 = !DILocation(line: 57, column: 9, scope: !9436, inlinedAt: !9414)
!9638 = !DILocation(line: 58, column: 12, scope: !9436, inlinedAt: !9414)
!9639 = !DILocation(line: 627, column: 28, scope: !9420, inlinedAt: !9437)
!9640 = !DILocation(line: 1663, column: 9, scope: !9407, inlinedAt: !9439)
!9641 = !DILocation(line: 180, column: 28, scope: !9410, inlinedAt: !9438)
!9642 = !DILocation(line: 63, column: 30, scope: !9436, inlinedAt: !9414)
!9643 = !DILocation(line: 64, column: 18, scope: !9440, inlinedAt: !9414)
!9644 = !DILocation(line: 17, column: 5, scope: !9427, inlinedAt: !9441)
!9645 = !DILocation(line: 17, column: 17, scope: !9427, inlinedAt: !9441)
!9646 = !DILocation(line: 64, column: 13, scope: !9440, inlinedAt: !9414)
!9647 = !DILocation(line: 58, column: 9, scope: !9436, inlinedAt: !9414)
!9648 = !DILocation(line: 39, column: 21, scope: !9419, inlinedAt: !9414)
!9649 = !DILocation(line: 0, scope: !9571, inlinedAt: !9414)
!9650 = !DILocation(line: 34, column: 9, scope: !9442, inlinedAt: !9450)
!9651 = !DILocation(line: 1149, column: 26, scope: !9387, inlinedAt: !9378)
!9652 = !DILocation(line: 2490, column: 9, scope: !9451, inlinedAt: !9455)
!9653 = !DILocation(line: 2491, column: 9, scope: !9451, inlinedAt: !9455)
!9654 = !DILocation(line: 2492, column: 9, scope: !9451, inlinedAt: !9455)
!9655 = !DILocation(line: 0, scope: !9451, inlinedAt: !9455)
!9656 = !DILocation(line: 1155, column: 25, scope: !9453, inlinedAt: !9378)
!9657 = !DILocation(line: 1146, column: 17, scope: !9386, inlinedAt: !9378)
!9658 = !DILocation(line: 528, column: 21, scope: !9384, inlinedAt: !9389)
!9659 = !DILocation(line: 1209, column: 55, scope: !9457)
!9660 = !DILocation(line: 1151, column: 25, scope: !9387, inlinedAt: !9378)
!9661 = !DILocation(line: 1152, column: 25, scope: !9387, inlinedAt: !9378)
!9662 = !DILocation(line: 1215, column: 29, scope: !9458)
!9663 = !DILocation(line: 1216, column: 20, scope: !9459)
!9664 = !DILocation(line: 1231, column: 37, scope: !9375)
!9665 = !DILocation(line: 1232, column: 31, scope: !9460)
!9666 = !DILocation(line: 1546, column: 23, scope: !9462, inlinedAt: !9577)
!9667 = !DILocation(line: 1547, column: 27, scope: !9463, inlinedAt: !9577)
!9668 = !DILocation(line: 1235, column: 20, scope: !9461)
!9669 = !DILocation(line: 0, scope: !9578)
!9670 = !DILocation(line: 0, scope: !9375)
!9671 = !DILocation(line: 1250, column: 6, scope: !9375)
!9672 = !DILocation(line: 1219, column: 38, scope: !9459)
!9673 = !DILocation(line: 549, column: 27, scope: !9464, inlinedAt: !9580)
!9674 = !DILocation(line: 90, column: 24, scope: !9467, inlinedAt: !9581)
!9675 = !DILocation(line: 28, column: 12, scope: !168, inlinedAt: !9469)
!9676 = !DILocation(line: 28, column: 74, scope: !168, inlinedAt: !9469)
!9677 = !DILocation(line: 29, column: 12, scope: !172, inlinedAt: !9469)
!9678 = !DILocation(line: 42, column: 12, scope: !170, inlinedAt: !9470)
!9679 = !DILocation(line: 46, column: 9, scope: !170, inlinedAt: !9470)
!9680 = !DILocation(line: 41, column: 11, scope: !170, inlinedAt: !9470)
!9681 = !DILocation(line: 28, scope: !168, inlinedAt: !9469)
!9682 = !DILocation(line: 31, column: 48, scope: !172, inlinedAt: !9469)
!9683 = !DILocation(line: 210, column: 9, scope: !173, inlinedAt: !9473)
!9684 = !DILocation(line: 1221, column: 35, scope: !9474)
!9685 = !DILocation(line: 1222, column: 25, scope: !9475)
!9686 = !DILocation(line: 1223, column: 25, scope: !9475)
!9687 = !DILocation(line: 1224, column: 21, scope: !9459)
!9688 = !DILocation(line: 1226, column: 25, scope: !9459)
!9689 = !DILocation(line: 1227, column: 25, scope: !9459)
!9690 = !DILocation(line: 1242, column: 30, scope: !9461)
!9691 = !DILocation(line: 1552, column: 48, scope: !9481, inlinedAt: !9482)
!9692 = !DILocation(line: 184, column: 12, scope: !9483, inlinedAt: !9486)
!9693 = !DILocation(line: 1565, column: 17, scope: !9487, inlinedAt: !9482)
!9694 = !DILocation(line: 1555, column: 21, scope: !9481, inlinedAt: !9482)
!9695 = !DILocation(line: 0, scope: !9588, inlinedAt: !9482)
!9696 = !DILocation(line: 186, column: 27, scope: !9483, inlinedAt: !9486)
!9697 = !DILocation(line: 1553, column: 23, scope: !9481, inlinedAt: !9482)
!9698 = !DILocation(line: 1532, column: 27, scope: !9488, inlinedAt: !9489)
!9699 = !DILocation(line: 1532, column: 26, scope: !9488, inlinedAt: !9489)
!9700 = !DILocation(line: 1532, column: 9, scope: !9488, inlinedAt: !9489)
!9701 = !DILocation(line: 1566, column: 17, scope: !9487, inlinedAt: !9482)
!9702 = !DILocation(line: 1567, column: 17, scope: !9487, inlinedAt: !9482)
!9703 = !DILocation(line: 1099, column: 5, scope: !227, inlinedAt: !9492)
!9704 = !DILocation(line: 2192, column: 50, scope: !9493, inlinedAt: !9500)
!9705 = !DILocation(line: 1100, column: 12, scope: !9494, inlinedAt: !9499)
!9706 = !DILocation(line: 0, scope: !9487, inlinedAt: !9482)
!9707 = !DILocation(line: 1043, column: 17, scope: !9501, inlinedAt: !9505)
!9708 = !DILocation(line: 2192, column: 50, scope: !9493, inlinedAt: !9514)
!9709 = !DILocation(line: 1142, column: 12, scope: !9506, inlinedAt: !9513)
!9710 = !DILocation(line: 1583, column: 20, scope: !9515, inlinedAt: !9482)
!9711 = !DILocation(line: 1583, column: 66, scope: !9515, inlinedAt: !9482)
!9712 = !DILocation(line: 218, column: 39, scope: !9516, inlinedAt: !9519)
!9713 = !DILocation(line: 218, column: 13, scope: !9516, inlinedAt: !9519)
!9714 = !DILocation(line: 219, column: 13, scope: !9516, inlinedAt: !9519)
!9715 = !DILocation(line: 1583, column: 42, scope: !9515, inlinedAt: !9482)
!9716 = !DILocation(line: 1614, column: 13, scope: !9520, inlinedAt: !9482)
!9717 = !DILocation(line: 1616, column: 17, scope: !9520, inlinedAt: !9482)
!9718 = !DILocation(line: 1845, column: 9, scope: !9521, inlinedAt: !9522)
!9719 = !DILocation(line: 0, scope: !9597, inlinedAt: !9482)
!9720 = !DILocation(line: 1222, column: 17, scope: !9525, inlinedAt: !9528)
!9721 = !DILocation(line: 1601, column: 20, scope: !9529, inlinedAt: !9482)
!9722 = !DILocation(line: 1601, column: 66, scope: !9529, inlinedAt: !9482)
!9723 = !DILocation(line: 218, column: 39, scope: !9516, inlinedAt: !9531)
!9724 = !DILocation(line: 218, column: 13, scope: !9516, inlinedAt: !9531)
!9725 = !DILocation(line: 219, column: 13, scope: !9516, inlinedAt: !9531)
!9726 = !DILocation(line: 1601, column: 42, scope: !9529, inlinedAt: !9482)
!9727 = !DILocation(line: 1602, column: 21, scope: !9529, inlinedAt: !9482)
!9728 = !DILocation(line: 1603, column: 21, scope: !9529, inlinedAt: !9482)
!9729 = !DILocation(line: 1584, column: 21, scope: !9515, inlinedAt: !9482)
!9730 = !DILocation(line: 1585, column: 21, scope: !9515, inlinedAt: !9482)
!9731 = !DILocation(line: 1236, column: 30, scope: !9461)
!9732 = !DILocation(line: 1552, column: 48, scope: !9481, inlinedAt: !9537)
!9733 = !DILocation(line: 184, column: 12, scope: !9483, inlinedAt: !9539)
!9734 = !DILocation(line: 1565, column: 17, scope: !9487, inlinedAt: !9537)
!9735 = !DILocation(line: 186, column: 27, scope: !9483, inlinedAt: !9539)
!9736 = !DILocation(line: 1553, column: 23, scope: !9481, inlinedAt: !9537)
!9737 = !DILocation(line: 1532, column: 27, scope: !9488, inlinedAt: !9540)
!9738 = !DILocation(line: 1532, column: 26, scope: !9488, inlinedAt: !9540)
!9739 = !DILocation(line: 1532, column: 9, scope: !9488, inlinedAt: !9540)
!9740 = !DILocation(line: 1100, column: 12, scope: !9494, inlinedAt: !9542)
!9741 = !DILocation(line: 1043, column: 17, scope: !9501, inlinedAt: !9544)
!9742 = !DILocation(line: 2192, column: 50, scope: !9493, inlinedAt: !9545)
!9743 = !DILocation(line: 1142, column: 12, scope: !9506, inlinedAt: !9548)
!9744 = !DILocation(line: 2192, column: 50, scope: !9493, inlinedAt: !9549)
!9745 = !DILocation(line: 1222, column: 17, scope: !9525, inlinedAt: !9551)
!9746 = !DILocation(line: 1601, column: 20, scope: !9529, inlinedAt: !9537)
!9747 = !DILocation(line: 1601, column: 66, scope: !9529, inlinedAt: !9537)
!9748 = !DILocation(line: 218, column: 39, scope: !9516, inlinedAt: !9553)
!9749 = !DILocation(line: 218, column: 13, scope: !9516, inlinedAt: !9553)
!9750 = !DILocation(line: 219, column: 13, scope: !9516, inlinedAt: !9553)
!9751 = !DILocation(line: 1601, column: 42, scope: !9529, inlinedAt: !9537)
!9752 = !DILocation(line: 1602, column: 21, scope: !9529, inlinedAt: !9537)
!9753 = !DILocation(line: 1603, column: 25, scope: !9529, inlinedAt: !9537)
!9754 = !DILocation(line: 1583, column: 20, scope: !9515, inlinedAt: !9537)
!9755 = !DILocation(line: 1583, column: 66, scope: !9515, inlinedAt: !9537)
!9756 = !DILocation(line: 218, column: 39, scope: !9516, inlinedAt: !9555)
!9757 = !DILocation(line: 218, column: 13, scope: !9516, inlinedAt: !9555)
!9758 = !DILocation(line: 219, column: 13, scope: !9516, inlinedAt: !9555)
!9759 = !DILocation(line: 1583, column: 42, scope: !9515, inlinedAt: !9537)
!9760 = !DILocation(line: 1584, column: 21, scope: !9515, inlinedAt: !9537)
!9761 = !DILocation(line: 1585, column: 25, scope: !9515, inlinedAt: !9537)
!9762 = !DILocation(line: 1566, column: 17, scope: !9487, inlinedAt: !9537)
!9763 = !DILocation(line: 1567, column: 21, scope: !9487, inlinedAt: !9537)
!9764 = !DILocation(line: 0, scope: !9487, inlinedAt: !9537)
!9765 = !DILocation(line: 1555, column: 21, scope: !9481, inlinedAt: !9537)
!9766 = !DILocation(line: 0, scope: !9588, inlinedAt: !9537)
!9767 = !DILocation(line: 1614, column: 13, scope: !9520, inlinedAt: !9537)
!9768 = !DILocation(line: 1845, column: 9, scope: !9521, inlinedAt: !9556)
!9769 = !DILocation(line: 0, scope: !9597, inlinedAt: !9537)
!9770 = distinct !DISubprogram(name: "doc_category", linkageName: "_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag12doc_category", scope: !663, file: !527, line: 2910, type: !264, scopeLine: 2910, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9771 = !DILocation(line: 2912, column: 6, scope: !9770)
!9772 = distinct !DISubprogram(name: "doc_variable", linkageName: "_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag12doc_variable", scope: !663, file: !527, line: 2907, type: !264, scopeLine: 2907, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9773 = !DILocation(line: 2909, column: 6, scope: !9772)
!9774 = distinct !DISubprogram(name: "doc_short", linkageName: "_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9doc_short", scope: !663, file: !527, line: 2913, type: !264, scopeLine: 2913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9775 = !DILocation(line: 2915, column: 6, scope: !9774)
!9776 = distinct !DISubprogram(name: "is_switch", linkageName: "_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9is_switch", scope: !663, file: !527, line: 2901, type: !264, scopeLine: 2901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9777 = !DILocation(line: 2903, column: 6, scope: !9776)
!9778 = distinct !DISubprogram(name: "name_long", linkageName: "_RNvXsw_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_15HyperlinkFormatNtB7_4Flag9name_long", scope: !663, file: !527, line: 2904, type: !264, scopeLine: 2904, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9779 = !DILocation(line: 2906, column: 6, scope: !9778)
!9780 = distinct !DISubprogram(name: "doc_category", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag12doc_category", scope: !664, file: !527, line: 3103, type: !264, scopeLine: 3103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9781 = !DILocation(line: 3105, column: 6, scope: !9780)
!9782 = distinct !DISubprogram(name: "doc_variable", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag12doc_variable", scope: !664, file: !527, line: 3100, type: !264, scopeLine: 3100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9783 = !DILocation(line: 3102, column: 6, scope: !9782)
!9784 = distinct !DISubprogram(name: "doc_long", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag8doc_long", scope: !664, file: !527, line: 3109, type: !264, scopeLine: 3109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9785 = !DILocation(line: 3118, column: 6, scope: !9784)
!9786 = distinct !DISubprogram(name: "doc_short", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9doc_short", scope: !664, file: !527, line: 3106, type: !264, scopeLine: 3106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9787 = !DILocation(line: 3108, column: 6, scope: !9786)
!9788 = distinct !DISubprogram(name: "is_switch", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9is_switch", scope: !664, file: !527, line: 3094, type: !264, scopeLine: 3094, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9789 = !DILocation(line: 3096, column: 6, scope: !9788)
!9790 = distinct !DISubprogram(name: "name_long", linkageName: "_RNvXsx_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_5IGlobNtB7_4Flag9name_long", scope: !664, file: !527, line: 3097, type: !264, scopeLine: 3097, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9791 = !DILocation(line: 3099, column: 6, scope: !9790)
!9792 = distinct !DISubprogram(name: "name_short", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag10name_short", scope: !665, file: !527, line: 3154, type: !264, scopeLine: 3154, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9793 = !DILocation(line: 3156, column: 6, scope: !9792)
!9794 = distinct !DISubprogram(name: "doc_category", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag12doc_category", scope: !665, file: !527, line: 3160, type: !264, scopeLine: 3160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9795 = !DILocation(line: 3162, column: 6, scope: !9794)
!9796 = distinct !DISubprogram(name: "doc_long", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag8doc_long", scope: !665, file: !527, line: 3166, type: !264, scopeLine: 3166, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9797 = !DILocation(line: 3179, column: 6, scope: !9796)
!9798 = distinct !DISubprogram(name: "doc_short", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9doc_short", scope: !665, file: !527, line: 3163, type: !264, scopeLine: 3163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9799 = !DILocation(line: 3165, column: 6, scope: !9798)
!9800 = distinct !DISubprogram(name: "is_switch", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9is_switch", scope: !665, file: !527, line: 3151, type: !264, scopeLine: 3151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9801 = !DILocation(line: 3153, column: 6, scope: !9800)
!9802 = distinct !DISubprogram(name: "name_long", linkageName: "_RNvXsy_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreCaseNtB7_4Flag9name_long", scope: !665, file: !527, line: 3157, type: !264, scopeLine: 3157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9803 = !DILocation(line: 3159, column: 6, scope: !9802)
!9804 = distinct !DISubprogram(name: "doc_category", linkageName: "_RNvXsz_NtNtCs2NzvFoTxuAy_2rg5flags4defsNtB5_10IgnoreFileNtB7_4Flag12doc_category", scope: !666, file: !527, line: 3221, type: !264, scopeLine: 3221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !263)
!9805 = !DILocation(line: 3223, column: 6, scope: !9804)
end_hunk_1
