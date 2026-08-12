inline.NumInlined: 5984
inline.NumDeleted: 2399
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB5_19SuppressionsBuilder14match_comments:bb.a
  %i.eo = icmp ult i64 %i.em, %i.en
  br i1 %i.eo, label %bb.h, label %bb.i

.loopexit35:                                      ; preds = %_RNCNvMs5_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB7_19SuppressionsBuilder14match_comments0B9_.exit.thread.i, %bb.c
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cp, i64 64 ; 2 uses
  %i.er = load i8, ptr %i.eq, align 8, !range !4350, !noundef !4
  %i.es = icmp eq i8 %i.er, 1
  br i1 %i.es, label %bb.bg, label %bb.bh

bb.h:                                             ; preds = %bb.g
  %i.et = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4
  %i.eu = getelementptr inbounds nuw [72 x i8], ptr %i.et, i64 %i.em ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8, !noundef !4 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 20
  %i.ez = load i32, ptr %i.ey, align 4, !noundef !4 ; 2 uses
  %.not63 = icmp ugt i32 %i.ew, %i.ez
  br i1 %.not63, label %bb.j, label %bb.k, !prof !33

bb.i:                                             ; preds = %bb.g
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.em, i64 noundef %i.en, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #45
  unreachable

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #45
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.fa = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4
  %i.fb = load i64, ptr %i.ag, align 8, !noundef !4
  %i.fc = load i64, ptr %i.df, align 8, !alias.scope !4838, !noalias !4843, !noundef !4 ; 2 uses
  %i.fd = icmp ugt i64 %i.fc, 2                   ; 2 uses
  %i.fe = load ptr, ptr %i.de, align 8, !alias.scope !4838, !noalias !4843, !nonnull !4
  %i.ff = load i64, ptr %i.dg, align 8, !alias.scope !4838, !noalias !4843
  %.sink10.i.i = select i1 %i.fd, ptr %i.fe, ptr %i.de ; 2 uses
  %.sink9.i.i = select i1 %i.fd, i64 %i.ff, i64 %i.fc ; 2 uses
  %.idx235 = shl nuw nsw i64 %.sink9.i.i, 3
  %i.fg = getelementptr inbounds nuw i8, ptr %.sink10.i.i, i64 %.idx235
  %i.fh = icmp eq i64 %.sink9.i.i, 0
  br i1 %i.fh, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eu, i64 32 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression11SuppressionE8push_mutBI_.exit
  %.sroa.03.0142 = phi ptr [ %.sink10.i.i, %.lr.ph ], [ %i.fo, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression11SuppressionE8push_mutBI_.exit ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.03.0142, i64 8 ; 2 uses
  %i.fp = call { ptr, i64 } @_RINvXs8_NtCs2MoD74u7shA_14ruff_text_size6traitseNtB6_9TextSlice5sliceRNtNtB8_5range9TextRangeECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fa, i64 noundef %i.fb, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %.sroa.03.0142) ; 2 uses
  %i.fq = extractvalue { ptr, i64 } %i.fp, 0      ; 12 uses
  %i.fr = extractvalue { ptr, i64 } %i.fp, 1      ; 18 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.fs = icmp ult i64 %i.fr, 25
  br i1 %i.fs, label %bb.n, label %bb.m, !prof !56

bb.m:                                             ; preds = %bb.l
  %i.ft = call { ptr, i64 } @_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr4heapNtB2_10HeapBuffer10alloc_copy(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fq, i64 noundef %i.fr), !noalias !4847 ; 2 uses
  %i.fu = extractvalue { ptr, i64 } %i.ft, 0      ; 2 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %bb.aa, label %bb.ab, !prof !33

bb.n:                                             ; preds = %bb.l
  %i.fw = shl nuw nsw i64 %i.fr, 56
  %i.fx = or disjoint i64 %i.fw, -4611686018427387904 ; 7 uses
  %i.fy = icmp samesign ugt i64 %i.fr, 15
  br i1 %i.fy, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fz = icmp samesign ugt i64 %i.fr, 7
  br i1 %i.fz, label %bb.r, label %bb.q

bb.p:                                             ; preds = %bb.n
  %.sroa.05.0.copyload.i.i.i = load i64, ptr %i.fq, align 1, !alias.scope !4854, !noalias !4859
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.ga, align 1, !alias.scope !4854, !noalias !4859
  %i.gb = icmp eq i64 %i.fr, 16
  br i1 %i.gb, label %bb.z, label %bb.y

bb.q:                                             ; preds = %bb.o
  %i.gc = icmp samesign ugt i64 %i.fr, 3
  br i1 %i.gc, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.o
  %.sroa.011.0.copyload.i.i.i = load i64, ptr %i.fq, align 1, !alias.scope !4854, !noalias !4859 ; 2 uses
  %i.gd = icmp eq i64 %i.fr, 8
  br i1 %i.gd, label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i, label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.ge = icmp samesign ugt i64 %i.fr, 1
  br i1 %i.ge, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.q
  %.sroa.015.0.copyload.i.i.i = load i32, ptr %i.fq, align 1, !alias.scope !4854, !noalias !4859
  %i.gf = zext i32 %.sroa.015.0.copyload.i.i.i to i64
  %i.gg = add nsw i64 %i.fr, -4                   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.gg
  %.sroa.017.0.copyload.i.i.i = load i32, ptr %i.gh, align 1, !alias.scope !4854, !noalias !4859
  %i.gi = zext i32 %.sroa.017.0.copyload.i.i.i to i64
  %i.gj = shl nuw nsw i64 %i.gg, 3
  %i.gk = shl nuw nsw i64 %i.gi, %i.gj
  %i.gl = or i64 %i.gk, %i.gf
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.gm = icmp eq i64 %i.fr, 1
  br i1 %i.gm, label %bb.w, label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.v:                                             ; preds = %bb.s
  %.sroa.019.0.copyload.i.i.i = load i16, ptr %i.fq, align 1, !alias.scope !4854, !noalias !4859
  %i.gn = zext i16 %.sroa.019.0.copyload.i.i.i to i64
  %i.go = add nsw i64 %i.fr, -2                   ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.go
  %.sroa.021.0.copyload.i.i.i = load i16, ptr %i.gp, align 1, !alias.scope !4854, !noalias !4859
  %i.gq = zext i16 %.sroa.021.0.copyload.i.i.i to i64
  %i.gr = shl nuw nsw i64 %i.go, 3
  %i.gs = shl nuw nsw i64 %i.gq, %i.gr
  %i.gt = or i64 %i.gs, %i.gn
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.gu = load i8, ptr %i.fq, align 1, !alias.scope !4854, !noalias !4859, !noundef !4
  %i.gv = zext i8 %i.gu to i64
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.x:                                             ; preds = %bb.r
  %i.gw = getelementptr i8, ptr %i.fq, i64 %i.fr
  %i.gx = getelementptr i8, ptr %i.gw, i64 -8
  %.sroa.013.0.copyload.i.i.i = load i64, ptr %i.gx, align 1, !alias.scope !4854, !noalias !4859
  %i.gy = shl nuw nsw i64 %i.fr, 3
  %i.gz = sub nuw nsw i64 128, %i.gy
  %i.ha = lshr i64 %.sroa.013.0.copyload.i.i.i, %i.gz
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

bb.y:                                             ; preds = %bb.p
  %i.hb = getelementptr i8, ptr %i.fq, i64 %i.fr
  %i.hc = getelementptr i8, ptr %i.hb, i64 -8
  %.sroa.09.0.copyload.i.i.i = load i64, ptr %i.hc, align 1, !alias.scope !4854, !noalias !4859
  %.neg.i.i.i = mul nuw nsw i64 %i.fr, 56
  %i.hd = and i64 %.neg.i.i.i, 56
  %i.he = lshr i64 %.sroa.09.0.copyload.i.i.i, %i.hd
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.p
  %.sroa.0.1.i.i.i = phi i64 [ %i.he, %bb.y ], [ 0, %bb.p ]
  %i.hf = icmp eq i64 %i.fr, 24
  %i.hg = select i1 %i.hf, i64 0, i64 %i.fx
  %spec.select.i.i.i = or i64 %.sroa.0.1.i.i.i, %i.hg
  br label %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i

_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i: ; preds = %bb.z, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.r
  %.sroa.03.1.i.i.i = phi i64 [ %.sroa.07.0.copyload.i.i.i, %bb.z ], [ 0, %bb.r ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.v ], [ 0, %bb.w ], [ %i.ha, %bb.x ]
  %.sroa.02.0.i.i.i = phi i64 [ %.sroa.05.0.copyload.i.i.i, %bb.z ], [ %.sroa.011.0.copyload.i.i.i, %bb.r ], [ 0, %bb.u ], [ %i.gl, %bb.t ], [ %i.gt, %bb.v ], [ %i.gv, %bb.w ], [ %.sroa.011.0.copyload.i.i.i, %bb.x ]
  %.sroa.0.0.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.z ], [ %i.fx, %bb.r ], [ %i.fx, %bb.u ], [ %i.fx, %bb.t ], [ %i.fx, %bb.v ], [ %i.fx, %bb.w ], [ %i.fx, %bb.x ]
  %i.hh = inttoptr i64 %.sroa.02.0.i.i.i to ptr
  br label %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit

bb.aa:                                            ; preds = %bb.m
  call void @_RINvCsg7m2K3K1Fzf_11compact_str20unwrap_with_msg_failNtB2_12ReserveErrorEB2_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #45, !noalias !4861
  unreachable

bb.ab:                                            ; preds = %bb.m
  %i.hi = extractvalue { ptr, i64 } %i.ft, 1
  br label %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit

_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i, %bb.ab
  %.sroa.4.0.i = phi i64 [ %.sroa.0.0.i.i.i, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ], [ %i.hi, %bb.ab ] ; 3 uses
  %.sroa.3.0.i70 = phi i64 [ %.sroa.03.1.i.i.i, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ], [ %i.fr, %bb.ab ]
  %.sroa.0.0.i71 = phi ptr [ %i.hh, %_RNvMNtNtCsg7m2K3K1Fzf_11compact_str4repr6inlineNtB2_12InlineBuffer3new.exit.i.i ], [ %i.fu, %bb.ab ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.hj = load <4 x i32>, ptr %i.ev, align 8
  %i.hk = load i8, ptr %i.dd, align 8, !range !4350, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !4862)
  %i.hl = load i64, ptr %i.df, align 8, !alias.scope !4865, !noalias !4868, !noundef !4 ; 2 uses
  %i.hm = icmp ugt i64 %i.hl, 2                   ; 2 uses
  %i.hn = load ptr, ptr %i.de, align 8, !alias.scope !4865, !noalias !4868, !nonnull !4
  %i.ho = load i64, ptr %i.dg, align 8, !alias.scope !4865, !noalias !4868
  %.sink10.i.i72 = select i1 %i.hm, ptr %i.hn, ptr %i.de ; 9 uses
  %.sink9.i.i73 = select i1 %i.hm, i64 %i.ho, i64 %i.hl ; 5 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i.i72, i64 %.sink9.i.i73 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4871
  store i64 0, ptr %i.an, align 8, !alias.scope !4874, !noalias !4871
  call void @llvm.experimental.noalias.scope.decl(metadata !4877)
  %.not.i.i.i.i = icmp ugt i64 %.sink9.i.i73, 2
  br i1 %.not.i.i.i.i, label %bb.ac, label %.lr.ph.i.i.preheader.i

bb.ac:                                            ; preds = %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit
  %i.hq = add nsw i64 %.sink9.i.i73, -1
  %i.hr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hq, i1 true)
  %i.hs = lshr i64 -1, %i.hr
  %.fr = freeze i64 %i.hs                         ; 2 uses
  %i.ht = add i64 %.fr, 1                         ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4880)
  %3 = shl i64 %i.ht, 3                           ; 3 uses
  %4 = icmp ult i64 %.fr, 2305843009213693951
  %i.hu = icmp ult i64 %3, 9223372036854775805
  %or.cond.i = and i1 %4, %i.hu
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit.i, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i, !prof !4883

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.ac
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !4884
  %i.hv = call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef 4) #46, !noalias !4884 ; 3 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.ad, label %.thread.i.i

.thread.i.i:                                      ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit.i
  store ptr %i.hv, ptr %i.j, align 8, !alias.scope !4880, !noalias !4871
  store i64 0, ptr %i.ao, align 8, !alias.scope !4880, !noalias !4871
  store i64 %i.ht, ptr %i.an, align 8, !alias.scope !4880, !noalias !4871
  %.pre65.i.i.i = call i64 @llvm.umax.i64(i64 %i.ht, i64 2) ; 2 uses
  %i.hx = icmp samesign ugt i64 %i.ht, 2          ; 3 uses
  %spec.select.i = select i1 %i.hx, ptr %i.hv, ptr %i.j
  %spec.select1.i = select i1 %i.hx, ptr %i.ao, ptr %i.an ; 2 uses
  %i.hy = select i1 %i.hx, i64 0, i64 %i.ht       ; 2 uses
  %i.hz = icmp samesign ult i64 %i.hy, %.pre65.i.i.i
  br i1 %i.hz, label %.lr.ph.i.i.preheader.i, label %._crit_edge.i.i.i

bb.ad:                                            ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %3) #45
          to label %.noexc3.i.i unwind label %.thread, !noalias !4871

.noexc3.i.i:                                      ; preds = %bb.ad
  unreachable

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i: ; preds = %bb.ac
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
          to label %.noexc4.i.i unwind label %.thread, !noalias !4871

.noexc4.i.i:                                      ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i
  unreachable

