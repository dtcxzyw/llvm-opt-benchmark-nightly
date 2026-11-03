Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_transformers-745d844d1c694a70.candle_transformers.e469297c722ac0f-cgu.08?download=true
inline.NumInlined: 3910
inline.NumDeleted: 502
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXst_NtNtCsf3Ta7LF998c_4core3str7patternReNtB5_7Pattern15is_contained_in:bb.a
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 %.promoted156.i ; 4 uses
  %i.ea = icmp samesign eq i64 %.promoted156.i, %i.dq
  br i1 %i.ea, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eb = load i8, ptr %i.dz, align 1, !noalias !30885, !noundef !4 ; 5 uses
  %i.ec = icmp sgt i8 %i.eb, -1
  br i1 %i.ec, label %bb.s, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i.peel

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i.peel: ; preds = %bb.r
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 1
  %i.ee = and i8 %i.eb, 31
  %i.ef = zext nneg i8 %i.ee to i32               ; 3 uses
  %i.eg = add nuw nsw i64 %.promoted156.i, 1
  %i.eh = icmp samesign ne i64 %i.eg, %i.dq
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = load i8, ptr %i.ed, align 1, !noalias !30885, !noundef !4
  %i.ej = shl nuw nsw i32 %i.ef, 6
  %i.ek = and i8 %i.ei, 63
  %i.el = zext nneg i8 %i.ek to i32               ; 2 uses
  %i.em = or disjoint i32 %i.ej, %i.el
  %i.en = icmp samesign ugt i8 %i.eb, -33
  br i1 %i.en, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i.peel, label %bb.t

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i.peel
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %i.ep = add nuw nsw i64 %.promoted156.i, 2
  %i.eq = icmp samesign ne i64 %i.ep, %i.dq
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = load i8, ptr %i.eo, align 1, !noalias !30885, !noundef !4
  %i.es = shl nuw nsw i32 %i.el, 6
  %i.et = and i8 %i.er, 63
  %i.eu = zext nneg i8 %i.et to i32
  %i.ev = or disjoint i32 %i.es, %i.eu            ; 2 uses
  %i.ew = shl nuw nsw i32 %i.ef, 12
  %i.ex = or disjoint i32 %i.ev, %i.ew
  %i.ey = icmp samesign ugt i8 %i.eb, -17
  br i1 %i.ey, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit16.i.i.us.i.peel, label %bb.t

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit16.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i.peel
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dz, i64 3
  %i.fa = add nuw nsw i64 %.promoted156.i, 3
  %i.fb = icmp samesign ne i64 %i.fa, %i.dq
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = load i8, ptr %i.ez, align 1, !noalias !30885, !noundef !4
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

bb.t:                                             ; preds = %bb.s, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit16.i.i.us.i.peel, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i.peel, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i.peel
  %.sroa.4.0.i.ph.i.us.i.peel = phi i32 [ %i.ex, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i.peel ], [ %i.fj, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit16.i.i.us.i.peel ], [ %i.em, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i.peel ], [ %i.fk, %bb.s ] ; 4 uses
  %i.fl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.fl)
  br i1 %i.dt, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.u

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
  %i.fp = add i64 %.sroa.01.0.i.us.i.peel, %.promoted156.i ; 11 uses
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.z, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i6
  %.not.i.i.us.i = icmp ult i64 %i.fp, %i.dq
  br i1 %.not.i.i.us.i, label %bb.y, label %.split.i.i.us.i

.split.i.i.us.i:                                  ; preds = %bb.x
  %i.fr = icmp eq i64 %i.fp, %i.dq
  br i1 %i.fr, label %bb.z, label %.split.us160.i

bb.y:                                             ; preds = %bb.x
  %i.fs = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fp
  %i.ft = load i8, ptr %i.fs, align 1, !alias.scope !30883, !noalias !30886, !noundef !4
  %i.fu = icmp sgt i8 %i.ft, -65
  br i1 %i.fu, label %bb.z, label %.split.us160.i

