Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.03?download=true
inline.NumInlined: 920
inline.NumDeleted: 323
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2A_:bb.a
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
  %i.ig = load i32, ptr %i.if, align 4            ; 6 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.ii = load i32, ptr %i.ih, align 4            ; 4 uses
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
  %i.in = insertelement <4 x i32> poison, i32 %i.ig, i64 0
  %i.io = shufflevector <4 x i32> %i.in, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ip = insertelement <4 x i32> poison, i32 %i.ii, i64 0
  %i.iq = shufflevector <4 x i32> %i.ip, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.x, %bb.u
  %.sroa.43.0.i = phi ptr [ %i.im, %bb.u ], [ %i.ks, %bb.x ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.u ], [ %.sroa.27.2.lcssa.i, %bb.x ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph143, %bb.u ], [ %i.kv, %bb.x ] ; 3 uses
  %.sroa.0.0.i40 = phi i64 [ %.sroa.0.0.i39, %bb.u ], [ %.sroa.16.0136314, %bb.x ] ; 3 uses
  %i.ir = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i40, i64 3)
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %i.ir ; 2 uses
  %i.it = icmp ult ptr %.sroa.9.0.i, %i.is
  br i1 %i.it, label %.lr.ph.i42, label %._crit_edge.i

.lr.ph.i42:                                       ; preds = %bb.w, %.lr.ph.i42
  %.sroa.9.131.i = phi ptr [ %i.kc, %.lr.ph.i42 ], [ %.sroa.9.0.i, %bb.w ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %i.kb, %.lr.ph.i42 ], [ %.sroa.27.0.i, %bb.w ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.jd, %.lr.ph.i42 ], [ %.sroa.43.0.i, %bb.w ] ; 4 uses
  %i.iu = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %i.iv = load i64, ptr %.sroa.9.131.i, align 4, !alias.scope !1297, !noalias !1302
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8
  %i.ix = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %i.iy = load i64, ptr %i.iw, align 4, !alias.scope !1297, !noalias !1305
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16
  %i.ja = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24
  %i.jb = load i64, ptr %i.iz, align 4, !alias.scope !1297, !noalias !1308
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24
  %i.jd = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32 ; 3 uses
  %i.je = load i64, ptr %i.jc, align 4, !alias.scope !1297, !noalias !1311
  %i.jf = load <8 x i32>, ptr %.sroa.9.131.i, align 4, !alias.scope !1297, !noalias !1300 ; 2 uses
  %i.jg = shufflevector <8 x i32> %i.jf, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.jh = icmp eq <4 x i32> %i.io, %i.jg
  %i.ji = icmp ult <4 x i32> %i.io, %i.jg
  %i.jj = shufflevector <8 x i32> %i.jf, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.jk = icmp ult <4 x i32> %i.iq, %i.jj
  %i.jl = select <4 x i1> %i.jh, <4 x i1> %i.jk, <4 x i1> %i.ji ; 4 uses
  %i.jm = extractelement <4 x i1> %i.jl, i64 0    ; 2 uses
  %.sroa.01.0.i.i = select i1 %i.jm, ptr %2, ptr %i.iu
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  store i64 %i.iv, ptr %i.jn, align 4, !alias.scope !1300, !noalias !1314
  %i.jo = zext i1 %i.jm to i64
  %i.jp = add i64 %.sroa.27.130.i, %i.jo          ; 2 uses
  %i.jq = extractelement <4 x i1> %i.jl, i64 1    ; 2 uses
  %.sroa.01.0.i35.i = select i1 %i.jq, ptr %2, ptr %i.ix
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i35.i, i64 %i.jp
  store i64 %i.iy, ptr %i.jr, align 4, !alias.scope !1300, !noalias !1315
  %i.js = zext i1 %i.jq to i64
  %i.jt = add i64 %i.jp, %i.js                    ; 2 uses
  %i.ju = extractelement <4 x i1> %i.jl, i64 2    ; 2 uses
  %.sroa.01.0.i37.i = select i1 %i.ju, ptr %2, ptr %i.ja
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i37.i, i64 %i.jt
  store i64 %i.jb, ptr %i.jv, align 4, !alias.scope !1300, !noalias !1316
  %i.jw = zext i1 %i.ju to i64
  %i.jx = add i64 %i.jt, %i.jw                    ; 2 uses
  %i.jy = extractelement <4 x i1> %i.jl, i64 3    ; 2 uses
  %.sroa.01.0.i39.i = select i1 %i.jy, ptr %2, ptr %i.jd
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i39.i, i64 %i.jx
  store i64 %i.je, ptr %i.jz, align 4, !alias.scope !1300, !noalias !1317
  %i.ka = zext i1 %i.jy to i64
  %i.kb = add i64 %i.jx, %i.ka                    ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 3 uses
  %i.kd = icmp ult ptr %i.kc, %i.is
  br i1 %i.kd, label %.lr.ph.i42, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i42, %bb.w
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.w ], [ %i.jd, %.lr.ph.i42 ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.w ], [ %i.kb, %.lr.ph.i42 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.w ], [ %i.kc, %.lr.ph.i42 ] ; 3 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.0.0.i40 ; 2 uses
  %i.kf = icmp ult ptr %.sroa.9.1.lcssa.i, %i.ke
  br i1 %i.kf, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.kl, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.kp, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.kq, %.lr.ph38.i ] ; 2 uses
  %i.kg = icmp eq i64 %.sroa.0.0.i40, %.sroa.16.0136314
  br i1 %i.kg, label %bb.y, label %bb.x

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.kq, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.sroa.27.235.i = phi i64 [ %i.kp, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.kl, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i32, ptr %.sroa.9.236.i, align 4, !alias.scope !1297, !noalias !1300, !noundef !3 ; 2 uses
  %i.kh = getelementptr i8, ptr %.sroa.9.236.i, i64 4
  %.val15.i = load i32, ptr %i.kh, align 4, !range !36, !alias.scope !1297, !noalias !1300, !noundef !3
  %i.ki = icmp eq i32 %i.ig, %.val.i
  %i.kj = icmp ult i32 %i.ig, %.val.i
  %i.kk = icmp samesign ult i32 %i.ii, %.val15.i
  %.sroa.0.0.i.i.i40.i = select i1 %i.ki, i1 %i.kk, i1 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8 ; 3 uses
  %.sroa.01.0.i41.i = select i1 %.sroa.0.0.i.i.i40.i, ptr %2, ptr %i.kl
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i41.i, i64 %.sroa.27.235.i
  %i.kn = load i64, ptr %.sroa.9.236.i, align 4, !alias.scope !1297, !noalias !1318
  store i64 %i.kn, ptr %i.km, align 4, !alias.scope !1300, !noalias !1321
  %i.ko = zext i1 %.sroa.0.0.i.i.i40.i to i64
  %i.kp = add i64 %.sroa.27.235.i, %i.ko          ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8 ; 3 uses
  %i.kr = icmp ult ptr %i.kq, %i.ke
  br i1 %i.kr, label %.lr.ph38.i, label %._crit_edge39.i

bb.x:                                             ; preds = %._crit_edge39.i
  %i.ks = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %.sroa.27.2.lcssa.i
  %i.ku = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !alias.scope !1297, !noalias !1322
  store i64 %i.ku, ptr %i.kt, align 4, !alias.scope !1300, !noalias !1325
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.w

bb.y:                                             ; preds = %._crit_edge39.i
  %i.kw = shl i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph143, ptr nonnull align 4 %2, i64 %i.kw, i1 false), !alias.scope !1326
  %i.kx = sub i64 %.sroa.16.0136314, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0136314, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.y
  %i.ky = getelementptr [8 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check333 = icmp ult i64 %i.kx, 4
  br i1 %min.iters.check333, label %scalar.ph332.preheader, label %vector.ph334

vector.ph334:                                     ; preds = %.lr.ph45.i
  %n.vec335 = and i64 %i.kx, -4                   ; 3 uses
  br label %vector.body336

vector.body336:                                   ; preds = %vector.body336, %vector.ph334
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next342, %vector.body336 ] ; 3 uses
  %i.kz = xor i64 %index337, -1
  %i.la = getelementptr [8 x i8], ptr %i.im, i64 %i.kz ; 2 uses
  %i.lb = getelementptr [8 x i8], ptr %i.ky, i64 %index337 ; 2 uses
  %i.lc = getelementptr i8, ptr %i.la, i64 -8
  %i.ld = getelementptr i8, ptr %i.la, i64 -24
  %wide.load338 = load <2 x i64>, ptr %i.lc, align 4, !alias.scope !1300, !noalias !1297
  %wide.load339 = load <2 x i64>, ptr %i.ld, align 4, !alias.scope !1300, !noalias !1297
  %reverse340 = shufflevector <2 x i64> %wide.load338, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse341 = shufflevector <2 x i64> %wide.load339, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.le = getelementptr i8, ptr %i.lb, i64 16
  store <2 x i64> %reverse340, ptr %i.lb, align 4, !alias.scope !1297, !noalias !1300
  store <2 x i64> %reverse341, ptr %i.le, align 4, !alias.scope !1297, !noalias !1300
  %index.next342 = add nuw i64 %index337, 4       ; 2 uses
  %i.lf = icmp eq i64 %index.next342, %n.vec335
  br i1 %i.lf, label %middle.block343, label %vector.body336, !llvm.loop !1327

