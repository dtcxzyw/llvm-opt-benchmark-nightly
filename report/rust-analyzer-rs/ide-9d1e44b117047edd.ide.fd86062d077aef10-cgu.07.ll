Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.07?download=true
inline.NumInlined: 2602
inline.NumDeleted: 931
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXst_NtNtCshzWfHUSfYae_4core3str7patternReNtB5_7Pattern15is_contained_in:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5446)
  %i.eg = load i64, ptr %i.b, align 8, !range !8, !alias.scope !5446, !noundef !5
  %i.eh = trunc nuw i64 %i.eg to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.eh, label %bb.ai, label %.preheader.i8

.preheader.i8:                                    ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.ek = load i8, ptr %i.ej, align 2, !range !6, !alias.scope !5447, !noundef !5
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %.preheader.i8
  %.promoted.i = load i64, ptr %i.ei, align 8, !alias.scope !5446 ; 12 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !5447, !nonnull !5, !noundef !5 ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.eq = load i64, ptr %i.ep, align 8, !alias.scope !5447, !noundef !5 ; 14 uses
  %.promoted52.i = load i8, ptr %i.em, align 8, !alias.scope !5447 ; 2 uses
  %i.er = trunc nuw i8 %.promoted52.i to i1
  %i.es = icmp eq i64 %.promoted.i, 0
  br i1 %i.es, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i9
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.eq
  br i1 %.not.i.i.i.peel, label %bb.aa, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.z
  %i.et = icmp eq i64 %.promoted.i, %i.eq
  br i1 %i.et, label %bb.ab, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.promoted.i
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !5448, !noalias !5449, !noundef !5
  %i.ew = icmp sgt i8 %i.ev, -65
  br i1 %i.ew, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa, %.split.i.i.i.peel, %.lr.ph.i9
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.promoted.i ; 4 uses
  %i.ey = icmp samesign eq i64 %.promoted.i, %i.eq
  br i1 %i.ey, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ez = load i8, ptr %i.ex, align 1, !noalias !5450, !noundef !5 ; 5 uses
  %i.fa = icmp sgt i8 %i.ez, -1
  br i1 %i.fa, label %bb.ad, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.peel

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.peel: ; preds = %bb.ac
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %i.fc = and i8 %i.ez, 31
  %i.fd = zext nneg i8 %i.fc to i32               ; 3 uses
  %i.fe = add nuw nsw i64 %.promoted.i, 1
  %i.ff = icmp samesign ne i64 %i.fe, %i.eq
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = load i8, ptr %i.fb, align 1, !noalias !5450, !noundef !5
  %i.fh = shl nuw nsw i32 %i.fd, 6
  %i.fi = and i8 %i.fg, 63
  %i.fj = zext nneg i8 %i.fi to i32               ; 2 uses
  %i.fk = or disjoint i32 %i.fh, %i.fj
  %i.fl = icmp samesign ugt i8 %i.ez, -33
  br i1 %i.fl, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.peel, label %bb.ae

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.peel
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.fn = add nuw nsw i64 %.promoted.i, 2
  %i.fo = icmp samesign ne i64 %i.fn, %i.eq
  tail call void @llvm.assume(i1 %i.fo)
  %i.fp = load i8, ptr %i.fm, align 1, !noalias !5450, !noundef !5
  %i.fq = shl nuw nsw i32 %i.fj, 6
  %i.fr = and i8 %i.fp, 63
  %i.fs = zext nneg i8 %i.fr to i32
  %i.ft = or disjoint i32 %i.fq, %i.fs            ; 2 uses
  %i.fu = shl nuw nsw i32 %i.fd, 12
  %i.fv = or disjoint i32 %i.ft, %i.fu
  %i.fw = icmp samesign ugt i8 %i.ez, -17
  br i1 %i.fw, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.peel, label %bb.ae

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.peel
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %i.fy = add nuw nsw i64 %.promoted.i, 3
  %i.fz = icmp samesign ne i64 %i.fy, %i.eq
  tail call void @llvm.assume(i1 %i.fz)
  %i.ga = load i8, ptr %i.fx, align 1, !noalias !5450, !noundef !5
  %i.gb = shl nuw nsw i32 %i.fd, 18
  %i.gc = and i32 %i.gb, 1835008
  %i.gd = shl nuw nsw i32 %i.ft, 6
  %i.ge = and i8 %i.ga, 63
  %i.gf = zext nneg i8 %i.ge to i32
  %i.gg = or disjoint i32 %i.gd, %i.gf
  %i.gh = or disjoint i32 %i.gg, %i.gc
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gi = zext nneg i8 %i.ez to i32
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.peel, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.fv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i.peel ], [ %i.gh, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i.peel ], [ %i.fk, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i.peel ], [ %i.gi, %bb.ad ] ; 4 uses
  %i.gj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.gj)
  br i1 %i.er, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.gk, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.gl, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.gm, i64 3, i64 4
  br label %bb.aj

