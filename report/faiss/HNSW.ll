Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/HNSW?download=true
inline.NumInlined: 2707
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN5faiss12_GLOBAL__N_131search_from_candidates_dispatchINS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT_6is_maxENS2_IfiEENS_4CMinIfiEEE4typeEEERNS_12VisitedTableERNS_9HNSWStatsEiiPKNS_16SearchParametersE:bb.a
  %i.fv = fcmp ogt float %.3172218.i.i, %i.fr
  %or.cond195.i.i = select i1 %i.fu, i1 %i.fv, i1 false
  br i1 %or.cond195.i.i, label %bb.y, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i

bb.x:                                             ; preds = %bb.v
  %.old194.i.i = fcmp ogt float %.3172218.i.i, %i.fr
  br i1 %.old194.i.i, label %bb.y, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fw = load ptr, ptr %2, align 8, !tbaa !22
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = call noundef zeroext i1 %i.fx(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.fr, i64 noundef %i.fp), !inline_history !499
  br i1 %i.fy, label %bb.z, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.fz = load float, ptr %i.bm, align 8, !tbaa !489
  %i.ga = add nsw i32 %.2165219.i.i, 1
  br label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i

_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %.6175.i.i = phi float [ %i.fz, %bb.z ], [ %.3172218.i.i, %bb.y ], [ %.3172218.i.i, %bb.x ], [ %.3172218.i.i, %bb.w ] ; 2 uses
  %.7.i.i = phi i32 [ %i.ga, %bb.z ], [ %.2165219.i.i, %bb.y ], [ %.2165219.i.i, %bb.x ], [ %.2165219.i.i, %bb.w ] ; 3 uses
  %i.gb = trunc i64 %i.fp to i32                  ; 2 uses
  %i.gc = fcmp uno float %i.fr, 0.000000e+00
  %.0.i.i.i = select i1 %i.gc, float f0x7F7FFFFF, float %i.fr ; 4 uses
  %i.gd = load i32, ptr %i.bp, align 4, !tbaa !495 ; 5 uses
  %i.ge = load i32, ptr %3, align 8, !tbaa !500
  %i.gf = icmp eq i32 %i.gd, %i.ge
  %i.gg = load ptr, ptr %i.bq, align 8, !tbaa !492 ; 4 uses
  br i1 %i.gf, label %bb.aa, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i
  %.pre10.i.i.i = load ptr, ptr %.phi.trans.insert9.i.i.i, align 8, !tbaa !84
  br label %bb.ah

bb.aa:                                            ; preds = %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !233
  %i.gi = fcmp ogt float %i.gh, %.0.i.i.i
  br i1 %i.gi, label %bb.ab, label %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.gj = load ptr, ptr %.phi.trans.insert9.i.i.i, align 8, !tbaa !84 ; 4 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !21
  %.not.i105.i.i = icmp eq i32 %i.gk, -1
  br i1 %.not.i105.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gl = load i32, ptr %i.bl, align 8, !tbaa !482
  %i.gm = add nsw i32 %i.gl, -1
  store i32 %i.gm, ptr %i.bl, align 8, !tbaa !482
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gn = add nsw i32 %i.gd, -1
  store i32 %i.gn, ptr %i.bp, align 4, !tbaa !495
  %i.go = sext i32 %i.gd to i64                   ; 4 uses
  %i.gp = getelementptr inbounds i8, ptr %i.gg, i64 -4 ; 4 uses
  %i.gq = getelementptr inbounds i8, ptr %i.gj, i64 -4 ; 5 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.go ; 3 uses
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !233 ; 5 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.go ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !21 ; 3 uses
  %i.gv = icmp ult i32 %i.gd, 2
  br i1 %i.gv, label %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad, %bb.ag
  %i.gw = phi i64 [ %i.hz, %bb.ag ], [ 3, %bb.ad ]
  %i.gx = phi i64 [ %i.hy, %bb.ag ], [ 2, %bb.ad ] ; 7 uses
  %.062.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.ag ], [ 1, %bb.ad ] ; 6 uses
  %i.gy = icmp eq i64 %i.gx, %i.go
  br i1 %i.gy, label %.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i.i.i, label %bb.ae

.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i.i = load float, ptr %i.gr, align 4, !tbaa !233
  br label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gx
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !233 ; 4 uses
  %i.hb = getelementptr [4 x i8], ptr %i.gg, i64 %i.gx
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !233 ; 5 uses
  %i.hd = getelementptr [4 x i8], ptr %i.gj, i64 %i.gx
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !21 ; 3 uses
  %i.hf = fcmp ogt float %i.ha, %i.hc
  br i1 %i.hf, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i.i.i, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i.i.i

_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i.i.i:        ; preds = %bb.ae
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gx
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !21
  %i.hi = fcmp oeq float %i.ha, %i.hc
  %i.hj = icmp sgt i32 %i.hh, %i.he
  %i.hk = and i1 %i.hi, %i.hj
  br i1 %i.hk, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i.i.i, label %bb.af

_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i.i.i: ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i.i.i, %bb.ae, %.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i.i.i
  %i.hl = phi float [ %.pre.i.i.i.i, %.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i.i.i ], [ %i.ha, %bb.ae ], [ %i.ha, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i.i.i ] ; 3 uses
  %i.hm = fcmp ogt float %i.gs, %i.hl
  br i1 %i.hm, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i.i.i

_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i.i.i:      ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i.i.i
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.gx
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !21 ; 2 uses
  %i.hp = fcmp oeq float %i.gs, %i.hl
  %i.hq = icmp sgt i32 %i.gu, %i.ho
  %i.hr = and i1 %i.hp, %i.hq
  br i1 %i.hr, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i, label %bb.ag

bb.af:                                            ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i.i.i
  %i.hs = fcmp ogt float %i.gs, %i.hc
  br i1 %i.hs, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i.i.i

_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i.i.i:      ; preds = %bb.af
  %i.ht = fcmp oeq float %i.gs, %i.hc
  %i.hu = icmp sgt i32 %i.gu, %i.he
  %i.hv = and i1 %i.ht, %i.hu
  br i1 %i.hv, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i.i.i
  %.sink79.i.i.i.i = phi float [ %i.hl, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i.i.i ], [ %i.hc, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i.i.i ]
  %.sink.i.i.i.i = phi i32 [ %i.ho, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i.i.i ], [ %i.he, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i.i.i ]
  %.1.i.i.i.i = phi i64 [ %i.gx, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i.i.i ], [ %i.gw, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i.i.i ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %.062.i.i.i.i
  store float %.sink79.i.i.i.i, ptr %i.hw, align 4, !tbaa !233
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.062.i.i.i.i
  store i32 %.sink.i.i.i.i, ptr %i.hx, align 4, !tbaa !21
  %i.hy = shl i64 %.1.i.i.i.i, 1                  ; 3 uses
  %i.hz = or disjoint i64 %i.hy, 1
  %i.ia = icmp ugt i64 %i.hy, %i.go
  br i1 %i.ia, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !501

_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i: ; preds = %bb.ag, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i.i.i, %bb.af, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i.i.i
  %.0.lcssa.ph.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.ag ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i.i.i ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i.i.i ], [ %.062.i.i.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i.i.i ], [ %.062.i.i.i.i, %bb.af ]
  %.pre68.i.i.i.i = load float, ptr %i.gr, align 4, !tbaa !233
  %.pre69.i.i.i.i = load i32, ptr %i.gt, align 4, !tbaa !21
  br label %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i

_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i: ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i, %bb.ad
  %i.ib = phi i32 [ %i.gu, %bb.ad ], [ %.pre69.i.i.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i ]
  %i.ic = phi float [ %i.gs, %bb.ad ], [ %.pre68.i.i.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ 1, %bb.ad ], [ %.0.lcssa.ph.i.i.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i ] ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %.0.lcssa.i.i.i.i
  store float %i.ic, ptr %i.id, align 4, !tbaa !233
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %.0.lcssa.i.i.i.i
  store i32 %i.ib, ptr %i.ie, align 4, !tbaa !21
  %.pre.i.i.i = load i32, ptr %i.bp, align 4, !tbaa !495
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i, %._crit_edge.i.i.i
  %i.if = phi ptr [ %i.gj, %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i ], [ %.pre10.i.i.i, %._crit_edge.i.i.i ]
  %i.ig = phi i32 [ %.pre.i.i.i, %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i ], [ %i.gd, %._crit_edge.i.i.i ]
  %i.ih = add nsw i32 %i.ig, 1                    ; 3 uses
  store i32 %i.ih, ptr %i.bp, align 4, !tbaa !495
  %i.ii = sext i32 %i.ih to i64                   ; 2 uses
  %i.ij = getelementptr inbounds i8, ptr %i.gg, i64 -4 ; 3 uses
  %i.ik = getelementptr inbounds i8, ptr %i.if, i64 -4 ; 3 uses
  %i.il = icmp ugt i32 %i.ih, 1
  br i1 %i.il, label %.lr.ph.i5.i.i.i, label %_ZN5faiss9heap_pushINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i

.lr.ph.i5.i.i.i:                                  ; preds = %bb.ah, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i.i.i
  %.025.i.i.i.i = phi i64 [ %i.im, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i.i.i ], [ %i.ii, %bb.ah ] ; 5 uses
  %i.im = lshr i64 %.025.i.i.i.i, 1               ; 4 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.im
  %i.io = load float, ptr %i.in, align 4, !tbaa !233 ; 3 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.im
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !21 ; 2 uses
  %i.ir = fcmp ogt float %.0.i.i.i, %i.io
  br i1 %i.ir, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i.i.i, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i6.i.i.i

_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i6.i.i.i:       ; preds = %.lr.ph.i5.i.i.i
  %i.is = fcmp oeq float %.0.i.i.i, %i.io
  %i.it = icmp slt i32 %i.iq, %i.gb
  %i.iu = and i1 %i.is, %i.it
  br i1 %i.iu, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i.i.i, label %_ZN5faiss9heap_pushINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i

_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i.i.i: ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i6.i.i.i, %.lr.ph.i5.i.i.i
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %.025.i.i.i.i
  store float %i.io, ptr %i.iv, align 4, !tbaa !233
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %.025.i.i.i.i
  store i32 %i.iq, ptr %i.iw, align 4, !tbaa !21
  %i.ix = icmp ugt i64 %.025.i.i.i.i, 3
  br i1 %i.ix, label %.lr.ph.i5.i.i.i, label %_ZN5faiss9heap_pushINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i, !llvm.loop !502

_ZN5faiss9heap_pushINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i: ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i6.i.i.i, %bb.ah
  %.0.lcssa.i4.i.i.i = phi i64 [ %i.ii, %bb.ah ], [ %.025.i.i.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i6.i.i.i ], [ %i.im, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i.i.i ] ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %.0.lcssa.i4.i.i.i
  store float %.0.i.i.i, ptr %i.iy, align 4, !tbaa !233
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %.0.lcssa.i4.i.i.i
  store i32 %i.gb, ptr %i.iz, align 4, !tbaa !21
  %i.ja = load i32, ptr %i.bl, align 8, !tbaa !482
  %i.jb = add nsw i32 %i.ja, 1
  store i32 %i.jb, ptr %i.bl, align 8, !tbaa !482
  br label %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit.i.i

_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit.i.i: ; preds = %_ZN5faiss9heap_pushINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i, %bb.aa
  %i.jc = add nuw nsw i64 %.078220.i.i, 1         ; 2 uses
  %exitcond265.not.i.i = icmp eq i64 %i.jc, 4
  br i1 %exitcond265.not.i.i, label %.thread.i, label %bb.v, !llvm.loop !503

bb.ai:                                            ; preds = %_ZN5faiss18VisitedTableVector3setEm.exit101.i.i
  %i.jd = add nuw i64 %.079224.i.i, 1             ; 2 uses
  %10 = icmp ult i64 %i.jd, %.083.lcssa.i.i
  br i1 %10, label %.lr.ph227.i.i, label %.preheader.i.i, !llvm.loop !504

.thread.i:                                        ; preds = %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit.i.i
  %i.je = add nsw i32 %.1225.i.ph.i, 4            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.jf = add nuw i64 %.079224.i.i, 1             ; 2 uses
  %11 = icmp ult i64 %i.jf, %.083.lcssa.i.i
  br i1 %11, label %.lr.ph227.i.outer.i, label %._crit_edge237.i.i, !llvm.loop !504

.lr.ph227.i.outer.i:                              ; preds = %.thread.i, %.lr.ph227.i.outer.preheader.i
  %.1225.i.ph.i = phi i32 [ %i.je, %.thread.i ], [ %.0242.i.i, %.lr.ph227.i.outer.preheader.i ] ; 3 uses
  %.079224.i.ph.i = phi i64 [ %i.jf, %.thread.i ], [ %i.ed, %.lr.ph227.i.outer.preheader.i ]
  %.1164222.i.ph.i = phi i32 [ %.7.i.i, %.thread.i ], [ %.0163240.i.i, %.lr.ph227.i.outer.preheader.i ] ; 3 uses
  %.2171221.i.ph.i = phi float [ %.6175.i.i, %.thread.i ], [ %i.es, %.lr.ph227.i.outer.preheader.i ] ; 2 uses
  br label %.lr.ph227.i.i

._crit_edge237.loopexit.i.i:                      ; preds = %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit135.i.i
  %i.jg = add i32 %i.ff, %.1225.i.ph.i
  br label %._crit_edge237.i.i

._crit_edge237.i.i:                               ; preds = %.thread.i, %._crit_edge237.loopexit.i.i, %.preheader.i.i, %._crit_edge.i.i, %._crit_edge.thread.i.i
  %.4167.lcssa.i.i = phi i32 [ %.1164222.i.ph.i, %.preheader.i.i ], [ %.8.i.i, %._crit_edge237.loopexit.i.i ], [ %.0163240.i.i, %._crit_edge.i.i ], [ %.0163240.i.i, %._crit_edge.thread.i.i ], [ %.7.i.i, %.thread.i ] ; 3 uses
  %.3.lcssa.i.i = phi i32 [ %.1225.i.ph.i, %.preheader.i.i ], [ %i.jg, %._crit_edge237.loopexit.i.i ], [ %.0242.i.i, %._crit_edge.i.i ], [ %.0242.i.i, %._crit_edge.thread.i.i ], [ %i.je, %.thread.i ] ; 3 uses
  %i.jh = add nuw nsw i32 %.090241.i.i, 1         ; 3 uses
  %.not98.i.i = icmp slt i32 %.090241.i.i, %.1153315.i.i
  %or.cond.i.i = select i1 %i.bo, i1 true, i1 %.not98.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  br i1 %or.cond.i.i, label %.thread180.i.i, label %.loopexit.sink.split.i.i

.lr.ph236.i.i:                                    ; preds = %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit135.i.i, %.lr.ph236.preheader.i.i
  %indvars.iv266.i.i = phi i64 [ 0, %.lr.ph236.preheader.i.i ], [ %indvars.iv.next267.i.i, %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit135.i.i ] ; 2 uses
  %.4167233.i.i = phi i32 [ %.1164222.i.ph.i, %.lr.ph236.preheader.i.i ], [ %.8.i.i, %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit135.i.i ] ; 4 uses
  %.5174232.i.i = phi float [ %.2171221.i.ph.i, %.lr.ph236.preheader.i.i ], [ %.7176.i.i, %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit135.i.i ] ; 5 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv266.i.i
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !99 ; 4 uses
  %i.jk = load ptr, ptr %1, align 8, !tbaa !22
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = call noundef float %i.jm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.jj), !inline_history !493 ; 5 uses
  br i1 %.not.i102.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph236.i.i
  %i.jo = load ptr, ptr %.0177311.i.i, align 8, !tbaa !22
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = call noundef zeroext i1 %i.jp(ptr noundef nonnull align 8 dereferenceable(8) %.0177311.i.i, i64 noundef %i.jj), !inline_history !499
  %i.jr = fcmp ogt float %.5174232.i.i, %i.jn
  %or.cond197.i.i = select i1 %i.jq, i1 %i.jr, i1 false
  br i1 %or.cond197.i.i, label %bb.al, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i

bb.ak:                                            ; preds = %.lr.ph236.i.i
  %.old196.i.i = fcmp ogt float %.5174232.i.i, %i.jn
  br i1 %.old196.i.i, label %bb.al, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.js = load ptr, ptr %2, align 8, !tbaa !22
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = call noundef zeroext i1 %i.jt(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.jn, i64 noundef %i.jj), !inline_history !499
  br i1 %i.ju, label %bb.am, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i

bb.am:                                            ; preds = %bb.al
  %i.jv = load float, ptr %i.bm, align 8, !tbaa !489
  %i.jw = add nsw i32 %.4167233.i.i, 1
  br label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i

_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i: ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %.7176.i.i = phi float [ %i.jv, %bb.am ], [ %.5174232.i.i, %bb.al ], [ %.5174232.i.i, %bb.ak ], [ %.5174232.i.i, %bb.aj ]
  %.8.i.i = phi i32 [ %i.jw, %bb.am ], [ %.4167233.i.i, %bb.al ], [ %.4167233.i.i, %bb.ak ], [ %.4167233.i.i, %bb.aj ] ; 2 uses
  %i.jx = trunc i64 %i.jj to i32                  ; 2 uses
  %i.jy = fcmp uno float %i.jn, 0.000000e+00
  %.0.i106.i.i = select i1 %i.jy, float f0x7F7FFFFF, float %i.jn ; 4 uses
  %i.jz = load i32, ptr %i.bp, align 4, !tbaa !495 ; 5 uses
  %i.ka = load i32, ptr %3, align 8, !tbaa !500
  %i.kb = icmp eq i32 %i.jz, %i.ka
  %i.kc = load ptr, ptr %i.bq, align 8, !tbaa !492 ; 4 uses
  br i1 %i.kb, label %bb.an, label %._crit_edge.i107.i.i

._crit_edge.i107.i.i:                             ; preds = %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i
  %.pre10.i109.i.i = load ptr, ptr %.phi.trans.insert9.i.i.i, align 8, !tbaa !84
  br label %bb.au

bb.an:                                            ; preds = %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !233
  %i.ke = fcmp ogt float %i.kd, %.0.i106.i.i
  br i1 %i.ke, label %bb.ao, label %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit135.i.i

bb.ao:                                            ; preds = %bb.an
  %i.kf = load ptr, ptr %.phi.trans.insert9.i.i.i, align 8, !tbaa !84 ; 4 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !21
  %.not.i116.i.i = icmp eq i32 %i.kg, -1
  br i1 %.not.i116.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kh = load i32, ptr %i.bl, align 8, !tbaa !482
  %i.ki = add nsw i32 %i.kh, -1
  store i32 %i.ki, ptr %i.bl, align 8, !tbaa !482
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.kj = add nsw i32 %i.jz, -1
  store i32 %i.kj, ptr %i.bp, align 4, !tbaa !495
  %i.kk = sext i32 %i.jz to i64                   ; 4 uses
  %i.kl = getelementptr inbounds i8, ptr %i.kc, i64 -4 ; 4 uses
  %i.km = getelementptr inbounds i8, ptr %i.kf, i64 -4 ; 5 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.kk ; 3 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !233 ; 5 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.kk ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !21 ; 3 uses
  %i.kr = icmp ult i32 %i.jz, 2
  br i1 %i.kr, label %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i, label %.lr.ph.i.i117.i.i

.lr.ph.i.i117.i.i:                                ; preds = %bb.aq, %bb.at
  %i.ks = phi i64 [ %i.lv, %bb.at ], [ 3, %bb.aq ]
  %i.kt = phi i64 [ %i.lu, %bb.at ], [ 2, %bb.aq ] ; 7 uses
  %.062.i.i118.i.i = phi i64 [ %.1.i.i123.i.i, %bb.at ], [ 1, %bb.aq ] ; 6 uses
  %i.ku = icmp eq i64 %i.kt, %i.kk
  br i1 %i.ku, label %.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i133.i.i, label %bb.ar

.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i133.i.i: ; preds = %.lr.ph.i.i117.i.i
  %.pre.i.i134.i.i = load float, ptr %i.kn, align 4, !tbaa !233
  br label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i131.i.i

bb.ar:                                            ; preds = %.lr.ph.i.i117.i.i
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %i.kt
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !233 ; 4 uses
  %i.kx = getelementptr [4 x i8], ptr %i.kc, i64 %i.kt
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !233 ; 5 uses
  %i.kz = getelementptr [4 x i8], ptr %i.kf, i64 %i.kt
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !21 ; 3 uses
  %i.lb = fcmp ogt float %i.kw, %i.ky
  br i1 %i.lb, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i131.i.i, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i119.i.i

_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i119.i.i:     ; preds = %bb.ar
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.kt
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !21
  %i.le = fcmp oeq float %i.kw, %i.ky
  %i.lf = icmp sgt i32 %i.ld, %i.la
  %i.lg = and i1 %i.le, %i.lf
  br i1 %i.lg, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i131.i.i, label %bb.as

_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i131.i.i: ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i119.i.i, %bb.ar, %.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i133.i.i
  %i.lh = phi float [ %.pre.i.i134.i.i, %.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i133.i.i ], [ %i.kw, %bb.ar ], [ %i.kw, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i119.i.i ] ; 3 uses
  %i.li = fcmp ogt float %i.ko, %i.lh
  br i1 %i.li, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i132.i.i

_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i132.i.i:   ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i131.i.i
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.kt
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !21 ; 2 uses
  %i.ll = fcmp oeq float %i.ko, %i.lh
  %i.lm = icmp sgt i32 %i.kq, %i.lk
  %i.ln = and i1 %i.ll, %i.lm
  br i1 %i.ln, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i, label %bb.at

bb.as:                                            ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i119.i.i
  %i.lo = fcmp ogt float %i.ko, %i.ky
  br i1 %i.lo, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i120.i.i

_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i120.i.i:   ; preds = %bb.as
  %i.lp = fcmp oeq float %i.ko, %i.ky
  %i.lq = icmp sgt i32 %i.kq, %i.la
  %i.lr = and i1 %i.lp, %i.lq
  br i1 %i.lr, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i, label %bb.at

bb.at:                                            ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i120.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i132.i.i
  %.sink79.i.i121.i.i = phi float [ %i.lh, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i132.i.i ], [ %i.ky, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i120.i.i ]
  %.sink.i.i122.i.i = phi i32 [ %i.lk, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i132.i.i ], [ %i.la, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i120.i.i ]
  %.1.i.i123.i.i = phi i64 [ %i.kt, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i132.i.i ], [ %i.ks, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i120.i.i ] ; 3 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %.062.i.i118.i.i
  store float %.sink79.i.i121.i.i, ptr %i.ls, align 4, !tbaa !233
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.062.i.i118.i.i
  store i32 %.sink.i.i122.i.i, ptr %i.lt, align 4, !tbaa !21
  %i.lu = shl i64 %.1.i.i123.i.i, 1               ; 3 uses
  %i.lv = or disjoint i64 %i.lu, 1
  %i.lw = icmp ugt i64 %i.lu, %i.kk
  br i1 %i.lw, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i, label %.lr.ph.i.i117.i.i, !llvm.loop !501