bb.z:                                             ; preds = %bb.y, %.split.i.i.us.i, %.lr.ph.i6
  %i.fv = icmp samesign eq i64 %i.fp, %i.dq
  br i1 %i.fv, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fw = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.fp
  %i.fx = load i8, ptr %i.fw, align 1, !noalias !30887, !noundef !4 ; 3 uses
  %i.fy = icmp sgt i8 %i.fx, -1
  br i1 %i.fy, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i: ; preds = %bb.aa
  %i.fz = add nuw nsw i64 %i.fp, 1
  %i.ga = icmp samesign ne i64 %i.fz, %i.dq
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = icmp samesign ugt i8 %i.fx, -33
  br i1 %i.gb, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i
  %i.gc = add nuw nsw i64 %i.fp, 2
  %i.gd = icmp samesign ne i64 %i.gc, %i.dq
  tail call void @llvm.assume(i1 %i.gd)
  %i.ge = icmp samesign ugt i8 %i.fx, -17
  br i1 %i.ge, label %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit16.i.i.us.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split

_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit16.i.i.us.i: ; preds = %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i
  %i.gf = add nuw nsw i64 %i.fp, 3
  %i.gg = icmp samesign ne i64 %i.gf, %i.dq
  tail call void @llvm.assume(i1 %i.gg)
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split

.split.us160.i:                                   ; preds = %bb.y, %.split.i.i.us.i, %bb.p, %.split.i.i.us.i.peel
  %.lcssa47 = phi i64 [ %.promoted156.i, %.split.i.i.us.i.peel ], [ %.promoted156.i, %bb.p ], [ %i.fp, %.split.i.i.us.i ], [ %i.fp, %bb.y ]
  tail call void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.do, i64 noundef %i.dq, i64 noundef %.lcssa47, i64 noundef %i.dq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @328) #32, !noalias !30886
  unreachable

default.unreachable:                              ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit
  unreachable

bb.ab:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !30882, !noundef !4 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !30882, !noundef !4 ; 3 uses
  %.not.i4 = icmp ult i64 %i.gk, %i.gi
  br i1 %.not.i4, label %bb.ad, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.ac:                                            ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !30882, !noundef !4 ; 2 uses
  %i.go = icmp eq i64 %i.gn, -1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.gq = load ptr, ptr %i.gp, align 8, !alias.scope !30882, !nonnull !4, !noundef !4 ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gs = load i64, ptr %i.gr, align 8, !alias.scope !30882, !noundef !4 ; 8 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.gu = load ptr, ptr %i.gt, align 8, !alias.scope !30882, !nonnull !4, !noundef !4 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !30882, !noundef !4 ; 12 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.gy = add nsw i64 %i.gw, -1                   ; 4 uses
  br i1 %i.go, label %bb.ao, label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !30882, !nonnull !4, !noundef !4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hc = load i8, ptr %i.hb, align 8, !alias.scope !30882, !noundef !4 ; 2 uses
  %i.hd = sub nuw i64 %i.gi, %i.gk                ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.gk ; 2 uses
  %i.hf = icmp samesign ult i64 %i.hd, 16
  br i1 %i.hf, label %.lr.ph.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hg = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %i.hc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.he, i64 noundef range(i64 0, -9223372036854775808) %i.hd), !noalias !30888
  %i.hh = extractvalue { i64, i64 } %i.hg, 0
  %i.hi = trunc nuw i64 %i.hh to i1
  br i1 %i.hi, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i.i:                                       ; preds = %bb.ad, %bb.af
  %.sroa.04.011.i.i = phi i64 [ %i.hm, %bb.af ], [ 0, %bb.ad ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sroa.04.011.i.i
  %i.hk = load i8, ptr %i.hj, align 1, !alias.scope !30889, !noalias !30888, !noundef !4
  %i.hl = icmp eq i8 %i.hk, %i.hc
  br i1 %i.hl, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i.i
  %i.hm = add nuw nsw i64 %.sroa.04.011.i.i, 1    ; 2 uses
  %exitcond.not.i7.i = icmp eq i64 %i.hm, %i.hd
  br i1 %exitcond.not.i7.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i.i

bb.ag:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30892)
  %.promoted.i.i = load i64, ptr %i.gx, align 8, !alias.scope !30893 ; 2 uses
  %i.hn = add i64 %.promoted.i.i, %i.gy           ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %i.gs
  br i1 %i.ho, label %.lr.ph.i8.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i8.i:                                      ; preds = %bb.ag
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !30893, !noundef !4
  %i.hr = load i64, ptr %i.gl, align 8, !alias.scope !30893 ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ht = load i64, ptr %i.hs, align 8, !alias.scope !30893 ; 2 uses
  %i.hu = sub i64 %i.gw, %i.ht
  %invariant.op = sub i64 1, %i.hr
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.aj, %.lr.ph.i8.i
  %.sink70.i.i32 = phi i64 [ %.sink70.i.i, %bb.aj ], [ %i.gn, %.lr.ph.i8.i ] ; 3 uses
  %.sink71.i.i29 = phi i64 [ %.sink71.i.i, %bb.aj ], [ %.promoted.i.i, %.lr.ph.i8.i ] ; 5 uses
  %i.hv = phi i64 [ %i.if, %bb.aj ], [ %i.hn, %.lr.ph.i8.i ]
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !alias.scope !30891, !noalias !30888, !noundef !4
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
  %i.id = tail call i64 @llvm.umax.i64(i64 %i.hr, i64 %.sink70.i.i32) ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.gw
  br i1 %i.ie, label %.lr.ph, label %.preheader36.i.i.preheader

