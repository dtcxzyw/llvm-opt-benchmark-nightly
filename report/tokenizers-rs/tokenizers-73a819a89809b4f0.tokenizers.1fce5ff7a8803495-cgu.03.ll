Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.03?download=true
inline.NumInlined: 920
inline.NumDeleted: 323
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2A_:bb.a
.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.fs, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa133, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.fg, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.fr, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 4 uses
  %.sroa.011.07.i.i = phi ptr [ %i.fp, %.lr.ph.i.i ], [ %i.eb, %.loopexit.1.i ] ; 4 uses
  %.sroa.015.06.i.i = phi ptr [ %i.gb, %.lr.ph.i.i ], [ %i.fb, %.loopexit.1.i ] ; 4 uses
  %.sroa.017.05.i.i = phi ptr [ %i.ga, %.lr.ph.i.i ], [ %i.fa, %.loopexit.1.i ] ; 4 uses
  %.sroa.019.04.i.i = phi ptr [ %i.gc, %.lr.ph.i.i ], [ %i.ez, %.loopexit.1.i ] ; 2 uses
  %i.fg = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i32, ptr %.sroa.011.07.i.i, align 4, !alias.scope !1277, !noalias !1264, !noundef !3 ; 2 uses
  %i.fh = getelementptr i8, ptr %.sroa.011.07.i.i, i64 4
  %.sroa.011.0.val24.i.i = load i32, ptr %i.fh, align 4, !range !36, !alias.scope !1277, !noalias !1264, !noundef !3
  %.sroa.06.0.val.i.i = load i32, ptr %.sroa.06.08.i.i, align 4, !alias.scope !1277, !noalias !1264, !noundef !3 ; 2 uses
  %i.fi = getelementptr i8, ptr %.sroa.06.08.i.i, i64 4
  %.sroa.06.0.val25.i.i = load i32, ptr %i.fi, align 4, !range !36, !alias.scope !1277, !noalias !1264, !noundef !3
  %i.fj = icmp eq i32 %.sroa.06.0.val.i.i, %.sroa.011.0.val.i.i
  %i.fk = icmp ult i32 %.sroa.06.0.val.i.i, %.sroa.011.0.val.i.i
  %i.fl = icmp samesign ult i32 %.sroa.06.0.val25.i.i, %.sroa.011.0.val24.i.i
  %.sroa.0.0.i.i.i.i55.i = select i1 %i.fj, i1 %i.fl, i1 %i.fk ; 3 uses
  %..i23.i.i = select i1 %.sroa.0.0.i.i.i.i55.i, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.fm = xor i1 %.sroa.0.0.i.i.i.i55.i, true
  %i.fn = load i64, ptr %..i23.i.i, align 4, !alias.scope !1277, !noalias !1278
  store i64 %i.fn, ptr %.sroa.0.010.i.i, align 4, !alias.scope !1264, !noalias !1282
  %i.fo = zext i1 %.sroa.0.0.i.i.i.i55.i to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.07.i.i, i64 %i.fo ; 4 uses
  %i.fq = zext i1 %i.fm to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.08.i.i, i64 %i.fq ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 8 ; 2 uses
  %.sroa.017.0.val.i.i = load i32, ptr %.sroa.017.05.i.i, align 4, !alias.scope !1277, !noalias !1264, !noundef !3 ; 2 uses
  %i.ft = getelementptr i8, ptr %.sroa.017.05.i.i, i64 4
  %.sroa.017.0.val26.i.i = load i32, ptr %i.ft, align 4, !range !36, !alias.scope !1277, !noalias !1264, !noundef !3
  %.sroa.015.0.val.i.i = load i32, ptr %.sroa.015.06.i.i, align 4, !alias.scope !1277, !noalias !1264, !noundef !3 ; 2 uses
  %i.fu = getelementptr i8, ptr %.sroa.015.06.i.i, i64 4
  %.sroa.015.0.val27.i.i = load i32, ptr %i.fu, align 4, !range !36, !alias.scope !1277, !noalias !1264, !noundef !3
  %i.fv = icmp eq i32 %.sroa.015.0.val.i.i, %.sroa.017.0.val.i.i
  %i.fw = icmp ult i32 %.sroa.015.0.val.i.i, %.sroa.017.0.val.i.i
  %i.fx = icmp samesign ult i32 %.sroa.015.0.val27.i.i, %.sroa.017.0.val26.i.i
  %.sroa.0.0.i.i.i28.i.i = select i1 %i.fv, i1 %i.fx, i1 %i.fw ; 3 uses
  %..i.i.i = select i1 %.sroa.0.0.i.i.i28.i.i, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.fy = xor i1 %.sroa.0.0.i.i.i28.i.i, true
  %i.fz = load i64, ptr %..i.i.i, align 4, !alias.scope !1277, !noalias !1283
  store i64 %i.fz, ptr %.sroa.019.04.i.i, align 4, !alias.scope !1264, !noalias !1287
  %.neg.i.i.i = sext i1 %i.fy to i64
  %i.ga = getelementptr [8 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg15.i.i.i = sext i1 %.sroa.0.0.i.i.i28.i.i to i64
  %i.gb = getelementptr [8 x i8], ptr %.sroa.015.06.i.i, i64 %.neg15.i.i.i ; 2 uses
  %i.gc = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -8
  %exitcond.not.i.i = icmp eq i64 %i.fg, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.gd = icmp ult ptr %i.fr, %i.fc               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.gd, ptr %i.fr, ptr %i.fp
  %i.ge = load i64, ptr %.sroa.06.0..sroa.011.0.i.i, align 4, !alias.scope !1277, !noalias !1264
  store i64 %i.ge, ptr %i.fs, align 4, !alias.scope !1264, !noalias !1277
  %i.gf = zext i1 %i.gd to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gf
  %i.gh = xor i1 %i.gd, true
  %i.gi = zext i1 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gi
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.fp, %._crit_edge.i.i ], [ %i.gj, %bb.k ]
  %.sroa.06.1.i.i = phi ptr [ %i.fr, %._crit_edge.i.i ], [ %i.gg, %bb.k ]
  %i.gk = icmp ne ptr %.sroa.06.1.i.i, %i.fc
  %i.gl = icmp ne ptr %.sroa.011.1.i.i, %i.fd
  %or.cond.i.i = select i1 %i.gk, i1 true, i1 %i.gl, !prof !262
  br i1 %or.cond.i.i, label %bb.m, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2R_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2X_.exit, !prof !262

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #22
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.gm = landingpad { ptr, i32 }
          cleanup
  %i.gn = shl nuw nsw i64 %.sroa.16.0.lcssa, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph.lcssa133, ptr nonnull align 4 %2, i64 %i.gn, i1 false), !alias.scope !1288, !noalias !1289
  resume { ptr, i32 } %i.gm

.lr.ph.i:                                         ; preds = %bb.j, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2D_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.hi, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2D_.exit.i ], [ %.sroa.0.0.i, %bb.j ] ; 4 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph.lcssa133, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 3
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  %i.gq = load i64, ptr %i.go, align 4, !alias.scope !1264, !noalias !1267 ; 4 uses
  store i64 %i.gq, ptr %i.gp, align 4, !alias.scope !1267, !noalias !1264
  %i.gr = getelementptr inbounds i8, ptr %i.gp, i64 -8 ; 3 uses
  %i.gs = trunc i64 %i.gq to i32                  ; 4 uses
  %i.gt = lshr i64 %i.gq, 32
  %i.gu = trunc nuw i64 %i.gt to i32              ; 2 uses
  %.val13.i58.i = load i32, ptr %i.gr, align 4, !alias.scope !1267, !noalias !1264, !noundef !3 ; 2 uses
  %i.gv = getelementptr i8, ptr %i.gp, i64 -4
  %.val14.i59.i = load i32, ptr %i.gv, align 4, !range !36, !alias.scope !1267, !noalias !1264, !noundef !3
  %i.gw = icmp eq i32 %.val13.i58.i, %i.gs
  %i.gx = icmp ult i32 %.val13.i58.i, %i.gs
  %i.gy = icmp samesign ult i32 %.val14.i59.i, %i.gu
  %.sroa.0.0.i.i.i.i60.i = select i1 %i.gw, i1 %i.gy, i1 %i.gx
  br i1 %.sroa.0.0.i.i.i.i60.i, label %.preheader.i.preheader, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2D_.exit.i