bb.ai:                                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !5446, !noundef !5 ; 2 uses
  %i.gp = icmp eq i64 %i.go, -1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !5446, !nonnull !5, !noundef !5 ; 8 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !5446, !noundef !5 ; 10 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.gv = load ptr, ptr %i.gu, align 8, !alias.scope !5446, !nonnull !5, !noundef !5 ; 5 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !5446, !noundef !5 ; 14 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.gz = add nsw i64 %i.gx, -1                   ; 5 uses
  br i1 %i.gp, label %bb.aw, label %bb.ao

bb.aj:                                            ; preds = %bb.af, %bb.ag, %bb.ah
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.ag ], [ %..i.i.peel, %bb.ah ], [ 1, %bb.af ]
  %i.ha = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5451)
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not.i.i.i = icmp ult i64 %i.ha, %i.eq
  br i1 %.not.i.i.i, label %bb.al, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.ak
  %i.hc = icmp eq i64 %i.ha, %i.eq
  br i1 %i.hc, label %bb.am, label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.hd = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ha
  %i.he = load i8, ptr %i.hd, align 1, !alias.scope !5448, !noalias !5452, !noundef !5
  %i.hf = icmp sgt i8 %i.he, -65
  br i1 %i.hf, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al, %.split.i.i.i, %bb.aj
  %i.hg = icmp samesign eq i64 %i.ha, %i.eq
  br i1 %i.hg, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hh = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ha
  %i.hi = load i8, ptr %i.hh, align 1, !noalias !5453, !noundef !5 ; 3 uses
  %i.hj = icmp sgt i8 %i.hi, -1
  br i1 %i.hj, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i: ; preds = %bb.an
  %i.hk = add nuw nsw i64 %i.ha, 1
  %i.hl = icmp samesign ne i64 %i.hk, %i.eq
  tail call void @llvm.assume(i1 %i.hl)
  %i.hm = icmp samesign ugt i8 %i.hi, -33
  br i1 %i.hm, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i
  %i.hn = add nuw nsw i64 %i.ha, 2
  %i.ho = icmp samesign ne i64 %i.hn, %i.eq
  tail call void @llvm.assume(i1 %i.ho)
  %i.hp = icmp samesign ugt i8 %i.hi, -17
  br i1 %i.hp, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i
  %i.hq = add nuw nsw i64 %i.ha, 3
  %i.hr = icmp samesign ne i64 %i.hq, %i.eq
  tail call void @llvm.assume(i1 %i.hr)
  br label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.al, %.split.i.i.i, %bb.aa, %.split.i.i.i.peel
  %.lcssa81 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.aa ], [ %i.ha, %.split.i.i.i ], [ %i.ha, %bb.al ]
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eo, i64 noundef %i.eq, i64 noundef %.lcssa81, i64 noundef %i.eq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #33, !noalias !5452
  unreachable

