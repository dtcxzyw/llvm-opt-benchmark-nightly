Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeLayout?download=true
inline.NumInlined: 2770
inline.NumDeleted: 1254
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN12_GLOBAL__N_110ExtTSPImpl11mergeChainsEPNS_6ChainTES2_mNS_10MergeTypeTE:bb.a
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.val10.i, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !85 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %1, ptr %i.bc, align 8, !tbaa !123
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %i.az, ptr %i.bd, align 8, !tbaa !160
  %i.be = add nuw i64 %.011.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EED2Ev.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !10

_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EED2Ev.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EED2Ev.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EED2Ev.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.011.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.be, %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EED2Ev.exit.loopexit.unr-lcssa ]
  %lcmp.mod111 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod111)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.011.i.epil = phi i64 [ %i.bj, %.lr.ph.i.epil ], [ %.011.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.val10.i, i64 %.011.i.epil
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !85 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr %1, ptr %i.bh, align 8, !tbaa !123
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %.011.i.epil, ptr %i.bi, align 8, !tbaa !160
  %i.bj = add nuw i64 %.011.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EED2Ev.exit, label %.lr.ph.i.epil, !llvm.loop !500

_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EED2Ev.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EEaSEOS4_.exit.i
  tail call fastcc void @_ZN12_GLOBAL__N_16ChainT10mergeEdgesEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %2)
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !137
  %.not.i.i.i43 = icmp eq ptr %i.bl, %i.bk
  br i1 %.not.i.i.i43, label %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE5clearEv.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EED2Ev.exit
  store ptr %i.bk, ptr %i.d, align 8, !tbaa !137
  br label %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE5clearEv.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !113 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !134
  %.not.i.i1.i = icmp eq ptr %i.bp, %i.bn
  br i1 %.not.i.i1.i, label %_ZN12_GLOBAL__N_16ChainT5clearEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE5clearEv.exit.i
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !134
  br label %_ZN12_GLOBAL__N_16ChainT5clearEv.exit

_ZN12_GLOBAL__N_16ChainT5clearEv.exit:            ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE5clearEv.exit.i, %bb.i
  %i.bq = getelementptr i8, ptr %1, i64 56        ; 2 uses
  %.val = load ptr, ptr %i.bq, align 8, !tbaa !114 ; 2 uses
  %i.br = getelementptr i8, ptr %1, i64 64        ; 2 uses
  %.val20 = load ptr, ptr %i.br, align 8, !tbaa !114 ; 2 uses
  %.not47.i = icmp eq ptr %.val, %.val20
  br i1 %.not47.i, label %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %_ZN12_GLOBAL__N_16ChainT5clearEv.exit, %bb.j
  %.sroa.01.08.i = phi ptr [ %i.bt, %bb.j ], [ %.val, %_ZN12_GLOBAL__N_16ChainT5clearEv.exit ] ; 3 uses
  %i.bs = load ptr, ptr %.sroa.01.08.i, align 8, !tbaa !122
  %.not.i45 = icmp eq ptr %i.bs, %1
  br i1 %.not.i45, label %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i44
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i, i64 16 ; 2 uses
  %.not4.i = icmp eq ptr %i.bt, %.val20
  br i1 %.not4.i, label %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread, label %.lr.ph.i44