bb.aj:                                            ; preds = %bb.an, %bb.am, %bb.ah
  %.sink71.i.i = phi i64 [ %i.ja, %bb.an ], [ %i.iz, %bb.am ], [ %i.ic, %bb.ah ] ; 2 uses
  %.sink70.i.i = phi i64 [ 0, %bb.an ], [ %i.hu, %bb.am ], [ 0, %bb.ah ]
  %i.if = add i64 %.sink71.i.i, %i.gy             ; 2 uses
  %i.ig = icmp ult i64 %i.if, %i.gs
  br i1 %i.ig, label %.lr.ph.split.i.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.ak:                                            ; preds = %.lr.ph
  %i.ih = add nuw nsw i64 %.sroa.04.0.i.i130, 1   ; 2 uses
  %i.ii = icmp ult i64 %i.ih, %i.gw
  br i1 %i.ii, label %.lr.ph, label %.preheader36.i.i.preheader

.preheader36.i.i.preheader:                       ; preds = %bb.ak, %bb.ai
  %i.ij = icmp ult i64 %.sink70.i.i32, %i.hr
  br i1 %i.ij, label %.lr.ph132, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph:                                           ; preds = %bb.ai, %bb.ak
  %.sroa.04.0.i.i130 = phi i64 [ %i.ih, %bb.ak ], [ %i.id, %bb.ai ] ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.sroa.04.0.i.i130
  %i.il = load i8, ptr %i.ik, align 1, !alias.scope !30892, !noalias !30888, !noundef !4
  %i.im = add i64 %.sroa.04.0.i.i130, %.sink71.i.i29 ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.gs
  tail call void @llvm.assume(i1 %i.in)
  %i.io = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.im
  %i.ip = load i8, ptr %i.io, align 1, !alias.scope !30891, !noalias !30888, !noundef !4
  %.not21.i.i = icmp eq i8 %i.il, %i.ip
  br i1 %.not21.i.i, label %bb.ak, label %bb.an

.preheader36.i.i:                                 ; preds = %bb.al
  %i.iq = icmp ult i64 %.sink70.i.i32, %i.ir
  br i1 %i.iq, label %.lr.ph132, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph132:                                        ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %.sroa.2.0.i.i131 = phi i64 [ %i.ir, %.preheader36.i.i ], [ %i.hr, %.preheader36.i.i.preheader ]
  %i.ir = add i64 %.sroa.2.0.i.i131, -1           ; 6 uses
  %i.is = icmp ult i64 %i.ir, %i.gw
  br i1 %i.is, label %bb.al, label %.split32.us.i.i