bb.ao:                                            ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5456)
  %.promoted.i.i = load i64, ptr %i.gy, align 8, !alias.scope !5457 ; 2 uses
  %i.hs = add i64 %.promoted.i.i, %i.gz           ; 2 uses
  %i.ht = icmp ult i64 %i.hs, %i.gt
  br i1 %i.ht, label %.lr.ph.i1.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i1.i:                                      ; preds = %bb.ao
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hv = load i64, ptr %i.hu, align 8, !alias.scope !5457, !noundef !5
  %i.hw = load i64, ptr %i.ei, align 8, !alias.scope !5457
  %.fr60.i.i = freeze i64 %i.hw                   ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hy = load i64, ptr %i.hx, align 8, !alias.scope !5457 ; 2 uses
  %i.hz = sub i64 %i.gx, %i.hy
  %invariant.op = sub i64 1, %.fr60.i.i
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.ar, %.lr.ph.i1.i
  %.sink70.i.i47 = phi i64 [ %.sink70.i.i, %bb.ar ], [ %i.go, %.lr.ph.i1.i ] ; 3 uses
  %.sink71.i.i44 = phi i64 [ %.sink71.i.i, %bb.ar ], [ %.promoted.i.i, %.lr.ph.i1.i ] ; 5 uses
  %i.ia = phi i64 [ %i.ij, %bb.ar ], [ %i.hs, %.lr.ph.i1.i ]
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.ia
  %i.ic = load i8, ptr %i.ib, align 1, !alias.scope !5455, !noalias !5458, !noundef !5
  %i.id = and i8 %i.ic, 63
  %i.ie = zext nneg i8 %i.id to i64
  %i.if = shl nuw i64 1, %i.ie
  %i.ig = and i64 %i.if, %i.hv
  %.not.i2.i = icmp eq i64 %i.ig, 0
  br i1 %.not.i2.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.split.i.i
  %i.ih = add i64 %.sink71.i.i44, %i.gx
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.split.i.i
  %..i.i3.i = tail call noundef i64 @llvm.umax.i64(i64 %.sink70.i.i47, i64 %.fr60.i.i) ; 2 uses
  %i.ii = icmp ult i64 %..i.i3.i, %i.gx
  br i1 %i.ii, label %.lr.ph154, label %.preheader36.i.i.preheader

bb.ar:                                            ; preds = %bb.av, %bb.au, %bb.ap
  %.sink71.i.i = phi i64 [ %i.je, %bb.av ], [ %i.jd, %bb.au ], [ %i.ih, %bb.ap ] ; 2 uses
  %.sink70.i.i = phi i64 [ 0, %bb.av ], [ %i.hz, %bb.au ], [ 0, %bb.ap ]
  %i.ij = add i64 %.sink71.i.i, %i.gz             ; 2 uses
  %i.ik = icmp ult i64 %i.ij, %i.gt
  br i1 %i.ik, label %.lr.ph.split.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.as:                                            ; preds = %.lr.ph154
  %i.il = add nuw nsw i64 %.sroa.04.0.i.i153, 1   ; 2 uses
  %i.im = icmp ult i64 %i.il, %i.gx
  br i1 %i.im, label %.lr.ph154, label %.preheader36.i.i.preheader

.preheader36.i.i.preheader:                       ; preds = %bb.as, %bb.aq
  %i.in = icmp ult i64 %.sink70.i.i47, %.fr60.i.i
  br i1 %i.in, label %.lr.ph156, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph154:                                        ; preds = %bb.aq, %bb.as
  %.sroa.04.0.i.i153 = phi i64 [ %i.il, %bb.as ], [ %..i.i3.i, %bb.aq ] ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sroa.04.0.i.i153
  %i.ip = load i8, ptr %i.io, align 1, !alias.scope !5456, !noalias !5458, !noundef !5
  %i.iq = add i64 %.sroa.04.0.i.i153, %.sink71.i.i44 ; 2 uses
  %i.ir = icmp ult i64 %i.iq, %i.gt
  tail call void @llvm.assume(i1 %i.ir)
  %i.is = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.iq
  %i.it = load i8, ptr %i.is, align 1, !alias.scope !5455, !noalias !5458, !noundef !5
  %.not21.i.i = icmp eq i8 %i.ip, %i.it
  br i1 %.not21.i.i, label %bb.as, label %bb.av