.preheader.i.preheader:                           ; preds = %.lr.ph.i
  %i.gz = load i64, ptr %i.gr, align 4, !alias.scope !1267, !noalias !1264
  store i64 %i.gz, ptr %i.gp, align 4, !alias.scope !1267, !noalias !1264
  %i.ha = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.ha, label %._crit_edge322, label %.lr.ph321

.preheader.i:                                     ; preds = %.lr.ph321
  %i.hb = load i64, ptr %i.hd, align 4, !alias.scope !1267, !noalias !1264
  store i64 %i.hb, ptr %.sroa.0.0.i61.i320, align 4, !alias.scope !1267, !noalias !1264
  %i.hc = icmp eq ptr %i.hd, %2
  br i1 %i.hc, label %._crit_edge322, label %.lr.ph321

.lr.ph321:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.0.0.i61.i320 = phi ptr [ %i.hd, %.preheader.i ], [ %i.gr, %.preheader.i.preheader ] ; 4 uses
  %i.hd = getelementptr inbounds i8, ptr %.sroa.0.0.i61.i320, i64 -8 ; 4 uses
  %.val9.i62.i = load i32, ptr %i.hd, align 4, !alias.scope !1267, !noalias !1264, !noundef !3 ; 2 uses
  %i.he = getelementptr i8, ptr %.sroa.0.0.i61.i320, i64 -4
  %.val10.i63.i = load i32, ptr %i.he, align 4, !range !36, !alias.scope !1267, !noalias !1264, !noundef !3
  %i.hf = icmp eq i32 %.val9.i62.i, %i.gs
  %i.hg = icmp ult i32 %.val9.i62.i, %i.gs
  %i.hh = icmp samesign ult i32 %.val10.i63.i, %i.gu
  %.sroa.0.0.i.i.i15.i.i = select i1 %i.hf, i1 %i.hh, i1 %i.hg
  br i1 %.sroa.0.0.i.i.i15.i.i, label %.preheader.i, label %._crit_edge322

._crit_edge322:                                   ; preds = %.preheader.i, %.lr.ph321, %.preheader.i.preheader
  %.sroa.0.0.i61.lcssa.i = phi ptr [ %2, %.preheader.i.preheader ], [ %2, %.preheader.i ], [ %.sroa.0.0.i61.i320, %.lr.ph321 ]
  store i64 %i.gq, ptr %.sroa.0.0.i61.lcssa.i, align 4, !alias.scope !1267, !noalias !1269
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2D_.exit.i

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB18_11sort_by_keyINtNtBa_3cmp7ReverseB18_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2x_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2D_.exit.i: ; preds = %._crit_edge322, %.lr.ph.i
  %i.hi = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hi, %i.l
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0136.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph142, %.lr.ph ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyINtNtBa_3cmp7ReverseBW_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2j_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2p_(ptr noalias noundef nonnull align 4 %.sroa.0.0.ph143, i64 noundef %.sroa.16.0136.lcssa, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2R_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2X_.exit

.lr.ph316:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0135315 = phi i32 [ %i.hj, %bb.b ], [ %.sroa.025.0.ph141, %.lr.ph ]
  %.sroa.16.0136314 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph142, %.lr.ph ] ; 19 uses
  %i.hj = add i32 %.sroa.025.0135315, -1          ; 4 uses
  %i.hk = lshr i64 %.sroa.16.0136314, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.hk, 5
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph143, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.hk, 56
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph143, i64 %.idx2.i ; 4 uses
  %i.hn = icmp samesign ult i64 %.sroa.16.0136314, 64
  br i1 %i.hn, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph316
  %i.ho = call fastcc noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB14_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2t_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2z_(ptr noundef nonnull readonly align 4 %.sroa.0.0.ph143, ptr noundef readonly %i.hl, ptr noundef readonly %i.hm, i64 noundef %i.hk)
  br label %bb.r

bb.p:                                             ; preds = %.lr.ph316
  %.val10.i = load i32, ptr %.sroa.0.0.ph143, align 4, !alias.scope !1294, !noundef !3 ; 4 uses
  %.val11.i = load i32, ptr %i.d, align 4, !range !36, !alias.scope !1294, !noundef !3 ; 2 uses
  %.val12.i = load i32, ptr %i.hl, align 4, !alias.scope !1294, !noundef !3 ; 4 uses
  %i.hp = getelementptr i8, ptr %i.hl, i64 4
  %.val13.i = load i32, ptr %i.hp, align 4, !range !36, !alias.scope !1294, !noundef !3 ; 2 uses
  %i.hq = icmp eq i32 %.val12.i, %.val10.i
  %i.hr = icmp ult i32 %.val12.i, %.val10.i
  %i.hs = icmp samesign ult i32 %.val13.i, %.val11.i
  %.sroa.0.0.i.i.i.i = select i1 %i.hq, i1 %i.hs, i1 %i.hr ; 2 uses
  %.val8.i = load i32, ptr %i.hm, align 4, !alias.scope !1294, !noundef !3 ; 4 uses
  %i.ht = getelementptr i8, ptr %i.hm, i64 4
  %.val9.i = load i32, ptr %i.ht, align 4, !range !36, !alias.scope !1294, !noundef !3 ; 2 uses
  %i.hu = icmp eq i32 %.val8.i, %.val10.i
  %i.hv = icmp ult i32 %.val8.i, %.val10.i
  %i.hw = icmp samesign ult i32 %.val9.i, %.val11.i
  %.sroa.0.0.i.i.i14.i = select i1 %i.hu, i1 %i.hw, i1 %i.hv
  %i.hx = xor i1 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i14.i
  br i1 %i.hx, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.hy = icmp eq i32 %.val8.i, %.val12.i
  %i.hz = icmp ult i32 %.val8.i, %.val12.i
  %i.ia = icmp samesign ult i32 %.val9.i, %.val13.i
  %.sroa.0.0.i.i.i15.i = select i1 %i.hy, i1 %i.ia, i1 %i.hz
  %i.ib = xor i1 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i.i.i15.i
  %..i.i = select i1 %i.ib, ptr %i.hm, ptr %i.hl
  br label %bb.r

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2R_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2X_.exit: ; preds = %.outer._crit_edge.thread, %bb.l, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %i.ho, %bb.o ], [ %.sroa.0.0.ph143, %bb.p ], [ %..i.i, %bb.q ]
  %i.ic = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.id = sub nuw i64 %i.ic, %i.e                 ; 2 uses
  %.sroa.0.0.i39 = lshr exact i64 %i.id, 3        ; 3 uses
  %i.ie = icmp samesign ult i64 %.sroa.0.0.i39, %.sroa.16.0136314
  call void @llvm.assume(i1 %i.ie)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph143, i64 %i.id ; 5 uses
  %i.ig = load i32, ptr %i.if, align 4            ; 13 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.ii = load i32, ptr %i.ih, align 4            ; 7 uses
  store i32 %i.ig, ptr %i.a, align 4
  store i32 %i.ii, ptr %i.c, align 4
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.028.0.val = load i32, ptr %.sroa.028.0.ph140, align 4, !noundef !3 ; 2 uses
  %.sroa.028.0.val37 = load i32, ptr %i.f, align 4, !range !36, !noundef !3
  %i.ij = icmp eq i32 %i.ig, %.sroa.028.0.val
  %i.ik = icmp ult i32 %i.ig, %.sroa.028.0.val
  %i.il = icmp samesign ult i32 %i.ii, %.sroa.028.0.val37
  %.sroa.0.0.i.i.i = select i1 %i.ij, i1 %i.il, i1 %i.ik
  br i1 %.sroa.0.0.i.i.i, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.r, %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  %.not95 = icmp samesign ult i64 %3, %.sroa.16.0136314
  br i1 %.not95, label %bb.v, label %bb.u, !prof !262

bb.u:                                             ; preds = %bb.t
  %i.im = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0136314 ; 3 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.x, %bb.u
  %.sroa.43.0.i = phi ptr [ %i.im, %bb.u ], [ %i.js, %bb.x ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.u ], [ %.sroa.27.2.lcssa.i, %bb.x ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph143, %bb.u ], [ %i.jv, %bb.x ] ; 3 uses
  %.sroa.0.0.i40 = phi i64 [ %.sroa.0.0.i39, %bb.u ], [ %.sroa.16.0136314, %bb.x ] ; 3 uses
  %i.in = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i40, i64 3)
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %i.in ; 2 uses
  %i.ip = icmp ult ptr %.sroa.9.0.i, %i.io
  br i1 %i.ip, label %.lr.ph.i42, label %._crit_edge.i