.lr.ph.i.i.preheader.i:                           ; preds = %.thread.i.i, %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit
  %i.ia = phi ptr [ %spec.select1.i, %.thread.i.i ], [ %i.an, %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %.sink.i.pre-phi.i1519.i9.i = phi i64 [ %.pre65.i.i.i, %.thread.i.i ], [ 2, %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit ] ; 4 uses
  %i.ib = phi ptr [ %spec.select.i, %.thread.i.i ], [ %i.j, %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit ] ; 5 uses
  %i.ic = phi i64 [ %i.hy, %.thread.i.i ], [ 0, %_RINvMCsg7m2K3K1Fzf_11compact_strNtB3_13CompactString3newReECsEhZmuQNqkz_11ruff_linter.exit ] ; 7 uses
  %i.id = and i64 %.sink9.i.i73, 2305843009213693951
  %i.ie = xor i64 %i.ic, -1
  %i.if = add nsw i64 %.sink.i.pre-phi.i1519.i9.i, %i.ie
  %i.ig = call i64 @llvm.umin.i64(i64 %i.id, i64 %i.if) ; 2 uses
  %i.ih = add nuw nsw i64 %i.ig, 1                ; 2 uses
  %min.iters.check154 = icmp samesign ult i64 %i.ig, 8
  br i1 %min.iters.check154, label %.lr.ph.i.i.i.preheader, label %vector.memcheck143

.lr.ph.i.i.i.preheader:                           ; preds = %vector.body157, %vector.memcheck143, %.lr.ph.i.i.preheader.i
  %.sroa.0.058.i.i.i.ph = phi ptr [ %.sink10.i.i72, %vector.memcheck143 ], [ %.sink10.i.i72, %.lr.ph.i.i.preheader.i ], [ %i.is, %vector.body157 ]
  %.sroa.7.057.i.i.i.ph = phi i64 [ %i.ic, %vector.memcheck143 ], [ %i.ic, %.lr.ph.i.i.preheader.i ], [ %i.it, %vector.body157 ]
  br label %.lr.ph.i.i.i

vector.memcheck143:                               ; preds = %.lr.ph.i.i.preheader.i
  %i.ii = shl nuw nsw i64 %i.ic, 3                ; 2 uses
  %scevgep144 = getelementptr i8, ptr %i.ib, i64 %i.ii
  %scevgep145.a = getelementptr i8, ptr %i.ib, i64 8
  %i.ij = and i64 %.sink9.i.i73, 2305843009213693951
  %i.ik = xor i64 %i.ic, -1
  %i.il = add nsw i64 %.sink.i.pre-phi.i1519.i9.i, %i.ik
  %umin146 = call i64 @llvm.umin.i64(i64 %i.ij, i64 %i.il)
  %i.im = shl nuw i64 %umin146, 3                 ; 2 uses
  %i.in = getelementptr i8, ptr %scevgep145.a, i64 %i.ii
  %scevgep147.a = getelementptr i8, ptr %i.in, i64 %i.im
  %scevgep148 = getelementptr i8, ptr %.sink10.i.i72, i64 8
  %scevgep149 = getelementptr i8, ptr %scevgep148, i64 %i.im
  %bound0150 = icmp ult ptr %scevgep144, %scevgep149
  %bound1151 = icmp ult ptr %.sink10.i.i72, %scevgep147.a
  %found.conflict152 = and i1 %bound0150, %bound1151
  br i1 %found.conflict152, label %.lr.ph.i.i.i.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %vector.memcheck143
  %i.io = and i64 %i.ih, 3                        ; 2 uses
  %i.ip = icmp eq i64 %i.io, 0
  %i.iq = select i1 %i.ip, i64 4, i64 %i.io
  %n.vec156 = sub nsw i64 %i.ih, %i.iq            ; 3 uses
  %i.ir = shl i64 %n.vec156, 3
  %i.is = getelementptr i8, ptr %.sink10.i.i72, i64 %i.ir
  %i.it = add i64 %i.ic, %n.vec156
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph155
  %index158 = phi i64 [ 0, %vector.ph155 ], [ %index.next169, %vector.body157 ] ; 3 uses
  %i.iu = shl i64 %index158, 3                    ; 2 uses
  %next.gep159 = getelementptr i8, ptr %.sink10.i.i72, i64 %i.iu
  %i.iv = getelementptr i8, ptr %.sink10.i.i72, i64 %i.iu
  %next.gep160 = getelementptr i8, ptr %i.iv, i64 16
  %i.iw = add i64 %i.ic, %index158                ; 2 uses
  %wide.vec161 = load <4 x i32>, ptr %next.gep159, align 4, !alias.scope !4885, !noalias !4888
  %wide.vec164 = load <4 x i32>, ptr %next.gep160, align 4, !alias.scope !4885, !noalias !4888
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.iw
  %i.iy = getelementptr [8 x i8], ptr %i.ib, i64 %i.iw
  %i.iz = getelementptr i8, ptr %i.iy, i64 16
  store <4 x i32> %wide.vec161, ptr %i.ix, align 4, !alias.scope !4892, !noalias !4871
  store <4 x i32> %wide.vec164, ptr %i.iz, align 4, !alias.scope !4892, !noalias !4871
  %index.next169 = add nuw i64 %index158, 4       ; 2 uses
  %i.ja = icmp eq i64 %index.next169, %n.vec156
  br i1 %i.ja, label %.lr.ph.i.i.i.preheader, label %vector.body157, !llvm.loop !4894

._crit_edge.i.i.i:                                ; preds = %bb.af, %.thread.i.i
  %i.jb = phi ptr [ %spec.select1.i, %.thread.i.i ], [ %i.ia, %bb.af ]
  %.sroa.7.0.lcssa.i.i.i = phi i64 [ 2, %.thread.i.i ], [ %.sink.i.pre-phi.i1519.i9.i, %bb.af ]
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %.sink10.i.i72, %.thread.i.i ], [ %i.jr, %bb.af ] ; 2 uses
  store i64 %.sroa.7.0.lcssa.i.i.i, ptr %i.jb, align 8, !alias.scope !4877, !noalias !4871
  %i.jc = icmp eq ptr %.sroa.0.0.lcssa.i.i.i, %i.hp
  br i1 %i.jc, label %.loopexit34, label %.lr.ph62.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.af
  %.sroa.0.058.i.i.i = phi ptr [ %i.jr, %bb.af ], [ %.sroa.0.058.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.sroa.7.057.i.i.i = phi i64 [ %i.ju, %bb.af ], [ %.sroa.7.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.jd = icmp eq ptr %.sroa.0.058.i.i.i, %i.hp
  br i1 %i.jd, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i, label %bb.af

.lr.ph62.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  %.sroa.031.060.i.i.i = phi ptr [ %i.je, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i ], [ %.sroa.0.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.031.060.i.i.i, i64 8 ; 2 uses
  %i.jf = load <2 x i32>, ptr %.sroa.031.060.i.i.i, align 4, !noalias !4895
  %i.jg = load i64, ptr %i.an, align 8, !alias.scope !4899, !noalias !4904, !noundef !4 ; 2 uses
  %i.jh = icmp ugt i64 %i.jg, 2                   ; 2 uses
  %i.ji = load ptr, ptr %i.j, align 8, !alias.scope !4899, !noalias !4904, !nonnull !4
  %.sink9.i.i.i.i.i74 = select i1 %i.jh, ptr %i.ji, ptr %i.j
  %.sink8.i.i.i.i.i = select i1 %i.jh, ptr %i.ao, ptr %i.an ; 2 uses
  %.sink.i.i15.i.i.i = call i64 @llvm.umax.i64(i64 %i.jg, i64 2)
  %i.jj = load i64, ptr %.sink8.i.i.i.i.i, align 8, !alias.scope !4906, !noalias !4871, !noundef !4 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, %.sink.i.i15.i.i.i
  br i1 %i.jk, label %bb.ae, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i, !prof !33

bb.ae:                                            ; preds = %.lr.ph62.i.i.i
  invoke fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.noexc5.i.i unwind label %bb.ag, !noalias !4871

.noexc5.i.i:                                      ; preds = %bb.ae
  %i.jl = load ptr, ptr %i.j, align 8, !alias.scope !4906, !noalias !4871, !nonnull !4, !noundef !4
  %.pre.i.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !4906, !noalias !4871
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %.noexc5.i.i, %.lr.ph62.i.i.i
  %i.jm = phi i64 [ %.pre.i.i.i.i, %.noexc5.i.i ], [ %i.jj, %.lr.ph62.i.i.i ]
  %.sroa.01.0.i.i.i.i = phi ptr [ %i.ao, %.noexc5.i.i ], [ %.sink8.i.i.i.i.i, %.lr.ph62.i.i.i ] ; 2 uses
  %.sroa.0.0.i16.i.i.i = phi ptr [ %i.jl, %.noexc5.i.i ], [ %.sink9.i.i.i.i.i74, %.lr.ph62.i.i.i ]
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i16.i.i.i, i64 %i.jm
  store <2 x i32> %i.jf, ptr %i.jn, align 4, !noalias !4871
  %i.jo = load i64, ptr %.sroa.01.0.i.i.i.i, align 8, !alias.scope !4906, !noalias !4871, !noundef !4
  %i.jp = add i64 %i.jo, 1
  store i64 %i.jp, ptr %.sroa.01.0.i.i.i.i, align 8, !alias.scope !4906, !noalias !4871
  %i.jq = icmp eq ptr %i.je, %i.hp
  br i1 %i.jq, label %.loopexit34, label %.lr.ph62.i.i.i

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i.i.i, i64 8 ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %.sroa.7.057.i.i.i
  %i.jt = load <2 x i32>, ptr %.sroa.0.058.i.i.i, align 4, !noalias !4888
  store <2 x i32> %i.jt, ptr %i.js, align 4, !noalias !4871
  %i.ju = add i64 %.sroa.7.057.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ju, %.sink.i.pre-phi.i1519.i9.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !4907

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  store i64 %.sroa.7.057.i.i.i, ptr %i.ia, align 8, !alias.scope !4877, !noalias !4871
  br label %.loopexit34

.thread:                                          ; preds = %bb.ad, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %bb.ae
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre314 = load i64, ptr %i.an, align 8, !alias.scope !4908, !noalias !4871 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4913)
  call void @llvm.experimental.noalias.scope.decl(metadata !4914), !noalias !4871
  %i.jv = icmp ugt i64 %.pre314, 2
  br i1 %i.jv, label %bb.ah, label %.body

bb.ah:                                            ; preds = %bb.ag
  %i.jw = load ptr, ptr %i.j, align 8, !alias.scope !4908, !noalias !4871, !nonnull !4, !noundef !4
  %i.jx = load i64, ptr %i.ao, align 8, !alias.scope !4908, !noalias !4871, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4915
  store i64 %.pre314, ptr %i.c, align 8, !noalias !4915
  %i.jy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.jw, ptr %i.jy, align 8, !noalias !4915
  %i.jz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.jx, ptr %i.jz, align 8, !noalias !4915
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.ai, !noalias !4915

bb.ai:                                            ; preds = %bb.ah
  %i.ka = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body209 unwind label %bb.aj, !noalias !4915

bb.aj:                                            ; preds = %bb.ai
  %i.kb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !4915
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc211 unwind label %bb.ak

.noexc211:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4915
  br label %.body

bb.ak:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.kc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body209

.body209:                                         ; preds = %bb.ai, %bb.ak
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !4871
  unreachable

._crit_edge:                                      ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression11SuppressionE8push_mutBI_.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentE6removeBH_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %i.em, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173)
  call void @llvm.experimental.noalias.scope.decl(metadata !4916)
  call void @llvm.experimental.noalias.scope.decl(metadata !4919)
  call void @llvm.experimental.noalias.scope.decl(metadata !4922)
  call void @llvm.experimental.noalias.scope.decl(metadata !4925)
  %i.kd = load i64, ptr %i.ba, align 8, !alias.scope !4928, !noundef !4 ; 2 uses
  %i.ke = icmp ugt i64 %i.kd, 2
  br i1 %i.ke, label %bb.al, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit

bb.al:                                            ; preds = %._crit_edge
  %i.kf = load ptr, ptr %i.bb, align 8, !alias.scope !4928, !nonnull !4, !noundef !4
  %i.kg = load i64, ptr %i.bc, align 8, !alias.scope !4928, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4928
  store i64 %i.kd, ptr %i.i, align 8, !noalias !4928
  store ptr %i.kf, ptr %i.bd, align 8, !noalias !4928
  store i64 %i.kg, ptr %i.be, align 8, !noalias !4928
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i unwind label %bb.am, !noalias !4928

bb.am:                                            ; preds = %bb.al
  %i.kh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.an, !noalias !4928

bb.an:                                            ; preds = %bb.am
  %i.ki = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !4928
  unreachable

common.resume:                                    ; preds = %bb.cw, %bb.cn, %bb.cj, %.body204, %bb.ar, %.body, %bb.cl, %.body195, %bb.bc, %bb.ap, %bb.am
  %common.resume.op = phi { ptr, i32 } [ %i.to, %bb.cn ], [ %i.kh, %bb.am ], [ %i.kn, %bb.ap ], [ %i.np, %bb.bc ], [ %lpad.phi.i.i176, %.body195 ], [ %i.th, %bb.cj ], [ %eh.lpad-body205, %.body204 ], [ %.pn, %.body ], [ %.pn, %bb.ar ], [ %lpad.phi.i.i176, %bb.cl ], [ %i.ui, %bb.cw ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.al
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !4928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4928
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit: ; preds = %._crit_edge, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentE6removeBH_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %.sroa.0.0.ph231, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174)
  call void @llvm.experimental.noalias.scope.decl(metadata !4929)
  call void @llvm.experimental.noalias.scope.decl(metadata !4932)
  call void @llvm.experimental.noalias.scope.decl(metadata !4935)
  call void @llvm.experimental.noalias.scope.decl(metadata !4938)
  %i.kj = load i64, ptr %i.bf, align 8, !alias.scope !4941, !noundef !4 ; 2 uses
  %i.kk = icmp ugt i64 %i.kj, 2
  br i1 %i.kk, label %bb.ao, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit77

bb.ao:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit
  %i.kl = load ptr, ptr %i.bg, align 8, !alias.scope !4941, !nonnull !4, !noundef !4
  %i.km = load i64, ptr %i.bh, align 8, !alias.scope !4941, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4941
  store i64 %i.kj, ptr %i.h, align 8, !noalias !4941
  store ptr %i.kl, ptr %i.bi, align 8, !noalias !4941
  store i64 %i.km, ptr %i.bj, align 8, !noalias !4941
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i76 unwind label %bb.ap, !noalias !4941

bb.ap:                                            ; preds = %bb.ao
  %i.kn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.aq, !noalias !4941

bb.aq:                                            ; preds = %bb.ap
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !4941
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i76: ; preds = %bb.ao
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !4941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4941
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit77

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit77: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression25PendingSuppressionCommentEBF_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bf

.body:                                            ; preds = %.thread, %.noexc211, %bb.ag, %.body123
  %.pn = phi { ptr, i32 } [ %lpad.phi.i.i104364, %.body123 ], [ %lpad.loopexit.i.i, %bb.ag ], [ %lpad.loopexit.i.i, %.noexc211 ], [ %lpad.loopexit.split-lp.i.i, %.thread ] ; 2 uses
  %.sroa.67.23.extract.shift.mask = and i64 %.sroa.4.0.i, -72057594037927936
  %i.kp = icmp eq i64 %.sroa.67.23.extract.shift.mask, -2882303761517117440
  br i1 %i.kp, label %bb.ar, label %common.resume, !prof !33

bb.ar:                                            ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i71) ]
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %.sroa.0.0.i71, i64 noundef %.sroa.4.0.i)
          to label %common.resume unwind label %bb.be