middle.block343:                                  ; preds = %vector.body336
  %cmp.n344 = icmp eq i64 %i.kx, %n.vec335
  br i1 %cmp.n344, label %.loopexit, label %scalar.ph332.preheader

scalar.ph332.preheader:                           ; preds = %.lr.ph45.i, %middle.block343
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec335, %middle.block343 ]
  br label %scalar.ph332

scalar.ph332:                                     ; preds = %scalar.ph332.preheader, %scalar.ph332
  %.sroa.07.043.i = phi i64 [ %i.lg, %scalar.ph332 ], [ %.sroa.07.043.i.ph, %scalar.ph332.preheader ] ; 3 uses
  %i.lg = add nuw i64 %.sroa.07.043.i, 1          ; 2 uses
  %i.lh = xor i64 %.sroa.07.043.i, -1
  %i.li = getelementptr [8 x i8], ptr %i.im, i64 %i.lh
  %i.lj = getelementptr [8 x i8], ptr %i.ky, i64 %.sroa.07.043.i
  %i.lk = load i64, ptr %i.li, align 4, !alias.scope !1300, !noalias !1297
  store i64 %i.lk, ptr %i.lj, align 4, !alias.scope !1297, !noalias !1300
  %exitcond.not.i41 = icmp eq i64 %i.lg, %i.kx
  br i1 %exitcond.not.i41, label %.loopexit, label %scalar.ph332, !llvm.loop !1330