.lr.ph.i42:                                       ; preds = %bb.w, %.lr.ph.i42
  %.sroa.9.131.i = phi ptr [ %i.jc, %.lr.ph.i42 ], [ %.sroa.9.0.i, %bb.w ] ; 10 uses
  %.sroa.27.130.i = phi i64 [ %i.jb, %.lr.ph.i42 ], [ %.sroa.27.0.i, %bb.w ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %32, %.lr.ph.i42 ], [ %.sroa.43.0.i, %bb.w ] ; 4 uses
  %.val30.i = load i32, ptr %.sroa.9.131.i, align 4, !alias.scope !1297, !noalias !1300, !noundef !3 ; 2 uses
  %i.iq = getelementptr i8, ptr %.sroa.9.131.i, i64 4
  %.val31.i = load i32, ptr %i.iq, align 4, !range !36, !alias.scope !1297, !noalias !1300, !noundef !3
  %7 = icmp eq i32 %i.ig, %.val30.i
  %8 = icmp ult i32 %i.ig, %.val30.i
  %9 = icmp samesign ult i32 %i.ii, %.val31.i
  %.sroa.0.0.i.i.i.i43 = select i1 %7, i1 %9, i1 %8 ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %.sroa.01.0.i.i = select i1 %.sroa.0.0.i.i.i.i43, ptr %2, ptr %i.ir
  %10 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  %i.is = load i64, ptr %.sroa.9.131.i, align 4, !alias.scope !1297, !noalias !1302
  store i64 %i.is, ptr %10, align 4, !alias.scope !1300, !noalias !1305
  %11 = zext i1 %.sroa.0.0.i.i.i.i43 to i64
  %12 = add i64 %.sroa.27.130.i, %11              ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8 ; 2 uses
  %.val26.i = load i32, ptr %13, align 4, !alias.scope !1297, !noalias !1300, !noundef !3 ; 2 uses
  %14 = getelementptr i8, ptr %.sroa.9.131.i, i64 12
  %.val27.i = load i32, ptr %14, align 4, !range !36, !alias.scope !1297, !noalias !1300, !noundef !3
  %15 = icmp eq i32 %i.ig, %.val26.i
  %16 = icmp ult i32 %i.ig, %.val26.i
  %17 = icmp samesign ult i32 %i.ii, %.val27.i
  %.sroa.0.0.i.i.i34.i = select i1 %15, i1 %17, i1 %16 ; 2 uses
  %18 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i35.i.a = select i1 %.sroa.0.0.i.i.i34.i, ptr %2, ptr %18
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i35.i.a, i64 %12
  %19 = load i64, ptr %13, align 4, !alias.scope !1297, !noalias !1306
  store i64 %19, ptr %i.it, align 4, !alias.scope !1300, !noalias !1309
  %i.iu = zext i1 %.sroa.0.0.i.i.i34.i to i64
  %i.iv = add i64 %12, %i.iu                      ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16 ; 2 uses
  %.val22.i = load i32, ptr %20, align 4, !alias.scope !1297, !noalias !1300, !noundef !3 ; 2 uses
  %21 = getelementptr i8, ptr %.sroa.9.131.i, i64 20
  %.val23.i = load i32, ptr %21, align 4, !range !36, !alias.scope !1297, !noalias !1300, !noundef !3
  %22 = icmp eq i32 %i.ig, %.val22.i
  %23 = icmp ult i32 %i.ig, %.val22.i
  %24 = icmp samesign ult i32 %i.ii, %.val23.i
  %.sroa.0.0.i.i.i36.i = select i1 %22, i1 %24, i1 %23 ; 2 uses
  %25 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24
  %.sroa.01.0.i37.i.a = select i1 %.sroa.0.0.i.i.i36.i, ptr %2, ptr %25
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i37.i.a, i64 %i.iv
  %26 = load i64, ptr %20, align 4, !alias.scope !1297, !noalias !1310
  store i64 %26, ptr %i.iw, align 4, !alias.scope !1300, !noalias !1313
  %i.ix = zext i1 %.sroa.0.0.i.i.i36.i to i64
  %i.iy = add i64 %i.iv, %i.ix                    ; 2 uses
  %27 = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24 ; 2 uses
  %.val18.i = load i32, ptr %27, align 4, !alias.scope !1297, !noalias !1300, !noundef !3 ; 2 uses
  %28 = getelementptr i8, ptr %.sroa.9.131.i, i64 28
  %.val19.i = load i32, ptr %28, align 4, !range !36, !alias.scope !1297, !noalias !1300, !noundef !3
  %29 = icmp eq i32 %i.ig, %.val18.i
  %30 = icmp ult i32 %i.ig, %.val18.i
  %31 = icmp samesign ult i32 %i.ii, %.val19.i
  %.sroa.0.0.i.i.i38.i = select i1 %29, i1 %31, i1 %30 ; 2 uses
  %32 = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32 ; 3 uses
  %.sroa.01.0.i39.i = select i1 %.sroa.0.0.i.i.i38.i, ptr %2, ptr %32
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i39.i, i64 %i.iy
  %33 = load i64, ptr %27, align 4, !alias.scope !1297, !noalias !1314
  store i64 %33, ptr %i.iz, align 4, !alias.scope !1300, !noalias !1317
  %i.ja = zext i1 %.sroa.0.0.i.i.i38.i to i64
  %i.jb = add i64 %i.iy, %i.ja                    ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 3 uses
  %i.jd = icmp ult ptr %i.jc, %i.io
  br i1 %i.jd, label %.lr.ph.i42, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i42, %bb.w
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.w ], [ %32, %.lr.ph.i42 ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.w ], [ %i.jb, %.lr.ph.i42 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.w ], [ %i.jc, %.lr.ph.i42 ] ; 3 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.0.0.i40 ; 2 uses
  %i.jf = icmp ult ptr %.sroa.9.1.lcssa.i, %i.je
  br i1 %i.jf, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.jl, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.jp, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.jq, %.lr.ph38.i ] ; 2 uses
  %i.jg = icmp eq i64 %.sroa.0.0.i40, %.sroa.16.0136314
  br i1 %i.jg, label %bb.y, label %bb.x

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.jq, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.sroa.27.235.i = phi i64 [ %i.jp, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.jl, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i32, ptr %.sroa.9.236.i, align 4, !alias.scope !1297, !noalias !1300, !noundef !3 ; 2 uses
  %i.jh = getelementptr i8, ptr %.sroa.9.236.i, i64 4
  %.val15.i = load i32, ptr %i.jh, align 4, !range !36, !alias.scope !1297, !noalias !1300, !noundef !3
  %i.ji = icmp eq i32 %i.ig, %.val.i
  %i.jj = icmp ult i32 %i.ig, %.val.i
  %i.jk = icmp samesign ult i32 %i.ii, %.val15.i
  %.sroa.0.0.i.i.i40.i = select i1 %i.ji, i1 %i.jk, i1 %i.jj ; 2 uses
  %i.jl = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8 ; 3 uses
  %.sroa.01.0.i41.i = select i1 %.sroa.0.0.i.i.i40.i, ptr %2, ptr %i.jl
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i41.i, i64 %.sroa.27.235.i
  %i.jn = load i64, ptr %.sroa.9.236.i, align 4, !alias.scope !1297, !noalias !1318
  store i64 %i.jn, ptr %i.jm, align 4, !alias.scope !1300, !noalias !1321
  %i.jo = zext i1 %.sroa.0.0.i.i.i40.i to i64
  %i.jp = add i64 %.sroa.27.235.i, %i.jo          ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8 ; 3 uses
  %i.jr = icmp ult ptr %i.jq, %i.je
  br i1 %i.jr, label %.lr.ph38.i, label %._crit_edge39.i

bb.x:                                             ; preds = %._crit_edge39.i
  %i.js = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %.sroa.27.2.lcssa.i
  %i.ju = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !alias.scope !1297, !noalias !1322
  store i64 %i.ju, ptr %i.jt, align 4, !alias.scope !1300, !noalias !1325
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.w

bb.y:                                             ; preds = %._crit_edge39.i
  %i.jw = shl i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph143, ptr nonnull align 4 %2, i64 %i.jw, i1 false), !alias.scope !1326
  %i.jx = sub i64 %.sroa.16.0136314, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0136314, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.y
  %i.jy = getelementptr [8 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check333 = icmp ult i64 %i.jx, 4
  br i1 %min.iters.check333, label %scalar.ph332.preheader, label %vector.ph334

vector.ph334:                                     ; preds = %.lr.ph45.i
  %n.vec335 = and i64 %i.jx, -4                   ; 3 uses
  br label %vector.body336

vector.body336:                                   ; preds = %vector.body336, %vector.ph334
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next342, %vector.body336 ] ; 3 uses
  %i.jz = xor i64 %index337, -1
  %i.ka = getelementptr [8 x i8], ptr %i.im, i64 %i.jz ; 2 uses
  %i.kb = getelementptr [8 x i8], ptr %i.jy, i64 %index337 ; 2 uses
  %i.kc = getelementptr i8, ptr %i.ka, i64 -8
  %i.kd = getelementptr i8, ptr %i.ka, i64 -24
  %wide.load338 = load <2 x i64>, ptr %i.kc, align 4, !alias.scope !1300, !noalias !1297
  %wide.load339 = load <2 x i64>, ptr %i.kd, align 4, !alias.scope !1300, !noalias !1297
  %reverse340 = shufflevector <2 x i64> %wide.load338, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse341 = shufflevector <2 x i64> %wide.load339, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ke = getelementptr i8, ptr %i.kb, i64 16
  store <2 x i64> %reverse340, ptr %i.kb, align 4, !alias.scope !1297, !noalias !1300
  store <2 x i64> %reverse341, ptr %i.ke, align 4, !alias.scope !1297, !noalias !1300
  %index.next342 = add nuw i64 %index337, 4       ; 2 uses
  %i.kf = icmp eq i64 %index.next342, %n.vec335
  br i1 %i.kf, label %middle.block343, label %vector.body336, !llvm.loop !1327

