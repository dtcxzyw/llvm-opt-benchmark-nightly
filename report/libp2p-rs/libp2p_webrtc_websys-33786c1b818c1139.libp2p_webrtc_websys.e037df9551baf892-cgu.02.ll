Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_webrtc_websys-33786c1b818c1139.libp2p_webrtc_websys.e037df9551baf892-cgu.02?download=true
inline.NumInlined: 124
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15is_contained_in:bb.a
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 %.promoted157.i ; 4 uses
  %i.ea = icmp samesign eq i64 %.promoted157.i, %i.dq
  br i1 %i.ea, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eb = load i8, ptr %i.dz, align 1, !noalias !278, !noundef !5 ; 5 uses
  %i.ec = icmp sgt i8 %i.eb, -1
  br i1 %i.ec, label %bb.s, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit12.i.i.us.i.peel

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit12.i.i.us.i.peel: ; preds = %bb.r
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.ee = and i8 %i.eb, 31
  %i.ef = zext nneg i8 %i.ee to i32               ; 3 uses
  %i.eg = add nuw nsw i64 %.promoted157.i, 1
  %i.eh = icmp samesign ne i64 %i.eg, %i.dq
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = load i8, ptr %i.ed, align 1, !noalias !278, !noundef !5
  %i.ej = shl nuw nsw i32 %i.ef, 6
  %i.ek = and i8 %i.ei, 63
  %i.el = zext nneg i8 %i.ek to i32               ; 2 uses
  %i.em = or disjoint i32 %i.ej, %i.el
  %i.en = icmp samesign ugt i8 %i.eb, -33
  br i1 %i.en, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit14.i.i.us.i.peel, label %bb.t

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit14.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit12.i.i.us.i.peel
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %i.ep = add nuw nsw i64 %.promoted157.i, 2
  %i.eq = icmp samesign ne i64 %i.ep, %i.dq
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = load i8, ptr %i.eo, align 1, !noalias !278, !noundef !5
  %i.es = shl nuw nsw i32 %i.el, 6
  %i.et = and i8 %i.er, 63
  %i.eu = zext nneg i8 %i.et to i32
  %i.ev = or disjoint i32 %i.es, %i.eu            ; 2 uses
  %i.ew = shl nuw nsw i32 %i.ef, 12
  %i.ex = or disjoint i32 %i.ev, %i.ew
  %i.ey = icmp samesign ugt i8 %i.eb, -17
  br i1 %i.ey, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit16.i.i.us.i.peel, label %bb.t

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit16.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit14.i.i.us.i.peel
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dz, i64 3
  %i.fa = add nuw nsw i64 %.promoted157.i, 3
  %i.fb = icmp samesign ne i64 %i.fa, %i.dq
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = load i8, ptr %i.ez, align 1, !noalias !278, !noundef !5
  %i.fd = shl nuw nsw i32 %i.ef, 18
  %i.fe = and i32 %i.fd, 1835008
  %i.ff = shl nuw nsw i32 %i.ev, 6
  %i.fg = and i8 %i.fc, 63
  %i.fh = zext nneg i8 %i.fg to i32
  %i.fi = or disjoint i32 %i.ff, %i.fh
  %i.fj = or disjoint i32 %i.fi, %i.fe
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fk = zext nneg i8 %i.eb to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit16.i.i.us.i.peel, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit14.i.i.us.i.peel, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit12.i.i.us.i.peel
  %.sroa.4.0.i.ph.i.us.i.peel = phi i32 [ %i.ex, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit14.i.i.us.i.peel ], [ %i.fj, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit16.i.i.us.i.peel ], [ %i.em, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit12.i.i.us.i.peel ], [ %i.fk, %bb.s ] ; 4 uses
  %i.fl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.fl)
  br i1 %i.dt, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 128
  br i1 %i.fm, label %.lr.ph.i6, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 2048
  br i1 %i.fn, label %.lr.ph.i6, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 65536
  %..i.us.i.peel = select i1 %i.fo, i64 3, i64 4
  br label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %bb.u, %bb.v, %bb.w
  %.sroa.01.0.i.us.i.peel = phi i64 [ 2, %bb.v ], [ %..i.us.i.peel, %bb.w ], [ 1, %bb.u ]
  %i.fp = add i64 %.sroa.01.0.i.us.i.peel, %.promoted157.i ; 11 uses
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.z, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i6
  %.not.i.i.us.i = icmp ult i64 %i.fp, %i.dq
  br i1 %.not.i.i.us.i, label %bb.y, label %.split.i.i.us.i

