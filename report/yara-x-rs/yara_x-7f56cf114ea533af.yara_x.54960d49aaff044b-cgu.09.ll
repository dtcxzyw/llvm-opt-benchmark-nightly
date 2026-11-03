Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.09?download=true
inline.NumInlined: 4282
inline.NumDeleted: 1610
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bq = add nuw nsw i64 %i.bg, 2
  %i.br = icmp samesign ne i64 %i.bq, %i.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bt = add nuw nsw i64 %i.bg, 3
  %i.bu = icmp samesign ne i64 %i.bt, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10330)
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %.not.i.i.us, label %bb.l, label %.split.i.i.us

.split.i.i.us:                                    ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %.split.us161

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bj, align 1, !alias.scope !10327, !noalias !10331, !noundef !4
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.m, label %.split.us161

bb.m:                                             ; preds = %bb.l, %.split.i.i.us, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %i.bl, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bk, align 1, !noalias !10332, !noundef !4 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.o, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit12.i.i.us

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit12.i.i.us: ; preds = %bb.n
  %i.bz = and i8 %i.bx, 31
  %i.ca = zext nneg i8 %i.bz to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bo)
  %i.cb = load i8, ptr %i.bm, align 1, !noalias !10332, !noundef !4
  %i.cc = shl nuw nsw i32 %i.ca, 6
  %i.cd = and i8 %i.cb, 63
  %i.ce = zext nneg i8 %i.cd to i32               ; 2 uses
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.cg, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit14.i.i.us, label %.loopexit42.split.us.loopexit

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit14.i.i.us: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit12.i.i.us
  tail call void @llvm.assume(i1 %i.br)
  %i.ch = load i8, ptr %i.bp, align 1, !noalias !10332, !noundef !4
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck            ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ca, 12
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = icmp samesign ugt i8 %i.bx, -17
  br i1 %i.co, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit16.i.i.us, label %.loopexit42.split.us.loopexit

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit16.i.i.us: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit14.i.i.us
  tail call void @llvm.assume(i1 %i.bu)
  %i.cp = load i8, ptr %i.bs, align 1, !noalias !10332, !noundef !4
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

.loopexit42.split.us.loopexit:                    ; preds = %bb.o, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit16.i.i.us, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit14.i.i.us, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit12.i.i.us
  %.sroa.4.0.i.ph.i.us = phi i32 [ %i.cn, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit14.i.i.us ], [ %i.cw, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit16.i.i.us ], [ %i.cf, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7gfv9tzbXmh_6yara_x.exit12.i.i.us ], [ %i.cx, %bb.o ]
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us, 1114112
  tail call void @llvm.assume(i1 %i.cy)
  br label %.loopexit42.split.us

.split.us161:                                     ; preds = %bb.l, %.split.i.i.us, %bb.c, %.split.i.i.us.peel
  %.lcssa323 = phi i64 [ %.promoted157, %.split.i.i.us.peel ], [ %.promoted157, %bb.c ], [ %i.bg, %.split.i.i.us ], [ %i.bg, %bb.l ]
  %.lcssa320 = phi i8 [ %.promoted206, %.split.i.i.us.peel ], [ %.promoted206, %bb.c ], [ 1, %.split.i.i.us ], [ 1, %bb.l ]
  %i.cz = xor i8 %.lcssa320, 1
  store i8 %i.cz, ptr %i.f, align 8, !alias.scope !10330
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %.lcssa323, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1946) #47, !noalias !10331
  unreachable

.split166.us:                                     ; preds = %bb.d
  %i.da = xor i8 %.promoted206, 1
  store i8 %i.da, ptr %i.f, align 8, !alias.scope !10330
  br i1 %i.k, label %bb.s, label %bb.p

.loopexit42.split.us:                             ; preds = %.loopexit42.split.us.loopexit, %bb.g
  %.lcssa325 = phi i64 [ %.promoted157, %bb.g ], [ %i.bg, %.loopexit42.split.us.loopexit ]
  store i8 0, ptr %i.f, align 8, !alias.scope !10330
  br label %bb.s

default.unreachable261:                           ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %.split166.us
  store i8 1, ptr %i.c, align 2, !alias.scope !10330
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x.exit

bb.q:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dc = load i64, ptr %i.db, align 8, !noundef !4 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !noundef !4 ; 4 uses
  %.not = icmp ult i64 %i.de, %i.dc
  br i1 %.not, label %bb.t, label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x.exit

bb.r:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !4 ; 2 uses
  %i.di = icmp eq i64 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !4 ; 10 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !4 ; 14 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 8 uses
  %i.ds = add nsw i64 %i.dq, -1                   ; 4 uses
  br i1 %i.di, label %bb.ae, label %bb.w

.critedge:                                        ; preds = %bb.m
  store i8 0, ptr %i.f, align 8, !alias.scope !10330
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %.loopexit42.split.us, %.split166.us
  %i.dt = phi i64 [ %.lcssa325, %.loopexit42.split.us ], [ %i.j, %.split166.us ], [ %i.j, %.critedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dt, ptr %i.dv, align 8
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x.exit

_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.s, %bb.p, %.preheader, %.split.us.i21, %._crit_edge.i13, %.split.us.i11, %._crit_edge.i, %.loopexit43, %.loopexit44, %bb.q
  %storemerge.i.sink = phi i64 [ 1, %.loopexit43 ], [ 1, %.split.us.i11 ], [ 0, %bb.q ], [ 1, %.split.us.i21 ], [ 0, %.loopexit44 ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i13 ], [ 1, %bb.s ], [ 0, %bb.p ], [ 0, %.preheader ]
  store i64 %storemerge.i.sink, ptr %0, align 8
  ret void

bb.t:                                             ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !4, !noundef !4
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dz = load i8, ptr %i.dy, align 8, !noundef !4 ; 2 uses
  %i.ea = sub nuw i64 %i.dc, %i.de                ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.de ; 2 uses
  %i.ec = icmp samesign ult i64 %i.ea, 16
  br i1 %i.ec, label %.lr.ph.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ed = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ea) ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0
  %i.ef = extractvalue { i64, i64 } %i.ed, 1
  %i.eg = trunc nuw i64 %i.ee to i1
  br i1 %i.eg, label %.loopexit43, label %.loopexit44

