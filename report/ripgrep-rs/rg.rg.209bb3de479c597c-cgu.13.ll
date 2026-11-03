Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.13?download=true
inline.NumInlined: 887
inline.NumDeleted: 421
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXst_NtNtCskKLDkoKarTP_4core3str7patternReNtB5_7Pattern15is_contained_in:bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.promoted157.i, !dbg !13961 ; 4 uses
  %i.ee = icmp samesign eq i64 %.promoted157.i, %i.du, !dbg !13962
  br i1 %i.ee, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.t, !dbg !13963

bb.t:                                             ; preds = %bb.s
  %i.ef = load i8, ptr %i.ed, align 1, !dbg !13964, !noalias !13847, !noundef !413 ; 5 uses
  %i.eg = icmp sgt i8 %i.ef, -1, !dbg !13965
  br i1 %i.eg, label %bb.u, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us.i.peel, !dbg !13965

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us.i.peel: ; preds = %bb.t
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 1, !dbg !13966
  %i.ei = and i8 %i.ef, 31, !dbg !13967
  %i.ej = zext nneg i8 %i.ei to i32, !dbg !13967  ; 3 uses
  %i.ek = add nuw nsw i64 %.promoted157.i, 1, !dbg !13968
  %i.el = icmp samesign ne i64 %i.ek, %i.du, !dbg !13968
  tail call void @llvm.assume(i1 %i.el), !dbg !13969
  %i.em = load i8, ptr %i.eh, align 1, !dbg !13970, !noalias !13847, !noundef !413
  %i.en = shl nuw nsw i32 %i.ej, 6, !dbg !13971
  %i.eo = and i8 %i.em, 63, !dbg !13972
  %i.ep = zext nneg i8 %i.eo to i32, !dbg !13972  ; 2 uses
  %i.eq = or disjoint i32 %i.en, %i.ep, !dbg !13971
  %i.er = icmp samesign ugt i8 %i.ef, -33, !dbg !13973
  br i1 %i.er, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us.i.peel, label %bb.v, !dbg !13973

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us.i.peel
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 2, !dbg !13974
  %i.et = add nuw nsw i64 %.promoted157.i, 2, !dbg !13975
  %i.eu = icmp samesign ne i64 %i.et, %i.du, !dbg !13975
  tail call void @llvm.assume(i1 %i.eu), !dbg !13976
  %i.ev = load i8, ptr %i.es, align 1, !dbg !13977, !noalias !13847, !noundef !413
  %i.ew = shl nuw nsw i32 %i.ep, 6, !dbg !13978
  %i.ex = and i8 %i.ev, 63, !dbg !13979
  %i.ey = zext nneg i8 %i.ex to i32, !dbg !13979
  %i.ez = or disjoint i32 %i.ew, %i.ey, !dbg !13978 ; 2 uses
  %i.fa = shl nuw nsw i32 %i.ej, 12, !dbg !13980
  %i.fb = or disjoint i32 %i.ez, %i.fa, !dbg !13981
  %i.fc = icmp samesign ugt i8 %i.ef, -17, !dbg !13982
  br i1 %i.fc, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us.i.peel, label %bb.v, !dbg !13982

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us.i.peel: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us.i.peel
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ed, i64 3, !dbg !13983
  %i.fe = add nuw nsw i64 %.promoted157.i, 3, !dbg !13984
  %i.ff = icmp samesign ne i64 %i.fe, %i.du, !dbg !13984
  tail call void @llvm.assume(i1 %i.ff), !dbg !13985
  %i.fg = load i8, ptr %i.fd, align 1, !dbg !13986, !noalias !13847, !noundef !413
  %i.fh = shl nuw nsw i32 %i.ej, 18, !dbg !13987
  %i.fi = and i32 %i.fh, 1835008, !dbg !13987
  %i.fj = shl nuw nsw i32 %i.ez, 6, !dbg !13988
  %i.fk = and i8 %i.fg, 63, !dbg !13989
  %i.fl = zext nneg i8 %i.fk to i32, !dbg !13989
  %i.fm = or disjoint i32 %i.fj, %i.fl, !dbg !13988
  %i.fn = or disjoint i32 %i.fm, %i.fi, !dbg !13990
  br label %bb.v, !dbg !13991

bb.u:                                             ; preds = %bb.t
  %i.fo = zext nneg i8 %i.ef to i32, !dbg !13992
  br label %bb.v, !dbg !13993

bb.v:                                             ; preds = %bb.u, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us.i.peel, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us.i.peel, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us.i.peel
  %.sroa.4.0.i.ph.i.us.i.peel = phi i32 [ %i.fb, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us.i.peel ], [ %i.fn, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us.i.peel ], [ %i.eq, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us.i.peel ], [ %i.fo, %bb.u ] ; 4 uses
  %i.fp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 1114112, !dbg !13994
  tail call void @llvm.assume(i1 %i.fp), !dbg !13994
  br i1 %i.dx, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.w, !dbg !13995

bb.w:                                             ; preds = %bb.v
  %i.fq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 128, !dbg !13996
  br i1 %i.fq, label %.lr.ph.i6, label %bb.x, !dbg !13996