.loopexit34:                                      ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i, %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4871
  store <4 x i32> %i.hj, ptr %i.v, align 16
  store i8 %i.hk, ptr %i.ap, align 16
  %i.kq = load <2 x i32>, ptr %i.fi, align 8
  store <2 x i32> %i.kq, ptr %i.ar, align 8
  %i.kr = load <4 x i32>, ptr %i.ex, align 8
  %i.ks = load i8, ptr %i.fj, align 8, !range !4350, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !4942)
  %i.kt = load i64, ptr %i.fl, align 8, !alias.scope !4945, !noalias !4948, !noundef !4 ; 2 uses
  %i.ku = icmp ugt i64 %i.kt, 2                   ; 2 uses
  %i.kv = load ptr, ptr %i.fk, align 8, !alias.scope !4945, !noalias !4948, !nonnull !4
  %i.kw = load i64, ptr %i.fm, align 8, !alias.scope !4945, !noalias !4948
  %.sink10.i.i78 = select i1 %i.ku, ptr %i.kv, ptr %i.fk ; 9 uses
  %.sink9.i.i79 = select i1 %i.ku, i64 %i.kw, i64 %i.kt ; 5 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i.i78, i64 %.sink9.i.i79 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4951
  store i64 0, ptr %i.as, align 8, !alias.scope !4954, !noalias !4951
  call void @llvm.experimental.noalias.scope.decl(metadata !4957)
  %.not.i.i.i.i80 = icmp ugt i64 %.sink9.i.i79, 2
  br i1 %.not.i.i.i.i80, label %bb.as, label %.lr.ph.i.i.preheader.i81

bb.as:                                            ; preds = %.loopexit34
  %i.ky = add nsw i64 %.sink9.i.i79, -1
  %i.kz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ky, i1 true)
  %i.la = lshr i64 -1, %i.kz
  %.fr32 = freeze i64 %i.la                       ; 2 uses
  %i.lb = add i64 %.fr32, 1                       ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4960)
  %5 = shl i64 %i.lb, 3                           ; 3 uses
  %6 = icmp ult i64 %.fr32, 2305843009213693951
  %i.lc = icmp ult i64 %5, 9223372036854775805
  %or.cond.i224 = and i1 %6, %i.lc
  br i1 %or.cond.i224, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit.i227, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i112, !prof !4883

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit.i227: ; preds = %bb.as
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !4963
  %i.ld = call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %5, i64 noundef 4) #46, !noalias !4963 ; 3 uses
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %bb.at, label %.thread.i.i114

.thread.i.i114:                                   ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit.i227
  store ptr %i.ld, ptr %i.g, align 8, !alias.scope !4960, !noalias !4951
  store i64 0, ptr %i.at, align 8, !alias.scope !4960, !noalias !4951
  store i64 %i.lb, ptr %i.as, align 8, !alias.scope !4960, !noalias !4951
  %.pre65.i.i.i117 = call i64 @llvm.umax.i64(i64 %i.lb, i64 2) ; 2 uses
  %i.lf = icmp samesign ugt i64 %i.lb, 2          ; 3 uses
  %spec.select.i119 = select i1 %i.lf, ptr %i.ld, ptr %i.g
  %spec.select1.i120 = select i1 %i.lf, ptr %i.at, ptr %i.as ; 2 uses
  %i.lg = select i1 %i.lf, i64 0, i64 %i.lb       ; 2 uses
  %i.lh = icmp samesign ult i64 %i.lg, %.pre65.i.i.i117
  br i1 %i.lh, label %.lr.ph.i.i.preheader.i81, label %._crit_edge.i.i.i89

bb.at:                                            ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit.i227
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %5) #45
          to label %.noexc3.i.i122 unwind label %.thread362, !noalias !4951

.noexc3.i.i122:                                   ; preds = %bb.at
  unreachable

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i112: ; preds = %bb.as
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
          to label %.noexc4.i.i113 unwind label %.thread362, !noalias !4951

.noexc4.i.i113:                                   ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i112
  unreachable

.lr.ph.i.i.preheader.i81:                         ; preds = %.thread.i.i114, %.loopexit34
  %i.li = phi ptr [ %spec.select1.i120, %.thread.i.i114 ], [ %i.as, %.loopexit34 ] ; 2 uses
  %.sink.i.pre-phi.i1519.i9.i82 = phi i64 [ %.pre65.i.i.i117, %.thread.i.i114 ], [ 2, %.loopexit34 ] ; 4 uses
  %i.lj = phi ptr [ %spec.select.i119, %.thread.i.i114 ], [ %i.g, %.loopexit34 ] ; 5 uses
  %i.lk = phi i64 [ %i.lg, %.thread.i.i114 ], [ 0, %.loopexit34 ] ; 7 uses
  %i.ll = and i64 %.sink9.i.i79, 2305843009213693951
  %i.lm = xor i64 %i.lk, -1
  %i.ln = add nsw i64 %.sink.i.pre-phi.i1519.i9.i82, %i.lm
  %i.lo = call i64 @llvm.umin.i64(i64 %i.ll, i64 %i.ln) ; 2 uses
  %i.lp = add nuw nsw i64 %i.lo, 1                ; 2 uses
  %min.iters.check124 = icmp samesign ult i64 %i.lo, 8
  br i1 %min.iters.check124, label %.lr.ph.i.i.i83.preheader, label %vector.memcheck113

.lr.ph.i.i.i83.preheader:                         ; preds = %vector.body127, %vector.memcheck113, %.lr.ph.i.i.preheader.i81
  %.sroa.0.058.i.i.i84.ph = phi ptr [ %.sink10.i.i78, %vector.memcheck113 ], [ %.sink10.i.i78, %.lr.ph.i.i.preheader.i81 ], [ %i.ma, %vector.body127 ]
  %.sroa.7.057.i.i.i85.ph = phi i64 [ %i.lk, %vector.memcheck113 ], [ %i.lk, %.lr.ph.i.i.preheader.i81 ], [ %i.mb, %vector.body127 ]
  br label %.lr.ph.i.i.i83

vector.memcheck113:                               ; preds = %.lr.ph.i.i.preheader.i81
  %i.lq = shl nuw nsw i64 %i.lk, 3                ; 2 uses
  %scevgep114 = getelementptr i8, ptr %i.lj, i64 %i.lq
  %scevgep115.a = getelementptr i8, ptr %i.lj, i64 8
  %i.lr = and i64 %.sink9.i.i79, 2305843009213693951
  %i.ls = xor i64 %i.lk, -1
  %i.lt = add nsw i64 %.sink.i.pre-phi.i1519.i9.i82, %i.ls
  %umin116 = call i64 @llvm.umin.i64(i64 %i.lr, i64 %i.lt)
  %i.lu = shl nuw i64 %umin116, 3                 ; 2 uses
  %i.lv = getelementptr i8, ptr %scevgep115.a, i64 %i.lq
  %scevgep117.a = getelementptr i8, ptr %i.lv, i64 %i.lu
  %scevgep118 = getelementptr i8, ptr %.sink10.i.i78, i64 8
  %scevgep119 = getelementptr i8, ptr %scevgep118, i64 %i.lu
  %bound0120 = icmp ult ptr %scevgep114, %scevgep119
  %bound1121 = icmp ult ptr %.sink10.i.i78, %scevgep117.a
  %found.conflict122 = and i1 %bound0120, %bound1121
  br i1 %found.conflict122, label %.lr.ph.i.i.i83.preheader, label %vector.ph125