.lr.ph.i:                                         ; preds = %bb.t, %bb.v
  %.sroa.04.011.i = phi i64 [ %i.ek, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sroa.04.011.i
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !10333, !noundef !4
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
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x.exit

.loopexit44:                                      ; preds = %bb.v, %bb.u
  store i64 %i.dc, ptr %i.dd, align 8
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x.exit

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10337)
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !10335 ; 2 uses
  %i.eq = add i64 %.promoted.i, %i.ds             ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dm
  br i1 %i.er, label %.lr.ph.i8, label %._crit_edge.i

.lr.ph.i8:                                        ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !10335, !noundef !4
  %i.eu = load i64, ptr %i.df, align 8, !alias.scope !10335
  %.fr60.i = freeze i64 %i.eu                     ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !10335 ; 2 uses
  %i.ex = sub i64 %i.dq, %i.ew
  %invariant.op = sub i64 1, %.fr60.i
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.w
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !10335
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x.exit

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.i8
  %i.ey = phi i64 [ %.sink70.i, %bb.z ], [ %i.dh, %.lr.ph.i8 ] ; 3 uses
  %i.ez = phi i64 [ %i.fj, %bb.z ], [ %i.eq, %.lr.ph.i8 ]
  %i.fa = phi i64 [ %.sink71.i, %bb.z ], [ %.promoted.i, %.lr.ph.i8 ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !10336, !noundef !4
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
  store i64 %.sink71.i, ptr %i.dr, align 8, !alias.scope !10335
  store i64 %.sink70.i, ptr %i.dg, align 8, !alias.scope !10335
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
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !10337, !noundef !4
  %i.fq = add i64 %.sroa.04.0.i305, %i.fa         ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.dm
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fq
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !10336, !noundef !4
  %.not21.i = icmp eq i8 %i.fp, %i.ft
  br i1 %.not21.i, label %bb.aa, label %bb.ad

.preheader36.i:                                   ; preds = %bb.ab
  %i.fu = icmp ult i64 %i.ey, %i.fy
  br i1 %i.fu, label %.lr.ph308, label %.split.us.i11

.split.us.i11:                                    ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.fv = add i64 %i.fa, %i.dq                    ; 2 uses
  store i64 %i.fv, ptr %i.dr, align 8, !alias.scope !10335
  store i64 0, ptr %i.dg, align 8, !alias.scope !10335
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fa, ptr %i.fw, align 8, !alias.scope !10338
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fv, ptr %i.fx, align 8, !alias.scope !10338
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x.exit

.lr.ph308:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i307 = phi i64 [ %i.fy, %.preheader36.i ], [ %.fr60.i, %.preheader36.i.preheader ]
  %i.fy = add i64 %.sroa.2.0.i307, -1             ; 6 uses
  %i.fz = icmp ult i64 %i.fy, %i.dq
  br i1 %i.fz, label %bb.ab, label %.split32.us.i

bb.ab:                                            ; preds = %.lr.ph308
  %i.ga = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fy
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !10337, !noundef !4
  %i.gc = add i64 %i.fy, %i.fa                    ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.dm
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gc
  %i.gf = load i8, ptr %i.ge, align 1, !alias.scope !10336, !noundef !4
  %.not20.i = icmp eq i8 %i.gb, %i.gf
  br i1 %.not20.i, label %.preheader36.i, label %bb.ac

.split32.us.i:                                    ; preds = %.lr.ph308
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fy, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #47, !noalias !10339
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.gg = add i64 %i.fa, %i.ew
  br label %bb.z

bb.ad:                                            ; preds = %.lr.ph306
  %.reass.reass = add i64 %i.fa, %invariant.op
  %i.gh = add i64 %.reass.reass, %.sroa.04.0.i305
  br label %bb.z

bb.ae:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10341)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10343)
  %.promoted.i12 = load i64, ptr %i.dr, align 8, !alias.scope !10341 ; 2 uses
  %i.gi = add i64 %.promoted.i12, %i.ds           ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.dm
  br i1 %i.gj, label %.lr.ph.i15, label %._crit_edge.i13

.lr.ph.i15:                                       ; preds = %bb.ae
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !10341, !noundef !4
  %i.gm = load i64, ptr %i.df, align 8, !alias.scope !10341
  %.fr215 = freeze i64 %i.gm                      ; 7 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !10341
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
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !10342, !noundef !4
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
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !10343, !noundef !4
  %i.hc = add i64 %i.gz, %i.gr                    ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.dm
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hc
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !10342, !noundef !4
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
  %i.hi = load i8, ptr %i.hh, align 1, !alias.scope !10343, !noundef !4
  %i.hj = add i64 %.sroa.04.0.us.i311, %i.gr      ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %i.dm
  tail call void @llvm.assume(i1 %i.hk)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hj
  %i.hm = load i8, ptr %i.hl, align 1, !alias.scope !10342, !noundef !4
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
  store i64 %.sink.i18, ptr %i.dr, align 8, !alias.scope !10341
  %i.hp = add i64 %.sink.i18, %i.ds               ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.dm
  br i1 %i.hq, label %.lr.ph.split.us.i, label %._crit_edge.i13

._crit_edge.i13:                                  ; preds = %bb.ah, %bb.ae
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !10341
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x.exit

.split.us.i21:                                    ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us, %.preheader.split.i21
  %i.hr = add i64 %i.gr, %i.dq                    ; 2 uses
  store i64 %i.hr, ptr %i.dr, align 8, !alias.scope !10341
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gr, ptr %i.hs, align 8, !alias.scope !10344
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hr, ptr %i.ht, align 8, !alias.scope !10344
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x.exit