.split.i.i.us.i:                                  ; preds = %bb.x
  %i.fr = icmp eq i64 %i.fp, %i.dq
  br i1 %i.fr, label %bb.z, label %.split.us161.i

bb.y:                                             ; preds = %bb.x
  %i.fs = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fp
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !276, !noalias !279, !noundef !5
  %i.fu = icmp sgt i8 %i.ft, -65
  br i1 %i.fu, label %bb.z, label %.split.us161.i

bb.z:                                             ; preds = %bb.y, %.split.i.i.us.i, %.lr.ph.i6
  %i.fv = icmp samesign eq i64 %i.fp, %i.dq
  br i1 %i.fv, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fw = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fp
  %i.fx = load i8, ptr %i.fw, align 1, !noalias !280, !noundef !5 ; 3 uses
  %i.fy = icmp sgt i8 %i.fx, -1
  br i1 %i.fy, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit12.i.i.us.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit12.i.i.us.i: ; preds = %bb.aa
  %i.fz = add nuw nsw i64 %i.fp, 1
  %i.ga = icmp samesign ne i64 %i.fz, %i.dq
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = icmp samesign ugt i8 %i.fx, -33
  br i1 %i.gb, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit14.i.i.us.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit14.i.i.us.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit12.i.i.us.i
  %i.gc = add nuw nsw i64 %i.fp, 2
  %i.gd = icmp samesign ne i64 %i.gc, %i.dq
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = icmp samesign ugt i8 %i.fx, -17
  br i1 %i.ge, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit16.i.i.us.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit16.i.i.us.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit14.i.i.us.i
  %i.gf = add nuw nsw i64 %i.fp, 3
  %i.gg = icmp samesign ne i64 %i.gf, %i.dq
  tail call void @llvm.assume(i1 %i.gg)
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split

.split.us161.i:                                   ; preds = %bb.y, %.split.i.i.us.i, %bb.p, %.split.i.i.us.i.peel
  %.lcssa47 = phi i64 [ %.promoted157.i, %.split.i.i.us.i.peel ], [ %.promoted157.i, %bb.p ], [ %i.fp, %.split.i.i.us.i ], [ %i.fp, %bb.y ]
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.do, i64 noundef %i.dq, i64 noundef %.lcssa47, i64 noundef %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20, !noalias !279
  unreachable

default.unreachable:                              ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit
  unreachable