bb.x:                                             ; preds = %bb.w
  %i.fr = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 2048, !dbg !13997
  br i1 %i.fr, label %.lr.ph.i6, label %bb.y, !dbg !13997

bb.y:                                             ; preds = %bb.x
  %i.fs = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel, 65536, !dbg !13998
  %..i.us.i.peel = select i1 %i.fs, i64 3, i64 4, !dbg !13999
  br label %.lr.ph.i6, !dbg !13999

.lr.ph.i6:                                        ; preds = %bb.w, %bb.x, %bb.y
  %.sroa.01.0.i.us.i.peel = phi i64 [ 2, %bb.x ], [ %..i.us.i.peel, %bb.y ], [ 1, %bb.w ], !dbg !13999
  %i.ft = add i64 %.sroa.01.0.i.us.i.peel, %.promoted157.i, !dbg !14000 ; 11 uses
  %i.fu = icmp eq i64 %i.ft, 0, !dbg !13955
  br i1 %i.fu, label %bb.ab, label %bb.z, !dbg !13955

bb.z:                                             ; preds = %.lr.ph.i6
  %.not.i.i.us.i = icmp ult i64 %i.ft, %i.du, !dbg !13956
  br i1 %.not.i.i.us.i, label %bb.aa, label %.split.i.i.us.i, !dbg !13956

.split.i.i.us.i:                                  ; preds = %bb.z
  %i.fv = icmp eq i64 %i.ft, %i.du, !dbg !13957
  br i1 %i.fv, label %bb.ab, label %.split.us161.i, !dbg !13958

bb.aa:                                            ; preds = %bb.z
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ft, !dbg !13959
  %i.fx = load i8, ptr %i.fw, align 1, !dbg !13959, !alias.scope !13839, !noalias !13852, !noundef !413
  %i.fy = icmp sgt i8 %i.fx, -65, !dbg !13960
  br i1 %i.fy, label %bb.ab, label %.split.us161.i, !dbg !13958

bb.ab:                                            ; preds = %bb.aa, %.split.i.i.us.i, %.lr.ph.i6
  %i.fz = icmp samesign eq i64 %i.ft, %i.du, !dbg !13962
  br i1 %i.fz, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.ac, !dbg !13963

bb.ac:                                            ; preds = %bb.ab
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ft, !dbg !13961
  %i.gb = load i8, ptr %i.ga, align 1, !dbg !13964, !noalias !13853, !noundef !413 ; 3 uses
  %i.gc = icmp sgt i8 %i.gb, -1, !dbg !13965
  br i1 %i.gc, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us.i, !dbg !13965

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us.i: ; preds = %bb.ac
  %i.gd = add nuw nsw i64 %i.ft, 1, !dbg !13968
  %i.ge = icmp samesign ne i64 %i.gd, %i.du, !dbg !13968
  tail call void @llvm.assume(i1 %i.ge), !dbg !13969
  %i.gf = icmp samesign ugt i8 %i.gb, -33, !dbg !13973
  br i1 %i.gf, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, !dbg !13973

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us.i
  %i.gg = add nuw nsw i64 %i.ft, 2, !dbg !13975
  %i.gh = icmp samesign ne i64 %i.gg, %i.du, !dbg !13975
  tail call void @llvm.assume(i1 %i.gh), !dbg !13976
  %i.gi = icmp samesign ugt i8 %i.gb, -17, !dbg !13982
  br i1 %i.gi, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, !dbg !13982

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us.i
  %i.gj = add nuw nsw i64 %i.ft, 3, !dbg !13984
  %i.gk = icmp samesign ne i64 %i.gj, %i.du, !dbg !13984
  tail call void @llvm.assume(i1 %i.gk), !dbg !13985
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, !dbg !13991

.split.us161.i:                                   ; preds = %bb.aa, %.split.i.i.us.i, %bb.r, %.split.i.i.us.i.peel
  %.lcssa52 = phi i64 [ %.promoted157.i, %.split.i.i.us.i.peel ], [ %.promoted157.i, %bb.r ], [ %i.ft, %.split.i.i.us.i ], [ %i.ft, %bb.aa ]
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ds, i64 noundef %i.du, i64 noundef %.lcssa52, i64 noundef %i.du, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #36, !dbg !14001, !noalias !13852
  unreachable, !dbg !14001

default.unreachable:                              ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit
  unreachable

bb.ad:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit
  %i.gl = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !14002
  %i.gm = load i64, ptr %i.gl, align 8, !dbg !14002, !alias.scope !13835, !noundef !413 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14003
  %i.go = load i64, ptr %i.gn, align 8, !dbg !14003, !alias.scope !13835, !noundef !413 ; 3 uses
  %.not.i4 = icmp ult i64 %i.go, %i.gm, !dbg !14003
  br i1 %.not.i4, label %bb.af, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !14003