middle.block343:                                  ; preds = %vector.body336
  %cmp.n344 = icmp eq i64 %i.jx, %n.vec335
  br i1 %cmp.n344, label %.loopexit, label %scalar.ph332.preheader

scalar.ph332.preheader:                           ; preds = %.lr.ph45.i, %middle.block343
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec335, %middle.block343 ]
  br label %scalar.ph332

scalar.ph332:                                     ; preds = %scalar.ph332.preheader, %scalar.ph332
  %.sroa.07.043.i = phi i64 [ %i.kg, %scalar.ph332 ], [ %.sroa.07.043.i.ph, %scalar.ph332.preheader ] ; 3 uses
  %i.kg = add nuw i64 %.sroa.07.043.i, 1          ; 2 uses
  %i.kh = xor i64 %.sroa.07.043.i, -1
  %i.ki = getelementptr [8 x i8], ptr %i.im, i64 %i.kh
  %i.kj = getelementptr [8 x i8], ptr %i.jy, i64 %.sroa.07.043.i
  %i.kk = load i64, ptr %i.ki, align 4, !alias.scope !1300, !noalias !1297
  store i64 %i.kk, ptr %i.kj, align 4, !alias.scope !1297, !noalias !1300
  %exitcond.not.i41 = icmp eq i64 %i.kg, %i.jx
  br i1 %exitcond.not.i41, label %.loopexit, label %scalar.ph332, !llvm.loop !1330

.loopexit:                                        ; preds = %scalar.ph332, %middle.block343, %bb.y
  %i.kl = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.kl, label %.thread, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0136314
  br i1 %.not.i44, label %bb.aa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, !prof !755

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !1331
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.z
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph143) ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2A_(ptr noalias noundef nonnull align 4 %i.km, i64 noundef %i.jx, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.hj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kn = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.kn, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.s, %.loopexit
  %i.ko = getelementptr inbounds nuw i8, ptr %i.if, i64 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  %.not96 = icmp samesign ult i64 %3, %.sroa.16.0136314
  br i1 %.not96, label %bb.ac, label %bb.ab, !prof !262

bb.ab:                                            ; preds = %.thread
  %i.kp = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0136314 ; 3 uses
  br label %bb.ad

bb.ac:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.af, %bb.ab
  %.sroa.43.0.i47 = phi ptr [ %i.kp, %bb.ab ], [ %i.mw, %bb.af ] ; 2 uses
  %.sroa.27.0.i48 = phi i64 [ 0, %bb.ab ], [ %i.mz, %bb.af ] ; 2 uses
  %.sroa.9.0.i49 = phi ptr [ %.sroa.0.0.ph143, %bb.ab ], [ %i.na, %bb.af ] ; 3 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i39, %bb.ab ], [ %.sroa.16.0136314, %bb.af ] ; 3 uses
  %i.kq = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i50, i64 3)
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %i.kq ; 2 uses
  %i.ks = icmp ult ptr %.sroa.9.0.i49, %i.kr
  br i1 %i.ks, label %.lr.ph.i72, label %._crit_edge.i51