bb.ab:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !273, !noundef !5 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !273, !noundef !5 ; 3 uses
  %.not.i4 = icmp ult i64 %i.gk, %i.gi
  br i1 %.not.i4, label %bb.ad, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.ac:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !273, !noundef !5 ; 2 uses
  %i.go = icmp eq i64 %i.gn, -1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !273, !nonnull !5, !noundef !5 ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !273, !noundef !5 ; 8 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !273, !nonnull !5, !noundef !5 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !273, !noundef !5 ; 12 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.gy = add nsw i64 %i.gw, -1                   ; 4 uses
  br i1 %i.go, label %bb.ao, label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !273, !nonnull !5, !noundef !5
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hc = load i8, ptr %i.hb, align 8, !alias.scope !273, !noundef !5 ; 2 uses
  %i.hd = sub nuw i64 %i.gi, %i.gk                ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gk ; 2 uses
  %i.hf = icmp samesign ult i64 %i.hd, 16
  br i1 %i.hf, label %.lr.ph.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hg = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.hc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.he, i64 noundef range(i64 0, -9223372036854775808) %i.hd), !noalias !281
  %i.hh = extractvalue { i64, i64 } %i.hg, 0
  %i.hi = trunc nuw i64 %i.hh to i1
  br i1 %i.hi, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i.i:                                       ; preds = %bb.ad, %bb.af
  %.sroa.04.011.i.i = phi i64 [ %i.hm, %bb.af ], [ 0, %bb.ad ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sroa.04.011.i.i
  %i.hk = load i8, ptr %i.hj, align 1, !alias.scope !282, !noalias !281, !noundef !5
  %i.hl = icmp eq i8 %i.hk, %i.hc
  br i1 %i.hl, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i
  %i.hm = add nuw nsw i64 %.sroa.04.011.i.i, 1    ; 2 uses
  %exitcond.not.i7.i = icmp eq i64 %i.hm, %i.hd
  br i1 %exitcond.not.i7.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i.i

bb.ag:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %.promoted.i.i = load i64, ptr %i.gx, align 8, !alias.scope !286 ; 2 uses
  %i.hn = add i64 %.promoted.i.i, %i.gy           ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.gs
  br i1 %i.ho, label %.lr.ph.i8.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i8.i:                                      ; preds = %bb.ag
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !286, !noundef !5
  %i.hr = load i64, ptr %i.gl, align 8, !alias.scope !286
  %.fr60.i.i = freeze i64 %i.hr                   ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ht = load i64, ptr %i.hs, align 8, !alias.scope !286 ; 2 uses
  %i.hu = sub i64 %i.gw, %i.ht
  %invariant.op = sub i64 1, %.fr60.i.i
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.aj, %.lr.ph.i8.i
  %.sink70.i.i32 = phi i64 [ %.sink70.i.i, %bb.aj ], [ %i.gn, %.lr.ph.i8.i ] ; 3 uses
  %.sink71.i.i29 = phi i64 [ %.sink71.i.i, %bb.aj ], [ %.promoted.i.i, %.lr.ph.i8.i ] ; 5 uses
  %i.hv = phi i64 [ %i.ie, %bb.aj ], [ %i.hn, %.lr.ph.i8.i ]
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !alias.scope !284, !noalias !281, !noundef !5
  %i.hy = and i8 %i.hx, 63
  %i.hz = zext nneg i8 %i.hy to i64
  %i.ia = shl nuw i64 1, %i.hz
  %i.ib = and i64 %i.ia, %i.hq
  %.not.i9.i = icmp eq i64 %i.ib, 0
  br i1 %.not.i9.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.split.i.i
  %i.ic = add i64 %.sink71.i.i29, %i.gw
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.split.i.i
  %..i.i10.i = tail call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i32, i64 %.fr60.i.i) ; 2 uses
  %i.id = icmp ult i64 %..i.i10.i, %i.gw
  br i1 %i.id, label %.lr.ph, label %.preheader36.i.i.preheader

bb.aj:                                            ; preds = %bb.an, %bb.am, %bb.ah
  %.sink71.i.i = phi i64 [ %i.iz, %bb.an ], [ %i.iy, %bb.am ], [ %i.ic, %bb.ah ] ; 2 uses
  %.sink70.i.i = phi i64 [ 0, %bb.an ], [ %i.hu, %bb.am ], [ 0, %bb.ah ]
  %i.ie = add i64 %.sink71.i.i, %i.gy             ; 2 uses
  %i.if = icmp ult i64 %i.ie, %i.gs
  br i1 %i.if, label %.lr.ph.split.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.ak:                                            ; preds = %.lr.ph
  %i.ig = add nuw nsw i64 %.sroa.04.0.i.i130, 1   ; 2 uses
  %i.ih = icmp ult i64 %i.ig, %i.gw
  br i1 %i.ih, label %.lr.ph, label %.preheader36.i.i.preheader

