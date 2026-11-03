Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_cli.jiff_cli.28936ee66da4cb41-cgu.03?download=true
inline.NumInlined: 94
inline.NumDeleted: 69
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bq = add nuw nsw i64 %i.bg, 2
  %i.br = icmp samesign ne i64 %i.bq, %i.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bt = add nuw nsw i64 %i.bg, 3
  %i.bu = icmp samesign ne i64 %i.bt, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %.not.i.i.us, label %bb.l, label %.split.i.i.us

.split.i.i.us:                                    ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %.split.us161

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bj, align 1, !alias.scope !184, !noalias !188, !noundef !5
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.m, label %.split.us161

bb.m:                                             ; preds = %bb.l, %.split.i.i.us, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %i.bl, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bk, align 1, !noalias !189, !noundef !5 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.o, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us: ; preds = %bb.n
  %i.bz = and i8 %i.bx, 31
  %i.ca = zext nneg i8 %i.bz to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bo)
  %i.cb = load i8, ptr %i.bm, align 1, !noalias !189, !noundef !5
  %i.cc = shl nuw nsw i32 %i.ca, 6
  %i.cd = and i8 %i.cb, 63
  %i.ce = zext nneg i8 %i.cd to i32               ; 2 uses
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.cg, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us, label %.loopexit42.split.us.loopexit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us
  tail call void @llvm.assume(i1 %i.br)
  %i.ch = load i8, ptr %i.bp, align 1, !noalias !189, !noundef !5
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck            ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ca, 12
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = icmp samesign ugt i8 %i.bx, -17
  br i1 %i.co, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us, label %.loopexit42.split.us.loopexit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us
  tail call void @llvm.assume(i1 %i.bu)
  %i.cp = load i8, ptr %i.bs, align 1, !noalias !189, !noundef !5
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

.loopexit42.split.us.loopexit:                    ; preds = %bb.o, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us
  %.sroa.4.0.i.ph.i.us = phi i32 [ %i.cn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit14.i.i.us ], [ %i.cw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit16.i.i.us ], [ %i.cf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3tZ2SXJA1qv_8jiff_cli.exit12.i.i.us ], [ %i.cx, %bb.o ]
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us, 1114112
  tail call void @llvm.assume(i1 %i.cy)
  br label %.loopexit42.split.us

.split.us161:                                     ; preds = %bb.l, %.split.i.i.us, %bb.c, %.split.i.i.us.peel
  %.lcssa323 = phi i64 [ %.promoted157, %.split.i.i.us.peel ], [ %.promoted157, %bb.c ], [ %i.bg, %.split.i.i.us ], [ %i.bg, %bb.l ]
  %.lcssa320 = phi i8 [ %.promoted206, %.split.i.i.us.peel ], [ %.promoted206, %bb.c ], [ 1, %.split.i.i.us ], [ 1, %bb.l ]
  %i.cz = xor i8 %.lcssa320, 1
  store i8 %i.cz, ptr %i.f, align 8, !alias.scope !187
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %.lcssa323, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22, !noalias !188
  unreachable

.split166.us:                                     ; preds = %bb.d
  %i.da = xor i8 %.promoted206, 1
  store i8 %i.da, ptr %i.f, align 8, !alias.scope !187
  br i1 %i.k, label %bb.s, label %bb.p

.loopexit42.split.us:                             ; preds = %.loopexit42.split.us.loopexit, %bb.g
  %.lcssa325 = phi i64 [ %.promoted157, %bb.g ], [ %i.bg, %.loopexit42.split.us.loopexit ]
  store i8 0, ptr %i.f, align 8, !alias.scope !187
  br label %bb.s

default.unreachable261:                           ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %.split166.us
  store i8 1, ptr %i.c, align 2, !alias.scope !187
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit

bb.q:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dc = load i64, ptr %i.db, align 8, !noundef !5 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !noundef !5 ; 4 uses
  %.not = icmp ult i64 %i.de, %i.dc
  br i1 %.not, label %bb.t, label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit

