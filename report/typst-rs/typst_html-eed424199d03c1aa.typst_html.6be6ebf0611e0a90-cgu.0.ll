Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8939
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bq = add nuw nsw i64 %i.bg, 2
  %i.br = icmp samesign ne i64 %i.bq, %i.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bt = add nuw nsw i64 %i.bg, 3
  %i.bu = icmp samesign ne i64 %i.bt, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21962)
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %.not.i.i.us, label %bb.l, label %.split.i.i.us

.split.i.i.us:                                    ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %.split.us161

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bj, align 1, !alias.scope !21959, !noalias !21963, !noundef !52
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.m, label %.split.us161

bb.m:                                             ; preds = %bb.l, %.split.i.i.us, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %i.bl, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bk, align 1, !noalias !21964, !noundef !52 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.o, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.us

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.us: ; preds = %bb.n
  %i.bz = and i8 %i.bx, 31
  %i.ca = zext nneg i8 %i.bz to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bo)
  %i.cb = load i8, ptr %i.bm, align 1, !noalias !21964, !noundef !52
  %i.cc = shl nuw nsw i32 %i.ca, 6
  %i.cd = and i8 %i.cb, 63
  %i.ce = zext nneg i8 %i.cd to i32               ; 2 uses
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.cg, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit14.i.i.us, label %.loopexit42.split.us.loopexit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit14.i.i.us: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.us
  tail call void @llvm.assume(i1 %i.br)
  %i.ch = load i8, ptr %i.bp, align 1, !noalias !21964, !noundef !52
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck            ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ca, 12
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = icmp samesign ugt i8 %i.bx, -17
  br i1 %i.co, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit16.i.i.us, label %.loopexit42.split.us.loopexit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit16.i.i.us: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit14.i.i.us
  tail call void @llvm.assume(i1 %i.bu)
  %i.cp = load i8, ptr %i.bs, align 1, !noalias !21964, !noundef !52
  %i.cq = shl nuw nsw i32 %i.ca, 18
  %i.cr = and i32 %i.cq, 1835008
  %i.cs = shl nuw nsw i32 %i.cl, 6
  %i.ct = and i8 %i.cp, 63
  %i.cu = zext nneg i8 %i.ct to i32
  %i.cv = or disjoint i32 %i.cs, %i.cu
  %i.cw = or disjoint i32 %i.cv, %i.cr
  br label %.loopexit42.split.us.loopexit

bb.o:                                             ; preds = %bb.n
  %i.cx = zext nneg i8 %i.bx to i32
  br label %.loopexit42.split.us.loopexit

.loopexit42.split.us.loopexit:                    ; preds = %bb.o, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit16.i.i.us, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit14.i.i.us, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.us
  %.sroa.4.0.i.ph.i.us = phi i32 [ %i.cn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit14.i.i.us ], [ %i.cw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit16.i.i.us ], [ %i.cf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit12.i.i.us ], [ %i.cx, %bb.o ]
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us, 1114112
  tail call void @llvm.assume(i1 %i.cy)
  br label %.loopexit42.split.us

.split.us161:                                     ; preds = %bb.l, %.split.i.i.us, %bb.c, %.split.i.i.us.peel
  %.lcssa323 = phi i64 [ %.promoted157, %.split.i.i.us.peel ], [ %.promoted157, %bb.c ], [ %i.bg, %.split.i.i.us ], [ %i.bg, %bb.l ]
  %.lcssa320 = phi i8 [ %.promoted206, %.split.i.i.us.peel ], [ %.promoted206, %bb.c ], [ 1, %.split.i.i.us ], [ 1, %bb.l ]
  %i.cz = xor i8 %.lcssa320, 1
  store i8 %i.cz, ptr %i.f, align 8, !alias.scope !21962
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %.lcssa323, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1662) #51, !noalias !21963
  unreachable

.split166.us:                                     ; preds = %bb.d
  %i.da = xor i8 %.promoted206, 1
  store i8 %i.da, ptr %i.f, align 8, !alias.scope !21962
  br i1 %i.k, label %bb.s, label %bb.p

.loopexit42.split.us:                             ; preds = %.loopexit42.split.us.loopexit, %bb.g
  %.lcssa325 = phi i64 [ %.promoted157, %bb.g ], [ %i.bg, %.loopexit42.split.us.loopexit ]
  store i8 0, ptr %i.f, align 8, !alias.scope !21962
  br label %bb.s

default.unreachable261:                           ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %.split166.us
  store i8 1, ptr %i.c, align 2, !alias.scope !21962
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html.exit

bb.q:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dc = load i64, ptr %i.db, align 8, !noundef !52 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !noundef !52 ; 4 uses
  %.not = icmp ult i64 %i.de, %i.dc
  br i1 %.not, label %bb.t, label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html.exit

bb.r:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !52 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !52, !noundef !52 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !52 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !52, !noundef !52 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !52 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.ds = add nsw i64 %i.dq, -1                   ; 4 uses
  br i1 %i.di, label %bb.ae, label %bb.w