_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i: ; preds = %bb.at, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i120.i.i, %bb.as, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i132.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i131.i.i
  %.0.lcssa.ph.i.i125.i.i = phi i64 [ %.1.i.i123.i.i, %bb.at ], [ %.062.i.i118.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i132.i.i ], [ %.062.i.i118.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i120.i.i ], [ %.062.i.i118.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i131.i.i ], [ %.062.i.i118.i.i, %bb.as ]
  %.pre68.i.i126.i.i = load float, ptr %i.kn, align 4, !tbaa !233
  %.pre69.i.i127.i.i = load i32, ptr %i.kp, align 4, !tbaa !21
  br label %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i

_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i: ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i, %bb.aq
  %i.lx = phi i32 [ %i.kq, %bb.aq ], [ %.pre69.i.i127.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i ]
  %i.ly = phi float [ %i.ko, %bb.aq ], [ %.pre68.i.i126.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i ]
  %.0.lcssa.i.i129.i.i = phi i64 [ 1, %bb.aq ], [ %.0.lcssa.ph.i.i125.i.i, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i ] ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %.0.lcssa.i.i129.i.i
  store float %i.ly, ptr %i.lz, align 4, !tbaa !233
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.0.lcssa.i.i129.i.i
  store i32 %i.lx, ptr %i.ma, align 4, !tbaa !21
  %.pre.i130.i.i = load i32, ptr %i.bp, align 4, !tbaa !495
  br label %bb.au

bb.au:                                            ; preds = %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i, %._crit_edge.i107.i.i
  %i.mb = phi ptr [ %i.kf, %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i ], [ %.pre10.i109.i.i, %._crit_edge.i107.i.i ]
  %i.mc = phi i32 [ %.pre.i130.i.i, %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i ], [ %i.jz, %._crit_edge.i107.i.i ]
  %i.md = add nsw i32 %i.mc, 1                    ; 3 uses
  store i32 %i.md, ptr %i.bp, align 4, !tbaa !495
  %i.me = sext i32 %i.md to i64                   ; 2 uses
  %i.mf = getelementptr inbounds i8, ptr %i.kc, i64 -4 ; 3 uses
  %i.mg = getelementptr inbounds i8, ptr %i.mb, i64 -4 ; 3 uses
  %i.mh = icmp ugt i32 %i.md, 1
  br i1 %i.mh, label %.lr.ph.i5.i112.i.i, label %_ZN5faiss9heap_pushINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i110.i.i

.lr.ph.i5.i112.i.i:                               ; preds = %bb.au, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i115.i.i
  %.025.i.i113.i.i = phi i64 [ %i.mi, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i115.i.i ], [ %i.me, %bb.au ] ; 5 uses
  %i.mi = lshr i64 %.025.i.i113.i.i, 1            ; 4 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.mi
  %i.mk = load float, ptr %i.mj, align 4, !tbaa !233 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN5faiss12_GLOBAL__N_131search_from_candidates_dispatchINS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT_6is_maxENS2_IfiEENS_4CMinIfiEEE4typeEEERNS_12VisitedTableERNS_9HNSWStatsEiiPKNS_16SearchParametersE:bb.a
  %i.vp = fcmp ogt float %.3183261.i.i, %i.vl
  %or.cond206.i.i = select i1 %i.vo, i1 %i.vp, i1 false
  br i1 %or.cond206.i.i, label %bb.cr, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i

bb.cq:                                            ; preds = %bb.co
  %.old205.i.i = fcmp ogt float %.3183261.i.i, %i.vl
  br i1 %.old205.i.i, label %bb.cr, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.vq = load ptr, ptr %2, align 8, !tbaa !22
  %i.vr = load ptr, ptr %i.vq, align 8
  %i.vs = call noundef zeroext i1 %i.vr(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.vl, i64 noundef %i.vj), !inline_history !512
  br i1 %i.vs, label %bb.cs, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i

bb.cs:                                            ; preds = %bb.cr
  %i.vt = load float, ptr %i.nz, align 8, !tbaa !489
  %i.vu = add nsw i32 %.2176262.i.i, 1
  br label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i

_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i: ; preds = %bb.cs, %bb.cr, %bb.cq, %bb.cp
  %.6186.i.i = phi float [ %i.vt, %bb.cs ], [ %.3183261.i.i, %bb.cr ], [ %.3183261.i.i, %bb.cq ], [ %.3183261.i.i, %bb.cp ] ; 2 uses
  %.7.i.i70 = phi i32 [ %i.vu, %bb.cs ], [ %.2176262.i.i, %bb.cr ], [ %.2176262.i.i, %bb.cq ], [ %.2176262.i.i, %bb.cp ] ; 3 uses
  %i.vv = trunc i64 %i.vj to i32                  ; 2 uses
  %i.vw = fcmp uno float %i.vl, 0.000000e+00
  %.0.i.i.i71 = select i1 %i.vw, float f0x7F7FFFFF, float %i.vl ; 4 uses
  %i.vx = load i32, ptr %i.oy, align 4, !tbaa !495 ; 5 uses
  %i.vy = load i32, ptr %3, align 8, !tbaa !500
  %i.vz = icmp eq i32 %i.vx, %i.vy
  %i.wa = load ptr, ptr %i.of, align 8, !tbaa !492 ; 4 uses
  br i1 %i.vz, label %bb.ct, label %._crit_edge.i.i.i72

._crit_edge.i.i.i72:                              ; preds = %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i
  %.pre10.i.i.i73 = load ptr, ptr %i.oe, align 8, !tbaa !84
  br label %bb.da

bb.ct:                                            ; preds = %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !233
  %i.wc = fcmp ogt float %i.wb, %.0.i.i.i71
  br i1 %i.wc, label %bb.cu, label %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit.i.i76

bb.cu:                                            ; preds = %bb.ct
  %i.wd = load ptr, ptr %i.oe, align 8, !tbaa !84 ; 4 uses
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !21
  %.not.i105.i.i82 = icmp eq i32 %i.we, -1
  br i1 %.not.i105.i.i82, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.wf = load i32, ptr %i.oa, align 8, !tbaa !482
  %i.wg = add nsw i32 %i.wf, -1
  store i32 %i.wg, ptr %i.oa, align 8, !tbaa !482
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.wh = add nsw i32 %i.vx, -1
  store i32 %i.wh, ptr %i.oy, align 4, !tbaa !495
  %i.wi = sext i32 %i.vx to i64                   ; 4 uses
  %i.wj = getelementptr inbounds i8, ptr %i.wa, i64 -4 ; 4 uses
  %i.wk = getelementptr inbounds i8, ptr %i.wd, i64 -4 ; 5 uses
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %i.wi ; 3 uses
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !233 ; 5 uses
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.wi ; 2 uses
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !21 ; 3 uses
  %i.wp = icmp ult i32 %i.vx, 2
  br i1 %i.wp, label %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i94, label %.lr.ph.i.i.i.i83

.lr.ph.i.i.i.i83:                                 ; preds = %bb.cw, %bb.cz
  %i.wq = phi i64 [ %i.xt, %bb.cz ], [ 3, %bb.cw ]
  %i.wr = phi i64 [ %i.xs, %bb.cz ], [ 2, %bb.cw ] ; 7 uses
  %.062.i.i.i.i84 = phi i64 [ %.1.i.i.i.i89, %bb.cz ], [ 1, %bb.cw ] ; 6 uses
  %i.ws = icmp eq i64 %i.wr, %i.wi
  br i1 %i.ws, label %.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i.i.i99, label %bb.cx

.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i.i.i99: ; preds = %.lr.ph.i.i.i.i83
  %.pre.i.i.i.i100 = load float, ptr %i.wl, align 4, !tbaa !233
  br label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i.i.i97

bb.cx:                                            ; preds = %.lr.ph.i.i.i.i83
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %i.wr
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !233 ; 4 uses
  %i.wv = getelementptr [4 x i8], ptr %i.wa, i64 %i.wr
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !233 ; 5 uses
  %i.wx = getelementptr [4 x i8], ptr %i.wd, i64 %i.wr
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !21 ; 3 uses
  %i.wz = fcmp ogt float %i.wu, %i.ww
  br i1 %i.wz, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i.i.i97, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i.i.i85

_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i.i.i85:      ; preds = %bb.cx
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.wr
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !21
  %i.xc = fcmp oeq float %i.wu, %i.ww
  %i.xd = icmp sgt i32 %i.xb, %i.wy
  %i.xe = and i1 %i.xc, %i.xd
  br i1 %i.xe, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i.i.i97, label %bb.cy

_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i.i.i97: ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i.i.i85, %bb.cx, %.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i.i.i99
  %i.xf = phi float [ %.pre.i.i.i.i100, %.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i.i.i99 ], [ %i.wu, %bb.cx ], [ %i.wu, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i.i.i85 ] ; 3 uses
  %i.xg = fcmp ogt float %i.wm, %i.xf
  br i1 %i.xg, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i.i.i98

_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i.i.i98:    ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i.i.i97
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %i.wr
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !21 ; 2 uses
  %i.xj = fcmp oeq float %i.wm, %i.xf
  %i.xk = icmp sgt i32 %i.wo, %i.xi
  %i.xl = and i1 %i.xj, %i.xk
  br i1 %i.xl, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90, label %bb.cz

bb.cy:                                            ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i.i.i85
  %i.xm = fcmp ogt float %i.wm, %i.ww
  br i1 %i.xm, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i.i.i86

_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i.i.i86:    ; preds = %bb.cy
  %i.xn = fcmp oeq float %i.wm, %i.ww
  %i.xo = icmp sgt i32 %i.wo, %i.wy
  %i.xp = and i1 %i.xn, %i.xo
  br i1 %i.xp, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90, label %bb.cz

bb.cz:                                            ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i.i.i86, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i.i.i98
  %.sink79.i.i.i.i87 = phi float [ %i.xf, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i.i.i98 ], [ %i.ww, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i.i.i86 ]
  %.sink.i.i.i.i88 = phi i32 [ %i.xi, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i.i.i98 ], [ %i.wy, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i.i.i86 ]
  %.1.i.i.i.i89 = phi i64 [ %i.wr, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i.i.i98 ], [ %i.wq, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i.i.i86 ] ; 3 uses
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %.062.i.i.i.i84
  store float %.sink79.i.i.i.i87, ptr %i.xq, align 4, !tbaa !233
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %.062.i.i.i.i84
  store i32 %.sink.i.i.i.i88, ptr %i.xr, align 4, !tbaa !21
  %i.xs = shl i64 %.1.i.i.i.i89, 1                ; 3 uses
  %i.xt = or disjoint i64 %i.xs, 1
  %i.xu = icmp ugt i64 %i.xs, %i.wi
  br i1 %i.xu, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90, label %.lr.ph.i.i.i.i83, !llvm.loop !501

_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90: ; preds = %bb.cz, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i.i.i86, %bb.cy, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i.i.i98, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i.i.i97
  %.0.lcssa.ph.i.i.i.i91 = phi i64 [ %.1.i.i.i.i89, %bb.cz ], [ %.062.i.i.i.i84, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i.i.i98 ], [ %.062.i.i.i.i84, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i.i.i86 ], [ %.062.i.i.i.i84, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i.i.i97 ], [ %.062.i.i.i.i84, %bb.cy ]
  %.pre68.i.i.i.i92 = load float, ptr %i.wl, align 4, !tbaa !233
  %.pre69.i.i.i.i93 = load i32, ptr %i.wn, align 4, !tbaa !21
  br label %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i94

_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i94: ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90, %bb.cw
  %i.xv = phi i32 [ %i.wo, %bb.cw ], [ %.pre69.i.i.i.i93, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90 ]
  %i.xw = phi float [ %i.wm, %bb.cw ], [ %.pre68.i.i.i.i92, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90 ]
  %.0.lcssa.i.i.i.i95 = phi i64 [ 1, %bb.cw ], [ %.0.lcssa.ph.i.i.i.i91, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90 ] ; 2 uses
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.wj, i64 %.0.lcssa.i.i.i.i95
  store float %i.xw, ptr %i.xx, align 4, !tbaa !233
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.wk, i64 %.0.lcssa.i.i.i.i95
  store i32 %i.xv, ptr %i.xy, align 4, !tbaa !21
  %.pre.i.i.i96 = load i32, ptr %i.oy, align 4, !tbaa !495
  br label %bb.da

bb.da:                                            ; preds = %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i94, %._crit_edge.i.i.i72
  %i.xz = phi ptr [ %i.wd, %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i94 ], [ %.pre10.i.i.i73, %._crit_edge.i.i.i72 ]
  %i.ya = phi i32 [ %.pre.i.i.i96, %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i94 ], [ %i.vx, %._crit_edge.i.i.i72 ]
  %i.yb = add nsw i32 %i.ya, 1                    ; 3 uses
  store i32 %i.yb, ptr %i.oy, align 4, !tbaa !495
  %i.yc = sext i32 %i.yb to i64                   ; 2 uses
  %i.yd = getelementptr inbounds i8, ptr %i.wa, i64 -4 ; 3 uses
  %i.ye = getelementptr inbounds i8, ptr %i.xz, i64 -4 ; 3 uses
  %i.yf = icmp ugt i32 %i.yb, 1
  br i1 %i.yf, label %.lr.ph.i5.i.i.i78, label %_ZN5faiss9heap_pushINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i74

.lr.ph.i5.i.i.i78:                                ; preds = %bb.da, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i.i.i81
  %.025.i.i.i.i79 = phi i64 [ %i.yg, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i.i.i81 ], [ %i.yc, %bb.da ] ; 5 uses
  %i.yg = lshr i64 %.025.i.i.i.i79, 1             ; 4 uses
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %i.yg
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !233 ; 3 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %i.yg
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !21 ; 2 uses
  %i.yl = fcmp ogt float %.0.i.i.i71, %i.yi
  br i1 %i.yl, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i.i.i81, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i6.i.i.i80

_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i6.i.i.i80:     ; preds = %.lr.ph.i5.i.i.i78
  %i.ym = fcmp oeq float %.0.i.i.i71, %i.yi
  %i.yn = icmp slt i32 %i.yk, %i.vv
  %i.yo = and i1 %i.ym, %i.yn
  br i1 %i.yo, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i.i.i81, label %_ZN5faiss9heap_pushINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i74

_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i.i.i81: ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i6.i.i.i80, %.lr.ph.i5.i.i.i78
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %.025.i.i.i.i79
  store float %i.yi, ptr %i.yp, align 4, !tbaa !233
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %.025.i.i.i.i79
  store i32 %i.yk, ptr %i.yq, align 4, !tbaa !21
  %i.yr = icmp ugt i64 %.025.i.i.i.i79, 3
  br i1 %i.yr, label %.lr.ph.i5.i.i.i78, label %_ZN5faiss9heap_pushINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i74, !llvm.loop !502

_ZN5faiss9heap_pushINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i74: ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i.i.i81, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i6.i.i.i80, %bb.da
  %.0.lcssa.i4.i.i.i75 = phi i64 [ %i.yc, %bb.da ], [ %.025.i.i.i.i79, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i6.i.i.i80 ], [ %i.yg, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i.i.i81 ] ; 2 uses
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %.0.lcssa.i4.i.i.i75
  store float %.0.i.i.i71, ptr %i.ys, align 4, !tbaa !233
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.ye, i64 %.0.lcssa.i4.i.i.i75
  store i32 %i.vv, ptr %i.yt, align 4, !tbaa !21
  %i.yu = load i32, ptr %i.oa, align 8, !tbaa !482
  %i.yv = add nsw i32 %i.yu, 1
  store i32 %i.yv, ptr %i.oa, align 8, !tbaa !482
  br label %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit.i.i76

_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit.i.i76: ; preds = %_ZN5faiss9heap_pushINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i74, %bb.ct
  %i.yw = add nuw nsw i64 %.078263.i.i, 1         ; 2 uses
  %exitcond326.not.i.i = icmp eq i64 %i.yw, 4
  br i1 %exitcond326.not.i.i, label %.thread.i77, label %bb.co, !llvm.loop !513

bb.db:                                            ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_.exit.i.i
  %i.yx = add nuw i64 %.079267.i.i, 1             ; 2 uses
  %12 = icmp ult i64 %i.yx, %.083.lcssa.i.i36
  br i1 %12, label %.lr.ph270.i.i, label %.preheader.i.i37, !llvm.loop !514

.thread.i77:                                      ; preds = %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit.i.i76
  %i.yy = add nsw i32 %.1268.i.ph.i, 4            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.yz = add nuw i64 %.079267.i.i, 1             ; 2 uses
  %13 = icmp ult i64 %i.yz, %.083.lcssa.i.i36
  br i1 %13, label %.lr.ph270.i.outer.i, label %._crit_edge280.i.i, !llvm.loop !514

.lr.ph270.i.outer.i:                              ; preds = %.thread.i77, %.lr.ph270.i.outer.preheader.i
  %.1268.i.ph.i = phi i32 [ %i.yy, %.thread.i77 ], [ %.0285.i.i, %.lr.ph270.i.outer.preheader.i ] ; 3 uses
  %.079267.i.ph.i = phi i64 [ %i.yz, %.thread.i77 ], [ %i.rl, %.lr.ph270.i.outer.preheader.i ]
  %.1175265.i.ph.i = phi i32 [ %.7.i.i70, %.thread.i77 ], [ %.0174283.i.i, %.lr.ph270.i.outer.preheader.i ] ; 3 uses
  %.2182264.i.ph.i = phi float [ %.6186.i.i, %.thread.i77 ], [ %i.rx, %.lr.ph270.i.outer.preheader.i ] ; 2 uses
  %.pre.i = load i64, ptr %i.pd, align 8, !tbaa !292
  br label %.lr.ph270.i.i

._crit_edge280.loopexit.i.i:                      ; preds = %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit135.i.i46
  %i.za = add i32 %i.uz, %.1268.i.ph.i
  br label %._crit_edge280.i.i

._crit_edge280.i.i:                               ; preds = %.thread.i77, %._crit_edge280.loopexit.i.i, %.preheader.i.i37, %._crit_edge.i.i35, %._crit_edge.thread.i.i27
  %.4178.lcssa.i.i = phi i32 [ %.1175265.i.ph.i, %.preheader.i.i37 ], [ %.8.i.i40, %._crit_edge280.loopexit.i.i ], [ %.0174283.i.i, %._crit_edge.i.i35 ], [ %.0174283.i.i, %._crit_edge.thread.i.i27 ], [ %.7.i.i70, %.thread.i77 ] ; 3 uses
  %.3.lcssa.i.i28 = phi i32 [ %.1268.i.ph.i, %.preheader.i.i37 ], [ %i.za, %._crit_edge280.loopexit.i.i ], [ %.0285.i.i, %._crit_edge.i.i35 ], [ %.0285.i.i, %._crit_edge.thread.i.i27 ], [ %i.yy, %.thread.i77 ] ; 3 uses
  %i.zb = add nuw nsw i32 %.090284.i.i, 1         ; 3 uses
  %.not98.i.i29 = icmp slt i32 %.090284.i.i, %.1164.i.i
  %or.cond.i.i30 = select i1 %i.ox, i1 true, i1 %.not98.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br i1 %or.cond.i.i30, label %.thread191.i.i, label %.loopexit211.sink.split.i.i

.lr.ph279.i.i:                                    ; preds = %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit135.i.i46, %.lr.ph279.preheader.i.i
  %indvars.iv327.i.i = phi i64 [ 0, %.lr.ph279.preheader.i.i ], [ %indvars.iv.next328.i.i, %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit135.i.i46 ] ; 2 uses
  %.4178276.i.i = phi i32 [ %.1175265.i.ph.i, %.lr.ph279.preheader.i.i ], [ %.8.i.i40, %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit135.i.i46 ] ; 4 uses
  %.5185275.i.i = phi float [ %.2182264.i.ph.i, %.lr.ph279.preheader.i.i ], [ %.7187.i.i, %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit135.i.i46 ] ; 5 uses
  %i.zc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv327.i.i
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !99 ; 4 uses
  %i.ze = load ptr, ptr %1, align 8, !tbaa !22
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  %i.zg = load ptr, ptr %i.zf, align 8
  %i.zh = call noundef float %i.zg(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.zd), !inline_history !507 ; 5 uses
  br i1 %.not99.i.i22, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph279.i.i
  %i.zi = load ptr, ptr %.0188.i.i, align 8, !tbaa !22
  %i.zj = load ptr, ptr %i.zi, align 8
  %i.zk = call noundef zeroext i1 %i.zj(ptr noundef nonnull align 8 dereferenceable(8) %.0188.i.i, i64 noundef %i.zd), !inline_history !512
  %i.zl = fcmp ogt float %.5185275.i.i, %i.zh
  %or.cond208.i.i = select i1 %i.zk, i1 %i.zl, i1 false
  br i1 %or.cond208.i.i, label %bb.de, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i

bb.dd:                                            ; preds = %.lr.ph279.i.i
  %.old207.i.i = fcmp ogt float %.5185275.i.i, %i.zh
  br i1 %.old207.i.i, label %bb.de, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.zm = load ptr, ptr %2, align 8, !tbaa !22
  %i.zn = load ptr, ptr %i.zm, align 8
  %i.zo = call noundef zeroext i1 %i.zn(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.zh, i64 noundef %i.zd), !inline_history !512
  br i1 %i.zo, label %bb.df, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i

bb.df:                                            ; preds = %bb.de
  %i.zp = load float, ptr %i.nz, align 8, !tbaa !489
  %i.zq = add nsw i32 %.4178276.i.i, 1
  br label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i

_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i: ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc
  %.7187.i.i = phi float [ %i.zp, %bb.df ], [ %.5185275.i.i, %bb.de ], [ %.5185275.i.i, %bb.dd ], [ %.5185275.i.i, %bb.dc ]
  %.8.i.i40 = phi i32 [ %i.zq, %bb.df ], [ %.4178276.i.i, %bb.de ], [ %.4178276.i.i, %bb.dd ], [ %.4178276.i.i, %bb.dc ] ; 2 uses
  %i.zr = trunc i64 %i.zd to i32                  ; 2 uses
  %i.zs = fcmp uno float %i.zh, 0.000000e+00
  %.0.i106.i.i41 = select i1 %i.zs, float f0x7F7FFFFF, float %i.zh ; 4 uses
  %i.zt = load i32, ptr %i.oy, align 4, !tbaa !495 ; 5 uses
  %i.zu = load i32, ptr %3, align 8, !tbaa !500
  %i.zv = icmp eq i32 %i.zt, %i.zu
  %i.zw = load ptr, ptr %i.of, align 8, !tbaa !492 ; 4 uses
  br i1 %i.zv, label %bb.dg, label %._crit_edge.i107.i.i42

._crit_edge.i107.i.i42:                           ; preds = %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i
  %.pre10.i109.i.i43 = load ptr, ptr %i.oe, align 8, !tbaa !84
  br label %bb.dn

bb.dg:                                            ; preds = %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS3_IfiEENS_4CMinIfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i
  %i.zx = load float, ptr %i.zw, align 4, !tbaa !233
  %i.zy = fcmp ogt float %i.zx, %.0.i106.i.i41
  br i1 %i.zy, label %bb.dh, label %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif.exit135.i.i46