bb.al:                                            ; preds = %.lr.ph132
  %i.it = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.ir
  %i.iu = load i8, ptr %i.it, align 1, !alias.scope !30892, !noalias !30888, !noundef !4
  %i.iv = add i64 %i.ir, %.sink71.i.i29           ; 2 uses
  %i.iw = icmp ult i64 %i.iv, %i.gs
  tail call void @llvm.assume(i1 %i.iw)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.iv
  %i.iy = load i8, ptr %i.ix, align 1, !alias.scope !30891, !noalias !30888, !noundef !4
  %.not20.i.i = icmp eq i8 %i.iu, %i.iy
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.am

.split32.us.i.i:                                  ; preds = %.lr.ph132
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ir, i64 noundef range(i64 0, -9223372036854775808) %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32, !noalias !30894
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.iz = add i64 %.sink71.i.i29, %i.ht
  br label %bb.aj

bb.an:                                            ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %.sink71.i.i29, %invariant.op
  %i.ja = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i130
  br label %bb.aj

bb.ao:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30897)
  %.promoted.i11.i = load i64, ptr %i.gx, align 8, !alias.scope !30898 ; 2 uses
  %i.jb = add i64 %.promoted.i11.i, %i.gy         ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.gs
  br i1 %i.jc, label %.lr.ph.i14.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i14.i:                                     ; preds = %bb.ao
  %i.jd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.je = load i64, ptr %i.jd, align 8, !alias.scope !30898, !noundef !4
  %i.jf = load i64, ptr %i.gl, align 8, !alias.scope !30898
  %.fr214.i = freeze i64 %i.jf                    ; 7 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.jh = load i64, ptr %i.jg, align 8, !alias.scope !30898
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr214.i, i64 range(i64 0, -9223372036854775808) %i.gw)
  %i.ji = add i64 %.fr214.i, -1                   ; 2 uses
  %.first_iter.i15.i = icmp ult i64 %i.ji, %i.gw
  %exitcond.not.i16.i133.not = icmp ult i64 %.fr214.i, %i.gw
  %invariant.op158 = sub i64 1, %.fr214.i
  %.not34.i.us.i136 = icmp eq i64 %.fr214.i, 0    ; 2 uses
  br label %.lr.ph.split.us.i.i3

.lr.ph.split.us.i.i3:                             ; preds = %bb.ar, %.lr.ph.i14.i
  %.sink.i17.i35 = phi i64 [ %.sink.i17.i, %bb.ar ], [ %.promoted.i11.i, %.lr.ph.i14.i ] ; 5 uses
  %i.jj = phi i64 [ %i.kh, %bb.ar ], [ %i.jb, %.lr.ph.i14.i ]
  %i.jk = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !alias.scope !30896, !noalias !30888, !noundef !4
  %i.jm = and i8 %i.jl, 63
  %i.jn = zext nneg i8 %i.jm to i64
  %i.jo = shl nuw i64 1, %i.jn
  %i.jp = and i64 %i.jo, %i.je
  %.not.us.i.i = icmp eq i64 %i.jp, 0
  br i1 %.not.us.i.i, label %bb.aq, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i3
  br i1 %exitcond.not.i16.i133.not, label %.lr.ph135, label %.preheader.i18.preheader.i

.preheader35.i.i:                                 ; preds = %.lr.ph135
  %i.jq = add i64 %.sroa.04.0.us.i.i134, 1        ; 2 uses
  %exitcond.not.i16.i = icmp eq i64 %i.jq, %umax.i.i
  br i1 %exitcond.not.i16.i, label %.preheader.i18.preheader.i, label %.lr.ph135

.preheader.i18.preheader.i:                       ; preds = %.preheader35.i.i, %.preheader35.i.i.preheader
  br i1 %.first_iter.i15.i, label %.preheader.i18.us.i.preheader, label %.preheader.i18.i

.preheader.i18.us.i.preheader:                    ; preds = %.preheader.i18.preheader.i
  br i1 %.not34.i.us.i136, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph138