bb.ae:                                            ; preds = %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !14004 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !14005
  %i.gr = load i64, ptr %i.gq, align 8, !dbg !14005, !alias.scope !13835, !noundef !413 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, -1, !dbg !14005
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !14006
  %i.gu = load ptr, ptr %i.gt, align 8, !dbg !14006, !alias.scope !13835, !nonnull !413, !noundef !413 ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !14006
  %i.gw = load i64, ptr %i.gv, align 8, !dbg !14006, !alias.scope !13835, !noundef !413 ; 8 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !14006
  %i.gy = load ptr, ptr %i.gx, align 8, !dbg !14006, !alias.scope !13835, !nonnull !413, !noundef !413 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !14006
  %i.ha = load i64, ptr %i.gz, align 8, !dbg !14006, !alias.scope !13835, !noundef !413 ; 12 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !14007 ; 2 uses
  %i.hc = add nsw i64 %i.ha, -1, !dbg !14008      ; 4 uses
  br i1 %i.gs, label %bb.aq, label %bb.ai, !dbg !14009

bb.af:                                            ; preds = %bb.ad
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !14002
  %i.he = load ptr, ptr %i.hd, align 8, !dbg !14002, !alias.scope !13835, !nonnull !413, !noundef !413
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !14010
  %i.hg = load i8, ptr %i.hf, align 8, !dbg !14010, !alias.scope !13835, !noundef !413 ; 2 uses
  %i.hh = sub nuw i64 %i.gm, %i.go, !dbg !14011   ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.go, !dbg !14012 ; 2 uses
  %i.hj = icmp samesign ult i64 %i.hh, 16, !dbg !14013
  br i1 %i.hj, label %.lr.ph.i.i, label %bb.ag, !dbg !14013

bb.ag:                                            ; preds = %bb.af
  %i.hk = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.hg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.hi, i64 noundef range(i64 0, -9223372036854775808) %i.hh), !dbg !14014, !noalias !13857
  %i.hl = extractvalue { i64, i64 } %i.hk, 0, !dbg !14014
  %i.hm = trunc nuw i64 %i.hl to i1, !dbg !14015
  br i1 %i.hm, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !14015

.lr.ph.i.i:                                       ; preds = %bb.af, %bb.ah
  %.sroa.04.011.i.i = phi i64 [ %i.hq, %bb.ah ], [ 0, %bb.af ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.sroa.04.011.i.i, !dbg !14016
  %i.ho = load i8, ptr %i.hn, align 1, !dbg !14016, !alias.scope !13858, !noalias !13857, !noundef !413
  %i.hp = icmp eq i8 %i.ho, %i.hg, !dbg !14016
  br i1 %i.hp, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, label %bb.ah, !dbg !14016

bb.ah:                                            ; preds = %.lr.ph.i.i
  %i.hq = add nuw nsw i64 %.sroa.04.011.i.i, 1, !dbg !14017 ; 2 uses
  %exitcond.not.i7.i = icmp eq i64 %i.hq, %i.hh, !dbg !14018
  br i1 %exitcond.not.i7.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i.i, !dbg !14018

bb.ai:                                            ; preds = %bb.ae
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13859), !dbg !14019
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13860), !dbg !14019
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13861), !dbg !14019
  %.promoted.i.i = load i64, ptr %i.hb, align 8, !alias.scope !13862 ; 2 uses
  %i.hr = add i64 %.promoted.i.i, %i.hc, !dbg !14020 ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %i.gw, !dbg !14021
  br i1 %i.hs, label %.lr.ph.i8.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !14021

.lr.ph.i8.i:                                      ; preds = %bb.ai
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hu = load i64, ptr %i.ht, align 8, !alias.scope !13862, !noundef !413
  %i.hv = load i64, ptr %i.gp, align 8, !alias.scope !13862
  %.fr60.i.i = freeze i64 %i.hv, !dbg !14022      ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hx = load i64, ptr %i.hw, align 8, !alias.scope !13862 ; 2 uses
  %i.hy = sub i64 %i.ha, %i.hx
  %invariant.op = sub i64 1, %.fr60.i.i, !dbg !14022
  br label %.lr.ph.split.i.i, !dbg !14022

.lr.ph.split.i.i:                                 ; preds = %bb.al, %.lr.ph.i8.i
  %.sink70.i.i35 = phi i64 [ %.sink70.i.i, %bb.al ], [ %i.gr, %.lr.ph.i8.i ] ; 3 uses
  %.sink71.i.i32 = phi i64 [ %.sink71.i.i, %bb.al ], [ %.promoted.i.i, %.lr.ph.i8.i ] ; 5 uses
  %i.hz = phi i64 [ %i.ii, %bb.al ], [ %i.hr, %.lr.ph.i8.i ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.hz, !dbg !14023
  %i.ib = load i8, ptr %i.ia, align 1, !dbg !14024, !alias.scope !13860, !noalias !13857, !noundef !413
  %i.ic = and i8 %i.ib, 63, !dbg !14025
  %i.id = zext nneg i8 %i.ic to i64, !dbg !14026
  %i.ie = shl nuw i64 1, %i.id, !dbg !14027
  %i.if = and i64 %i.ie, %i.hu, !dbg !14027
  %.not.i9.i = icmp eq i64 %i.if, 0, !dbg !14027
  br i1 %.not.i9.i, label %bb.aj, label %bb.ak, !dbg !14022

bb.aj:                                            ; preds = %.lr.ph.split.i.i
  %i.ig = add i64 %.sink71.i.i32, %i.ha, !dbg !14028
  br label %bb.al, !dbg !14029

bb.ak:                                            ; preds = %.lr.ph.split.i.i
  %..i.i10.i = tail call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i35, i64 %.fr60.i.i), !dbg !14030 ; 2 uses
  %i.ih = icmp ult i64 %..i.i10.i, %i.ha, !dbg !14031
  br i1 %i.ih, label %.lr.ph, label %.preheader36.i.i.preheader, !dbg !14032