.preheader36.i.i:                                 ; preds = %bb.at
  %i.iu = icmp ult i64 %.sink70.i.i47, %i.iv
  br i1 %i.iu, label %.lr.ph156, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph156:                                        ; preds = %.preheader36.i.i.preheader, %.preheader36.i.i
  %.sroa.2.0.i.i155 = phi i64 [ %i.iv, %.preheader36.i.i ], [ %.fr60.i.i, %.preheader36.i.i.preheader ]
  %i.iv = add i64 %.sroa.2.0.i.i155, -1           ; 6 uses
  %i.iw = icmp ult i64 %i.iv, %i.gx
  br i1 %i.iw, label %bb.at, label %.split32.us.i.i

bb.at:                                            ; preds = %.lr.ph156
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.iv
  %i.iy = load i8, ptr %i.ix, align 1, !alias.scope !5456, !noalias !5458, !noundef !5
  %i.iz = add i64 %i.iv, %.sink71.i.i44           ; 2 uses
  %i.ja = icmp ult i64 %i.iz, %i.gt
  tail call void @llvm.assume(i1 %i.ja)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.iz
  %i.jc = load i8, ptr %i.jb, align 1, !alias.scope !5455, !noalias !5458, !noundef !5
  %.not20.i.i = icmp eq i8 %i.iy, %i.jc
  br i1 %.not20.i.i, label %.preheader36.i.i, label %bb.au

.split32.us.i.i:                                  ; preds = %.lr.ph156
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.iv, i64 noundef range(i64 0, -9223372036854775808) %i.gx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #33, !noalias !5459
  unreachable

bb.au:                                            ; preds = %bb.at
  %i.jd = add i64 %.sink71.i.i44, %i.hy
  br label %bb.ar

bb.av:                                            ; preds = %.lr.ph154
  %.reass.i.reass.reass = add i64 %.sink71.i.i44, %invariant.op
  %i.je = add i64 %.reass.i.reass.reass, %.sroa.04.0.i.i153
  br label %bb.ar

bb.aw:                                            ; preds = %bb.ai
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5462)
  %.promoted.i4.i = load i64, ptr %i.gy, align 8, !alias.scope !5463 ; 3 uses
  %i.jf = add i64 %.promoted.i4.i, %i.gz          ; 3 uses
  %i.jg = icmp ult i64 %i.jf, %i.gt
  br i1 %i.jg, label %.lr.ph.i7.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i7.i:                                      ; preds = %bb.aw
  %i.jh = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ji = load i64, ptr %i.jh, align 8, !alias.scope !5463, !noundef !5 ; 2 uses
  %i.jj = load i64, ptr %i.ei, align 8, !alias.scope !5463
  %.fr63.i = freeze i64 %i.jj                     ; 10 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.jl = load i64, ptr %i.jk, align 8, !alias.scope !5463
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.fr63.i, i64 range(i64 0, -9223372036854775808) %i.gx) ; 2 uses
  %i.jm = add i64 %.fr63.i, -1                    ; 2 uses
  %.first_iter.i8.i = icmp ult i64 %i.jm, %i.gx
  %i.jn = sub i64 1, %.fr63.i                     ; 2 uses
  br i1 %.first_iter.i8.i, label %.lr.ph.split.us.i.us.i.preheader, label %.lr.ph.split.us.i.i11.preheader

.lr.ph.split.us.i.i11.preheader:                  ; preds = %.lr.ph.i7.i
  %exitcond.not.i.i157.not = icmp ult i64 %.fr63.i, %i.gx
  br label %.lr.ph.split.us.i.i11