vector.ph125:                                     ; preds = %vector.memcheck113
  %i.lw = and i64 %i.lp, 3                        ; 2 uses
  %i.lx = icmp eq i64 %i.lw, 0
  %i.ly = select i1 %i.lx, i64 4, i64 %i.lw
  %n.vec126 = sub nsw i64 %i.lp, %i.ly            ; 3 uses
  %i.lz = shl i64 %n.vec126, 3
  %i.ma = getelementptr i8, ptr %.sink10.i.i78, i64 %i.lz
  %i.mb = add i64 %i.lk, %n.vec126
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next139, %vector.body127 ] ; 3 uses
  %i.mc = shl i64 %index128, 3                    ; 2 uses
  %next.gep129 = getelementptr i8, ptr %.sink10.i.i78, i64 %i.mc
  %i.md = getelementptr i8, ptr %.sink10.i.i78, i64 %i.mc
  %next.gep130 = getelementptr i8, ptr %i.md, i64 16
  %i.me = add i64 %i.lk, %index128                ; 2 uses
  %wide.vec131 = load <4 x i32>, ptr %next.gep129, align 4, !alias.scope !4964, !noalias !4967
  %wide.vec134 = load <4 x i32>, ptr %next.gep130, align 4, !alias.scope !4964, !noalias !4967
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.me
  %i.mg = getelementptr [8 x i8], ptr %i.lj, i64 %i.me
  %i.mh = getelementptr i8, ptr %i.mg, i64 16
  store <4 x i32> %wide.vec131, ptr %i.mf, align 4, !alias.scope !4971, !noalias !4951
  store <4 x i32> %wide.vec134, ptr %i.mh, align 4, !alias.scope !4971, !noalias !4951
  %index.next139 = add nuw i64 %index128, 4       ; 2 uses
  %i.mi = icmp eq i64 %index.next139, %n.vec126
  br i1 %i.mi, label %.lr.ph.i.i.i83.preheader, label %vector.body127, !llvm.loop !4973

._crit_edge.i.i.i89:                              ; preds = %bb.av, %.thread.i.i114
  %i.mj = phi ptr [ %spec.select1.i120, %.thread.i.i114 ], [ %i.li, %bb.av ]
  %.sroa.7.0.lcssa.i.i.i90 = phi i64 [ 2, %.thread.i.i114 ], [ %.sink.i.pre-phi.i1519.i9.i82, %bb.av ]
  %.sroa.0.0.lcssa.i.i.i91 = phi ptr [ %.sink10.i.i78, %.thread.i.i114 ], [ %i.mz, %bb.av ] ; 2 uses
  store i64 %.sroa.7.0.lcssa.i.i.i90, ptr %i.mj, align 8, !alias.scope !4957, !noalias !4951
  %i.mk = icmp eq ptr %.sroa.0.0.lcssa.i.i.i91, %i.kx
  br i1 %i.mk, label %.loopexit33, label %.lr.ph62.i.i.i92

.lr.ph.i.i.i83:                                   ; preds = %.lr.ph.i.i.i83.preheader, %bb.av
  %.sroa.0.058.i.i.i84 = phi ptr [ %i.mz, %bb.av ], [ %.sroa.0.058.i.i.i84.ph, %.lr.ph.i.i.i83.preheader ] ; 3 uses
  %.sroa.7.057.i.i.i85 = phi i64 [ %i.nc, %bb.av ], [ %.sroa.7.057.i.i.i85.ph, %.lr.ph.i.i.i83.preheader ] ; 3 uses
  %i.ml = icmp eq ptr %.sroa.0.058.i.i.i84, %i.kx
  br i1 %i.ml, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i107, label %bb.av

.lr.ph62.i.i.i92:                                 ; preds = %._crit_edge.i.i.i89, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i99
  %.sroa.031.060.i.i.i93 = phi ptr [ %i.mm, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i99 ], [ %.sroa.0.0.lcssa.i.i.i91, %._crit_edge.i.i.i89 ] ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.031.060.i.i.i93, i64 8 ; 2 uses
  %i.mn = load <2 x i32>, ptr %.sroa.031.060.i.i.i93, align 4, !noalias !4974
  %i.mo = load i64, ptr %i.as, align 8, !alias.scope !4978, !noalias !4983, !noundef !4 ; 2 uses
  %i.mp = icmp ugt i64 %i.mo, 2                   ; 2 uses
  %i.mq = load ptr, ptr %i.g, align 8, !alias.scope !4978, !noalias !4983, !nonnull !4
  %.sink9.i.i.i.i.i96 = select i1 %i.mp, ptr %i.mq, ptr %i.g
  %.sink8.i.i.i.i.i97 = select i1 %i.mp, ptr %i.at, ptr %i.as ; 2 uses
  %.sink.i.i15.i.i.i98 = call i64 @llvm.umax.i64(i64 %i.mo, i64 2)
  %i.mr = load i64, ptr %.sink8.i.i.i.i.i97, align 8, !alias.scope !4985, !noalias !4951, !noundef !4 ; 2 uses
  %i.ms = icmp eq i64 %i.mr, %.sink.i.i15.i.i.i98
  br i1 %i.ms, label %bb.au, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i99, !prof !33

bb.au:                                            ; preds = %.lr.ph62.i.i.i92
  invoke fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc5.i.i105 unwind label %bb.aw, !noalias !4951

.noexc5.i.i105:                                   ; preds = %bb.au
  %i.mt = load ptr, ptr %i.g, align 8, !alias.scope !4985, !noalias !4951, !nonnull !4, !noundef !4
  %.pre.i.i.i.i106 = load i64, ptr %i.at, align 8, !alias.scope !4985, !noalias !4951
  br label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i99

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i99: ; preds = %.noexc5.i.i105, %.lr.ph62.i.i.i92
  %i.mu = phi i64 [ %.pre.i.i.i.i106, %.noexc5.i.i105 ], [ %i.mr, %.lr.ph62.i.i.i92 ]
  %.sroa.01.0.i.i.i.i100 = phi ptr [ %i.at, %.noexc5.i.i105 ], [ %.sink8.i.i.i.i.i97, %.lr.ph62.i.i.i92 ] ; 2 uses
  %.sroa.0.0.i16.i.i.i101 = phi ptr [ %i.mt, %.noexc5.i.i105 ], [ %.sink9.i.i.i.i.i96, %.lr.ph62.i.i.i92 ]
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i16.i.i.i101, i64 %i.mu
  store <2 x i32> %i.mn, ptr %i.mv, align 4, !noalias !4951
  %i.mw = load i64, ptr %.sroa.01.0.i.i.i.i100, align 8, !alias.scope !4985, !noalias !4951, !noundef !4
  %i.mx = add i64 %i.mw, 1
  store i64 %i.mx, ptr %.sroa.01.0.i.i.i.i100, align 8, !alias.scope !4985, !noalias !4951
  %i.my = icmp eq ptr %i.mm, %i.kx
  br i1 %i.my, label %.loopexit33, label %.lr.ph62.i.i.i92

bb.av:                                            ; preds = %.lr.ph.i.i.i83
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0.058.i.i.i84, i64 8 ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %.sroa.7.057.i.i.i85
  %i.nb = load <2 x i32>, ptr %.sroa.0.058.i.i.i84, align 4, !noalias !4967
  store <2 x i32> %i.nb, ptr %i.na, align 4, !noalias !4951
  %i.nc = add i64 %.sroa.7.057.i.i.i85, 1         ; 2 uses
  %exitcond.not.i.i.i88 = icmp eq i64 %i.nc, %.sink.i.pre-phi.i1519.i9.i82
  br i1 %exitcond.not.i.i.i88, label %._crit_edge.i.i.i89, label %.lr.ph.i.i.i83, !llvm.loop !4986

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i107: ; preds = %.lr.ph.i.i.i83
  store i64 %.sroa.7.057.i.i.i85, ptr %i.li, align 8, !alias.scope !4957, !noalias !4951
  br label %.loopexit33

.thread362:                                       ; preds = %bb.at, %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E11try_reserveCsEhZmuQNqkz_11ruff_linter.exit.thread.i.i.i112
  %lpad.loopexit.split-lp.i.i110 = landingpad { ptr, i32 }
          cleanup
  br label %.body123

bb.aw:                                            ; preds = %bb.au
  %lpad.loopexit.i.i103 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre = load i64, ptr %i.as, align 8, !alias.scope !4987, !noalias !4951 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4992)
  call void @llvm.experimental.noalias.scope.decl(metadata !4993), !noalias !4951
  %i.nd = icmp ugt i64 %.pre, 2
  br i1 %i.nd, label %bb.ax, label %.body123

bb.ax:                                            ; preds = %bb.aw
  %i.ne = load ptr, ptr %i.g, align 8, !alias.scope !4987, !noalias !4951, !nonnull !4, !noundef !4
  %i.nf = load i64, ptr %i.at, align 8, !alias.scope !4987, !noalias !4951, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4994
  store i64 %.pre, ptr %i.b, align 8, !noalias !4994
  %i.ng = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ne, ptr %i.ng, align 8, !noalias !4994
  %i.nh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.nf, ptr %i.nh, align 8, !noalias !4994
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i215 unwind label %bb.ay, !noalias !4994