_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit:      ; preds = %.lr.ph.i44
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not = icmp eq ptr %i.bv, null
  br i1 %.not, label %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit
  %_ZN12_GLOBAL__N_19EmptyListE.val24 = load ptr, ptr @_ZN12_GLOBAL__N_19EmptyListE, align 16, !tbaa !110 ; 2 uses
  %_ZN12_GLOBAL__N_19EmptyListE.val33 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_19EmptyListE, i64 8), align 8, !tbaa !110 ; 2 uses
  %i.bw = load <2 x ptr>, ptr %i.a, align 8, !tbaa !110
  store <2 x ptr> %i.bw, ptr %5, align 16, !tbaa !110
  store ptr %_ZN12_GLOBAL__N_19EmptyListE.val24, ptr %i.g, align 16, !tbaa !110
  store ptr %_ZN12_GLOBAL__N_19EmptyListE.val33, ptr %i.h, align 8, !tbaa !110
  store ptr %_ZN12_GLOBAL__N_19EmptyListE.val24, ptr %i.i, align 16, !tbaa !110
  store ptr %_ZN12_GLOBAL__N_19EmptyListE.val33, ptr %i.j, align 8, !tbaa !110
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.by = call fastcc noundef double @_ZNK12_GLOBAL__N_110ExtTSPImpl11extTSPScoreERKNS_12MergedNodesTERKNS_12MergedJumpsTE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.bx, ptr null)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.by, ptr %i.bz, align 8, !tbaa !159
  br label %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread

_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread: ; preds = %bb.j, %_ZN12_GLOBAL__N_16ChainT5clearEv.exit, %bb.k, %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val7.i46 = load ptr, ptr %i.ca, align 8, !tbaa !504 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %.val6.i = load ptr, ptr %i.cb, align 8, !tbaa !504 ; 6 uses
  %i.cc = ptrtoint ptr %.val6.i to i64            ; 2 uses
  %i.cd = ptrtoint ptr %.val7.i46 to i64          ; 2 uses
  %i.ce = sub i64 %i.cc, %i.cd                    ; 3 uses
  %i.cf = ashr i64 %i.ce, 5                       ; 2 uses
  %i.cg = icmp sgt i64 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread
  %i.ch = and i64 %i.ce, -32
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.val7.i46, i64 %i.ch ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i.i
  %.053.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %i.cu, %bb.p ] ; 2 uses
  %.sroa.035.052.i.i.i.i.i = phi ptr [ %.val7.i46, %.lr.ph.i.i.i.i.i ], [ %i.ct, %bb.p ] ; 9 uses
  %i.ci = load ptr, ptr %.sroa.035.052.i.i.i.i.i, align 8, !tbaa !122
  %i.cj = icmp eq ptr %i.ci, %2
  br i1 %i.cj, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.035.052.i.i.i.i.i, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !122
  %i.cm = icmp eq ptr %i.cl, %2
  br i1 %i.cm, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.035.052.i.i.i.i.i, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !122
  %i.cp = icmp eq ptr %i.co, %2
  br i1 %i.cp, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit93, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.035.052.i.i.i.i.i, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !122
  %i.cs = icmp eq ptr %i.cr, %2
  br i1 %i.cs, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit95, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.035.052.i.i.i.i.i, i64 32
  %i.cu = add nsw i64 %.053.i.i.i.i.i, -1
  %i.cv = icmp sgt i64 %.053.i.i.i.i.i, 1
  br i1 %i.cv, label %bb.l, label %._crit_edge.loopexit.i.i.i.i.i, !llvm.loop !501

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %bb.p
  %.pre.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i to i64
  %.pre61.i.i.i.i.i = sub i64 %i.cc, %.pre.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread
  %.pre-phi62.i.i.i.i.i = phi i64 [ %.pre61.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %i.ce, %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread ]
  %.sroa.035.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i ], [ %.val7.i46, %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread ] ; 5 uses
  %i.cw = ashr exact i64 %.pre-phi62.i.i.i.i.i, 3
  switch i64 %i.cw, label %_ZN4llvm5eraseISt6vectorIPN12_GLOBAL__N_16ChainTESaIS4_EES4_EEvRT_T0_.exit [
    i64 3, label %bb.q
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge59.i.i.i.i.i
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cx = load ptr, ptr %.sroa.035.0.lcssa.i.i.i.i.i, align 8, !tbaa !122
  %i.cy = icmp eq ptr %i.cx, %2
  br i1 %i.cy, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.035.0.lcssa.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i:                 ; preds = %bb.r, %._crit_edge.i.i.i.i.i
  %.sroa.035.1.i.i.i.i.i = phi ptr [ %i.cz, %bb.r ], [ %.sroa.035.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.da = load ptr, ptr %.sroa.035.1.i.i.i.i.i, align 8, !tbaa !122
  %i.db = icmp eq ptr %i.da, %2
  br i1 %i.db, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.035.1.i.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge59.i.i.i.i.i

._crit_edge._crit_edge59.i.i.i.i.i:               ; preds = %bb.s, %._crit_edge.i.i.i.i.i
  %.sroa.035.2.i.i.i.i.i = phi ptr [ %i.dc, %bb.s ], [ %.sroa.035.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.dd = load ptr, ptr %.sroa.035.2.i.i.i.i.i, align 8, !tbaa !122
  %i.de = icmp eq ptr %i.dd, %2
  %spec.select.i.i.i.i.i = select i1 %i.de, ptr %.sroa.035.2.i.i.i.i.i, ptr %.val6.i
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit: ; preds = %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.035.052.i.i.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit93: ; preds = %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.035.052.i.i.i.i.i, i64 16
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit95: ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.035.052.i.i.i.i.i, i64 24
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i: ; preds = %bb.l, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit93, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit95, %._crit_edge._crit_edge59.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i, %bb.q
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.035.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %._crit_edge._crit_edge59.i.i.i.i.i ], [ %.sroa.035.0.lcssa.i.i.i.i.i, %bb.q ], [ %i.dh, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit95 ], [ %i.df, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit ], [ %i.dg, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i.loopexit.split.loop.exit93 ], [ %.sroa.035.052.i.i.i.i.i, %bb.l ] ; 4 uses
  %i.di = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %.val6.i
  %.sroa.012.027.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, i64 8 ; 2 uses
  %.not28.i.i.i = icmp eq ptr %.sroa.012.027.i.i.i, %.val6.i
  %or.cond.i.i.i = select i1 %i.di, i1 true, i1 %.not28.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i, %bb.u
  %.sroa.012.030.i.i.i = phi ptr [ %.sroa.012.0.i.i.i, %bb.u ], [ %.sroa.012.027.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i ] ; 2 uses
  %.sroa.015.029.i.i.i = phi ptr [ %.sroa.015.1.i.i.i, %bb.u ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i ] ; 3 uses
  %i.dj = load ptr, ptr %.sroa.012.030.i.i.i, align 8, !tbaa !122 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %2
  br i1 %i.dk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i
  store ptr %i.dj, ptr %.sroa.015.029.i.i.i, align 8, !tbaa !122
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.015.029.i.i.i, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i.i.i
  %.sroa.015.1.i.i.i = phi ptr [ %.sroa.015.029.i.i.i, %.lr.ph.i.i.i ], [ %i.dl, %bb.t ] ; 2 uses
  %.sroa.012.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.030.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i47 = icmp eq ptr %.sroa.012.0.i.i.i, %.val6.i
  br i1 %.not.i.i.i47, label %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !502

_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i: ; preds = %bb.u, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i
  %.sroa.015.2.i.i.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEENS0_5__ops16_Iter_equals_valIKS4_EEET_SE_SE_T0_.exit.i.i.i ], [ %.sroa.015.1.i.i.i, %bb.u ] ; 2 uses
  %.not.i.i11.i = icmp eq ptr %.sroa.015.2.i.i.i, %.val6.i
  br i1 %.not.i.i11.i, label %_ZN4llvm5eraseISt6vectorIPN12_GLOBAL__N_16ChainTESaIS4_EES4_EEvRT_T0_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i: ; preds = %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i
  %i.dm = ptrtoint ptr %.sroa.015.2.i.i.i to i64
  %i.dn = sub i64 %i.dm, %i.cd
  %i.do = getelementptr inbounds i8, ptr %.val7.i46, i64 %i.dn
  store ptr %i.do, ptr %i.cb, align 8, !tbaa !116
  br label %_ZN4llvm5eraseISt6vectorIPN12_GLOBAL__N_16ChainTESaIS4_EES4_EEvRT_T0_.exit

_ZN4llvm5eraseISt6vectorIPN12_GLOBAL__N_16ChainTESaIS4_EES4_EEvRT_T0_.exit: ; preds = %._crit_edge.i.i.i.i.i, %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN12_GLOBAL__N_16ChainTESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i
  %.val22 = load ptr, ptr %i.bq, align 8, !tbaa !114 ; 2 uses
  %.val21 = load ptr, ptr %i.br, align 8, !tbaa !114 ; 2 uses
  %.not6575 = icmp eq ptr %.val22, %.val21
  br i1 %.not6575, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4llvm5eraseISt6vectorIPN12_GLOBAL__N_16ChainTESaIS4_EES4_EEvRT_T0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret void

.lr.ph:                                           ; preds = %_ZN4llvm5eraseISt6vectorIPN12_GLOBAL__N_16ChainTESaIS4_EES4_EEvRT_T0_.exit, %.lr.ph
  %.sroa.048.076 = phi ptr [ %i.dr, %.lr.ph ], [ %.val22, %_ZN4llvm5eraseISt6vectorIPN12_GLOBAL__N_16ChainTESaIS4_EES4_EEvRT_T0_.exit ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.048.076, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 112
  store i8 0, ptr %i.dp, align 8, !tbaa !132
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 113
  store i8 0, ptr %i.dq, align 1, !tbaa !133
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.048.076, i64 16 ; 2 uses
  %.not65 = icmp eq ptr %i.dr, %.val21
  br i1 %.not65, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_112MergedNodesT8getNodesEv(ptr dead_on_unwind noalias nofree nonnull writable align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.sroa.014.0.copyload = load ptr, ptr %1, align 8, !tbaa !110 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.013.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !110 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.013.0.copyload to i64
  %i.c = ptrtoint ptr %.sroa.014.0.copyload to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.012.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.011.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.h = ptrtoint ptr %.sroa.011.0.copyload to i64
  %i.i = ptrtoint ptr %.sroa.012.0.copyload to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = add nsw i64 %i.k, %i.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.010.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !110
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.09.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !110
  %i.o = ptrtoint ptr %.sroa.09.0.copyload to i64
  %i.p = ptrtoint ptr %.sroa.010.0.copyload to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = add nsw i64 %i.l, %i.r                   ; 4 uses
  %i.t = icmp ugt i64 %i.s, 1152921504606846975
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPN12_GLOBAL__N_15NodeTESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIPN12_GLOBAL__N_15NodeTESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = shl nuw nsw i64 %i.s, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #25 ; 4 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !37
  store ptr %i.x, ptr %i.v, align 8, !tbaa !137
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.s
  store ptr %i.y, ptr %i.u, align 8, !tbaa !38
  %.sroa.08.0.copyload.pre = load ptr, ptr %1, align 8, !tbaa !110
  %.sroa.07.0.copyload.pre = load ptr, ptr %i.a, align 8, !tbaa !110
  br label %_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE7reserveEm.exit

_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIPN12_GLOBAL__N_15NodeTESaIS2_EE11_M_allocateEm.exit.i
  %.sroa.07.0.copyload = phi ptr [ %.sroa.013.0.copyload, %bb.c ], [ %.sroa.07.0.copyload.pre, %_ZNSt12_Vector_baseIPN12_GLOBAL__N_15NodeTESaIS2_EE11_M_allocateEm.exit.i ]
  %.sroa.08.0.copyload = phi ptr [ %.sroa.014.0.copyload, %bb.c ], [ %.sroa.08.0.copyload.pre, %_ZNSt12_Vector_baseIPN12_GLOBAL__N_15NodeTESaIS2_EE11_M_allocateEm.exit.i ]
  %.val20 = phi ptr [ null, %bb.c ], [ %i.x, %_ZNSt12_Vector_baseIPN12_GLOBAL__N_15NodeTESaIS2_EE11_M_allocateEm.exit.i ]
  %i.z = getelementptr i8, ptr %0, i64 8          ; 2 uses
  tail call fastcc void @_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE6insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEvEENS7_IPS2_S4_EESA_T_SD_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %.val20, ptr %.sroa.08.0.copyload, ptr %.sroa.07.0.copyload)
  %.val19 = load ptr, ptr %i.z, align 8, !tbaa !110
  %.sroa.05.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !110
  %.sroa.04.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !110
  tail call fastcc void @_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE6insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEvEENS7_IPS2_S4_EESA_T_SD_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %.val19, ptr %.sroa.05.0.copyload, ptr %.sroa.04.0.copyload)
  %.val18 = load ptr, ptr %i.z, align 8, !tbaa !110
  %.sroa.02.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !110
  %.sroa.01.0.copyload = load ptr, ptr %i.n, align 8, !tbaa !110
  tail call fastcc void @_ZNSt6vectorIPN12_GLOBAL__N_15NodeTESaIS2_EE6insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEvEENS7_IPS2_S4_EESA_T_SD_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %.val18, ptr %.sroa.02.0.copyload, ptr %.sroa.01.0.copyload)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_16ChainT10mergeEdgesEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val35 = load ptr, ptr %i.a, align 8, !tbaa !114 ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 64
  %.val34 = load ptr, ptr %i.b, align 8, !tbaa !114 ; 2 uses
  %.not6367 = icmp eq ptr %.val35, %.val34
  br i1 %.not6367, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN12_GLOBAL__N_16ChainT10removeEdgeEPS0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_16ChainT10removeEdgeEPS0_.exit
  %.sroa.062.068 = phi ptr [ %.val35, %.lr.ph ], [ %i.fe, %_ZN12_GLOBAL__N_16ChainT10removeEdgeEPS0_.exit ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.062.068, i64 8 ; 3 uses
  %i.g = load ptr, ptr %.sroa.062.068, align 8, !tbaa !122 ; 2 uses
  %i.h = icmp eq ptr %i.g, %1
  %spec.select = select i1 %i.h, ptr %0, ptr %i.g ; 3 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !114 ; 6 uses
  %.val33 = load ptr, ptr %i.d, align 8, !tbaa !114 ; 7 uses
  %.not47.i = icmp eq ptr %.val, %.val33          ; 3 uses
  br i1 %.not47.i, label %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.01.08.i = phi ptr [ %i.j, %bb.c ], [ %.val, %bb.b ] ; 3 uses
  %i.i = load ptr, ptr %.sroa.01.08.i, align 8, !tbaa !122
  %.not.i = icmp eq ptr %i.i, %spec.select
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i, i64 16 ; 2 uses
  %.not4.i = icmp eq ptr %i.j, %.val33
  br i1 %.not4.i, label %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread, label %.lr.ph.i

_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit:      ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.08.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread, label %bb.p

_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread: ; preds = %bb.c, %bb.b, %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !136  ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread
  store ptr %0, ptr %i.n, align 8, !tbaa !127
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK12_GLOBAL__N_16ChainT7getEdgeEPS0_.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !128
  %i.s = icmp eq ptr %1, %i.r
  br i1 %i.s, label %bb.f, label %_ZN12_GLOBAL__N_19ChainEdge14changeEndpointEPNS_6ChainTES2_.exit

bb.f:                                             ; preds = %bb.e
  store ptr %0, ptr %i.q, align 8, !tbaa !128
  br label %_ZN12_GLOBAL__N_19ChainEdge14changeEndpointEPNS_6ChainTES2_.exit

_ZN12_GLOBAL__N_19ChainEdge14changeEndpointEPNS_6ChainTES2_.exit: ; preds = %bb.e, %bb.f
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !135
  %.not.i.i.i = icmp eq ptr %.val33, %i.t
  br i1 %.not.i.i.i, label %bb.h, label %bb.g
end_hunk_0