.lr.ph.split.us.i.us.i.preheader:                 ; preds = %.lr.ph.i7.i
  %exitcond.not.i.us.i160.not = icmp ult i64 %.fr63.i, %i.gx
  %.not34.i.us.us.i163 = icmp eq i64 %.fr63.i, 0
  br label %.lr.ph.split.us.i.us.i

.lr.ph.split.us.i.us.i:                           ; preds = %.lr.ph.split.us.i.us.i.preheader, %bb.az
  %.sink.i9.us.i52 = phi i64 [ %.sink.i9.us.i, %bb.az ], [ %.promoted.i4.i, %.lr.ph.split.us.i.us.i.preheader ] ; 5 uses
  %i.jo = phi i64 [ %i.kn, %bb.az ], [ %i.jf, %.lr.ph.split.us.i.us.i.preheader ]
  %i.jp = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !alias.scope !5461, !noalias !5458, !noundef !5
  %i.jr = and i8 %i.jq, 63
  %i.js = zext nneg i8 %i.jr to i64
  %i.jt = shl nuw i64 1, %i.js
  %i.ju = and i64 %i.jt, %i.ji
  %.not.us.i.us.i = icmp eq i64 %i.ju, 0
  br i1 %.not.us.i.us.i, label %bb.ay, label %.preheader35.i.us.i.preheader

.preheader35.i.us.i.preheader:                    ; preds = %.lr.ph.split.us.i.us.i
  br i1 %exitcond.not.i.us.i160.not, label %.lr.ph162, label %.preheader.i10.us.us.i.preheader

.preheader35.i.us.i:                              ; preds = %.lr.ph162
  %i.jv = add i64 %.sroa.04.0.us.i.us.i161, 1     ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %i.jv, %umax.i.i
  br i1 %exitcond.not.i.us.i, label %.preheader.i10.us.us.i.preheader, label %.lr.ph162

.preheader.i10.us.us.i.preheader:                 ; preds = %.preheader35.i.us.i, %.preheader35.i.us.i.preheader
  br i1 %.not34.i.us.us.i163, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph165

.lr.ph162:                                        ; preds = %.preheader35.i.us.i.preheader, %.preheader35.i.us.i
  %.sroa.04.0.us.i.us.i161 = phi i64 [ %i.jv, %.preheader35.i.us.i ], [ %.fr63.i, %.preheader35.i.us.i.preheader ] ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sroa.04.0.us.i.us.i161
  %i.jx = load i8, ptr %i.jw, align 1, !alias.scope !5462, !noalias !5458, !noundef !5
  %i.jy = add i64 %.sroa.04.0.us.i.us.i161, %.sink.i9.us.i52 ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %i.gt
  tail call void @llvm.assume(i1 %i.jz)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.jy
  %i.kb = load i8, ptr %i.ka, align 1, !alias.scope !5461, !noalias !5458, !noundef !5
  %.not21.us.i.us.i = icmp eq i8 %i.jx, %i.kb
  br i1 %.not21.us.i.us.i, label %.preheader35.i.us.i, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph162
  %i.kc = add i64 %.sink.i9.us.i52, %i.jn
  %i.kd = add i64 %i.kc, %.sroa.04.0.us.i.us.i161
  br label %bb.az

.preheader.i10.us.us.i:                           ; preds = %.lr.ph165
  %.not34.i.us.us.i = icmp eq i64 %i.ke, 0
  br i1 %.not34.i.us.us.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph165

.lr.ph165:                                        ; preds = %.preheader.i10.us.us.i.preheader, %.preheader.i10.us.us.i
  %.sroa.2.0.us.i.us.us.i164 = phi i64 [ %i.ke, %.preheader.i10.us.us.i ], [ %.fr63.i, %.preheader.i10.us.us.i.preheader ]
  %i.ke = add i64 %.sroa.2.0.us.i.us.us.i164, -1  ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !alias.scope !5462, !noalias !5458, !noundef !5
  %i.kh = add i64 %i.ke, %.sink.i9.us.i52         ; 2 uses
  %i.ki = icmp ult i64 %i.kh, %i.gt
  tail call void @llvm.assume(i1 %i.ki)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.kh
  %i.kk = load i8, ptr %i.kj, align 1, !alias.scope !5461, !noalias !5458, !noundef !5
  %.not20.us.i.us.us.i = icmp eq i8 %i.kg, %i.kk
  br i1 %.not20.us.i.us.us.i, label %.preheader.i10.us.us.i, label %.split.us.us.i