bb.dh:                                            ; preds = %bb.dg
  %i.zz = load ptr, ptr %i.oe, align 8, !tbaa !84 ; 4 uses
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !21
  %.not.i116.i.i51 = icmp eq i32 %i.aaa, -1
  br i1 %.not.i116.i.i51, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.aab = load i32, ptr %i.oa, align 8, !tbaa !482
  %i.aac = add nsw i32 %i.aab, -1
  store i32 %i.aac, ptr %i.oa, align 8, !tbaa !482
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.aad = add nsw i32 %i.zt, -1
  store i32 %i.aad, ptr %i.oy, align 4, !tbaa !495
  %i.aae = sext i32 %i.zt to i64                  ; 4 uses
  %i.aaf = getelementptr inbounds i8, ptr %i.zw, i64 -4 ; 4 uses
  %i.aag = getelementptr inbounds i8, ptr %i.zz, i64 -4 ; 5 uses
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %i.aae ; 3 uses
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !233 ; 5 uses
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %i.aae ; 2 uses
  %i.aak = load i32, ptr %i.aaj, align 4, !tbaa !21 ; 3 uses
  %i.aal = icmp ult i32 %i.zt, 2
  br i1 %i.aal, label %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i63, label %.lr.ph.i.i117.i.i52

.lr.ph.i.i117.i.i52:                              ; preds = %bb.dj, %bb.dm
  %i.aam = phi i64 [ %i.abp, %bb.dm ], [ 3, %bb.dj ]
  %i.aan = phi i64 [ %i.abo, %bb.dm ], [ 2, %bb.dj ] ; 7 uses
  %.062.i.i118.i.i53 = phi i64 [ %.1.i.i123.i.i58, %bb.dm ], [ 1, %bb.dj ] ; 6 uses
  %i.aao = icmp eq i64 %i.aan, %i.aae
  br i1 %i.aao, label %.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i133.i.i68, label %bb.dk

.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i133.i.i68: ; preds = %.lr.ph.i.i117.i.i52
  %.pre.i.i134.i.i69 = load float, ptr %i.aah, align 4, !tbaa !233
  br label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i131.i.i66

bb.dk:                                            ; preds = %.lr.ph.i.i117.i.i52
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %i.aan
  %i.aaq = load float, ptr %i.aap, align 4, !tbaa !233 ; 4 uses
  %i.aar = getelementptr [4 x i8], ptr %i.zw, i64 %i.aan
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !233 ; 5 uses
  %i.aat = getelementptr [4 x i8], ptr %i.zz, i64 %i.aan
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !21 ; 3 uses
  %i.aav = fcmp ogt float %i.aaq, %i.aas
  br i1 %i.aav, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i131.i.i66, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i119.i.i54

_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i119.i.i54:   ; preds = %bb.dk
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %i.aan
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !21
  %i.aay = fcmp oeq float %i.aaq, %i.aas
  %i.aaz = icmp sgt i32 %i.aax, %i.aau
  %i.aba = and i1 %i.aay, %i.aaz
  br i1 %i.aba, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i131.i.i66, label %bb.dl

_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i131.i.i66: ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i119.i.i54, %bb.dk, %.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i133.i.i68
  %i.abb = phi float [ %.pre.i.i134.i.i69, %.lr.ph._ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread_crit_edge.i.i133.i.i68 ], [ %i.aaq, %bb.dk ], [ %i.aaq, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i119.i.i54 ] ; 3 uses
  %i.abc = fcmp ogt float %i.aai, %i.abb
  br i1 %i.abc, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i132.i.i67

_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i132.i.i67: ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i131.i.i66
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %i.aan
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !21 ; 2 uses
  %i.abf = fcmp oeq float %i.aai, %i.abb
  %i.abg = icmp sgt i32 %i.aak, %i.abe
  %i.abh = and i1 %i.abf, %i.abg
  br i1 %i.abh, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59, label %bb.dm

bb.dl:                                            ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.i.i119.i.i54
  %i.abi = fcmp ogt float %i.aai, %i.aas
  br i1 %i.abi, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i120.i.i55

_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i120.i.i55: ; preds = %bb.dl
  %i.abj = fcmp oeq float %i.aai, %i.aas
  %i.abk = icmp sgt i32 %i.aak, %i.aau
  %i.abl = and i1 %i.abj, %i.abk
  br i1 %i.abl, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59, label %bb.dm

bb.dm:                                            ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i120.i.i55, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i132.i.i67
  %.sink79.i.i121.i.i56 = phi float [ %i.abb, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i132.i.i67 ], [ %i.aas, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i120.i.i55 ]
  %.sink.i.i122.i.i57 = phi i32 [ %i.abe, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i132.i.i67 ], [ %i.aau, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i120.i.i55 ]
  %.1.i.i123.i.i58 = phi i64 [ %i.aan, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i132.i.i67 ], [ %i.aam, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i120.i.i55 ] ; 3 uses
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %.062.i.i118.i.i53
  store float %.sink79.i.i121.i.i56, ptr %i.abm, align 4, !tbaa !233
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %.062.i.i118.i.i53
  store i32 %.sink.i.i122.i.i57, ptr %i.abn, align 4, !tbaa !21
  %i.abo = shl i64 %.1.i.i123.i.i58, 1            ; 3 uses
  %i.abp = or disjoint i64 %i.abo, 1
  %i.abq = icmp ugt i64 %i.abo, %i.aae
  br i1 %i.abq, label %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59, label %.lr.ph.i.i117.i.i52, !llvm.loop !501

_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59: ; preds = %bb.dm, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i120.i.i55, %bb.dl, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i132.i.i67, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i131.i.i66
  %.0.lcssa.ph.i.i125.i.i60 = phi i64 [ %.1.i.i123.i.i58, %bb.dm ], [ %.062.i.i118.i.i53, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.i.i132.i.i67 ], [ %.062.i.i118.i.i53, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit61.i.i120.i.i55 ], [ %.062.i.i118.i.i53, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i.i131.i.i66 ], [ %.062.i.i118.i.i53, %bb.dl ]
  %.pre68.i.i126.i.i61 = load float, ptr %i.aah, align 4, !tbaa !233
  %.pre69.i.i127.i.i62 = load i32, ptr %i.aaj, align 4, !tbaa !21
  br label %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i63

_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i63: ; preds = %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59, %bb.dj
  %i.abr = phi i32 [ %i.aak, %bb.dj ], [ %.pre69.i.i127.i.i62, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59 ]
  %i.abs = phi float [ %i.aai, %bb.dj ], [ %.pre68.i.i126.i.i61, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59 ]
  %.0.lcssa.i.i129.i.i64 = phi i64 [ 1, %bb.dj ], [ %.0.lcssa.ph.i.i125.i.i60, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59 ] ; 2 uses
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.aaf, i64 %.0.lcssa.i.i129.i.i64
  store float %i.abs, ptr %i.abt, align 4, !tbaa !233
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %i.aag, i64 %.0.lcssa.i.i129.i.i64
  store i32 %i.abr, ptr %i.abu, align 4, !tbaa !21
  %.pre.i130.i.i65 = load i32, ptr %i.oy, align 4, !tbaa !495
  br label %bb.dn

bb.dn:                                            ; preds = %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i63, %._crit_edge.i107.i.i42
  %i.abv = phi ptr [ %i.zz, %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i63 ], [ %.pre10.i109.i.i43, %._crit_edge.i107.i.i42 ]
  %i.abw = phi i32 [ %.pre.i130.i.i65, %_ZN5faiss8heap_popINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i63 ], [ %i.zt, %._crit_edge.i107.i.i42 ]
  %i.abx = add nsw i32 %i.abw, 1                  ; 3 uses
  store i32 %i.abx, ptr %i.oy, align 4, !tbaa !495
  %i.aby = sext i32 %i.abx to i64                 ; 2 uses
  %i.abz = getelementptr inbounds i8, ptr %i.zw, i64 -4 ; 3 uses
  %i.aca = getelementptr inbounds i8, ptr %i.abv, i64 -4 ; 3 uses
  %i.acb = icmp ugt i32 %i.abx, 1
  br i1 %i.acb, label %.lr.ph.i5.i112.i.i47, label %_ZN5faiss9heap_pushINS_4CMaxIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i110.i.i44

.lr.ph.i5.i112.i.i47:                             ; preds = %bb.dn, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i115.i.i50
  %.025.i.i113.i.i48 = phi i64 [ %i.acc, %_ZN5faiss4CMaxIfiE4cmp2Effii.exit.thread.i7.i115.i.i50 ], [ %i.aby, %bb.dn ] ; 5 uses
  %i.acc = lshr i64 %.025.i.i113.i.i48, 1         ; 4 uses
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.abz, i64 %i.acc
end_hunk_1
begin_hunk_2_@_ZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsE:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph130, %._crit_edge127
  %i.ad = phi ptr [ %i.p, %.lr.ph130 ], [ %i.dj, %._crit_edge127 ] ; 5 uses
  %.pr = phi ptr [ %i.o, %.lr.ph130 ], [ %i.di, %._crit_edge127 ] ; 8 uses
  %.064129 = phi i32 [ 0, %.lr.ph130 ], [ %.367.lcssa, %._crit_edge127 ] ; 5 uses
  %i.ae = load float, ptr %.pr, align 4, !tbaa !776 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pr, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !772 ; 2 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !774
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !776
  %i.aj = fcmp ogt float %i.ae, %i.ai
  br i1 %i.aj, label %.loopexit, label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.j:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.k:                                             ; preds = %bb.g
  %i.an = ptrtoint ptr %i.ad to i64
  %i.ao = ptrtoint ptr %.pr to i64                ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp sgt i64 %i.ap, 8
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 3 uses
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %i.ar, align 4
  store float %i.ae, ptr %i.ar, align 4, !tbaa !776
  %i.as = getelementptr inbounds i8, ptr %i.ad, i64 -4
  store i32 %i.ag, ptr %i.as, align 4, !tbaa !772
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.at, %i.ao
  %i.av = ashr exact i64 %i.au, 3
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_T0_SF_T1_T2_(ptr nonnull %.pr, i64 noundef 0, i64 noundef %i.av, i64 %.sroa.03.0.copyload.i.i.i)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.l
  %.pre.i = load ptr, ptr %i.n, align 8, !tbaa !777
  br label %bb.m

bb.m:                                             ; preds = %.noexc, %bb.k
  %i.aw = phi ptr [ %i.ad, %bb.k ], [ %.pre.i, %.noexc ]
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -8
  store ptr %i.ax, ptr %i.n, align 8, !tbaa !777
  %i.ay = sext i32 %i.ag to i64
  %i.az = load ptr, ptr %i.r, align 8, !tbaa !96
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !99 ; 2 uses
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !84  ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !21
  %i.be = sext i32 %i.bd to i64
  %i.bf = add i64 %i.bb, %i.be                    ; 4 uses
  %i.bg = getelementptr i8, ptr %i.bc, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !21
  %i.bi = sext i32 %i.bh to i64
  %i.bj = add i64 %i.bb, %i.bi                    ; 3 uses
  %i.bk = icmp ult i64 %i.bf, %i.bj
  br i1 %i.bk, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  br label %._crit_edge127

.lr.ph:                                           ; preds = %bb.m
  %i.bl = load ptr, ptr %i.t, align 8, !tbaa !154
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.o
  %.050113 = phi i64 [ %i.bf, %.lr.ph ], [ %i.bs, %bb.o ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %.050113
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !21 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, -1
  br i1 %i.bo, label %bb.o, label %._crit_edge

bb.o:                                             ; preds = %bb.n
  %i.bp = zext nneg i32 %i.bn to i64
  %i.bq = load ptr, ptr %i.h, align 8, !tbaa !219
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  call void @llvm.prefetch.p0(ptr nonnull %i.br, i32 0, i32 2, i32 1)
  %i.bs = add nuw i64 %.050113, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, %i.bj
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !779

._crit_edge:                                      ; preds = %bb.o, %bb.n
  %.051.lcssa = phi i64 [ %.050113, %bb.n ], [ %i.bj, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store ptr %0, ptr %8, align 8, !tbaa !780
  store ptr %i.a, ptr %i.u, align 8, !tbaa !782
  store ptr %7, ptr %i.v, align 8, !tbaa !783
  %i.bt = icmp ult i64 %i.bf, %.051.lcssa
  br i1 %i.bt, label %.lr.ph121, label %._crit_edge127

.preheader89:                                     ; preds = %bb.v
  %i.bu = icmp sgt i32 %.1, 0
  br i1 %i.bu, label %.lr.ph126.preheader, label %._crit_edge127

.lr.ph126.preheader:                              ; preds = %.preheader89
  %i.bv = add i32 %.266, %.1
  %wide.trip.count = zext nneg i32 %.1 to i64
  br label %.lr.ph126

.lr.ph121:                                        ; preds = %._crit_edge, %bb.v
  %.048119 = phi i64 [ %i.cy, %bb.v ], [ %i.bf, %._crit_edge ] ; 2 uses
  %.049118 = phi i32 [ %.1, %bb.v ], [ 0, %._crit_edge ] ; 2 uses
  %.165117 = phi i32 [ %.266, %bb.v ], [ %.064129, %._crit_edge ] ; 2 uses
  %i.bw = load ptr, ptr %i.t, align 8, !tbaa !154
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %.048119
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !21
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = sext i32 %.049118 to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ca
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !99
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !219
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bz ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !91
  %i.cf = load i8, ptr %i.l, align 8, !tbaa !221  ; 2 uses
  %i.cg = icmp ne i8 %i.ce, %i.cf                 ; 2 uses
  br i1 %i.cg, label %bb.p, label %_ZN5faiss18VisitedTableVector3setEm.exit78

bb.p:                                             ; preds = %.lr.ph121
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !91
  br label %_ZN5faiss18VisitedTableVector3setEm.exit78

_ZN5faiss18VisitedTableVector3setEm.exit78:       ; preds = %.lr.ph121, %bb.p
  %i.ch = zext i1 %i.cg to i32
  %i.ci = add nsw i32 %.049118, %i.ch             ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 4
  br i1 %i.cj, label %bb.q, label %bb.v

bb.q:                                             ; preds = %_ZN5faiss18VisitedTableVector3setEm.exit78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.ck = load i64, ptr %i.b, align 16, !tbaa !99 ; 2 uses
  %i.cl = load i64, ptr %i.w, align 8, !tbaa !99  ; 2 uses
  %i.cm = load i64, ptr %i.x, align 16, !tbaa !99 ; 2 uses
  %i.cn = load i64, ptr %i.y, align 8, !tbaa !99  ; 2 uses
  %i.co = load ptr, ptr %3, align 8, !tbaa !22
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.ck, i64 noundef %i.cl, i64 noundef %i.cm, i64 noundef %i.cn, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.ab)
          to label %.preheader.preheader unwind label %bb.r

.preheader.preheader:                             ; preds = %bb.q
  %i.cr = load float, ptr %i.c, align 16, !tbaa !233
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.ck, float noundef %i.cr)
          to label %.preheader.1 unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.ct = load float, ptr %i.z, align 4, !tbaa !233
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.cl, float noundef %i.ct)
          to label %.preheader.2 unwind label %bb.t

.preheader.2:                                     ; preds = %.preheader.1
  %i.cu = load float, ptr %i.aa, align 8, !tbaa !233
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.cm, float noundef %i.cu)
          to label %.preheader.3 unwind label %bb.t

.preheader.3:                                     ; preds = %.preheader.2
  %i.cv = load float, ptr %i.ab, align 4, !tbaa !233
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.cn, float noundef %i.cv)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.preheader.3
  %i.cw = add nsw i32 %.165117, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.v

bb.t:                                             ; preds = %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.pn = phi { ptr, i32 } [ %i.cx, %bb.t ], [ %i.cs, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.z

bb.v:                                             ; preds = %bb.s, %_ZN5faiss18VisitedTableVector3setEm.exit78
  %.266 = phi i32 [ %i.cw, %bb.s ], [ %.165117, %_ZN5faiss18VisitedTableVector3setEm.exit78 ] ; 3 uses
  %.1 = phi i32 [ 0, %bb.s ], [ %i.ci, %_ZN5faiss18VisitedTableVector3setEm.exit78 ] ; 4 uses
  %i.cy = add nuw i64 %.048119, 1                 ; 2 uses
  %9 = icmp ult i64 %i.cy, %.051.lcssa
  br i1 %9, label %.lr.ph121, label %.preheader89, !llvm.loop !785

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph126.preheader ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !99 ; 2 uses
  %i.db = load ptr, ptr %3, align 8, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = invoke noundef float %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.da)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %.lr.ph126
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_18VisitedTableVectorENS_4CMaxIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.da, float noundef %i.de)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond142.not, label %._crit_edge127, label %.lr.ph126, !llvm.loop !786

bb.y:                                             ; preds = %bb.w, %.lr.ph126
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

._crit_edge127:                                   ; preds = %bb.x, %._crit_edge.thread, %._crit_edge, %.preheader89
  %.367.lcssa = phi i32 [ %.266, %.preheader89 ], [ %.064129, %._crit_edge.thread ], [ %.064129, %._crit_edge ], [ %i.bv, %bb.x ] ; 2 uses
  %i.dg = load i64, ptr %i.ac, align 8, !tbaa !465
  %i.dh = add i64 %i.dg, 1
  store i64 %i.dh, ptr %i.ac, align 8, !tbaa !465
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.di = load ptr, ptr %7, align 8, !tbaa !774   ; 3 uses
  %i.dj = load ptr, ptr %i.n, align 8, !tbaa !774 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %.loopexit.thread, label %bb.g

bb.z:                                             ; preds = %bb.y, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.df, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.ac

.loopexit.thread:                                 ; preds = %._crit_edge127, %_ZN5faiss18VisitedTableVector3setEm.exit
  %.064111.ph = phi i32 [ 0, %_ZN5faiss18VisitedTableVector3setEm.exit ], [ %.367.lcssa, %._crit_edge127 ]
  %.ph = phi ptr [ %i.o, %_ZN5faiss18VisitedTableVector3setEm.exit ], [ %i.di, %._crit_edge127 ] ; 2 uses
  %i.dl = load i64, ptr %6, align 8, !tbaa !506
  %i.dm = add i64 %i.dl, 1
  store i64 %i.dm, ptr %6, align 8, !tbaa !506
  %i.dn = ptrtoint ptr %.ph to i64
  br label %bb.aa

.loopexit:                                        ; preds = %bb.g
  %i.do = icmp eq ptr %i.ad, %.pr
  %i.dp = load i64, ptr %6, align 8, !tbaa !506
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %6, align 8, !tbaa !506
  %i.dr = ptrtoint ptr %.pr to i64                ; 2 uses
  br i1 %i.do, label %bb.aa, label %.thread

.thread:                                          ; preds = %.loopexit
  %i.ds = sext i32 %.064129 to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !463
  %i.dv = add i64 %i.du, %i.ds
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !463
  br label %bb.ab

bb.aa:                                            ; preds = %.loopexit, %.loopexit.thread
  %i.dw = phi i64 [ %i.dn, %.loopexit.thread ], [ %i.dr, %.loopexit ]
  %i.dx = phi ptr [ %.ph, %.loopexit.thread ], [ %.pr, %.loopexit ] ; 2 uses
  %.064111166 = phi i32 [ %.064111.ph, %.loopexit.thread ], [ %.064129, %.loopexit ]
  %i.dy = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dz = sext i32 %.064111166 to i64
  %i.ea = load <2 x i64>, ptr %i.dy, align 8, !tbaa !99
  %i.eb = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.dz, i64 1
  %i.ec = add <2 x i64> %i.ea, %i.eb
  store <2 x i64> %i.ec, ptr %i.dy, align 8, !tbaa !99
  %.not.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i, label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %.thread, %bb.aa
  %i.ed = phi ptr [ %.pr, %.thread ], [ %i.dx, %bb.aa ]
  %i.ee = phi i64 [ %i.dr, %.thread ], [ %i.dw, %bb.aa ]
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !787
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.eh, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.ei) #33
  br label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit

_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  ret void

bb.ac:                                            ; preds = %bb.j, %bb.z, %bb.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.i ], [ %i.am, %bb.j ], [ %.pn.pn, %bb.z ]
  %i.ej = load ptr, ptr %7, align 8, !tbaa !788   ; 3 uses
  %.not.i.i.i.i79 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i.i79, label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit80, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !787
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = ptrtoint ptr %i.ej to i64
  %i.eo = sub i64 %i.em, %i.en
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.eo) #33
  br label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit80

_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit80: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  br label %bb.ae

bb.ae:                                            ; preds = %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit80, %bb.h
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit80 ], [ %i.ak, %bb.h ]
  %i.ep = load ptr, ptr %0, align 8, !tbaa !788   ; 3 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i81, label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !787
  %i.es = ptrtoint ptr %i.er to i64
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = sub i64 %i.es, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef %i.eu) #33
  br label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EED2Ev.exit

_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EED2Ev.exit: ; preds = %bb.ae, %bb.af
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5faiss12_GLOBAL__N_120reservePriorityQueueISt4pairIfiESt6vectorIS3_SaIS3_EESt4lessIS3_EEEvRSt14priority_queueIT_T0_T1_Em(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(25) %0, i64 noundef range(i64 -2147483648, 2147483648) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !788    ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !777  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !787  ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, i8 0, i64 24, i1 false)
  %i.f = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #31
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ult i64 %i.j, %1
  br i1 %i.k, label %_ZNSt12_Vector_baseISt4pairIfiESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt4pairIfiESaIS1_EE7reserveEm.exit.thread

_ZNSt6vectorISt4pairIfiESaIS1_EE7reserveEm.exit.thread: ; preds = %bb.c
  store ptr %i.a, ptr %0, align 8, !tbaa !788
  store ptr %i.c, ptr %i.b, align 8, !tbaa !777
  store ptr %i.e, ptr %i.d, align 8, !tbaa !787
  br label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairIfiESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.l = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.h
  %i.n = shl nuw nsw i64 %1, 3
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #32
          to label %.noexc4 unwind label %bb.f    ; 7 uses

.noexc4:                                          ; preds = %_ZNSt12_Vector_baseISt4pairIfiESaIS1_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairIfiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc4
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = add i64 %i.l, -8
  %i.r = sub i64 %i.q, %i.h                       ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 72
  %i.u = sub i64 %i.h, %i.p
  %diff.check = icmp ugt i64 %i.u, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.v = shl i64 %n.vec, 3                        ; 2 uses
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %i.x = getelementptr i8, ptr %i.a, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.y = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.y ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsE:bb.a
  br i1 %i.bj, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  br label %._crit_edge147