.split32.us.i22:                                  ; preds = %.preheader.split.i21
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gp, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #47, !noalias !10345
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtCs5lEgW3tfVqv_6walrus2ty7ValTypej4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs5lEgW3tfVqv_6walrus2ty7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5lEgW3tfVqv_6walrus2ty7ValTypeEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5lEgW3tfVqv_6walrus2ty7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs5lEgW3tfVqv_6walrus2ty7ValTypeEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCs5lEgW3tfVqv_6walrus2ty7ValTypeEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5lEgW3tfVqv_6walrus2ty7ValTypeEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs5lEgW3tfVqv_6walrus2ty7ValTypeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs5lEgW3tfVqv_6walrus2ty7ValTypeEECs7gfv9tzbXmh_6yara_x.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtCsbhAup8j5lif_16wasmtime_environ5types7ConstOpj2_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 16, !noundef !4 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 16, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types7ConstOpENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types7ConstOpEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbhAup8j5lif_16wasmtime_environ5types7ConstOpENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCsbhAup8j5lif_16wasmtime_environ5types7ConstOpEECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtCsbhAup8j5lif_16wasmtime_environ5types7ConstOpEECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types7ConstOpEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsbhAup8j5lif_16wasmtime_environ5types7ConstOpENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsbhAup8j5lif_16wasmtime_environ5types7ConstOpEECs7gfv9tzbXmh_6yara_x.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsy_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(424) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %i.d = icmp ugt i64 %i.c, 4
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeECs7gfv9tzbXmh_6yara_x.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeECs7gfv9tzbXmh_6yara_x.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeECs7gfv9tzbXmh_6yara_x.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.0.010.i ; 9 uses
  %i.g = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.i = load i8, ptr %i.h, align 8, !range !40, !alias.scope !10354, !noundef !4
  %i.j = icmp samesign ugt i8 %i.i, 1
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeECs7gfv9tzbXmh_6yara_x.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  %i.l = load i8, ptr %i.k, align 4, !range !27, !alias.scope !10355, !noundef !4 ; 3 uses
  %i.m = icmp ne i8 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nsw i8 %i.l, -3
  %i.o = icmp sgt i8 %i.l, 2
  %narrow.i.i.i.i = select i1 %i.o, i8 %i.n, i8 13
  switch i8 %narrow.i.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeECs7gfv9tzbXmh_6yara_x.exit.i [
    i8 3, label %.sink.split.i.i.i.i
    i8 9, label %.sink.split.i.i.i.i
    i8 11, label %.sink.split.i.i.i.i
    i8 13, label %bb.d
    i8 14, label %.sink.split.i.i.i.i
  ]

.sink.split.i.i.i.i:                              ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ExnTypeECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c
  %.sink.i.i.i.i = phi ptr [ %i.f, %bb.c ], [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ExnTypeECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i ], [ %i.f, %bb.c ], [ %i.f, %bb.c ], [ %i.f, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime13type_registry14RegisteredTypeECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(48) %.sink.i.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeECs7gfv9tzbXmh_6yara_x.exit.i unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime13type_registry14RegisteredTypeECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ExnTypeECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime13type_registry14RegisteredTypeECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(48) %i.q) #44
          to label %.body.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ExnTypeECs7gfv9tzbXmh_6yara_x.exit.i.i.i.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  br label %.sink.split.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeECs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %.sink.split.i.i.i.i, %bb.c, %.lr.ph.i
  %i.t = icmp eq i64 %i.g, %i.c
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeECs7gfv9tzbXmh_6yara_x.exit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph
  %i.u = add nuw nsw i64 %.sroa.0.1.i23, 1        ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.c
  br i1 %i.v, label %common.resume, label %.lr.ph

bb.h:                                             ; preds = %.sink.split.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.w, %bb.h ], [ %i.p, %bb.e ] ; 2 uses
  %i.x = icmp eq i64 %i.g, %i.c
  br i1 %i.x, label %common.resume, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i23 = phi i64 [ %i.u, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.0.1.i23
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef align 8 dereferenceable(104) %i.y) #44
          to label %bb.g unwind label %bb.i