.preheader36.i.i.preheader:                       ; preds = %bb.ak, %bb.ai
  %i.ii = icmp ult i64 %.sink70.i.i32, %.fr60.i.i
  br i1 %i.ii, label %.lr.ph132, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph:                                           ; preds = %bb.ai, %bb.ak
  %.sroa.04.0.i.i130 = phi i64 [ %i.ig, %bb.ak ], [ %..i.i10.i, %bb.ai ] ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.sroa.04.0.i.i130
  %i.ik = load i8, ptr %i.ij, align 1, !alias.scope !285, !noalias !281, !noundef !5
  %i.il = add i64 %.sroa.04.0.i.i130, %.sink71.i.i29 ; 2 uses
  %i.im = icmp ult i64 %i.il, %i.gs
  tail call void @llvm.assume(i1 %i.im)
  %i.in = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.il
  %i.io = load i8, ptr %i.in, align 1, !alias.scope !284, !noalias !281, !noundef !5
  %.not21.i.i = icmp eq i8 %i.ik, %i.io
  br i1 %.not21.i.i, label %bb.ak, label %bb.an

.preheader36.i.i:                                 ; preds = %bb.al
  %i.ip = icmp ult i64 %.sink70.i.i32, %i.iq
  br i1 %i.ip, label %.lr.ph132, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph132:                                        ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %.sroa.2.0.i.i131 = phi i64 [ %i.iq, %.preheader36.i.i ], [ %.fr60.i.i, %.preheader36.i.i.preheader ]
  %i.iq = add i64 %.sroa.2.0.i.i131, -1           ; 6 uses
  %i.ir = icmp ult i64 %i.iq, %i.gw
  br i1 %i.ir, label %bb.al, label %.split32.us.i.i

bb.al:                                            ; preds = %.lr.ph132
  %i.is = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.iq
  %i.it = load i8, ptr %i.is, align 1, !alias.scope !285, !noalias !281, !noundef !5
  %i.iu = add i64 %i.iq, %.sink71.i.i29           ; 2 uses
  %i.iv = icmp ult i64 %i.iu, %i.gs
  tail call void @llvm.assume(i1 %i.iv)
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.iu
  %i.ix = load i8, ptr %i.iw, align 1, !alias.scope !284, !noalias !281, !noundef !5
  %.not20.i.i = icmp eq i8 %i.it, %i.ix
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.am

.split32.us.i.i:                                  ; preds = %.lr.ph132
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.iq, i64 noundef range(i64 0, -9223372036854775808) %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !287
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.iy = add i64 %.sink71.i.i29, %i.ht
  br label %bb.aj

bb.an:                                            ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %.sink71.i.i29, %invariant.op
  %i.iz = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i130
  br label %bb.aj

bb.ao:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  %.promoted.i12.i = load i64, ptr %i.gx, align 8, !alias.scope !291 ; 2 uses
  %i.ja = add i64 %.promoted.i12.i, %i.gy         ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.gs
  br i1 %i.jb, label %.lr.ph.i15.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i15.i:                                     ; preds = %bb.ao
  %i.jc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.jd = load i64, ptr %i.jc, align 8, !alias.scope !291, !noundef !5
  %i.je = load i64, ptr %i.gl, align 8, !alias.scope !291
  %.fr215.i = freeze i64 %i.je                    ; 7 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.jg = load i64, ptr %i.jf, align 8, !alias.scope !291
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr215.i, i64 range(i64 0, -9223372036854775808) %i.gw)
  %i.jh = add i64 %.fr215.i, -1                   ; 2 uses
  %.first_iter.i16.i = icmp ult i64 %i.jh, %i.gw
  %exitcond.not.i17.i133.not = icmp ult i64 %.fr215.i, %i.gw
  %invariant.op158 = sub i64 1, %.fr215.i
  %.not34.i.us.i136 = icmp eq i64 %.fr215.i, 0    ; 2 uses
  br label %.lr.ph.split.us.i.i3