bb.ay:                                            ; preds = %bb.ax
  %i.ni = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body216 unwind label %bb.az, !noalias !4994

bb.az:                                            ; preds = %bb.ay
  %i.nj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !4994
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i215: ; preds = %bb.ax
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc218 unwind label %bb.ba

.noexc218:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4994
  br label %.body123

bb.ba:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECsEhZmuQNqkz_11ruff_linter.exit.i.i215
  %i.nk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body216

.body216:                                         ; preds = %bb.ay, %bb.ba
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44, !noalias !4951
  unreachable

.body123:                                         ; preds = %.thread362, %bb.aw, %.noexc218
  %lpad.phi.i.i104364 = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i110, %.thread362 ], [ %lpad.loopexit.i.i103, %bb.aw ], [ %lpad.loopexit.i.i103, %.noexc218 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsEhZmuQNqkz_11ruff_linter11suppression18SuppressionCommentEBF_(ptr noalias noundef align 8 dereferenceable(56) %i.v) #43
          to label %.body unwind label %bb.be

.loopexit33:                                      ; preds = %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i.i99, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEENtNtNtB8_6traits8iterator8Iterator4nextCsEhZmuQNqkz_11ruff_linter.exit.i.i.i107, %._crit_edge.i.i.i89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.819.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
end_hunk_0
begin_hunk_1_@_RNvMs5_NtNtNtCs2AWtUsOyxgP_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsEhZmuQNqkz_11ruff_linter:bb.a
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %i.k = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs2AWtUsOyxgP_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardNtNtNtB4_4mpmc5waker5WakerENCNvMs9_B10_BX_3new0ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %i.k, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs9_NtCsEhZmuQNqkz_11ruff_linter11suppressionNtB5_17SuppressionParser3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i32 %3 to i64                       ; 6 uses
  %i.b = zext i32 %4 to i64                       ; 5 uses
  %.not.i = icmp ugt i32 %3, %4
  br i1 %.not.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %3, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not5.i = icmp ugt i64 %2, %i.a
  br i1 %.not5.i, label %bb.e, label %.split.i

bb.d:                                             ; preds = %bb.e, %.split.i, %bb.b
  %i.d = icmp eq i32 %4, 0
  br i1 %i.d, label %bb.h, label %bb.f

.split.i:                                         ; preds = %bb.c
  %i.e = icmp eq i64 %2, %i.a
  br i1 %i.e, label %bb.d, label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !5191, !noundef !4
  %i.h = icmp sgt i8 %i.g, -65
  br i1 %i.h, label %bb.d, label %bb.i

bb.f:                                             ; preds = %bb.d
  %.not6.i = icmp ugt i64 %2, %i.b
  br i1 %.not6.i, label %bb.g, label %.split7.i

.split7.i:                                        ; preds = %bb.f
  %i.i = icmp eq i64 %2, %i.b
  br i1 %i.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !5191, !noundef !4
  %i.l = icmp sgt i8 %i.k, -65
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %.split7.i, %bb.d
  %i.m = sub nuw nsw i64 %i.b, %i.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  tail call void @_RNvMNtCskVZVgnzM3Oh_18ruff_python_trivia6cursorNtB2_6Cursor3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %3, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %4, ptr %i.p, align 4
  ret void

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.a, %.split.i, %.split7.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.a, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #45
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardE8push_mutBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !161, !noundef !4
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %1) #43
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i16, ptr %i.b, align 8, !range !3632, !noundef !4 ; 2 uses
  %i.d = and i16 %i.c, 63
  %i.e = zext nneg i16 %i.d to i64
  %i.f = shl nuw i64 1, %i.e
  %i.g = lshr i16 %i.c, 6
  %i.h = zext nneg i16 %i.g to i64
  %i.i = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.h
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = and i64 %i.f, %i.l
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !noundef !4
  %.not4 = icmp eq ptr %i.p, null
  br i1 %.not4, label %.invoke, label %bb.d, !prof !33

bb.c:                                             ; preds = %bb.a
  %i.q = invoke noundef i8 @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard21resolve_applicability(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.i unwind label %bb.k

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic10remove_fix(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.e unwind label %bb.k

.invoke:                                          ; preds = %bb.i, %bb.b
  %i.r = phi ptr [ @199, %bb.b ], [ @200, %bb.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r) #45
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.f ], [ %lpad.thr_comm, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.e
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter.exit
  ret void

bb.i:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !noundef !4
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.invoke, label %bb.j, !prof !33

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 %i.q, ptr %i.w, align 8
  call void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic7set_fix(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a)
  br label %bb.h

bb.k:                                             ; preds = %.invoke, %bb.d, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %1) #43
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecAINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_Ej1_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5194, !noalias !5197, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !5194, !noalias !5197, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5194, !noalias !5197 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0                 ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5199)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #45, !noalias !5199
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl i64 %i.m, 4                          ; 4 uses
  %1 = icmp ult i64 %i.k, 1152921504606846975
  %i.p = icmp ult i64 %i.o, 9223372036854775801
  %or.cond.i = and i1 %1, %i.p
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.p, !prof !4883

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit.i
  %2 = shl i64 %.sink.i.i, 4                      ; 2 uses
  %3 = icmp ult i64 %i.c, 1152921504606846976
  %i.q = icmp ult i64 %2, 9223372036854775801
  %or.cond59.i = and i1 %3, %i.q
  br i1 %or.cond59.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit44.i, label %bb.p, !prof !4883

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !5199
  %i.r = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #46, !noalias !5199 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit44.i: ; preds = %bb.i
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8, i64 noundef %i.o) #46, !noalias !5199 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !5199
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !5199
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !5199
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !5199
  %4 = shl i64 %.sink.i.i, 4                      ; 3 uses
  %5 = icmp ult i64 %i.c, 1152921504606846976
  %i.x = icmp ult i64 %4, 9223372036854775801
  %or.cond.i.i = and i1 %5, %i.x
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.n, !prof !4883

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5202
  store i64 0, ptr %i.a, align 8, !noalias !5202
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %6, align 8, !noalias !5202
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !5202
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %4, i64 noundef 8) #46, !noalias !5199
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit44.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #45
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateINtNtCscdodAO9FK5_5alloc5boxed3BoxDG_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTQL0_NtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEEp6OutputuEL_EECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #45
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5205, !noalias !5208, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5205, !noalias !5208
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E8try_growCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit
    i64 0, label %bb.e
  ], !prof !5210

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #45
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_E8try_growCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !5211, !noalias !5214, !nonnull !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq i64 %i.c, %1
  br i1 %.not42, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl i64 %1, 3                            ; 6 uses
  %2 = icmp ult i64 %1, 2305843009213693952
  %i.k = icmp ult i64 %i.j, 9223372036854775805
  %or.cond = and i1 %2, %i.k
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m, !prof !4883

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit
  %3 = shl i64 %.sink.i, 3                        ; 3 uses
  %4 = icmp ult i64 %i.c, 2305843009213693952
  %i.l = icmp ult i64 %3, 9223372036854775805
  %or.cond59 = and i1 %4, %i.l
  br i1 %or.cond59, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit44, label %bb.m, !prof !4883

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.m = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #46 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit44: ; preds = %bb.g
  %i.o = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 4, i64 noundef %i.j) #46 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit44, %bb.j
  %.sroa.030.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit44 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %5 = shl i64 %.sink.i, 3                        ; 3 uses
  %6 = icmp ult i64 %i.c, 2305843009213693952
  %i.s = icmp ult i64 %5, 9223372036854775805
  %or.cond.i = and i1 %6, %i.s
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit, label %bb.l, !prof !4883

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5216
  store i64 0, ptr %i.a, align 8, !noalias !5216
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %5, ptr %7, align 8, !noalias !5216
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !5216
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 4) #46
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit44, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit44 ], [ %3, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter.exit44 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentj8_E21reserve_one_uncheckedBS_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5219, !noalias !5222, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5219, !noalias !5222
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentj8_E8try_growBS_(ptr noalias noundef align 8 dereferenceable(104) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit
    i64 0, label %bb.e
  ], !prof !5210

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #45
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentj8_E8try_growBS_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(104) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 8 uses
  %i.d = icmp ult i64 %i.c, 9                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 8
  %i.f = load ptr, ptr %0, align 8, !alias.scope !5224, !noalias !5227, !nonnull !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 9
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.c, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = mul i64 %1, 12                           ; 5 uses
  %or.cond.not = icmp ugt i64 %1, 768614336404564650
  br i1 %or.cond.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit, !prof !5229

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit
  %i.k = mul i64 %.sink.i, 12                     ; 2 uses
  %or.cond62.not = icmp ugt i64 %i.c, 768614336404564650
  br i1 %or.cond62.not, label %bb.m, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit45, !prof !5229

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.l = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 4) #46 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.k, i64 noundef 4, i64 noundef %i.j) #46 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit45 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = mul nuw nsw i64 %i.c, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 8 %0, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = mul i64 %.val, 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 4 %i.f, i64 %i.q, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %i.r = mul i64 %.sink.i, 12                     ; 2 uses
  %or.cond.not.i = icmp ugt i64 %i.c, 768614336404564650
  br i1 %or.cond.not.i, label %bb.l, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBL_.exit, !prof !5229

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5230
  store i64 0, ptr %i.a, align 8, !noalias !5230
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !5230
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !5230
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBL_.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.r, i64 noundef 4) #46
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBL_.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBL_.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit45 ], [ %i.k, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBL_.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 4, %bb.h ], [ -1, %bb.e ], [ 4, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27suppression_comment_visitor18SuppressionCommentEBN_.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultj3_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #9 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !5233, !noalias !5236, !noundef !4 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !5233, !noalias !5236
  %.sink9.i = select i1 %i.b, i64 %i.d, i64 %i.a  ; 3 uses
  %i.e = icmp eq i64 %.sink9.i, -1
  br i1 %i.e, label %bb.f, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %.sink9.i, 0
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.h = lshr i64 -1, %i.g
  %.sroa.02.0 = select i1 %i.f, i64 0, i64 %i.h   ; 2 uses
  %i.i = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.i, label %bb.f, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i64 %.sroa.02.0, 1
  %i.k = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultj3_E8try_growCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %0, i64 noundef %i.j) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit
    i64 0, label %bb.e
  ], !prof !5210

