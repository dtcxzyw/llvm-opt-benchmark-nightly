Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webrtc_websys-33786c1b818c1139.libp2p_webrtc_websys.e037df9551baf892-cgu.15?download=true
inline.NumInlined: 84
inline.NumDeleted: 48
begin_hunk_0_@_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  %i.bq = add nuw nsw i64 %i.bg, 2
  %i.br = icmp samesign ne i64 %i.bq, %i.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 3
  %i.bt = add nuw nsw i64 %i.bg, 3
  %i.bu = icmp samesign ne i64 %i.bt, %i.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %.not.i.i.us, label %bb.l, label %.split.i.i.us

.split.i.i.us:                                    ; preds = %bb.k
  br i1 %i.bi, label %bb.m, label %.split.us161

bb.l:                                             ; preds = %bb.k
  %i.bv = load i8, ptr %i.bj, align 1, !alias.scope !98, !noalias !102, !noundef !5
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.m, label %.split.us161

bb.m:                                             ; preds = %bb.l, %.split.i.i.us, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.us.peel
  br i1 %i.bl, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i8, ptr %i.bk, align 1, !noalias !103, !noundef !5 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.o, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit12.i.i.us

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit12.i.i.us: ; preds = %bb.n
  %i.bz = and i8 %i.bx, 31
  %i.ca = zext nneg i8 %i.bz to i32               ; 3 uses
  tail call void @llvm.assume(i1 %i.bo)
  %i.cb = load i8, ptr %i.bm, align 1, !noalias !103, !noundef !5
  %i.cc = shl nuw nsw i32 %i.ca, 6
  %i.cd = and i8 %i.cb, 63
  %i.ce = zext nneg i8 %i.cd to i32               ; 2 uses
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.cg, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit14.i.i.us, label %.loopexit42.split.us.loopexit

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit14.i.i.us: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit12.i.i.us
  tail call void @llvm.assume(i1 %i.br)
  %i.ch = load i8, ptr %i.bp, align 1, !noalias !103, !noundef !5
  %i.ci = shl nuw nsw i32 %i.ce, 6
  %i.cj = and i8 %i.ch, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ci, %i.ck            ; 2 uses
  %i.cm = shl nuw nsw i32 %i.ca, 12
  %i.cn = or disjoint i32 %i.cl, %i.cm
  %i.co = icmp samesign ugt i8 %i.bx, -17
  br i1 %i.co, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit16.i.i.us, label %.loopexit42.split.us.loopexit

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit16.i.i.us: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit14.i.i.us
  tail call void @llvm.assume(i1 %i.bu)
  %i.cp = load i8, ptr %i.bs, align 1, !noalias !103, !noundef !5
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

.loopexit42.split.us.loopexit:                    ; preds = %bb.o, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit16.i.i.us, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit14.i.i.us, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit12.i.i.us
  %.sroa.4.0.i.ph.i.us = phi i32 [ %i.cn, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit14.i.i.us ], [ %i.cw, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit16.i.i.us ], [ %i.cf, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit12.i.i.us ], [ %i.cx, %bb.o ]
  %i.cy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us, 1114112
  tail call void @llvm.assume(i1 %i.cy)
  br label %.loopexit42.split.us

.split.us161:                                     ; preds = %bb.l, %.split.i.i.us, %bb.c, %.split.i.i.us.peel
  %.lcssa323 = phi i64 [ %.promoted157, %.split.i.i.us.peel ], [ %.promoted157, %bb.c ], [ %i.bg, %.split.i.i.us ], [ %i.bg, %bb.l ]
  %.lcssa320 = phi i8 [ %.promoted206, %.split.i.i.us.peel ], [ %.promoted206, %bb.c ], [ 1, %.split.i.i.us ], [ 1, %bb.l ]
  %i.cz = xor i8 %.lcssa320, 1
  store i8 %i.cz, ptr %i.f, align 8, !alias.scope !101
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef %i.j, i64 noundef %.lcssa323, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #21, !noalias !102
  unreachable

.split166.us:                                     ; preds = %bb.d
  %i.da = xor i8 %.promoted206, 1
  store i8 %i.da, ptr %i.f, align 8, !alias.scope !101
  br i1 %i.k, label %bb.s, label %bb.p