bb.al:                                            ; preds = %bb.ap, %bb.ao, %bb.aj
  %.sink71.i.i = phi i64 [ %i.jd, %bb.ap ], [ %i.jc, %bb.ao ], [ %i.ig, %bb.aj ] ; 2 uses
  %.sink70.i.i = phi i64 [ 0, %bb.ap ], [ %i.hy, %bb.ao ], [ 0, %bb.aj ]
  %i.ii = add i64 %.sink71.i.i, %i.hc, !dbg !14020 ; 2 uses
  %i.ij = icmp ult i64 %i.ii, %i.gw, !dbg !14021
  br i1 %i.ij, label %.lr.ph.split.i.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !14021

bb.am:                                            ; preds = %.lr.ph
  %i.ik = add nuw nsw i64 %.sroa.04.0.i.i135, 1, !dbg !14033 ; 2 uses
  %i.il = icmp ult i64 %i.ik, %i.ha, !dbg !14031
  br i1 %i.il, label %.lr.ph, label %.preheader36.i.i.preheader, !dbg !14032

.preheader36.i.i.preheader:                       ; preds = %bb.am, %bb.ak
  %i.im = icmp ult i64 %.sink70.i.i35, %.fr60.i.i, !dbg !14034
  br i1 %i.im, label %.lr.ph137, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !14035

.lr.ph:                                           ; preds = %bb.ak, %bb.am
  %.sroa.04.0.i.i135 = phi i64 [ %i.ik, %bb.am ], [ %..i.i10.i, %bb.ak ] ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.sroa.04.0.i.i135, !dbg !14036
  %i.io = load i8, ptr %i.in, align 1, !dbg !14036, !alias.scope !13861, !noalias !13857, !noundef !413
  %i.ip = add i64 %.sroa.04.0.i.i135, %.sink71.i.i32, !dbg !14037 ; 2 uses
  %i.iq = icmp ult i64 %i.ip, %i.gw, !dbg !14038
  tail call void @llvm.assume(i1 %i.iq), !dbg !14039
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.ip, !dbg !14040
  %i.is = load i8, ptr %i.ir, align 1, !dbg !14041, !alias.scope !13860, !noalias !13857, !noundef !413
  %.not21.i.i = icmp eq i8 %i.io, %i.is, !dbg !14036
  br i1 %.not21.i.i, label %bb.am, label %bb.ap, !dbg !14036

.preheader36.i.i:                                 ; preds = %bb.an
  %i.it = icmp ult i64 %.sink70.i.i35, %i.iu, !dbg !14034
  br i1 %i.it, label %.lr.ph137, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !14035

.lr.ph137:                                        ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %.sroa.2.0.i.i136 = phi i64 [ %i.iu, %.preheader36.i.i ], [ %.fr60.i.i, %.preheader36.i.i.preheader ]
  %i.iu = add i64 %.sroa.2.0.i.i136, -1, !dbg !14042 ; 6 uses
  %i.iv = icmp ult i64 %i.iu, %i.ha, !dbg !14043
  br i1 %i.iv, label %bb.an, label %.split32.us.i.i, !dbg !14043

bb.an:                                            ; preds = %.lr.ph137
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.iu, !dbg !14043
  %i.ix = load i8, ptr %i.iw, align 1, !dbg !14043, !alias.scope !13861, !noalias !13857, !noundef !413
  %i.iy = add i64 %i.iu, %.sink71.i.i32, !dbg !14044 ; 2 uses
  %i.iz = icmp ult i64 %i.iy, %i.gw, !dbg !14045
  tail call void @llvm.assume(i1 %i.iz), !dbg !14046
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.iy, !dbg !14047
  %i.jb = load i8, ptr %i.ja, align 1, !dbg !14048, !alias.scope !13860, !noalias !13857, !noundef !413
  %.not20.i.i = icmp eq i8 %i.ix, %i.jb, !dbg !14043
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.ao, !dbg !14043

.split32.us.i.i:                                  ; preds = %.lr.ph137
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.iu, i64 noundef range(i64 0, -9223372036854775808) %i.ha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #36, !dbg !14043, !noalias !13868
  unreachable, !dbg !14043

bb.ao:                                            ; preds = %bb.an
  %i.jc = add i64 %.sink71.i.i32, %i.hx, !dbg !14049
  br label %bb.al, !dbg !14050