bb.d:                                             ; preds = %bb.c
  %i.m = extractvalue { i64, i64 } %i.k, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.l, i64 noundef %i.m) #45
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultj3_E8try_growCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !4   ; 6 uses
  %i.c = icmp ult i64 %i.b, 4                     ; 2 uses
  %i.d = icmp ugt i64 %i.b, 3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !5238, !noalias !5241, !nonnull !4 ; 3 uses
  %.sink8.idx.i = select i1 %i.d, i64 16, i64 0
  %.sink8.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sink8.idx.i
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 3) ; 2 uses
  %i.g = load i64, ptr %.sink8.i, align 8, !noundef !4 ; 5 uses
  %.not = icmp ult i64 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %1, 4
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not43 = icmp eq i64 %i.b, %1
  br i1 %.not43, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.i = shl i64 %1, 3                            ; 6 uses
  %2 = icmp ult i64 %1, 2305843009213693952
  %i.j = icmp ult i64 %i.i, 9223372036854775801
  %or.cond = and i1 %2, %i.j
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m, !prof !4883

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.f
  br i1 %i.c, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit
  %3 = shl i64 %.sink.i, 3                        ; 3 uses
  %4 = icmp ult i64 %i.b, 2305843009213693952
  %i.k = icmp ult i64 %3, 9223372036854775801
  %or.cond60 = and i1 %4, %i.k
  br i1 %or.cond60, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit45, label %bb.m, !prof !4883

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.l = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef 8) #46 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit45: ; preds = %bb.g
  %i.n = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 8, i64 noundef %i.i) #46 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit45, %bb.j
  %.sroa.030.0 = phi ptr [ %i.l, %bb.j ], [ %i.n, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit45 ]
  store ptr %.sroa.030.0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %1, ptr %0, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = shl i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.e, i64 %i.p, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.q = shl i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f, i64 %i.q, i1 false)
  store i64 %i.g, ptr %0, align 8
  %5 = shl i64 %.sink.i, 3                        ; 3 uses
  %6 = icmp ult i64 %i.b, 2305843009213693952
  %i.r = icmp ult i64 %5, 9223372036854775801
  %or.cond.i = and i1 %6, %i.r
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit, label %bb.l, !prof !4883

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5243
  store i64 0, ptr %i.a, align 8, !noalias !5243
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %5, ptr %7, align 8, !noalias !5243
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !5243
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 8) #46
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit45, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.i, %bb.h ], [ undef, %bb.e ], [ %i.i, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit45 ], [ %3, %bb.g ], [ %i.i, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter.exit45 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.s = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.t = insertvalue { i64, i64 } %i.s, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.t
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralj1_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5246, !noalias !5249, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 1
  %i.e = load ptr, ptr %0, align 8, !alias.scope !5246, !noalias !5249, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5246, !noalias !5249 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0                 ; 2 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j                        ; 2 uses
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 2 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5251)
  %i.n = icmp ult i64 %i.c, 2                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 1) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #45, !noalias !5251
  unreachable

bb.e:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not47.i = icmp eq i64 %i.c, %i.m
  br i1 %.not47.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.o = shl i64 %i.m, 3                          ; 4 uses
  %1 = icmp ult i64 %i.k, 2305843009213693951
  %i.p = icmp ult i64 %i.o, 9223372036854775801
  %or.cond.i = and i1 %1, %i.p
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.p, !prof !4883

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit.i
  %2 = shl i64 %.sink.i.i, 3                      ; 2 uses
  %3 = icmp ult i64 %i.c, 2305843009213693952
  %i.q = icmp ult i64 %2, 9223372036854775801
  %or.cond64.i = and i1 %3, %i.q
  br i1 %or.cond64.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit49.i, label %bb.p, !prof !4883

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !5251
  %i.r = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef 8) #46, !noalias !5251 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit49.i: ; preds = %bb.i
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8, i64 noundef %i.o) #46, !noalias !5251 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit49.i
  %.sroa.030.0.i = phi ptr [ %i.r, %bb.l ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit49.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !5251
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !5251
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !5251
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit

bb.l:                                             ; preds = %bb.j
  %i.v = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = shl i64 %i.g, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !5251
  %4 = shl i64 %.sink.i.i, 3                      ; 3 uses
  %5 = icmp ult i64 %i.c, 2305843009213693952
  %i.x = icmp ult i64 %4, 9223372036854775801
  %or.cond.i.i = and i1 %5, %i.x
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.n, !prof !4883

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5254
  store i64 0, ptr %i.a, align 8, !noalias !5254
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %6, align 8, !noalias !5254
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !5254
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %4, i64 noundef 8) #46, !noalias !5251
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit49.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.o) #45
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15ExprNoneLiteralECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #45
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefj2_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5257, !noalias !5260, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5257, !noalias !5260
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b  ; 3 uses
  %i.f = icmp eq i64 %.sink9.i, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %.sink9.i, 0
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.i = lshr i64 -1, %i.h
  %.sroa.02.0 = select i1 %i.g, i64 0, i64 %i.i   ; 2 uses
  %i.j = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.j, label %bb.f, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.k = add nuw i64 %.sroa.02.0, 1
  %i.l = tail call fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefj2_E8try_growCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 -1, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit
    i64 0, label %bb.e
  ], !prof !5210

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { i64, i64 } %i.l, 1
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.m, i64 noundef %i.n) #45
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefj2_E8try_growCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 8 uses
  %i.d = icmp ult i64 %i.c, 3                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = load ptr, ptr %0, align 8, !alias.scope !5262, !noalias !5265, !nonnull !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 2) ; 2 uses
  %.val = load i64, ptr %i.g, align 8             ; 3 uses
  %i.h = select i1 %i.e, i64 %.val, i64 %i.c      ; 2 uses
  %.not = icmp ult i64 %1, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %1, 3
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not42 = icmp eq i64 %i.c, %1
  br i1 %.not42, label %bb.m, label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.d, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.j = shl i64 %1, 3                            ; 6 uses
  %2 = icmp ult i64 %1, 2305843009213693952
  %i.k = icmp ult i64 %i.j, 9223372036854775801
  %or.cond = and i1 %2, %i.k
  br i1 %or.cond, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m, !prof !4883

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.f
  br i1 %i.d, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit
  %3 = shl i64 %.sink.i, 3                        ; 3 uses
  %4 = icmp ult i64 %i.c, 2305843009213693952
  %i.l = icmp ult i64 %3, 9223372036854775801
  %or.cond59 = and i1 %4, %i.l
  br i1 %or.cond59, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit44, label %bb.m, !prof !4883