.loopexit:                                        ; preds = %scalar.ph332, %middle.block343, %bb.y
  %i.ll = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.ll, label %.thread, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0136314
  br i1 %.not.i44, label %bb.aa, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit, !prof !755

bb.aa:                                            ; preds = %bb.z
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22, !noalias !1331
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSTmcE12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.z
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph143) ]
  call void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable9quicksort9quicksortTmcENCINvMNtCscdodAO9FK5_5alloc5sliceSB15_11sort_by_keyINtNtBa_3cmp7ReverseB15_ENCNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7trainerNtB2u_14UnigramTrainer25make_seed_sentence_piecess0_0E0EB2A_(ptr noalias noundef nonnull align 4 %i.lm, i64 noundef %i.kx, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.hj, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ln = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.ln, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.s, %.loopexit
  %i.lo = getelementptr inbounds nuw i8, ptr %i.if, i64 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  %.not96 = icmp samesign ult i64 %3, %.sroa.16.0136314
  br i1 %.not96, label %bb.ac, label %bb.ab, !prof !262

bb.ab:                                            ; preds = %.thread
  %i.lp = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0136314 ; 3 uses
  br label %bb.ad

bb.ac:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.af, %bb.ab
  %.sroa.43.0.i47 = phi ptr [ %i.lp, %bb.ab ], [ %i.nw, %bb.af ] ; 2 uses
  %.sroa.27.0.i48 = phi i64 [ 0, %bb.ab ], [ %i.nz, %bb.af ] ; 2 uses
  %.sroa.9.0.i49 = phi ptr [ %.sroa.0.0.ph143, %bb.ab ], [ %i.oa, %bb.af ] ; 3 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i39, %bb.ab ], [ %.sroa.16.0136314, %bb.af ] ; 3 uses
  %i.lq = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i50, i64 3)
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph143, i64 %i.lq ; 2 uses
  %i.ls = icmp ult ptr %.sroa.9.0.i49, %i.lr
  br i1 %i.ls, label %.lr.ph.i72, label %._crit_edge.i51