common.resume:                                    ; preds = %bb.g, %.body.i, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.k ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %.lr.ph
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.j:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.or.v6i64
!10144 = !{!10143}
!10145 = distinct !{!10145, i1 true, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10146 = distinct !{!10146, !10145, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10147 = !{!10146}
!10148 = distinct !{!10148, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBM_6string13RuntimeStringNtNtBO_8compiler7RegexIdbENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10149 = distinct !{!10149, !10148, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBM_6string13RuntimeStringNtNtBO_8compiler7RegexIdbENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10150 = !{!10149}
!10151 = distinct !{!10151, i1 true, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10152 = distinct !{!10152, !10151, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10153 = !{!10152}
!10154 = distinct !{!10154, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBM_6string13RuntimeStringbbENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10155 = distinct !{!10155, !10154, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBM_6string13RuntimeStringbbENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10156 = !{!10155}
!10157 = distinct !{!10157, i1 true, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10158 = distinct !{!10158, !10157, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10159 = !{!10158}
!10160 = distinct !{!10160, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBM_6string13RuntimeStringdINtNtCskKLDkoKarTP_4core6option6OptiondEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10161 = distinct !{!10161, !10160, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBM_6string13RuntimeStringdINtNtCskKLDkoKarTP_4core6option6OptiondEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10162 = !{!10161}
!10163 = distinct !{!10163, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBM_6string13RuntimeStringdbENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10164 = distinct !{!10164, !10163, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBM_6string13RuntimeStringdbENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10165 = !{!10164}
!10166 = distinct !{!10166, i1 true, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10167 = distinct !{!10167, !10166, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10168 = !{!10167}
!10169 = distinct !{!10169, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBM_6string13RuntimeStringlbENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10170 = distinct !{!10170, !10169, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBM_6string13RuntimeStringlbENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10171 = !{!10170}
!10172 = distinct !{!10172, i1 true, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10173 = distinct !{!10173, !10172, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10174 = !{!10173}
!10175 = distinct !{!10175, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBM_6string13RuntimeStringxINtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10176 = distinct !{!10176, !10175, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBM_6string13RuntimeStringxINtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10177 = !{!10176}
!10178 = distinct !{!10178, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBM_6string13RuntimeStringxbENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10179 = distinct !{!10179, !10178, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBM_6string13RuntimeStringxbENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10180 = !{!10179}
!10181 = distinct !{!10181, i1 true, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10182 = distinct !{!10182, !10181, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10183 = !{!10182}
!10184 = distinct !{!10184, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBO_8compiler7RegexIdB1B_INtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10185 = distinct !{!10185, !10184, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBO_8compiler7RegexIdB1B_INtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10186 = !{!10185}
!10187 = distinct !{!10187, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBO_8compiler7RegexIdxxENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10188 = distinct !{!10188, !10187, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBO_8compiler7RegexIdxxENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10189 = !{!10188}
!10190 = distinct !{!10190, i1 true, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types"}
!10191 = distinct !{!10191, !10190, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types: argument 0"}
!10192 = !{!10191}
!10193 = distinct !{!10193, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBO_8compiler9PatternIdxINtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10194 = distinct !{!10194, !10193, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBO_8compiler9PatternIdxINtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10195 = !{!10194}
!10196 = distinct !{!10196, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBO_8compiler9PatternIdxbENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10197 = distinct !{!10197, !10196, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2NtNtBO_8compiler9PatternIdxbENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10198 = !{!10197}
!10199 = distinct !{!10199, i1 true, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10200 = distinct !{!10200, !10199, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10201 = !{!10200}
!10202 = distinct !{!10202, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2dddENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10203 = distinct !{!10203, !10202, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2dddENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10204 = !{!10203}
!10205 = distinct !{!10205, i1 true, !"_RNvXsi_NtCs7gfv9tzbXmh_6yara_x4wasmdNtB5_10WasmResult5types"}
!10206 = distinct !{!10206, !10205, !"_RNvXsi_NtCs7gfv9tzbXmh_6yara_x4wasmdNtB5_10WasmResult5types: argument 0"}
!10207 = !{!10206}
!10208 = distinct !{!10208, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xNtNtBM_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10209 = distinct !{!10209, !10208, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xNtNtBM_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10210 = !{!10209}
!10211 = distinct !{!10211, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xxINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_6string9LowercaseINtB2i_14FixedLenStringKj20_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10212 = distinct !{!10212, !10211, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xxINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_6string9LowercaseINtB2i_14FixedLenStringKj20_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10213 = !{!10212}
!10214 = distinct !{!10214, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xxINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_6string9LowercaseINtB2i_14FixedLenStringKj28_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10215 = distinct !{!10215, !10214, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xxINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_6string9LowercaseINtB2i_14FixedLenStringKj28_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10216 = !{!10215}
!10217 = distinct !{!10217, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xxINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_6string9LowercaseINtB2i_14FixedLenStringKj40_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10218 = distinct !{!10218, !10217, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xxINtNtCskKLDkoKarTP_4core6option6OptionINtNtBM_6string9LowercaseINtB2i_14FixedLenStringKj40_EEEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10219 = !{!10218}
!10220 = distinct !{!10220, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xxINtNtCskKLDkoKarTP_4core6option6OptionNtNtBM_6string13RuntimeStringEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10221 = distinct !{!10221, !10220, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xxINtNtCskKLDkoKarTP_4core6option6OptionNtNtBM_6string13RuntimeStringEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10222 = !{!10221}
!10223 = distinct !{!10223, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xxINtNtCskKLDkoKarTP_4core6option6OptiondEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10224 = distinct !{!10224, !10223, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xxINtNtCskKLDkoKarTP_4core6option6OptiondEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10225 = !{!10224}
!10226 = distinct !{!10226, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xxINtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10227 = distinct !{!10227, !10226, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xxINtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10228 = !{!10227}
!10229 = distinct !{!10229, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xxbENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10230 = distinct !{!10230, !10229, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xxbENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10231 = !{!10230}
!10232 = distinct !{!10232, i1 true, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10233 = distinct !{!10233, !10232, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10234 = !{!10233}
!10235 = distinct !{!10235, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xxxENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10236 = distinct !{!10236, !10235, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXst_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn2xxxENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10237 = !{!10236}
!10238 = distinct !{!10238, i1 true, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types"}
!10239 = distinct !{!10239, !10238, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types: argument 0"}
!10240 = !{!10239}
!10241 = distinct !{!10241, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3INtNtB4_2rc2RcNtNtNtBO_5types9structure6StructENtNtBM_6string13RuntimeStringxbENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10242 = distinct !{!10242, !10241, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3INtNtB4_2rc2RcNtNtNtBO_5types9structure6StructENtNtBM_6string13RuntimeStringxbENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10243 = !{!10242}
!10244 = distinct !{!10244, i1 true, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10245 = distinct !{!10245, !10244, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10246 = !{!10245}
!10247 = distinct !{!10247, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3NtNtBM_6string13RuntimeStringxxbENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10248 = distinct !{!10248, !10247, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3NtNtBM_6string13RuntimeStringxxbENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10249 = !{!10248}
!10250 = distinct !{!10250, i1 true, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10251 = distinct !{!10251, !10250, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10252 = !{!10251}
!10253 = distinct !{!10253, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3NtNtBO_8compiler9PatternIdB1B_xbENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10254 = distinct !{!10254, !10253, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3NtNtBO_8compiler9PatternIdB1B_xbENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10255 = !{!10254}
!10256 = distinct !{!10256, i1 true, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10257 = distinct !{!10257, !10256, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10258 = !{!10257}
!10259 = distinct !{!10259, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3NtNtBO_8compiler9PatternIdxxbENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10260 = distinct !{!10260, !10259, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3NtNtBO_8compiler9PatternIdxxbENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10261 = !{!10260}
!10262 = distinct !{!10262, i1 true, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10263 = distinct !{!10263, !10262, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10264 = !{!10263}
!10265 = distinct !{!10265, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3NtNtBO_8compiler9PatternIdxxxENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10266 = distinct !{!10266, !10265, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3NtNtBO_8compiler9PatternIdxxxENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10267 = !{!10266}
!10268 = distinct !{!10268, i1 true, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types"}
!10269 = distinct !{!10269, !10268, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types: argument 0"}
!10270 = !{!10269}
!10271 = distinct !{!10271, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3dddbENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10272 = distinct !{!10272, !10271, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3dddbENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10273 = !{!10272}
!10274 = distinct !{!10274, i1 true, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10275 = distinct !{!10275, !10274, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10276 = !{!10275}
!10277 = distinct !{!10277, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3xNtNtBM_6string13RuntimeStringB1C_INtNtCskKLDkoKarTP_4core6option6OptionbEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10278 = distinct !{!10278, !10277, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3xNtNtBM_6string13RuntimeStringB1C_INtNtCskKLDkoKarTP_4core6option6OptionbEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10279 = !{!10278}
!10280 = distinct !{!10280, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3xNtNtBM_6string13RuntimeStringxINtNtCskKLDkoKarTP_4core6option6OptionbEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10281 = distinct !{!10281, !10280, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3xNtNtBM_6string13RuntimeStringxINtNtCskKLDkoKarTP_4core6option6OptionbEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10282 = !{!10281}
!10283 = distinct !{!10283, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3xNtNtBO_8compiler7RegexIdB1C_INtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10284 = distinct !{!10284, !10283, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3xNtNtBO_8compiler7RegexIdB1C_INtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10285 = !{!10284}
!10286 = distinct !{!10286, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3xxdINtNtCskKLDkoKarTP_4core6option6OptiondEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10287 = distinct !{!10287, !10286, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3xxdINtNtCskKLDkoKarTP_4core6option6OptiondEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10288 = !{!10287}
!10289 = distinct !{!10289, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3xxxINtNtCskKLDkoKarTP_4core6option6OptiondEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10290 = distinct !{!10290, !10289, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3xxxINtNtCskKLDkoKarTP_4core6option6OptiondEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10291 = !{!10290}
!10292 = distinct !{!10292, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3xxxINtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10293 = distinct !{!10293, !10292, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3xxxINtNtCskKLDkoKarTP_4core6option6OptionxEENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10294 = !{!10293}
!10295 = distinct !{!10295, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3xxxbENtBM_14WasmExportedFn10trampoline0E3newBO_"}
!10296 = distinct !{!10296, !10295, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCNvXsu_NtCs7gfv9tzbXmh_6yara_x4wasmINtBM_15WasmExportedFn3xxxbENtBM_14WasmExportedFn10trampoline0E3newBO_: argument 0"}
!10297 = !{!10296}
!10298 = distinct !{!10298, i1 true, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10299 = distinct !{!10299, !10298, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10300 = !{!10299}
!10301 = distinct !{!10301, i1 true, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!10302 = distinct !{!10302, !10301, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!10303 = distinct !{!10303, i1 true, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!10304 = distinct !{!10304, !10303, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!10305 = distinct !{!10305, i1 true, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!10306 = distinct !{!10306, !10305, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!10307 = distinct !{!10307, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs7gfv9tzbXmh_6yara_x"}
!10308 = distinct !{!10308, !10307, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs7gfv9tzbXmh_6yara_x: argument 0"}
!10309 = distinct !{!10309, !10305, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!10310 = distinct !{!10310, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!10311 = distinct !{!10311, !10310, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!10312 = distinct !{!10312, i1 true, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x"}
!10313 = distinct !{!10313, !10312, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x: argument 0"}
!10314 = distinct !{!10314, !10312, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x: argument 1"}
!10315 = distinct !{!10315, !10312, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x: argument 2"}
!10316 = distinct !{!10316, !10312, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x: argument 3"}
!10317 = distinct !{!10317, i1 true, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!10318 = distinct !{!10318, !10317, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!10319 = distinct !{!10319, i1 true, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x"}
!10320 = distinct !{!10320, !10319, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x: argument 0"}
!10321 = distinct !{!10321, !10319, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x: argument 1"}
!10322 = distinct !{!10322, !10319, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x: argument 2"}
!10323 = distinct !{!10323, !10319, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs7gfv9tzbXmh_6yara_x: argument 3"}
!10324 = distinct !{!10324, i1 true, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!10325 = distinct !{!10325, !10324, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!10326 = !{!10302}
!10327 = !{!10304}
!10328 = !{!10306, !10302}
!10329 = !{!10308, !10306, !10302}
!10330 = !{!10309}
!10331 = !{!10306, !10309}
!10332 = !{!10308, !10306, !10309}
!10333 = !{!10311}
!10334 = !{!10313}
!10335 = !{!10314}
!10336 = !{!10315}
!10337 = !{!10316}
!10338 = !{!10318, !10313}
!10339 = !{!10313, !10314, !10315, !10316}
!10340 = !{!10320}
!10341 = !{!10321}
!10342 = !{!10322}
!10343 = !{!10323}
!10344 = !{!10325, !10320}
!10345 = !{!10320, !10321, !10322, !10323}
!10346 = distinct !{!10346, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeECs7gfv9tzbXmh_6yara_x"}
!10347 = distinct !{!10347, !10346, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeECs7gfv9tzbXmh_6yara_x: argument 0"}
!10348 = distinct !{!10348, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeECs7gfv9tzbXmh_6yara_x"}
!10349 = distinct !{!10349, !10348, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypeECs7gfv9tzbXmh_6yara_x: argument 0"}
!10350 = distinct !{!10350, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7RefTypeECs7gfv9tzbXmh_6yara_x"}
!10351 = distinct !{!10351, !10350, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7RefTypeECs7gfv9tzbXmh_6yara_x: argument 0"}
!10352 = distinct !{!10352, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types8HeapTypeECs7gfv9tzbXmh_6yara_x"}
!10353 = distinct !{!10353, !10352, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types8HeapTypeECs7gfv9tzbXmh_6yara_x: argument 0"}
!10354 = !{!10349, !10347}
!10355 = !{!10353, !10351, !10349, !10347}
!10356 = distinct !{!10356, i1 true, !"_RNvXs_NtNtCs61LWG4hqDFC_13crypto_bigint4uint3cmpINtB6_4UintKj4_ENtCs6fbuawtF7IW_6subtle14ConstantTimeEq5ct_eqCs7gfv9tzbXmh_6yara_x"}
!10357 = distinct !{!10357, !10356, !"_RNvXs_NtNtCs61LWG4hqDFC_13crypto_bigint4uint3cmpINtB6_4UintKj4_ENtCs6fbuawtF7IW_6subtle14ConstantTimeEq5ct_eqCs7gfv9tzbXmh_6yara_x: argument 0"}
!10358 = distinct !{!10358, i1 true, !"_RNvMNtNtCs61LWG4hqDFC_13crypto_bigint4uint3cmpINtB4_4UintKj4_E5ct_eqCs7gfv9tzbXmh_6yara_x"}
!10359 = distinct !{!10359, !10358, !"_RNvMNtNtCs61LWG4hqDFC_13crypto_bigint4uint3cmpINtB4_4UintKj4_E5ct_eqCs7gfv9tzbXmh_6yara_x: argument 0"}
!10360 = distinct !{!10360, !10356, !"_RNvXs_NtNtCs61LWG4hqDFC_13crypto_bigint4uint3cmpINtB6_4UintKj4_ENtCs6fbuawtF7IW_6subtle14ConstantTimeEq5ct_eqCs7gfv9tzbXmh_6yara_x: argument 1"}
!10361 = !{!10357}
!10362 = !{!10359, !10357}
!10363 = !{!10357, !10360}
!10364 = distinct !{!10364, i1 true, !"_RNvXs_NtNtCs61LWG4hqDFC_13crypto_bigint4uint3cmpINtB6_4UintKj6_ENtCs6fbuawtF7IW_6subtle14ConstantTimeEq5ct_eqCs7gfv9tzbXmh_6yara_x"}
!10365 = distinct !{!10365, !10364, !"_RNvXs_NtNtCs61LWG4hqDFC_13crypto_bigint4uint3cmpINtB6_4UintKj6_ENtCs6fbuawtF7IW_6subtle14ConstantTimeEq5ct_eqCs7gfv9tzbXmh_6yara_x: argument 0"}
!10366 = distinct !{!10366, i1 true, !"_RNvMNtNtCs61LWG4hqDFC_13crypto_bigint4uint3cmpINtB4_4UintKj6_E5ct_eqCs7gfv9tzbXmh_6yara_x"}
!10367 = distinct !{!10367, !10366, !"_RNvMNtNtCs61LWG4hqDFC_13crypto_bigint4uint3cmpINtB4_4UintKj6_E5ct_eqCs7gfv9tzbXmh_6yara_x: argument 0"}
!10368 = distinct !{!10368, !10364, !"_RNvXs_NtNtCs61LWG4hqDFC_13crypto_bigint4uint3cmpINtB6_4UintKj6_ENtCs6fbuawtF7IW_6subtle14ConstantTimeEq5ct_eqCs7gfv9tzbXmh_6yara_x: argument 1"}
!10369 = !{!10365}
!10370 = !{!10367, !10365}
!10371 = !{!10365, !10368}
!10372 = distinct !{!10372, i1 true, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtB5_6string9LowercaseINtB1z_14FixedLenStringKj20_EEEENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10373 = distinct !{!10373, !10372, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtB5_6string9LowercaseINtB1z_14FixedLenStringKj20_EEEENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10374 = !{!10373}
!10375 = distinct !{!10375, i1 true, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10376 = distinct !{!10376, !10375, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10377 = !{!10376}
!10378 = distinct !{!10378, i1 true, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtB5_6string9LowercaseINtB1z_14FixedLenStringKj28_EEEENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10379 = distinct !{!10379, !10378, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtB5_6string9LowercaseINtB1z_14FixedLenStringKj28_EEEENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10380 = !{!10379}
!10381 = distinct !{!10381, i1 true, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10382 = distinct !{!10382, !10381, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10383 = !{!10382}
!10384 = distinct !{!10384, i1 true, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtB5_6string9LowercaseINtB1z_14FixedLenStringKj40_EEEENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10385 = distinct !{!10385, !10384, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtB5_6string9LowercaseINtB1z_14FixedLenStringKj40_EEEENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10386 = !{!10385}
!10387 = distinct !{!10387, i1 true, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10388 = distinct !{!10388, !10387, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10389 = !{!10388}
!10390 = distinct !{!10390, i1 true, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtB5_6string9UppercaseINtB1z_14FixedLenStringKj48_EEEENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10391 = distinct !{!10391, !10390, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionINtNtB5_6string9UppercaseINtB1z_14FixedLenStringKj48_EEEENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10392 = !{!10391}
!10393 = distinct !{!10393, i1 true, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10394 = distinct !{!10394, !10393, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10395 = !{!10394}
!10396 = distinct !{!10396, i1 true, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionNtNtB5_6string13RuntimeStringEENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10397 = distinct !{!10397, !10396, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionNtNtB5_6string13RuntimeStringEENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10398 = !{!10397}
!10399 = distinct !{!10399, i1 true, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10400 = distinct !{!10400, !10399, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10401 = !{!10400}
!10402 = distinct !{!10402, i1 true, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionbEENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10403 = distinct !{!10403, !10402, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionbEENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10404 = !{!10403}
!10405 = distinct !{!10405, i1 true, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10406 = distinct !{!10406, !10405, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10407 = !{!10406}
!10408 = distinct !{!10408, i1 true, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionxEENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10409 = distinct !{!10409, !10408, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0INtNtCskKLDkoKarTP_4core6option6OptionxEENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10410 = !{!10409}
!10411 = distinct !{!10411, i1 true, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10412 = distinct !{!10412, !10411, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10413 = !{!10412}
!10414 = distinct !{!10414, i1 true, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0bENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10415 = distinct !{!10415, !10414, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0bENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10416 = !{!10415}
!10417 = distinct !{!10417, i1 true, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0bENtB5_14WasmExportedFn16wasmtime_resultsB7_"}
!10418 = distinct !{!10418, !10417, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0bENtB5_14WasmExportedFn16wasmtime_resultsB7_: argument 0"}
!10419 = distinct !{!10419, i1 true, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10420 = distinct !{!10420, !10419, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10421 = !{!10420, !10418}
!10422 = distinct !{!10422, i1 true, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0uENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10423 = distinct !{!10423, !10422, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0uENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10424 = !{!10423}
!10425 = distinct !{!10425, i1 true, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0uENtB5_14WasmExportedFn16wasmtime_resultsB7_"}
!10426 = distinct !{!10426, !10425, !"_RNvXsr_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn0uENtB5_14WasmExportedFn16wasmtime_resultsB7_: argument 0"}
!10427 = distinct !{!10427, i1 true, !"_RNvXsd_NtCs7gfv9tzbXmh_6yara_x4wasmuNtB5_10WasmResult5types"}
!10428 = distinct !{!10428, !10427, !"_RNvXsd_NtCs7gfv9tzbXmh_6yara_x4wasmuNtB5_10WasmResult5types: argument 0"}
!10429 = !{!10428, !10426}
!10430 = distinct !{!10430, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1INtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtB7_5types3map3MapExENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10431 = distinct !{!10431, !10430, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1INtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtB7_5types3map3MapExENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10432 = !{!10431}
!10433 = distinct !{!10433, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1INtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtB7_5types3map3MapExENtB5_14WasmExportedFn16wasmtime_resultsB7_"}
!10434 = distinct !{!10434, !10433, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1INtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtB7_5types3map3MapExENtB5_14WasmExportedFn16wasmtime_resultsB7_: argument 0"}
!10435 = distinct !{!10435, i1 true, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types"}
!10436 = distinct !{!10436, !10435, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types: argument 0"}
!10437 = !{!10436, !10434}
!10438 = distinct !{!10438, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1INtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtB7_5types5array5ArrayExENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10439 = distinct !{!10439, !10438, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1INtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtB7_5types5array5ArrayExENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10440 = !{!10439}
!10441 = distinct !{!10441, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1INtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtB7_5types5array5ArrayExENtB5_14WasmExportedFn16wasmtime_resultsB7_"}
!10442 = distinct !{!10442, !10441, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1INtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtB7_5types5array5ArrayExENtB5_14WasmExportedFn16wasmtime_resultsB7_: argument 0"}
!10443 = distinct !{!10443, i1 true, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types"}
!10444 = distinct !{!10444, !10443, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types: argument 0"}
!10445 = !{!10444, !10442}
!10446 = distinct !{!10446, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1INtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtB7_5types9structure6StructEbENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10447 = distinct !{!10447, !10446, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1INtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtB7_5types9structure6StructEbENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10448 = !{!10447}
!10449 = distinct !{!10449, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1INtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtB7_5types9structure6StructEbENtB5_14WasmExportedFn16wasmtime_resultsB7_"}
!10450 = distinct !{!10450, !10449, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1INtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtB7_5types9structure6StructEbENtB5_14WasmExportedFn16wasmtime_resultsB7_: argument 0"}
!10451 = distinct !{!10451, i1 true, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10452 = distinct !{!10452, !10451, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10453 = !{!10452, !10450}
!10454 = distinct !{!10454, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringINtBW_9UppercaseBU_EENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10455 = distinct !{!10455, !10454, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringINtBW_9UppercaseBU_EENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10456 = !{!10455}
!10457 = distinct !{!10457, i1 true, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10458 = distinct !{!10458, !10457, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10459 = !{!10458}
!10460 = distinct !{!10460, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionINtBW_9LowercaseINtBW_14FixedLenStringKj20_EEEENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10461 = distinct !{!10461, !10460, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionINtBW_9LowercaseINtBW_14FixedLenStringKj20_EEEENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10462 = !{!10461}
!10463 = distinct !{!10463, i1 true, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10464 = distinct !{!10464, !10463, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10465 = !{!10464}
!10466 = distinct !{!10466, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionINtBW_9LowercaseINtBW_14FixedLenStringKj28_EEEENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10467 = distinct !{!10467, !10466, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionINtBW_9LowercaseINtBW_14FixedLenStringKj28_EEEENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10468 = !{!10467}
!10469 = distinct !{!10469, i1 true, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10470 = distinct !{!10470, !10469, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10471 = !{!10470}
!10472 = distinct !{!10472, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionINtBW_9LowercaseINtBW_14FixedLenStringKj40_EEEENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10473 = distinct !{!10473, !10472, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionINtBW_9LowercaseINtBW_14FixedLenStringKj40_EEEENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10474 = !{!10473}
!10475 = distinct !{!10475, i1 true, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10476 = distinct !{!10476, !10475, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10477 = !{!10476}
!10478 = distinct !{!10478, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionbEENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10479 = distinct !{!10479, !10478, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionbEENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10480 = !{!10479}
!10481 = distinct !{!10481, i1 true, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10482 = distinct !{!10482, !10481, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10483 = !{!10482}
!10484 = distinct !{!10484, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptiondEENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10485 = distinct !{!10485, !10484, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptiondEENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10486 = !{!10485}
!10487 = distinct !{!10487, i1 true, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10488 = distinct !{!10488, !10487, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10489 = !{!10488}
!10490 = distinct !{!10490, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionxEENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10491 = distinct !{!10491, !10490, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringINtNtCskKLDkoKarTP_4core6option6OptionxEENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10492 = !{!10491}
!10493 = distinct !{!10493, i1 true, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10494 = distinct !{!10494, !10493, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10495 = !{!10494}
!10496 = distinct !{!10496, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringbENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10497 = distinct !{!10497, !10496, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringbENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10498 = !{!10497}
!10499 = distinct !{!10499, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringbENtB5_14WasmExportedFn16wasmtime_resultsB7_"}
!10500 = distinct !{!10500, !10499, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringbENtB5_14WasmExportedFn16wasmtime_resultsB7_: argument 0"}
!10501 = distinct !{!10501, i1 true, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types"}
!10502 = distinct !{!10502, !10501, !"_RNvXsj_NtCs7gfv9tzbXmh_6yara_x4wasmbNtB5_10WasmResult5types: argument 0"}
!10503 = !{!10502, !10500}
!10504 = distinct !{!10504, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringxENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10505 = distinct !{!10505, !10504, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringxENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10506 = !{!10505}
!10507 = distinct !{!10507, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringxENtB5_14WasmExportedFn16wasmtime_resultsB7_"}
!10508 = distinct !{!10508, !10507, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB5_6string13RuntimeStringxENtB5_14WasmExportedFn16wasmtime_resultsB7_: argument 0"}
!10509 = distinct !{!10509, i1 true, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types"}
!10510 = distinct !{!10510, !10509, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types: argument 0"}
!10511 = !{!10510, !10508}
!10512 = distinct !{!10512, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB7_8compiler6RuleIduENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10513 = distinct !{!10513, !10512, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB7_8compiler6RuleIduENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10514 = !{!10513}
!10515 = distinct !{!10515, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB7_8compiler6RuleIduENtB5_14WasmExportedFn16wasmtime_resultsB7_"}
!10516 = distinct !{!10516, !10515, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB7_8compiler6RuleIduENtB5_14WasmExportedFn16wasmtime_resultsB7_: argument 0"}
!10517 = distinct !{!10517, i1 true, !"_RNvXsd_NtCs7gfv9tzbXmh_6yara_x4wasmuNtB5_10WasmResult5types"}
!10518 = distinct !{!10518, !10517, !"_RNvXsd_NtCs7gfv9tzbXmh_6yara_x4wasmuNtB5_10WasmResult5types: argument 0"}
!10519 = !{!10518, !10516}
!10520 = distinct !{!10520, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB7_8compiler7RegexIdINtNtCskKLDkoKarTP_4core6option6OptionbEENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10521 = distinct !{!10521, !10520, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB7_8compiler7RegexIdINtNtCskKLDkoKarTP_4core6option6OptionbEENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10522 = !{!10521}
!10523 = distinct !{!10523, i1 true, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10524 = distinct !{!10524, !10523, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10525 = !{!10524}
!10526 = distinct !{!10526, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB7_8compiler7RegexIdINtNtCskKLDkoKarTP_4core6option6OptionxEENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10527 = distinct !{!10527, !10526, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB7_8compiler7RegexIdINtNtCskKLDkoKarTP_4core6option6OptionxEENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10528 = !{!10527}
!10529 = distinct !{!10529, i1 true, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x"}
!10530 = distinct !{!10530, !10529, !"_RNvMsc_Cs6ObhOmryMwL_8smallvecINtB5_8SmallVecANtNtNtCsiOkGTpNE17y_8wasmtime7runtime5types7ValTypej4_E6tripleCs7gfv9tzbXmh_6yara_x: argument 1"}
!10531 = !{!10530}
!10532 = distinct !{!10532, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB7_8compiler7RegexIdxENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10533 = distinct !{!10533, !10532, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB7_8compiler7RegexIdxENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10534 = !{!10533}
!10535 = distinct !{!10535, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB7_8compiler7RegexIdxENtB5_14WasmExportedFn16wasmtime_resultsB7_"}
!10536 = distinct !{!10536, !10535, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB7_8compiler7RegexIdxENtB5_14WasmExportedFn16wasmtime_resultsB7_: argument 0"}
!10537 = distinct !{!10537, i1 true, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types"}
!10538 = distinct !{!10538, !10537, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types: argument 0"}
!10539 = !{!10538, !10536}
!10540 = distinct !{!10540, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB7_8compiler9PatternIdxENtB5_14WasmExportedFn13wasmtime_argsB7_"}
!10541 = distinct !{!10541, !10540, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB7_8compiler9PatternIdxENtB5_14WasmExportedFn13wasmtime_argsB7_: argument 0"}
!10542 = !{!10541}
!10543 = distinct !{!10543, i1 true, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB7_8compiler9PatternIdxENtB5_14WasmExportedFn16wasmtime_resultsB7_"}
!10544 = distinct !{!10544, !10543, !"_RNvXss_NtCs7gfv9tzbXmh_6yara_x4wasmINtB5_15WasmExportedFn1NtNtB7_8compiler9PatternIdxENtB5_14WasmExportedFn16wasmtime_resultsB7_: argument 0"}
!10545 = distinct !{!10545, i1 true, !"_RNvXsf_NtCs7gfv9tzbXmh_6yara_x4wasmxNtB5_10WasmResult5types"}
end_hunk_1