bb.h:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.m = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef 8) #46 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.m, label %bb.j

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit44: ; preds = %bb.g
  %i.o = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %3, i64 noundef 8, i64 noundef %i.j) #46 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit44, %bb.j
  %.sroa.030.0 = phi ptr [ %i.m, %bb.j ], [ %i.o, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit44 ]
  store ptr %.sroa.030.0, ptr %0, align 8
  store i64 %i.h, ptr %i.g, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.q = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %0, i64 %i.q, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.e
  %i.r = shl i64 %.val, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.f, i64 %i.r, i1 false)
  store i64 %.val, ptr %i.b, align 8
  %5 = shl i64 %.sink.i, 3                        ; 3 uses
  %6 = icmp ult i64 %i.c, 2305843009213693952
  %i.s = icmp ult i64 %5, 9223372036854775801
  %or.cond.i = and i1 %6, %i.s
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit, label %bb.l, !prof !4883

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5267
  store i64 0, ptr %i.a, align 8, !noalias !5267
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %5, ptr %7, align 8, !noalias !5267
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !5267
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.k
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %5, i64 noundef 8) #46
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit44, %bb.h, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit, %bb.i, %bb.d
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit ], [ undef, %bb.d ], [ undef, %bb.i ], [ %i.j, %bb.h ], [ undef, %bb.e ], [ %i.j, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit44 ], [ %3, %bb.g ], [ %i.j, %bb.f ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsheqz6YZvxwl_8smallvec10deallocateRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit ], [ -1, %bb.d ], [ -1, %bb.i ], [ 8, %bb.h ], [ -1, %bb.e ], [ 8, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayRNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefECsEhZmuQNqkz_11ruff_linter.exit44 ], [ 0, %bb.g ], [ 0, %bb.f ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARej8_E21reserve_one_uncheckedCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5270, !noalias !5273, !noundef !4 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 8
  %i.e = load ptr, ptr %0, align 8, !alias.scope !5270, !noalias !5273, !nonnull !4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5270, !noalias !5273 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5275)
  %i.n = icmp ult i64 %i.c, 9                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 8) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !33

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #45, !noalias !5275
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 8
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl i64 %i.m, 4                          ; 4 uses
  %1 = icmp ult i64 %.sroa.02.0, 1152921504606846975
  %i.q = icmp ult i64 %i.p, 9223372036854775801
  %or.cond.i = and i1 %1, %i.q
  br i1 %or.cond.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.p, !prof !4883

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit.i
  %2 = shl i64 %.sink.i.i, 4                      ; 2 uses
  %3 = icmp ult i64 %i.c, 1152921504606846976
  %i.r = icmp ult i64 %2, 9223372036854775801
  %or.cond60.i = and i1 %3, %i.r
  br i1 %or.cond60.i, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit45.i, label %bb.p, !prof !4883

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !5275
  %i.s = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #46, !noalias !5275 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit45.i: ; preds = %bb.i
  %i.u = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8, i64 noundef %i.p) #46, !noalias !5275 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.s, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !5275
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !5275
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !5275
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 dereferenceable(136) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(136) %0, ptr nonnull align 8 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !5275
  %4 = shl i64 %.sink.i.i, 4                      ; 3 uses
  %5 = icmp ult i64 %i.c, 1152921504606846976
  %i.y = icmp ult i64 %4, 9223372036854775801
  %or.cond.i.i = and i1 %5, %i.y
  br i1 %or.cond.i.i, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateReECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.n, !prof !4883

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5278
  store i64 0, ptr %i.a, align 8, !noalias !5278
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %4, ptr %6, align 8, !noalias !5278
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #45, !noalias !5278
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateReECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %4, i64 noundef 8) #46, !noalias !5275
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECsEhZmuQNqkz_11ruff_linter.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #45
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #45
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateReECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201) #45
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE4nextCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !420, !noundef !4
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5281)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !5281, !noalias !5284, !noundef !4 ; 5 uses
  %.promoted.i = load i64, ptr %i.f, align 8, !alias.scope !5281, !noalias !5284 ; 2 uses
  %i.i = icmp ult i64 %i.h, %.promoted.i
  br i1 %i.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.not.i = icmp ugt i64 %i.h, %.val1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load i8, ptr %i.k, align 8, !alias.scope !5281, !noalias !5284 ; 2 uses
  %i.m = zext nneg i8 %i.l to i64                 ; 4 uses
  %i.n = icmp ult i8 %i.l, 5
  br i1 %.not.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.o = getelementptr i8, ptr %i.j, i64 %i.m
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  tail call void @llvm.assume(i1 %i.n)
  %.pre.i = load i8, ptr %i.p, align 1, !alias.scope !5281, !noalias !5284 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.split.i
  %i.q = phi i64 [ %.promoted.i, %.lr.ph.split.i ], [ %i.af, %bb.h ] ; 3 uses
  %i.r = sub nuw i64 %i.h, %i.q                   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %i.q ; 2 uses
  %i.t = icmp samesign ult i64 %i.r, 16
  br i1 %i.t, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.u = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.r), !noalias !5286
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i

._crit_edge.i.i:                                  ; preds = %bb.e, %.lr.ph.i.i, %.preheader.i.i
  %.sroa.01.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %.sroa.01.05.i.i, %.lr.ph.i.i ], [ %i.r, %bb.e ]
  %.sroa.0.1.i.i = phi i64 [ 0, %.preheader.i.i ], [ 1, %.lr.ph.i.i ], [ 0, %bb.e ]
  %i.v = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i, 0
  %i.w = insertvalue { i64, i64 } %i.v, i64 %.sroa.01.0.lcssa.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.e
  %.sroa.01.05.i.i = phi i64 [ %i.aa, %bb.e ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.01.05.i.i
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !5287, !noalias !5286, !noundef !4
  %i.z = icmp eq i8 %i.y, %.pre.i
  br i1 %i.z, label %._crit_edge.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.aa = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.aa, %i.r
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i: ; preds = %._crit_edge.i.i, %bb.d
  %.merged.i.i = phi { i64, i64 } [ %i.w, %._crit_edge.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.ab = extractvalue { i64, i64 } %.merged.i.i, 0
  %i.ac = trunc nuw i64 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i
  %i.ad = extractvalue { i64, i64 } %.merged.i.i, 1
  %i.ae = add i64 %i.q, 1
  %i.af = add i64 %i.ae, %i.ad                    ; 7 uses
  store i64 %i.af, ptr %i.f, align 8, !alias.scope !5281, !noalias !5284
  %.not12.i = icmp ult i64 %i.af, %i.m
  %.not13.i = icmp ugt i64 %i.af, %.val1
  %or.cond.i = or i1 %.not12.i, %.not13.i
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.g:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i
  store i64 %i.h, ptr %i.f, align 8, !alias.scope !5281, !noalias !5284
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsEhZmuQNqkz_11ruff_linter.exit

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.ag = icmp ult i64 %i.h, %i.af
  br i1 %i.ag, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

bb.i:                                             ; preds = %bb.f
  %i.ah = sub nuw i64 %i.af, %i.m                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ah
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ai, ptr nonnull %i.j, i64 %i.m), !noalias !5284
  %i.aj = icmp eq i32 %bcmp.i, 0
  br i1 %i.aj, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit, label %bb.h

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit: ; preds = %bb.i
  %i.ak = load i64, ptr %0, align 8, !noundef !4  ; 2 uses
  %i.al = sub nuw i64 %i.ah, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ak
  store i64 %i.af, ptr %0, align 8
  br label %bb.j

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.h, %.lr.ph.i, %bb.b, %bb.g
  store i8 1, ptr %i.a, align 1, !alias.scope !5290
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = load i8, ptr %i.an, align 8, !range !420, !alias.scope !5290, !noundef !4
  %i.ap = trunc nuw i8 %i.ao to i1
  %.pre.i2 = load i64, ptr %0, align 8, !alias.scope !5290 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !5290 ; 2 uses
  %.not.i3 = icmp ne i64 %.pre2.i, %.pre.i2
  %or.cond.not.i = select i1 %i.ap, i1 true, i1 %.not.i3 ; 2 uses
  %i.aq = sub nuw i64 %.pre2.i, %.pre.i2
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 %.pre.i2
  %.sroa.3.0.i = select i1 %or.cond.not.i, i64 %i.aq, i64 undef
  %.sroa.0.0.i = select i1 %or.cond.not.i, ptr %i.ar, ptr null
  br label %bb.j

bb.j:                                             ; preds = %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsEhZmuQNqkz_11ruff_linter.exit, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit, %bb.a
  %.sroa.4.1 = phi i64 [ undef, %bb.a ], [ %i.al, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit ], [ %.sroa.3.0.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsEhZmuQNqkz_11ruff_linter.exit ]
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %i.am, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit ], [ %.sroa.0.0.i, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalcE7get_endCsEhZmuQNqkz_11ruff_linter.exit ]
  %i.as = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.at = insertvalue { ptr, i64 } %i.as, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.at
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsEhZmuQNqkz_11ruff_linter11suppression31rule_identifier_range_at_offset(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [12 x i8], align 4                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [128 x i8], align 8               ; 21 uses
  %i.g = alloca [12 x i8], align 4                ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %5, ptr %i.h, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvNtCsEhZmuQNqkz_11ruff_linter4noqa31rule_identifier_range_at_offset(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5296)
  %i.i = load i32, ptr %i.g, align 4, !range !289, !alias.scope !5296, !noalias !5298, !noundef !4
  %i.j = trunc nuw i32 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.g, i64 12, i1 false), !alias.scope !5300, !noalias !5301
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeE7or_elseNCNvNtCsEhZmuQNqkz_11ruff_linter11suppression31rule_identifier_range_at_offset0EB1L_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5302)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5305
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5310)
  %i.k = zext i32 %3 to i64                       ; 6 uses
  %i.l = zext i32 %4 to i64                       ; 5 uses
  %.not.i.i.i.i = icmp ugt i32 %3, %4
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i32 %3, 0
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not5.i.i.i.i = icmp ugt i64 %2, %i.k
  br i1 %.not5.i.i.i.i, label %bb.g, label %.split.i.i.i.i

bb.f:                                             ; preds = %bb.g, %.split.i.i.i.i, %bb.d
  %i.n = icmp eq i32 %4, 0
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsheqz6YZvxwl_8smallvec8IntoIterANtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangej2_EEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i, label %bb.h

.split.i.i.i.i:                                   ; preds = %bb.e
  %i.o = icmp eq i64 %2, %i.k
end_hunk_1