bb.ap:                                            ; preds = %.lr.ph
  %.reass.i.reass.reass = add i64 %.sink71.i.i32, %invariant.op
  %i.jd = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i135, !dbg !14051
  br label %bb.al, !dbg !14052

bb.aq:                                            ; preds = %bb.ae
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13869), !dbg !14053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13870), !dbg !14053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13871), !dbg !14053
  %.promoted.i12.i = load i64, ptr %i.hb, align 8, !alias.scope !13872 ; 2 uses
  %i.je = add i64 %.promoted.i12.i, %i.hc, !dbg !14054 ; 2 uses
  %i.jf = icmp ult i64 %i.je, %i.gw, !dbg !14055
  br i1 %i.jf, label %.lr.ph.i15.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !14055

.lr.ph.i15.i:                                     ; preds = %bb.aq
  %i.jg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.jh = load i64, ptr %i.jg, align 8, !alias.scope !13872, !noundef !413
  %i.ji = load i64, ptr %i.gp, align 8, !alias.scope !13872
  %.fr215.i = freeze i64 %i.ji, !dbg !14056       ; 7 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.jk = load i64, ptr %i.jj, align 8, !alias.scope !13872
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr215.i, i64 range(i64 0, -9223372036854775808) %i.ha), !dbg !14056
  %i.jl = add i64 %.fr215.i, -1, !dbg !14056      ; 2 uses
  %.first_iter.i16.i = icmp ult i64 %i.jl, %i.ha
  %exitcond.not.i17.i138.not = icmp ult i64 %.fr215.i, %i.ha
  %invariant.op170 = sub i64 1, %.fr215.i, !dbg !14056
  %.not34.i.us.i141 = icmp eq i64 %.fr215.i, 0    ; 2 uses
  br label %.lr.ph.split.us.i.i3, !dbg !14056

.lr.ph.split.us.i.i3:                             ; preds = %bb.at, %.lr.ph.i15.i
  %.sink.i18.i38 = phi i64 [ %.sink.i18.i, %bb.at ], [ %.promoted.i12.i, %.lr.ph.i15.i ] ; 5 uses
  %i.jm = phi i64 [ %i.kk, %bb.at ], [ %i.je, %.lr.ph.i15.i ]
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.jm, !dbg !14057
  %i.jo = load i8, ptr %i.jn, align 1, !dbg !14058, !alias.scope !13870, !noalias !13857, !noundef !413
  %i.jp = and i8 %i.jo, 63, !dbg !14059
  %i.jq = zext nneg i8 %i.jp to i64, !dbg !14060
  %i.jr = shl nuw i64 1, %i.jq, !dbg !14061
  %i.js = and i64 %i.jr, %i.jh, !dbg !14061
  %.not.us.i.i = icmp eq i64 %i.js, 0, !dbg !14061
  br i1 %.not.us.i.i, label %bb.as, label %.preheader35.i.i.preheader, !dbg !14056

.preheader35.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i3
  br i1 %exitcond.not.i17.i138.not, label %.lr.ph140, label %.preheader.i19.preheader.i, !dbg !14062

.preheader35.i.i:                                 ; preds = %.lr.ph140
  %i.jt = add i64 %.sroa.04.0.us.i.i139, 1, !dbg !14063 ; 2 uses
  %exitcond.not.i17.i = icmp eq i64 %i.jt, %umax.i.i, !dbg !14064
  br i1 %exitcond.not.i17.i, label %.preheader.i19.preheader.i, label %.lr.ph140, !dbg !14062

.preheader.i19.preheader.i:                       ; preds = %.preheader35.i.i, %.preheader35.i.i.preheader
  br i1 %.first_iter.i16.i, label %.preheader.i19.us.i.preheader, label %.preheader.split.i21.i

.preheader.i19.us.i.preheader:                    ; preds = %.preheader.i19.preheader.i
  br i1 %.not34.i.us.i141, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph143, !dbg !14065

.preheader.i19.us.i:                              ; preds = %.lr.ph143
  %.not34.i.us.i = icmp eq i64 %i.ju, 0, !dbg !14066
  br i1 %.not34.i.us.i, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph143, !dbg !14065

.lr.ph143:                                        ; preds = %.preheader.i19.us.i.preheader, %.preheader.i19.us.i
  %.sroa.2.0.us.i.us.i142 = phi i64 [ %i.ju, %.preheader.i19.us.i ], [ %.fr215.i, %.preheader.i19.us.i.preheader ]
  %i.ju = add i64 %.sroa.2.0.us.i.us.i142, -1, !dbg !14067 ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.ju, !dbg !14068
  %i.jw = load i8, ptr %i.jv, align 1, !dbg !14068, !alias.scope !13871, !noalias !13857, !noundef !413
  %i.jx = add i64 %i.ju, %.sink.i18.i38, !dbg !14069 ; 2 uses
  %i.jy = icmp ult i64 %i.jx, %i.gw, !dbg !14070
  tail call void @llvm.assume(i1 %i.jy), !dbg !14071
  %i.jz = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.jx, !dbg !14072
  %i.ka = load i8, ptr %i.jz, align 1, !dbg !14073, !alias.scope !13870, !noalias !13857, !noundef !413
  %.not20.us.i.us.i = icmp eq i8 %i.jw, %i.ka, !dbg !14068
  br i1 %.not20.us.i.us.i, label %.preheader.i19.us.i, label %.split.us.i, !dbg !14068