.lr.ph.i72:                                       ; preds = %bb.ad
  %.val32.i73 = load i32, ptr %i.if, align 4, !alias.scope !1335, !noalias !1338, !noundef !3 ; 8 uses
  %.val33.i79 = load i32, ptr %i.ko, align 4, !range !36, !alias.scope !1335, !noalias !1338, !noundef !3 ; 4 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i72
  %.sroa.9.131.i74 = phi ptr [ %.sroa.9.0.i49, %.lr.ph.i72 ], [ %i.mg, %bb.ae ] ; 10 uses
  %.sroa.27.130.i75 = phi i64 [ %.sroa.27.0.i48, %.lr.ph.i72 ], [ %i.mf, %bb.ae ] ; 2 uses
  %.sroa.43.129.i76 = phi ptr [ %.sroa.43.0.i47, %.lr.ph.i72 ], [ %i.mb, %bb.ae ] ; 4 uses
  %.val30.i77 = load i32, ptr %.sroa.9.131.i74, align 4, !alias.scope !1335, !noalias !1338, !noundef !3 ; 2 uses
  %i.kt = getelementptr i8, ptr %.sroa.9.131.i74, i64 4
  %.val31.i78 = load i32, ptr %i.kt, align 4, !range !36, !alias.scope !1335, !noalias !1338, !noundef !3
  %i.ku = icmp eq i32 %.val30.i77, %.val32.i73
  %i.kv = icmp uge i32 %.val30.i77, %.val32.i73
  %i.kw = icmp samesign uge i32 %.val31.i78, %.val33.i79
  %.sroa.0.0.i.i.i.i.i80 = select i1 %i.ku, i1 %i.kw, i1 %i.kv ; 2 uses
  %i.kx = getelementptr inbounds i8, ptr %.sroa.43.129.i76, i64 -8
  %.sroa.01.0.i.i81 = select i1 %.sroa.0.0.i.i.i.i.i80, ptr %2, ptr %i.kx
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i81, i64 %.sroa.27.130.i75
  %i.kz = load i64, ptr %.sroa.9.131.i74, align 4, !alias.scope !1335, !noalias !1340
  store i64 %i.kz, ptr %i.ky, align 4, !alias.scope !1338, !noalias !1343
  %i.la = zext i1 %.sroa.0.0.i.i.i.i.i80 to i64
  %i.lb = add i64 %.sroa.27.130.i75, %i.la        ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i74, i64 8 ; 2 uses
  %.val26.i82 = load i32, ptr %i.lc, align 4, !alias.scope !1335, !noalias !1338, !noundef !3 ; 2 uses
  %i.ld = getelementptr i8, ptr %.sroa.9.131.i74, i64 12
  %.val27.i83 = load i32, ptr %i.ld, align 4, !range !36, !alias.scope !1335, !noalias !1338, !noundef !3
  %i.le = icmp eq i32 %.val26.i82, %.val32.i73
  %i.lf = icmp uge i32 %.val26.i82, %.val32.i73
  %i.lg = icmp samesign uge i32 %.val27.i83, %.val33.i79
  %.sroa.0.0.i.i.i.i34.i84 = select i1 %i.le, i1 %i.lg, i1 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %.sroa.43.129.i76, i64 -16
  %.sroa.01.0.i35.i85 = select i1 %.sroa.0.0.i.i.i.i34.i84, ptr %2, ptr %i.lh
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i35.i85, i64 %i.lb
  %i.lj = load i64, ptr %i.lc, align 4, !alias.scope !1335, !noalias !1344
  store i64 %i.lj, ptr %i.li, align 4, !alias.scope !1338, !noalias !1347
  %i.lk = zext i1 %.sroa.0.0.i.i.i.i34.i84 to i64
  %i.ll = add i64 %i.lb, %i.lk                    ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i74, i64 16 ; 2 uses
  %.val22.i86 = load i32, ptr %i.lm, align 4, !alias.scope !1335, !noalias !1338, !noundef !3 ; 2 uses
  %i.ln = getelementptr i8, ptr %.sroa.9.131.i74, i64 20
  %.val23.i87 = load i32, ptr %i.ln, align 4, !range !36, !alias.scope !1335, !noalias !1338, !noundef !3
  %i.lo = icmp eq i32 %.val22.i86, %.val32.i73
  %i.lp = icmp uge i32 %.val22.i86, %.val32.i73
  %i.lq = icmp samesign uge i32 %.val23.i87, %.val33.i79
  %.sroa.0.0.i.i.i.i36.i = select i1 %i.lo, i1 %i.lq, i1 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds i8, ptr %.sroa.43.129.i76, i64 -24
  %.sroa.01.0.i37.i88 = select i1 %.sroa.0.0.i.i.i.i36.i, ptr %2, ptr %i.lr
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i37.i88, i64 %i.ll
  %i.lt = load i64, ptr %i.lm, align 4, !alias.scope !1335, !noalias !1348
  store i64 %i.lt, ptr %i.ls, align 4, !alias.scope !1338, !noalias !1351
  %i.lu = zext i1 %.sroa.0.0.i.i.i.i36.i to i64
  %i.lv = add i64 %i.ll, %i.lu                    ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i74, i64 24 ; 2 uses
  %.val18.i89 = load i32, ptr %i.lw, align 4, !alias.scope !1335, !noalias !1338, !noundef !3 ; 2 uses
  %i.lx = getelementptr i8, ptr %.sroa.9.131.i74, i64 28
  %.val19.i90 = load i32, ptr %i.lx, align 4, !range !36, !alias.scope !1335, !noalias !1338, !noundef !3
  %i.ly = icmp eq i32 %.val18.i89, %.val32.i73
  %i.lz = icmp uge i32 %.val18.i89, %.val32.i73
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!1105 = distinct !{!1105, !1106, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2w_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2C_: argument 0"}
!1106 = distinct !{!1106, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2w_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2C_"}
!1107 = !{!1108}
!1108 = distinct !{!1108, !1109, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_: argument 0"}
!1109 = distinct !{!1109, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_"}
!1110 = !{!1111}
!1111 = distinct !{!1111, !1109, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_: argument 1"}
!1112 = !{!1113, !1115, !1108, !1105}
!1113 = distinct !{!1113, !1114, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 0"}
!1114 = distinct !{!1114, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_"}
!1115 = distinct !{!1115, !1114, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 1"}
!1116 = !{!1117, !1119, !1111, !1105}
!1117 = distinct !{!1117, !1118, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 0"}
!1118 = distinct !{!1118, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_"}
!1119 = distinct !{!1119, !1118, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 1"}
!1120 = !{!1121, !1123, !1124, !1126, !1108, !1111, !1105}
!1121 = distinct !{!1121, !1122, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1122 = distinct !{!1122, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers"}
!1123 = distinct !{!1123, !1122, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1124 = distinct !{!1124, !1125, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1125 = distinct !{!1125, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers"}
!1126 = distinct !{!1126, !1125, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1127 = !{!1128}
!1128 = distinct !{!1128, !1129, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_: argument 0"}
!1129 = distinct !{!1129, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_"}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1129, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_: argument 1"}
!1132 = !{!1133, !1135, !1131, !1105}
!1133 = distinct !{!1133, !1134, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 0"}
!1134 = distinct !{!1134, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_"}
!1135 = distinct !{!1135, !1134, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 1"}
!1136 = !{!1137, !1139, !1128, !1105}
!1137 = distinct !{!1137, !1138, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 0"}
!1138 = distinct !{!1138, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_"}
!1139 = distinct !{!1139, !1138, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 1"}
!1140 = !{!1141, !1143, !1144, !1146, !1128, !1131, !1105}
!1141 = distinct !{!1141, !1142, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1142 = distinct !{!1142, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers"}
!1143 = distinct !{!1143, !1142, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1144 = distinct !{!1144, !1145, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1145 = distinct !{!1145, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers"}
!1146 = distinct !{!1146, !1145, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1147 = !{!1148}
!1148 = distinct !{!1148, !1149, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_: argument 0"}
!1149 = distinct !{!1149, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_"}
!1150 = !{!1151}
!1151 = distinct !{!1151, !1149, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_: argument 1"}
!1152 = !{!1153, !1155, !1151, !1105}
!1153 = distinct !{!1153, !1154, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 0"}
!1154 = distinct !{!1154, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_"}
!1155 = distinct !{!1155, !1154, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 1"}
!1156 = !{!1157, !1159, !1148, !1105}
!1157 = distinct !{!1157, !1158, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 0"}
!1158 = distinct !{!1158, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_"}
!1159 = distinct !{!1159, !1158, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 1"}
!1160 = !{!1161, !1163, !1164, !1166, !1148, !1151, !1105}
!1161 = distinct !{!1161, !1162, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1162 = distinct !{!1162, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers"}
!1163 = distinct !{!1163, !1162, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1164 = distinct !{!1164, !1165, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1165 = distinct !{!1165, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers"}
!1166 = distinct !{!1166, !1165, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1167 = !{!1168}
!1168 = distinct !{!1168, !1169, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_: argument 0"}
!1169 = distinct !{!1169, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_"}
!1170 = !{!1171}
!1171 = distinct !{!1171, !1169, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_: argument 1"}
!1172 = !{!1173, !1175, !1168}
!1173 = distinct !{!1173, !1174, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 0"}
!1174 = distinct !{!1174, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_"}
!1175 = distinct !{!1175, !1174, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 1"}
!1176 = !{!1177, !1179, !1171}
!1177 = distinct !{!1177, !1178, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 0"}
!1178 = distinct !{!1178, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_"}
!1179 = distinct !{!1179, !1178, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 1"}
!1180 = !{!1181, !1183, !1184, !1186, !1168, !1171}
!1181 = distinct !{!1181, !1182, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1182 = distinct !{!1182, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers"}
!1183 = distinct !{!1183, !1182, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1184 = distinct !{!1184, !1185, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1185 = distinct !{!1185, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers"}
!1186 = distinct !{!1186, !1185, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1187 = !{!1188}
!1188 = distinct !{!1188, !1189, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2E_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2K_: argument 0"}
!1189 = distinct !{!1189, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2E_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2K_"}
!1190 = !{!1191}
!1191 = distinct !{!1191, !1189, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2E_14UnigramTrainer25make_seed_sentence_piecess2_0E0EB2K_: argument 1"}
!1192 = !{!1193, !1195, !1196, !1188}
!1193 = distinct !{!1193, !1194, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 0"}
!1194 = distinct !{!1194, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_"}
!1195 = distinct !{!1195, !1194, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 1"}
!1196 = distinct !{!1196, !1197, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_: argument 1"}
!1197 = distinct !{!1197, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_"}
!1198 = !{!1199, !1191}
!1199 = distinct !{!1199, !1197, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_: argument 0"}
!1200 = !{!1199}
!1201 = !{!1196}
!1202 = !{!1203, !1205, !1199, !1188}
!1203 = distinct !{!1203, !1204, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 0"}
!1204 = distinct !{!1204, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_"}
!1205 = distinct !{!1205, !1204, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 1"}
!1206 = !{!1196, !1191}
!1207 = !{!1208, !1210, !1211, !1213, !1199, !1196, !1188, !1191}
!1208 = distinct !{!1208, !1209, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1209 = distinct !{!1209, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers"}
!1210 = distinct !{!1210, !1209, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1211 = distinct !{!1211, !1212, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1212 = distinct !{!1212, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers"}
!1213 = distinct !{!1213, !1212, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1214 = !{!1188, !1191}
!1215 = !{!1216}
!1216 = distinct !{!1216, !1217, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmRScEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1217 = distinct !{!1217, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmRScEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1218 = !{!1219}
!1219 = distinct !{!1219, !1220, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmRScEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1220 = distinct !{!1220, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmRScEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1221 = !{!1222, !1224}
!1222 = distinct !{!1222, !1223, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmRScE12split_at_mutCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1223 = distinct !{!1223, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmRScE12split_at_mutCs2JiOgHzbbc7_10tokenizers"}
!1224 = distinct !{!1224, !1223, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmRScE12split_at_mutCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1225 = !{!1226}
!1226 = distinct !{!1226, !1227, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_: argument 0"}
!1227 = distinct !{!1227, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_"}
!1228 = !{!1229}
!1229 = distinct !{!1229, !1227, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmRScENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB30_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0EB36_: argument 1"}
!1230 = !{!1231, !1233, !1234, !1236, !1226}
!1231 = distinct !{!1231, !1232, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 0"}
!1232 = distinct !{!1232, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_"}
!1233 = distinct !{!1233, !1232, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 1"}
!1234 = distinct !{!1234, !1235, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_: argument 0"}
!1235 = distinct !{!1235, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_"}
!1236 = distinct !{!1236, !1237, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_: argument 1"}
!1237 = distinct !{!1237, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_"}
!1238 = !{!1239, !1240, !1229}
!1239 = distinct !{!1239, !1235, !"_RNCINvMNtCscdodAO9FK5_5alloc5sliceSTmRScE11sort_by_keyINtNtCs4NRVxsYgnAr_4core3cmp7ReverseBx_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB1B_14UnigramTrainer25make_seed_sentence_piecess2_0E0B1H_: argument 1"}
!1240 = distinct !{!1240, !1237, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmRScENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBc_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2y_14UnigramTrainer25make_seed_sentence_piecess2_0E0E0B2E_: argument 0"}
!1241 = !{!1240}
!1242 = !{!1236}
!1243 = !{!1234}
!1244 = !{!1239}
!1245 = !{!1246, !1248, !1239, !1240, !1226}
!1246 = distinct !{!1246, !1247, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 0"}
!1247 = distinct !{!1247, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_"}
!1248 = distinct !{!1248, !1247, !"_RNCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB6_14UnigramTrainer25make_seed_sentence_piecess2_0Bc_: argument 1"}
!1249 = !{!1234, !1236, !1229}
!1250 = !{!1251, !1253, !1254, !1256, !1234, !1239, !1240, !1236, !1226, !1229}
!1251 = distinct !{!1251, !1252, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1252 = distinct !{!1252, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers"}
!1253 = distinct !{!1253, !1252, !"_RNvXsc_NtCs4NRVxsYgnAr_4core5tupleTmRScENtNtB7_3cmp10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1254 = distinct !{!1254, !1255, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1255 = distinct !{!1255, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers"}
!1256 = distinct !{!1256, !1255, !"_RNvXs_NtCs4NRVxsYgnAr_4core3cmpINtB4_7ReverseTmRScEENtB4_10PartialOrd2ltCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1257 = !{!1226, !1229}
!1258 = !{!1259}
!1259 = distinct !{!1259, !1260, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmRScEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1260 = distinct !{!1260, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmRScEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1261 = !{!1262}
!1262 = distinct !{!1262, !1263, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmRScEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1263 = distinct !{!1263, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmRScEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1264 = !{!1265}
!1265 = distinct !{!1265, !1266, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2R_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2X_: argument 0"}
!1266 = distinct !{!1266, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2R_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2X_"}
!1267 = !{!1268}
!1268 = distinct !{!1268, !1266, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1s_11sort_by_keyINtNtBa_3cmp7ReverseB1s_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2R_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2X_: argument 1"}
!1269 = !{!1270, !1272, !1265}
!1270 = distinct !{!1270, !1271, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTmcEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1271 = distinct !{!1271, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTmcEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers"}
!1272 = distinct !{!1272, !1273, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTmcEEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1273 = distinct !{!1273, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTmcEEECs2JiOgHzbbc7_10tokenizers"}
!1274 = !{!1275}
!1275 = distinct !{!1275, !1276, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1g_11sort_by_keyINtNtBa_3cmp7ReverseB1g_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2F_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2L_: argument 0"}
!1276 = distinct !{!1276, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1g_11sort_by_keyINtNtBa_3cmp7ReverseB1g_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2F_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2L_"}
!1277 = !{!1275, !1268}
!1278 = !{!1279, !1281, !1265}
!1279 = distinct !{!1279, !1280, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB14_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2t_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2z_: argument 0"}
!1280 = distinct !{!1280, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB14_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2t_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2z_"}
!1281 = distinct !{!1281, !1280, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_11sort_by_keyINtNtBa_3cmp7ReverseB14_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2t_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2z_: argument 1"}
!1282 = !{!1279, !1281, !1275, !1268}
!1283 = !{!1284, !1286, !1265}
!1284 = distinct !{!1284, !1285, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBa_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2w_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2C_: argument 0"}
!1285 = distinct !{!1285, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBa_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2w_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2C_"}
!1286 = distinct !{!1286, !1285, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB17_11sort_by_keyINtNtBa_3cmp7ReverseB17_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2w_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2C_: argument 1"}
!1287 = !{!1284, !1286, !1275, !1268}
!1288 = !{!1265, !1268}
!1289 = !{!1290, !1292}
!1290 = distinct !{!1290, !1291, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTmcEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1291 = distinct !{!1291, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTmcEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers"}
!1292 = distinct !{!1292, !1293, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTmcEEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1293 = distinct !{!1293, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTmcEEECs2JiOgHzbbc7_10tokenizers"}
!1294 = !{!1295}
!1295 = distinct !{!1295, !1296, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2A_: argument 0"}
!1296 = distinct !{!1296, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2A_"}
!1297 = !{!1298}
!1298 = distinct !{!1298, !1299, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2C_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2I_: argument 0"}
!1299 = distinct !{!1299, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2C_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2I_"}
!1300 = !{!1301}
!1301 = distinct !{!1301, !1299, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2C_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2I_: argument 1"}
!1302 = !{!1303, !1301}
!1303 = distinct !{!1303, !1304, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1304 = distinct !{!1304, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1305 = !{!1303, !1298}
!1306 = !{!1307, !1301}
!1307 = distinct !{!1307, !1308, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1308 = distinct !{!1308, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1309 = !{!1307, !1298}
!1310 = !{!1311, !1301}
!1311 = distinct !{!1311, !1312, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1312 = distinct !{!1312, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1313 = !{!1311, !1298}
!1314 = !{!1315, !1301}
!1315 = distinct !{!1315, !1316, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1316 = distinct !{!1316, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1317 = !{!1315, !1298}
!1318 = !{!1319, !1301}
!1319 = distinct !{!1319, !1320, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1320 = distinct !{!1320, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1321 = !{!1319, !1298}
!1322 = !{!1323, !1301}
!1323 = distinct !{!1323, !1324, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1324 = distinct !{!1324, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1325 = !{!1323, !1298}
!1326 = !{!1298, !1301}
!1327 = distinct !{!1327, !1328, !1329}
!1328 = !{!"llvm.loop.isvectorized", i32 1}
!1329 = !{!"llvm.loop.unroll.runtime.disable"}
!1330 = distinct !{!1330, !1329, !1328}
!1331 = !{!1332, !1334}
!1332 = distinct !{!1332, !1333, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1333 = distinct !{!1333, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers"}
!1334 = distinct !{!1334, !1333, !"_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers: argument 1"}
!1335 = !{!1336}
!1336 = distinct !{!1336, !1337, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2Y_14UnigramTrainer25make_seed_sentence_piecess0_0E0E0EB34_: argument 0"}
!1337 = distinct !{!1337, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2Y_14UnigramTrainer25make_seed_sentence_piecess0_0E0E0EB34_"}
!1338 = !{!1339}
!1339 = distinct !{!1339, !1337, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort16stable_partitionTmcENCINvB2_9quicksortB1d_NCINvMNtCscdodAO9FK5_5alloc5sliceSB1d_11sort_by_keyINtNtBa_3cmp7ReverseB1d_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2Y_14UnigramTrainer25make_seed_sentence_piecess0_0E0E0EB34_: argument 1"}
!1340 = !{!1341, !1339}
!1341 = distinct !{!1341, !1342, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1342 = distinct !{!1342, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1343 = !{!1341, !1336}
!1344 = !{!1345, !1339}
!1345 = distinct !{!1345, !1346, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1346 = distinct !{!1346, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1347 = !{!1345, !1336}
!1348 = !{!1349, !1339}
!1349 = distinct !{!1349, !1350, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1350 = distinct !{!1350, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1351 = !{!1349, !1336}
!1352 = !{!1353, !1339}
!1353 = distinct !{!1353, !1354, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1354 = distinct !{!1354, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1355 = !{!1353, !1336}
!1356 = !{!1357, !1339}
!1357 = distinct !{!1357, !1358, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1358 = distinct !{!1358, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1359 = !{!1357, !1336}
!1360 = !{!1361, !1339}
!1361 = distinct !{!1361, !1362, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1362 = distinct !{!1362, !"_RNvMNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksortINtB2_14PartitionStateTmcEE13partition_oneCs2JiOgHzbbc7_10tokenizers"}
!1363 = !{!1361, !1336}
!1364 = !{!1336, !1339}
!1365 = distinct !{!1365, !1328, !1329}
!1366 = distinct !{!1366, !1329, !1328}
!1367 = !{!1368}
!1368 = distinct !{!1368, !1369, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2E_9WordPieceNtNtB2I_9tokenizer5Model4save0E0EB2I_: argument 0"}
!1369 = distinct !{!1369, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2E_9WordPieceNtNtB2I_9tokenizer5Model4save0E0EB2I_"}
!1370 = !{!1371}
!1371 = distinct !{!1371, !1372, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1s_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2R_9WordPieceNtNtB2V_9tokenizer5Model4save0E0EB2V_: argument 0"}
!1372 = distinct !{!1372, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1s_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2R_9WordPieceNtNtB2V_9tokenizer5Model4save0E0EB2V_"}
!1373 = !{!1374}
!1374 = distinct !{!1374, !1372, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1s_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2R_9WordPieceNtNtB2V_9tokenizer5Model4save0E0EB2V_: argument 1"}
!1375 = !{!1371, !1368}
!1376 = !{!1371, !1374}
!1377 = !{!1378, !1380, !1371, !1368}
!1378 = distinct !{!1378, !1379, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRNtNtCscdodAO9FK5_5alloc6string6StringRmEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1379 = distinct !{!1379, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRNtNtCscdodAO9FK5_5alloc6string6StringRmEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers"}
!1380 = distinct !{!1380, !1381, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRNtNtCscdodAO9FK5_5alloc6string6StringRmEEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1381 = distinct !{!1381, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRNtNtCscdodAO9FK5_5alloc6string6StringRmEEECs2JiOgHzbbc7_10tokenizers"}
!1382 = !{!1383}
!1383 = distinct !{!1383, !1384, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1g_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2F_9WordPieceNtNtB2J_9tokenizer5Model4save0E0EB2J_: argument 0"}
!1384 = distinct !{!1384, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1g_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2F_9WordPieceNtNtB2J_9tokenizer5Model4save0E0EB2J_"}
!1385 = !{!1383, !1374}
!1386 = !{!1387, !1389}
!1387 = distinct !{!1387, !1388, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2t_9WordPieceNtNtB2x_9tokenizer5Model4save0E0EB2x_: argument 0"}
!1388 = distinct !{!1388, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2t_9WordPieceNtNtB2x_9tokenizer5Model4save0E0EB2x_"}
!1389 = distinct !{!1389, !1388, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2t_9WordPieceNtNtB2x_9tokenizer5Model4save0E0EB2x_: argument 1"}
!1390 = !{!1391, !1393}
!1391 = distinct !{!1391, !1392, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2w_9WordPieceNtNtB2A_9tokenizer5Model4save0E0EB2A_: argument 0"}
!1392 = distinct !{!1392, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2w_9WordPieceNtNtB2A_9tokenizer5Model4save0E0EB2A_"}
!1393 = distinct !{!1393, !1392, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2w_9WordPieceNtNtB2A_9tokenizer5Model4save0E0EB2A_: argument 1"}
!1394 = !{!1395, !1397}
!1395 = distinct !{!1395, !1396, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRNtNtCscdodAO9FK5_5alloc6string6StringRmEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1396 = distinct !{!1396, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRNtNtCscdodAO9FK5_5alloc6string6StringRmEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers"}
!1397 = distinct !{!1397, !1398, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRNtNtCscdodAO9FK5_5alloc6string6StringRmEEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1398 = distinct !{!1398, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRNtNtCscdodAO9FK5_5alloc6string6StringRmEEECs2JiOgHzbbc7_10tokenizers"}
!1399 = !{!1400}
!1400 = distinct !{!1400, !1401, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB15_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2u_9WordPieceNtNtB2y_9tokenizer5Model4save0E0EB2y_: argument 0"}
!1401 = distinct !{!1401, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB15_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2u_9WordPieceNtNtB2y_9tokenizer5Model4save0E0EB2y_"}
!1402 = !{!1403}
!1403 = distinct !{!1403, !1404, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2w_9WordPieceNtNtB2A_9tokenizer5Model4save0E0EB2A_: argument 0"}
!1404 = distinct !{!1404, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2w_9WordPieceNtNtB2A_9tokenizer5Model4save0E0EB2A_"}
!1405 = !{!1406}
!1406 = distinct !{!1406, !1407, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2W_9WordPieceNtNtB30_9tokenizer5Model4save0E0EB30_: argument 0"}
!1407 = distinct !{!1407, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2W_9WordPieceNtNtB30_9tokenizer5Model4save0E0EB30_"}
!1408 = !{!1409}
!1409 = distinct !{!1409, !1407, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2W_9WordPieceNtNtB30_9tokenizer5Model4save0E0EB30_: argument 1"}
!1410 = !{!1406, !1409, !1403}
!1411 = !{!1406, !1403}
!1412 = !{!1409, !1403}
!1413 = !{!1414, !1406, !1409}
!1414 = distinct !{!1414, !1415, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2Y_9WordPieceNtNtB32_9tokenizer5Model4save0E0E0B32_: argument 0"}
!1415 = distinct !{!1415, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2Y_9WordPieceNtNtB32_9tokenizer5Model4save0E0E0B32_"}
!1416 = !{!1417, !1409}
!1417 = distinct !{!1417, !1418, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2Y_9WordPieceNtNtB32_9tokenizer5Model4save0E0E0B32_: argument 0"}
!1418 = distinct !{!1418, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2Y_9WordPieceNtNtB32_9tokenizer5Model4save0E0E0B32_"}
!1419 = !{!1417, !1406, !1409}
!1420 = !{!1414, !1409}
!1421 = !{!1422, !1409}
!1422 = distinct !{!1422, !1423, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2Y_9WordPieceNtNtB32_9tokenizer5Model4save0E0E0B32_: argument 0"}
!1423 = distinct !{!1423, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2Y_9WordPieceNtNtB32_9tokenizer5Model4save0E0E0B32_"}
!1424 = !{!1422, !1406, !1409}
!1425 = !{!1426}
!1426 = distinct !{!1426, !1427, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB2_9quicksortB17_NCINvMB8_SB17_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2S_9WordPieceNtNtB2W_9tokenizer5Model4save0E0E0EB2W_: argument 0"}
!1427 = distinct !{!1427, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB2_9quicksortB17_NCINvMB8_SB17_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2S_9WordPieceNtNtB2W_9tokenizer5Model4save0E0E0EB2W_"}
!1428 = !{!1429}
!1429 = distinct !{!1429, !1430, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3i_9WordPieceNtNtB3m_9tokenizer5Model4save0E0E0EB3m_: argument 0"}
!1430 = distinct !{!1430, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3i_9WordPieceNtNtB3m_9tokenizer5Model4save0E0E0EB3m_"}
!1431 = !{!1432}
!1432 = distinct !{!1432, !1430, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3i_9WordPieceNtNtB3m_9tokenizer5Model4save0E0E0EB3m_: argument 1"}
!1433 = !{!1429, !1432, !1426}
!1434 = !{!1429, !1426}
!1435 = !{!1432, !1426}
!1436 = !{!1437, !1429, !1432}
!1437 = distinct !{!1437, !1438, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3k_9WordPieceNtNtB3o_9tokenizer5Model4save0E0E0E0B3o_: argument 0"}
!1438 = distinct !{!1438, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3k_9WordPieceNtNtB3o_9tokenizer5Model4save0E0E0E0B3o_"}
!1439 = !{!1440, !1432}
!1440 = distinct !{!1440, !1441, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3k_9WordPieceNtNtB3o_9tokenizer5Model4save0E0E0E0B3o_: argument 0"}
!1441 = distinct !{!1441, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3k_9WordPieceNtNtB3o_9tokenizer5Model4save0E0E0E0B3o_"}
!1442 = !{!1440, !1429, !1432}
!1443 = !{!1437, !1432}
!1444 = !{!1445, !1432}
!1445 = distinct !{!1445, !1446, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3k_9WordPieceNtNtB3o_9tokenizer5Model4save0E0E0E0B3o_: argument 0"}
!1446 = distinct !{!1446, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRNtNtCscdodAO9FK5_5alloc6string6StringRmENCINvB4_9quicksortB1z_NCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB3k_9WordPieceNtNtB3o_9tokenizer5Model4save0E0E0E0B3o_"}
!1447 = !{!1445, !1429, !1432}
!1448 = !{!1449}
!1449 = distinct !{!1449, !1450, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTRTmmERmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB27_3BPENtNtB2d_9tokenizer5Model4saves_0E0EB2d_: argument 0"}
!1450 = distinct !{!1450, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort18small_sort_generalTRTmmERmENCINvMB8_SB1f_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB27_3BPENtNtB2d_9tokenizer5Model4saves_0E0EB2d_"}
!1451 = !{!1452}
!1452 = distinct !{!1452, !1453, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRTmmERmENCINvMB8_SB1s_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2k_3BPENtNtB2q_9tokenizer5Model4saves_0E0EB2q_: argument 0"}
!1453 = distinct !{!1453, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRTmmERmENCINvMB8_SB1s_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2k_3BPENtNtB2q_9tokenizer5Model4saves_0E0EB2q_"}
!1454 = !{!1455}
!1455 = distinct !{!1455, !1453, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTRTmmERmENCINvMB8_SB1s_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2k_3BPENtNtB2q_9tokenizer5Model4saves_0E0EB2q_: argument 1"}
!1456 = !{!1452, !1449}
!1457 = !{!1452, !1455}
!1458 = !{!1459, !1461, !1452, !1449}
!1459 = distinct !{!1459, !1460, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRTmmERmEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1460 = distinct !{!1460, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRTmmERmEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers"}
!1461 = distinct !{!1461, !1462, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRTmmERmEEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1462 = distinct !{!1462, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRTmmERmEEECs2JiOgHzbbc7_10tokenizers"}
!1463 = !{!1464}
!1464 = distinct !{!1464, !1465, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeTRTmmERmENCINvMB8_SB1g_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB28_3BPENtNtB2e_9tokenizer5Model4saves_0E0EB2e_: argument 0"}
!1465 = distinct !{!1465, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeTRTmmERmENCINvMB8_SB1g_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB28_3BPENtNtB2e_9tokenizer5Model4saves_0E0EB2e_"}
!1466 = !{!1464, !1455}
!1467 = !{!1468, !1470}
!1468 = distinct !{!1468, !1469, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTRTmmERmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1W_3BPENtNtB22_9tokenizer5Model4saves_0E0EB22_: argument 0"}
!1469 = distinct !{!1469, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTRTmmERmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1W_3BPENtNtB22_9tokenizer5Model4saves_0E0EB22_"}
!1470 = distinct !{!1470, !1469, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort8merge_upTRTmmERmENCINvMB8_SB14_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1W_3BPENtNtB22_9tokenizer5Model4saves_0E0EB22_: argument 1"}
!1471 = !{!1472, !1474}
!1472 = distinct !{!1472, !1473, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTRTmmERmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1Z_3BPENtNtB25_9tokenizer5Model4saves_0E0EB25_: argument 0"}
!1473 = distinct !{!1473, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTRTmmERmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1Z_3BPENtNtB25_9tokenizer5Model4saves_0E0EB25_"}
!1474 = distinct !{!1474, !1473, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort10merge_downTRTmmERmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1Z_3BPENtNtB25_9tokenizer5Model4saves_0E0EB25_: argument 1"}
!1475 = !{!1476, !1478}
!1476 = distinct !{!1476, !1477, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRTmmERmEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers: argument 0"}
!1477 = distinct !{!1477, !"_RNvXs5_NtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsortINtB5_10CopyOnDropTRTmmERmEENtNtNtBd_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers"}
!1478 = distinct !{!1478, !1479, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRTmmERmEEECs2JiOgHzbbc7_10tokenizers: argument 0"}
!1479 = distinct !{!1479, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropTRTmmERmEEECs2JiOgHzbbc7_10tokenizers"}
!1480 = !{!1481}
!1481 = distinct !{!1481, !1482, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRTmmERmENCINvMB8_SB15_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1X_3BPENtNtB23_9tokenizer5Model4saves_0E0EB23_: argument 0"}
!1482 = distinct !{!1482, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot12choose_pivotTRTmmERmENCINvMB8_SB15_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1X_3BPENtNtB23_9tokenizer5Model4saves_0E0EB23_"}
!1483 = !{!1484}
!1484 = distinct !{!1484, !1485, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTRTmmERmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1Z_3BPENtNtB25_9tokenizer5Model4saves_0E0EB25_: argument 0"}
!1485 = distinct !{!1485, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTRTmmERmENCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB1Z_3BPENtNtB25_9tokenizer5Model4saves_0E0EB25_"}
!1486 = !{!1487}
!1487 = distinct !{!1487, !1488, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2p_3BPENtNtB2v_9tokenizer5Model4saves_0E0EB2v_: argument 0"}
!1488 = distinct !{!1488, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2p_3BPENtNtB2v_9tokenizer5Model4saves_0E0EB2v_"}
!1489 = !{!1490}
!1490 = distinct !{!1490, !1488, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2p_3BPENtNtB2v_9tokenizer5Model4saves_0E0EB2v_: argument 1"}
!1491 = !{!1487, !1490, !1484}
!1492 = !{!1487, !1484}
!1493 = !{!1490, !1484}
!1494 = !{!1495, !1487, !1490}
!1495 = distinct !{!1495, !1496, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2r_3BPENtNtB2x_9tokenizer5Model4saves_0E0E0B2x_: argument 0"}
!1496 = distinct !{!1496, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2r_3BPENtNtB2x_9tokenizer5Model4saves_0E0E0B2x_"}
!1497 = !{!1498, !1490}
!1498 = distinct !{!1498, !1499, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2r_3BPENtNtB2x_9tokenizer5Model4saves_0E0E0B2x_: argument 0"}
!1499 = distinct !{!1499, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2r_3BPENtNtB2x_9tokenizer5Model4saves_0E0E0B2x_"}
!1500 = !{!1498, !1487, !1490}
!1501 = !{!1495, !1490}
!1502 = !{!1503, !1490}
!1503 = distinct !{!1503, !1504, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2r_3BPENtNtB2x_9tokenizer5Model4saves_0E0E0B2x_: argument 0"}
!1504 = distinct !{!1504, !"_RNCINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvMBa_SB1z_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2r_3BPENtNtB2x_9tokenizer5Model4saves_0E0E0B2x_"}
!1505 = !{!1503, !1487, !1490}
!1506 = !{!1507}
!1507 = distinct !{!1507, !1508, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTRTmmERmENCINvB2_9quicksortB17_NCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2l_3BPENtNtB2r_9tokenizer5Model4saves_0E0E0EB2r_: argument 0"}
!1508 = distinct !{!1508, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9partitionTRTmmERmENCINvB2_9quicksortB17_NCINvMB8_SB17_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2l_3BPENtNtB2r_9tokenizer5Model4saves_0E0E0EB2r_"}
!1509 = !{!1510}
!1510 = distinct !{!1510, !1511, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2L_3BPENtNtB2R_9tokenizer5Model4saves_0E0E0EB2R_: argument 0"}
!1511 = distinct !{!1511, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2L_3BPENtNtB2R_9tokenizer5Model4saves_0E0E0EB2R_"}
!1512 = !{!1513}
!1513 = distinct !{!1513, !1511, !"_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort34partition_lomuto_branchless_cyclicTRTmmERmENCINvB2_9quicksortB1x_NCINvMB8_SB1x_20sort_unstable_by_keymNCNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB2L_3BPENtNtB2R_9tokenizer5Model4saves_0E0E0EB2R_: argument 1"}
!1514 = !{!1510, !1513, !1507}
!1515 = !{!1510, !1507}
!1516 = !{!1513, !1507}
!1517 = !{!1518, !1510, !1513}
end_hunk_1