.split.us.us.i:                                   ; preds = %.lr.ph165
  %i.kl = add i64 %.sink.i9.us.i52, %i.jl
  br label %bb.az

bb.ay:                                            ; preds = %.lr.ph.split.us.i.us.i
  %i.km = add i64 %.sink.i9.us.i52, %i.gx
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.split.us.us.i, %bb.ax
  %.sink.i9.us.i = phi i64 [ %i.km, %bb.ay ], [ %i.kd, %bb.ax ], [ %i.kl, %.split.us.us.i ] ; 2 uses
  %i.kn = add i64 %.sink.i9.us.i, %i.gz           ; 2 uses
  %i.ko = icmp ult i64 %i.kn, %i.gt
  br i1 %i.ko, label %.lr.ph.split.us.i.us.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.split.us.i.i11:                            ; preds = %.lr.ph.split.us.i.i11.preheader, %bb.bc
  %.sink.i9.i50 = phi i64 [ %.sink.i9.i, %bb.bc ], [ %.promoted.i4.i, %.lr.ph.split.us.i.i11.preheader ] ; 3 uses
  %i.kp = phi i64 [ %i.lg, %bb.bc ], [ %i.jf, %.lr.ph.split.us.i.i11.preheader ]
  %i.kq = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !alias.scope !5461, !noalias !5458, !noundef !5
  %i.ks = and i8 %i.kr, 63
  %i.kt = zext nneg i8 %i.ks to i64
  %i.ku = shl nuw i64 1, %i.kt
  %i.kv = and i64 %i.ku, %i.ji
  %.not.us.i.i = icmp eq i64 %i.kv, 0
  br i1 %.not.us.i.i, label %bb.bb, label %.preheader35.i.i.preheader

.preheader35.i.i.preheader:                       ; preds = %.lr.ph.split.us.i.i11
  br i1 %exitcond.not.i.i157.not, label %.lr.ph159, label %.preheader.split.i13.i

.preheader35.i.i:                                 ; preds = %.lr.ph159
  %i.kw = add i64 %.sroa.04.0.us.i.i158, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.kw, %umax.i.i
  br i1 %exitcond.not.i.i, label %.preheader.split.i13.i, label %.lr.ph159

.preheader.split.i13.i:                           ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.not34.i.i = icmp eq i64 %.fr63.i, 0
  br i1 %.not34.i.i, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.split32.us.i14.i

.lr.ph159:                                        ; preds = %.preheader35.i.i.preheader, %.preheader35.i.i
  %.sroa.04.0.us.i.i158 = phi i64 [ %i.kw, %.preheader35.i.i ], [ %.fr63.i, %.preheader35.i.i.preheader ] ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sroa.04.0.us.i.i158
  %i.ky = load i8, ptr %i.kx, align 1, !alias.scope !5462, !noalias !5458, !noundef !5
  %i.kz = add i64 %.sroa.04.0.us.i.i158, %.sink.i9.i50 ; 2 uses
  %i.la = icmp ult i64 %i.kz, %i.gt
  tail call void @llvm.assume(i1 %i.la)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.kz
  %i.lc = load i8, ptr %i.lb, align 1, !alias.scope !5461, !noalias !5458, !noundef !5
  %.not21.us.i.i = icmp eq i8 %i.ky, %i.lc
  br i1 %.not21.us.i.i, label %.preheader35.i.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph159
  %i.ld = add i64 %.sink.i9.i50, %i.jn
  %i.le = add i64 %i.ld, %.sroa.04.0.us.i.i158
  br label %bb.bc