.split.us.i:                                      ; preds = %.lr.ph143
  %i.kb = add i64 %.sink.i18.i38, %i.jk, !dbg !14074
  br label %bb.at, !dbg !14075

.preheader.split.i21.i:                           ; preds = %.preheader.i19.preheader.i
  br i1 %.not34.i.us.i141, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.split32.us.i22.i, !dbg !14065

.lr.ph140:                                        ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.04.0.us.i.i139 = phi i64 [ %i.jt, %.preheader35.i.i ], [ %.fr215.i, %.preheader35.i.i.preheader ] ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.gy, i64 %.sroa.04.0.us.i.i139, !dbg !14076
  %i.kd = load i8, ptr %i.kc, align 1, !dbg !14076, !alias.scope !13871, !noalias !13857, !noundef !413
  %i.ke = add i64 %.sroa.04.0.us.i.i139, %.sink.i18.i38, !dbg !14077 ; 2 uses
  %i.kf = icmp ult i64 %i.ke, %i.gw, !dbg !14078
  tail call void @llvm.assume(i1 %i.kf), !dbg !14079
  %i.kg = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.ke, !dbg !14080
  %i.kh = load i8, ptr %i.kg, align 1, !dbg !14081, !alias.scope !13870, !noalias !13857, !noundef !413
  %.not21.us.i.i = icmp eq i8 %i.kd, %i.kh, !dbg !14076
  br i1 %.not21.us.i.i, label %.preheader35.i.i, label %bb.ar, !dbg !14076

bb.ar:                                            ; preds = %.lr.ph140
  %.reass282.i.reass.reass = add i64 %.sink.i18.i38, %invariant.op170
  %i.ki = add i64 %.reass282.i.reass.reass, %.sroa.04.0.us.i.i139, !dbg !14082
  br label %bb.at, !dbg !14083

bb.as:                                            ; preds = %.lr.ph.split.us.i.i3
  %i.kj = add i64 %.sink.i18.i38, %i.ha, !dbg !14084
  br label %bb.at, !dbg !14085

bb.at:                                            ; preds = %bb.as, %bb.ar, %.split.us.i
  %.sink.i18.i = phi i64 [ %i.kj, %bb.as ], [ %i.ki, %bb.ar ], [ %i.kb, %.split.us.i ] ; 2 uses
  %i.kk = add i64 %.sink.i18.i, %i.hc, !dbg !14054 ; 2 uses
  %i.kl = icmp ult i64 %i.kk, %i.gw, !dbg !14055
  br i1 %i.kl, label %.lr.ph.split.us.i.i3, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !14055

.split32.us.i22.i:                                ; preds = %.preheader.split.i21.i
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.jl, i64 noundef range(i64 0, -9223372036854775808) %i.ha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #36, !dbg !14068, !noalias !13873
  unreachable, !dbg !14068

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split: ; preds = %.lr.ph.i.i, %bb.ag, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit16.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit14.i.i.us.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg.exit12.i.i.us.i, %bb.ac
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !14086

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %bb.al, %.preheader36.i.i.preheader, %.preheader36.i.i, %bb.at, %.preheader.i19.us.i.preheader, %.preheader.i19.us.i, %bb.ah, %bb.s, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split, %.preheader.split.i21.i, %bb.aq, %bb.ai, %bb.ag, %bb.v, %bb.ab, %.preheader.i5, %bb.ad
  %storemerge.i.sink.i = phi i8 [ %.promoted206.i, %bb.s ], [ 0, %bb.ai ], [ 0, %bb.ad ], [ 0, %bb.aq ], [ 1, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.sink.split ], [ 0, %bb.ag ], [ 1, %.preheader.i19.us.i ], [ 0, %.preheader.i5 ], [ 1, %bb.v ], [ 1, %bb.ab ], [ 1, %.preheader36.i.i ], [ 1, %.preheader.split.i21.i ], [ 1, %.preheader.i19.us.i.preheader ], [ 0, %bb.ah ], [ 0, %bb.at ], [ 0, %bb.al ], [ 1, %.preheader36.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14086
  br label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.thread, !dbg !14086

bb.au:                                            ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1), !dbg !14087
  %i.km = icmp eq i32 %bcmp, 0, !dbg !14087
  %i.kn = zext i1 %i.km to i8, !dbg !14087
  br label %_RNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains.exit.thread, !dbg !14088
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsv_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheNtNtNtBP_5panic11unwind_safe13RefUnwindSafeNtNtBP_6marker4SendNtB38_4SyncNtB2r_10UnwindSafeEL_EIBJ_uE4callCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 !dbg !14089 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !14091, !nonnull !413, !noundef !413
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !14091
  %i.c = load ptr, ptr %i.b, align 8, !dbg !14091, !nonnull !413, !align !612, !noundef !413
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !14092
  %i.e = load ptr, ptr %i.d, align 8, !dbg !14092, !invariant.load !413, !nonnull !413
  tail call void %i.e(ptr noalias nofree noundef nonnull sret([1400 x i8]) align 8 captures(address) dereferenceable(1400) %0, ptr noundef nonnull %i.a) #37, !dbg !14092
  ret void, !dbg !14093
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14094 {
bb.a:
  %i.a = icmp eq i64 %2, 0, !dbg !14107
  br i1 %i.a, label %bb.b, label %.lr.ph.split.us, !dbg !14108

.lr.ph.split.us:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef range(i64 1, -9223372036854775808) %2), !dbg !14109, !noalias !14104
  %i.e = load i64, ptr %i.c, align 8, !dbg !14109, !alias.scope !14106, !noundef !413 ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1, !dbg !14109
  tail call void @llvm.assume(i1 %i.f), !dbg !14109
  %i.g = load ptr, ptr %i.b, align 8, !dbg !14109, !alias.scope !14106, !nonnull !413, !noundef !413
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e, !dbg !14109
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 range(i64 1, -9223372036854775808) %2, i1 false), !dbg !14109
  %i.i = load <2 x i64>, ptr %i.c, align 8, !dbg !14109
  %i.j = insertelement <2 x i64> poison, i64 %2, i64 0, !dbg !14109
  %i.k = shufflevector <2 x i64> %i.j, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !14109
  %i.l = add <2 x i64> %i.i, %i.k, !dbg !14109
  store <2 x i64> %i.l, ptr %i.c, align 8, !dbg !14109
  br label %bb.b, !dbg !14108