.lr.ph:                                           ; preds = %bb.k
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !154
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.m:                                             ; preds = %.lr.ph, %bb.n
  %.050133 = phi i64 [ %i.be, %.lr.ph ], [ %i.bp, %bb.n ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.050133
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !21
  %i.bo = icmp sgt i32 %i.bn, -1
  br i1 %i.bo, label %bb.n, label %._crit_edge

bb.n:                                             ; preds = %bb.m
  %i.bp = add nuw i64 %.050133, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bp, %i.bi
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !840

._crit_edge:                                      ; preds = %bb.n, %bb.m
  %.051.lcssa = phi i64 [ %.050133, %bb.m ], [ %i.bi, %bb.n ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  store ptr %0, ptr %9, align 8, !tbaa !780
  store ptr %i.b, ptr %i.r, align 8, !tbaa !782
  store ptr %8, ptr %i.s, align 8, !tbaa !783
  %i.bq = icmp ult i64 %i.be, %.051.lcssa
  br i1 %i.bq, label %.lr.ph141, label %._crit_edge147

.preheader97:                                     ; preds = %bb.z
  %i.br = icmp sgt i32 %.1, 0
  br i1 %i.br, label %.lr.ph146.preheader, label %._crit_edge147

.lr.ph146.preheader:                              ; preds = %.preheader97
  %i.bs = add i32 %.266, %.1
  %wide.trip.count = zext nneg i32 %.1 to i64
  br label %.lr.ph146

.lr.ph141:                                        ; preds = %._crit_edge, %bb.z
  %.048139 = phi i64 [ %i.dq, %bb.z ], [ %i.be, %._crit_edge ] ; 2 uses
  %.049138 = phi i32 [ %.1, %bb.z ], [ 0, %._crit_edge ] ; 2 uses
  %.165137 = phi i32 [ %.266, %bb.z ], [ %.064149, %._crit_edge ] ; 2 uses
  %i.bt = load ptr, ptr %i.q, align 8, !tbaa !154
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.048139
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !21
  %i.bw = sext i32 %i.bv to i64                   ; 8 uses
  %i.bx = sext i32 %.049138 to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bx
  store i64 %i.bw, ptr %i.by, align 8, !tbaa !99
  %i.bz = load i64, ptr %i.t, align 8, !tbaa !292
  %.not.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.not.i, label %.preheader154, label %.thread35.i

.thread35.i:                                      ; preds = %.lr.ph141
  %i.ca = load i64, ptr %i.u, align 8, !tbaa !251 ; 2 uses
  %i.cb = urem i64 %i.bw, %i.ca                   ; 5 uses
  %i.cc = load ptr, ptr %i.i, align 8, !tbaa !250
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !165 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i, label %.critedge.i, label %bb.q

.preheader154:                                    ; preds = %.lr.ph141, %bb.o
  %.sroa.028.0.in.i = phi ptr [ %.sroa.028.0.i, %bb.o ], [ %i.v, %.lr.ph141 ]
  %.sroa.028.0.i = load ptr, ptr %.sroa.028.0.in.i, align 8, !tbaa !166 ; 3 uses
  %i.cf = icmp eq ptr %.sroa.028.0.i, null
  br i1 %i.cf, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader154
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.028.0.i, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !99
  %i.ci = icmp eq i64 %i.ch, %i.bw
  br i1 %i.ci, label %.loopexit, label %.preheader154, !llvm.loop !339

bb.p:                                             ; preds = %.preheader154
  %i.cj = load i64, ptr %i.u, align 8, !tbaa !251
  %i.ck = urem i64 %i.bw, %i.cj
  br label %.critedge.i

bb.q:                                             ; preds = %.thread35.i
  %i.cl = load ptr, ptr %i.ce, align 8, !tbaa !166 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !99
  %i.co = icmp eq i64 %i.cn, %i.bw
  br i1 %i.co, label %.loopexit, label %.lr.ph.i.i.i

bb.r:                                             ; preds = %bb.s
  %i.cp = icmp eq i64 %i.cs, %i.bw
  br i1 %i.cp, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !340

.lr.ph.i.i.i:                                     ; preds = %bb.q, %bb.r
  %.020.i.i.i = phi ptr [ %i.cq, %bb.r ], [ %i.cl, %bb.q ]
  %i.cq = load ptr, ptr %.020.i.i.i, align 8, !tbaa !166 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not18.i.i.i, label %.critedge.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !99 ; 2 uses
  %i.ct = urem i64 %i.cs, %i.ca
  %.not19.i.i.i = icmp eq i64 %i.ct, %i.cb
  br i1 %.not19.i.i.i, label %bb.r, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !340

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.s
  br label %.critedge.i, !llvm.loop !340

.critedge.i:                                      ; preds = %.lr.ph.i.i.i, %..loopexit_crit_edge21.i.i.i, %bb.p, %.thread35.i
  %i.cu = phi i64 [ %i.ck, %bb.p ], [ %i.cb, %.thread35.i ], [ %i.cb, %..loopexit_crit_edge21.i.i.i ], [ %i.cb, %.lr.ph.i.i.i ]
  %i.cv = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #32
          to label %.noexc84 unwind label %bb.u   ; 4 uses

.noexc84:                                         ; preds = %.critedge.i
  store ptr null, ptr %i.cv, align 8, !tbaa !166
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.bw, ptr %i.cw, align 8, !tbaa !99
  %i.cx = invoke ptr @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 noundef %i.cu, i64 noundef %i.bw, ptr noundef nonnull %i.cv, i64 noundef 1)
          to label %.loopexit unwind label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ; 0 uses

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i: ; preds = %.noexc84
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef 16) #33
  br label %.body

.loopexit:                                        ; preds = %bb.r, %bb.o, %bb.q, %.noexc84
  %.sroa.432.1.i = phi i32 [ 0, %bb.o ], [ 1, %.noexc84 ], [ 0, %bb.q ], [ 0, %bb.r ]
  %i.cz = add nsw i32 %.sroa.432.1.i, %.049138    ; 2 uses
  %i.da = icmp eq i32 %i.cz, 4
  br i1 %i.da, label %bb.t, label %bb.z

bb.t:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.db = load i64, ptr %i.c, align 16, !tbaa !99 ; 2 uses
  %i.dc = load i64, ptr %i.w, align 8, !tbaa !99  ; 2 uses
  %i.dd = load i64, ptr %i.x, align 16, !tbaa !99 ; 2 uses
  %i.de = load i64, ptr %i.y, align 8, !tbaa !99  ; 2 uses
  %i.df = load ptr, ptr %3, align 8, !tbaa !22
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.db, i64 noundef %i.dc, i64 noundef %i.dd, i64 noundef %i.de, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.ab)
          to label %.preheader.preheader unwind label %bb.v

.preheader.preheader:                             ; preds = %bb.t
  %i.di = load float, ptr %i.d, align 16, !tbaa !233
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.db, float noundef %i.di)
          to label %.preheader.1 unwind label %bb.x

bb.u:                                             ; preds = %.critedge.i
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.t
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.dl = load float, ptr %i.z, align 4, !tbaa !233
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.dc, float noundef %i.dl)
          to label %.preheader.2 unwind label %bb.x

.preheader.2:                                     ; preds = %.preheader.1
  %i.dm = load float, ptr %i.aa, align 8, !tbaa !233
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.dd, float noundef %i.dm)
          to label %.preheader.3 unwind label %bb.x

.preheader.3:                                     ; preds = %.preheader.2
  %i.dn = load float, ptr %i.ab, align 4, !tbaa !233
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.de, float noundef %i.dn)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.preheader.3
  %i.do = add nsw i32 %.165137, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %bb.z

bb.x:                                             ; preds = %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.pn = phi { ptr, i32 } [ %i.dp, %bb.x ], [ %i.dk, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  br label %.body

bb.z:                                             ; preds = %bb.w, %.loopexit
  %.266 = phi i32 [ %i.do, %bb.w ], [ %.165137, %.loopexit ] ; 3 uses
  %.1 = phi i32 [ 0, %bb.w ], [ %i.cz, %.loopexit ] ; 4 uses
  %i.dq = add nuw i64 %.048139, 1                 ; 2 uses
  %10 = icmp ult i64 %i.dq, %.051.lcssa
  br i1 %10, label %.lr.ph141, label %.preheader97, !llvm.loop !841

.lr.ph146:                                        ; preds = %.lr.ph146.preheader, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph146.preheader ], [ %indvars.iv.next, %bb.ab ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !99 ; 2 uses
  %i.dt = load ptr, ptr %3, align 8, !tbaa !22
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = invoke noundef float %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.ds)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %.lr.ph146
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.ds, float noundef %i.dw)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond167.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond167.not, label %._crit_edge147, label %.lr.ph146, !llvm.loop !842

bb.ac:                                            ; preds = %bb.aa, %.lr.ph146
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge147:                                   ; preds = %bb.ab, %._crit_edge.thread, %._crit_edge, %.preheader97
  %.367.lcssa = phi i32 [ %.266, %.preheader97 ], [ %.064149, %._crit_edge.thread ], [ %.064149, %._crit_edge ], [ %i.bs, %bb.ab ] ; 2 uses
  %i.dy = load i64, ptr %i.ac, align 8, !tbaa !465
  %i.dz = add i64 %i.dy, 1
  store i64 %i.dz, ptr %i.ac, align 8, !tbaa !465
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.ea = load ptr, ptr %8, align 8, !tbaa !774   ; 3 uses
  %i.eb = load ptr, ptr %i.k, align 8, !tbaa !774 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %.loopexit98.thread, label %bb.f

.body:                                            ; preds = %bb.u, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i, %bb.y, %bb.ac
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dx, %bb.ac ], [ %.pn, %bb.y ], [ %i.dj, %bb.u ], [ %i.cy, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.af

.loopexit98.thread:                               ; preds = %._crit_edge147, %_ZN5faiss15VisitedTableSet3setEm.exit
  %.064131.ph = phi i32 [ 0, %_ZN5faiss15VisitedTableSet3setEm.exit ], [ %.367.lcssa, %._crit_edge147 ]
  %.ph = phi ptr [ %i.l, %_ZN5faiss15VisitedTableSet3setEm.exit ], [ %i.ea, %._crit_edge147 ] ; 2 uses
  %i.ed = load i64, ptr %6, align 8, !tbaa !506
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr %6, align 8, !tbaa !506
  %i.ef = ptrtoint ptr %.ph to i64
  br label %bb.ad

.loopexit98:                                      ; preds = %bb.f
  %i.eg = icmp eq ptr %i.ad, %.pr
  %i.eh = load i64, ptr %6, align 8, !tbaa !506
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %6, align 8, !tbaa !506
  %i.ej = ptrtoint ptr %.pr to i64                ; 2 uses
  br i1 %i.eg, label %bb.ad, label %.thread

.thread:                                          ; preds = %.loopexit98
  %i.ek = sext i32 %.064149 to i64
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !463
  %i.en = add i64 %i.em, %i.ek
  store i64 %i.en, ptr %i.el, align 8, !tbaa !463
  br label %bb.ae

bb.ad:                                            ; preds = %.loopexit98, %.loopexit98.thread
  %i.eo = phi i64 [ %i.ef, %.loopexit98.thread ], [ %i.ej, %.loopexit98 ]
  %i.ep = phi ptr [ %.ph, %.loopexit98.thread ], [ %.pr, %.loopexit98 ] ; 2 uses
  %.064131192 = phi i32 [ %.064131.ph, %.loopexit98.thread ], [ %.064149, %.loopexit98 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.er = sext i32 %.064131192 to i64
  %i.es = load <2 x i64>, ptr %i.eq, align 8, !tbaa !99
  %i.et = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.er, i64 1
  %i.eu = add <2 x i64> %i.es, %i.et
  store <2 x i64> %i.eu, ptr %i.eq, align 8, !tbaa !99
  %.not.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i, label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %.thread, %bb.ad
  %i.ev = phi ptr [ %.pr, %.thread ], [ %i.ep, %bb.ad ]
  %i.ew = phi i64 [ %i.ej, %.thread ], [ %i.eo, %bb.ad ]
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !787
  %i.ez = ptrtoint ptr %i.ey to i64
  %i.fa = sub i64 %i.ez, %i.ew
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.fa) #33
  br label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit

_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  ret void

bb.af:                                            ; preds = %bb.l, %.body, %bb.h
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.al, %bb.h ], [ %.pn.pn.pn, %.body ], [ %i.bl, %bb.l ]
  %i.fb = load ptr, ptr %8, align 8, !tbaa !788   ; 3 uses
  %.not.i.i.i.i81 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i81, label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit82, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fc = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !787
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fb to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fg) #33
  br label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit82

_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit82: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit82, %bb.g
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit82 ], [ %i.ak, %bb.g ]
  %i.fh = load ptr, ptr %0, align 8, !tbaa !788   ; 3 uses
  %.not.i.i.i.i83 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i.i83, label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !787
  %i.fk = ptrtoint ptr %i.fj to i64
  %i.fl = ptrtoint ptr %i.fh to i64
  %i.fm = sub i64 %i.fk, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fm) #33
  br label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EED2Ev.exit

_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EED2Ev.exit: ; preds = %bb.ah, %bb.ai
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_15VisitedTableSetENS_4CMaxIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, float noundef %2) unnamed_addr #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !843, !nonnull !151, !align !304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !774  ; 2 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !776
  %i.d = fcmp ogt float %i.c, %2
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !777
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !845, !nonnull !151, !align !822
  %i.m = load i32, ptr %i.l, align 4, !tbaa !21
  %i.n = sext i32 %i.m to i64
  %i.o = icmp ult i64 %i.j, %i.n
  br i1 %i.o, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !846, !nonnull !151, !align !304 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !777  ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !787
  %.not.i = icmp eq ptr %i.s, %i.u
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float %2, ptr %i.s, align 4, !tbaa !776
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = trunc i64 %1 to i32
  store i32 %i.w, ptr %i.v, align 4, !tbaa !772
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.r, align 8, !tbaa !777
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !774
  br label %_ZNSt6vectorISt4pairIfiESaIS1_EE12emplace_backIJRKfRKmEEERS1_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !788  ; 7 uses
  %i.z = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64                ; 4 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorISt4pairIfiESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #31
  unreachable

_ZNKSt6vectorISt4pairIfiESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ad = ashr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 1152921504606846975)
  %i.ah = select i1 %i.af, i64 1152921504606846975, i64 %i.ag ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #32 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNK5faiss4HNSW6searchERNS_16DistanceComputerEPKNS_9IndexHNSWERNS_22ResultHandlerUnorderedIflEERNS_12VisitedTableEPKNS_16SearchParametersE:bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !221, !noalias !885 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.do, %i.dq
  br i1 %.not.i.i.i, label %_ZN5faiss18VisitedTableVector3setEm.exit.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i8 %i.dq, ptr %i.dn, align 1, !tbaa !91, !noalias !861
  br label %_ZN5faiss18VisitedTableVector3setEm.exit.i.i.i

_ZN5faiss18VisitedTableVector3setEm.exit.i.i.i:   ; preds = %bb.ad, %bb.ac
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ds = load ptr, ptr %18, align 8, !tbaa !774, !noalias !885 ; 3 uses
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !774, !noalias !885
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %.loopexit.i.i.i, label %.lr.ph130.i.i.i

.lr.ph130.i.i.i:                                  ; preds = %_ZN5faiss18VisitedTableVector3setEm.exit.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge127.i.i.i, %.lr.ph130.i.i.i
  %i.eh = phi i64 [ %.promoted106, %.lr.ph130.i.i.i ], [ %i.gz, %._crit_edge127.i.i.i ] ; 5 uses
  %.pr.i.i.i = phi ptr [ %i.ds, %.lr.ph130.i.i.i ], [ %i.ha, %._crit_edge127.i.i.i ] ; 3 uses
  %.064129.i.i.i = phi i32 [ 0, %.lr.ph130.i.i.i ], [ %.367.lcssa.i.i.i, %._crit_edge127.i.i.i ] ; 4 uses
  %i.ei = load float, ptr %.pr.i.i.i, align 4, !tbaa !776, !noalias !861
  %i.ej = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 4
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !772, !noalias !861
  %i.el = load ptr, ptr %25, align 8, !tbaa !774, !alias.scope !886, !noalias !861
  %i.em = load float, ptr %i.el, align 4, !tbaa !776, !noalias !861
  %i.en = fcmp olt float %i.ei, %i.em
  br i1 %i.en, label %.thread.i.i.i, label %bb.ah

bb.af:                                            ; preds = %bb.y
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ag:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ah:                                            ; preds = %bb.ae
  invoke void @_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EE3popEv(ptr noundef nonnull align 8 dereferenceable(25) %18)
          to label %bb.ai unwind label %bb.aj, !noalias !861

bb.ai:                                            ; preds = %bb.ah
  %i.eq = sext i32 %i.ek to i64
  %i.er = load ptr, ptr %i.dv, align 8, !tbaa !96, !noalias !887
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eq
  %i.et = load i64, ptr %i.es, align 8, !tbaa !99, !noalias !861 ; 2 uses
  %i.eu = load ptr, ptr %i.dw, align 8, !tbaa !84, !noalias !887 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !21, !noalias !861
  %i.ew = sext i32 %i.ev to i64
  %i.ex = add i64 %i.et, %i.ew                    ; 4 uses
  %i.ey = getelementptr i8, ptr %i.eu, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !21, !noalias !861
  %i.fa = sext i32 %i.ez to i64
  %i.fb = add i64 %i.et, %i.fa                    ; 3 uses
  %i.fc = icmp ult i64 %i.ex, %i.fb
  br i1 %i.fc, label %.lr.ph.i.i.i, label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20, !noalias !885
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20, !noalias !885
  br label %._crit_edge127.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ai
  %i.fd = load ptr, ptr %i.dx, align 8, !tbaa !154, !noalias !887
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.fe = landingpad { ptr, i32 }
          cleanup
  store i64 %i.eh, ptr %i.eg, align 8
  br label %bb.ax

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i.i.i
  %.050113.i.i.i = phi i64 [ %i.ex, %.lr.ph.i.i.i ], [ %i.fl, %bb.al ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %.050113.i.i.i
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !21, !noalias !861 ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, -1
  br i1 %i.fh, label %bb.al, label %._crit_edge.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.fi = zext nneg i32 %i.fg to i64
  %i.fj = load ptr, ptr %i.dl, align 8, !tbaa !219, !noalias !885
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fi
  call void @llvm.prefetch.p0(ptr nonnull %i.fk, i32 0, i32 2, i32 1), !noalias !861
  %i.fl = add nuw i64 %.050113.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.fl, %i.fb
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.ak, !llvm.loop !888

._crit_edge.i.i.i:                                ; preds = %bb.al, %bb.ak
  %.051.lcssa.i.i.i = phi i64 [ %.050113.i.i.i, %bb.ak ], [ %i.fb, %bb.al ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20, !noalias !885
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20, !noalias !885
  store ptr %25, ptr %19, align 8, !tbaa !783, !noalias !885
  store ptr %i.g, ptr %i.dy, align 8, !tbaa !782, !noalias !885
  store ptr %18, ptr %i.dz, align 8, !tbaa !780, !noalias !885
  %i.fm = icmp ult i64 %i.ex, %.051.lcssa.i.i.i
  br i1 %i.fm, label %.lr.ph121.i.outer.i.i, label %._crit_edge127.i.i.i

.preheader89.i.i.i:                               ; preds = %bb.ar
  %.not.i.i = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i, label %._crit_edge127.i.i.i, label %.lr.ph126.preheader.i.i.i

.lr.ph126.preheader.i.i.i:                        ; preds = %.preheader89.i.i.i
  %i.fn = add i32 %i.ga, %.165117.i.ph.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.ga to i64
  br label %.lr.ph126.i.i.i

.lr.ph121.i.i.i:                                  ; preds = %.lr.ph121.i.outer.i.i, %bb.ar
  %.048119.i.i.i = phi i64 [ %i.gp, %bb.ar ], [ %.048119.i.ph.i.i, %.lr.ph121.i.outer.i.i ] ; 3 uses
  %.049118.i.i.i = phi i32 [ %i.ga, %bb.ar ], [ 0, %.lr.ph121.i.outer.i.i ] ; 2 uses
  %i.fo = load ptr, ptr %i.dx, align 8, !tbaa !154, !noalias !887
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.048119.i.i.i
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !21, !noalias !861
  %i.fr = sext i32 %i.fq to i64                   ; 2 uses
  %i.fs = zext nneg i32 %.049118.i.i.i to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.fs
  store i64 %i.fr, ptr %i.ft, align 8, !tbaa !99, !noalias !885
  %i.fu = load ptr, ptr %i.dl, align 8, !tbaa !219, !noalias !885
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fr ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !91, !noalias !861
  %i.fx = load i8, ptr %i.dp, align 8, !tbaa !221, !noalias !885 ; 2 uses
  %i.fy = icmp ne i8 %i.fw, %i.fx                 ; 2 uses
  br i1 %i.fy, label %bb.am, label %_ZN5faiss18VisitedTableVector3setEm.exit78.i.i.i

bb.am:                                            ; preds = %.lr.ph121.i.i.i
  store i8 %i.fx, ptr %i.fv, align 1, !tbaa !91, !noalias !861
  br label %_ZN5faiss18VisitedTableVector3setEm.exit78.i.i.i

_ZN5faiss18VisitedTableVector3setEm.exit78.i.i.i: ; preds = %bb.am, %.lr.ph121.i.i.i
  %i.fz = zext i1 %i.fy to i32
  %i.ga = add nuw nsw i32 %.049118.i.i.i, %i.fz   ; 5 uses
  %i.gb = icmp eq i32 %i.ga, 4
  br i1 %i.gb, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %_ZN5faiss18VisitedTableVector3setEm.exit78.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20, !noalias !885
  %i.gc = load i64, ptr %i.h, align 16, !tbaa !99, !noalias !885 ; 2 uses
  %i.gd = load i64, ptr %i.ea, align 8, !tbaa !99, !noalias !885 ; 2 uses
  %i.ge = load i64, ptr %i.eb, align 16, !tbaa !99, !noalias !885 ; 2 uses
  %i.gf = load i64, ptr %i.ec, align 8, !tbaa !99, !noalias !885 ; 2 uses
  %i.gg = load ptr, ptr %2, align 8, !tbaa !22, !noalias !887
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !861
  invoke void %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.gc, i64 noundef %i.gd, i64 noundef %i.ge, i64 noundef %i.gf, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.ed, ptr noundef nonnull align 4 dereferenceable(4) %i.ee, ptr noundef nonnull align 4 dereferenceable(4) %i.ef)
          to label %.preheader.preheader.i.i.i unwind label %bb.ao, !noalias !861

.preheader.preheader.i.i.i:                       ; preds = %bb.an
  %i.gj = load float, ptr %i.i, align 16, !tbaa !233, !noalias !885
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %i.gc, float noundef %i.gj)
          to label %.preheader.1.i.i.i unwind label %bb.ap, !noalias !861

bb.ao:                                            ; preds = %bb.an
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.preheader.1.i.i.i:                               ; preds = %.preheader.preheader.i.i.i
  %i.gl = load float, ptr %i.ed, align 4, !tbaa !233, !noalias !885
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %i.gd, float noundef %i.gl)
          to label %.preheader.2.i.i.i unwind label %bb.ap, !noalias !861

.preheader.2.i.i.i:                               ; preds = %.preheader.1.i.i.i
  %i.gm = load float, ptr %i.ee, align 8, !tbaa !233, !noalias !885
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %i.ge, float noundef %i.gm)
          to label %.preheader.3.i.i.i unwind label %bb.ap, !noalias !861

.preheader.3.i.i.i:                               ; preds = %.preheader.2.i.i.i
  %i.gn = load float, ptr %i.ef, align 4, !tbaa !233, !noalias !885
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %i.gf, float noundef %i.gn)
          to label %.thread.i.i unwind label %bb.ap, !noalias !861

bb.ap:                                            ; preds = %.preheader.3.i.i.i, %.preheader.2.i.i.i, %.preheader.1.i.i.i, %.preheader.preheader.i.i.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn.i.i.i = phi { ptr, i32 } [ %i.go, %bb.ap ], [ %i.gk, %bb.ao ]
  store i64 %i.eh, ptr %i.eg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20, !noalias !885
  br label %bb.av

