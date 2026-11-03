Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.07?download=true
inline.NumInlined: 1670
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 46
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bq = add nuw nsw i64 %i.bg, 2
  %i.br = icmp samesign ne i64 %i.bq, %i.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bt = add nuw nsw i64 %i.bg, 3
  %i.bu = icmp samesign ne i64 %i.bt, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3108)
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %.not.i.i.us, label %bb.l, label %.split.i.i.us

.split.i.i.us:                                    ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %.split.us161

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bj, align 1, !alias.scope !3105, !noalias !3109, !noundef !10
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.m, label %.split.us161

bb.m:                                             ; preds = %bb.l, %.split.i.i.us, %_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %i.bl, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bk, align 1, !noalias !3110, !noundef !10 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.o, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us: ; preds = %bb.n
  %i.bz = and i8 %i.bx, 31
  %i.ca = zext nneg i8 %i.bz to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bo)
  %i.cb = load i8, ptr %i.bm, align 1, !noalias !3110, !noundef !10
  %i.cc = shl nuw nsw i32 %i.ca, 6
  %i.cd = and i8 %i.cb, 63
  %i.ce = zext nneg i8 %i.cd to i32               ; 2 uses
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.cg, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us, label %.loopexit42.split.us.loopexit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us
  tail call void @llvm.assume(i1 %i.br)
  %i.ch = load i8, ptr %i.bp, align 1, !noalias !3110, !noundef !10
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck            ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ca, 12
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = icmp samesign ugt i8 %i.bx, -17
  br i1 %i.co, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.us, label %.loopexit42.split.us.loopexit

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.us: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us
  tail call void @llvm.assume(i1 %i.bu)
  %i.cp = load i8, ptr %i.bs, align 1, !noalias !3110, !noundef !10
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

.loopexit42.split.us.loopexit:                    ; preds = %bb.o, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.us, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us
  %.sroa.4.0.i.ph.i.us = phi i32 [ %i.cn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit14.i.i.us ], [ %i.cw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit16.i.i.us ], [ %i.cf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit12.i.i.us ], [ %i.cx, %bb.o ]
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us, 1114112
  tail call void @llvm.assume(i1 %i.cy)
  br label %.loopexit42.split.us

.split.us161:                                     ; preds = %bb.l, %.split.i.i.us, %bb.c, %.split.i.i.us.peel
  %.lcssa323 = phi i64 [ %.promoted157, %.split.i.i.us.peel ], [ %.promoted157, %bb.c ], [ %i.bg, %.split.i.i.us ], [ %i.bg, %bb.l ]
  %.lcssa320 = phi i8 [ %.promoted206, %.split.i.i.us.peel ], [ %.promoted206, %bb.c ], [ 1, %.split.i.i.us ], [ 1, %bb.l ]
  %i.cz = xor i8 %.lcssa320, 1
  store i8 %i.cz, ptr %i.f, align 8, !alias.scope !3108
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %.lcssa323, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2123) #30, !noalias !3109
  unreachable

.split166.us:                                     ; preds = %bb.d
  %i.da = xor i8 %.promoted206, 1
  store i8 %i.da, ptr %i.f, align 8, !alias.scope !3108
  br i1 %i.k, label %bb.s, label %bb.p

.loopexit42.split.us:                             ; preds = %.loopexit42.split.us.loopexit, %bb.g
  %.lcssa325 = phi i64 [ %.promoted157, %bb.g ], [ %i.bg, %.loopexit42.split.us.loopexit ]
  store i8 0, ptr %i.f, align 8, !alias.scope !3108
  br label %bb.s

default.unreachable261:                           ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %.split166.us
  store i8 1, ptr %i.c, align 2, !alias.scope !3108
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish.exit

bb.q:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dc = load i64, ptr %i.db, align 8, !noundef !10 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !noundef !10 ; 4 uses
  %.not = icmp ult i64 %i.de, %i.dc
  br i1 %.not, label %bb.t, label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish.exit

bb.r:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !10 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !10, !noundef !10 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !10 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !10 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.ds = add nsw i64 %i.dq, -1                   ; 4 uses
  br i1 %i.di, label %bb.ae, label %bb.w