.lr.ph.split.us.i.i3:                             ; preds = %bb.ar, %.lr.ph.i15.i
  %.sink.i18.i35 = phi i64 [ %.sink.i18.i, %bb.ar ], [ %.promoted.i12.i, %.lr.ph.i15.i ] ; 5 uses
  %i.ji = phi i64 [ %i.kg, %bb.ar ], [ %i.ja, %.lr.ph.i15.i ]
  %i.jj = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !alias.scope !289, !noalias !281, !noundef !5
  %i.jl = and i8 %i.jk, 63
  %i.jm = zext nneg i8 %i.jl to i64
  %i.jn = shl nuw i64 1, %i.jm
  %i.jo = and i64 %i.jn, %i.jd
  %.not.us.i.i = icmp eq i64 %i.jo, 0
  br i1 %.not.us.i.i, label %bb.aq, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i3
  br i1 %exitcond.not.i17.i133.not, label %.lr.ph135, label %.preheader.i19.preheader.i

.preheader35.i.i:                                 ; preds = %.lr.ph135
  %i.jp = add i64 %.sroa.04.0.us.i.i134, 1        ; 2 uses
  %exitcond.not.i17.i = icmp eq i64 %i.jp, %umax.i.i
  br i1 %exitcond.not.i17.i, label %.preheader.i19.preheader.i, label %.lr.ph135

.preheader.i19.preheader.i:                       ; preds = %.preheader35.i.i, %.preheader35.i.i.preheader
  br i1 %.first_iter.i16.i, label %.preheader.i19.us.i.preheader, label %.preheader.split.i21.i

.preheader.i19.us.i.preheader:                    ; preds = %.preheader.i19.preheader.i
  br i1 %.not34.i.us.i136, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph138

.preheader.i19.us.i:                              ; preds = %.lr.ph138
  %.not34.i.us.i = icmp eq i64 %i.jq, 0
  br i1 %.not34.i.us.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph138

.lr.ph138:                                        ; preds = %.preheader.i19.us.i.preheader, %.preheader.i19.us.i
  %.sroa.2.0.us.i.us.i137 = phi i64 [ %i.jq, %.preheader.i19.us.i ], [ %.fr215.i, %.preheader.i19.us.i.preheader ]
  %i.jq = add i64 %.sroa.2.0.us.i.us.i137, -1     ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !alias.scope !290, !noalias !281, !noundef !5
  %i.jt = add i64 %i.jq, %.sink.i18.i35           ; 2 uses
  %i.ju = icmp ult i64 %i.jt, %i.gs
  tail call void @llvm.assume(i1 %i.ju)
  %i.jv = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.jt
  %i.jw = load i8, ptr %i.jv, align 1, !alias.scope !289, !noalias !281, !noundef !5
  %.not20.us.i.us.i = icmp eq i8 %i.js, %i.jw
  br i1 %.not20.us.i.us.i, label %.preheader.i19.us.i, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph138
  %i.jx = add i64 %.sink.i18.i35, %i.jg
  br label %bb.ar

.preheader.split.i21.i:                           ; preds = %.preheader.i19.preheader.i
  br i1 %.not34.i.us.i136, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.split32.us.i22.i