.loopexit42.split.us:                             ; preds = %.loopexit42.split.us.loopexit, %bb.g
  %.lcssa325 = phi i64 [ %.promoted157, %bb.g ], [ %i.bg, %.loopexit42.split.us.loopexit ]
  store i8 0, ptr %i.f, align 8, !alias.scope !101
  br label %bb.s

default.unreachable261:                           ; preds = %bb.a
  unreachable

bb.p:                                             ; preds = %.split166.us
  store i8 1, ptr %i.c, align 2, !alias.scope !101
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys.exit

bb.q:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dc = load i64, ptr %i.db, align 8, !noundef !5 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.de = load i64, ptr %i.dd, align 8, !noundef !5 ; 4 uses
  %.not = icmp ult i64 %i.de, %i.dc
  br i1 %.not, label %bb.t, label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys.exit

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
  store i8 0, ptr %i.f, align 8, !alias.scope !101
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %.loopexit42.split.us, %.split166.us
  %i.dt = phi i64 [ %.lcssa325, %.loopexit42.split.us ], [ %i.j, %.split166.us ], [ %i.j, %.critedge ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dt, ptr %i.dv, align 8
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys.exit

_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys.exit: ; preds = %bb.s, %bb.p, %.preheader, %.split.us.i21, %._crit_edge.i13, %.split.us.i11, %._crit_edge.i, %.loopexit43, %.loopexit44, %bb.q
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
  %i.ed = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.dz, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef range(i64 0, -9223372036854775808) %i.ea) ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0
  %i.ef = extractvalue { i64, i64 } %i.ed, 1
  %i.eg = trunc nuw i64 %i.ee to i1
  br i1 %i.eg, label %.loopexit43, label %.loopexit44