bb.bb:                                            ; preds = %.lr.ph.split.us.i.i11
  %i.lf = add i64 %.sink.i9.i50, %i.gx
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sink.i9.i = phi i64 [ %i.lf, %bb.bb ], [ %i.le, %bb.ba ] ; 2 uses
  %i.lg = add i64 %.sink.i9.i, %i.gz              ; 2 uses
  %i.lh = icmp ult i64 %i.lg, %i.gt
  br i1 %i.lh, label %.lr.ph.split.us.i.i11, label %_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.split32.us.i14.i:                                ; preds = %.preheader.split.i13.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.jm, i64 noundef range(i64 0, -9223372036854775808) %i.gx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #33, !noalias !5464
  unreachable

_RNvXsv_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %bb.ar, %.preheader36.i.i.preheader, %.preheader36.i.i, %bb.bc, %bb.az, %.preheader.i10.us.us.i.preheader, %.preheader.i10.us.us.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i, %bb.an, %bb.ab, %.preheader.split.i13.i, %bb.aw, %bb.ao, %bb.ae, %bb.am, %.preheader.i8
  %storemerge.i.sink.i = phi i8 [ 0, %bb.aw ], [ 0, %bb.ao ], [ 1, %bb.ae ], [ 0, %bb.az ], [ 0, %.preheader.i8 ], [ 1, %bb.am ], [ 1, %.preheader.split.i13.i ], [ 0, %bb.bc ], [ %.promoted52.i, %bb.ab ], [ 1, %.preheader.i10.us.us.i ], [ 1, %.preheader36.i.i ], [ 1, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit16.i.i.i ], [ 1, %bb.an ], [ 1, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit12.i.i.i ], [ 1, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit14.i.i.i ], [ 1, %.preheader.i10.us.us.i.preheader ], [ 0, %bb.ar ], [ 1, %.preheader36.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread

bb.bd:                                            ; preds = %bb.c
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.li = icmp eq i32 %bcmp, 0
  %i.lj = zext i1 %i.li to i8
  br label %_RNvNtNtCshzWfHUSfYae_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !6, !noalias !5469, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CslLuZgPVt6hg_3ide.exit, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECslLuZgPVt6hg_3ide(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0)
  br label %_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CslLuZgPVt6hg_3ide.exit

_RNCNKNvNvMNtNtCscAsMj0W7j8b_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CslLuZgPVt6hg_3ide.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvYNtCs8Xq8PKFYOms_3hir5FieldNtNtB4_5attrs8HasAttrs5attrsCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %1, ptr noundef nonnull %2) unnamed_addr #2 {
switch.lookup:
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  %.sroa.01.0.copyload.i.i = load i32, ptr %1, align 4, !alias.scope !5474
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = zext nneg i32 %.sroa.01.0.copyload.i.i to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvYNtCs8Xq8PKFYOms_3hir5FieldNtNtB4_5attrs8HasAttrs5attrsCslLuZgPVt6hg_3ide, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !alias.scope !5474, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %switch.ext, ptr %i.a, align 4
  %.sroa.9.4..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load <2 x i32>, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !alias.scope !5474
  store <2 x i32> %i.e, ptr %.sroa.9.4..sroa_idx4, align 4
  %.sroa.11.4..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.d, ptr %.sroa.11.4..sroa_idx16, align 4
  call void @_RNvMs_NtCs8Xq8PKFYOms_3hir5attrsNtB4_14AttrsWithOwner9new_field(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @45, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNvNtCslLuZgPVt6hg_3ide9doc_links20broken_link_clone_cbINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTNtNtCsbNU0JlWw3cF_14pulldown_cmark5parse10BrokenLinkEE8call_mutB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree nonnull readnone captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5482
  invoke void @_RNvXs7_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_6CowStrNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
          to label %_RNvNtCslLuZgPVt6hg_3ide9doc_links20broken_link_clone_cb.exit unwind label %bb.b, !noalias !5483

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !5484)
  call void @llvm.experimental.noalias.scope.decl(metadata !5485), !noalias !5483
  %i.e = load i8, ptr %i.c, align 8, !range !26, !alias.scope !5486, !noalias !5483, !noundef !5
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbNU0JlWw3cF_14pulldown_cmark5parse10BrokenLinkECslLuZgPVt6hg_3ide.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val1.i.i = load i64, ptr %i.g, align 8, !alias.scope !5486, !noalias !5483, !noundef !5 ; 2 uses
  %i.h = icmp eq i64 %.val1.i.i, 0
  br i1 %i.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbNU0JlWw3cF_14pulldown_cmark5parse10BrokenLinkECslLuZgPVt6hg_3ide.exit, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !5486, !noalias !5483, !nonnull !5, !noundef !5
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #38, !noalias !5487
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbNU0JlWw3cF_14pulldown_cmark5parse10BrokenLinkECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbNU0JlWw3cF_14pulldown_cmark5parse10BrokenLinkECslLuZgPVt6hg_3ide.exit: ; preds = %bb.b, %bb.c, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  resume { ptr, i32 } %i.d