.preheader.i18.us.i:                              ; preds = %.lr.ph138
  %.not34.i.us.i = icmp eq i64 %i.jr, 0
  br i1 %.not34.i.us.i, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph138

.lr.ph138:                                        ; preds = %.preheader.i18.us.i.preheader, %.preheader.i18.us.i
  %.sroa.2.0.us.i.us.i137 = phi i64 [ %i.jr, %.preheader.i18.us.i ], [ %.fr214.i, %.preheader.i18.us.i.preheader ]
  %i.jr = add i64 %.sroa.2.0.us.i.us.i137, -1     ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !alias.scope !30897, !noalias !30888, !noundef !4
  %i.ju = add i64 %i.jr, %.sink.i17.i35           ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.gs
  tail call void @llvm.assume(i1 %i.jv)
  %i.jw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.ju
  %i.jx = load i8, ptr %i.jw, align 1, !alias.scope !30896, !noalias !30888, !noundef !4
  %.not20.us.i.us.i = icmp eq i8 %i.jt, %i.jx
  br i1 %.not20.us.i.us.i, label %.preheader.i18.us.i, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph138
  %i.jy = add i64 %.sink.i17.i35, %i.jh
  br label %bb.ar

.lr.ph135:                                        ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.04.0.us.i.i134 = phi i64 [ %i.jq, %.preheader35.i.i ], [ %.fr214.i, %.preheader35.i.i.preheader ] ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.sroa.04.0.us.i.i134
  %i.ka = load i8, ptr %i.jz, align 1, !alias.scope !30897, !noalias !30888, !noundef !4
  %i.kb = add i64 %.sroa.04.0.us.i.i134, %.sink.i17.i35 ; 2 uses
  %i.kc = icmp ult i64 %i.kb, %i.gs
  tail call void @llvm.assume(i1 %i.kc)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.kb
  %i.ke = load i8, ptr %i.kd, align 1, !alias.scope !30896, !noalias !30888, !noundef !4
  %.not21.us.i.i = icmp eq i8 %i.ka, %i.ke
  br i1 %.not21.us.i.i, label %.preheader35.i.i, label %bb.ap

.preheader.i18.i:                                 ; preds = %.preheader.i18.preheader.i
  br i1 %.not34.i.us.i136, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.split32.us.i19.i

.split32.us.i19.i:                                ; preds = %.preheader.i18.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ji, i64 noundef range(i64 0, -9223372036854775808) %i.gw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #32, !noalias !30899
  unreachable