bb.ar:                                            ; preds = %_ZN5faiss18VisitedTableVector3setEm.exit78.i.i.i
  %i.gp = add nuw i64 %.048119.i.i.i, 1           ; 2 uses
  %27 = icmp ult i64 %i.gp, %.051.lcssa.i.i.i
  br i1 %27, label %.lr.ph121.i.i.i, label %.preheader89.i.i.i, !llvm.loop !889

.thread.i.i:                                      ; preds = %.preheader.3.i.i.i
  %i.gq = add nsw i32 %.165117.i.ph.i.i, 4        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20, !noalias !885
  %i.gr = add nuw i64 %.048119.i.i.i, 1           ; 2 uses
  %28 = icmp ult i64 %i.gr, %.051.lcssa.i.i.i
  br i1 %28, label %.lr.ph121.i.outer.i.i, label %._crit_edge127.i.i.i, !llvm.loop !889

.lr.ph121.i.outer.i.i:                            ; preds = %._crit_edge.i.i.i, %.thread.i.i
  %.048119.i.ph.i.i = phi i64 [ %i.gr, %.thread.i.i ], [ %i.ex, %._crit_edge.i.i.i ]
  %.165117.i.ph.i.i = phi i32 [ %i.gq, %.thread.i.i ], [ %.064129.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  br label %.lr.ph121.i.i.i

.lr.ph126.i.i.i:                                  ; preds = %bb.at, %.lr.ph126.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph126.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.at ] ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i.i
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !99, !noalias !885 ; 2 uses
  %i.gu = load ptr, ptr %2, align 8, !tbaa !22, !noalias !887
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !861
  %i.gx = invoke noundef float %i.gw(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.gt)
          to label %bb.as unwind label %bb.au, !noalias !861

bb.as:                                            ; preds = %.lr.ph126.i.i.i
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %19, i64 noundef %i.gt, float noundef %i.gx)
          to label %bb.at unwind label %bb.au, !noalias !861

bb.at:                                            ; preds = %bb.as
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond141.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond141.not.i.i.i, label %._crit_edge127.i.i.i, label %.lr.ph126.i.i.i, !llvm.loop !890

bb.au:                                            ; preds = %bb.as, %.lr.ph126.i.i.i
  %i.gy = landingpad { ptr, i32 }
          cleanup
  store i64 %i.eh, ptr %i.eg, align 8
  br label %bb.av

._crit_edge127.i.i.i:                             ; preds = %.thread.i.i, %bb.at, %.preheader89.i.i.i, %._crit_edge.i.i.i, %._crit_edge.thread.i.i.i
  %.367.lcssa.i.i.i = phi i32 [ %.165117.i.ph.i.i, %.preheader89.i.i.i ], [ %.064129.i.i.i, %._crit_edge.thread.i.i.i ], [ %.064129.i.i.i, %._crit_edge.i.i.i ], [ %i.fn, %bb.at ], [ %i.gq, %.thread.i.i ] ; 2 uses
  %i.gz = add i64 %i.eh, 1                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20, !noalias !885
  %i.ha = load ptr, ptr %18, align 8, !tbaa !774, !noalias !885 ; 3 uses
  %i.hb = load ptr, ptr %i.dr, align 8, !tbaa !774, !noalias !885
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %.loopexit.i.loopexit.i.i, label %bb.ae

bb.av:                                            ; preds = %bb.au, %bb.aq
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %bb.aq ], [ %i.gy, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20, !noalias !885
  br label %bb.ax

.thread.i.i.i:                                    ; preds = %bb.ae
  store i64 %i.eh, ptr %i.eg, align 8
  store i64 %i.aw, ptr %0, align 8, !tbaa !506, !alias.scope !861, !noalias !882
  %i.hd = sext i32 %.064129.i.i.i to i64
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hf = add i64 %i.av, %i.hd
  store i64 %i.hf, ptr %i.he, align 8, !tbaa !463, !alias.scope !861, !noalias !882
  br label %bb.aw

.loopexit.i.loopexit.i.i:                         ; preds = %._crit_edge127.i.i.i
  store i64 %i.gz, ptr %i.eg, align 8
  %i.hg = sext i32 %.367.lcssa.i.i.i to i64
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.i.loopexit.i.i, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i.i
  %.064111.ph.i.i.i = phi i64 [ 0, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i.i ], [ %i.hg, %.loopexit.i.loopexit.i.i ]
  %.ph.i.i.i = phi ptr [ %i.ds, %_ZN5faiss18VisitedTableVector3setEm.exit.i.i.i ], [ %i.ha, %.loopexit.i.loopexit.i.i ] ; 2 uses
  store i64 %i.aw, ptr %0, align 8, !tbaa !506, !alias.scope !861, !noalias !882
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.au, ptr %i.hh, align 8, !tbaa !516, !alias.scope !861, !noalias !882
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hj = add i64 %.064111.ph.i.i.i, %i.av
  store i64 %i.hj, ptr %i.hi, align 8, !tbaa !463, !alias.scope !861, !noalias !882
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.ph.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit.i, label %bb.aw

bb.aw:                                            ; preds = %.loopexit.i.i.i, %.thread.i.i.i
  %i.hk = phi ptr [ %.pr.i.i.i, %.thread.i.i.i ], [ %.ph.i.i.i, %.loopexit.i.i.i ] ; 2 uses
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !787, !noalias !885
  %i.ho = ptrtoint ptr %i.hn to i64
  %i.hp = sub i64 %i.ho, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef %i.hp) #33, !noalias !861
  br label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit.i

bb.ax:                                            ; preds = %bb.av, %bb.aj, %bb.ag
  %.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.ep, %bb.ag ], [ %i.fe, %bb.aj ], [ %.pn.pn.i.i.i, %bb.av ]
  %i.hq = load ptr, ptr %18, align 8, !tbaa !788, !noalias !885 ; 3 uses
  %.not.i.i.i.i79.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i79.i.i.i, label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EED2Ev.exit80.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hr = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !787, !noalias !885
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = ptrtoint ptr %i.hq to i64
  %i.hv = sub i64 %i.ht, %i.hu
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef %i.hv) #33, !noalias !861
  br label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EED2Ev.exit80.i.i.i

_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EED2Ev.exit80.i.i.i: ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20, !noalias !885
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EED2Ev.exit80.i.i.i, %bb.af
  %.pn.pn.pn.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.i.i, %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EED2Ev.exit80.i.i.i ], [ %i.eo, %bb.af ]
  %i.hw = load ptr, ptr %25, align 8, !tbaa !788, !alias.scope !886, !noalias !861 ; 3 uses
  %.not.i.i.i.i81.i.i.i = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i81.i.i.i, label %.body.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hx = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !787, !alias.scope !886, !noalias !861
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hw to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef %i.ib) #33, !noalias !861
  br label %.body.i

_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit.i: ; preds = %bb.aw, %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20, !noalias !885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !881
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20, !noalias !881
  %i.ic = load ptr, ptr %25, align 8, !tbaa !788, !noalias !861
  %i.id = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !777, !noalias !861
  %i.if = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !787, !noalias !861
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20, !noalias !861
  br label %bb.cl

.body.i:                                          ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20, !noalias !861
  br label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit102.i

bb.bb:                                            ; preds = %bb.x
  %i.ih = icmp eq ptr %i.de, getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5faiss15VisitedTableSetE, i64 16)
  br i1 %i.ih, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void @__cxa_bad_cast() #31
          to label %bb.bd unwind label %bb.be, !noalias !861

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit102.i

bb.bf:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20, !noalias !861
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20, !noalias !894
  %i.ij = load float, ptr %i.k, align 4, !tbaa !233, !noalias !894
  store float %i.ij, ptr %17, align 4, !tbaa !776, !noalias !894
  %i.ik = getelementptr inbounds nuw i8, ptr %17, i64 4 ; 2 uses
  %i.il = load i32, ptr %i.j, align 4, !tbaa !21, !noalias !894
  store i32 %i.il, ptr %i.ik, align 4, !tbaa !772, !noalias !894
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !894
  store i32 %.sroa.speculated.i, ptr %i.d, align 4, !tbaa !21, !noalias !898
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %26, i8 0, i64 24, i1 false), !alias.scope !899, !noalias !861
  %i.im = sext i32 %.sroa.speculated.i to i64     ; 2 uses
  invoke fastcc void @_ZN5faiss12_GLOBAL__N_120reservePriorityQueueISt4pairIfiESt6vectorIS3_SaIS3_EESt7greaterIS3_EEEvRSt14priority_queueIT_T0_T1_Em(ptr noundef nonnull align 8 dereferenceable(25) %26, i64 noundef %i.im)
          to label %bb.bg unwind label %bb.bl, !noalias !861

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20, !noalias !898
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %15, i8 0, i64 24, i1 false), !noalias !898
  invoke fastcc void @_ZN5faiss12_GLOBAL__N_120reservePriorityQueueISt4pairIfiESt6vectorIS3_SaIS3_EESt4lessIS3_EEEvRSt14priority_queueIT_T0_T1_Em(ptr noundef nonnull align 8 dereferenceable(25) %15, i64 noundef %i.im)
          to label %bb.bh unwind label %bb.bm, !noalias !861

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %26, ptr noundef nonnull align 4 dereferenceable(8) %17)
          to label %bb.bi unwind label %bb.bm, !noalias !861

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %15, ptr noundef nonnull align 4 dereferenceable(8) %17)
          to label %bb.bj unwind label %bb.bm, !noalias !861

bb.bj:                                            ; preds = %bb.bi
  %i.in = load i32, ptr %i.ik, align 4, !tbaa !772, !noalias !898
  %i.io = sext i32 %i.in to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !898
  store i64 %i.io, ptr %i.c, align 8, !tbaa !99, !noalias !898
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20, !noalias !898
  store ptr %i.ip, ptr %14, align 8, !tbaa !243, !noalias !898
  %i.iq = invoke { ptr, i8 } @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.ip, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %_ZN5faiss15VisitedTableSet3setEm.exit.i.i.i unwind label %bb.bm, !noalias !861 ; 0 uses

_ZN5faiss15VisitedTableSet3setEm.exit.i.i.i:      ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20, !noalias !898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !898
  %i.ir = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.is = load ptr, ptr %15, align 8, !tbaa !774, !noalias !898 ; 3 uses
  %i.it = load ptr, ptr %i.ir, align 8, !tbaa !774, !noalias !898
  %i.iu = icmp eq ptr %i.is, %i.it
  br i1 %i.iu, label %.loopexit192.i.i.i, label %.lr.ph148.i.i.i

end_hunk_4
begin_hunk_5_@_ZNK5faiss4HNSW6searchERNS_16DistanceComputerEPKNS_9IndexHNSWERNS_22ResultHandlerUnorderedIflEERNS_12VisitedTableEPKNS_16SearchParametersE:bb.a
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !21, !noalias !861
  %i.kd = sext i32 %i.kc to i64
  %i.ke = add i64 %i.jw, %i.kd                    ; 3 uses
  %i.kf = icmp ult i64 %i.ka, %i.ke
  br i1 %i.kf, label %.lr.ph.i.i72.i, label %._crit_edge.thread.i.i68.i

._crit_edge.thread.i.i68.i:                       ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20, !noalias !898
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20, !noalias !898
  br label %._crit_edge145.i.i.i

.lr.ph.i.i72.i:                                   ; preds = %bb.bo
  %i.kg = load ptr, ptr %i.ix, align 8, !tbaa !154, !noalias !900
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.kh = landingpad { ptr, i32 }
          cleanup
  store i64 %i.jk, ptr %i.jj, align 8
  br label %bb.ch

bb.bq:                                            ; preds = %bb.br, %.lr.ph.i.i72.i
  %.050131.i.i.i = phi i64 [ %i.ka, %.lr.ph.i.i72.i ], [ %i.kl, %bb.br ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %.050131.i.i.i
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !21, !noalias !861
  %i.kk = icmp sgt i32 %i.kj, -1
  br i1 %i.kk, label %bb.br, label %._crit_edge.i.i73.i

bb.br:                                            ; preds = %bb.bq
  %i.kl = add nuw i64 %.050131.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i87.i = icmp eq i64 %i.kl, %i.ke
  br i1 %exitcond.not.i.i87.i, label %._crit_edge.i.i73.i, label %bb.bq, !llvm.loop !901

._crit_edge.i.i73.i:                              ; preds = %bb.br, %bb.bq
  %.051.lcssa.i.i74.i = phi i64 [ %.050131.i.i.i, %bb.bq ], [ %i.ke, %bb.br ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20, !noalias !898
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20, !noalias !898
  store ptr %26, ptr %16, align 8, !tbaa !783, !noalias !898
  store ptr %i.d, ptr %i.iy, align 8, !tbaa !782, !noalias !898
  store ptr %15, ptr %i.iz, align 8, !tbaa !780, !noalias !898
  %i.km = icmp ult i64 %i.ka, %.051.lcssa.i.i74.i
  br i1 %i.km, label %.lr.ph139.i.outer.i.i, label %._crit_edge145.i.i.i

.preheader95.i.i.i:                               ; preds = %bb.cc
  %.not.i77.i = icmp eq i32 %i.lu, 0
  br i1 %.not.i77.i, label %._crit_edge145.i.i.i, label %.lr.ph144.preheader.i.i.i

.lr.ph144.preheader.i.i.i:                        ; preds = %.preheader95.i.i.i
  %i.kn = add i32 %i.lu, %.165135.i.ph.i.i
  %wide.trip.count.i.i78.i = zext nneg i32 %i.lu to i64
  br label %.lr.ph144.i.i.i

.lr.ph139.i.i.i:                                  ; preds = %.lr.ph139.i.outer.i.i, %bb.cc
  %.048137.i.i.i = phi i64 [ %i.mk, %bb.cc ], [ %.048137.i.ph.i.i, %.lr.ph139.i.outer.i.i ] ; 3 uses
  %.049136.i.i.i = phi i32 [ %i.lu, %bb.cc ], [ 0, %.lr.ph139.i.outer.i.i ] ; 2 uses
  %i.ko = load ptr, ptr %i.ix, align 8, !tbaa !154, !noalias !900
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %.048137.i.i.i
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !21, !noalias !861
  %i.kr = sext i32 %i.kq to i64                   ; 8 uses
  %i.ks = zext nneg i32 %.049136.i.i.i to i64
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.ks
  store i64 %i.kr, ptr %i.kt, align 8, !tbaa !99, !noalias !898
  %i.ku = load i64, ptr %i.ja, align 8, !tbaa !292, !noalias !898
  %.not.not.i.i.i.i = icmp eq i64 %i.ku, 0
  br i1 %.not.not.i.i.i.i, label %.preheader151.i.i.i, label %.thread35.i.i.i.i

.thread35.i.i.i.i:                                ; preds = %.lr.ph139.i.i.i
  %i.kv = load i64, ptr %i.jb, align 8, !tbaa !251, !noalias !898 ; 2 uses
  %i.kw = urem i64 %i.kr, %i.kv                   ; 5 uses
  %i.kx = load ptr, ptr %i.ip, align 8, !tbaa !250, !noalias !898
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.kw
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !165, !noalias !861 ; 2 uses
  %.not.i.i.i.i.i75.i = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i.i.i75.i, label %.critedge.i.i.i.i, label %bb.bu

.preheader151.i.i.i:                              ; preds = %.lr.ph139.i.i.i, %bb.bs
  %.sroa.028.0.in.i.i.i.i = phi ptr [ %.sroa.028.0.i.i.i.i, %bb.bs ], [ %i.jc, %.lr.ph139.i.i.i ]
  %.sroa.028.0.i.i.i.i = load ptr, ptr %.sroa.028.0.in.i.i.i.i, align 8, !tbaa !166, !noalias !861 ; 3 uses
  %i.la = icmp eq ptr %.sroa.028.0.i.i.i.i, null
  br i1 %i.la, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.preheader151.i.i.i
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.028.0.i.i.i.i, i64 8
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !99, !noalias !861
  %i.ld = icmp eq i64 %i.lc, %i.kr
  br i1 %i.ld, label %.loopexit.i.i76.i, label %.preheader151.i.i.i, !llvm.loop !339

bb.bt:                                            ; preds = %.preheader151.i.i.i
  %i.le = load i64, ptr %i.jb, align 8, !tbaa !251, !noalias !898
  %i.lf = urem i64 %i.kr, %i.le
  br label %.critedge.i.i.i.i

bb.bu:                                            ; preds = %.thread35.i.i.i.i
  %i.lg = load ptr, ptr %i.kz, align 8, !tbaa !166, !noalias !861 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.li = load i64, ptr %i.lh, align 8, !tbaa !99, !noalias !861
  %i.lj = icmp eq i64 %i.li, %i.kr
  br i1 %i.lj, label %.loopexit.i.i76.i, label %.lr.ph.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.bw
  %i.lk = icmp eq i64 %i.ln, %i.kr
  br i1 %i.lk, label %.loopexit.i.i76.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !340

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bu, %bb.bv
  %.020.i.i.i.i.i.i = phi ptr [ %i.ll, %bb.bv ], [ %i.lg, %bb.bu ]
  %i.ll = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !166, !noalias !861 ; 3 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.ll, null
  br i1 %.not18.i.i.i.i.i.i, label %.critedge.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !99, !noalias !861 ; 2 uses
  %i.lo = urem i64 %i.ln, %i.kv
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.lo, %i.kw
  br i1 %.not19.i.i.i.i.i.i, label %bb.bv, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !340

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.bw
  br label %.critedge.i.i.i.i, !llvm.loop !340

.critedge.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.bt, %.thread35.i.i.i.i
  %i.lp = phi i64 [ %i.lf, %bb.bt ], [ %i.kw, %.thread35.i.i.i.i ], [ %i.kw, %..loopexit_crit_edge21.i.i.i.i.i.i ], [ %i.kw, %.lr.ph.i.i.i.i.i.i ]
  %i.lq = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #32
          to label %.noexc.i.i.i unwind label %bb.by, !noalias !861 ; 4 uses

.noexc.i.i.i:                                     ; preds = %.critedge.i.i.i.i
  store ptr null, ptr %i.lq, align 8, !tbaa !166, !noalias !861
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store i64 %i.kr, ptr %i.lr, align 8, !tbaa !99, !noalias !861
  %i.ls = invoke ptr @_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeImLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %i.ip, i64 noundef %i.lp, i64 noundef %i.kr, ptr noundef nonnull %i.lq, i64 noundef 1)
          to label %.loopexit.i.i76.i unwind label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.i.i.i, !noalias !861 ; 0 uses

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.i.i.i: ; preds = %.noexc.i.i.i
  %i.lt = landingpad { ptr, i32 }
          cleanup
  store i64 %i.jk, ptr %i.jj, align 8
  call void @_ZdlPvm(ptr noundef nonnull %i.lq, i64 noundef 16) #33, !noalias !861
  br label %.body.i.i.i

.loopexit.i.i76.i:                                ; preds = %bb.bv, %bb.bs, %.noexc.i.i.i, %bb.bu
  %.sroa.432.1.i.i.i.i = phi i32 [ 0, %bb.bs ], [ 1, %.noexc.i.i.i ], [ 0, %bb.bu ], [ 0, %bb.bv ]
  %i.lu = add nuw nsw i32 %.sroa.432.1.i.i.i.i, %.049136.i.i.i ; 5 uses
  %i.lv = icmp eq i32 %i.lu, 4
  br i1 %i.lv, label %bb.bx, label %bb.cc

bb.bx:                                            ; preds = %.loopexit.i.i76.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20, !noalias !898
  %i.lw = load i64, ptr %i.e, align 16, !tbaa !99, !noalias !898 ; 2 uses
  %i.lx = load i64, ptr %i.jd, align 8, !tbaa !99, !noalias !898 ; 2 uses
  %i.ly = load i64, ptr %i.je, align 16, !tbaa !99, !noalias !898 ; 2 uses
  %i.lz = load i64, ptr %i.jf, align 8, !tbaa !99, !noalias !898 ; 2 uses
  %i.ma = load ptr, ptr %2, align 8, !tbaa !22, !noalias !900
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mc = load ptr, ptr %i.mb, align 8, !noalias !861
  invoke void %i.mc(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.lw, i64 noundef %i.lx, i64 noundef %i.ly, i64 noundef %i.lz, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.jg, ptr noundef nonnull align 4 dereferenceable(4) %i.jh, ptr noundef nonnull align 4 dereferenceable(4) %i.ji)
          to label %.preheader.preheader.i.i82.i unwind label %bb.bz, !noalias !861

.preheader.preheader.i.i82.i:                     ; preds = %bb.bx
  %i.md = load float, ptr %i.f, align 16, !tbaa !233, !noalias !898
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_15VisitedTableSetENS_4CMinIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %i.lw, float noundef %i.md)
          to label %.preheader.1.i.i83.i unwind label %bb.ca, !noalias !861

bb.by:                                            ; preds = %.critedge.i.i.i.i
  %i.me = landingpad { ptr, i32 }
          cleanup
  store i64 %i.jk, ptr %i.jj, align 8
  br label %.body.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.mf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.preheader.1.i.i83.i:                             ; preds = %.preheader.preheader.i.i82.i
  %i.mg = load float, ptr %i.jg, align 4, !tbaa !233, !noalias !898
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_15VisitedTableSetENS_4CMinIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %i.lx, float noundef %i.mg)
          to label %.preheader.2.i.i84.i unwind label %bb.ca, !noalias !861

.preheader.2.i.i84.i:                             ; preds = %.preheader.1.i.i83.i
  %i.mh = load float, ptr %i.jh, align 8, !tbaa !233, !noalias !898
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_15VisitedTableSetENS_4CMinIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %i.ly, float noundef %i.mh)
          to label %.preheader.3.i.i85.i unwind label %bb.ca, !noalias !861

.preheader.3.i.i85.i:                             ; preds = %.preheader.2.i.i84.i
  %i.mi = load float, ptr %i.ji, align 4, !tbaa !233, !noalias !898
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_15VisitedTableSetENS_4CMinIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %i.lz, float noundef %i.mi)
          to label %.thread.i86.i unwind label %bb.ca, !noalias !861

bb.ca:                                            ; preds = %.preheader.3.i.i85.i, %.preheader.2.i.i84.i, %.preheader.1.i.i83.i, %.preheader.preheader.i.i82.i
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pn.i.i81.i = phi { ptr, i32 } [ %i.mj, %bb.ca ], [ %i.mf, %bb.bz ]
  store i64 %i.jk, ptr %i.jj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20, !noalias !898
  br label %.body.i.i.i

bb.cc:                                            ; preds = %.loopexit.i.i76.i
  %i.mk = add nuw i64 %.048137.i.i.i, 1           ; 2 uses
  %29 = icmp ult i64 %i.mk, %.051.lcssa.i.i74.i
  br i1 %29, label %.lr.ph139.i.i.i, label %.preheader95.i.i.i, !llvm.loop !902

.thread.i86.i:                                    ; preds = %.preheader.3.i.i85.i
  %i.ml = add nsw i32 %.165135.i.ph.i.i, 4        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20, !noalias !898
  %i.mm = add nuw i64 %.048137.i.i.i, 1           ; 2 uses
  %30 = icmp ult i64 %i.mm, %.051.lcssa.i.i74.i
  br i1 %30, label %.lr.ph139.i.outer.i.i, label %._crit_edge145.i.i.i, !llvm.loop !902