.lr.ph135:                                        ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.04.0.us.i.i134 = phi i64 [ %i.jp, %.preheader35.i.i ], [ %.fr215.i, %.preheader35.i.i.preheader ] ; 4 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.sroa.04.0.us.i.i134
  %i.jz = load i8, ptr %i.jy, align 1, !alias.scope !290, !noalias !281, !noundef !5
  %i.ka = add i64 %.sroa.04.0.us.i.i134, %.sink.i18.i35 ; 2 uses
  %i.kb = icmp ult i64 %i.ka, %i.gs
  tail call void @llvm.assume(i1 %i.kb)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.ka
  %i.kd = load i8, ptr %i.kc, align 1, !alias.scope !289, !noalias !281, !noundef !5
  %.not21.us.i.i = icmp eq i8 %i.jz, %i.kd
  br i1 %.not21.us.i.i, label %.preheader35.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph135
  %.reass282.i.reass.reass = add i64 %.sink.i18.i35, %invariant.op158
  %i.ke = add i64 %.reass282.i.reass.reass, %.sroa.04.0.us.i.i134
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.split.us.i.i3
  %i.kf = add i64 %.sink.i18.i35, %i.gw
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %.split.us.i
  %.sink.i18.i = phi i64 [ %i.kf, %bb.aq ], [ %i.ke, %bb.ap ], [ %i.jx, %.split.us.i ] ; 2 uses
  %i.kg = add i64 %.sink.i18.i, %i.gy             ; 2 uses
  %i.kh = icmp ult i64 %i.kg, %i.gs
  br i1 %i.kh, label %.lr.ph.split.us.i.i3, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.split32.us.i22.i:                                ; preds = %.preheader.split.i21.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.jh, i64 noundef range(i64 0, -9223372036854775808) %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !292
  unreachable

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split: ; preds = %.lr.ph.i.i, %bb.ae, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit16.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit14.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsjfvwIE9w8og_20libp2p_webrtc_websys.exit12.i.i.us.i, %bb.aa
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %bb.aj, %.preheader36.i.i.preheader, %.preheader36.i.i, %bb.ar, %.preheader.i19.us.i.preheader, %.preheader.i19.us.i, %bb.af, %bb.q, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, %.preheader.split.i21.i, %bb.ao, %bb.ag, %bb.ae, %bb.t, %bb.z, %.preheader.i5, %bb.ab
  %storemerge.i.sink.i = phi i8 [ %.promoted206.i, %bb.q ], [ 0, %bb.ag ], [ 0, %bb.ab ], [ 0, %bb.ao ], [ 1, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split ], [ 0, %bb.ae ], [ 1, %.preheader.i19.us.i ], [ 0, %.preheader.i5 ], [ 1, %bb.t ], [ 1, %bb.z ], [ 1, %.preheader36.i.i ], [ 1, %.preheader.split.i21.i ], [ 1, %.preheader.i19.us.i.preheader ], [ 0, %bb.af ], [ 0, %bb.ar ], [ 0, %bb.aj ], [ 1, %.preheader36.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.thread

bb.as:                                            ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.ki = icmp eq i32 %bcmp, 0
  %i.kj = zext i1 %i.ki to i8
  br label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_Cs2BiPHMJCe0P_12send_wrapperINtB5_11SendWrapperNCNvNtCsjfvwIE9w8og_20libp2p_webrtc_websys7upgrade14outbound_inner0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBW_(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsc_NtCs1UlR9w9e4UQ_13ed25519_dalek7signingNtB5_10SigningKeyNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(224)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMCs2BiPHMJCe0P_12send_wrapperINtB2_11SendWrapperNCNvNtCsjfvwIE9w8og_20libp2p_webrtc_websys7upgrade14outbound_inner0E3newBT_(ptr dead_on_unwind noalias nofree noundef writable sret([2736 x i8]) align 8 captures(none) dereferenceable(2736), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(2728)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCs2BiPHMJCe0P_12send_wrapper7futuresINtB4_11SendWrapperNCNvNtCsjfvwIE9w8og_20libp2p_webrtc_websys7upgrade14outbound_inner0ENtNtNtCskKLDkoKarTP_4core6future6future6Future4pollB13_(ptr dead_on_unwind noalias nofree noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #9

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #6

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsdTHTBGblh3Z_11libp2p_core9transport5boxedINtNtB4_3map3MapNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys9transport9TransportNCNvMs_B15_B13_5boxed0EINtB2_8AbstractTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtB6_6muxing5boxed14StreamMuxerBoxEE9listen_onB17_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(232), i64 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtNtCsdTHTBGblh3Z_11libp2p_core9transport5boxedINtNtB4_3map3MapNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys9transport9TransportNCNvMs_B15_B13_5boxed0EINtB2_8AbstractTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtB6_6muxing5boxed14StreamMuxerBoxEE15remove_listenerB17_(ptr noalias nofree noundef align 8 dereferenceable(232), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsdTHTBGblh3Z_11libp2p_core9transport5boxedINtNtB4_3map3MapNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys9transport9TransportNCNvMs_B15_B13_5boxed0EINtB2_8AbstractTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtB6_6muxing5boxed14StreamMuxerBoxEE4dialB17_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(232), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsdTHTBGblh3Z_11libp2p_core9transport5boxedINtNtB4_3map3MapNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys9transport9TransportNCNvMs_B15_B13_5boxed0EINtB2_8AbstractTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdNtNtNtB6_6muxing5boxed14StreamMuxerBoxEE4pollB17_(ptr dead_on_unwind noalias nofree noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias nofree noundef align 8 dereferenceable(232), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvCsdWFkW6IA9sT_7web_sys6window() unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMst_NtNtCsdWFkW6IA9sT_7web_sys8features10gen_WindowNtB5_6Window9navigator(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsv_NtNtCsdWFkW6IA9sT_7web_sys8features13gen_NavigatorNtB5_9Navigator10user_agent(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtCsexYYUdYSQU6_5alloc3stre12to_lowercase(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMs6_NtNtCsdWFkW6IA9sT_7web_sys8features10gen_WindowNtB5_6Window8document(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i32, i32 } @_RNvMsf_NtNtCsdWFkW6IA9sT_7web_sys8features12gen_DocumentNtB5_8Document8location(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs8_NtNtCsdWFkW6IA9sT_7web_sys8features12gen_LocationNtB5_8Location8hostname(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs6NOj3pT9ZIN_19libp2p_webrtc_utils9transport22parse_webrtc_dial_addr(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 4 captures(none) dereferenceable(64), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjfvwIE9w8og_20libp2p_webrtc_websys(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs5wSrZkEBHYe_4ring3rsa7keypair7KeyPairE9drop_slowCs2iisHxfqoT7_15libp2p_identity(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs5g5izYWz4RS_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { noinline }
attributes #18 = { cold }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { noinline noreturn }
attributes #21 = { nounwind }
attributes #22 = { noreturn }
attributes #23 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{i64 0, i64 2}
!5 = !{}
!6 = !{i8 0, i8 4}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = distinct !{!8, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys9transport9TransportEBF_"}
!9 = distinct !{!9, !8, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys9transport9TransportEBF_: argument 0"}
!10 = distinct !{!10, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys9transport6ConfigEBF_"}
!11 = distinct !{!11, !10, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsjfvwIE9w8og_20libp2p_webrtc_websys9transport6ConfigEBF_: argument 0"}
!12 = distinct !{!12, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair7KeypairECsjfvwIE9w8og_20libp2p_webrtc_websys"}
!13 = distinct !{!13, !12, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair7KeypairECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!14 = distinct !{!14, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair12KeyPairInnerECsjfvwIE9w8og_20libp2p_webrtc_websys"}
!15 = distinct !{!15, !14, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity7keypair12KeyPairInnerECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!16 = distinct !{!16, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity3rsa7KeypairECsjfvwIE9w8og_20libp2p_webrtc_websys"}
!17 = distinct !{!17, !16, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs2iisHxfqoT7_15libp2p_identity3rsa7KeypairECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!18 = distinct !{!18, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs5wSrZkEBHYe_4ring3rsa7keypair7KeyPairEECsjfvwIE9w8og_20libp2p_webrtc_websys"}
!19 = distinct !{!19, !18, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs5wSrZkEBHYe_4ring3rsa7keypair7KeyPairEECsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!20 = distinct !{!20, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs5wSrZkEBHYe_4ring3rsa7keypair7KeyPairENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfvwIE9w8og_20libp2p_webrtc_websys"}
!21 = distinct !{!21, !20, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCs5wSrZkEBHYe_4ring3rsa7keypair7KeyPairENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfvwIE9w8og_20libp2p_webrtc_websys: argument 0"}
!22 = !{!9}
!23 = !{!11}
!24 = !{!13}
!25 = !{!15}
!26 = !{!15, !13, !11, !9}
!27 = !{!17}
!28 = !{!19}
!29 = !{!21}
end_hunk_0