.lr.ph.i72:                                       ; preds = %bb.ad
  %.val32.i73 = load i32, ptr %i.if, align 4, !alias.scope !1335, !noalias !1338, !noundef !3 ; 8 uses
  %.val33.i79 = load i32, ptr %i.lo, align 4, !range !36, !alias.scope !1335, !noalias !1338, !noundef !3 ; 4 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i72
  %.sroa.9.131.i74 = phi ptr [ %.sroa.9.0.i49, %.lr.ph.i72 ], [ %i.ng, %bb.ae ] ; 10 uses
  %.sroa.27.130.i75 = phi i64 [ %.sroa.27.0.i48, %.lr.ph.i72 ], [ %i.nf, %bb.ae ] ; 2 uses
  %.sroa.43.129.i76 = phi ptr [ %.sroa.43.0.i47, %.lr.ph.i72 ], [ %i.nb, %bb.ae ] ; 4 uses
  %.val30.i77 = load i32, ptr %.sroa.9.131.i74, align 4, !alias.scope !1335, !noalias !1338, !noundef !3 ; 2 uses
  %i.lt = getelementptr i8, ptr %.sroa.9.131.i74, i64 4
  %.val31.i78 = load i32, ptr %i.lt, align 4, !range !36, !alias.scope !1335, !noalias !1338, !noundef !3
  %i.lu = icmp eq i32 %.val30.i77, %.val32.i73
  %i.lv = icmp uge i32 %.val30.i77, %.val32.i73
  %i.lw = icmp samesign uge i32 %.val31.i78, %.val33.i79
  %.sroa.0.0.i.i.i.i.i80 = select i1 %i.lu, i1 %i.lw, i1 %i.lv ; 2 uses
  %i.lx = getelementptr inbounds i8, ptr %.sroa.43.129.i76, i64 -8
  %.sroa.01.0.i.i81 = select i1 %.sroa.0.0.i.i.i.i.i80, ptr %2, ptr %i.lx
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i81, i64 %.sroa.27.130.i75
  %i.lz = load i64, ptr %.sroa.9.131.i74, align 4, !alias.scope !1335, !noalias !1340
  store i64 %i.lz, ptr %i.ly, align 4, !alias.scope !1338, !noalias !1343
  %i.ma = zext i1 %.sroa.0.0.i.i.i.i.i80 to i64
  %i.mb = add i64 %.sroa.27.130.i75, %i.ma        ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i74, i64 8 ; 2 uses
  %.val26.i82 = load i32, ptr %i.mc, align 4, !alias.scope !1335, !noalias !1338, !noundef !3 ; 2 uses
  %i.md = getelementptr i8, ptr %.sroa.9.131.i74, i64 12
  %.val27.i83 = load i32, ptr %i.md, align 4, !range !36, !alias.scope !1335, !noalias !1338, !noundef !3
  %i.me = icmp eq i32 %.val26.i82, %.val32.i73
end_hunk_0