.critedge:                                        ; preds = %bb.m
  store i8 0, ptr %i.f, align 8, !alias.scope !21962
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %.loopexit42.split.us, %.split166.us
  %i.dt = phi i64 [ %.lcssa325, %.loopexit42.split.us ], [ %i.j, %.split166.us ], [ %i.j, %.critedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dt, ptr %i.dv, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html.exit

_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.s, %bb.p, %.preheader, %.split.us.i21, %._crit_edge.i13, %.split.us.i11, %._crit_edge.i, %.loopexit43, %.loopexit44, %bb.q
  %storemerge.i.sink = phi i64 [ 1, %.loopexit43 ], [ 1, %.split.us.i11 ], [ 0, %bb.q ], [ 1, %.split.us.i21 ], [ 0, %.loopexit44 ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i13 ], [ 1, %bb.s ], [ 0, %bb.p ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.t:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !52, !noundef !52
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load i8, ptr %i.dy, align 8, !noundef !52 ; 2 uses
  %i.ea = sub nuw i64 %i.dc, %i.de                ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.de ; 2 uses
  %i.ec = icmp samesign ult i64 %i.ea, 16
  br i1 %i.ec, label %.lr.ph.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ea) ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0
  %i.ef = extractvalue { i64, i64 } %i.ed, 1
  %i.eg = trunc nuw i64 %i.ee to i1
  br i1 %i.eg, label %.loopexit43, label %.loopexit44

.lr.ph.i:                                         ; preds = %bb.t, %bb.v
  %.sroa.04.011.i = phi i64 [ %i.ek, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sroa.04.011.i
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !21965, !noundef !52
  %i.ej = icmp eq i8 %i.ei, %i.dz
  br i1 %i.ej, label %.loopexit43, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.ek = add nuw nsw i64 %.sroa.04.011.i, 1      ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %i.ek, %i.ea
  br i1 %exitcond.not.i7, label %.loopexit44, label %.lr.ph.i

.loopexit43:                                      ; preds = %.lr.ph.i, %bb.u
  %.sroa.5.0.i = phi i64 [ %i.ef, %bb.u ], [ %.sroa.04.011.i, %.lr.ph.i ] ; 2 uses
  %i.el = icmp ult i64 %.sroa.5.0.i, %i.ea
  tail call void @llvm.assume(i1 %i.el)
  %i.em = add i64 %.sroa.5.0.i, %i.de             ; 2 uses
  %i.en = add i64 %i.em, 1                        ; 2 uses
  store i64 %i.en, ptr %i.dd, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.em, ptr %i.eo, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.en, ptr %i.ep, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html.exit

.loopexit44:                                      ; preds = %bb.v, %bb.u
  store i64 %i.dc, ptr %i.dd, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html.exit

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21969)
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !21967 ; 2 uses
  %i.eq = add i64 %.promoted.i, %i.ds             ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dm
  br i1 %i.er, label %.lr.ph.i8, label %._crit_edge.i

.lr.ph.i8:                                        ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !21967, !noundef !52
  %i.eu = load i64, ptr %i.df, align 8, !alias.scope !21967 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !21967 ; 2 uses
  %i.ex = sub i64 %i.dq, %i.ew
  %invariant.op = sub i64 1, %i.eu
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.w
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !21967
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html.exit

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.i8
  %i.ey = phi i64 [ %.sink70.i, %bb.z ], [ %i.dh, %.lr.ph.i8 ] ; 3 uses
  %i.ez = phi i64 [ %i.fj, %bb.z ], [ %i.eq, %.lr.ph.i8 ]
  %i.fa = phi i64 [ %.sink71.i, %bb.z ], [ %.promoted.i, %.lr.ph.i8 ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !21968, !noundef !52
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %i.et
  %.not.i9 = icmp eq i64 %i.fg, 0
  br i1 %.not.i9, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph.split.i
  %i.fh = add i64 %i.fa, %i.dq
  br label %bb.z

bb.y:                                             ; preds = %.lr.ph.split.i
  %..i.i10 = tail call noundef i64 @llvm.umax.i64(i64 %i.ey, i64 %i.eu) ; 2 uses
  %i.fi = icmp ult i64 %..i.i10, %i.dq
  br i1 %i.fi, label %.lr.ph306, label %.preheader36.i.preheader

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.x
  %.sink71.i = phi i64 [ %i.gh, %bb.ad ], [ %i.gg, %bb.ac ], [ %i.fh, %bb.x ] ; 3 uses
  %.sink70.i = phi i64 [ 0, %bb.ad ], [ %i.ex, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  store i64 %.sink71.i, ptr %i.dr, align 8, !alias.scope !21967
  store i64 %.sink70.i, ptr %i.dg, align 8, !alias.scope !21967
  %i.fj = add i64 %.sink71.i, %i.ds               ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.dm
  br i1 %i.fk, label %.lr.ph.split.i, label %._crit_edge.i

bb.aa:                                            ; preds = %.lr.ph306
  %i.fl = add nuw nsw i64 %.sroa.04.0.i305, 1     ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.dq
  br i1 %i.fm, label %.lr.ph306, label %.preheader36.i.preheader

.preheader36.i.preheader:                         ; preds = %bb.aa, %bb.y
  %i.fn = icmp ult i64 %i.ey, %i.eu
  br i1 %i.fn, label %.lr.ph308, label %.split.us.i11

.lr.ph306:                                        ; preds = %bb.y, %bb.aa
  %.sroa.04.0.i305 = phi i64 [ %i.fl, %bb.aa ], [ %..i.i10, %bb.y ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.i305
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !21969, !noundef !52
  %i.fq = add i64 %.sroa.04.0.i305, %i.fa         ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.dm
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fq
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !21968, !noundef !52
  %.not21.i = icmp eq i8 %i.fp, %i.ft
  br i1 %.not21.i, label %bb.aa, label %bb.ad

.preheader36.i:                                   ; preds = %bb.ab
  %i.fu = icmp ult i64 %i.ey, %i.fy
  br i1 %i.fu, label %.lr.ph308, label %.split.us.i11

.split.us.i11:                                    ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.fv = add i64 %i.fa, %i.dq                    ; 2 uses
  store i64 %i.fv, ptr %i.dr, align 8, !alias.scope !21967
  store i64 0, ptr %i.dg, align 8, !alias.scope !21967
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fa, ptr %i.fw, align 8, !alias.scope !21970
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fv, ptr %i.fx, align 8, !alias.scope !21970
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html.exit

.lr.ph308:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i307 = phi i64 [ %i.fy, %.preheader36.i ], [ %i.eu, %.preheader36.i.preheader ]
  %i.fy = add i64 %.sroa.2.0.i307, -1             ; 6 uses
  %i.fz = icmp ult i64 %i.fy, %i.dq
  br i1 %i.fz, label %bb.ab, label %.split32.us.i

bb.ab:                                            ; preds = %.lr.ph308
  %i.ga = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fy
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !21969, !noundef !52
  %i.gc = add i64 %i.fy, %i.fa                    ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.dm
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gc
  %i.gf = load i8, ptr %i.ge, align 1, !alias.scope !21968, !noundef !52
  %.not20.i = icmp eq i8 %i.gb, %i.gf
  br i1 %.not20.i, label %.preheader36.i, label %bb.ac

.split32.us.i:                                    ; preds = %.lr.ph308
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.fy, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #51, !noalias !21971
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.gg = add i64 %i.fa, %i.ew
  br label %bb.z

bb.ad:                                            ; preds = %.lr.ph306
  %.reass.reass = add i64 %i.fa, %invariant.op
  %i.gh = add i64 %.reass.reass, %.sroa.04.0.i305
  br label %bb.z

bb.ae:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21975)
  %.promoted.i12 = load i64, ptr %i.dr, align 8, !alias.scope !21973 ; 2 uses
  %i.gi = add i64 %.promoted.i12, %i.ds           ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.dm
  br i1 %i.gj, label %.lr.ph.i15, label %._crit_edge.i13

.lr.ph.i15:                                       ; preds = %bb.ae
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !21973, !noundef !52
  %i.gm = load i64, ptr %i.df, align 8, !alias.scope !21973
  %.fr215 = freeze i64 %i.gm                      ; 7 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !21973
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.fr215, i64 range(i64 0, -9223372036854775808) %i.dq)
  %i.gp = add i64 %.fr215, -1                     ; 2 uses
  %.first_iter.i16 = icmp ult i64 %i.gp, %i.dq
  %exitcond.not.i17310.not = icmp ult i64 %.fr215, %i.dq
  %invariant.op359 = sub i64 1, %.fr215
  %.not34.i.us313 = icmp eq i64 %.fr215, 0        ; 2 uses
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.ah, %.lr.ph.i15
  %i.gq = phi i64 [ %i.hp, %bb.ah ], [ %i.gi, %.lr.ph.i15 ]
  %i.gr = phi i64 [ %.sink.i18, %bb.ah ], [ %.promoted.i12, %.lr.ph.i15 ] ; 7 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gq
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !21974, !noundef !52
  %i.gu = and i8 %i.gt, 63
  %i.gv = zext nneg i8 %i.gu to i64
  %i.gw = shl nuw i64 1, %i.gv
  %i.gx = and i64 %i.gw, %i.gl
  %.not.us.i = icmp eq i64 %i.gx, 0
  br i1 %.not.us.i, label %bb.ag, label %.preheader35.i.preheader

.preheader35.i.preheader:                         ; preds = %.lr.ph.split.us.i
  br i1 %exitcond.not.i17310.not, label %.lr.ph312, label %.preheader.i19.preheader

.preheader35.i:                                   ; preds = %.lr.ph312
  %i.gy = add i64 %.sroa.04.0.us.i311, 1          ; 2 uses
  %exitcond.not.i17 = icmp eq i64 %i.gy, %umax.i
  br i1 %exitcond.not.i17, label %.preheader.i19.preheader, label %.lr.ph312

.preheader.i19.preheader:                         ; preds = %.preheader35.i, %.preheader35.i.preheader
  br i1 %.first_iter.i16, label %.preheader.i19.us.preheader, label %.preheader.i19

.preheader.i19.us.preheader:                      ; preds = %.preheader.i19.preheader
  br i1 %.not34.i.us313, label %.split.us.i21, label %.lr.ph315

.preheader.i19.us:                                ; preds = %.lr.ph315
  %.not34.i.us = icmp eq i64 %i.gz, 0
  br i1 %.not34.i.us, label %.split.us.i21, label %.lr.ph315

.lr.ph315:                                        ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us
  %.sroa.2.0.us.i.us314 = phi i64 [ %i.gz, %.preheader.i19.us ], [ %.fr215, %.preheader.i19.us.preheader ]
  %i.gz = add i64 %.sroa.2.0.us.i.us314, -1       ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !21975, !noundef !52
  %i.hc = add i64 %i.gz, %i.gr                    ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.dm
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hc
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !21974, !noundef !52
  %.not20.us.i.us = icmp eq i8 %i.hb, %i.hf
  br i1 %.not20.us.i.us, label %.preheader.i19.us, label %.split.us

.split.us:                                        ; preds = %.lr.ph315
  %i.hg = add i64 %i.gr, %i.go
  br label %bb.ah

.lr.ph312:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i311 = phi i64 [ %i.gy, %.preheader35.i ], [ %.fr215, %.preheader35.i.preheader ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.us.i311
  %i.hi = load i8, ptr %i.hh, align 1, !alias.scope !21975, !noundef !52
  %i.hj = add i64 %.sroa.04.0.us.i311, %i.gr      ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %i.dm
  tail call void @llvm.assume(i1 %i.hk)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hj
  %i.hm = load i8, ptr %i.hl, align 1, !alias.scope !21974, !noundef !52
  %.not21.us.i = icmp eq i8 %i.hi, %i.hm
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.af

.preheader.i19:                                   ; preds = %.preheader.i19.preheader
  br i1 %.not34.i.us313, label %.split.us.i21, label %.split32.us.i20

.split32.us.i20:                                  ; preds = %.preheader.i19
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.gp, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @78) #51, !noalias !21976
  unreachable

bb.af:                                            ; preds = %.lr.ph312
  %.reass282.reass = add i64 %i.gr, %invariant.op359
  %i.hn = add i64 %.reass282.reass, %.sroa.04.0.us.i311
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i
  %i.ho = add i64 %i.gr, %i.dq
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.split.us
  %.sink.i18 = phi i64 [ %i.ho, %bb.ag ], [ %i.hn, %bb.af ], [ %i.hg, %.split.us ] ; 3 uses
  store i64 %.sink.i18, ptr %i.dr, align 8, !alias.scope !21973
  %i.hp = add i64 %.sink.i18, %i.ds               ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.dm
  br i1 %i.hq, label %.lr.ph.split.us.i, label %._crit_edge.i13

._crit_edge.i13:                                  ; preds = %bb.ah, %bb.ae
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !21973
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html.exit

.split.us.i21:                                    ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us, %.preheader.i19
  %i.hr = add i64 %i.gr, %i.dq                    ; 2 uses
  store i64 %i.hr, ptr %i.dr, align 8, !alias.scope !21973
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gr, ptr %i.hs, align 8, !alias.scope !21977
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hr, ptr %i.ht, align 8, !alias.scope !21977
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsw_NtCs9gmjTwvRRSu_10typst_html3domNtB5_7HtmlTagNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast9IntoValue10into_value(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMNtCs6xpQEr8gLsQ_11typst_utils4picoNtB2_7PicoStr7resolve(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %1)
  %i.b = call { ptr, i64 } @_RNvMs0_NtCs6xpQEr8gLsQ_11typst_utils4picoNtB5_15ResolvedPicoStr6as_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  call void @_RNvXs1q_NtNtCsdaEETE4DqmE_13typst_library11foundations3strReNtNtB8_4cast9IntoValue10into_value(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsw_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_9YesNoBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast9FromValue10from_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = load i64, ptr %1, align 8, !range !62, !noundef !52 ; 2 uses
  %i.e = icmp ne i64 %i.d, 30
  tail call void @llvm.assume(i1 %i.e)
  %.not = icmp eq i64 %i.d, 4
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21982
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvNvXs_NtNtCsdaEETE4DqmE_13typst_library11foundations4boolbNtNtB8_2ty10NativeType4data4DATA, ptr %i.f, align 8, !alias.scope !21983, !noalias !21982
  store i64 34, ptr %i.a, align 8, !alias.scope !21983, !noalias !21982
  %i.g = invoke { ptr, i64 } @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations4castNtB5_8CastInfo5error(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a) #49
          to label %.body.thread unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a)
          to label %bb.g unwind label %.body

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXso_NtNtCsdaEETE4DqmE_13typst_library11foundations5valuebNtNtB7_4cast9FromValue10from_value(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %i.c, align 8, !noundef !52 ; 2 uses
  %.not5 = icmp eq ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %.not5, label %bb.j, label %bb.i

.body:                                            ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21982
  %i.m = extractvalue { ptr, i64 } %i.g, 0
  %i.n = extractvalue { ptr, i64 } %i.g, 1
  store ptr %i.m, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(32) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.j, %bb.g
  ret void

bb.i:                                             ; preds = %bb.f
  %i.p = load i64, ptr %i.k, align 8, !noundef !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.j, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8
  br label %bb.h

bb.j:                                             ; preds = %bb.f
  %i.r = load i8, ptr %i.k, align 8, !range !64, !noundef !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.r, ptr %i.s, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.k:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body7

.body.thread:                                     ; preds = %bb.c, %.body
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.l, %.body ], [ %i.h, %bb.c ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #49
          to label %bb.k unwind label %bb.l

bb.l:                                             ; preds = %.body.thread
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsx_NtCs9gmjTwvRRSu_10typst_html3domNtB5_7HtmlTagNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast9FromValue10from_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i64, ptr %1, align 8, !range !62, !noundef !52 ; 3 uses
  %i.i = icmp ne i64 %i.h, 30
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -2
  %i.k = icmp samesign ugt i64 %i.h, 1
  %i.l = select i1 %i.k, i64 %i.j, i64 28
  switch i64 %i.l, label %bb.b [
    i64 13, label %bb.f
    i64 15, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21990
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvNvXso_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB7_3StrNtNtB9_2ty10NativeType4data4DATA, ptr %i.m, align 8, !alias.scope !21991, !noalias !21990
  store i64 34, ptr %i.b, align 8, !alias.scope !21991, !noalias !21990
  %i.n = invoke { ptr, i64 } @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations4castNtB5_8CastInfo5error(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.d unwind label %bb.c       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b) #49
          to label %.thread29 unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast8CastInfoECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b)
          to label %bb.t unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXs11_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtNtB8_3str3StrNtNtB8_4cast9FromValue10from_value(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.q = load i64, ptr %i.f, align 8, !range !60, !noundef !52
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.v = load i64, ptr %i.u, align 8              ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br i1 %i.r, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread29

bb.h:                                             ; preds = %bb.f
  store ptr %i.t, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.v, ptr %i.w, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrECs9gmjTwvRRSu_10typst_html.exit

bb.i:                                             ; preds = %bb.f
  store ptr %i.t, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.v, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.x = lshr i64 %i.v, 56
  %i.y = trunc nuw i64 %i.x to i8
  %i.z = invoke { ptr, i64 } @_RNvXs_NtNtCsdaEETE4DqmE_13typst_library11foundations3strNtB4_3StrNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %bb.k unwind label %bb.j       ; 2 uses

bb.j:                                             ; preds = %bb.m, %bb.k, %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrECs9gmjTwvRRSu_10typst_html(ptr %i.t, i8 %i.y) #49
          to label %.thread unwind label %bb.r

end_hunk_0
begin_hunk_1_@llvm.minimumnum.v4f32
!21776 = distinct !{!21776, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE17extend_from_sliceCs9gmjTwvRRSu_10typst_html"}
!21777 = distinct !{!21777, !21776, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE17extend_from_sliceCs9gmjTwvRRSu_10typst_html: argument 0"}
!21778 = distinct !{!21778, !21776, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4args3ArgE17extend_from_sliceCs9gmjTwvRRSu_10typst_html: argument 1"}
!21779 = distinct !{!21779, i1 true, !"_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB5_3ArgNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!21780 = distinct !{!21780, !21779, !"_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB5_3ArgNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!21781 = distinct !{!21781, !21779, !"_RNvXsm_NtNtCsdaEETE4DqmE_13typst_library11foundations4argsNtB5_3ArgNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!21782 = distinct !{!21782, i1 true, !"_RNvXsF_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB5_7SpannedNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html"}
!21783 = distinct !{!21783, !21782, !"_RNvXsF_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB5_7SpannedNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html: argument 0"}
!21784 = distinct !{!21784, !21782, !"_RNvXsF_NtCs5PEMdK7bMAG_12typst_syntax4spanINtB5_7SpannedNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs9gmjTwvRRSu_10typst_html: argument 1"}
!21785 = !{!21777}
!21786 = !{!21778}
!21787 = !{!21780}
!21788 = !{!21780, !21778}
!21789 = !{!21781, !21780, !21777, !21778}
!21790 = !{!21783}
!21791 = !{!21784}
!21792 = !{!21781, !21777}
!21793 = !{!21781, !21780, !21777}
!21794 = !{!21784, !21780, !21778}
!21795 = !{!21780, !21777, !21778}
!21796 = distinct !{!21796, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB6_6string9EcoStringEE17extend_from_sliceBL_"}
!21797 = distinct !{!21797, !21796, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB6_6string9EcoStringEE17extend_from_sliceBL_: argument 0"}
!21798 = distinct !{!21798, !21796, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtB6_6string9EcoStringEE17extend_from_sliceBL_: argument 1"}
!21799 = distinct !{!21799, i1 true, !"_RNvYTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_"}
!21800 = distinct !{!21800, !21799, !"_RNvYTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_: argument 1"}
!21801 = distinct !{!21801, i1 true, !"_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!21802 = distinct !{!21802, !21801, !"_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!21803 = distinct !{!21803, i1 true, !"_RNvXs0_NtCsakL8LGkl72C_4ecow7dynamicNtB5_10DynamicVecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone"}
!21804 = distinct !{!21804, !21803, !"_RNvXs0_NtCsakL8LGkl72C_4ecow7dynamicNtB5_10DynamicVecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!21805 = distinct !{!21805, !21803, !"_RNvXs0_NtCsakL8LGkl72C_4ecow7dynamicNtB5_10DynamicVecNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 1"}
!21806 = distinct !{!21806, !21799, !"_RNvYTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB7_: argument 0"}
!21807 = distinct !{!21807, !21801, !"_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone: argument 0"}
!21808 = !{!21797}
!21809 = !{!21798}
!21810 = !{!21800}
!21811 = !{!21800, !21798}
!21812 = !{!21802}
!21813 = !{!21804}
!21814 = !{!21805}
!21815 = !{!21805, !21802, !21800, !21798}
!21816 = !{!21805, !21804, !21802, !21800, !21798}
!21817 = !{!21804, !21805, !21807, !21802, !21806, !21800, !21797, !21798}
!21818 = !{!21797, !21798}
!21819 = distinct !{!21819, i1 true, !"_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeE19extend_from_trustedABH_j1_EBL_"}
!21820 = distinct !{!21820, !21819, !"_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeE19extend_from_trustedABH_j1_EBL_: argument 1"}
!21821 = distinct !{!21821, !21819, !"_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeE19extend_from_trustedABH_j1_EBL_: argument 0"}
!21822 = distinct !{!21822, i1 true, !"_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodej1_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterBI_"}
!21823 = distinct !{!21823, !21822, !"_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodej1_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterBI_: argument 1"}
!21824 = distinct !{!21824, !21822, !"_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodej1_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterBI_: argument 0"}
!21825 = distinct !{!21825, i1 true, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_"}
!21826 = distinct !{!21826, !21825, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_: argument 1"}
!21827 = distinct !{!21827, i1 true, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeEE4nextB1Y_"}
!21828 = distinct !{!21828, !21827, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeEE4nextB1Y_: argument 1"}
!21829 = distinct !{!21829, !21825, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextBW_: argument 0"}
!21830 = distinct !{!21830, !21827, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlNodeEE4nextB1Y_: argument 0"}
!21831 = !{!21821, !21820}
!21832 = !{!21823}
!21833 = !{!21824}
!21834 = !{!21824, !21823}
!21835 = !{!21821}
!21836 = !{!21820}
!21837 = !{!21828, !21826}
!21838 = !{!21830, !21828, !21829, !21826}
!21839 = !{!21829}
!21840 = !{!21830}
!21841 = distinct !{!21841, i1 true, !"_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE19extend_from_trustedABH_j1_ECs9gmjTwvRRSu_10typst_html"}
!21842 = distinct !{!21842, !21841, !"_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE19extend_from_trustedABH_j1_ECs9gmjTwvRRSu_10typst_html: argument 0"}
!21843 = distinct !{!21843, !21841, !"_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticE19extend_from_trustedABH_j1_ECs9gmjTwvRRSu_10typst_html: argument 1"}
!21844 = distinct !{!21844, i1 true, !"_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticj1_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCs9gmjTwvRRSu_10typst_html"}
!21845 = distinct !{!21845, !21844, !"_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticj1_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCs9gmjTwvRRSu_10typst_html: argument 1"}
!21846 = distinct !{!21846, !21844, !"_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticj1_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCs9gmjTwvRRSu_10typst_html: argument 0"}
!21847 = distinct !{!21847, i1 true, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html"}
!21848 = distinct !{!21848, !21847, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html: argument 1"}
!21849 = distinct !{!21849, i1 true, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEE4nextCs9gmjTwvRRSu_10typst_html"}
!21850 = distinct !{!21850, !21849, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEE4nextCs9gmjTwvRRSu_10typst_html: argument 1"}
!21851 = distinct !{!21851, !21847, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html: argument 0"}
!21852 = distinct !{!21852, !21849, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEE4nextCs9gmjTwvRRSu_10typst_html: argument 0"}
!21853 = distinct !{!21853, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_EECs9gmjTwvRRSu_10typst_html"}
!21854 = distinct !{!21854, !21853, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_EECs9gmjTwvRRSu_10typst_html: argument 0"}
!21855 = distinct !{!21855, i1 true, !"_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html"}
!21856 = distinct !{!21856, !21855, !"_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticKj1_ENtNtNtB9_3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html: argument 0"}
!21857 = distinct !{!21857, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_EECs9gmjTwvRRSu_10typst_html"}
!21858 = distinct !{!21858, !21857, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_5array4iter10iter_inner15PolymorphicIterAINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_EECs9gmjTwvRRSu_10typst_html: argument 0"}
!21859 = distinct !{!21859, i1 true, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterAINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_ENtNtNtBb_3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html"}
!21860 = distinct !{!21860, !21859, !"_RNvXs1_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterAINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_ENtNtNtBb_3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html: argument 0"}
!21861 = distinct !{!21861, i1 true, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_NtB4_11PartialDrop12partial_dropCs9gmjTwvRRSu_10typst_html"}
!21862 = distinct !{!21862, !21861, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEj1_NtB4_11PartialDrop12partial_dropCs9gmjTwvRRSu_10typst_html: argument 0"}
!21863 = distinct !{!21863, i1 true, !"_RNvXNtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtB2_11PartialDrop12partial_dropCs9gmjTwvRRSu_10typst_html"}
!21864 = distinct !{!21864, !21863, !"_RNvXNtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerSINtNtNtB8_3mem12maybe_uninit11MaybeUninitNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticENtB2_11PartialDrop12partial_dropCs9gmjTwvRRSu_10typst_html: argument 0"}
!21865 = distinct !{!21865, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs9gmjTwvRRSu_10typst_html"}
!21866 = distinct !{!21866, !21865, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs9gmjTwvRRSu_10typst_html: argument 0"}
!21867 = !{!21842}
!21868 = !{!21842, !21843}
!21869 = !{!21845}
!21870 = !{!21846}
!21871 = !{!21846, !21845}
!21872 = !{!21843}
!21873 = !{!21850, !21848}
!21874 = !{!21852, !21850, !21851, !21848}
!21875 = !{!21851}
!21876 = !{!21852}
!21877 = !{!21866, !21864, !21862, !21860, !21858, !21856, !21854, !21842, !21843}
!21878 = distinct !{!21878, i1 true, !"_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE19extend_from_trustedABH_j1_ECs9gmjTwvRRSu_10typst_html"}
!21879 = distinct !{!21879, !21878, !"_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE19extend_from_trustedABH_j1_ECs9gmjTwvRRSu_10typst_html: argument 1"}
!21880 = distinct !{!21880, !21878, !"_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE19extend_from_trustedABH_j1_ECs9gmjTwvRRSu_10typst_html: argument 0"}
!21881 = distinct !{!21881, i1 true, !"_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Contentj1_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCs9gmjTwvRRSu_10typst_html"}
!21882 = distinct !{!21882, !21881, !"_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Contentj1_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCs9gmjTwvRRSu_10typst_html: argument 1"}
!21883 = distinct !{!21883, !21881, !"_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Contentj1_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCs9gmjTwvRRSu_10typst_html: argument 0"}
!21884 = distinct !{!21884, i1 true, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html"}
!21885 = distinct !{!21885, !21884, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html: argument 1"}
!21886 = distinct !{!21886, i1 true, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE4nextCs9gmjTwvRRSu_10typst_html"}
!21887 = distinct !{!21887, !21886, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE4nextCs9gmjTwvRRSu_10typst_html: argument 1"}
!21888 = distinct !{!21888, !21884, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html: argument 0"}
!21889 = distinct !{!21889, !21886, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE4nextCs9gmjTwvRRSu_10typst_html: argument 0"}
!21890 = !{!21880, !21879}
!21891 = !{!21882}
!21892 = !{!21883}
!21893 = !{!21883, !21882}
!21894 = !{!21880}
!21895 = !{!21879}
!21896 = !{!21887, !21885}
!21897 = !{!21889, !21887, !21888, !21885}
!21898 = !{!21888}
!21899 = !{!21889}
!21900 = distinct !{!21900, i1 true, !"_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE19extend_from_trustedABH_j2_ECs9gmjTwvRRSu_10typst_html"}
!21901 = distinct !{!21901, !21900, !"_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE19extend_from_trustedABH_j2_ECs9gmjTwvRRSu_10typst_html: argument 1"}
!21902 = distinct !{!21902, !21900, !"_RINvMs_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentE19extend_from_trustedABH_j2_ECs9gmjTwvRRSu_10typst_html: argument 0"}
!21903 = distinct !{!21903, i1 true, !"_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Contentj2_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCs9gmjTwvRRSu_10typst_html"}
!21904 = distinct !{!21904, !21903, !"_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Contentj2_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCs9gmjTwvRRSu_10typst_html: argument 1"}
!21905 = distinct !{!21905, !21903, !"_RNvXs0_NtNtCs3oUPovFnLWP_4core5array4iterANtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7Contentj2_NtNtNtNtB9_4iter6traits7collect12IntoIterator9into_iterCs9gmjTwvRRSu_10typst_html: argument 0"}
!21906 = distinct !{!21906, i1 true, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html"}
!21907 = distinct !{!21907, !21906, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html: argument 1"}
!21908 = distinct !{!21908, i1 true, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE4nextCs9gmjTwvRRSu_10typst_html"}
!21909 = distinct !{!21909, !21908, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE4nextCs9gmjTwvRRSu_10typst_html: argument 1"}
!21910 = distinct !{!21910, i1 true, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html"}
!21911 = distinct !{!21911, !21910, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html: argument 0:pre.rot"}
!21912 = distinct !{!21912, i1 true, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE4nextCs9gmjTwvRRSu_10typst_html"}
!21913 = distinct !{!21913, !21912, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE4nextCs9gmjTwvRRSu_10typst_html: argument 0:pre.rot"}
!21914 = distinct !{!21914, i1 true, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html"}
!21915 = distinct !{!21915, !21914, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentKj2_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html: argument 0:h.rot"}
!21916 = distinct !{!21916, i1 true, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE4nextCs9gmjTwvRRSu_10typst_html"}
!21917 = distinct !{!21917, !21916, !"_RNvMs8_NtNtNtCs3oUPovFnLWP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEE4nextCs9gmjTwvRRSu_10typst_html: argument 0:h.rot"}
!21918 = !{!21902, !21901}
!21919 = !{!21904}
!21920 = !{!21905}
!21921 = !{!21905, !21904}
!21922 = !{!21902}
!21923 = !{!21901}
!21924 = !{!21909, !21907}
!21925 = !{!21913, !21909, !21911, !21907}
!21926 = !{!21917, !21909, !21915, !21907}
!21927 = distinct !{!21927, i1 true, !"_RNvYNtNtCs9gmjTwvRRSu_10typst_html5typed13TrueFalseBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5errorB6_"}
!21928 = distinct !{!21928, !21927, !"_RNvYNtNtCs9gmjTwvRRSu_10typst_html5typed13TrueFalseBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5errorB6_: argument 0"}
!21929 = distinct !{!21929, i1 true, !"_RNvXst_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_13TrueFalseBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input"}
!21930 = distinct !{!21930, !21929, !"_RNvXst_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_13TrueFalseBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input: argument 0"}
!21931 = !{!21928}
!21932 = !{!21930}
!21933 = distinct !{!21933, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!21934 = distinct !{!21934, !21933, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!21935 = distinct !{!21935, i1 true, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!21936 = distinct !{!21936, !21935, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!21937 = distinct !{!21937, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!21938 = distinct !{!21938, !21937, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!21939 = distinct !{!21939, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9gmjTwvRRSu_10typst_html"}
!21940 = distinct !{!21940, !21939, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs9gmjTwvRRSu_10typst_html: argument 0"}
!21941 = distinct !{!21941, !21937, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!21942 = distinct !{!21942, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr"}
!21943 = distinct !{!21943, !21942, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr: argument 0"}
!21944 = distinct !{!21944, i1 true, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html"}
!21945 = distinct !{!21945, !21944, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html: argument 0"}
!21946 = distinct !{!21946, !21944, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html: argument 1"}
!21947 = distinct !{!21947, !21944, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html: argument 2"}
!21948 = distinct !{!21948, !21944, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html: argument 3"}
!21949 = distinct !{!21949, i1 true, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!21950 = distinct !{!21950, !21949, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!21951 = distinct !{!21951, i1 true, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html"}
!21952 = distinct !{!21952, !21951, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html: argument 0"}
!21953 = distinct !{!21953, !21951, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html: argument 1"}
!21954 = distinct !{!21954, !21951, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html: argument 2"}
!21955 = distinct !{!21955, !21951, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs9gmjTwvRRSu_10typst_html: argument 3"}
!21956 = distinct !{!21956, i1 true, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!21957 = distinct !{!21957, !21956, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!21958 = !{!21934}
!21959 = !{!21936}
!21960 = !{!21938, !21934}
!21961 = !{!21940, !21938, !21934}
!21962 = !{!21941}
!21963 = !{!21938, !21941}
!21964 = !{!21940, !21938, !21941}
!21965 = !{!21943}
!21966 = !{!21945}
!21967 = !{!21946}
!21968 = !{!21947}
!21969 = !{!21948}
!21970 = !{!21950, !21945}
!21971 = !{!21945, !21946, !21947, !21948}
!21972 = !{!21952}
!21973 = !{!21953}
!21974 = !{!21954}
!21975 = !{!21955}
!21976 = !{!21952, !21953, !21954, !21955}
!21977 = !{!21957, !21952}
!21978 = distinct !{!21978, i1 true, !"_RNvYNtNtCs9gmjTwvRRSu_10typst_html5typed9YesNoBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5errorB6_"}
!21979 = distinct !{!21979, !21978, !"_RNvYNtNtCs9gmjTwvRRSu_10typst_html5typed9YesNoBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5errorB6_: argument 0"}
!21980 = distinct !{!21980, i1 true, !"_RNvXsv_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_9YesNoBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input"}
!21981 = distinct !{!21981, !21980, !"_RNvXsv_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_9YesNoBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input: argument 0"}
!21982 = !{!21979}
!21983 = !{!21981}
!21984 = distinct !{!21984, i1 true, !"_RNvYNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5errorB6_"}
!21985 = distinct !{!21985, !21984, !"_RNvYNtNtCs9gmjTwvRRSu_10typst_html3dom7HtmlTagNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5errorB6_: argument 0"}
!21986 = distinct !{!21986, i1 true, !"_RNvXsv_NtCs9gmjTwvRRSu_10typst_html3domNtB5_7HtmlTagNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input"}
!21987 = distinct !{!21987, !21986, !"_RNvXsv_NtCs9gmjTwvRRSu_10typst_html3domNtB5_7HtmlTagNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input: argument 0"}
!21988 = distinct !{!21988, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html"}
!21989 = distinct !{!21989, !21988, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html: argument 0"}
!21990 = !{!21985}
!21991 = !{!21987}
!21992 = !{!21989}
!21993 = distinct !{!21993, i1 true, !"_RNvYNtNtCs9gmjTwvRRSu_10typst_html5typed9OnOffBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5errorB6_"}
!21994 = distinct !{!21994, !21993, !"_RNvYNtNtCs9gmjTwvRRSu_10typst_html5typed9OnOffBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5errorB6_: argument 0"}
!21995 = distinct !{!21995, i1 true, !"_RNvXsx_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_9OnOffBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input"}
!21996 = distinct !{!21996, !21995, !"_RNvXsx_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_9OnOffBoolNtNtNtCsdaEETE4DqmE_13typst_library11foundations4cast7Reflect5input: argument 0"}
!21997 = !{!21994}
!21998 = !{!21996}
!21999 = distinct !{!21999, i1 true, !"_RNvXsq_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtNtB1S_5range9RangeFullE5indexCs9gmjTwvRRSu_10typst_html"}
!22000 = distinct !{!22000, !21999, !"_RNvXsq_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtNtB1S_5range9RangeFullE5indexCs9gmjTwvRRSu_10typst_html: argument 0"}
!22001 = distinct !{!22001, i1 true, !"_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_E6tripleCs9gmjTwvRRSu_10typst_html"}
!22002 = distinct !{!22002, !22001, !"_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_E6tripleCs9gmjTwvRRSu_10typst_html: argument 1"}
!22003 = distinct !{!22003, i1 true, !"_RNvXsq_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtNtB1S_5range9RangeFullE5indexCs9gmjTwvRRSu_10typst_html"}
!22004 = distinct !{!22004, !22003, !"_RNvXsq_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexNtNtB1S_5range9RangeFullE5indexCs9gmjTwvRRSu_10typst_html: argument 0"}
!22005 = distinct !{!22005, i1 true, !"_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_E6tripleCs9gmjTwvRRSu_10typst_html"}
!22006 = distinct !{!22006, !22005, !"_RNvMsd_CsiSzwKAiqS6b_8smallvecINtB5_8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_E6tripleCs9gmjTwvRRSu_10typst_html: argument 1"}
!22007 = distinct !{!22007, i1 true, !"_RNvXs8_NtCs3oUPovFnLWP_4core5tupleThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtB7_3cmp9PartialEq2neCs9gmjTwvRRSu_10typst_html"}
!22008 = distinct !{!22008, !22007, !"_RNvXs8_NtCs3oUPovFnLWP_4core5tupleThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtB7_3cmp9PartialEq2neCs9gmjTwvRRSu_10typst_html: argument 0"}
!22009 = distinct !{!22009, !22007, !"_RNvXs8_NtCs3oUPovFnLWP_4core5tupleThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueENtNtB7_3cmp9PartialEq2neCs9gmjTwvRRSu_10typst_html: argument 1"}
!22010 = !{!22002, !22000}
!22011 = !{!22006, !22004}
!22012 = !{!22008}
!22013 = !{!22009}
!22014 = distinct !{!22014, i1 true, !"_RNCINvMs0_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6vtableNtB8_13ContentVtable3newNtCs9gmjTwvRRSu_10typst_html8HtmlElemEs0_0B1z_"}
!22015 = distinct !{!22015, !22014, !"_RNCINvMs0_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6vtableNtB8_13ContentVtable3newNtCs9gmjTwvRRSu_10typst_html8HtmlElemEs0_0B1z_: argument 0"}
!22016 = distinct !{!22016, i1 true, !"_RNvXs0_Cs9gmjTwvRRSu_10typst_htmlNtB5_8HtmlElemNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt"}
!22017 = distinct !{!22017, !22016, !"_RNvXs0_Cs9gmjTwvRRSu_10typst_htmlNtB5_8HtmlElemNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 1"}
!22018 = distinct !{!22018, !22016, !"_RNvXs0_Cs9gmjTwvRRSu_10typst_htmlNtB5_8HtmlElemNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 0"}
!22019 = !{!22018, !22017, !22015}
!22020 = distinct !{!22020, i1 true, !"_RINvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtCs9gmjTwvRRSu_10typst_html8HtmlElemEBK_"}
!22021 = distinct !{!22021, !22020, !"_RINvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtCs9gmjTwvRRSu_10typst_html8HtmlElemEBK_: argument 0"}
!22022 = distinct !{!22022, i1 true, !"_RINvXs_Cs9gmjTwvRRSu_10typst_htmlNtB5_8HtmlElemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherEB5_"}
!22023 = distinct !{!22023, !22022, !"_RINvXs_Cs9gmjTwvRRSu_10typst_htmlNtB5_8HtmlElemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherEB5_: argument 0"}
!22024 = distinct !{!22024, !22022, !"_RINvXs_Cs9gmjTwvRRSu_10typst_htmlNtB5_8HtmlElemNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherEB5_: argument 1"}
!22025 = distinct !{!22025, i1 true, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64Cs9gmjTwvRRSu_10typst_html"}
!22026 = distinct !{!22026, !22025, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64Cs9gmjTwvRRSu_10typst_html: argument 0"}
!22027 = distinct !{!22027, i1 true, !"_RINvYTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherEB8_"}
!22028 = distinct !{!22028, !22027, !"_RINvYTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherEB8_: argument 0"}
!22029 = distinct !{!22029, i1 true, !"_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB8_4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherEBJ_"}
!22030 = distinct !{!22030, !22029, !"_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB8_4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherEBJ_: argument 0"}
!22031 = distinct !{!22031, !22027, !"_RINvYTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherEB8_: argument 1"}
!22032 = distinct !{!22032, !22029, !"_RINvXsl_NtNtCs3oUPovFnLWP_4core4hash5implsTNtNtCs9gmjTwvRRSu_10typst_html3dom8HtmlAttrNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB8_4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherEBJ_: argument 1"}
!22033 = distinct !{!22033, i1 true, !"_RINvXsO_NtCs9gmjTwvRRSu_10typst_html3domNtB6_8HtmlAttrNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherEB8_"}
!22034 = distinct !{!22034, !22033, !"_RINvXsO_NtCs9gmjTwvRRSu_10typst_html3domNtB6_8HtmlAttrNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherEB8_: argument 0"}
!22035 = distinct !{!22035, i1 true, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64Cs9gmjTwvRRSu_10typst_html"}
!22036 = distinct !{!22036, !22035, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_u64Cs9gmjTwvRRSu_10typst_html: argument 0"}
!22037 = distinct !{!22037, i1 true, !"_RINvXsd_NtCsakL8LGkl72C_4ecow6stringNtB6_9EcoStringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs9gmjTwvRRSu_10typst_html"}
!22038 = distinct !{!22038, !22037, !"_RINvXsd_NtCsakL8LGkl72C_4ecow6stringNtB6_9EcoStringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs9gmjTwvRRSu_10typst_html: argument 0"}
!22039 = distinct !{!22039, i1 true, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice"}
!22040 = distinct !{!22040, !22039, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice: argument 0"}
!22041 = distinct !{!22041, !22037, !"_RINvXsd_NtCsakL8LGkl72C_4ecow6stringNtB6_9EcoStringNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs9gmjTwvRRSu_10typst_html: argument 1"}
!22042 = distinct !{!22042, i1 true, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs9gmjTwvRRSu_10typst_html"}
!22043 = distinct !{!22043, !22042, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs9gmjTwvRRSu_10typst_html: argument 1"}
!22044 = distinct !{!22044, !22042, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs9gmjTwvRRSu_10typst_html: argument 0"}
!22045 = distinct !{!22045, i1 true, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8Cs9gmjTwvRRSu_10typst_html"}
!22046 = distinct !{!22046, !22045, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8Cs9gmjTwvRRSu_10typst_html: argument 0"}
!22047 = distinct !{!22047, i1 true, !"_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtB8_4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs9gmjTwvRRSu_10typst_html"}
!22048 = distinct !{!22048, !22047, !"_RINvXsS_NtCs3oUPovFnLWP_4core6optionINtB6_6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtB8_4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherECs9gmjTwvRRSu_10typst_html: argument 0"}
!22049 = distinct !{!22049, i1 true, !"_RINvYNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode8PropertyNtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherEB9_"}
!22050 = distinct !{!22050, !22049, !"_RINvYNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode8PropertyNtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherEB9_: argument 0"}
!22051 = distinct !{!22051, i1 true, !"_RINvXsD_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB6_8PropertyNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherEBa_"}
!22052 = distinct !{!22052, !22051, !"_RINvXsD_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB6_8PropertyNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherEBa_: argument 0"}
!22053 = distinct !{!22053, !22049, !"_RINvYNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode8PropertyNtNtCs3oUPovFnLWP_4core4hash4Hash10hash_sliceNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherEB9_: argument 1"}
!22054 = distinct !{!22054, !22051, !"_RINvXsD_NtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB6_8PropertyNtNtCs3oUPovFnLWP_4core4hash4Hash4hashNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherEBa_: argument 1"}
!22055 = distinct !{!22055, i1 true, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs9gmjTwvRRSu_10typst_html"}
!22056 = distinct !{!22056, !22055, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs9gmjTwvRRSu_10typst_html: argument 1"}
!22057 = distinct !{!22057, !22055, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs9gmjTwvRRSu_10typst_html: argument 0"}
!22058 = distinct !{!22058, i1 true, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8Cs9gmjTwvRRSu_10typst_html"}
!22059 = distinct !{!22059, !22058, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8Cs9gmjTwvRRSu_10typst_html: argument 0"}
!22060 = distinct !{!22060, i1 true, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice"}
!22061 = distinct !{!22061, !22060, !"_RNvMNtCsakL8LGkl72C_4ecow7dynamicNtB2_10DynamicVec8as_slice: argument 0"}
!22062 = distinct !{!22062, i1 true, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs9gmjTwvRRSu_10typst_html"}
!22063 = distinct !{!22063, !22062, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs9gmjTwvRRSu_10typst_html: argument 1"}
!22064 = distinct !{!22064, !22062, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher9write_strCs9gmjTwvRRSu_10typst_html: argument 0"}
!22065 = distinct !{!22065, i1 true, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8Cs9gmjTwvRRSu_10typst_html"}
!22066 = distinct !{!22066, !22065, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher8write_u8Cs9gmjTwvRRSu_10typst_html: argument 0"}
!22067 = distinct !{!22067, i1 true, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher10write_u128Cs9gmjTwvRRSu_10typst_html"}
!22068 = distinct !{!22068, !22067, !"_RNvYNtNvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash12812StableHasherNtNtCs3oUPovFnLWP_4core4hash6Hasher10write_u128Cs9gmjTwvRRSu_10typst_html: argument 0"}
!22069 = !{!22021}
!22070 = !{!22023}
!22071 = !{!22023, !22021}
!22072 = !{!22026, !22023, !22024, !22021}
!22073 = !{!22028}
!22074 = !{!22030}
!22075 = !{!22030, !22028}
!22076 = !{!22036, !22034, !22030, !22032, !22028, !22031, !22023, !22024, !22021}
!22077 = !{!22030, !22023, !22021}
!22078 = !{!22038}
!22079 = !{!22040, !22038, !22030, !22028}
!22080 = !{!22046, !22044, !22043, !22038, !22041, !22030, !22032, !22028, !22031, !22023, !22024, !22021}
!22081 = !{!22048}
!22082 = !{!22048, !22023, !22021}
!22083 = !{!22050}
!22084 = !{!22052}
!22085 = !{!22052, !22050}
!22086 = !{!22059, !22057, !22056, !22052, !22054, !22050, !22053, !22023, !22024, !22021}
!22087 = !{!22061, !22052, !22050}
!22088 = !{!22066, !22064, !22063, !22052, !22054, !22050, !22053, !22023, !22024, !22021}
!22089 = !{!22068, !22023, !22024, !22021}
!22090 = distinct !{!22090, i1 true, !"_RNCINvMs0_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6vtableNtB8_13ContentVtable3newNtCs9gmjTwvRRSu_10typst_html9FrameElemEs0_0B1z_"}
!22091 = distinct !{!22091, !22090, !"_RNCINvMs0_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6vtableNtB8_13ContentVtable3newNtCs9gmjTwvRRSu_10typst_html9FrameElemEs0_0B1z_: argument 0"}
!22092 = distinct !{!22092, i1 true, !"_RNvXs3_Cs9gmjTwvRRSu_10typst_htmlNtB5_9FrameElemNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt"}
!22093 = distinct !{!22093, !22092, !"_RNvXs3_Cs9gmjTwvRRSu_10typst_htmlNtB5_9FrameElemNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 1"}
!22094 = distinct !{!22094, !22092, !"_RNvXs3_Cs9gmjTwvRRSu_10typst_htmlNtB5_9FrameElemNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt: argument 0"}
!22095 = !{!22094, !22093, !22091}
!22096 = distinct !{!22096, i1 true, !"_RINvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtCs9gmjTwvRRSu_10typst_html9FrameElemEBK_"}
!22097 = distinct !{!22097, !22096, !"_RINvNtCs6xpQEr8gLsQ_11typst_utils4hash7hash128NtCs9gmjTwvRRSu_10typst_html9FrameElemEBK_: argument 0"}
!22098 = !{!22097}
!22099 = distinct !{!22099, i1 true, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZeroyEE0Ba_"}
!22100 = distinct !{!22100, !22099, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZeroyEE0Ba_: argument 0"}
!22101 = distinct !{!22101, !22099, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZeroyEE0Ba_: argument 1"}
!22102 = distinct !{!22102, i1 true, !"_RNvXsf_NtCs9gmjTwvRRSu_10typst_html5typedINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZeroyENtB5_8IntoAttr9into_attr"}
!22103 = distinct !{!22103, !22102, !"_RNvXsf_NtCs9gmjTwvRRSu_10typst_html5typedINtNtNtCs3oUPovFnLWP_4core3num7nonzero7NonZeroyENtB5_8IntoAttr9into_attr: argument 0"}
!22104 = !{!22100}
!22105 = !{!22100, !22101}
!22106 = !{!22103, !22100, !22101}
!22107 = !{!22101}
!22108 = distinct !{!22108, i1 true, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_10SourceSizeE0Ba_"}
!22109 = distinct !{!22109, !22108, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_10SourceSizeE0Ba_: argument 0"}
!22110 = distinct !{!22110, !22108, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_10SourceSizeE0Ba_: argument 1"}
!22111 = !{!22109}
!22112 = !{!22109, !22110}
!22113 = distinct !{!22113, i1 true, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_13HorizontalDirE0Ba_"}
!22114 = distinct !{!22114, !22113, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_13HorizontalDirE0Ba_: argument 0"}
!22115 = distinct !{!22115, !22113, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_13HorizontalDirE0Ba_: argument 1"}
!22116 = distinct !{!22116, i1 true, !"_RNvXsl_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_13HorizontalDirNtB5_8IntoAttr9into_attr"}
!22117 = distinct !{!22117, !22116, !"_RNvXsl_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_13HorizontalDirNtB5_8IntoAttr9into_attr: argument 0"}
!22118 = distinct !{!22118, i1 true, !"_RNvXsm_NtCs9gmjTwvRRSu_10typst_html5typedNtNtNtCsdaEETE4DqmE_13typst_library6layout3dir3DirNtB5_8IntoAttr9into_attr"}
!22119 = distinct !{!22119, !22118, !"_RNvXsm_NtCs9gmjTwvRRSu_10typst_html5typedNtNtNtCsdaEETE4DqmE_13typst_library6layout3dir3DirNtB5_8IntoAttr9into_attr: argument 0"}
!22120 = !{!22114}
!22121 = !{!22114, !22115}
!22122 = !{!22117, !22114, !22115}
!22123 = !{!22119, !22117, !22114, !22115}
!22124 = !{!22115}
!22125 = distinct !{!22125, i1 true, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_13NoneUndefinedE0Ba_"}
!22126 = distinct !{!22126, !22125, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_13NoneUndefinedE0Ba_: argument 0"}
!22127 = distinct !{!22127, !22125, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_13NoneUndefinedE0Ba_: argument 1"}
!22128 = !{!22126}
!22129 = !{!22126, !22127}
!22130 = !{!22127}
!22131 = distinct !{!22131, i1 true, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_13TrueFalseBoolE0Ba_"}
!22132 = distinct !{!22132, !22131, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_13TrueFalseBoolE0Ba_: argument 0"}
!22133 = distinct !{!22133, !22131, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_13TrueFalseBoolE0Ba_: argument 1"}
!22134 = !{!22132}
!22135 = !{!22132, !22133}
!22136 = !{!22133}
!22137 = distinct !{!22137, i1 true, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_14ImageCandidateE0Ba_"}
!22138 = distinct !{!22138, !22137, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_14ImageCandidateE0Ba_: argument 0"}
!22139 = distinct !{!22139, !22137, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_14ImageCandidateE0Ba_: argument 1"}
!22140 = !{!22138}
!22141 = !{!22138, !22139}
!22142 = distinct !{!22142, i1 true, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_8IconSizeE0Ba_"}
!22143 = distinct !{!22143, !22142, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_8IconSizeE0Ba_: argument 0"}
!22144 = distinct !{!22144, !22142, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_8IconSizeE0Ba_: argument 1"}
!22145 = distinct !{!22145, i1 true, !"_RNvXsn_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_8IconSizeNtB5_8IntoAttr9into_attr"}
!22146 = distinct !{!22146, !22145, !"_RNvXsn_NtCs9gmjTwvRRSu_10typst_html5typedNtB5_8IconSizeNtB5_8IntoAttr9into_attr: argument 0"}
!22147 = !{!22143}
!22148 = !{!22143, !22144}
!22149 = !{!22146, !22143, !22144}
!22150 = !{!22144}
!22151 = distinct !{!22151, i1 true, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_9NoneEmptyE0Ba_"}
!22152 = distinct !{!22152, !22151, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_9NoneEmptyE0Ba_: argument 0"}
!22153 = !{!22152}
!22154 = distinct !{!22154, i1 true, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_9OnOffBoolE0Ba_"}
!22155 = distinct !{!22155, !22154, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_9OnOffBoolE0Ba_: argument 0"}
!22156 = distinct !{!22156, !22154, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_9OnOffBoolE0Ba_: argument 1"}
!22157 = !{!22155}
!22158 = !{!22155, !22156}
!22159 = !{!22156}
!22160 = distinct !{!22160, i1 true, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_9YesNoBoolE0Ba_"}
!22161 = distinct !{!22161, !22160, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_9YesNoBoolE0Ba_: argument 0"}
!22162 = distinct !{!22162, !22160, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtB8_9YesNoBoolE0Ba_: argument 1"}
!22163 = !{!22161}
!22164 = !{!22161, !22162}
!22165 = !{!22162}
!22166 = distinct !{!22166, i1 true, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrE0Ba_"}
!22167 = distinct !{!22167, !22166, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrE0Ba_: argument 0"}
!22168 = distinct !{!22168, !22166, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations3str3StrE0Ba_: argument 1"}
!22169 = !{!22167}
!22170 = !{!22167, !22168}
!22171 = distinct !{!22171, i1 true, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto9AutoValueE0Ba_"}
!22172 = distinct !{!22172, !22171, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto9AutoValueE0Ba_: argument 0"}
!22173 = !{!22172}
!22174 = distinct !{!22174, i1 true, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations4none9NoneValueE0Ba_"}
!22175 = distinct !{!22175, !22174, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations4none9NoneValueE0Ba_: argument 0"}
!22176 = !{!22175}
!22177 = distinct !{!22177, i1 true, !"_RNCINvMs2_NtCs9gmjTwvRRSu_10typst_html5typedNtB8_10NativeType2ofNtNtNtCsdaEETE4DqmE_13typst_library11foundations5float11PositiveF64E0Ba_"}
end_hunk_1