bb.b:                                             ; preds = %.lr.ph.split.us, %bb.a
  ret ptr null, !dbg !14110
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14111 {
_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg.exit:
  %i.a = tail call noundef ptr @_RINvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull %2), !dbg !14112
  ret ptr %i.a, !dbg !14113
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14114 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %2, 0, !dbg !14301
  br i1 %i.b, label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph, !dbg !14302

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 24 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b, !dbg !14302

bb.b:                                             ; preds = %.lr.ph, %bb.an
  %.sroa.0.064 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.143, %bb.an ] ; 19 uses
  %.sroa.6.063 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.141, %bb.an ] ; 33 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14271), !dbg !14303
  %i.j = load i64, ptr %0, align 8, !dbg !14304, !range !566, !alias.scope !14271, !noundef !413
  %i.k = trunc nuw i64 %i.j to i1, !dbg !14305
  %i.l = load i64, ptr %i.c, align 8, !dbg !14306, !range !566, !alias.scope !14271, !noundef !413
  %i.m = trunc nuw i64 %i.l to i1, !dbg !14306    ; 2 uses
  %i.n = load i64, ptr %i.d, align 8, !dbg !14306, !range !609, !alias.scope !14271, !noundef !413 ; 4 uses
  br i1 %i.k, label %bb.c, label %bb.d, !dbg !14305

bb.c:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.s, label %bb.z, !dbg !14307

bb.d:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.e, label %bb.l, !dbg !14308

bb.e:                                             ; preds = %bb.d
  switch i64 %i.n, label %default.unreachable [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
  ], !dbg !14309

default.unreachable:                              ; preds = %bb.ag, %bb.z, %bb.s, %bb.l, %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.o = call { i64, ptr } @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.064, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.063), !dbg !14310
  br label %_RNvXNtCsgwyS1EwTFAS_8grep_cli3wtrNtB2_14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write5write.exit, !dbg !14311

bb.g:                                             ; preds = %bb.e
  %i.p = call { i64, ptr } @_RNvXso_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.064, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.063), !dbg !14312
  br label %_RNvXNtCsgwyS1EwTFAS_8grep_cli3wtrNtB2_14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write5write.exit, !dbg !14313

bb.h:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.e, align 8, !dbg !14314, !range !528, !alias.scope !14280, !noundef !413
  %i.r = load i64, ptr %i.f, align 8, !dbg !14315, !alias.scope !14280, !noundef !413 ; 3 uses
  %i.s = icmp sgt i64 %i.r, -1, !dbg !14316
  call void @llvm.assume(i1 %i.s), !dbg !14317
  %i.t = sub nsw i64 %i.q, %i.r, !dbg !14318
  %i.u = icmp ult i64 %.sroa.6.063, %i.t, !dbg !14319
  br i1 %i.u, label %.thread79, label %bb.j, !dbg !14319, !prof !524

bb.i:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.e, align 8, !dbg !14320, !range !528, !alias.scope !14280, !noundef !413
  %i.w = load i64, ptr %i.f, align 8, !dbg !14321, !alias.scope !14280, !noundef !413 ; 3 uses
  %i.x = icmp sgt i64 %i.w, -1, !dbg !14322
  call void @llvm.assume(i1 %i.x), !dbg !14323
  %i.y = sub nsw i64 %i.v, %i.w, !dbg !14324
  %i.z = icmp ult i64 %.sroa.6.063, %i.y, !dbg !14325
  br i1 %i.z, label %.thread79, label %bb.k, !dbg !14325, !prof !524