_RNvNtCslLuZgPVt6hg_3ide9doc_links20broken_link_clone_cb.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !5482
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5482
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !noalias !5488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #15

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCshzWfHUSfYae_4core3fmtQNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB2_5Write9write_fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCshzWfHUSfYae_4core3fmtQQNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB2_5Write9write_fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCshzWfHUSfYae_4core3fmtQQNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB2_5Write10write_charCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(8), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCshzWfHUSfYae_4core3fmtQQNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB2_5Write9write_strCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXsf_NtCsbNU0JlWw3cF_14pulldown_cmark7stringsNtB5_6CowStrNtNtNtCshzWfHUSfYae_4core3ops5deref5Deref5deref(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvCs9OdPc0izwZ0_23pulldown_cmark_to_cmark25cmark_resume_with_options10padding_of(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCshzWfHUSfYae_4core3fmtcNtB5_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRyNtB6_7Display3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsbNU0JlWw3cF_14pulldown_cmark7strings6CowStrNtB6_7Display3fmtCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCs9OdPc0izwZ0_23pulldown_cmark_to_cmark9AlignmentEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterNtCsbNU0JlWw3cF_14pulldown_cmark9AlignmentENvYB13_INtNtB2w_7convert4FromRB3C_E4fromEE9from_iterCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #17

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvCs9OdPc0izwZ0_23pulldown_cmark_to_cmark25cmark_resume_with_options33escape_leading_special_characters(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i1 noundef zeroext, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs5_NtCsbSS6DM8SDEO_5alloc6stringNtB6_6StringINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12FromIteratorcE9from_iterAcj3_ECslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl19descend_into_macros(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsM_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RINvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCshzWfHUSfYae_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECslLuZgPVt6hg_3ide(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable_or_null(24)) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXNtCshzWfHUSfYae_4core3fmtQNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB2_5Write9write_strCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBG_BG_EE5drainNtNtNtCshzWfHUSfYae_4core3ops5range9RangeFullECslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapTNtNtCsbSS6DM8SDEO_5alloc6string6StringBP_BP_EuNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE12contains_keyBO_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapTNtNtCsbSS6DM8SDEO_5alloc6string6StringBO_BO_EuNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateE6insertCslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NvNtCsgIpRO4v45SJ_7base_db5input1__NtB7_5Crate11ingredient_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs0_NtCsd9Lm8bEdjjY_5salsa5inputINtB5_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db5input5CrateE5fieldCslLuZgPVt6hg_3ide(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef nonnull align 8, ptr noundef nonnull align 8, i32 noundef range(i32 1, 0), i32 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa5zalsa13ZalsaDatabase6zalsasCslLuZgPVt6hg_3ide(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsb_NtNtNtCsbSS6DM8SDEO_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE10take_frontCslLuZgPVt6hg_3ide(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

end_hunk_0