.lr.ph139.i.outer.i.i:                            ; preds = %._crit_edge.i.i73.i, %.thread.i86.i
  %.048137.i.ph.i.i = phi i64 [ %i.mm, %.thread.i86.i ], [ %i.ka, %._crit_edge.i.i73.i ]
  %.165135.i.ph.i.i = phi i32 [ %i.ml, %.thread.i86.i ], [ %.064147.i.i.i, %._crit_edge.i.i73.i ] ; 3 uses
  br label %.lr.ph139.i.i.i

.lr.ph144.i.i.i:                                  ; preds = %bb.ce, %.lr.ph144.preheader.i.i.i
  %indvars.iv.i.i79.i = phi i64 [ 0, %.lr.ph144.preheader.i.i.i ], [ %indvars.iv.next.i.i80.i, %bb.ce ] ; 2 uses
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i79.i
  %i.mo = load i64, ptr %i.mn, align 8, !tbaa !99, !noalias !898 ; 2 uses
  %i.mp = load ptr, ptr %2, align 8, !tbaa !22, !noalias !900
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %i.mr = load ptr, ptr %i.mq, align 8, !noalias !861
  %i.ms = invoke noundef float %i.mr(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.mo)
          to label %bb.cd unwind label %bb.cf, !noalias !861

bb.cd:                                            ; preds = %.lr.ph144.i.i.i
  invoke fastcc void @_ZZN5faiss12_GLOBAL__N_137search_from_candidate_unbounded_fixVTINS_15VisitedTableSetENS_4CMinIflEEEENSt11conditionalIXsrT0_6is_maxESt14priority_queueISt4pairIfiESt6vectorIS9_SaIS9_EESt4lessIS9_EES7_IS9_SC_St7greaterIS9_EEE4typeERKNS_4HNSWERKS9_RNS_16DistanceComputerEiRT_RNS_9HNSWStatsEENKUlmfE_clEmf(ptr noundef nonnull align 8 dereferenceable(24) %16, i64 noundef %i.mo, float noundef %i.ms)
          to label %bb.ce unwind label %bb.cf, !noalias !861

bb.ce:                                            ; preds = %bb.cd
  %indvars.iv.next.i.i80.i = add nuw nsw i64 %indvars.iv.i.i79.i, 1 ; 2 uses
  %exitcond164.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i80.i, %wide.trip.count.i.i78.i
  br i1 %exitcond164.not.i.i.i, label %._crit_edge145.i.i.i, label %.lr.ph144.i.i.i, !llvm.loop !903

bb.cf:                                            ; preds = %bb.cd, %.lr.ph144.i.i.i
  %i.mt = landingpad { ptr, i32 }
          cleanup
  store i64 %i.jk, ptr %i.jj, align 8
  br label %.body.i.i.i

._crit_edge145.i.i.i:                             ; preds = %.thread.i86.i, %bb.ce, %.preheader95.i.i.i, %._crit_edge.i.i73.i, %._crit_edge.thread.i.i68.i
  %.367.lcssa.i.i69.i = phi i32 [ %.165135.i.ph.i.i, %.preheader95.i.i.i ], [ %.064147.i.i.i, %._crit_edge.thread.i.i68.i ], [ %.064147.i.i.i, %._crit_edge.i.i73.i ], [ %i.kn, %bb.ce ], [ %i.ml, %.thread.i86.i ] ; 2 uses
  %i.mu = add i64 %i.jk, 1                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20, !noalias !898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20, !noalias !898
  %i.mv = load ptr, ptr %15, align 8, !tbaa !774, !noalias !898 ; 3 uses
  %i.mw = load ptr, ptr %i.ir, align 8, !tbaa !774, !noalias !898
  %i.mx = icmp eq ptr %i.mv, %i.mw
  br i1 %i.mx, label %.loopexit192.i.loopexit.i.i, label %bb.bk

.body.i.i.i:                                      ; preds = %bb.cf, %bb.cb, %bb.by, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.i.i.i
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %i.mt, %bb.cf ], [ %.pn.i.i81.i, %bb.cb ], [ %i.me, %bb.by ], [ %i.lt, %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20, !noalias !898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20, !noalias !898
  br label %bb.ch

.thread.i.i88.i:                                  ; preds = %bb.bk
  store i64 %i.jk, ptr %i.jj, align 8
  store i64 %i.aw, ptr %0, align 8, !tbaa !506, !alias.scope !861, !noalias !895
  %i.my = sext i32 %.064147.i.i.i to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.na = add i64 %i.av, %i.my
  store i64 %i.na, ptr %i.mz, align 8, !tbaa !463, !alias.scope !861, !noalias !895
  br label %bb.cg

.loopexit192.i.loopexit.i.i:                      ; preds = %._crit_edge145.i.i.i
  store i64 %i.mu, ptr %i.jj, align 8
  %i.nb = sext i32 %.367.lcssa.i.i69.i to i64
  br label %.loopexit192.i.i.i

.loopexit192.i.i.i:                               ; preds = %.loopexit192.i.loopexit.i.i, %_ZN5faiss15VisitedTableSet3setEm.exit.i.i.i
  %.064129.ph.i.i.i = phi i64 [ 0, %_ZN5faiss15VisitedTableSet3setEm.exit.i.i.i ], [ %i.nb, %.loopexit192.i.loopexit.i.i ]
  %.ph.i.i70.i = phi ptr [ %i.is, %_ZN5faiss15VisitedTableSet3setEm.exit.i.i.i ], [ %i.mv, %.loopexit192.i.loopexit.i.i ] ; 2 uses
  store i64 %i.aw, ptr %0, align 8, !tbaa !506, !alias.scope !861, !noalias !895
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.au, ptr %i.nc, align 8, !tbaa !516, !alias.scope !861, !noalias !895
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ne = add i64 %.064129.ph.i.i.i, %i.av
  store i64 %i.ne, ptr %i.nd, align 8, !tbaa !463, !alias.scope !861, !noalias !895
  %.not.i.i.i.i.i.i71.i = icmp eq ptr %.ph.i.i70.i, null
  br i1 %.not.i.i.i.i.i.i71.i, label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit94.i, label %bb.cg

bb.cg:                                            ; preds = %.loopexit192.i.i.i, %.thread.i.i88.i
  %i.nf = phi ptr [ %.pr.i.i67.i, %.thread.i.i88.i ], [ %.ph.i.i70.i, %.loopexit192.i.i.i ] ; 2 uses
  %i.ng = ptrtoint ptr %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !787, !noalias !898
  %i.nj = ptrtoint ptr %i.ni to i64
  %i.nk = sub i64 %i.nj, %i.ng
  call void @_ZdlPvm(ptr noundef nonnull %i.nf, i64 noundef %i.nk) #33, !noalias !861
  br label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit94.i

bb.ch:                                            ; preds = %.body.i.i.i, %bb.bp, %bb.bm
  %.pn.pn.pn.pn.pn.i.i66.i = phi { ptr, i32 } [ %i.js, %bb.bm ], [ %.pn.pn.pn.i.i.i, %.body.i.i.i ], [ %i.kh, %bb.bp ]
  %i.nl = load ptr, ptr %15, align 8, !tbaa !788, !noalias !898 ; 3 uses
  %.not.i.i.i.i80.i.i.i = icmp eq ptr %i.nl, null
  br i1 %.not.i.i.i.i80.i.i.i, label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EED2Ev.exit81.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nm = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !787, !noalias !898
  %i.no = ptrtoint ptr %i.nn to i64
  %i.np = ptrtoint ptr %i.nl to i64
  %i.nq = sub i64 %i.no, %i.np
  call void @_ZdlPvm(ptr noundef nonnull %i.nl, i64 noundef %i.nq) #33, !noalias !861
  br label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EED2Ev.exit81.i.i.i

_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EED2Ev.exit81.i.i.i: ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20, !noalias !898
  br label %bb.cj

bb.cj:                                            ; preds = %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EED2Ev.exit81.i.i.i, %bb.bl
  %.pn.pn.pn.pn.pn.pn.i.i64.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.i66.i, %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt4lessIS1_EED2Ev.exit81.i.i.i ], [ %i.jr, %bb.bl ]
  %i.nr = load ptr, ptr %26, align 8, !tbaa !788, !alias.scope !899, !noalias !861 ; 3 uses
  %.not.i.i.i.i82.i.i.i = icmp eq ptr %i.nr, null
  br i1 %.not.i.i.i.i82.i.i.i, label %.body89.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ns = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !787, !alias.scope !899, !noalias !861
  %i.nu = ptrtoint ptr %i.nt to i64
  %i.nv = ptrtoint ptr %i.nr to i64
  %i.nw = sub i64 %i.nu, %i.nv
  call void @_ZdlPvm(ptr noundef nonnull %i.nr, i64 noundef %i.nw) #33, !noalias !861
  br label %.body89.i

_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit94.i: ; preds = %bb.cg, %.loopexit192.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20, !noalias !898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !894
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20, !noalias !894
  %i.nx = load ptr, ptr %26, align 8, !tbaa !788, !noalias !861
  %i.ny = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !777, !noalias !861
  %i.oa = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !787, !noalias !861
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20, !noalias !861
  br label %bb.cl

.body89.i:                                        ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20, !noalias !861
  br label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit102.i

bb.cl:                                            ; preds = %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit94.i, %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit.i
  %.sroa.01.0.i = phi ptr [ %i.nx, %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit94.i ], [ %i.ic, %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit.i ] ; 13 uses
  %.sroa.15.0.i = phi ptr [ %i.nz, %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit94.i ], [ %i.ie, %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit.i ] ; 3 uses
  %.sroa.25.0.i = phi ptr [ %i.ob, %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit94.i ], [ %i.ig, %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EED2Ev.exit.i ] ; 2 uses
  %i.oc = ptrtoint ptr %.sroa.01.0.i to i64       ; 7 uses
  %i.od = sext i32 %spec.select.i.i to i64        ; 2 uses
  %i.oe = ptrtoint ptr %.sroa.15.0.i to i64
  %i.of = sub i64 %i.oe, %i.oc                    ; 2 uses
  %i.og = ashr exact i64 %i.of, 3
  %i.oh = icmp ugt i64 %i.og, %i.od
  br i1 %i.oh, label %.lr.ph94.i, label %.preheader.i

.lr.ph94.i:                                       ; preds = %bb.cl
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 4
  br label %bb.cm

.preheader.i:                                     ; preds = %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EE3popEv.exit.i, %bb.cl
  %.sroa.15.1.lcssa.i = phi ptr [ %.sroa.15.0.i, %bb.cl ], [ %i.ou, %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EE3popEv.exit.i ] ; 2 uses
  %i.oj = icmp eq ptr %.sroa.01.0.i, %.sroa.15.1.lcssa.i
  br i1 %i.oj, label %._crit_edge98.i, label %.lr.ph97.i

.lr.ph97.i:                                       ; preds = %.preheader.i
  %i.ok = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 4 ; 2 uses
  br label %bb.cp

bb.cm:                                            ; preds = %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EE3popEv.exit.i, %.lr.ph94.i
  %i.ol = phi i64 [ %i.of, %.lr.ph94.i ], [ %i.ow, %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EE3popEv.exit.i ]
  %.sroa.15.192.i = phi ptr [ %.sroa.15.0.i, %.lr.ph94.i ], [ %i.ou, %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EE3popEv.exit.i ] ; 3 uses
  %i.om = icmp sgt i64 %i.ol, 8
  br i1 %i.om, label %bb.cn, label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EE3popEv.exit.i

bb.cn:                                            ; preds = %bb.cm
  %i.on = getelementptr inbounds i8, ptr %.sroa.15.192.i, i64 -8 ; 3 uses
  %.sroa.03.0.copyload.i.i.i.i = load i64, ptr %i.on, align 4, !noalias !861
  %i.oo = load float, ptr %.sroa.01.0.i, align 4, !tbaa !233, !noalias !861
  store float %i.oo, ptr %i.on, align 4, !tbaa !776, !noalias !861
  %i.op = load i32, ptr %i.oi, align 4, !tbaa !21, !noalias !861
  %i.oq = getelementptr inbounds i8, ptr %.sroa.15.192.i, i64 -4
  store i32 %i.op, ptr %i.oq, align 4, !tbaa !772, !noalias !861
  %i.or = ptrtoint ptr %i.on to i64
  %i.os = sub i64 %i.or, %i.oc
  %i.ot = ashr exact i64 %i.os, 3
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIfiESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt7greaterIS3_EEEEvT_T0_SF_T1_T2_(ptr nonnull %.sroa.01.0.i, i64 noundef 0, i64 noundef %i.ot, i64 %.sroa.03.0.copyload.i.i.i.i)
          to label %_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EE3popEv.exit.i unwind label %bb.co, !noalias !861

_ZNSt14priority_queueISt4pairIfiESt6vectorIS1_SaIS1_EESt7greaterIS1_EE3popEv.exit.i: ; preds = %bb.cm, %bb.cn
  %i.ou = getelementptr inbounds i8, ptr %.sroa.15.192.i, i64 -8 ; 3 uses
  %i.ov = ptrtoint ptr %i.ou to i64
  %i.ow = sub i64 %i.ov, %i.oc                    ; 2 uses
  %i.ox = ashr exact i64 %i.ow, 3
  %i.oy = icmp ugt i64 %i.ox, %i.od
  br i1 %i.oy, label %bb.cm, label %.preheader.i

bb.co:                                            ; preds = %bb.cn
  %i.oz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cp:                                            ; preds = %bb.cs, %.lr.ph97.i
  %.sroa.15.296.i = phi ptr [ %.sroa.15.1.lcssa.i, %.lr.ph97.i ], [ %i.pq, %bb.cs ] ; 4 uses
  %i.pa = load float, ptr %.sroa.01.0.i, align 4, !tbaa !776, !noalias !861
  %i.pb = load i32, ptr %i.ok, align 4, !tbaa !772, !noalias !861
  %i.pc = sext i32 %i.pb to i64
  %i.pd = load ptr, ptr %4, align 8, !tbaa !22, !noalias !861
  %i.pe = load ptr, ptr %i.pd, align 8, !noalias !861
  %i.pf = invoke noundef zeroext i1 %i.pe(ptr noundef nonnull align 8 dereferenceable(32) %4, float noundef %i.pa, i64 noundef %i.pc)
          to label %bb.cq unwind label %bb.ct, !noalias !861 ; 0 uses
end_hunk_5
begin_hunk_6_@_ZN5faiss12_GLOBAL__N_131search_from_candidates_dispatchINS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT_6is_maxENS_4CMaxIfiEENS2_IfiEEE4typeEEERNS_12VisitedTableERNS_9HNSWStatsEiiPKNS_16SearchParametersE:bb.a
  %i.ft = fcmp olt float %.3172218.i.i, %i.fp
  %or.cond195.i.i = select i1 %i.fs, i1 %i.ft, i1 false
  br i1 %or.cond195.i.i, label %bb.y, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i

bb.x:                                             ; preds = %bb.v
  %.old194.i.i = fcmp olt float %.3172218.i.i, %i.fp
  br i1 %.old194.i.i, label %bb.y, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.fu = load ptr, ptr %2, align 8, !tbaa !22
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = call noundef zeroext i1 %i.fv(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.fp, i64 noundef %i.fn), !inline_history !928
  br i1 %i.fw, label %bb.z, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.fx = load float, ptr %i.bm, align 8, !tbaa !489
  %i.fy = add nsw i32 %.2165219.i.i, 1
  br label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i

_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %.6175.i.i = phi float [ %i.fx, %bb.z ], [ %.3172218.i.i, %bb.y ], [ %.3172218.i.i, %bb.x ], [ %.3172218.i.i, %bb.w ] ; 2 uses
  %.7.i.i = phi i32 [ %i.fy, %bb.z ], [ %.2165219.i.i, %bb.y ], [ %.2165219.i.i, %bb.x ], [ %.2165219.i.i, %bb.w ] ; 3 uses
  %i.fz = trunc i64 %i.fn to i32                  ; 2 uses
  %i.ga = fcmp uno float %i.fp, 0.000000e+00
  %.0.i.i.i = select i1 %i.ga, float f0xFF7FFFFF, float %i.fp ; 4 uses
  %i.gb = load i32, ptr %i.bp, align 4, !tbaa !873 ; 5 uses
  %i.gc = load i32, ptr %3, align 8, !tbaa !871
  %i.gd = icmp eq i32 %i.gb, %i.gc
  %i.ge = load ptr, ptr %i.bq, align 8, !tbaa !492 ; 4 uses
  br i1 %i.gd, label %bb.aa, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i
  %.pre10.i.i.i = load ptr, ptr %.phi.trans.insert9.i.i.i, align 8, !tbaa !84
  br label %bb.ah

bb.aa:                                            ; preds = %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !233
  %i.gg = fcmp olt float %i.gf, %.0.i.i.i
  br i1 %i.gg, label %bb.ab, label %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.gh = load ptr, ptr %.phi.trans.insert9.i.i.i, align 8, !tbaa !84 ; 4 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !21
  %.not.i105.i.i = icmp eq i32 %i.gi, -1
  br i1 %.not.i105.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gj = load i32, ptr %i.bl, align 8, !tbaa !874
  %i.gk = add nsw i32 %i.gj, -1
  store i32 %i.gk, ptr %i.bl, align 8, !tbaa !874
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gl = add nsw i32 %i.gb, -1
  store i32 %i.gl, ptr %i.bp, align 4, !tbaa !873
  %i.gm = sext i32 %i.gb to i64                   ; 4 uses
  %i.gn = getelementptr inbounds i8, ptr %i.ge, i64 -4 ; 4 uses
  %i.go = getelementptr inbounds i8, ptr %i.gh, i64 -4 ; 5 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gm ; 3 uses
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !233 ; 5 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gm ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !21 ; 3 uses
  %i.gt = icmp ult i32 %i.gb, 2
  br i1 %i.gt, label %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ad, %bb.ag
  %i.gu = phi i64 [ %i.hx, %bb.ag ], [ 3, %bb.ad ]
  %i.gv = phi i64 [ %i.hw, %bb.ag ], [ 2, %bb.ad ] ; 7 uses
  %.062.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.ag ], [ 1, %bb.ad ] ; 6 uses
  %i.gw = icmp eq i64 %i.gv, %i.gm
  br i1 %i.gw, label %.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i.i.i.i, label %bb.ae

.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i.i.i.i = load float, ptr %i.gp, align 4, !tbaa !233
  br label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gv
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !233 ; 4 uses
  %i.gz = getelementptr [4 x i8], ptr %i.ge, i64 %i.gv
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !233 ; 5 uses
  %i.hb = getelementptr [4 x i8], ptr %i.gh, i64 %i.gv
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !21 ; 3 uses
  %i.hd = fcmp olt float %i.gy, %i.ha
  br i1 %i.hd, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i.i.i, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i.i.i

_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i.i.i:        ; preds = %bb.ae
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gv
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !21
  %i.hg = fcmp oeq float %i.gy, %i.ha
  %i.hh = icmp slt i32 %i.hf, %i.hc
  %i.hi = and i1 %i.hg, %i.hh
  br i1 %i.hi, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i.i.i, label %bb.af

_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i.i.i: ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i.i.i, %bb.ae, %.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i.i.i.i
  %i.hj = phi float [ %.pre.i.i.i.i, %.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i.i.i.i ], [ %i.gy, %bb.ae ], [ %i.gy, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i.i.i ] ; 3 uses
  %i.hk = fcmp olt float %i.gq, %i.hj
  br i1 %i.hk, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i.i.i

_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i.i.i:      ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i.i.i
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gv
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !21 ; 2 uses
  %i.hn = fcmp oeq float %i.gq, %i.hj
  %i.ho = icmp slt i32 %i.gs, %i.hm
  %i.hp = and i1 %i.hn, %i.ho
  br i1 %i.hp, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i, label %bb.ag

bb.af:                                            ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i.i.i
  %i.hq = fcmp olt float %i.gq, %i.ha
  br i1 %i.hq, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i.i.i

_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i.i.i:      ; preds = %bb.af
  %i.hr = fcmp oeq float %i.gq, %i.ha
  %i.hs = icmp slt i32 %i.gs, %i.hc
  %i.ht = and i1 %i.hr, %i.hs
  br i1 %i.ht, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i.i.i
  %.sink79.i.i.i.i = phi float [ %i.hj, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i.i.i ], [ %i.ha, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i.i.i ]
  %.sink.i.i.i.i = phi i32 [ %i.hm, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i.i.i ], [ %i.hc, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i.i.i ]
  %.1.i.i.i.i = phi i64 [ %i.gv, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i.i.i ], [ %i.gu, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i.i.i ] ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %.062.i.i.i.i
  store float %.sink79.i.i.i.i, ptr %i.hu, align 4, !tbaa !233
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.062.i.i.i.i
  store i32 %.sink.i.i.i.i, ptr %i.hv, align 4, !tbaa !21
  %i.hw = shl i64 %.1.i.i.i.i, 1                  ; 3 uses
  %i.hx = or disjoint i64 %i.hw, 1
  %i.hy = icmp ugt i64 %i.hw, %i.gm
  br i1 %i.hy, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !921

_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i: ; preds = %bb.ag, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i.i.i, %bb.af, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i.i.i
  %.0.lcssa.ph.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.ag ], [ %.062.i.i.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i.i.i ], [ %.062.i.i.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i.i.i ], [ %.062.i.i.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i.i.i ], [ %.062.i.i.i.i, %bb.af ]
  %.pre68.i.i.i.i = load float, ptr %i.gp, align 4, !tbaa !233
  %.pre69.i.i.i.i = load i32, ptr %i.gr, align 4, !tbaa !21
  br label %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i