bb.r:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !5 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !5 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !5 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.ds = add nsw i64 %i.dq, -1                   ; 4 uses
  br i1 %i.di, label %bb.ae, label %bb.w

.critedge:                                        ; preds = %bb.m
  store i8 0, ptr %i.f, align 8, !alias.scope !187
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %.loopexit42.split.us, %.split166.us
  %i.dt = phi i64 [ %.lcssa325, %.loopexit42.split.us ], [ %i.j, %.split166.us ], [ %i.j, %.critedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dt, ptr %i.dv, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit

_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit: ; preds = %bb.s, %bb.p, %.preheader, %.split.us.i21, %._crit_edge.i13, %.split.us.i11, %._crit_edge.i, %.loopexit43, %.loopexit44, %bb.q
  %storemerge.i.sink = phi i64 [ 1, %.loopexit43 ], [ 1, %.split.us.i11 ], [ 0, %bb.q ], [ 1, %.split.us.i21 ], [ 0, %.loopexit44 ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i13 ], [ 1, %bb.s ], [ 0, %bb.p ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.t:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !5, !noundef !5
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load i8, ptr %i.dy, align 8, !noundef !5 ; 2 uses
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
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !190, !noundef !5
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
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit

.loopexit44:                                      ; preds = %bb.v, %bb.u
  store i64 %i.dc, ptr %i.dd, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !192 ; 2 uses
  %i.eq = add i64 %.promoted.i, %i.ds             ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dm
  br i1 %i.er, label %.lr.ph.i8, label %._crit_edge.i

.lr.ph.i8:                                        ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !192, !noundef !5
  %i.eu = load i64, ptr %i.df, align 8, !alias.scope !192
  %.fr60.i = freeze i64 %i.eu                     ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !192 ; 2 uses
  %i.ex = sub i64 %i.dq, %i.ew
  %invariant.op = sub i64 1, %.fr60.i
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.w
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !192
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.i8
  %i.ey = phi i64 [ %.sink70.i, %bb.z ], [ %i.dh, %.lr.ph.i8 ] ; 3 uses
  %i.ez = phi i64 [ %i.fj, %bb.z ], [ %i.eq, %.lr.ph.i8 ]
  %i.fa = phi i64 [ %.sink71.i, %bb.z ], [ %.promoted.i, %.lr.ph.i8 ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !193, !noundef !5
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
  %..i.i10 = tail call noundef i64 @llvm.umax.i64(i64 %i.ey, i64 %.fr60.i) ; 2 uses
  %i.fi = icmp ult i64 %..i.i10, %i.dq
  br i1 %i.fi, label %.lr.ph306, label %.preheader36.i.preheader

bb.z:                                             ; preds = %bb.ad, %bb.ac, %bb.x
  %.sink71.i = phi i64 [ %i.gh, %bb.ad ], [ %i.gg, %bb.ac ], [ %i.fh, %bb.x ] ; 3 uses
  %.sink70.i = phi i64 [ 0, %bb.ad ], [ %i.ex, %bb.ac ], [ 0, %bb.x ] ; 2 uses
  store i64 %.sink71.i, ptr %i.dr, align 8, !alias.scope !192
  store i64 %.sink70.i, ptr %i.dg, align 8, !alias.scope !192
  %i.fj = add i64 %.sink71.i, %i.ds               ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.dm
  br i1 %i.fk, label %.lr.ph.split.i, label %._crit_edge.i

bb.aa:                                            ; preds = %.lr.ph306
  %i.fl = add nuw nsw i64 %.sroa.04.0.i305, 1     ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.dq
  br i1 %i.fm, label %.lr.ph306, label %.preheader36.i.preheader

.preheader36.i.preheader:                         ; preds = %bb.aa, %bb.y
  %i.fn = icmp ult i64 %i.ey, %.fr60.i
  br i1 %i.fn, label %.lr.ph308, label %.split.us.i11

.lr.ph306:                                        ; preds = %bb.y, %bb.aa
  %.sroa.04.0.i305 = phi i64 [ %i.fl, %bb.aa ], [ %..i.i10, %bb.y ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.i305
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !194, !noundef !5
  %i.fq = add i64 %.sroa.04.0.i305, %i.fa         ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.dm
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fq
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !193, !noundef !5
  %.not21.i = icmp eq i8 %i.fp, %i.ft
  br i1 %.not21.i, label %bb.aa, label %bb.ad

.preheader36.i:                                   ; preds = %bb.ab
  %i.fu = icmp ult i64 %i.ey, %i.fy
  br i1 %i.fu, label %.lr.ph308, label %.split.us.i11

.split.us.i11:                                    ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.fv = add i64 %i.fa, %i.dq                    ; 2 uses
  store i64 %i.fv, ptr %i.dr, align 8, !alias.scope !192
  store i64 0, ptr %i.dg, align 8, !alias.scope !192
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fa, ptr %i.fw, align 8, !alias.scope !195
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fv, ptr %i.fx, align 8, !alias.scope !195
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit

.lr.ph308:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i307 = phi i64 [ %i.fy, %.preheader36.i ], [ %.fr60.i, %.preheader36.i.preheader ]
  %i.fy = add i64 %.sroa.2.0.i307, -1             ; 6 uses
  %i.fz = icmp ult i64 %i.fy, %i.dq
  br i1 %i.fz, label %bb.ab, label %.split32.us.i

bb.ab:                                            ; preds = %.lr.ph308
  %i.ga = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fy
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !194, !noundef !5
  %i.gc = add i64 %i.fy, %i.fa                    ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.dm
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gc
  %i.gf = load i8, ptr %i.ge, align 1, !alias.scope !193, !noundef !5
  %.not20.i = icmp eq i8 %i.gb, %i.gf
  br i1 %.not20.i, label %.preheader36.i, label %bb.ac

.split32.us.i:                                    ; preds = %.lr.ph308
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.fy, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !196
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.gg = add i64 %i.fa, %i.ew
  br label %bb.z

bb.ad:                                            ; preds = %.lr.ph306
  %.reass.reass = add i64 %i.fa, %invariant.op
  %i.gh = add i64 %.reass.reass, %.sroa.04.0.i305
  br label %bb.z

bb.ae:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %.promoted.i12 = load i64, ptr %i.dr, align 8, !alias.scope !198 ; 2 uses
  %i.gi = add i64 %.promoted.i12, %i.ds           ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.dm
  br i1 %i.gj, label %.lr.ph.i15, label %._crit_edge.i13

.lr.ph.i15:                                       ; preds = %bb.ae
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !198, !noundef !5
  %i.gm = load i64, ptr %i.df, align 8, !alias.scope !198
  %.fr215 = freeze i64 %i.gm                      ; 7 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !198
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
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !199, !noundef !5
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
  br i1 %.first_iter.i16, label %.preheader.i19.us.preheader, label %.preheader.split.i21

.preheader.i19.us.preheader:                      ; preds = %.preheader.i19.preheader
  br i1 %.not34.i.us313, label %.split.us.i21, label %.lr.ph315

.preheader.i19.us:                                ; preds = %.lr.ph315
  %.not34.i.us = icmp eq i64 %i.gz, 0
  br i1 %.not34.i.us, label %.split.us.i21, label %.lr.ph315

.lr.ph315:                                        ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us
  %.sroa.2.0.us.i.us314 = phi i64 [ %i.gz, %.preheader.i19.us ], [ %.fr215, %.preheader.i19.us.preheader ]
  %i.gz = add i64 %.sroa.2.0.us.i.us314, -1       ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !200, !noundef !5
  %i.hc = add i64 %i.gz, %i.gr                    ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.dm
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hc
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !199, !noundef !5
  %.not20.us.i.us = icmp eq i8 %i.hb, %i.hf
  br i1 %.not20.us.i.us, label %.preheader.i19.us, label %.split.us

.split.us:                                        ; preds = %.lr.ph315
  %i.hg = add i64 %i.gr, %i.go
  br label %bb.ah

.preheader.split.i21:                             ; preds = %.preheader.i19.preheader
  br i1 %.not34.i.us313, label %.split.us.i21, label %.split32.us.i22

.lr.ph312:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.04.0.us.i311 = phi i64 [ %i.gy, %.preheader35.i ], [ %.fr215, %.preheader35.i.preheader ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.04.0.us.i311
  %i.hi = load i8, ptr %i.hh, align 1, !alias.scope !200, !noundef !5
  %i.hj = add i64 %.sroa.04.0.us.i311, %i.gr      ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %i.dm
  tail call void @llvm.assume(i1 %i.hk)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hj
  %i.hm = load i8, ptr %i.hl, align 1, !alias.scope !199, !noundef !5
  %.not21.us.i = icmp eq i8 %i.hi, %i.hm
  br i1 %.not21.us.i, label %.preheader35.i, label %bb.af

bb.af:                                            ; preds = %.lr.ph312
  %.reass282.reass = add i64 %i.gr, %invariant.op359
  %i.hn = add i64 %.reass282.reass, %.sroa.04.0.us.i311
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i
  %i.ho = add i64 %i.gr, %i.dq
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.split.us
  %.sink.i18 = phi i64 [ %i.ho, %bb.ag ], [ %i.hn, %bb.af ], [ %i.hg, %.split.us ] ; 3 uses
  store i64 %.sink.i18, ptr %i.dr, align 8, !alias.scope !198
  %i.hp = add i64 %.sink.i18, %i.ds               ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.dm
  br i1 %i.hq, label %.lr.ph.split.us.i, label %._crit_edge.i13

._crit_edge.i13:                                  ; preds = %bb.ah, %bb.ae
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !198
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit

.split.us.i21:                                    ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us, %.preheader.split.i21
  %i.hr = add i64 %i.gr, %i.dq                    ; 2 uses
  store i64 %i.hr, ptr %i.dr, align 8, !alias.scope !198
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gr, ptr %i.hs, align 8, !alias.scope !201
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hr, ptr %i.ht, align 8, !alias.scope !201
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli.exit

.split32.us.i22:                                  ; preds = %.preheader.split.i21
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.gp, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !202
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs2JuP67VRGmV_8textwrap4wrap16wrap_single_line(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CoweEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs3tZ2SXJA1qv_8jiff_cli(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

attributes #0 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { cold }
attributes #20 = { inlinehint }
attributes #21 = { cold noreturn nounwind }
attributes #22 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!5 = !{}
!6 = !{i8 0, i8 2}
!7 = !{i64 0, i64 3}
!8 = !{i64 0, i64 2}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, i1 true, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs3tZ2SXJA1qv_8jiff_cli"}
!11 = distinct !{!11, !10, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!12 = distinct !{!12, !10, !"_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!13 = distinct !{!13, i1 true, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs3tZ2SXJA1qv_8jiff_cli"}
!14 = distinct !{!14, !13, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!15 = distinct !{!15, !13, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!16 = distinct !{!16, i1 true, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs3tZ2SXJA1qv_8jiff_cli"}
!17 = distinct !{!17, !16, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!18 = distinct !{!18, !16, !"_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!19 = distinct !{!19, i1 true, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!20 = distinct !{!20, !19, !"_RNvXs3_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!21 = distinct !{!21, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3tZ2SXJA1qv_8jiff_cli"}
!22 = distinct !{!22, !21, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!23 = distinct !{!23, i1 true, !"_RNvXsp_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs3tZ2SXJA1qv_8jiff_cli"}
!24 = distinct !{!24, !23, !"_RNvXsp_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!25 = distinct !{!25, !23, !"_RNvXsp_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!26 = distinct !{!26, i1 true, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs3tZ2SXJA1qv_8jiff_cli"}
!27 = distinct !{!27, !26, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!28 = distinct !{!28, !26, !"_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher16next_reject_backCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!29 = distinct !{!29, i1 true, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs3tZ2SXJA1qv_8jiff_cli"}
!30 = distinct !{!30, !29, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!31 = distinct !{!31, !29, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_15ReverseSearcher9next_backCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!32 = distinct !{!32, i1 true, !"_RNvXs4_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!33 = distinct !{!33, !32, !"_RNvXs4_NtNtCs3oUPovFnLWP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!34 = distinct !{!34, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs3tZ2SXJA1qv_8jiff_cli"}
!35 = distinct !{!35, !34, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!36 = !{!22, !20, !18, !17, !15, !14, !12, !11}
!37 = !{!18, !17, !15, !14, !12, !11}
!38 = !{!35, !33, !31, !30, !28, !27, !25, !24}
!39 = !{!31, !30, !28, !27, !25, !24}
!40 = distinct !{!40, i1 true, !"_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtCs2JuP67VRGmV_8textwrap7options7OptionsINtB5_4IntoBz_E4intoCs3tZ2SXJA1qv_8jiff_cli"}
!41 = distinct !{!41, !40, !"_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtCs2JuP67VRGmV_8textwrap7options7OptionsINtB5_4IntoBz_E4intoCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!42 = distinct !{!42, !40, !"_RNvXs1_NtCs3oUPovFnLWP_4core7convertRNtNtCs2JuP67VRGmV_8textwrap7options7OptionsINtB5_4IntoBz_E4intoCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!43 = distinct !{!43, i1 true, !"_RNvXNtCs2JuP67VRGmV_8textwrap7optionsNtB2_7OptionsINtNtCs3oUPovFnLWP_4core7convert4FromRBz_E4from"}
!44 = distinct !{!44, !43, !"_RNvXNtCs2JuP67VRGmV_8textwrap7optionsNtB2_7OptionsINtNtCs3oUPovFnLWP_4core7convert4FromRBz_E4from: argument 0"}
!45 = distinct !{!45, !43, !"_RNvXNtCs2JuP67VRGmV_8textwrap7optionsNtB2_7OptionsINtNtCs3oUPovFnLWP_4core7convert4FromRBz_E4from: argument 1"}
!46 = distinct !{!46, i1 true, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE4nextCs3tZ2SXJA1qv_8jiff_cli"}
!47 = distinct !{!47, !46, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE4nextCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!48 = distinct !{!48, i1 true, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE7get_endCs3tZ2SXJA1qv_8jiff_cli"}
!49 = distinct !{!49, !48, !"_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalReE7get_endCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!50 = !{!41}
!51 = !{!42}
!52 = !{!44}
!53 = !{!45}
!54 = !{!45, !42}
!55 = !{!44, !41}
!56 = !{!47}
!57 = !{!49, !47}
!58 = distinct !{!58, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli"}
!59 = distinct !{!59, !58, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!60 = distinct !{!60, !58, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!61 = distinct !{!61, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli"}
!62 = distinct !{!62, !61, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!63 = distinct !{!63, !61, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!64 = distinct !{!64, i1 true, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli"}
!65 = distinct !{!65, !64, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!66 = distinct !{!66, !64, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!67 = distinct !{!67, i1 true, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp"}
!68 = distinct !{!68, !67, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 1"}
!69 = distinct !{!69, !67, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 0"}
!70 = distinct !{!70, i1 true, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!71 = distinct !{!71, !70, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!72 = distinct !{!72, !70, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!73 = distinct !{!73, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli"}
!74 = distinct !{!74, !73, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!75 = distinct !{!75, !73, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!76 = distinct !{!76, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli"}
!77 = distinct !{!77, !76, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!78 = distinct !{!78, !76, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!79 = distinct !{!79, i1 true, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli"}
!80 = distinct !{!80, !79, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!81 = distinct !{!81, !79, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!82 = distinct !{!82, i1 true, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp"}
!83 = distinct !{!83, !82, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 1"}
!84 = distinct !{!84, !82, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 0"}
!85 = distinct !{!85, i1 true, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!86 = distinct !{!86, !85, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!87 = distinct !{!87, !85, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!88 = distinct !{!88, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli"}
!89 = distinct !{!89, !88, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!90 = distinct !{!90, !88, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!91 = distinct !{!91, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli"}
!92 = distinct !{!92, !91, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!93 = distinct !{!93, !91, !"_RINvMNtCs3oUPovFnLWP_4core3stre10split_onceReECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!94 = distinct !{!94, i1 true, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli"}
!95 = distinct !{!95, !94, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!96 = distinct !{!96, !94, !"_RNvYeNtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltCs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!97 = distinct !{!97, i1 true, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp"}
!98 = distinct !{!98, !97, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 1"}
!99 = distinct !{!99, !97, !"_RNvXs1_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB9_3cmp10PartialOrd11partial_cmp: argument 0"}
!100 = distinct !{!100, i1 true, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp"}
!101 = distinct !{!101, !100, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 1"}
!102 = distinct !{!102, !100, !"_RNvXNtNtCs3oUPovFnLWP_4core3str6traitseNtNtB6_3cmp3Ord3cmp: argument 0"}
!103 = !{!60, !59}
!104 = !{!60}
!105 = !{!63, !62}
!106 = !{!63}
!107 = !{!72, !71, !69, !68, !66, !65}
!108 = !{!75, !74}
!109 = !{!75}
!110 = !{!78, !77}
!111 = !{!78}
!112 = !{!87, !86, !84, !83, !81, !80}
!113 = !{!90, !89}
!114 = !{!90}
!115 = !{!93, !92}
!116 = !{!93}
!117 = !{!102, !101, !99, !98, !96, !95}
!118 = distinct !{!118, !9}
!119 = distinct !{!119, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCs1xwejQucwHj_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3tZ2SXJA1qv_8jiff_cli"}
!120 = distinct !{!120, !119, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvMs_NtCs1xwejQucwHj_5alloc5sliceSh18to_ascii_lowercase0NCINvNvBS_8for_each4callhNCINvMsk_NtB2o_3vecINtB3J_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!121 = distinct !{!121, i1 true, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRhhuNCNvMs_NtCs1xwejQucwHj_5alloc5sliceSh18to_ascii_lowercase0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsk_NtB17_3vecINtB2X_3VechE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0E0Cs3tZ2SXJA1qv_8jiff_cli"}
!122 = distinct !{!122, !121, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRhhuNCNvMs_NtCs1xwejQucwHj_5alloc5sliceSh18to_ascii_lowercase0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsk_NtB17_3vecINtB2X_3VechE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0E0Cs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!123 = distinct !{!123, i1 true, !"_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterhENCNvMs_NtB1r_5sliceSh18to_ascii_lowercase0EE0E0Cs3tZ2SXJA1qv_8jiff_cli"}
!124 = distinct !{!124, !123, !"_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterhENCNvMs_NtB1r_5sliceSh18to_ascii_lowercase0EE0E0Cs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!125 = distinct !{!125, i1 true, !"_RNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterhENCNvMs_NtBa_5sliceSh18to_ascii_lowercase0EE0Cs3tZ2SXJA1qv_8jiff_cli"}
!126 = distinct !{!126, !125, !"_RNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterhENCNvMs_NtBa_5sliceSh18to_ascii_lowercase0EE0Cs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!127 = distinct !{!127, !132, !133}
!128 = distinct !{!128, !132, !133}
!129 = distinct !{!129, !132}
!130 = !{!120}
!131 = !{!126, !124, !122, !120}
!132 = !{!"llvm.loop.isvectorized", i32 1}
!133 = !{!"llvm.loop.unroll.runtime.disable"}
!134 = !{!"branch_weights", i32 8, i32 24}
!135 = distinct !{!135, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3tZ2SXJA1qv_8jiff_cli"}
!136 = distinct !{!136, !135, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!137 = distinct !{!137, i1 true, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsk_NtB14_3vecINtB2L_3VechE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0E0Cs3tZ2SXJA1qv_8jiff_cli"}
!138 = distinct !{!138, !137, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRhhuNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callhNCINvMsk_NtB14_3vecINtB2L_3VechE14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter4IterhEBY_EE0E0E0Cs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!139 = distinct !{!139, i1 true, !"_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterhENCNvNtB1r_3str13replace_ascii0EE0E0Cs3tZ2SXJA1qv_8jiff_cli"}
!140 = distinct !{!140, !139, !"_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB1p_3VechE14extend_trustedINtNtNtBc_8adapters3map3MapINtNtNtBe_5slice4iter4IterhENCNvNtB1r_3str13replace_ascii0EE0E0Cs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!141 = distinct !{!141, i1 true, !"_RNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterhENCNvNtBa_3str13replace_ascii0EE0Cs3tZ2SXJA1qv_8jiff_cli"}
!142 = distinct !{!142, !141, !"_RNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB8_3VechE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterhENCNvNtBa_3str13replace_ascii0EE0Cs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!143 = !{!136}
!144 = !{!138, !136}
!145 = !{!142, !140, !138, !136}
!146 = distinct !{!146, !9}
!147 = distinct !{!147, !9}
!148 = distinct !{!148, !9}
!149 = distinct !{!149, !9}
!150 = distinct !{!150, !9}
!151 = distinct !{!151, !9}
!152 = distinct !{!152, !9}
!153 = distinct !{!153, !9}
!154 = distinct !{!154, !9}
!155 = distinct !{!155, !9}
!156 = distinct !{!156, !9}
!157 = distinct !{!157, !9}
!158 = distinct !{!158, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!159 = distinct !{!159, !158, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!160 = distinct !{!160, i1 true, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!161 = distinct !{!161, !160, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!162 = distinct !{!162, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!163 = distinct !{!163, !162, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!164 = distinct !{!164, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3tZ2SXJA1qv_8jiff_cli"}
!165 = distinct !{!165, !164, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!166 = distinct !{!166, !162, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!167 = distinct !{!167, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr"}
!168 = distinct !{!168, !167, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr: argument 0"}
!169 = distinct !{!169, i1 true, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli"}
!170 = distinct !{!170, !169, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!171 = distinct !{!171, !169, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!172 = distinct !{!172, !169, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 2"}
!173 = distinct !{!173, !169, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 3"}
!174 = distinct !{!174, i1 true, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!175 = distinct !{!175, !174, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!176 = distinct !{!176, i1 true, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli"}
!177 = distinct !{!177, !176, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 0"}
!178 = distinct !{!178, !176, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 1"}
!179 = distinct !{!179, !176, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 2"}
!180 = distinct !{!180, !176, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs3tZ2SXJA1qv_8jiff_cli: argument 3"}
!181 = distinct !{!181, i1 true, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!182 = distinct !{!182, !181, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!183 = !{!159}
!184 = !{!161}
!185 = !{!163, !159}
!186 = !{!165, !163, !159}
!187 = !{!166}
!188 = !{!163, !166}
!189 = !{!165, !163, !166}
!190 = !{!168}
!191 = !{!170}
!192 = !{!171}
!193 = !{!172}
!194 = !{!173}
!195 = !{!175, !170}
!196 = !{!170, !171, !172, !173}
!197 = !{!177}
!198 = !{!178}
!199 = !{!179}
!200 = !{!180}
!201 = !{!182, !177}
!202 = !{!177, !178, !179, !180}
end_hunk_0