bb.ap:                                            ; preds = %.lr.ph135
  %.reass281.i.reass.reass = add i64 %.sink.i17.i35, %invariant.op158
  %i.kf = add i64 %.reass281.i.reass.reass, %.sroa.04.0.us.i.i134
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.split.us.i.i3
  %i.kg = add i64 %.sink.i17.i35, %i.gw
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %.split.us.i
  %.sink.i17.i = phi i64 [ %i.kg, %bb.aq ], [ %i.kf, %bb.ap ], [ %i.jy, %.split.us.i ] ; 2 uses
  %i.kh = add i64 %.sink.i17.i, %i.gy             ; 2 uses
  %i.ki = icmp ult i64 %i.kh, %i.gs
  br i1 %i.ki, label %.lr.ph.split.us.i.i3, label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split: ; preds = %.lr.ph.i.i, %bb.ae, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit16.i.i.us.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit14.i.i.us.i, %_RNvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1dZk1kIfPhr_19candle_transformers.exit12.i.i.us.i, %bb.aa
  br label %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %bb.aj, %.preheader36.i.i.preheader, %.preheader36.i.i, %bb.ar, %.preheader.i18.us.i.preheader, %.preheader.i18.us.i, %bb.af, %bb.q, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, %.preheader.i18.i, %bb.ao, %bb.ag, %bb.ae, %bb.t, %bb.z, %.preheader.i5, %bb.ab
  %storemerge.i.sink.i = phi i8 [ %.promoted205.i, %bb.q ], [ 0, %bb.ag ], [ 0, %bb.ab ], [ 0, %bb.ao ], [ 1, %_RNvXsv_NtNtCsf3Ta7LF998c_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split ], [ 0, %bb.ae ], [ 1, %.preheader.i18.us.i ], [ 0, %.preheader.i5 ], [ 1, %bb.t ], [ 1, %bb.z ], [ 1, %.preheader36.i.i ], [ 1, %.preheader.i18.i ], [ 1, %.preheader.i18.us.i.preheader ], [ 0, %bb.af ], [ 0, %bb.ar ], [ 0, %bb.aj ], [ 1, %.preheader36.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread

bb.as:                                            ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.kj = icmp eq i32 %bcmp, 0
  %i.kk = zext i1 %i.kj to i8
  br label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsy_NtCsixB2fhfFqiD_12regex_syntax3hirNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !30900, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsy_NtCsixB2fhfFqiD_12regex_syntax3hirNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsy_NtCsixB2fhfFqiD_12regex_syntax3hirNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.139, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsz_NtCsixB2fhfFqiD_12regex_syntax3astNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i32, ptr %0, align 8, !range !30901, !noundef !4
  switch i32 %i.e, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 14, label %bb.p
    i32 15, label %bb.q
    i32 16, label %bb.r
    i32 17, label %bb.s
    i32 18, label %bb.t
    i32 19, label %bb.u
    i32 20, label %bb.v
    i32 21, label %bb.w
    i32 22, label %bb.x
    i32 23, label %bb.y
    i32 24, label %bb.z
    i32 25, label %bb.aa
    i32 26, label %bb.ab
    i32 27, label %bb.ac
    i32 28, label %bb.ad
    i32 29, label %bb.ae
    i32 30, label %bb.af
    i32 31, label %bb.ag
    i32 32, label %bb.ah
    i32 33, label %bb.ai
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @336, i64 noundef 20)
  br label %bb.aj

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @337, i64 noundef 18)
  br label %bb.aj

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @338, i64 noundef 17)
  br label %bb.aj

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @339, i64 noundef 17)
  br label %bb.aj

bb.f:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @340, i64 noundef 13)
  br label %bb.aj

bb.g:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @341, i64 noundef 12)
  br label %bb.aj

bb.h:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @342, i64 noundef 14)
  br label %bb.aj

bb.i:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @343, i64 noundef 14)
  br label %bb.aj

bb.j:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @344, i64 noundef 16)
  br label %bb.aj

bb.k:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @345, i64 noundef 21)
  br label %bb.aj

bb.l:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @346, i64 noundef 19)
  br label %bb.aj

bb.m:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @347, i64 noundef 18)
  br label %bb.aj

bb.n:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @348, i64 noundef 20)
  br label %bb.aj

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.d, align 8
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @349, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @350, i64 noundef 8, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @323)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aj

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.c, align 8
  %i.v = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @351, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @350, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @323)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aj

bb.q:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @352, i64 noundef 17)
  br label %bb.aj

bb.r:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @353, i64 noundef 16)
  br label %bb.aj

bb.s:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.b, align 8
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @354, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @350, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @323)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aj

bb.t:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @355, i64 noundef 14)
  br label %bb.aj

bb.u:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @356, i64 noundef 16)
  br label %bb.aj

bb.v:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @357, i64 noundef 22)
  br label %bb.aj

bb.w:                                             ; preds = %bb.a
  %i.ad = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 13)
  br label %bb.aj

bb.x:                                             ; preds = %bb.a
  %i.ae = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @359, i64 noundef 13)
  br label %bb.aj

bb.y:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.af, ptr %i.a, align 8
  %i.ag = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @361, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @360)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aj

bb.z:                                             ; preds = %bb.a
  %i.ah = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @362, i64 noundef 22)
  br label %bb.aj

bb.aa:                                            ; preds = %bb.a
  %i.ai = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @363, i64 noundef 27)
  br label %bb.aj

bb.ab:                                            ; preds = %bb.a
  %i.aj = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @364, i64 noundef 23)
  br label %bb.aj

bb.ac:                                            ; preds = %bb.a
  %i.ak = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @365, i64 noundef 17)
  br label %bb.aj
end_hunk_0