_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i: ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i, %bb.ad
  %i.hz = phi i32 [ %i.gs, %bb.ad ], [ %.pre69.i.i.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i ]
  %i.ia = phi float [ %i.gq, %bb.ad ], [ %.pre68.i.i.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ 1, %bb.ad ], [ %.0.lcssa.ph.i.i.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %.0.lcssa.i.i.i.i
  store float %i.ia, ptr %i.ib, align 4, !tbaa !233
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.0.lcssa.i.i.i.i
  store i32 %i.hz, ptr %i.ic, align 4, !tbaa !21
  %.pre.i.i.i = load i32, ptr %i.bp, align 4, !tbaa !873
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i, %._crit_edge.i.i.i
  %i.id = phi ptr [ %i.gh, %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i ], [ %.pre10.i.i.i, %._crit_edge.i.i.i ]
  %i.ie = phi i32 [ %.pre.i.i.i, %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i ], [ %i.gb, %._crit_edge.i.i.i ]
  %i.if = add nsw i32 %i.ie, 1                    ; 3 uses
  store i32 %i.if, ptr %i.bp, align 4, !tbaa !873
  %i.ig = sext i32 %i.if to i64                   ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %i.ge, i64 -4 ; 3 uses
  %i.ii = getelementptr inbounds i8, ptr %i.id, i64 -4 ; 3 uses
  %i.ij = icmp ugt i32 %i.if, 1
  br i1 %i.ij, label %.lr.ph.i5.i.i.i, label %_ZN5faiss9heap_pushINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i

.lr.ph.i5.i.i.i:                                  ; preds = %bb.ah, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i.i.i
  %.025.i.i.i.i = phi i64 [ %i.ik, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i.i.i ], [ %i.ig, %bb.ah ] ; 5 uses
  %i.ik = lshr i64 %.025.i.i.i.i, 1               ; 4 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.ik
  %i.im = load float, ptr %i.il, align 4, !tbaa !233 ; 3 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.ik
  %i.io = load i32, ptr %i.in, align 4, !tbaa !21 ; 2 uses
  %i.ip = fcmp olt float %.0.i.i.i, %i.im
  br i1 %i.ip, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i.i.i, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i6.i.i.i

_ZN5faiss4CMinIfiE4cmp2Effii.exit.i6.i.i.i:       ; preds = %.lr.ph.i5.i.i.i
  %i.iq = fcmp oeq float %.0.i.i.i, %i.im
  %i.ir = icmp sgt i32 %i.io, %i.fz
  %i.is = and i1 %i.iq, %i.ir
  br i1 %i.is, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i.i.i, label %_ZN5faiss9heap_pushINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i

_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i.i.i: ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i6.i.i.i, %.lr.ph.i5.i.i.i
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.025.i.i.i.i
  store float %i.im, ptr %i.it, align 4, !tbaa !233
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.025.i.i.i.i
  store i32 %i.io, ptr %i.iu, align 4, !tbaa !21
  %i.iv = icmp ugt i64 %.025.i.i.i.i, 3
  br i1 %i.iv, label %.lr.ph.i5.i.i.i, label %_ZN5faiss9heap_pushINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i, !llvm.loop !922

_ZN5faiss9heap_pushINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i: ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i6.i.i.i, %bb.ah
  %.0.lcssa.i4.i.i.i = phi i64 [ %i.ig, %bb.ah ], [ %.025.i.i.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i6.i.i.i ], [ %i.ik, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i.i.i ] ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.0.lcssa.i4.i.i.i
  store float %.0.i.i.i, ptr %i.iw, align 4, !tbaa !233
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.0.lcssa.i4.i.i.i
  store i32 %i.fz, ptr %i.ix, align 4, !tbaa !21
  %i.iy = load i32, ptr %i.bl, align 8, !tbaa !874
  %i.iz = add nsw i32 %i.iy, 1
  store i32 %i.iz, ptr %i.bl, align 8, !tbaa !874
  br label %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit.i.i

_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit.i.i: ; preds = %_ZN5faiss9heap_pushINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i, %bb.aa
  %i.ja = add nuw nsw i64 %.078220.i.i, 1         ; 2 uses
  %exitcond265.not.i.i = icmp eq i64 %i.ja, 4
  br i1 %exitcond265.not.i.i, label %.thread.i, label %bb.v, !llvm.loop !929

bb.ai:                                            ; preds = %_ZN5faiss18VisitedTableVector3setEm.exit101.i.i
  %i.jb = add nuw i64 %.079224.i.i, 1             ; 2 uses
  %9 = icmp ult i64 %i.jb, %.083.lcssa.i.i
  br i1 %9, label %.lr.ph227.i.i, label %.preheader.i.i, !llvm.loop !930

.thread.i:                                        ; preds = %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit.i.i
  %i.jc = add nsw i32 %.1225.i.ph.i, 4            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.jd = add nuw i64 %.079224.i.i, 1             ; 2 uses
  %10 = icmp ult i64 %i.jd, %.083.lcssa.i.i
  br i1 %10, label %.lr.ph227.i.outer.i, label %._crit_edge237.i.i, !llvm.loop !930

.lr.ph227.i.outer.i:                              ; preds = %.thread.i, %.lr.ph227.i.outer.preheader.i
  %.1225.i.ph.i = phi i32 [ %i.jc, %.thread.i ], [ %.0242.i.i, %.lr.ph227.i.outer.preheader.i ] ; 3 uses
  %.079224.i.ph.i = phi i64 [ %i.jd, %.thread.i ], [ %i.eb, %.lr.ph227.i.outer.preheader.i ]
  %.1164222.i.ph.i = phi i32 [ %.7.i.i, %.thread.i ], [ %.0163240.i.i, %.lr.ph227.i.outer.preheader.i ] ; 3 uses
  %.2171221.i.ph.i = phi float [ %.6175.i.i, %.thread.i ], [ %i.eq, %.lr.ph227.i.outer.preheader.i ] ; 2 uses
  br label %.lr.ph227.i.i

._crit_edge237.loopexit.i.i:                      ; preds = %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit135.i.i
  %i.je = add i32 %i.fd, %.1225.i.ph.i
  br label %._crit_edge237.i.i

._crit_edge237.i.i:                               ; preds = %.thread.i, %._crit_edge237.loopexit.i.i, %.preheader.i.i, %._crit_edge.i.i, %._crit_edge.thread.i.i
  %.4167.lcssa.i.i = phi i32 [ %.1164222.i.ph.i, %.preheader.i.i ], [ %.8.i.i, %._crit_edge237.loopexit.i.i ], [ %.0163240.i.i, %._crit_edge.i.i ], [ %.0163240.i.i, %._crit_edge.thread.i.i ], [ %.7.i.i, %.thread.i ] ; 3 uses
  %.3.lcssa.i.i = phi i32 [ %.1225.i.ph.i, %.preheader.i.i ], [ %i.je, %._crit_edge237.loopexit.i.i ], [ %.0242.i.i, %._crit_edge.i.i ], [ %.0242.i.i, %._crit_edge.thread.i.i ], [ %i.jc, %.thread.i ] ; 3 uses
  %i.jf = add nuw nsw i32 %.090241.i.i, 1         ; 3 uses
  %.not98.i.i = icmp slt i32 %.090241.i.i, %.1153315.i.i
  %or.cond.i.i = select i1 %i.bo, i1 true, i1 %.not98.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  br i1 %or.cond.i.i, label %.thread180.i.i, label %.loopexit.sink.split.i.i

.lr.ph236.i.i:                                    ; preds = %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit135.i.i, %.lr.ph236.preheader.i.i
  %indvars.iv266.i.i = phi i64 [ 0, %.lr.ph236.preheader.i.i ], [ %indvars.iv.next267.i.i, %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit135.i.i ] ; 2 uses
  %.4167233.i.i = phi i32 [ %.1164222.i.ph.i, %.lr.ph236.preheader.i.i ], [ %.8.i.i, %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit135.i.i ] ; 4 uses
  %.5174232.i.i = phi float [ %.2171221.i.ph.i, %.lr.ph236.preheader.i.i ], [ %.7176.i.i, %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit135.i.i ] ; 5 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv266.i.i
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !99 ; 4 uses
  %i.ji = load ptr, ptr %1, align 8, !tbaa !22
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8
  %i.jl = call noundef float %i.jk(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.jh), !inline_history !923 ; 5 uses
  br i1 %.not.i102.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph236.i.i
  %i.jm = load ptr, ptr %.0177311.i.i, align 8, !tbaa !22
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = call noundef zeroext i1 %i.jn(ptr noundef nonnull align 8 dereferenceable(8) %.0177311.i.i, i64 noundef %i.jh), !inline_history !928
  %i.jp = fcmp olt float %.5174232.i.i, %i.jl
  %or.cond197.i.i = select i1 %i.jo, i1 %i.jp, i1 false
  br i1 %or.cond197.i.i, label %bb.al, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i

bb.ak:                                            ; preds = %.lr.ph236.i.i
  %.old196.i.i = fcmp olt float %.5174232.i.i, %i.jl
  br i1 %.old196.i.i, label %bb.al, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.jq = load ptr, ptr %2, align 8, !tbaa !22
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = call noundef zeroext i1 %i.jr(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.jl, i64 noundef %i.jh), !inline_history !928
  br i1 %i.js, label %bb.am, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i

bb.am:                                            ; preds = %bb.al
  %i.jt = load float, ptr %i.bm, align 8, !tbaa !489
  %i.ju = add nsw i32 %.4167233.i.i, 1
  br label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i

_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i: ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %.7176.i.i = phi float [ %i.jt, %bb.am ], [ %.5174232.i.i, %bb.al ], [ %.5174232.i.i, %bb.ak ], [ %.5174232.i.i, %bb.aj ]
  %.8.i.i = phi i32 [ %i.ju, %bb.am ], [ %.4167233.i.i, %bb.al ], [ %.4167233.i.i, %bb.ak ], [ %.4167233.i.i, %bb.aj ] ; 2 uses
  %i.jv = trunc i64 %i.jh to i32                  ; 2 uses
  %i.jw = fcmp uno float %i.jl, 0.000000e+00
  %.0.i106.i.i = select i1 %i.jw, float f0xFF7FFFFF, float %i.jl ; 4 uses
  %i.jx = load i32, ptr %i.bp, align 4, !tbaa !873 ; 5 uses
  %i.jy = load i32, ptr %3, align 8, !tbaa !871
  %i.jz = icmp eq i32 %i.jx, %i.jy
  %i.ka = load ptr, ptr %i.bq, align 8, !tbaa !492 ; 4 uses
  br i1 %i.jz, label %bb.an, label %._crit_edge.i107.i.i

._crit_edge.i107.i.i:                             ; preds = %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i
  %.pre10.i109.i.i = load ptr, ptr %.phi.trans.insert9.i.i.i, align 8, !tbaa !84
  br label %bb.au

bb.an:                                            ; preds = %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_18VisitedTableVectorENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !233
  %i.kc = fcmp olt float %i.kb, %.0.i106.i.i
  br i1 %i.kc, label %bb.ao, label %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit135.i.i

bb.ao:                                            ; preds = %bb.an
  %i.kd = load ptr, ptr %.phi.trans.insert9.i.i.i, align 8, !tbaa !84 ; 4 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !21
  %.not.i116.i.i = icmp eq i32 %i.ke, -1
  br i1 %.not.i116.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.kf = load i32, ptr %i.bl, align 8, !tbaa !874
  %i.kg = add nsw i32 %i.kf, -1
  store i32 %i.kg, ptr %i.bl, align 8, !tbaa !874
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.kh = add nsw i32 %i.jx, -1
  store i32 %i.kh, ptr %i.bp, align 4, !tbaa !873
  %i.ki = sext i32 %i.jx to i64                   ; 4 uses
  %i.kj = getelementptr inbounds i8, ptr %i.ka, i64 -4 ; 4 uses
  %i.kk = getelementptr inbounds i8, ptr %i.kd, i64 -4 ; 5 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %i.ki ; 3 uses
  %i.km = load float, ptr %i.kl, align 4, !tbaa !233 ; 5 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.ki ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !21 ; 3 uses
  %i.kp = icmp ult i32 %i.jx, 2
  br i1 %i.kp, label %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i, label %.lr.ph.i.i117.i.i

.lr.ph.i.i117.i.i:                                ; preds = %bb.aq, %bb.at
  %i.kq = phi i64 [ %i.lt, %bb.at ], [ 3, %bb.aq ]
  %i.kr = phi i64 [ %i.ls, %bb.at ], [ 2, %bb.aq ] ; 7 uses
  %.062.i.i118.i.i = phi i64 [ %.1.i.i123.i.i, %bb.at ], [ 1, %bb.aq ] ; 6 uses
  %i.ks = icmp eq i64 %i.kr, %i.ki
  br i1 %i.ks, label %.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i.i133.i.i, label %bb.ar

.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i.i133.i.i: ; preds = %.lr.ph.i.i117.i.i
  %.pre.i.i134.i.i = load float, ptr %i.kl, align 4, !tbaa !233
  br label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i131.i.i

bb.ar:                                            ; preds = %.lr.ph.i.i117.i.i
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %i.kr
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !233 ; 4 uses
  %i.kv = getelementptr [4 x i8], ptr %i.ka, i64 %i.kr
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !233 ; 5 uses
  %i.kx = getelementptr [4 x i8], ptr %i.kd, i64 %i.kr
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !21 ; 3 uses
  %i.kz = fcmp olt float %i.ku, %i.kw
  br i1 %i.kz, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i131.i.i, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i119.i.i

_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i119.i.i:     ; preds = %bb.ar
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.kr
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !21
  %i.lc = fcmp oeq float %i.ku, %i.kw
  %i.ld = icmp slt i32 %i.lb, %i.ky
  %i.le = and i1 %i.lc, %i.ld
  br i1 %i.le, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i131.i.i, label %bb.as

_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i131.i.i: ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i119.i.i, %bb.ar, %.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i.i133.i.i
  %i.lf = phi float [ %.pre.i.i134.i.i, %.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i.i133.i.i ], [ %i.ku, %bb.ar ], [ %i.ku, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i119.i.i ] ; 3 uses
  %i.lg = fcmp olt float %i.km, %i.lf
  br i1 %i.lg, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i132.i.i

_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i132.i.i:   ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i131.i.i
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %i.kr
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !21 ; 2 uses
  %i.lj = fcmp oeq float %i.km, %i.lf
  %i.lk = icmp slt i32 %i.ko, %i.li
  %i.ll = and i1 %i.lj, %i.lk
  br i1 %i.ll, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i, label %bb.at

bb.as:                                            ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i119.i.i
  %i.lm = fcmp olt float %i.km, %i.kw
  br i1 %i.lm, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i120.i.i

_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i120.i.i:   ; preds = %bb.as
  %i.ln = fcmp oeq float %i.km, %i.kw
  %i.lo = icmp slt i32 %i.ko, %i.ky
  %i.lp = and i1 %i.ln, %i.lo
  br i1 %i.lp, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i, label %bb.at

bb.at:                                            ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i120.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i132.i.i
  %.sink79.i.i121.i.i = phi float [ %i.lf, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i132.i.i ], [ %i.kw, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i120.i.i ]
  %.sink.i.i122.i.i = phi i32 [ %i.li, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i132.i.i ], [ %i.ky, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i120.i.i ]
  %.1.i.i123.i.i = phi i64 [ %i.kr, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i132.i.i ], [ %i.kq, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i120.i.i ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %.062.i.i118.i.i
  store float %.sink79.i.i121.i.i, ptr %i.lq, align 4, !tbaa !233
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %.062.i.i118.i.i
  store i32 %.sink.i.i122.i.i, ptr %i.lr, align 4, !tbaa !21
  %i.ls = shl i64 %.1.i.i123.i.i, 1               ; 3 uses
  %i.lt = or disjoint i64 %i.ls, 1
  %i.lu = icmp ugt i64 %i.ls, %i.ki
  br i1 %i.lu, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i, label %.lr.ph.i.i117.i.i, !llvm.loop !921

_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i: ; preds = %bb.at, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i120.i.i, %bb.as, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i132.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i131.i.i
  %.0.lcssa.ph.i.i125.i.i = phi i64 [ %.1.i.i123.i.i, %bb.at ], [ %.062.i.i118.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i132.i.i ], [ %.062.i.i118.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i120.i.i ], [ %.062.i.i118.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i131.i.i ], [ %.062.i.i118.i.i, %bb.as ]
  %.pre68.i.i126.i.i = load float, ptr %i.kl, align 4, !tbaa !233
  %.pre69.i.i127.i.i = load i32, ptr %i.kn, align 4, !tbaa !21
  br label %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i

_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i: ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i, %bb.aq
  %i.lv = phi i32 [ %i.ko, %bb.aq ], [ %.pre69.i.i127.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i ]
  %i.lw = phi float [ %i.km, %bb.aq ], [ %.pre68.i.i126.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i ]
  %.0.lcssa.i.i129.i.i = phi i64 [ 1, %bb.aq ], [ %.0.lcssa.ph.i.i125.i.i, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i ] ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %.0.lcssa.i.i129.i.i
  store float %i.lw, ptr %i.lx, align 4, !tbaa !233
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %.0.lcssa.i.i129.i.i
  store i32 %i.lv, ptr %i.ly, align 4, !tbaa !21
  %.pre.i130.i.i = load i32, ptr %i.bp, align 4, !tbaa !873
  br label %bb.au

bb.au:                                            ; preds = %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i, %._crit_edge.i107.i.i
  %i.lz = phi ptr [ %i.kd, %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i ], [ %.pre10.i109.i.i, %._crit_edge.i107.i.i ]
  %i.ma = phi i32 [ %.pre.i130.i.i, %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i ], [ %i.jx, %._crit_edge.i107.i.i ]
  %i.mb = add nsw i32 %i.ma, 1                    ; 3 uses
  store i32 %i.mb, ptr %i.bp, align 4, !tbaa !873
  %i.mc = sext i32 %i.mb to i64                   ; 2 uses
  %i.md = getelementptr inbounds i8, ptr %i.ka, i64 -4 ; 3 uses
  %i.me = getelementptr inbounds i8, ptr %i.lz, i64 -4 ; 3 uses
  %i.mf = icmp ugt i32 %i.mb, 1
  br i1 %i.mf, label %.lr.ph.i5.i112.i.i, label %_ZN5faiss9heap_pushINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i110.i.i

.lr.ph.i5.i112.i.i:                               ; preds = %bb.au, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i115.i.i
  %.025.i.i113.i.i = phi i64 [ %i.mg, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i115.i.i ], [ %i.mc, %bb.au ] ; 5 uses
  %i.mg = lshr i64 %.025.i.i113.i.i, 1            ; 4 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.mg
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !233 ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN5faiss12_GLOBAL__N_131search_from_candidates_dispatchINS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT_6is_maxENS_4CMaxIfiEENS2_IfiEEE4typeEEERNS_12VisitedTableERNS_9HNSWStatsEiiPKNS_16SearchParametersE:bb.a
  %i.vj = fcmp olt float %.3183261.i.i, %i.vf
  %or.cond206.i.i = select i1 %i.vi, i1 %i.vj, i1 false
  br i1 %or.cond206.i.i, label %bb.cq, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i

bb.cp:                                            ; preds = %bb.cn
  %.old205.i.i = fcmp olt float %.3183261.i.i, %i.vf
  br i1 %.old205.i.i, label %bb.cq, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.vk = load ptr, ptr %2, align 8, !tbaa !22
  %i.vl = load ptr, ptr %i.vk, align 8
  %i.vm = call noundef zeroext i1 %i.vl(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.vf, i64 noundef %i.vd), !inline_history !937
  br i1 %i.vm, label %bb.cr, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i

bb.cr:                                            ; preds = %bb.cq
  %i.vn = load float, ptr %i.nv, align 8, !tbaa !489
  %i.vo = add nsw i32 %.2176262.i.i, 1
  br label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i

_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i: ; preds = %bb.cr, %bb.cq, %bb.cp, %bb.co
  %.6186.i.i = phi float [ %i.vn, %bb.cr ], [ %.3183261.i.i, %bb.cq ], [ %.3183261.i.i, %bb.cp ], [ %.3183261.i.i, %bb.co ] ; 2 uses
  %.7.i.i70 = phi i32 [ %i.vo, %bb.cr ], [ %.2176262.i.i, %bb.cq ], [ %.2176262.i.i, %bb.cp ], [ %.2176262.i.i, %bb.co ] ; 3 uses
  %i.vp = trunc i64 %i.vd to i32                  ; 2 uses
  %i.vq = fcmp uno float %i.vf, 0.000000e+00
  %.0.i.i.i71 = select i1 %i.vq, float f0xFF7FFFFF, float %i.vf ; 4 uses
  %i.vr = load i32, ptr %i.ou, align 4, !tbaa !873 ; 5 uses
  %i.vs = load i32, ptr %3, align 8, !tbaa !871
  %i.vt = icmp eq i32 %i.vr, %i.vs
  %i.vu = load ptr, ptr %i.ob, align 8, !tbaa !492 ; 4 uses
  br i1 %i.vt, label %bb.cs, label %._crit_edge.i.i.i72

._crit_edge.i.i.i72:                              ; preds = %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i
  %.pre10.i.i.i73 = load ptr, ptr %i.oa, align 8, !tbaa !84
  br label %bb.cz

bb.cs:                                            ; preds = %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit.i.i
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !233
  %i.vw = fcmp olt float %i.vv, %.0.i.i.i71
  br i1 %i.vw, label %bb.ct, label %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit.i.i76

bb.ct:                                            ; preds = %bb.cs
  %i.vx = load ptr, ptr %i.oa, align 8, !tbaa !84 ; 4 uses
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !21
  %.not.i105.i.i82 = icmp eq i32 %i.vy, -1
  br i1 %.not.i105.i.i82, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.vz = load i32, ptr %i.nw, align 8, !tbaa !874
  %i.wa = add nsw i32 %i.vz, -1
  store i32 %i.wa, ptr %i.nw, align 8, !tbaa !874
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.wb = add nsw i32 %i.vr, -1
  store i32 %i.wb, ptr %i.ou, align 4, !tbaa !873
  %i.wc = sext i32 %i.vr to i64                   ; 4 uses
  %i.wd = getelementptr inbounds i8, ptr %i.vu, i64 -4 ; 4 uses
  %i.we = getelementptr inbounds i8, ptr %i.vx, i64 -4 ; 5 uses
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %i.wc ; 3 uses
  %i.wg = load float, ptr %i.wf, align 4, !tbaa !233 ; 5 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %i.wc ; 2 uses
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !21 ; 3 uses
  %i.wj = icmp ult i32 %i.vr, 2
  br i1 %i.wj, label %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i94, label %.lr.ph.i.i.i.i83

.lr.ph.i.i.i.i83:                                 ; preds = %bb.cv, %bb.cy
  %i.wk = phi i64 [ %i.xn, %bb.cy ], [ 3, %bb.cv ]
  %i.wl = phi i64 [ %i.xm, %bb.cy ], [ 2, %bb.cv ] ; 7 uses
  %.062.i.i.i.i84 = phi i64 [ %.1.i.i.i.i89, %bb.cy ], [ 1, %bb.cv ] ; 6 uses
  %i.wm = icmp eq i64 %i.wl, %i.wc
  br i1 %i.wm, label %.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i.i.i.i99, label %bb.cw

.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i.i.i.i99: ; preds = %.lr.ph.i.i.i.i83
  %.pre.i.i.i.i100 = load float, ptr %i.wf, align 4, !tbaa !233
  br label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i.i.i97

bb.cw:                                            ; preds = %.lr.ph.i.i.i.i83
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %i.wl
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !233 ; 4 uses
  %i.wp = getelementptr [4 x i8], ptr %i.vu, i64 %i.wl
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !233 ; 5 uses
  %i.wr = getelementptr [4 x i8], ptr %i.vx, i64 %i.wl
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !21 ; 3 uses
  %i.wt = fcmp olt float %i.wo, %i.wq
  br i1 %i.wt, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i.i.i97, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i.i.i85

_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i.i.i85:      ; preds = %bb.cw
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %i.wl
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !21
  %i.ww = fcmp oeq float %i.wo, %i.wq
  %i.wx = icmp slt i32 %i.wv, %i.ws
  %i.wy = and i1 %i.ww, %i.wx
  br i1 %i.wy, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i.i.i97, label %bb.cx

_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i.i.i97: ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i.i.i85, %bb.cw, %.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i.i.i.i99
  %i.wz = phi float [ %.pre.i.i.i.i100, %.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i.i.i.i99 ], [ %i.wo, %bb.cw ], [ %i.wo, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i.i.i85 ] ; 3 uses
  %i.xa = fcmp olt float %i.wg, %i.wz
  br i1 %i.xa, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i.i.i98

_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i.i.i98:    ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i.i.i97
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %i.wl
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !21 ; 2 uses
  %i.xd = fcmp oeq float %i.wg, %i.wz
  %i.xe = icmp slt i32 %i.wi, %i.xc
  %i.xf = and i1 %i.xd, %i.xe
  br i1 %i.xf, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90, label %bb.cy

bb.cx:                                            ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i.i.i85
  %i.xg = fcmp olt float %i.wg, %i.wq
  br i1 %i.xg, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i.i.i86

_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i.i.i86:    ; preds = %bb.cx
  %i.xh = fcmp oeq float %i.wg, %i.wq
  %i.xi = icmp slt i32 %i.wi, %i.ws
  %i.xj = and i1 %i.xh, %i.xi
  br i1 %i.xj, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90, label %bb.cy

bb.cy:                                            ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i.i.i86, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i.i.i98
  %.sink79.i.i.i.i87 = phi float [ %i.wz, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i.i.i98 ], [ %i.wq, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i.i.i86 ]
  %.sink.i.i.i.i88 = phi i32 [ %i.xc, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i.i.i98 ], [ %i.ws, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i.i.i86 ]
  %.1.i.i.i.i89 = phi i64 [ %i.wl, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i.i.i98 ], [ %i.wk, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i.i.i86 ] ; 3 uses
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %.062.i.i.i.i84
  store float %.sink79.i.i.i.i87, ptr %i.xk, align 4, !tbaa !233
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %.062.i.i.i.i84
  store i32 %.sink.i.i.i.i88, ptr %i.xl, align 4, !tbaa !21
  %i.xm = shl i64 %.1.i.i.i.i89, 1                ; 3 uses
  %i.xn = or disjoint i64 %i.xm, 1
  %i.xo = icmp ugt i64 %i.xm, %i.wc
  br i1 %i.xo, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90, label %.lr.ph.i.i.i.i83, !llvm.loop !921

_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90: ; preds = %bb.cy, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i.i.i86, %bb.cx, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i.i.i98, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i.i.i97
  %.0.lcssa.ph.i.i.i.i91 = phi i64 [ %.1.i.i.i.i89, %bb.cy ], [ %.062.i.i.i.i84, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i.i.i98 ], [ %.062.i.i.i.i84, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i.i.i86 ], [ %.062.i.i.i.i84, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i.i.i97 ], [ %.062.i.i.i.i84, %bb.cx ]
  %.pre68.i.i.i.i92 = load float, ptr %i.wf, align 4, !tbaa !233
  %.pre69.i.i.i.i93 = load i32, ptr %i.wh, align 4, !tbaa !21
  br label %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i94

_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i94: ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90, %bb.cv
  %i.xp = phi i32 [ %i.wi, %bb.cv ], [ %.pre69.i.i.i.i93, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90 ]
  %i.xq = phi float [ %i.wg, %bb.cv ], [ %.pre68.i.i.i.i92, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90 ]
  %.0.lcssa.i.i.i.i95 = phi i64 [ 1, %bb.cv ], [ %.0.lcssa.ph.i.i.i.i91, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i.i.i90 ] ; 2 uses
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.wd, i64 %.0.lcssa.i.i.i.i95
  store float %i.xq, ptr %i.xr, align 4, !tbaa !233
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.we, i64 %.0.lcssa.i.i.i.i95
  store i32 %i.xp, ptr %i.xs, align 4, !tbaa !21
  %.pre.i.i.i96 = load i32, ptr %i.ou, align 4, !tbaa !873
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i94, %._crit_edge.i.i.i72
  %i.xt = phi ptr [ %i.vx, %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i94 ], [ %.pre10.i.i.i73, %._crit_edge.i.i.i72 ]
  %i.xu = phi i32 [ %.pre.i.i.i96, %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i.i.i94 ], [ %i.vr, %._crit_edge.i.i.i72 ]
  %i.xv = add nsw i32 %i.xu, 1                    ; 3 uses
  store i32 %i.xv, ptr %i.ou, align 4, !tbaa !873
  %i.xw = sext i32 %i.xv to i64                   ; 2 uses
  %i.xx = getelementptr inbounds i8, ptr %i.vu, i64 -4 ; 3 uses
  %i.xy = getelementptr inbounds i8, ptr %i.xt, i64 -4 ; 3 uses
  %i.xz = icmp ugt i32 %i.xv, 1
  br i1 %i.xz, label %.lr.ph.i5.i.i.i78, label %_ZN5faiss9heap_pushINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i74

.lr.ph.i5.i.i.i78:                                ; preds = %bb.cz, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i.i.i81
  %.025.i.i.i.i79 = phi i64 [ %i.ya, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i.i.i81 ], [ %i.xw, %bb.cz ] ; 5 uses
  %i.ya = lshr i64 %.025.i.i.i.i79, 1             ; 4 uses
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %i.ya
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !233 ; 3 uses
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %i.ya
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !21 ; 2 uses
  %i.yf = fcmp olt float %.0.i.i.i71, %i.yc
  br i1 %i.yf, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i.i.i81, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i6.i.i.i80

_ZN5faiss4CMinIfiE4cmp2Effii.exit.i6.i.i.i80:     ; preds = %.lr.ph.i5.i.i.i78
  %i.yg = fcmp oeq float %.0.i.i.i71, %i.yc
  %i.yh = icmp sgt i32 %i.ye, %i.vp
  %i.yi = and i1 %i.yg, %i.yh
  br i1 %i.yi, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i.i.i81, label %_ZN5faiss9heap_pushINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i74

_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i.i.i81: ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i6.i.i.i80, %.lr.ph.i5.i.i.i78
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %.025.i.i.i.i79
  store float %i.yc, ptr %i.yj, align 4, !tbaa !233
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %.025.i.i.i.i79
  store i32 %i.ye, ptr %i.yk, align 4, !tbaa !21
  %i.yl = icmp ugt i64 %.025.i.i.i.i79, 3
  br i1 %i.yl, label %.lr.ph.i5.i.i.i78, label %_ZN5faiss9heap_pushINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i74, !llvm.loop !922

_ZN5faiss9heap_pushINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i74: ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i.i.i81, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i6.i.i.i80, %bb.cz
  %.0.lcssa.i4.i.i.i75 = phi i64 [ %i.xw, %bb.cz ], [ %.025.i.i.i.i79, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i6.i.i.i80 ], [ %i.ya, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i.i.i81 ] ; 2 uses
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %.0.lcssa.i4.i.i.i75
  store float %.0.i.i.i71, ptr %i.ym, align 4, !tbaa !233
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %.0.lcssa.i4.i.i.i75
  store i32 %i.vp, ptr %i.yn, align 4, !tbaa !21
  %i.yo = load i32, ptr %i.nw, align 8, !tbaa !874
  %i.yp = add nsw i32 %i.yo, 1
  store i32 %i.yp, ptr %i.nw, align 8, !tbaa !874
  br label %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit.i.i76

_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit.i.i76: ; preds = %_ZN5faiss9heap_pushINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i.i.i74, %bb.cs
  %i.yq = add nuw nsw i64 %.078263.i.i, 1         ; 2 uses
  %exitcond326.not.i.i = icmp eq i64 %i.yq, 4
  br i1 %exitcond326.not.i.i, label %.thread.i77, label %bb.cn, !llvm.loop !938

bb.da:                                            ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKmSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeImLb0EEEEEEEESt4pairINS1_14_Node_iteratorImLb1ELb0EEEbEOT_OT0_RKT1_.exit.i.i
  %i.yr = add nuw i64 %.079267.i.i, 1             ; 2 uses
  %11 = icmp ult i64 %i.yr, %.083.lcssa.i.i36
  br i1 %11, label %.lr.ph270.i.i, label %.preheader.i.i37, !llvm.loop !939

.thread.i77:                                      ; preds = %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit.i.i76
  %i.ys = add nsw i32 %.1268.i.ph.i, 4            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.yt = add nuw i64 %.079267.i.i, 1             ; 2 uses
  %12 = icmp ult i64 %i.yt, %.083.lcssa.i.i36
  br i1 %12, label %.lr.ph270.i.outer.i, label %._crit_edge280.i.i, !llvm.loop !939

.lr.ph270.i.outer.i:                              ; preds = %.thread.i77, %.lr.ph270.i.outer.preheader.i
  %.1268.i.ph.i = phi i32 [ %i.ys, %.thread.i77 ], [ %.0285.i.i, %.lr.ph270.i.outer.preheader.i ] ; 3 uses
  %.079267.i.ph.i = phi i64 [ %i.yt, %.thread.i77 ], [ %i.rf, %.lr.ph270.i.outer.preheader.i ]
  %.1175265.i.ph.i = phi i32 [ %.7.i.i70, %.thread.i77 ], [ %.0174283.i.i, %.lr.ph270.i.outer.preheader.i ] ; 3 uses
  %.2182264.i.ph.i = phi float [ %.6186.i.i, %.thread.i77 ], [ %i.rr, %.lr.ph270.i.outer.preheader.i ] ; 2 uses
  %.pre.i = load i64, ptr %i.oy, align 8, !tbaa !292
  br label %.lr.ph270.i.i

._crit_edge280.loopexit.i.i:                      ; preds = %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit135.i.i46
  %i.yu = add i32 %i.ut, %.1268.i.ph.i
  br label %._crit_edge280.i.i

._crit_edge280.i.i:                               ; preds = %.thread.i77, %._crit_edge280.loopexit.i.i, %.preheader.i.i37, %._crit_edge.i.i35, %._crit_edge.thread.i.i27
  %.4178.lcssa.i.i = phi i32 [ %.1175265.i.ph.i, %.preheader.i.i37 ], [ %.8.i.i40, %._crit_edge280.loopexit.i.i ], [ %.0174283.i.i, %._crit_edge.i.i35 ], [ %.0174283.i.i, %._crit_edge.thread.i.i27 ], [ %.7.i.i70, %.thread.i77 ] ; 3 uses
  %.3.lcssa.i.i28 = phi i32 [ %.1268.i.ph.i, %.preheader.i.i37 ], [ %i.yu, %._crit_edge280.loopexit.i.i ], [ %.0285.i.i, %._crit_edge.i.i35 ], [ %.0285.i.i, %._crit_edge.thread.i.i27 ], [ %i.ys, %.thread.i77 ] ; 3 uses
  %i.yv = add nuw nsw i32 %.090284.i.i, 1         ; 3 uses
  %.not98.i.i29 = icmp slt i32 %.090284.i.i, %.1164.i.i
  %or.cond.i.i30 = select i1 %i.ot, i1 true, i1 %.not98.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %.pr128.pre.pre216 = load i32, ptr %i.nw, align 8, !tbaa !874 ; 3 uses
  br i1 %or.cond.i.i30, label %.thread191.i.i, label %.loopexit211.sink.split.i.i

.lr.ph279.i.i:                                    ; preds = %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit135.i.i46, %.lr.ph279.preheader.i.i
  %indvars.iv327.i.i = phi i64 [ 0, %.lr.ph279.preheader.i.i ], [ %indvars.iv.next328.i.i, %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit135.i.i46 ] ; 2 uses
  %.4178276.i.i = phi i32 [ %.1175265.i.ph.i, %.lr.ph279.preheader.i.i ], [ %.8.i.i40, %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit135.i.i46 ] ; 4 uses
  %.5185275.i.i = phi float [ %.2182264.i.ph.i, %.lr.ph279.preheader.i.i ], [ %.7187.i.i, %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit135.i.i46 ] ; 5 uses
  %i.yw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv327.i.i
  %i.yx = load i64, ptr %i.yw, align 8, !tbaa !99 ; 4 uses
  %i.yy = load ptr, ptr %1, align 8, !tbaa !22
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 8
  %i.za = load ptr, ptr %i.yz, align 8
  %i.zb = call noundef float %i.za(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.yx), !inline_history !932 ; 5 uses
  br i1 %.not99.i.i22, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %.lr.ph279.i.i
  %i.zc = load ptr, ptr %.0188.i.i, align 8, !tbaa !22
  %i.zd = load ptr, ptr %i.zc, align 8
  %i.ze = call noundef zeroext i1 %i.zd(ptr noundef nonnull align 8 dereferenceable(8) %.0188.i.i, i64 noundef %i.yx), !inline_history !937
  %i.zf = fcmp olt float %.5185275.i.i, %i.zb
  %or.cond208.i.i = select i1 %i.ze, i1 %i.zf, i1 false
  br i1 %or.cond208.i.i, label %bb.dd, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i

bb.dc:                                            ; preds = %.lr.ph279.i.i
  %.old207.i.i = fcmp olt float %.5185275.i.i, %i.zb
  br i1 %.old207.i.i, label %bb.dd, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.zg = load ptr, ptr %2, align 8, !tbaa !22
  %i.zh = load ptr, ptr %i.zg, align 8
  %i.zi = call noundef zeroext i1 %i.zh(ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef %i.zb, i64 noundef %i.yx), !inline_history !937
  br i1 %i.zi, label %bb.de, label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i

bb.de:                                            ; preds = %bb.dd
  %i.zj = load float, ptr %i.nv, align 8, !tbaa !489
  %i.zk = add nsw i32 %.4178276.i.i, 1
  br label %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i

_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i: ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db
  %.7187.i.i = phi float [ %i.zj, %bb.de ], [ %.5185275.i.i, %bb.dd ], [ %.5185275.i.i, %bb.dc ], [ %.5185275.i.i, %bb.db ]
  %.8.i.i40 = phi i32 [ %i.zk, %bb.de ], [ %.4178276.i.i, %bb.dd ], [ %.4178276.i.i, %bb.dc ], [ %.4178276.i.i, %bb.db ] ; 2 uses
  %i.zl = trunc i64 %i.yx to i32                  ; 2 uses
  %i.zm = fcmp uno float %i.zb, 0.000000e+00
  %.0.i106.i.i41 = select i1 %i.zm, float f0xFF7FFFFF, float %i.zb ; 4 uses
  %i.zn = load i32, ptr %i.ou, align 4, !tbaa !873 ; 5 uses
  %i.zo = load i32, ptr %3, align 8, !tbaa !871
  %i.zp = icmp eq i32 %i.zn, %i.zo
  %i.zq = load ptr, ptr %i.ob, align 8, !tbaa !492 ; 4 uses
  br i1 %i.zp, label %bb.df, label %._crit_edge.i107.i.i42

._crit_edge.i107.i.i42:                           ; preds = %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i
  %.pre10.i109.i.i43 = load ptr, ptr %i.oa, align 8, !tbaa !84
  br label %bb.dm

bb.df:                                            ; preds = %_ZZN5faiss12_GLOBAL__N_128search_from_candidates_fixVTINS_15VisitedTableSetENS_4CMinIflEEEEiRKNS_4HNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINSt11conditionalIXsrT0_6is_maxENS_4CMaxIfiEENS3_IfiEEE4typeEEERT_RNS_9HNSWStatsEiiPKNS_16SearchParametersEENKUlmfE_clEmf.exit104.i.i
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !233
  %i.zs = fcmp olt float %i.zr, %.0.i106.i.i41
  br i1 %i.zs, label %bb.dg, label %_ZN5faiss12MinimaxHeapTINS_4CMinIfiEEE4pushEif.exit135.i.i46

bb.dg:                                            ; preds = %bb.df
  %i.zt = load ptr, ptr %i.oa, align 8, !tbaa !84 ; 4 uses
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !21
  %.not.i116.i.i51 = icmp eq i32 %i.zu, -1
  br i1 %.not.i116.i.i51, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.zv = load i32, ptr %i.nw, align 8, !tbaa !874
  %i.zw = add nsw i32 %i.zv, -1
  store i32 %i.zw, ptr %i.nw, align 8, !tbaa !874
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.zx = add nsw i32 %i.zn, -1
  store i32 %i.zx, ptr %i.ou, align 4, !tbaa !873
  %i.zy = sext i32 %i.zn to i64                   ; 4 uses
  %i.zz = getelementptr inbounds i8, ptr %i.zq, i64 -4 ; 4 uses
  %i.aaa = getelementptr inbounds i8, ptr %i.zt, i64 -4 ; 5 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %i.zy ; 3 uses
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !233 ; 5 uses
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %i.zy ; 2 uses
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !21 ; 3 uses
  %i.aaf = icmp ult i32 %i.zn, 2
  br i1 %i.aaf, label %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i63, label %.lr.ph.i.i117.i.i52

.lr.ph.i.i117.i.i52:                              ; preds = %bb.di, %bb.dl
  %i.aag = phi i64 [ %i.abj, %bb.dl ], [ 3, %bb.di ]
  %i.aah = phi i64 [ %i.abi, %bb.dl ], [ 2, %bb.di ] ; 7 uses
  %.062.i.i118.i.i53 = phi i64 [ %.1.i.i123.i.i58, %bb.dl ], [ 1, %bb.di ] ; 6 uses
  %i.aai = icmp eq i64 %i.aah, %i.zy
  br i1 %i.aai, label %.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i.i133.i.i68, label %bb.dj

.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i.i133.i.i68: ; preds = %.lr.ph.i.i117.i.i52
  %.pre.i.i134.i.i69 = load float, ptr %i.aab, align 4, !tbaa !233
  br label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i131.i.i66

bb.dj:                                            ; preds = %.lr.ph.i.i117.i.i52
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %i.aah
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !233 ; 4 uses
  %i.aal = getelementptr [4 x i8], ptr %i.zq, i64 %i.aah
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !233 ; 5 uses
  %i.aan = getelementptr [4 x i8], ptr %i.zt, i64 %i.aah
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !21 ; 3 uses
  %i.aap = fcmp olt float %i.aak, %i.aam
  br i1 %i.aap, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i131.i.i66, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i119.i.i54

_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i119.i.i54:   ; preds = %bb.dj
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %i.aah
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !21
  %i.aas = fcmp oeq float %i.aak, %i.aam
  %i.aat = icmp slt i32 %i.aar, %i.aao
  %i.aau = and i1 %i.aas, %i.aat
  br i1 %i.aau, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i131.i.i66, label %bb.dk

_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i131.i.i66: ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i119.i.i54, %bb.dj, %.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i.i133.i.i68
  %i.aav = phi float [ %.pre.i.i134.i.i69, %.lr.ph._ZN5faiss4CMinIfiE4cmp2Effii.exit.thread_crit_edge.i.i133.i.i68 ], [ %i.aak, %bb.dj ], [ %i.aak, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i119.i.i54 ] ; 3 uses
  %i.aaw = fcmp olt float %i.aac, %i.aav
  br i1 %i.aaw, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i132.i.i67

_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i132.i.i67: ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i131.i.i66
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %i.aah
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !21 ; 2 uses
  %i.aaz = fcmp oeq float %i.aac, %i.aav
  %i.aba = icmp slt i32 %i.aae, %i.aay
  %i.abb = and i1 %i.aaz, %i.aba
  br i1 %i.abb, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59, label %bb.dl

bb.dk:                                            ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit.i.i119.i.i54
  %i.abc = fcmp olt float %i.aac, %i.aam
  br i1 %i.abc, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i120.i.i55

_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i120.i.i55: ; preds = %bb.dk
  %i.abd = fcmp oeq float %i.aac, %i.aam
  %i.abe = icmp slt i32 %i.aae, %i.aao
  %i.abf = and i1 %i.abd, %i.abe
  br i1 %i.abf, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59, label %bb.dl

bb.dl:                                            ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i120.i.i55, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i132.i.i67
  %.sink79.i.i121.i.i56 = phi float [ %i.aav, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i132.i.i67 ], [ %i.aam, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i120.i.i55 ]
  %.sink.i.i122.i.i57 = phi i32 [ %i.aay, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i132.i.i67 ], [ %i.aao, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i120.i.i55 ]
  %.1.i.i123.i.i58 = phi i64 [ %i.aah, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i132.i.i67 ], [ %i.aag, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i120.i.i55 ] ; 3 uses
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %.062.i.i118.i.i53
  store float %.sink79.i.i121.i.i56, ptr %i.abg, align 4, !tbaa !233
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %.062.i.i118.i.i53
  store i32 %.sink.i.i122.i.i57, ptr %i.abh, align 4, !tbaa !21
  %i.abi = shl i64 %.1.i.i123.i.i58, 1            ; 3 uses
  %i.abj = or disjoint i64 %i.abi, 1
  %i.abk = icmp ugt i64 %i.abi, %i.zy
  br i1 %i.abk, label %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59, label %.lr.ph.i.i117.i.i52, !llvm.loop !921

_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59: ; preds = %bb.dl, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i120.i.i55, %bb.dk, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i132.i.i67, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i131.i.i66
  %.0.lcssa.ph.i.i125.i.i60 = phi i64 [ %.1.i.i123.i.i58, %bb.dl ], [ %.062.i.i118.i.i53, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.i.i132.i.i67 ], [ %.062.i.i118.i.i53, %_ZN5faiss4CMinIfiE4cmp2Effii.exit61.i.i120.i.i55 ], [ %.062.i.i118.i.i53, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i.i131.i.i66 ], [ %.062.i.i118.i.i53, %bb.dk ]
  %.pre68.i.i126.i.i61 = load float, ptr %i.aab, align 4, !tbaa !233
  %.pre69.i.i127.i.i62 = load i32, ptr %i.aad, align 4, !tbaa !21
  br label %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i63

_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i63: ; preds = %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59, %bb.di
  %i.abl = phi i32 [ %i.aae, %bb.di ], [ %.pre69.i.i127.i.i62, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59 ]
  %i.abm = phi float [ %i.aac, %bb.di ], [ %.pre68.i.i126.i.i61, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59 ]
  %.0.lcssa.i.i129.i.i64 = phi i64 [ 1, %bb.di ], [ %.0.lcssa.ph.i.i125.i.i60, %_ZN5faiss4CMinIfiE4cmp2Effii.exit60.thread.loopexit.i.i124.i.i59 ] ; 2 uses
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %i.zz, i64 %.0.lcssa.i.i129.i.i64
  store float %i.abm, ptr %i.abn, align 4, !tbaa !233
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %.0.lcssa.i.i129.i.i64
  store i32 %i.abl, ptr %i.abo, align 4, !tbaa !21
  %.pre.i130.i.i65 = load i32, ptr %i.ou, align 4, !tbaa !873
  br label %bb.dm

bb.dm:                                            ; preds = %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i63, %._crit_edge.i107.i.i42
  %i.abp = phi ptr [ %i.zt, %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i63 ], [ %.pre10.i109.i.i43, %._crit_edge.i107.i.i42 ]
  %i.abq = phi i32 [ %.pre.i130.i.i65, %_ZN5faiss8heap_popINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIE.exit.i128.i.i63 ], [ %i.zn, %._crit_edge.i107.i.i42 ]
  %i.abr = add nsw i32 %i.abq, 1                  ; 3 uses
  store i32 %i.abr, ptr %i.ou, align 4, !tbaa !873
  %i.abs = sext i32 %i.abr to i64                 ; 2 uses
  %i.abt = getelementptr inbounds i8, ptr %i.zq, i64 -4 ; 3 uses
  %i.abu = getelementptr inbounds i8, ptr %i.abp, i64 -4 ; 3 uses
  %i.abv = icmp ugt i32 %i.abr, 1
  br i1 %i.abv, label %.lr.ph.i5.i112.i.i47, label %_ZN5faiss9heap_pushINS_4CMinIfiEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit.i110.i.i44

.lr.ph.i5.i112.i.i47:                             ; preds = %bb.dm, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i115.i.i50
  %.025.i.i113.i.i48 = phi i64 [ %i.abw, %_ZN5faiss4CMinIfiE4cmp2Effii.exit.thread.i7.i115.i.i50 ], [ %i.abs, %bb.dm ] ; 5 uses
  %i.abw = lshr i64 %.025.i.i113.i.i48, 1         ; 4 uses
end_hunk_7