bb.j:                                             ; preds = %bb.h
  %i.aa = call { i64, ptr } @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutE10write_coldCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.064, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.063) #35, !dbg !14326
  br label %_RNvXNtCsgwyS1EwTFAS_8grep_cli3wtrNtB2_14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write5write.exit, !dbg !14326

bb.k:                                             ; preds = %bb.i
  %i.ab = call { i64, ptr } @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StderrE10write_coldCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.064, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.063) #35, !dbg !14327
  br label %_RNvXNtCsgwyS1EwTFAS_8grep_cli3wtrNtB2_14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write5write.exit, !dbg !14327

bb.l:                                             ; preds = %bb.d
  switch i64 %i.n, label %default.unreachable [
    i64 0, label %bb.m
    i64 1, label %bb.n
    i64 2, label %bb.o
    i64 3, label %bb.p
  ], !dbg !14328

bb.m:                                             ; preds = %bb.l
  %i.ac = call { i64, ptr } @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.064, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.063), !dbg !14329
  br label %_RNvXNtCsgwyS1EwTFAS_8grep_cli3wtrNtB2_14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write5write.exit, !dbg !14330

bb.n:                                             ; preds = %bb.l
  %i.ad = call { i64, ptr } @_RNvXso_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.064, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.063), !dbg !14331
  br label %_RNvXNtCsgwyS1EwTFAS_8grep_cli3wtrNtB2_14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write5write.exit, !dbg !14332

bb.o:                                             ; preds = %bb.l
  %i.ae = load i64, ptr %i.e, align 8, !dbg !14333, !range !528, !alias.scope !14292, !noundef !413
  %i.af = load i64, ptr %i.f, align 8, !dbg !14334, !alias.scope !14292, !noundef !413 ; 3 uses
  %i.ag = icmp sgt i64 %i.af, -1, !dbg !14335
  call void @llvm.assume(i1 %i.ag), !dbg !14336
  %i.ah = sub nsw i64 %i.ae, %i.af, !dbg !14337
  %i.ai = icmp ult i64 %.sroa.6.063, %i.ah, !dbg !14338
  br i1 %i.ai, label %.thread79, label %bb.q, !dbg !14338, !prof !524

bb.p:                                             ; preds = %bb.l
  %i.aj = load i64, ptr %i.e, align 8, !dbg !14339, !range !528, !alias.scope !14292, !noundef !413
  %i.ak = load i64, ptr %i.f, align 8, !dbg !14340, !alias.scope !14292, !noundef !413 ; 3 uses
  %i.al = icmp sgt i64 %i.ak, -1, !dbg !14341
  call void @llvm.assume(i1 %i.al), !dbg !14342
  %i.am = sub nsw i64 %i.aj, %i.ak, !dbg !14343
  %i.an = icmp ult i64 %.sroa.6.063, %i.am, !dbg !14344
  br i1 %i.an, label %.thread79, label %bb.r, !dbg !14344, !prof !524

bb.q:                                             ; preds = %bb.o
  %i.ao = call { i64, ptr } @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutE10write_coldCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.064, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.063) #35, !dbg !14345
  br label %_RNvXNtCsgwyS1EwTFAS_8grep_cli3wtrNtB2_14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write5write.exit, !dbg !14345

bb.r:                                             ; preds = %bb.p
  %i.ap = call { i64, ptr } @_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCsG258MDvU3F_3std2io5stdio6StderrE10write_coldCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.064, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.063) #35, !dbg !14346
  br label %_RNvXNtCsgwyS1EwTFAS_8grep_cli3wtrNtB2_14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write5write.exit, !dbg !14346

bb.s:                                             ; preds = %bb.c
  switch i64 %i.n, label %default.unreachable [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
    i64 3, label %bb.w
  ], !dbg !14347

bb.t:                                             ; preds = %bb.s
  %i.aq = call { i64, ptr } @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.064, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.063), !dbg !14348
  br label %_RNvXNtCsgwyS1EwTFAS_8grep_cli3wtrNtB2_14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write5write.exit, !dbg !14349

bb.u:                                             ; preds = %bb.s
  %i.ar = call { i64, ptr } @_RNvXso_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.064, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.063), !dbg !14350
  br label %_RNvXNtCsgwyS1EwTFAS_8grep_cli3wtrNtB2_14StandardStreamNtNtNtCskKLDkoKarTP_4core2io5write5Write5write.exit, !dbg !14351

bb.v:                                             ; preds = %bb.s
  %i.as = load i64, ptr %i.e, align 8, !dbg !14352, !range !528, !alias.scope !14293, !noundef !413
  %i.at = load i64, ptr %i.f, align 8, !dbg !14353, !alias.scope !14293, !noundef !413 ; 3 uses
  %i.au = icmp sgt i64 %i.at, -1, !dbg !14354
  call void @llvm.assume(i1 %i.au), !dbg !14355
  %i.av = sub nsw i64 %i.as, %i.at, !dbg !14356
end_hunk_0