.lr.ph.i:                                         ; preds = %bb.t, %bb.v
  %.sroa.04.011.i = phi i64 [ %i.ek, %bb.v ], [ 0, %bb.t ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.sroa.04.011.i
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !104, !noundef !5
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
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys.exit

.loopexit44:                                      ; preds = %bb.v, %bb.u
  store i64 %i.dc, ptr %i.dd, align 8
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys.exit

bb.w:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %.promoted.i = load i64, ptr %i.dr, align 8, !alias.scope !106 ; 2 uses
  %i.eq = add i64 %.promoted.i, %i.ds             ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.dm
  br i1 %i.er, label %.lr.ph.i8, label %._crit_edge.i

.lr.ph.i8:                                        ; preds = %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !106, !noundef !5
  %i.eu = load i64, ptr %i.df, align 8, !alias.scope !106
  %.fr60.i = freeze i64 %i.eu                     ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !106 ; 2 uses
  %i.ex = sub i64 %i.dq, %i.ew
  %invariant.op = sub i64 1, %.fr60.i
  br label %.lr.ph.split.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.w
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !106
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys.exit

.lr.ph.split.i:                                   ; preds = %bb.z, %.lr.ph.i8
  %i.ey = phi i64 [ %.sink70.i, %bb.z ], [ %i.dh, %.lr.ph.i8 ] ; 3 uses
  %i.ez = phi i64 [ %i.fj, %bb.z ], [ %i.eq, %.lr.ph.i8 ]
  %i.fa = phi i64 [ %.sink71.i, %bb.z ], [ %.promoted.i, %.lr.ph.i8 ] ; 7 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ez
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !107, !noundef !5
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
  store i64 %.sink71.i, ptr %i.dr, align 8, !alias.scope !106
  store i64 %.sink70.i, ptr %i.dg, align 8, !alias.scope !106
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
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !108, !noundef !5
  %i.fq = add i64 %.sroa.04.0.i305, %i.fa         ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.dm
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.fq
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !107, !noundef !5
  %.not21.i = icmp eq i8 %i.fp, %i.ft
  br i1 %.not21.i, label %bb.aa, label %bb.ad

.preheader36.i:                                   ; preds = %bb.ab
  %i.fu = icmp ult i64 %i.ey, %i.fy
  br i1 %i.fu, label %.lr.ph308, label %.split.us.i11

.split.us.i11:                                    ; preds = %.preheader36.i.preheader, %.preheader36.i
  %i.fv = add i64 %i.fa, %i.dq                    ; 2 uses
  store i64 %i.fv, ptr %i.dr, align 8, !alias.scope !106
  store i64 0, ptr %i.dg, align 8, !alias.scope !106
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fa, ptr %i.fw, align 8, !alias.scope !109
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fv, ptr %i.fx, align 8, !alias.scope !109
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys.exit

.lr.ph308:                                        ; preds = %.preheader36.i.preheader, %.preheader36.i
  %.sroa.2.0.i307 = phi i64 [ %i.fy, %.preheader36.i ], [ %.fr60.i, %.preheader36.i.preheader ]
  %i.fy = add i64 %.sroa.2.0.i307, -1             ; 6 uses
  %i.fz = icmp ult i64 %i.fy, %i.dq
  br i1 %i.fz, label %bb.ab, label %.split32.us.i

bb.ab:                                            ; preds = %.lr.ph308
  %i.ga = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fy
  %i.gb = load i8, ptr %i.ga, align 1, !alias.scope !108, !noundef !5
  %i.gc = add i64 %i.fy, %i.fa                    ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.dm
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.gc
  %i.gf = load i8, ptr %i.ge, align 1, !alias.scope !107, !noundef !5
  %.not20.i = icmp eq i8 %i.gb, %i.gf
  br i1 %.not20.i, label %.preheader36.i, label %bb.ac

.split32.us.i:                                    ; preds = %.lr.ph308
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fy, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !110
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.gg = add i64 %i.fa, %i.ew
  br label %bb.z

bb.ad:                                            ; preds = %.lr.ph306
  %.reass.reass = add i64 %i.fa, %invariant.op
  %i.gh = add i64 %.reass.reass, %.sroa.04.0.i305
  br label %bb.z

bb.ae:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %.promoted.i12 = load i64, ptr %i.dr, align 8, !alias.scope !112 ; 2 uses
  %i.gi = add i64 %.promoted.i12, %i.ds           ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.dm
  br i1 %i.gj, label %.lr.ph.i15, label %._crit_edge.i13

.lr.ph.i15:                                       ; preds = %bb.ae
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gl = load i64, ptr %i.gk, align 8, !alias.scope !112, !noundef !5
  %i.gm = load i64, ptr %i.df, align 8, !alias.scope !112
  %.fr215 = freeze i64 %i.gm                      ; 7 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !112
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
  %i.gt = load i8, ptr %i.gs, align 1, !alias.scope !113, !noundef !5
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
  %i.hb = load i8, ptr %i.ha, align 1, !alias.scope !114, !noundef !5
  %i.hc = add i64 %i.gz, %i.gr                    ; 2 uses
  %i.hd = icmp ult i64 %i.hc, %i.dm
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hc
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !113, !noundef !5
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
  %i.hi = load i8, ptr %i.hh, align 1, !alias.scope !114, !noundef !5
  %i.hj = add i64 %.sroa.04.0.us.i311, %i.gr      ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %i.dm
  tail call void @llvm.assume(i1 %i.hk)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.hj
  %i.hm = load i8, ptr %i.hl, align 1, !alias.scope !113, !noundef !5
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
  store i64 %.sink.i18, ptr %i.dr, align 8, !alias.scope !112
  %i.hp = add i64 %.sink.i18, %i.ds               ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.dm
  br i1 %i.hq, label %.lr.ph.split.us.i, label %._crit_edge.i13

._crit_edge.i13:                                  ; preds = %bb.ah, %bb.ae
  store i64 %i.dm, ptr %i.dr, align 8, !alias.scope !112
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys.exit

.split.us.i21:                                    ; preds = %.preheader.i19.us.preheader, %.preheader.i19.us, %.preheader.split.i21
  %i.hr = add i64 %i.gr, %i.dq                    ; 2 uses
  store i64 %i.hr, ptr %i.dr, align 8, !alias.scope !112
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.gr, ptr %i.hs, align 8, !alias.scope !115
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.hr, ptr %i.ht, align 8, !alias.scope !115
  br label %_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys.exit

.split32.us.i22:                                  ; preds = %.preheader.split.i21
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.gp, i64 noundef range(i64 0, -9223372036854775808) %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !116
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs9Bqz0CSWZZv_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @23, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_ENtB6_5Debug3fmtCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs5_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugSet5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs6_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs9Bqz0CSWZZv_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvCscIBp6mpAwK8_3log6logger() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support13___tracing_log(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE4iterCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs1SQIzZDXHNl_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCs9Bqz0CSWZZv_12tracing_core5fieldNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCs9Bqz0CSWZZv_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsexYYUdYSQU6_5alloc6string6StringENtB5_5Value6recordCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMNtNtCsdWFkW6IA9sT_7web_sys8features29gen_RtcSessionDescriptionInitNtB2_25RtcSessionDescriptionInit3new(i32 noundef range(i32 0, 5)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCsdWFkW6IA9sT_7web_sys8features29gen_RtcSessionDescriptionInitNtB5_25RtcSessionDescriptionInit7set_sdp(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs6NOj3pT9ZIN_19libp2p_webrtc_utils3sdp6answer(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 1 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs9Bqz0CSWZZv_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9debug_set(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_8DebugSet6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs5g5izYWz4RS_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsd_NtNtCsl9hx9jpF0W9_12futures_util6future6futureINtB5_3MapINtNtNtB7_10try_future11into_future10IntoFutureINtNtNtCsdTHTBGblh3Z_11libp2p_core9transport3map9MapFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB2L_6future6future6Futurep6OutputINtNtB2L_6result6ResultTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys10connection10ConnectionENtNtB5F_5error5ErrorENtNtB2L_6marker4SendEL_EENCNvMs_NtB5F_9transportNtB7v_9Transport5boxed0EEINtNtB9_3fns8MapErrFnINvNtB1P_5boxed7box_errB6E_EEEB3M_4pollB5F_(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias nofree noundef align 8 dereferenceable(88), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EuENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { cold }
attributes #18 = { inlinehint }
attributes #19 = { noreturn }
attributes #20 = { nounwind }
attributes #21 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{!"address", !"read_provenance"}
!5 = !{}
!6 = !{i8 0, i8 2}
!7 = !{i64 8}
!8 = distinct !{!8, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCsjfvwIE9w8og_20libp2p_webrtc_websys"}
!9 = distinct !{!9, !8, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!10 = distinct !{!10, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCsjfvwIE9w8og_20libp2p_webrtc_websys"}
!11 = distinct !{!11, !10, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!12 = distinct !{!12, i1 true, !"_RINvMs3_NtCsexYYUdYSQU6_5alloc3stre7replaceReECsjfvwIE9w8og_20libp2p_webrtc_websys"}
!13 = distinct !{!13, !12, !"_RINvMs3_NtCsexYYUdYSQU6_5alloc3stre7replaceReECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 1"}
!14 = distinct !{!14, !12, !"_RINvMs3_NtCsexYYUdYSQU6_5alloc3stre7replaceReECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!15 = distinct !{!15, i1 true, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjfvwIE9w8og_20libp2p_webrtc_websys"}
!16 = distinct !{!16, !15, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!17 = distinct !{!17, i1 true, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjfvwIE9w8og_20libp2p_webrtc_websys"}
!18 = distinct !{!18, !17, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!19 = distinct !{!19, i1 true, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjfvwIE9w8og_20libp2p_webrtc_websys"}
!20 = distinct !{!20, !19, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!21 = distinct !{!21, i1 true, !"_RNCNvNtCsjfvwIE9w8og_20libp2p_webrtc_websys3sdp5offer0B5_"}
!22 = distinct !{!22, !21, !"_RNCNvNtCsjfvwIE9w8og_20libp2p_webrtc_websys3sdp5offer0B5_: argument 0"}
!23 = distinct !{null}
!24 = distinct !{!24, i1 true, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCsjfvwIE9w8og_20libp2p_webrtc_websys"}
!25 = distinct !{!25, !24, !"_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE4nextCsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0:h.rot"}
!26 = distinct !{!26, i1 true, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjfvwIE9w8og_20libp2p_webrtc_websys"}
!27 = distinct !{!27, !26, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!28 = distinct !{!28, i1 true, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjfvwIE9w8og_20libp2p_webrtc_websys"}
!29 = distinct !{!29, !28, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!30 = distinct !{!30, i1 true, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjfvwIE9w8og_20libp2p_webrtc_websys"}
!31 = distinct !{!31, !30, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!32 = !{!9}
!33 = !{i64 0, i64 2}
!34 = !{!11, !9}
!35 = !{!14, !13}
!36 = !{i64 0, i64 -9223372036854775807}
!37 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!38 = !{!14}
!39 = !{!16}
!40 = !{!18}
!41 = !{!20}
!42 = !{!13}
!43 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000}
!44 = !{!22}
!45 = !{!25}
!46 = !{!27}
!47 = !{!29}
!48 = !{!31}
!49 = distinct !{!49, i1 true, !"_RNvXs6_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjfvwIE9w8og_20libp2p_webrtc_websys"}
!50 = distinct !{!50, !49, !"_RNvXs6_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjfvwIE9w8og_20libp2p_webrtc_websys: argument 1"}
!51 = distinct !{!51, !49, !"_RNvXs6_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB5_7HashSetINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!52 = distinct !{!52, i1 true, !"_RINvMs5_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugSet7entriesRINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterB13_EECsjfvwIE9w8og_20libp2p_webrtc_websys"}
!53 = distinct !{!53, !52, !"_RINvMs5_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugSet7entriesRINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterB13_EECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 1"}
!54 = distinct !{!54, !52, !"_RINvMs5_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugSet7entriesRINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterB13_EECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!55 = !{!51, !50}
!56 = !{!51}
!57 = !{!54, !53, !51, !50}
!58 = !{!54, !53}
!59 = !{!53}
!60 = distinct !{!60, i1 true, !"_RINvMs5_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugSet7entriesRINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterB13_EECsjfvwIE9w8og_20libp2p_webrtc_websys"}
!61 = distinct !{!61, !60, !"_RINvMs5_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugSet7entriesRINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterB13_EECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 1"}
!62 = distinct !{!62, !60, !"_RINvMs5_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB6_8DebugSet7entriesRINtNtCsgW4lhAJgVdS_9multihash9multihash9MultihashKj40_EINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterB13_EECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!63 = !{!62, !61}
!64 = !{!61}
!65 = distinct !{!65, i1 true, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys"}
!66 = distinct !{!66, !65, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!67 = distinct !{!67, i1 true, !"_RNvXsa_NtNtCskKLDkoKarTP_4core5clone5implshNtB7_5Clone5clone"}
!68 = distinct !{!68, !67, !"_RNvXsa_NtNtCskKLDkoKarTP_4core5clone5implshNtB7_5Clone5clone: argument 0"}
!69 = !{!66}
!70 = !{!68}
!71 = distinct !{!71, i1 true, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!72 = distinct !{!72, !71, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!73 = distinct !{!73, i1 true, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!74 = distinct !{!74, !73, !"_RNvXs9_NtNtCskKLDkoKarTP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!75 = distinct !{!75, i1 true, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!76 = distinct !{!76, !75, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!77 = distinct !{!77, i1 true, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsjfvwIE9w8og_20libp2p_webrtc_websys"}
!78 = distinct !{!78, !77, !"_RINvNtNtCskKLDkoKarTP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!79 = distinct !{!79, !75, !"_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!80 = distinct !{!80, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr"}
!81 = distinct !{!81, !80, !"_RNvNtNtCskKLDkoKarTP_4core5slice6memchr6memchr: argument 0"}
!82 = distinct !{!82, i1 true, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys"}
!83 = distinct !{!83, !82, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!84 = distinct !{!84, !82, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 1"}
!85 = distinct !{!85, !82, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 2"}
!86 = distinct !{!86, !82, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 3"}
!87 = distinct !{!87, i1 true, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!88 = distinct !{!88, !87, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!89 = distinct !{!89, i1 true, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys"}
!90 = distinct !{!90, !89, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!91 = distinct !{!91, !89, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 1"}
!92 = distinct !{!92, !89, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 2"}
!93 = distinct !{!93, !89, !"_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 3"}
!94 = distinct !{!94, i1 true, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching"}
!95 = distinct !{!95, !94, !"_RNvXsy_NtNtCskKLDkoKarTP_4core3str7patternNtB5_9MatchOnlyNtB5_14TwoWayStrategy8matching: argument 0"}
!96 = !{i64 0, i64 3}
!97 = !{!72}
!98 = !{!74}
!99 = !{!76, !72}
!100 = !{!78, !76, !72}
!101 = !{!79}
!102 = !{!76, !79}
!103 = !{!78, !76, !79}
!104 = !{!81}
!105 = !{!83}
!106 = !{!84}
!107 = !{!85}
!108 = !{!86}
!109 = !{!88, !83}
!110 = !{!83, !84, !85, !86}
!111 = !{!90}
!112 = !{!91}
!113 = !{!92}
!114 = !{!93}
!115 = !{!95, !90}
!116 = !{!90, !91, !92, !93}
end_hunk_0