.critedge:                                        ; preds = %bb.m
  store i8 0, ptr %i.f, align 8, !alias.scope !3108
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %.loopexit42.split.us, %.split166.us
  %i.dt = phi i64 [ %.lcssa325, %.loopexit42.split.us ], [ %i.j, %.split166.us ], [ %i.j, %.critedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dt, ptr %i.dv, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish.exit

_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish.exit: ; preds = %bb.s, %bb.p, %.preheader, %.split.us.i21, %._crit_edge.i13, %.split.us.i11, %._crit_edge.i, %.loopexit43, %.loopexit44, %bb.q
  %storemerge.i.sink = phi i64 [ 1, %.loopexit43 ], [ 1, %.split.us.i11 ], [ 0, %bb.q ], [ 1, %.split.us.i21 ], [ 0, %.loopexit44 ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i13 ], [ 1, %bb.s ], [ 0, %bb.p ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.t:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !10, !noundef !10
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load i8, ptr %i.dy, align 8, !noundef !10 ; 2 uses
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
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !3111, !noundef !10
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
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish.exit

.loopexit44:                                      ; preds = %bb.v, %bb.u
  store i64 %i.dc, ptr %i.dd, align 8
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish.exit

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3115)
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !3113 ; 2 uses
  %i.eq = add i64 %.promoted.i, %i.ds             ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dm
  br i1 %i.er, label %.lr.ph.i8, label %._crit_edge.i

.lr.ph.i8:                                        ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !3113, !noundef !10
  %i.eu = load i64, ptr %i.df, align 8, !alias.scope !3113
  %.fr60.i = freeze i64 %i.eu                     ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !3113 ; 2 uses
  %i.ex = sub i64 %i.dq, %i.ew
  %invariant.op = sub i64 1, %.fr60.i
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.w
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !3113
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish.exit

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.i8
  %i.ey = phi i64 [ %.sink70.i, %bb.z ], [ %i.dh, %.lr.ph.i8 ] ; 3 uses
  %i.ez = phi i64 [ %i.fj, %bb.z ], [ %i.eq, %.lr.ph.i8 ]
  %i.fa = phi i64 [ %.sink71.i, %bb.z ], [ %.promoted.i, %.lr.ph.i8 ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !3114, !noundef !10
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
  store i64 %.sink71.i, ptr %i.dr, align 8, !alias.scope !3113
  store i64 %.sink70.i, ptr %i.dg, align 8, !alias.scope !3113
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
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !3115, !noundef !10
  %i.fq = add i64 %.sroa.04.0.i305, %i.fa         ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.dm
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fq
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !3114, !noundef !10
  %.not21.i = icmp eq i8 %i.fp, %i.ft
  br i1 %.not21.i, label %bb.aa, label %bb.ad

.preheader36.i:                                   ; preds = %bb.ab
  %i.fu = icmp ult i64 %i.ey, %i.fy
  br i1 %i.fu, label %.lr.ph308, label %.split.us.i11

.split.us.i11:                                    ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.fv = add i64 %i.fa, %i.dq                    ; 2 uses
  store i64 %i.fv, ptr %i.dr, align 8, !alias.scope !3113
  store i64 0, ptr %i.dg, align 8, !alias.scope !3113
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fa, ptr %i.fw, align 8, !alias.scope !3116
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fv, ptr %i.fx, align 8, !alias.scope !3116
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish.exit

.lr.ph308:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i307 = phi i64 [ %i.fy, %.preheader36.i ], [ %.fr60.i, %.preheader36.i.preheader ]
  %i.fy = add i64 %.sroa.2.0.i307, -1             ; 6 uses
  %i.fz = icmp ult i64 %i.fy, %i.dq
  br i1 %i.fz, label %bb.ab, label %.split32.us.i

bb.ab:                                            ; preds = %.lr.ph308
  %i.ga = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fy
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !3115, !noundef !10
  %i.gc = add i64 %i.fy, %i.fa                    ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.dm
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gc
  %i.gf = load i8, ptr %i.ge, align 1, !alias.scope !3114, !noundef !10
  %.not20.i = icmp eq i8 %i.gb, %i.gf
  br i1 %.not20.i, label %.preheader36.i, label %bb.ac

.split32.us.i:                                    ; preds = %.lr.ph308
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.fy, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !3117
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.gg = add i64 %i.fa, %i.ew
  br label %bb.z

bb.ad:                                            ; preds = %.lr.ph306
  %.reass.reass = add i64 %i.fa, %invariant.op
  %i.gh = add i64 %.reass.reass, %.sroa.04.0.i305
  br label %bb.z

bb.ae:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3121)
  %.promoted.i12 = load i64, ptr %i.dr, align 8, !alias.scope !3119 ; 2 uses
  %i.gi = add i64 %.promoted.i12, %i.ds           ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.dm
  br i1 %i.gj, label %.lr.ph.i15, label %._crit_edge.i13

.lr.ph.i15:                                       ; preds = %bb.ae
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !3119, !noundef !10
  %i.gm = load i64, ptr %i.df, align 8, !alias.scope !3119
  %.fr215 = freeze i64 %i.gm                      ; 7 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !3119
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
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !3120, !noundef !10
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
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !3121, !noundef !10
  %i.hc = add i64 %i.gz, %i.gr                    ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.dm
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hc
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !3120, !noundef !10
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
  %i.hi = load i8, ptr %i.hh, align 1, !alias.scope !3121, !noundef !10
  %i.hj = add i64 %.sroa.04.0.us.i311, %i.gr      ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %i.dm
  tail call void @llvm.assume(i1 %i.hk)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hj
  %i.hm = load i8, ptr %i.hl, align 1, !alias.scope !3120, !noundef !10
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
  store i64 %.sink.i18, ptr %i.dr, align 8, !alias.scope !3119
  %i.hp = add i64 %.sink.i18, %i.ds               ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.dm
  br i1 %i.hq, label %.lr.ph.split.us.i, label %._crit_edge.i13

._crit_edge.i13:                                  ; preds = %bb.ah, %bb.ae
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !3119
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish.exit

.split.us.i21:                                    ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us, %.preheader.split.i21
  %i.hr = add i64 %i.gr, %i.dq                    ; 2 uses
  store i64 %i.hr, ptr %i.dr, align 8, !alias.scope !3119
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gr, ptr %i.hs, align 8, !alias.scope !3122
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hr, ptr %i.ht, align 8, !alias.scope !3122
  br label %_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish.exit

.split32.us.i22:                                  ; preds = %.preheader.split.i21
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.gp, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !3123
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtCslLGyqsphxMB_10widestring5errorNtB5_16DecodeUtf32ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2125, i64 noundef 16, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2126, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2124)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsy_NvNtCs8frGy5WneL6_4fish6expand1__NtB7_11ExpandFlagsNtNtCs3oUPovFnLWP_4core3fmt6Binary3fmt(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = load i16, ptr %0, align 2, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3127
  store i16 %i.b, ptr %i.a, align 2, !noalias !3127
  %i.c = call noundef zeroext i1 @_RNvXsi_NtNtCs3oUPovFnLWP_4core3fmt3numtNtB7_6Binary3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !3128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3127
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsz_NvNtCs8frGy5WneL6_4fish6expand1__NtB7_11ExpandFlagsNtNtCs3oUPovFnLWP_4core3fmt5Octal3fmt(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = load i16, ptr %0, align 2, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3132
  store i16 %i.b, ptr %i.a, align 2, !noalias !3132
  %i.c = call noundef zeroext i1 @_RNvXsk_NtNtCs3oUPovFnLWP_4core3fmt3numtNtB7_5Octal3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !3133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3132
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs8frGy5WneL6_4fish6expand11ExpandFlagsNtNtCslEmbWASCaJL_8bitflags6traits5Flags10intersectsB6_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, i16 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.val1 = load i16, ptr %0, align 2, !noundef !10
  %i.a = and i16 %.val1, %1
  %i.b = icmp ne i16 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCs8frGy5WneL6_4fish6expand11ExpandFlagsNtNtCslEmbWASCaJL_8bitflags6traits5Flags10iter_namesB6_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMs1_NtCslEmbWASCaJL_8bitflags4iterINtB5_9IterNamesNtNtCs8frGy5WneL6_4fish6expand11ExpandFlagsE3newBT_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i16 @_RNvYNtNtCs8frGy5WneL6_4fish6expand11ExpandFlagsNtNtCslEmbWASCaJL_8bitflags6traits5Flags5emptyB6_() unnamed_addr #4 {
bb.a:
  ret i16 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYNtNtCs8frGy5WneL6_4fish6expand11ExpandFlagsNtNtCslEmbWASCaJL_8bitflags6traits5Flags6insertB6_(ptr noalias nofree noundef align 2 captures(none) dereferenceable(2) %0, i16 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i16, ptr %0, align 2, !noundef !10
  %i.a = or i16 %.val, %1
  store i16 %i.a, ptr %0, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvYNtNtCs8frGy5WneL6_4fish6expand11ExpandFlagsNtNtCslEmbWASCaJL_8bitflags6traits5Flags6removeB6_(ptr noalias nofree noundef align 2 captures(none) dereferenceable(2) %0, i16 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i16, ptr %0, align 2, !noundef !10
  %i.a = xor i16 %1, -1
  %i.b = and i16 %.val, %i.a
  store i16 %i.b, ptr %0, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs8frGy5WneL6_4fish6expand11ExpandFlagsNtNtCslEmbWASCaJL_8bitflags6traits5Flags8containsB6_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, i16 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.val2 = load i16, ptr %0, align 2, !noundef !10
  %i.a = and i16 %.val2, %1
  %i.b = icmp eq i16 %i.a, %1
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs8frGy5WneL6_4fish6expand11ExpandFlagsNtNtCslEmbWASCaJL_8bitflags6traits5Flags8is_emptyB6_(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0) unnamed_addr #6 {
bb.a:
  %.val = load i16, ptr %0, align 2, !noundef !10
  %i.a = icmp eq i16 %.val, 0
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i16, i16 } @_RNvYNtNtCs8frGy5WneL6_4fish6expand11ExpandFlagsNtNtCslEmbWASCaJL_8bitflags6traits5Flags9from_nameB6_(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #9 {
bb.a:
  switch i64 %1, label %.loopexit [
    i64 13, label %bb.o
    i64 16, label %bb.b
    i64 14, label %bb.c
    i64 15, label %bb.e
    i64 20, label %bb.h
    i64 11, label %bb.i
    i64 28, label %bb.j
    i64 29, label %bb.l
    i64 19, label %bb.m
    i64 27, label %bb.n
  ]

.loopexit:                                        ; preds = %bb.a, %bb.g, %bb.k, %bb.i, %bb.h, %bb.e, %bb.j, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.sroa.4.0 = phi i16 [ %.val, %bb.p ], [ undef, %bb.g ], [ undef, %bb.a ], [ undef, %bb.o ], [ undef, %bb.n ], [ undef, %bb.m ], [ undef, %bb.l ], [ undef, %bb.j ], [ undef, %bb.e ], [ undef, %bb.h ], [ undef, %bb.i ], [ undef, %bb.k ]
  %.sroa.0.0 = phi i16 [ 1, %bb.p ], [ 0, %bb.g ], [ 0, %bb.a ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %bb.k ]
  %i.a = insertvalue { i16, i16 } poison, i16 %.sroa.0.0, 0
  %i.b = insertvalue { i16, i16 } %i.a, i16 %.sroa.4.0, 1
  ret { i16, i16 } %i.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i128, ptr %0, align 1
  %i.d = icmp ne i128 112087457684388806375728483370460070214, %i.c
  %i.e = zext i1 %i.d to i32
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.p, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 1
  %i.h = xor i64 5927113551965145939, %i.g
  %i.i = getelementptr i8, ptr %0, i64 6
  %i.j = load i64, ptr %i.i, align 1
  %i.k = xor i64 6000285925987930689, %i.j
  %i.l = or i64 %i.h, %i.k
  %i.m = icmp ne i64 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %0, align 1
  %i.q = xor i64 5497020887062891347, %i.p
  %i.r = getelementptr i8, ptr %0, i64 6
  %i.s = load i64, ptr %i.r, align 1
  %i.t = xor i64 6000011043819244617, %i.s
  %i.u = or i64 %i.q, %i.t
  %i.v = icmp ne i64 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.p, label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.y = load i64, ptr %0, align 1
  %i.z = xor i64 5786368247021588294, %i.y
  %i.aa = getelementptr i8, ptr %0, i64 7
  %i.ab = load i64, ptr %i.aa, align 1
  %i.ac = xor i64 6002822529696484432, %i.ab
  %i.ad = or i64 %i.z, %i.ac
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.p, label %.loopexit

bb.f:                                             ; preds = %bb.b
  %i.ah = load i128, ptr %0, align 1
  %i.ai = icmp ne i128 118697494502581827071452737024511268933, %i.ah
  %i.aj = zext i1 %i.ai to i32
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.p, label %.preheader.5

.preheader.5:                                     ; preds = %bb.f
  %i.al = load i128, ptr %0, align 1
  %i.am = icmp ne i128 118697494502581827017269366880388401476, %i.al
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.p, label %bb.g

bb.g:                                             ; preds = %.preheader.5
  %i.ap = load i128, ptr %0, align 1
  %i.aq = icmp ne i128 110732530925222087170101217897216886087, %i.ap
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.p, label %.loopexit

bb.h:                                             ; preds = %bb.a
  %i.at = load i128, ptr %0, align 1
  %i.au = xor i128 97471728947997537299520896943314522704, %i.at
  %i.av = getelementptr i8, ptr %0, i64 16
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = zext i32 %i.aw to i128
  %i.ay = xor i128 1397048396, %i.ax
  %i.az = or i128 %i.au, %i.ay
  %i.ba = icmp ne i128 %i.az, 0
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.p, label %.loopexit

bb.i:                                             ; preds = %bb.a
  %i.bd = load i64, ptr %0, align 1
  %i.be = xor i64 4705522023044633926, %i.bd
  %i.bf = getelementptr i8, ptr %0, i64 3
  %i.bg = load i64, ptr %i.bf, align 1
end_hunk_0
begin_hunk_1_@llvm.smin.i32
!2922 = distinct !{!2922, !2920, !"_RNvMNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB2_5DrainNtNtNtCs8frGy5WneL6_4fish5input5input9CharEventE9as_slicesB1d_: argument 0"}
!2923 = !{!2921}
!2924 = !{!2922, !2921}
!2925 = distinct !{!2925, i1 true, !"_RNvXsa_NvNtCs8frGy5WneL6_4fish6expand1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt"}
!2926 = distinct !{!2926, !2925, !"_RNvXsa_NvNtCs8frGy5WneL6_4fish6expand1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt: argument 1"}
!2927 = distinct !{!2927, !2925, !"_RNvXsa_NvNtCs8frGy5WneL6_4fish6expand1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt: argument 0"}
!2928 = !{!2927, !2926}
!2929 = !{!2927}
!2930 = distinct !{!2930, i1 true, !"_RNvXsi_NvNtCs8frGy5WneL6_4fish6expand1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt8LowerHex3fmt"}
!2931 = distinct !{!2931, !2930, !"_RNvXsi_NvNtCs8frGy5WneL6_4fish6expand1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt8LowerHex3fmt: argument 1"}
!2932 = distinct !{!2932, !2930, !"_RNvXsi_NvNtCs8frGy5WneL6_4fish6expand1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt8LowerHex3fmt: argument 0"}
!2933 = !{!2932, !2931}
!2934 = !{!2932}
!2935 = distinct !{!2935, i1 true, !"_RNvXsj_NvNtCs8frGy5WneL6_4fish6expand1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt8UpperHex3fmt"}
!2936 = distinct !{!2936, !2935, !"_RNvXsj_NvNtCs8frGy5WneL6_4fish6expand1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt8UpperHex3fmt: argument 1"}
!2937 = distinct !{!2937, !2935, !"_RNvXsj_NvNtCs8frGy5WneL6_4fish6expand1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt8UpperHex3fmt: argument 0"}
!2938 = !{!2937, !2936}
!2939 = !{!2937}
!2940 = distinct !{!2940, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs8frGy5WneL6_4fish"}
!2941 = distinct !{!2941, !2940, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs8frGy5WneL6_4fish: argument 1"}
!2942 = distinct !{!2942, !2940, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs8frGy5WneL6_4fish: argument 0"}
!2943 = distinct !{!2943, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish"}
!2944 = distinct !{!2944, !2943, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish: argument 0"}
!2945 = !{!2942, !2941}
!2946 = !{!2944}
!2947 = distinct !{!2947, i1 true, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push"}
!2948 = distinct !{!2948, !2947, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push: argument 0"}
!2949 = !{!2948}
!2950 = distinct !{!2950, i1 true, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str"}
!2951 = distinct !{!2951, !2950, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str: argument 1"}
!2952 = distinct !{!2952, !2950, !"_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str: argument 0"}
!2953 = distinct !{!2953, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8frGy5WneL6_4fish"}
!2954 = distinct !{!2954, !2953, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!2955 = !{!2951}
!2956 = !{!2954, !2952}
!2957 = distinct !{!2957, i1 true, !"_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implyNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_"}
!2958 = distinct !{!2958, !2957, !"_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implyNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_: argument 0"}
!2959 = distinct !{!2959, !2957, !"_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implyNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_: argument 2"}
!2960 = distinct !{!2960, !2957, !"_RINvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11wcstoi_implyNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EB6_: argument 1"}
!2961 = !{!2958}
!2962 = !{!2958, !2960, !2959}
!2963 = distinct !{!2963, i1 true, !"_RNvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3nthCs8frGy5WneL6_4fish"}
!2964 = distinct !{!2964, !2963, !"_RNvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator3nthCs8frGy5WneL6_4fish: argument 0"}
!2965 = distinct !{!2965, i1 true, !"_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next"}
!2966 = distinct !{!2966, !2965, !"_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next: argument 0"}
!2967 = !{!2964}
!2968 = !{!2966}
!2969 = !{!2966, !2964}
!2970 = distinct !{!2970, i1 true, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2e_4TrimNtB2g_16StringSubCommand6handles_00ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3J_5count0EB2k_"}
!2971 = distinct !{!2971, !2970, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2e_4TrimNtB2g_16StringSubCommand6handles_00ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3J_5count0EB2k_: argument 0"}
!2972 = distinct !{!2972, i1 true, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2e_4TrimNtB2g_16StringSubCommand6handles_00ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB4x_17NeverShortCircuitjE10wrap_mut_2jcNCNvYBV_B3J_5count0E0B4S_EB2k_"}
!2973 = distinct !{!2973, !2972, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB2e_4TrimNtB2g_16StringSubCommand6handles_00ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvMNtNtBc_3ops9try_traitINtB4x_17NeverShortCircuitjE10wrap_mut_2jcNCNvYBV_B3J_5count0E0B4S_EB2k_: argument 0"}
!2974 = distinct !{!2974, i1 true, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtB13_8adapters10take_whileINtB2d_9TakeWhileppEBX_8try_fold5checkcjINtNtNtB15_3ops9try_trait17NeverShortCircuitjENCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB4d_4TrimNtB4f_16StringSubCommand6handles_00NCINvMB3n_B3k_10wrap_mut_2jcNCNvYIB2H_B3_B44_EBX_5count0E0E0INtNtB3p_12control_flow11ControlFlowB3k_jEEB4j_"}
!2975 = distinct !{!2975, !2974, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtB13_8adapters10take_whileINtB2d_9TakeWhileppEBX_8try_fold5checkcjINtNtNtB15_3ops9try_trait17NeverShortCircuitjENCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB4d_4TrimNtB4f_16StringSubCommand6handles_00NCINvMB3n_B3k_10wrap_mut_2jcNCNvYIB2H_B3_B44_EBX_5count0E0E0INtNtB3p_12control_flow11ControlFlowB3k_jEEB4j_: argument 2"}
!2976 = distinct !{!2976, !2974, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtB13_8adapters10take_whileINtB2d_9TakeWhileppEBX_8try_fold5checkcjINtNtNtB15_3ops9try_trait17NeverShortCircuitjENCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB4d_4TrimNtB4f_16StringSubCommand6handles_00NCINvMB3n_B3k_10wrap_mut_2jcNCNvYIB2H_B3_B44_EBX_5count0E0E0INtNtB3p_12control_flow11ControlFlowB3k_jEEB4j_: argument 1"}
!2977 = distinct !{!2977, !2974, !"_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldjNCINvNvXs0_NtNtB13_8adapters10take_whileINtB2d_9TakeWhileppEBX_8try_fold5checkcjINtNtNtB15_3ops9try_trait17NeverShortCircuitjENCNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB4d_4TrimNtB4f_16StringSubCommand6handles_00NCINvMB3n_B3k_10wrap_mut_2jcNCNvYIB2H_B3_B44_EBX_5count0E0E0INtNtB3p_12control_flow11ControlFlowB3k_jEEB4j_: argument 0"}
!2978 = distinct !{!2978, i1 true, !"_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next"}
!2979 = distinct !{!2979, !2978, !"_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next: argument 0"}
!2980 = distinct !{!2980, i1 true, !"_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains"}
!2981 = distinct !{!2981, !2980, !"_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains: argument 0"}
!2982 = distinct !{!2982, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs8frGy5WneL6_4fish"}
!2983 = distinct !{!2983, !2982, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs8frGy5WneL6_4fish: argument 1"}
!2984 = distinct !{!2984, !2982, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs8frGy5WneL6_4fish: argument 0"}
!2985 = distinct !{!2985, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish"}
!2986 = distinct !{!2986, !2985, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish: argument 0"}
!2987 = distinct !{!2987, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish"}
!2988 = distinct !{!2988, !2987, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish: argument 0"}
!2989 = distinct !{!2989, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish"}
!2990 = distinct !{!2990, !2989, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish: argument 0"}
!2991 = !{!2979, !2977, !2976, !2975, !2973, !2971}
!2992 = !{!2981}
!2993 = !{!2984, !2983, !2977, !2976, !2975, !2973, !2971}
!2994 = !{!2986, !2977, !2976, !2975, !2973, !2971}
!2995 = !{!2988}
!2996 = !{!2990}
!2997 = distinct !{!2997, i1 true, !"_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish"}
!2998 = distinct !{!2998, !2997, !"_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish: argument 1"}
!2999 = distinct !{!2999, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3000 = distinct !{!3000, !2999, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3001 = distinct !{!3001, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3002 = distinct !{!3002, !3001, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3003 = distinct !{!3003, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3004 = distinct !{!3004, !3003, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3005 = distinct !{!3005, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3006 = distinct !{!3006, !3005, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3007 = distinct !{!3007, i1 true, !"_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish"}
!3008 = distinct !{!3008, !3007, !"_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish: argument 1:h.rot"}
!3009 = distinct !{!3009, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3010 = distinct !{!3010, !3009, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3011 = distinct !{!3011, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3012 = distinct !{!3012, !3011, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3013 = distinct !{!3013, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish"}
!3014 = distinct !{!3014, !3013, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3015 = distinct !{!3015, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish"}
!3016 = distinct !{!3016, !3015, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish: argument 0"}
!3017 = distinct !{!3017, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterE4peek0ECs8frGy5WneL6_4fish"}
!3018 = distinct !{!3018, !3017, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_RNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB21_8PeekableNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterE4peek0ECs8frGy5WneL6_4fish: argument 0"}
!3019 = distinct !{!3019, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish"}
!3020 = distinct !{!3020, !3019, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish: argument 0"}
!3021 = distinct !{!3021, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish"}
!3022 = distinct !{!3022, !3021, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3023 = distinct !{!3023, !3021, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish: argument 1"}
!3024 = distinct !{!3024, i1 true, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterENtNtNtB8_6traits8iterator8Iterator4lastCs8frGy5WneL6_4fish"}
!3025 = distinct !{!3025, !3024, !"_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableNtCskr4qsHYS30i_15fish_widestring17WStrCharSplitIterENtNtNtB8_6traits8iterator8Iterator4lastCs8frGy5WneL6_4fish: argument 0"}
!3026 = distinct !{!3026, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrRNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3027 = distinct !{!3027, !3026, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrRNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3028 = distinct !{!3028, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3029 = distinct !{!3029, !3028, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3030 = distinct !{!3030, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish"}
!3031 = distinct !{!3031, !3030, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3032 = distinct !{!3032, !3030, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8push_mutCs8frGy5WneL6_4fish: argument 1"}
!3033 = distinct !{!3033, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish"}
!3034 = distinct !{!3034, !3033, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish: argument 0"}
!3035 = !{!2998}
!3036 = !{!3002, !3000}
!3037 = !{!3006, !3004}
!3038 = !{!3008}
!3039 = !{!3012, !3010}
!3040 = !{!3014}
!3041 = !{!3016}
!3042 = !{!3018}
!3043 = !{!3020}
!3044 = !{!3022}
!3045 = !{!3023}
!3046 = !{!3025}
!3047 = !{!3029, !3027}
!3048 = !{!3031}
!3049 = !{!3032}
!3050 = !{!3034}
!3051 = distinct !{!3051, i1 true, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string7shorten7ShortenNtB6_16StringSubCommand16parse_arg_numberBa_"}
!3052 = distinct !{!3052, !3051, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string7shorten7ShortenNtB6_16StringSubCommand16parse_arg_numberBa_: argument 1"}
!3053 = distinct !{!3053, !3051, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string7shorten7ShortenNtB6_16StringSubCommand16parse_arg_numberBa_: argument 0"}
!3054 = distinct !{!3054, i1 true, !"_RNCNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string7shorten7ShortenNtB8_16StringSubCommand16parse_arg_number0Bc_"}
!3055 = distinct !{!3055, !3054, !"_RNCNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string7shorten7ShortenNtB8_16StringSubCommand16parse_arg_number0Bc_: argument 1"}
!3056 = distinct !{!3056, !3054, !"_RNCNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string7shorten7ShortenNtB8_16StringSubCommand16parse_arg_number0Bc_: argument 0"}
!3057 = distinct !{!3057, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish"}
!3058 = distinct !{!3058, !3057, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!3059 = distinct !{!3059, !3057, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 1"}
!3060 = distinct !{!3060, i1 true, !"_RNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string7shortenNtB6_7ShortenNtB8_16StringSubCommand9parse_opt0Bc_"}
!3061 = distinct !{!3061, !3060, !"_RNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string7shortenNtB6_7ShortenNtB8_16StringSubCommand9parse_opt0Bc_: argument 1"}
!3062 = distinct !{!3062, !3060, !"_RNCNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string7shortenNtB6_7ShortenNtB8_16StringSubCommand9parse_opt0Bc_: argument 0"}
!3063 = distinct !{!3063, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish"}
!3064 = distinct !{!3064, !3063, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!3065 = distinct !{!3065, !3063, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 1"}
!3066 = !{!3053, !3052}
!3067 = !{!3053}
!3068 = !{!3056, !3055, !3053, !3052}
!3069 = !{!3056, !3055, !3053}
!3070 = !{!3056, !3053}
!3071 = !{!3058}
!3072 = !{!3058, !3059, !3056, !3055, !3053, !3052}
!3073 = !{!3055, !3053, !3052}
!3074 = !{!3062, !3061}
!3075 = !{!3062}
!3076 = !{!3064}
!3077 = !{!3064, !3065, !3062, !3061}
!3078 = !{!3061}
!3079 = distinct !{!3079, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!3080 = distinct !{!3080, !3079, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!3081 = distinct !{!3081, i1 true, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!3082 = distinct !{!3082, !3081, !"_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!3083 = distinct !{!3083, i1 true, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!3084 = distinct !{!3084, !3083, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!3085 = distinct !{!3085, i1 true, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs8frGy5WneL6_4fish"}
!3086 = distinct !{!3086, !3085, !"_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs8frGy5WneL6_4fish: argument 0"}
!3087 = distinct !{!3087, !3083, !"_RNvXsv_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!3088 = distinct !{!3088, i1 true, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr"}
!3089 = distinct !{!3089, !3088, !"_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr6memchr: argument 0"}
!3090 = distinct !{!3090, i1 true, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish"}
!3091 = distinct !{!3091, !3090, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish: argument 0"}
!3092 = distinct !{!3092, !3090, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish: argument 1"}
!3093 = distinct !{!3093, !3090, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish: argument 2"}
!3094 = distinct !{!3094, !3090, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish: argument 3"}
!3095 = distinct !{!3095, i1 true, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!3096 = distinct !{!3096, !3095, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!3097 = distinct !{!3097, i1 true, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish"}
!3098 = distinct !{!3098, !3097, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish: argument 0"}
!3099 = distinct !{!3099, !3097, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish: argument 1"}
!3100 = distinct !{!3100, !3097, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish: argument 2"}
!3101 = distinct !{!3101, !3097, !"_RINvMsx_NtNtCs3oUPovFnLWP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs8frGy5WneL6_4fish: argument 3"}
!3102 = distinct !{!3102, i1 true, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!3103 = distinct !{!3103, !3102, !"_RNvXsy_NtNtCs3oUPovFnLWP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!3104 = !{!3080}
!3105 = !{!3082}
!3106 = !{!3084, !3080}
!3107 = !{!3086, !3084, !3080}
!3108 = !{!3087}
!3109 = !{!3084, !3087}
!3110 = !{!3086, !3084, !3087}
!3111 = !{!3089}
!3112 = !{!3091}
!3113 = !{!3092}
!3114 = !{!3093}
!3115 = !{!3094}
!3116 = !{!3096, !3091}
!3117 = !{!3091, !3092, !3093, !3094}
!3118 = !{!3098}
!3119 = !{!3099}
!3120 = !{!3100}
!3121 = !{!3101}
!3122 = !{!3103, !3098}
!3123 = !{!3098, !3099, !3100, !3101}
!3124 = distinct !{!3124, i1 true, !"_RNvXsg_NvNtCs8frGy5WneL6_4fish6expand1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt6Binary3fmt"}
!3125 = distinct !{!3125, !3124, !"_RNvXsg_NvNtCs8frGy5WneL6_4fish6expand1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt6Binary3fmt: argument 1"}
!3126 = distinct !{!3126, !3124, !"_RNvXsg_NvNtCs8frGy5WneL6_4fish6expand1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt6Binary3fmt: argument 0"}
!3127 = !{!3126, !3125}
!3128 = !{!3126}
!3129 = distinct !{!3129, i1 true, !"_RNvXsh_NvNtCs8frGy5WneL6_4fish6expand1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt5Octal3fmt"}
!3130 = distinct !{!3130, !3129, !"_RNvXsh_NvNtCs8frGy5WneL6_4fish6expand1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt5Octal3fmt: argument 1"}
!3131 = distinct !{!3131, !3129, !"_RNvXsh_NvNtCs8frGy5WneL6_4fish6expand1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt5Octal3fmt: argument 0"}
!3132 = !{!3131, !3130}
!3133 = !{!3131}
!3134 = distinct !{!3134, i1 true, !"_RNCNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string3sub3SubNtB8_16StringSubCommand16parse_arg_number0Bc_"}
!3135 = distinct !{!3135, !3134, !"_RNCNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string3sub3SubNtB8_16StringSubCommand16parse_arg_number0Bc_: argument 1"}
!3136 = distinct !{!3136, !3134, !"_RNCNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string3sub3SubNtB8_16StringSubCommand16parse_arg_number0Bc_: argument 0"}
!3137 = distinct !{!3137, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish"}
!3138 = distinct !{!3138, !3137, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!3139 = distinct !{!3139, !3137, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 1"}
!3140 = !{!3136, !3135}
!3141 = !{!3136}
!3142 = !{!3138}
!3143 = !{!3138, !3139, !3136, !3135}
!3144 = !{!3135}
!3145 = distinct !{!3145, i1 true, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string3sub3SubNtB6_16StringSubCommand8run_implBa_"}
!3146 = distinct !{!3146, !3145, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string3sub3SubNtB6_16StringSubCommand8run_implBa_: argument 2"}
!3147 = distinct !{!3147, !3145, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string3sub3SubNtB6_16StringSubCommand8run_implBa_: argument 3"}
!3148 = distinct !{!3148, !3145, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string3sub3SubNtB6_16StringSubCommand8run_implBa_: argument 1"}
!3149 = distinct !{!3149, !3145, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string3sub3SubNtB6_16StringSubCommand8run_implBa_: argument 0"}
!3150 = distinct !{!3150, i1 true, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string3sub3SubNtB6_16StringSubCommand10parse_optsBa_"}
!3151 = distinct !{!3151, !3150, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string3sub3SubNtB6_16StringSubCommand10parse_optsBa_: argument 2"}
!3152 = distinct !{!3152, !3150, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string3sub3SubNtB6_16StringSubCommand10parse_optsBa_: argument 4"}
!3153 = distinct !{!3153, !3150, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string3sub3SubNtB6_16StringSubCommand10parse_optsBa_: argument 3"}
!3154 = distinct !{!3154, !3150, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string3sub3SubNtB6_16StringSubCommand10parse_optsBa_: argument 1"}
!3155 = distinct !{!3155, !3150, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string3sub3SubNtB6_16StringSubCommand10parse_optsBa_: argument 0"}
!3156 = distinct !{!3156, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE15append_elementsCs8frGy5WneL6_4fish"}
!3157 = distinct !{!3157, !3156, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3158 = distinct !{!3158, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish"}
!3159 = distinct !{!3159, !3158, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!3160 = distinct !{!3160, !3158, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 1"}
!3161 = distinct !{!3161, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish"}
!3162 = distinct !{!3162, !3161, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!3163 = distinct !{!3163, !3161, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 1"}
!3164 = distinct !{!3164, i1 true, !"_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6subcmd"}
!3165 = distinct !{!3165, !3164, !"_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6subcmd: argument 1"}
!3166 = distinct !{!3166, !3164, !"_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6subcmd: argument 0"}
!3167 = distinct !{!3167, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!3168 = distinct !{!3168, !3167, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!3169 = distinct !{!3169, !3167, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!3170 = distinct !{!3170, !3167, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!3171 = distinct !{!3171, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3172 = distinct !{!3172, !3171, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3173 = distinct !{!3173, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3174 = distinct !{!3174, !3173, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3175 = distinct !{!3175, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!3176 = distinct !{!3176, !3175, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!3177 = distinct !{!3177, !3175, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!3178 = distinct !{!3178, !3175, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!3179 = distinct !{!3179, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3180 = distinct !{!3180, !3179, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3181 = distinct !{!3181, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3182 = distinct !{!3182, !3181, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3183 = !{!3146}
!3184 = !{!3147}
!3185 = !{!3149, !3148, !3146}
!3186 = !{!3149, !3148, !3146, !3147}
!3187 = !{!3151}
!3188 = !{!3151, !3147}
!3189 = !{!3155, !3154, !3151, !3153, !3152, !3149, !3148, !3146, !3147}
!3190 = !{!3155, !3154, !3153, !3152, !3149, !3148, !3146}
!3191 = !{!3155, !3154, !3149}
!3192 = !{!3157}
!3193 = !{!3155, !3153, !3152, !3148, !3146}
!3194 = !{!3159}
!3195 = !{!3159, !3160, !3155, !3154, !3151, !3153, !3152, !3149, !3148, !3146, !3147}
!3196 = !{!3162}
!3197 = !{!3162, !3163, !3155, !3154, !3151, !3153, !3152, !3149, !3148, !3146, !3147}
!3198 = !{!3155, !3154, !3153, !3149, !3148}
!3199 = !{!3155, !3154, !3149, !3148, !3146}
!3200 = !{!3166, !3165}
!3201 = !{!3149, !3148}
!3202 = !{!3149}
!3203 = !{!3168}
!3204 = !{!3168, !3169, !3149, !3148, !3146}
!3205 = !{!3174, !3172, !3170}
!3206 = !{!3168, !3149, !3148, !3146}
!3207 = !{!3168, !3170}
!3208 = !{!3176}
!3209 = !{!3176, !3177, !3149, !3148, !3146}
!3210 = !{!3182, !3180, !3178}
!3211 = !{!3176, !3149, !3148, !3146}
!3212 = !{!3176, !3178}
!3213 = distinct !{!3213, i1 true, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string4trim4TrimNtB6_16StringSubCommand8run_implBa_"}
!3214 = distinct !{!3214, !3213, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string4trim4TrimNtB6_16StringSubCommand8run_implBa_: argument 0"}
!3215 = distinct !{!3215, !3213, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string4trim4TrimNtB6_16StringSubCommand8run_implBa_: argument 2"}
!3216 = distinct !{!3216, !3213, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string4trim4TrimNtB6_16StringSubCommand8run_implBa_: argument 3"}
!3217 = distinct !{!3217, !3213, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string4trim4TrimNtB6_16StringSubCommand8run_implBa_: argument 1"}
!3218 = distinct !{!3218, i1 true, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string4trim4TrimNtB6_16StringSubCommand10parse_optsBa_"}
!3219 = distinct !{!3219, !3218, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string4trim4TrimNtB6_16StringSubCommand10parse_optsBa_: argument 1"}
!3220 = distinct !{!3220, !3218, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string4trim4TrimNtB6_16StringSubCommand10parse_optsBa_: argument 2"}
!3221 = distinct !{!3221, !3218, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string4trim4TrimNtB6_16StringSubCommand10parse_optsBa_: argument 4"}
!3222 = distinct !{!3222, !3218, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string4trim4TrimNtB6_16StringSubCommand10parse_optsBa_: argument 3"}
!3223 = distinct !{!3223, !3218, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string4trim4TrimNtB6_16StringSubCommand10parse_optsBa_: argument 0"}
!3224 = distinct !{!3224, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE15append_elementsCs8frGy5WneL6_4fish"}
!3225 = distinct !{!3225, !3224, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3226 = distinct !{!3226, i1 true, !"_RNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB4_4TrimNtB6_16StringSubCommand9parse_opt"}
!3227 = distinct !{!3227, !3226, !"_RNvXs_NtNtNtCs8frGy5WneL6_4fish8builtins6string4trimNtB4_4TrimNtB6_16StringSubCommand9parse_opt: argument 1"}
!3228 = distinct !{!3228, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish"}
!3229 = distinct !{!3229, !3228, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!3230 = distinct !{!3230, !3228, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 1"}
!3231 = distinct !{!3231, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish"}
!3232 = distinct !{!3232, !3231, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!3233 = distinct !{!3233, !3231, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 1"}
!3234 = distinct !{!3234, i1 true, !"_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6subcmd"}
!3235 = distinct !{!3235, !3234, !"_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6subcmd: argument 1"}
!3236 = distinct !{!3236, !3234, !"_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6subcmd: argument 0"}
!3237 = distinct !{!3237, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!3238 = distinct !{!3238, !3237, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!3239 = distinct !{!3239, !3237, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!3240 = distinct !{!3240, !3237, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!3241 = distinct !{!3241, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3242 = distinct !{!3242, !3241, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3243 = distinct !{!3243, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3244 = distinct !{!3244, !3243, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3245 = distinct !{!3245, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!3246 = distinct !{!3246, !3245, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!3247 = distinct !{!3247, !3245, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!3248 = distinct !{!3248, !3245, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!3249 = distinct !{!3249, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3250 = distinct !{!3250, !3249, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3251 = distinct !{!3251, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3252 = distinct !{!3252, !3251, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3253 = !{!3214}
!3254 = !{!3215}
!3255 = !{!3216}
!3256 = !{!3214, !3217, !3215}
!3257 = !{!3214, !3217, !3215, !3216}
!3258 = !{!3219}
!3259 = !{!3220}
!3260 = !{!3220, !3216}
!3261 = !{!3223, !3219, !3220, !3222, !3221, !3214, !3217, !3215, !3216}
!3262 = !{!3223, !3219, !3222, !3221, !3214, !3217, !3215}
!3263 = !{!3223, !3219, !3214}
!3264 = !{!3225}
!3265 = !{!3227, !3219, !3214}
!3266 = !{!3229}
!3267 = !{!3229, !3230, !3223, !3219, !3220, !3222, !3221, !3214, !3217, !3215, !3216}
!3268 = !{!3232}
!3269 = !{!3232, !3233, !3223, !3219, !3220, !3222, !3221, !3214, !3217, !3215, !3216}
!3270 = !{!3223, !3219, !3222, !3214, !3217}
!3271 = !{!3223, !3219, !3214, !3217, !3215}
!3272 = !{!3236, !3235}
!3273 = !{!3214, !3217}
!3274 = !{!3238}
!3275 = !{!3238, !3239, !3214, !3217, !3215}
!3276 = !{!3244, !3242, !3240}
!3277 = !{!3238, !3214, !3217, !3215}
!3278 = !{!3238, !3240}
!3279 = !{!3246}
!3280 = !{!3246, !3247, !3214, !3217, !3215}
!3281 = !{!3252, !3250, !3248}
!3282 = !{!3246, !3214, !3217, !3215}
!3283 = !{!3246, !3248}
!3284 = distinct !{!3284, i1 true, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string7shorten7ShortenNtB6_16StringSubCommand8run_implBa_"}
!3285 = distinct !{!3285, !3284, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string7shorten7ShortenNtB6_16StringSubCommand8run_implBa_: argument 2"}
!3286 = distinct !{!3286, !3284, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string7shorten7ShortenNtB6_16StringSubCommand8run_implBa_: argument 3"}
!3287 = distinct !{!3287, !3284, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string7shorten7ShortenNtB6_16StringSubCommand8run_implBa_: argument 1"}
!3288 = distinct !{!3288, !3284, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string7shorten7ShortenNtB6_16StringSubCommand8run_implBa_: argument 0"}
!3289 = distinct !{!3289, i1 true, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string7shorten7ShortenNtB6_16StringSubCommand10parse_optsBa_"}
!3290 = distinct !{!3290, !3289, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string7shorten7ShortenNtB6_16StringSubCommand10parse_optsBa_: argument 2"}
!3291 = distinct !{!3291, !3289, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string7shorten7ShortenNtB6_16StringSubCommand10parse_optsBa_: argument 4"}
!3292 = distinct !{!3292, !3289, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string7shorten7ShortenNtB6_16StringSubCommand10parse_optsBa_: argument 3"}
!3293 = distinct !{!3293, !3289, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string7shorten7ShortenNtB6_16StringSubCommand10parse_optsBa_: argument 1"}
!3294 = distinct !{!3294, !3289, !"_RNvYNtNtNtNtCs8frGy5WneL6_4fish8builtins6string7shorten7ShortenNtB6_16StringSubCommand10parse_optsBa_: argument 0"}
!3295 = distinct !{!3295, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE15append_elementsCs8frGy5WneL6_4fish"}
!3296 = distinct !{!3296, !3295, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3297 = distinct !{!3297, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish"}
!3298 = distinct !{!3298, !3297, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!3299 = distinct !{!3299, !3297, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 1"}
!3300 = distinct !{!3300, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish"}
!3301 = distinct !{!3301, !3300, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!3302 = distinct !{!3302, !3300, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 1"}
!3303 = distinct !{!3303, i1 true, !"_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6subcmd"}
!3304 = distinct !{!3304, !3303, !"_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6subcmd: argument 1"}
!3305 = distinct !{!3305, !3303, !"_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6subcmd: argument 0"}
!3306 = distinct !{!3306, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!3307 = distinct !{!3307, !3306, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!3308 = distinct !{!3308, !3306, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!3309 = distinct !{!3309, !3306, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!3310 = distinct !{!3310, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3311 = distinct !{!3311, !3310, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3312 = distinct !{!3312, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3313 = distinct !{!3313, !3312, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3314 = distinct !{!3314, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!3315 = distinct !{!3315, !3314, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!3316 = distinct !{!3316, !3314, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!3317 = distinct !{!3317, !3314, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!3318 = distinct !{!3318, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3319 = distinct !{!3319, !3318, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3320 = distinct !{!3320, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3321 = distinct !{!3321, !3320, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3322 = !{!3285}
!3323 = !{!3286}
end_hunk_1
