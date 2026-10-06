Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/fast_scan?download=true
inline.NumInlined: 24799
inline.NumDeleted: 4569
loop-unroll.NumCompletelyUnrolled: 733
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 1469
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_T1_:bb.a
  %i.ak = icmp slt i64 %spec.select.i.i.i.i, %i.q
  br i1 %i.ak, label %bb.d, label %._crit_edge.i.i.i.i, !llvm.loop !8

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.c ], [ %spec.select.i.i.i.i, %bb.d ] ; 5 uses
  %i.al = and i64 %i.n, 4
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.an = add nsw i64 %i.o, -2
  %i.ao = ashr exact i64 %i.an, 1
  %i.ap = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ao
  br i1 %i.ap, label %.thread.i.i.i, label %bb.f

.thread.i.i.i:                                    ; preds = %bb.e
  %i.aq = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ar = or disjoint i64 %i.aq, 1                ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !74
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.at, ptr %i.au, align 4, !tbaa !74
  br label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.ar, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.f ]
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !225 ; 2 uses
  %i.aw = sext i32 %i.k to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !95
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.h ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !74 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !95
  %i.be = icmp ugt i16 %i.ay, %i.bd
  br i1 %i.be, label %bb.h, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ba, ptr %i.bf, align 4, !tbaa !74
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i, label %bb.g, !llvm.loop !9

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %.019.i.i.i.i.i, %bb.g ], [ 0, %bb.h ]
  %i.bg = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.k, ptr %i.bg, align 4, !tbaa !74
  %i.bh = icmp sgt i64 %i.n, 4
  br i1 %i.bh, label %bb.c, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_T0_.exit, !llvm.loop !5750

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.bj, %bb.b ], [ %2, %.lr.ph ]
  %i.bi = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bj = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bk = lshr i64 %i.bi, 1
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %storemerge2143, i64 -4 ; 3 uses
  %i.bn = load i32, ptr %i.f, align 4, !tbaa !74  ; 3 uses
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !74 ; 3 uses
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !225 ; 6 uses
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !95 ; 3 uses
  %i.bt = sext i32 %i.bn to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !95 ; 3 uses
  %i.bw = icmp ugt i16 %i.bs, %i.bv
  %i.bx = load i32, ptr %i.bm, align 4, !tbaa !74 ; 3 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !95 ; 4 uses
  br i1 %i.bw, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.lr.ph44
  %i.cb = icmp ugt i16 %i.ca, %i.bs
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = load i32, ptr %0, align 4, !tbaa !74
  store i32 %i.bo, ptr %0, align 4, !tbaa !74
  store i32 %i.cc, ptr %i.bl, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %i.cd = icmp ugt i16 %i.ca, %i.bv
  %i.ce = load i32, ptr %0, align 4, !tbaa !74    ; 2 uses
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.bx, ptr %0, align 4, !tbaa !74
  store i32 %i.ce, ptr %i.bm, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  store i32 %i.bn, ptr %0, align 4, !tbaa !74
  store i32 %i.ce, ptr %i.f, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.n:                                             ; preds = %.lr.ph44
  %i.cf = icmp ugt i16 %i.ca, %i.bv
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cg = load i32, ptr %0, align 4, !tbaa !74
  store i32 %i.bn, ptr %0, align 4, !tbaa !74
  store i32 %i.cg, ptr %i.f, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %i.ch = icmp ugt i16 %i.ca, %i.bs
  %i.ci = load i32, ptr %0, align 4, !tbaa !74    ; 2 uses
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.bx, ptr %0, align 4, !tbaa !74
  store i32 %i.ci, ptr %i.bm, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.r:                                             ; preds = %bb.p
  store i32 %i.bo, ptr %0, align 4, !tbaa !74
  store i32 %i.ci, ptr %i.bl, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader: ; preds = %bb.r, %bb.q, %bb.o, %bb.m, %bb.l, %bb.j
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader, %bb.u
  %.sroa.011.0.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.u ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %.sroa.014.0.i.i = phi ptr [ %i.cs, %bb.u ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %i.cj = load i32, ptr %0, align 4, !tbaa !74
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !95 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i ], [ %i.cs, %bb.s ] ; 8 uses
  %i.cn = load i32, ptr %.sroa.014.1.i.i, align 4, !tbaa !74 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !95
  %i.cr = icmp ugt i16 %i.cm, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 4 ; 2 uses
  br i1 %i.cr, label %bb.s, label %.preheader.i.i, !llvm.loop !5751

.preheader.i.i:                                   ; preds = %bb.s, %.preheader.i.i
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.1.i.i, %.preheader.i.i ], [ %.sroa.011.0.i.i, %bb.s ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -4 ; 5 uses
  %i.ct = load i32, ptr %.sroa.011.1.i.i, align 4, !tbaa !74 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !95
  %i.cx = icmp ugt i16 %i.cw, %i.cm
  br i1 %i.cx, label %.preheader.i.i, label %bb.t, !llvm.loop !5752

bb.t:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %.not.i.i, label %bb.u, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEET_SI_SI_T0_.exit

bb.u:                                             ; preds = %bb.t
  store i32 %i.ct, ptr %.sroa.014.1.i.i, align 4, !tbaa !74
  store i32 %i.cn, ptr %.sroa.011.1.i.i, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i, !llvm.loop !5753

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEET_SI_SI_T0_.exit: ; preds = %bb.t
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2143, i64 noundef %i.bj, ptr %3)
  %i.cy = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 16
  br i1 %i.db, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_T0_.exit, !llvm.loop !5749

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEET_SI_SI_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.pre22.i = load i32, ptr %0, align 4, !tbaa !74
  %.pre24.i = load ptr, ptr %i.e, align 8, !tbaa !225 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %3 = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %5, %bb.g ] ; 2 uses
  %i.f = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.g = phi i32 [ %.pre22.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.0.020.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.020.i.add, %bb.g ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.020.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.020.i.idx ; 4 uses
  %i.h = load i32, ptr %.sroa.0.020.i.ptr, align 4, !tbaa !74 ; 4 uses
  %i.i = sext i32 %i.g to i64
  %i.j = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !95
  %i.l = sext i32 %i.h to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !95   ; 3 uses
  %i.o = icmp ugt i16 %i.k, %i.n
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ugt i64 %.sroa.0.020.i.idx, 4
  br i1 %i.p, label %bb.d, label %bb.e, !prof !233

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.020.i.idx, i1 false)
  %.pre23.i = load ptr, ptr %i.e, align 8, !tbaa !225 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  store i32 %i.g, ptr %i.q, align 4, !tbaa !74
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %4 = phi ptr [ %.pre23.i, %bb.d ], [ %3, %bb.e ]
  %i.r = phi ptr [ %.pre23.i, %bb.d ], [ %i.f, %bb.e ]
  store i32 %i.h, ptr %0, align 4, !tbaa !74
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.s = load i32, ptr %.pn19.i, align 4, !tbaa !74 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !95
  %i.w = icmp ugt i16 %i.v, %i.n
  br i1 %i.w, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.x = phi i32 [ %i.y, %.lr.ph.i.i ], [ %i.s, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr, %bb.f ]
  store i32 %i.x, ptr %.sroa.05.09.i.i, align 4, !tbaa !74
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.y = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !74 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !95
  %i.ac = icmp ugt i16 %i.ab, %i.n
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i, !llvm.loop !5754

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.h, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !74
  %.pre.i = load i32, ptr %0, align 4, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %5 = phi ptr [ %4, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %3, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i ] ; 4 uses
  %i.ad = phi ptr [ %i.r, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.f, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i ]
  %i.ae = phi i32 [ %i.h, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.020.i.add = add nuw nsw i64 %.sroa.0.020.i.idx, 4 ; 2 uses
  %i.af = icmp eq i64 %.sroa.0.020.i.add, 64
  br i1 %i.af, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %bb.b, !llvm.loop !5755

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit: ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %1
  br i1 %i.ah, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11
  %.sroa.0.07.i = phi ptr [ %i.ax, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11 ], [ %i.ag, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit ] ; 5 uses
  %i.ai = load i32, ptr %.sroa.0.07.i, align 4, !tbaa !74 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %5, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !95 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -4 ; 2 uses
  %i.am = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !74 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [2 x i8], ptr %5, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !95
  %i.aq = icmp ugt i16 %i.ap, %i.al
  br i1 %i.aq, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i13
  %i.ar = phi i32 [ %i.as, %.lr.ph.i.i13 ], [ %i.am, %.lr.ph.i10 ]
  %.sroa.0.010.i.i14 = phi ptr [ %.sroa.0.0.i.i16, %.lr.ph.i.i13 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i15 = phi ptr [ %.sroa.0.010.i.i14, %.lr.ph.i.i13 ], [ %.sroa.0.07.i, %.lr.ph.i10 ]
  store i32 %i.ar, ptr %.sroa.05.09.i.i15, align 4, !tbaa !74
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i14, i64 -4 ; 2 uses
  %i.as = load i32, ptr %.sroa.0.0.i.i16, align 4, !tbaa !74 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %5, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !95
  %i.aw = icmp ugt i16 %i.av, %i.al
  br i1 %i.aw, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11, !llvm.loop !5754

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i13, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i14, %.lr.ph.i.i13 ]
  store i32 %i.ai, ptr %.sroa.05.0.lcssa.i.i12, align 4, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 4 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %1
  br i1 %i.ay, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i10, !llvm.loop !5756

bb.h:                                             ; preds = %bb.a
  %i.az = icmp eq ptr %0, %1
  br i1 %i.az, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.h
  %.sroa.0.018.i18 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ba = icmp eq ptr %.sroa.0.018.i18, %1
  br i1 %i.ba, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i17
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.pre22.i20 = load i32, ptr %0, align 4, !tbaa !74
  %.pre24.i21 = load ptr, ptr %i.bb, align 8, !tbaa !225
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i19
  %i.bc = phi ptr [ %.pre24.i21, %.lr.ph.i19 ], [ %i.ch, %bb.o ] ; 7 uses
  %i.bd = phi i32 [ %.pre22.i20, %.lr.ph.i19 ], [ %i.ci, %bb.o ] ; 2 uses
  %.sroa.0.020.i22 = phi ptr [ %.sroa.0.018.i18, %.lr.ph.i19 ], [ %.sroa.0.0.i27, %bb.o ] ; 6 uses
  %.pn19.i23 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.020.i22, %bb.o ] ; 4 uses
  %i.be = load i32, ptr %.sroa.0.020.i22, align 4, !tbaa !74 ; 4 uses
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !95
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !95 ; 3 uses
  %i.bl = icmp ugt i16 %i.bh, %i.bk
  br i1 %i.bl, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bm = ptrtoint ptr %.sroa.0.020.i22 to i64
  %i.bn = sub i64 %i.bm, %i.b                     ; 3 uses
  %i.bo = ashr exact i64 %i.bn, 2                 ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 1
  br i1 %i.bp, label %bb.k, label %bb.l, !prof !233

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 8
  %i.br = sub nsw i64 0, %i.bo
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.br
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bs, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bn, i1 false)
  %.pre23.i33 = load ptr, ptr %i.bb, align 8, !tbaa !225
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32

bb.l:                                             ; preds = %bb.j
  %i.bt = icmp eq i64 %i.bn, 4
  br i1 %i.bt, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 4
  store i32 %i.bd, ptr %i.bu, align 4, !tbaa !74
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32: ; preds = %bb.m, %bb.l, %bb.k
  %i.bv = phi ptr [ %.pre23.i33, %bb.k ], [ %i.bc, %bb.l ], [ %i.bc, %bb.m ]
  store i32 %i.be, ptr %0, align 4, !tbaa !74
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bw = load i32, ptr %.pn19.i23, align 4, !tbaa !74 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !95
  %i.ca = icmp ugt i16 %i.bz, %i.bk
  br i1 %i.ca, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24

.lr.ph.i.i28:                                     ; preds = %bb.n, %.lr.ph.i.i28
  %i.cb = phi i32 [ %i.cc, %.lr.ph.i.i28 ], [ %i.bw, %bb.n ]
  %.sroa.0.010.i.i29 = phi ptr [ %.sroa.0.0.i.i31, %.lr.ph.i.i28 ], [ %.pn19.i23, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i30 = phi ptr [ %.sroa.0.010.i.i29, %.lr.ph.i.i28 ], [ %.sroa.0.020.i22, %bb.n ]
  store i32 %i.cb, ptr %.sroa.05.09.i.i30, align 4, !tbaa !74
  %.sroa.0.0.i.i31 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i29, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %.sroa.0.0.i.i31, align 4, !tbaa !74 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !95
  %i.cg = icmp ugt i16 %i.cf, %i.bk
  br i1 %i.cg, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24, !llvm.loop !5754

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24: ; preds = %.lr.ph.i.i28, %bb.n
  %.sroa.05.0.lcssa.i.i25 = phi ptr [ %.sroa.0.020.i22, %bb.n ], [ %.sroa.0.010.i.i29, %.lr.ph.i.i28 ]
  store i32 %i.be, ptr %.sroa.05.0.lcssa.i.i25, align 4, !tbaa !74
  %.pre.i26 = load i32, ptr %0, align 4, !tbaa !74
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32
  %i.ch = phi ptr [ %i.bv, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32 ], [ %i.bc, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24 ]
  %i.ci = phi i32 [ %i.be, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32 ], [ %.pre.i26, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24 ]
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i22, i64 4 ; 2 uses
  %i.cj = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %i.cj, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %bb.i, !llvm.loop !5755

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11, %.preheader.i17, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !5758
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32 ; 4 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.ba, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !74   ; 2 uses
  %i.s = icmp slt i64 %.09.us, %i.i
  br i1 %i.s, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !225  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.u = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = load i32, ptr %i.w, align 4, !tbaa !74
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !74
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !95
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !95
  %i.ah = icmp ugt i16 %i.ad, %i.ag
  %spec.select.i.us = select i1 %i.ah, i64 %i.x, i64 %i.v ; 6 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !74
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.us
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !74
  %i.al = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.al, label %bb.c, label %._crit_edge.i.us, !llvm.loop !8

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.am = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.am, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !225 ; 2 uses
  %i.ao = sext i32 %i.r to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !95
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !74 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !95
  %i.aw = icmp ugt i16 %i.aq, %i.av
  br i1 %i.aw, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.as, ptr %i.ax, align 4, !tbaa !74
  %i.ay = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ay, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us, !llvm.loop !9
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_T1_:bb.a
  %i.ak = icmp slt i64 %spec.select.i.i.i.i, %i.q
  br i1 %i.ak, label %bb.d, label %._crit_edge.i.i.i.i, !llvm.loop !15

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.c ], [ %spec.select.i.i.i.i, %bb.d ] ; 5 uses
  %i.al = and i64 %i.n, 4
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.an = add nsw i64 %i.o, -2
  %i.ao = ashr exact i64 %i.an, 1
  %i.ap = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ao
  br i1 %i.ap, label %.thread.i.i.i, label %bb.f

.thread.i.i.i:                                    ; preds = %bb.e
  %i.aq = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ar = or disjoint i64 %i.aq, 1                ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !74
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.at, ptr %i.au, align 4, !tbaa !74
  br label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.ar, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.f ]
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !270 ; 2 uses
  %i.aw = sext i32 %i.k to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !95
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.h ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !74 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !95
  %i.be = icmp ugt i16 %i.ay, %i.bd
  br i1 %i.be, label %bb.h, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ba, ptr %i.bf, align 4, !tbaa !74
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i, label %bb.g, !llvm.loop !16

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %.019.i.i.i.i.i, %bb.g ], [ 0, %bb.h ]
  %i.bg = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.k, ptr %i.bg, align 4, !tbaa !74
  %i.bh = icmp sgt i64 %i.n, 4
  br i1 %i.bh, label %bb.c, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_T0_.exit, !llvm.loop !7663

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.bj, %bb.b ], [ %2, %.lr.ph ]
  %i.bi = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bj = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bk = lshr i64 %i.bi, 1
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %storemerge2143, i64 -4 ; 3 uses
  %i.bn = load i32, ptr %i.f, align 4, !tbaa !74  ; 3 uses
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !74 ; 3 uses
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !270 ; 6 uses
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !95 ; 3 uses
  %i.bt = sext i32 %i.bn to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !95 ; 3 uses
  %i.bw = icmp ugt i16 %i.bs, %i.bv
  %i.bx = load i32, ptr %i.bm, align 4, !tbaa !74 ; 3 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !95 ; 4 uses
  br i1 %i.bw, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.lr.ph44
  %i.cb = icmp ugt i16 %i.ca, %i.bs
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = load i32, ptr %0, align 4, !tbaa !74
  store i32 %i.bo, ptr %0, align 4, !tbaa !74
  store i32 %i.cc, ptr %i.bl, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %i.cd = icmp ugt i16 %i.ca, %i.bv
  %i.ce = load i32, ptr %0, align 4, !tbaa !74    ; 2 uses
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.bx, ptr %0, align 4, !tbaa !74
  store i32 %i.ce, ptr %i.bm, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  store i32 %i.bn, ptr %0, align 4, !tbaa !74
  store i32 %i.ce, ptr %i.f, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.n:                                             ; preds = %.lr.ph44
  %i.cf = icmp ugt i16 %i.ca, %i.bv
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cg = load i32, ptr %0, align 4, !tbaa !74
  store i32 %i.bn, ptr %0, align 4, !tbaa !74
  store i32 %i.cg, ptr %i.f, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %i.ch = icmp ugt i16 %i.ca, %i.bs
  %i.ci = load i32, ptr %0, align 4, !tbaa !74    ; 2 uses
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.bx, ptr %0, align 4, !tbaa !74
  store i32 %i.ci, ptr %i.bm, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.r:                                             ; preds = %bb.p
  store i32 %i.bo, ptr %0, align 4, !tbaa !74
  store i32 %i.ci, ptr %i.bl, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader: ; preds = %bb.r, %bb.q, %bb.o, %bb.m, %bb.l, %bb.j
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader, %bb.u
  %.sroa.011.0.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.u ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %.sroa.014.0.i.i = phi ptr [ %i.cs, %bb.u ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %i.cj = load i32, ptr %0, align 4, !tbaa !74
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !95 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i ], [ %i.cs, %bb.s ] ; 8 uses
  %i.cn = load i32, ptr %.sroa.014.1.i.i, align 4, !tbaa !74 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !95
  %i.cr = icmp ugt i16 %i.cm, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 4 ; 2 uses
  br i1 %i.cr, label %bb.s, label %.preheader.i.i, !llvm.loop !7664

.preheader.i.i:                                   ; preds = %bb.s, %.preheader.i.i
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.1.i.i, %.preheader.i.i ], [ %.sroa.011.0.i.i, %bb.s ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -4 ; 5 uses
  %i.ct = load i32, ptr %.sroa.011.1.i.i, align 4, !tbaa !74 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !95
  %i.cx = icmp ugt i16 %i.cw, %i.cm
  br i1 %i.cx, label %.preheader.i.i, label %bb.t, !llvm.loop !7665

bb.t:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %.not.i.i, label %bb.u, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEET_SI_SI_T0_.exit

bb.u:                                             ; preds = %bb.t
  store i32 %i.ct, ptr %.sroa.014.1.i.i, align 4, !tbaa !74
  store i32 %i.cn, ptr %.sroa.011.1.i.i, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i, !llvm.loop !7666

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEET_SI_SI_T0_.exit: ; preds = %bb.t
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2143, i64 noundef %i.bj, ptr %3)
  %i.cy = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 16
  br i1 %i.db, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_T0_.exit, !llvm.loop !7662

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEET_SI_SI_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.pre22.i = load i32, ptr %0, align 4, !tbaa !74
  %.pre24.i = load ptr, ptr %i.e, align 8, !tbaa !270 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %3 = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %5, %bb.g ] ; 2 uses
  %i.f = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.g = phi i32 [ %.pre22.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.0.020.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.020.i.add, %bb.g ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.020.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.020.i.idx ; 4 uses
  %i.h = load i32, ptr %.sroa.0.020.i.ptr, align 4, !tbaa !74 ; 4 uses
  %i.i = sext i32 %i.g to i64
  %i.j = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !95
  %i.l = sext i32 %i.h to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !95   ; 3 uses
  %i.o = icmp ugt i16 %i.k, %i.n
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ugt i64 %.sroa.0.020.i.idx, 4
  br i1 %i.p, label %bb.d, label %bb.e, !prof !233

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.020.i.idx, i1 false)
  %.pre23.i = load ptr, ptr %i.e, align 8, !tbaa !270 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  store i32 %i.g, ptr %i.q, align 4, !tbaa !74
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %4 = phi ptr [ %.pre23.i, %bb.d ], [ %3, %bb.e ]
  %i.r = phi ptr [ %.pre23.i, %bb.d ], [ %i.f, %bb.e ]
  store i32 %i.h, ptr %0, align 4, !tbaa !74
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.s = load i32, ptr %.pn19.i, align 4, !tbaa !74 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !95
  %i.w = icmp ugt i16 %i.v, %i.n
  br i1 %i.w, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.x = phi i32 [ %i.y, %.lr.ph.i.i ], [ %i.s, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr, %bb.f ]
  store i32 %i.x, ptr %.sroa.05.09.i.i, align 4, !tbaa !74
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.y = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !74 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !95
  %i.ac = icmp ugt i16 %i.ab, %i.n
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i, !llvm.loop !7667

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.h, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !74
  %.pre.i = load i32, ptr %0, align 4, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %5 = phi ptr [ %4, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %3, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i ] ; 4 uses
  %i.ad = phi ptr [ %i.r, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.f, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i ]
  %i.ae = phi i32 [ %i.h, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.020.i.add = add nuw nsw i64 %.sroa.0.020.i.idx, 4 ; 2 uses
  %i.af = icmp eq i64 %.sroa.0.020.i.add, 64
  br i1 %i.af, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %bb.b, !llvm.loop !7668

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit: ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %1
  br i1 %i.ah, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11
  %.sroa.0.07.i = phi ptr [ %i.ax, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11 ], [ %i.ag, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit ] ; 5 uses
  %i.ai = load i32, ptr %.sroa.0.07.i, align 4, !tbaa !74 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %5, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !95 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -4 ; 2 uses
  %i.am = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !74 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [2 x i8], ptr %5, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !95
  %i.aq = icmp ugt i16 %i.ap, %i.al
  br i1 %i.aq, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i13
  %i.ar = phi i32 [ %i.as, %.lr.ph.i.i13 ], [ %i.am, %.lr.ph.i10 ]
  %.sroa.0.010.i.i14 = phi ptr [ %.sroa.0.0.i.i16, %.lr.ph.i.i13 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i15 = phi ptr [ %.sroa.0.010.i.i14, %.lr.ph.i.i13 ], [ %.sroa.0.07.i, %.lr.ph.i10 ]
  store i32 %i.ar, ptr %.sroa.05.09.i.i15, align 4, !tbaa !74
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i14, i64 -4 ; 2 uses
  %i.as = load i32, ptr %.sroa.0.0.i.i16, align 4, !tbaa !74 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %5, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !95
  %i.aw = icmp ugt i16 %i.av, %i.al
  br i1 %i.aw, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11, !llvm.loop !7667

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i13, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i14, %.lr.ph.i.i13 ]
  store i32 %i.ai, ptr %.sroa.05.0.lcssa.i.i12, align 4, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 4 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %1
  br i1 %i.ay, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i10, !llvm.loop !7669

bb.h:                                             ; preds = %bb.a
  %i.az = icmp eq ptr %0, %1
  br i1 %i.az, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.h
  %.sroa.0.018.i18 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ba = icmp eq ptr %.sroa.0.018.i18, %1
  br i1 %i.ba, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i17
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.pre22.i20 = load i32, ptr %0, align 4, !tbaa !74
  %.pre24.i21 = load ptr, ptr %i.bb, align 8, !tbaa !270
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i19
  %i.bc = phi ptr [ %.pre24.i21, %.lr.ph.i19 ], [ %i.ch, %bb.o ] ; 7 uses
  %i.bd = phi i32 [ %.pre22.i20, %.lr.ph.i19 ], [ %i.ci, %bb.o ] ; 2 uses
  %.sroa.0.020.i22 = phi ptr [ %.sroa.0.018.i18, %.lr.ph.i19 ], [ %.sroa.0.0.i27, %bb.o ] ; 6 uses
  %.pn19.i23 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.020.i22, %bb.o ] ; 4 uses
  %i.be = load i32, ptr %.sroa.0.020.i22, align 4, !tbaa !74 ; 4 uses
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !95
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !95 ; 3 uses
  %i.bl = icmp ugt i16 %i.bh, %i.bk
  br i1 %i.bl, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bm = ptrtoint ptr %.sroa.0.020.i22 to i64
  %i.bn = sub i64 %i.bm, %i.b                     ; 3 uses
  %i.bo = ashr exact i64 %i.bn, 2                 ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 1
  br i1 %i.bp, label %bb.k, label %bb.l, !prof !233

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 8
  %i.br = sub nsw i64 0, %i.bo
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.br
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bs, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bn, i1 false)
  %.pre23.i33 = load ptr, ptr %i.bb, align 8, !tbaa !270
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32

bb.l:                                             ; preds = %bb.j
  %i.bt = icmp eq i64 %i.bn, 4
  br i1 %i.bt, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 4
  store i32 %i.bd, ptr %i.bu, align 4, !tbaa !74
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32: ; preds = %bb.m, %bb.l, %bb.k
  %i.bv = phi ptr [ %.pre23.i33, %bb.k ], [ %i.bc, %bb.l ], [ %i.bc, %bb.m ]
  store i32 %i.be, ptr %0, align 4, !tbaa !74
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bw = load i32, ptr %.pn19.i23, align 4, !tbaa !74 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !95
  %i.ca = icmp ugt i16 %i.bz, %i.bk
  br i1 %i.ca, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24

.lr.ph.i.i28:                                     ; preds = %bb.n, %.lr.ph.i.i28
  %i.cb = phi i32 [ %i.cc, %.lr.ph.i.i28 ], [ %i.bw, %bb.n ]
  %.sroa.0.010.i.i29 = phi ptr [ %.sroa.0.0.i.i31, %.lr.ph.i.i28 ], [ %.pn19.i23, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i30 = phi ptr [ %.sroa.0.010.i.i29, %.lr.ph.i.i28 ], [ %.sroa.0.020.i22, %bb.n ]
  store i32 %i.cb, ptr %.sroa.05.09.i.i30, align 4, !tbaa !74
  %.sroa.0.0.i.i31 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i29, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %.sroa.0.0.i.i31, align 4, !tbaa !74 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !95
  %i.cg = icmp ugt i16 %i.cf, %i.bk
  br i1 %i.cg, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24, !llvm.loop !7667

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24: ; preds = %.lr.ph.i.i28, %bb.n
  %.sroa.05.0.lcssa.i.i25 = phi ptr [ %.sroa.0.020.i22, %bb.n ], [ %.sroa.0.010.i.i29, %.lr.ph.i.i28 ]
  store i32 %i.be, ptr %.sroa.05.0.lcssa.i.i25, align 4, !tbaa !74
  %.pre.i26 = load i32, ptr %0, align 4, !tbaa !74
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32
  %i.ch = phi ptr [ %i.bv, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32 ], [ %i.bc, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24 ]
  %i.ci = phi i32 [ %i.be, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32 ], [ %.pre.i26, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24 ]
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i22, i64 4 ; 2 uses
  %i.cj = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %i.cj, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %bb.i, !llvm.loop !7668

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11, %.preheader.i17, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !7671
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32 ; 4 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.ba, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !74   ; 2 uses
  %i.s = icmp slt i64 %.09.us, %i.i
  br i1 %i.s, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !270  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.u = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = load i32, ptr %i.w, align 4, !tbaa !74
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !74
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !95
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !95
  %i.ah = icmp ugt i16 %i.ad, %i.ag
  %spec.select.i.us = select i1 %i.ah, i64 %i.x, i64 %i.v ; 6 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !74
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.us
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !74
  %i.al = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.al, label %bb.c, label %._crit_edge.i.us, !llvm.loop !15

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.am = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.am, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !270 ; 2 uses
  %i.ao = sext i32 %i.r to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !95
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !74 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !95
  %i.aw = icmp ugt i16 %i.aq, %i.av
  br i1 %i.aw, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.as, ptr %i.ax, align 4, !tbaa !74
  %i.ay = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ay, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMaxItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us, !llvm.loop !16
end_hunk_1
begin_hunk_2_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_T1_:bb.a
  %i.ak = icmp slt i64 %spec.select.i.i.i.i, %i.q
  br i1 %i.ak, label %bb.d, label %._crit_edge.i.i.i.i, !llvm.loop !22

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.c ], [ %spec.select.i.i.i.i, %bb.d ] ; 5 uses
  %i.al = and i64 %i.n, 4
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.an = add nsw i64 %i.o, -2
  %i.ao = ashr exact i64 %i.an, 1
  %i.ap = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ao
  br i1 %i.ap, label %.thread.i.i.i, label %bb.f

.thread.i.i.i:                                    ; preds = %bb.e
  %i.aq = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ar = or disjoint i64 %i.aq, 1                ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !74
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.at, ptr %i.au, align 4, !tbaa !74
  br label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.ar, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.f ]
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !306 ; 2 uses
  %i.aw = sext i32 %i.k to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !95
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.h ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !74 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !95
  %i.be = icmp ult i16 %i.ay, %i.bd
  br i1 %i.be, label %bb.h, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ba, ptr %i.bf, align 4, !tbaa !74
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i, label %bb.g, !llvm.loop !23

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %.019.i.i.i.i.i, %bb.g ], [ 0, %bb.h ]
  %i.bg = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.k, ptr %i.bg, align 4, !tbaa !74
  %i.bh = icmp sgt i64 %i.n, 4
  br i1 %i.bh, label %bb.c, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_T0_.exit, !llvm.loop !9578

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.bj, %bb.b ], [ %2, %.lr.ph ]
  %i.bi = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bj = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bk = lshr i64 %i.bi, 1
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %storemerge2143, i64 -4 ; 3 uses
  %i.bn = load i32, ptr %i.f, align 4, !tbaa !74  ; 3 uses
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !74 ; 3 uses
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !306 ; 6 uses
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !95 ; 3 uses
  %i.bt = sext i32 %i.bn to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !95 ; 3 uses
  %i.bw = icmp ult i16 %i.bs, %i.bv
  %i.bx = load i32, ptr %i.bm, align 4, !tbaa !74 ; 3 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !95 ; 4 uses
  br i1 %i.bw, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.lr.ph44
  %i.cb = icmp ult i16 %i.ca, %i.bs
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = load i32, ptr %0, align 4, !tbaa !74
  store i32 %i.bo, ptr %0, align 4, !tbaa !74
  store i32 %i.cc, ptr %i.bl, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %i.cd = icmp ult i16 %i.ca, %i.bv
  %i.ce = load i32, ptr %0, align 4, !tbaa !74    ; 2 uses
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.bx, ptr %0, align 4, !tbaa !74
  store i32 %i.ce, ptr %i.bm, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  store i32 %i.bn, ptr %0, align 4, !tbaa !74
  store i32 %i.ce, ptr %i.f, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.n:                                             ; preds = %.lr.ph44
  %i.cf = icmp ult i16 %i.ca, %i.bv
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cg = load i32, ptr %0, align 4, !tbaa !74
  store i32 %i.bn, ptr %0, align 4, !tbaa !74
  store i32 %i.cg, ptr %i.f, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %i.ch = icmp ult i16 %i.ca, %i.bs
  %i.ci = load i32, ptr %0, align 4, !tbaa !74    ; 2 uses
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.bx, ptr %0, align 4, !tbaa !74
  store i32 %i.ci, ptr %i.bm, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.r:                                             ; preds = %bb.p
  store i32 %i.bo, ptr %0, align 4, !tbaa !74
  store i32 %i.ci, ptr %i.bl, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader: ; preds = %bb.r, %bb.q, %bb.o, %bb.m, %bb.l, %bb.j
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader, %bb.u
  %.sroa.011.0.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.u ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %.sroa.014.0.i.i = phi ptr [ %i.cs, %bb.u ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %i.cj = load i32, ptr %0, align 4, !tbaa !74
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !95 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i ], [ %i.cs, %bb.s ] ; 8 uses
  %i.cn = load i32, ptr %.sroa.014.1.i.i, align 4, !tbaa !74 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !95
  %i.cr = icmp ult i16 %i.cm, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 4 ; 2 uses
  br i1 %i.cr, label %bb.s, label %.preheader.i.i, !llvm.loop !9579

.preheader.i.i:                                   ; preds = %bb.s, %.preheader.i.i
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.1.i.i, %.preheader.i.i ], [ %.sroa.011.0.i.i, %bb.s ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -4 ; 5 uses
  %i.ct = load i32, ptr %.sroa.011.1.i.i, align 4, !tbaa !74 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !95
  %i.cx = icmp ult i16 %i.cw, %i.cm
  br i1 %i.cx, label %.preheader.i.i, label %bb.t, !llvm.loop !9580

bb.t:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %.not.i.i, label %bb.u, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEET_SI_SI_T0_.exit

bb.u:                                             ; preds = %bb.t
  store i32 %i.ct, ptr %.sroa.014.1.i.i, align 4, !tbaa !74
  store i32 %i.cn, ptr %.sroa.011.1.i.i, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i, !llvm.loop !9581

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEET_SI_SI_T0_.exit: ; preds = %bb.t
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2143, i64 noundef %i.bj, ptr %3)
  %i.cy = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 16
  br i1 %i.db, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_T0_.exit, !llvm.loop !9577

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEET_SI_SI_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.pre22.i = load i32, ptr %0, align 4, !tbaa !74
  %.pre24.i = load ptr, ptr %i.e, align 8, !tbaa !306 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %3 = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %5, %bb.g ] ; 2 uses
  %i.f = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.g = phi i32 [ %.pre22.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.0.020.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.020.i.add, %bb.g ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.020.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.020.i.idx ; 4 uses
  %i.h = load i32, ptr %.sroa.0.020.i.ptr, align 4, !tbaa !74 ; 4 uses
  %i.i = sext i32 %i.g to i64
  %i.j = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !95
  %i.l = sext i32 %i.h to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !95   ; 3 uses
  %i.o = icmp ult i16 %i.k, %i.n
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ugt i64 %.sroa.0.020.i.idx, 4
  br i1 %i.p, label %bb.d, label %bb.e, !prof !233

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.020.i.idx, i1 false)
  %.pre23.i = load ptr, ptr %i.e, align 8, !tbaa !306 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  store i32 %i.g, ptr %i.q, align 4, !tbaa !74
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %4 = phi ptr [ %.pre23.i, %bb.d ], [ %3, %bb.e ]
  %i.r = phi ptr [ %.pre23.i, %bb.d ], [ %i.f, %bb.e ]
  store i32 %i.h, ptr %0, align 4, !tbaa !74
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.s = load i32, ptr %.pn19.i, align 4, !tbaa !74 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !95
  %i.w = icmp ult i16 %i.v, %i.n
  br i1 %i.w, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.x = phi i32 [ %i.y, %.lr.ph.i.i ], [ %i.s, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr, %bb.f ]
  store i32 %i.x, ptr %.sroa.05.09.i.i, align 4, !tbaa !74
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.y = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !74 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !95
  %i.ac = icmp ult i16 %i.ab, %i.n
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i, !llvm.loop !9582

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.h, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !74
  %.pre.i = load i32, ptr %0, align 4, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %5 = phi ptr [ %4, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %3, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i ] ; 4 uses
  %i.ad = phi ptr [ %i.r, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.f, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i ]
  %i.ae = phi i32 [ %i.h, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.020.i.add = add nuw nsw i64 %.sroa.0.020.i.idx, 4 ; 2 uses
  %i.af = icmp eq i64 %.sroa.0.020.i.add, 64
  br i1 %i.af, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %bb.b, !llvm.loop !9583

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit: ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %1
  br i1 %i.ah, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11
  %.sroa.0.07.i = phi ptr [ %i.ax, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11 ], [ %i.ag, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit ] ; 5 uses
  %i.ai = load i32, ptr %.sroa.0.07.i, align 4, !tbaa !74 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %5, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !95 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -4 ; 2 uses
  %i.am = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !74 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [2 x i8], ptr %5, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !95
  %i.aq = icmp ult i16 %i.ap, %i.al
  br i1 %i.aq, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i13
  %i.ar = phi i32 [ %i.as, %.lr.ph.i.i13 ], [ %i.am, %.lr.ph.i10 ]
  %.sroa.0.010.i.i14 = phi ptr [ %.sroa.0.0.i.i16, %.lr.ph.i.i13 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i15 = phi ptr [ %.sroa.0.010.i.i14, %.lr.ph.i.i13 ], [ %.sroa.0.07.i, %.lr.ph.i10 ]
  store i32 %i.ar, ptr %.sroa.05.09.i.i15, align 4, !tbaa !74
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i14, i64 -4 ; 2 uses
  %i.as = load i32, ptr %.sroa.0.0.i.i16, align 4, !tbaa !74 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %5, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !95
  %i.aw = icmp ult i16 %i.av, %i.al
  br i1 %i.aw, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11, !llvm.loop !9582

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i13, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i14, %.lr.ph.i.i13 ]
  store i32 %i.ai, ptr %.sroa.05.0.lcssa.i.i12, align 4, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 4 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %1
  br i1 %i.ay, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i10, !llvm.loop !9584

bb.h:                                             ; preds = %bb.a
  %i.az = icmp eq ptr %0, %1
  br i1 %i.az, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.h
  %.sroa.0.018.i18 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ba = icmp eq ptr %.sroa.0.018.i18, %1
  br i1 %i.ba, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i17
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.pre22.i20 = load i32, ptr %0, align 4, !tbaa !74
  %.pre24.i21 = load ptr, ptr %i.bb, align 8, !tbaa !306
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i19
  %i.bc = phi ptr [ %.pre24.i21, %.lr.ph.i19 ], [ %i.ch, %bb.o ] ; 7 uses
  %i.bd = phi i32 [ %.pre22.i20, %.lr.ph.i19 ], [ %i.ci, %bb.o ] ; 2 uses
  %.sroa.0.020.i22 = phi ptr [ %.sroa.0.018.i18, %.lr.ph.i19 ], [ %.sroa.0.0.i27, %bb.o ] ; 6 uses
  %.pn19.i23 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.020.i22, %bb.o ] ; 4 uses
  %i.be = load i32, ptr %.sroa.0.020.i22, align 4, !tbaa !74 ; 4 uses
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !95
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !95 ; 3 uses
  %i.bl = icmp ult i16 %i.bh, %i.bk
  br i1 %i.bl, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bm = ptrtoint ptr %.sroa.0.020.i22 to i64
  %i.bn = sub i64 %i.bm, %i.b                     ; 3 uses
  %i.bo = ashr exact i64 %i.bn, 2                 ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 1
  br i1 %i.bp, label %bb.k, label %bb.l, !prof !233

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 8
  %i.br = sub nsw i64 0, %i.bo
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.br
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bs, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bn, i1 false)
  %.pre23.i33 = load ptr, ptr %i.bb, align 8, !tbaa !306
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32

bb.l:                                             ; preds = %bb.j
  %i.bt = icmp eq i64 %i.bn, 4
  br i1 %i.bt, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 4
  store i32 %i.bd, ptr %i.bu, align 4, !tbaa !74
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32: ; preds = %bb.m, %bb.l, %bb.k
  %i.bv = phi ptr [ %.pre23.i33, %bb.k ], [ %i.bc, %bb.l ], [ %i.bc, %bb.m ]
  store i32 %i.be, ptr %0, align 4, !tbaa !74
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bw = load i32, ptr %.pn19.i23, align 4, !tbaa !74 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !95
  %i.ca = icmp ult i16 %i.bz, %i.bk
  br i1 %i.ca, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24

.lr.ph.i.i28:                                     ; preds = %bb.n, %.lr.ph.i.i28
  %i.cb = phi i32 [ %i.cc, %.lr.ph.i.i28 ], [ %i.bw, %bb.n ]
  %.sroa.0.010.i.i29 = phi ptr [ %.sroa.0.0.i.i31, %.lr.ph.i.i28 ], [ %.pn19.i23, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i30 = phi ptr [ %.sroa.0.010.i.i29, %.lr.ph.i.i28 ], [ %.sroa.0.020.i22, %bb.n ]
  store i32 %i.cb, ptr %.sroa.05.09.i.i30, align 4, !tbaa !74
  %.sroa.0.0.i.i31 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i29, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %.sroa.0.0.i.i31, align 4, !tbaa !74 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !95
  %i.cg = icmp ult i16 %i.cf, %i.bk
  br i1 %i.cg, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24, !llvm.loop !9582

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24: ; preds = %.lr.ph.i.i28, %bb.n
  %.sroa.05.0.lcssa.i.i25 = phi ptr [ %.sroa.0.020.i22, %bb.n ], [ %.sroa.0.010.i.i29, %.lr.ph.i.i28 ]
  store i32 %i.be, ptr %.sroa.05.0.lcssa.i.i25, align 4, !tbaa !74
  %.pre.i26 = load i32, ptr %0, align 4, !tbaa !74
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32
  %i.ch = phi ptr [ %i.bv, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32 ], [ %i.bc, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24 ]
  %i.ci = phi i32 [ %i.be, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32 ], [ %.pre.i26, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24 ]
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i22, i64 4 ; 2 uses
  %i.cj = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %i.cj, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %bb.i, !llvm.loop !9583

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11, %.preheader.i17, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !9586
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32 ; 4 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.ba, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !74   ; 2 uses
  %i.s = icmp slt i64 %.09.us, %i.i
  br i1 %i.s, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !306  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.u = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = load i32, ptr %i.w, align 4, !tbaa !74
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !74
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !95
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !95
  %i.ah = icmp ult i16 %i.ad, %i.ag
  %spec.select.i.us = select i1 %i.ah, i64 %i.x, i64 %i.v ; 6 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !74
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.us
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !74
  %i.al = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.al, label %bb.c, label %._crit_edge.i.us, !llvm.loop !22

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.am = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.am, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !306 ; 2 uses
  %i.ao = sext i32 %i.r to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !95
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !74 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !95
  %i.aw = icmp ult i16 %i.aq, %i.av
  br i1 %i.aw, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.as, ptr %i.ax, align 4, !tbaa !74
  %i.ay = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ay, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItlEELb1ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us, !llvm.loop !23
end_hunk_2
begin_hunk_3_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_T1_:bb.a
  %i.ak = icmp slt i64 %spec.select.i.i.i.i, %i.q
  br i1 %i.ak, label %bb.d, label %._crit_edge.i.i.i.i, !llvm.loop !29

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.c ], [ %spec.select.i.i.i.i, %bb.d ] ; 5 uses
  %i.al = and i64 %i.n, 4
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.an = add nsw i64 %i.o, -2
  %i.ao = ashr exact i64 %i.an, 1
  %i.ap = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ao
  br i1 %i.ap, label %.thread.i.i.i, label %bb.f

.thread.i.i.i:                                    ; preds = %bb.e
  %i.aq = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ar = or disjoint i64 %i.aq, 1                ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !74
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.at, ptr %i.au, align 4, !tbaa !74
  br label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.ar, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.f ]
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !341 ; 2 uses
  %i.aw = sext i32 %i.k to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !95
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.h ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !74 ; 2 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !95
  %i.be = icmp ult i16 %i.ay, %i.bd
  br i1 %i.be, label %bb.h, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ba, ptr %i.bf, align 4, !tbaa !74
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i, label %bb.g, !llvm.loop !30

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %.019.i.i.i.i.i, %bb.g ], [ 0, %bb.h ]
  %i.bg = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.k, ptr %i.bg, align 4, !tbaa !74
  %i.bh = icmp sgt i64 %i.n, 4
  br i1 %i.bh, label %bb.c, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_T0_.exit, !llvm.loop !11493

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.bj, %bb.b ], [ %2, %.lr.ph ]
  %i.bi = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bj = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bk = lshr i64 %i.bi, 1
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bk ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %storemerge2143, i64 -4 ; 3 uses
  %i.bn = load i32, ptr %i.f, align 4, !tbaa !74  ; 3 uses
  %i.bo = load i32, ptr %i.bl, align 4, !tbaa !74 ; 3 uses
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !341 ; 6 uses
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !95 ; 3 uses
  %i.bt = sext i32 %i.bn to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !95 ; 3 uses
  %i.bw = icmp ult i16 %i.bs, %i.bv
  %i.bx = load i32, ptr %i.bm, align 4, !tbaa !74 ; 3 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !95 ; 4 uses
  br i1 %i.bw, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.lr.ph44
  %i.cb = icmp ult i16 %i.ca, %i.bs
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cc = load i32, ptr %0, align 4, !tbaa !74
  store i32 %i.bo, ptr %0, align 4, !tbaa !74
  store i32 %i.cc, ptr %i.bl, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.k:                                             ; preds = %bb.i
  %i.cd = icmp ult i16 %i.ca, %i.bv
  %i.ce = load i32, ptr %0, align 4, !tbaa !74    ; 2 uses
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 %i.bx, ptr %0, align 4, !tbaa !74
  store i32 %i.ce, ptr %i.bm, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  store i32 %i.bn, ptr %0, align 4, !tbaa !74
  store i32 %i.ce, ptr %i.f, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.n:                                             ; preds = %.lr.ph44
  %i.cf = icmp ult i16 %i.ca, %i.bv
  br i1 %i.cf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cg = load i32, ptr %0, align 4, !tbaa !74
  store i32 %i.bn, ptr %0, align 4, !tbaa !74
  store i32 %i.cg, ptr %i.f, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %i.ch = icmp ult i16 %i.ca, %i.bs
  %i.ci = load i32, ptr %0, align 4, !tbaa !74    ; 2 uses
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.bx, ptr %0, align 4, !tbaa !74
  store i32 %i.ci, ptr %i.bm, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.r:                                             ; preds = %bb.p
  store i32 %i.bo, ptr %0, align 4, !tbaa !74
  store i32 %i.ci, ptr %i.bl, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader: ; preds = %bb.r, %bb.q, %bb.o, %bb.m, %bb.l, %bb.j
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader, %bb.u
  %.sroa.011.0.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.u ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %.sroa.014.0.i.i = phi ptr [ %i.cs, %bb.u ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %i.cj = load i32, ptr %0, align 4, !tbaa !74
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !95 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i ], [ %i.cs, %bb.s ] ; 8 uses
  %i.cn = load i32, ptr %.sroa.014.1.i.i, align 4, !tbaa !74 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !95
  %i.cr = icmp ult i16 %i.cm, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 4 ; 2 uses
  br i1 %i.cr, label %bb.s, label %.preheader.i.i, !llvm.loop !11494

.preheader.i.i:                                   ; preds = %bb.s, %.preheader.i.i
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.1.i.i, %.preheader.i.i ], [ %.sroa.011.0.i.i, %bb.s ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -4 ; 5 uses
  %i.ct = load i32, ptr %.sroa.011.1.i.i, align 4, !tbaa !74 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !95
  %i.cx = icmp ult i16 %i.cw, %i.cm
  br i1 %i.cx, label %.preheader.i.i, label %bb.t, !llvm.loop !11495

bb.t:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %.not.i.i, label %bb.u, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEET_SI_SI_T0_.exit

bb.u:                                             ; preds = %bb.t
  store i32 %i.ct, ptr %.sroa.014.1.i.i, align 4, !tbaa !74
  store i32 %i.cn, ptr %.sroa.011.1.i.i, align 4, !tbaa !74
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_SI_T0_.exit.i, !llvm.loop !11496

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEET_SI_SI_T0_.exit: ; preds = %bb.t
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2143, i64 noundef %i.bj, ptr %3)
  %i.cy = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 16
  br i1 %i.db, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_T0_.exit, !llvm.loop !11492

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEET_SI_SI_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_SI_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.pre22.i = load i32, ptr %0, align 4, !tbaa !74
  %.pre24.i = load ptr, ptr %i.e, align 8, !tbaa !341 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %3 = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %5, %bb.g ] ; 2 uses
  %i.f = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.g = phi i32 [ %.pre22.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.0.020.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.020.i.add, %bb.g ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.020.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.020.i.idx ; 4 uses
  %i.h = load i32, ptr %.sroa.0.020.i.ptr, align 4, !tbaa !74 ; 4 uses
  %i.i = sext i32 %i.g to i64
  %i.j = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2, !tbaa !95
  %i.l = sext i32 %i.h to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !95   ; 3 uses
  %i.o = icmp ult i16 %i.k, %i.n
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ugt i64 %.sroa.0.020.i.idx, 4
  br i1 %i.p, label %bb.d, label %bb.e, !prof !233

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.020.i.idx, i1 false)
  %.pre23.i = load ptr, ptr %i.e, align 8, !tbaa !341 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  store i32 %i.g, ptr %i.q, align 4, !tbaa !74
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %4 = phi ptr [ %.pre23.i, %bb.d ], [ %3, %bb.e ]
  %i.r = phi ptr [ %.pre23.i, %bb.d ], [ %i.f, %bb.e ]
  store i32 %i.h, ptr %0, align 4, !tbaa !74
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.s = load i32, ptr %.pn19.i, align 4, !tbaa !74 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !95
  %i.w = icmp ult i16 %i.v, %i.n
  br i1 %i.w, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.x = phi i32 [ %i.y, %.lr.ph.i.i ], [ %i.s, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr, %bb.f ]
  store i32 %i.x, ptr %.sroa.05.09.i.i, align 4, !tbaa !74
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.y = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !74 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !95
  %i.ac = icmp ult i16 %i.ab, %i.n
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i, !llvm.loop !11497

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.h, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !74
  %.pre.i = load i32, ptr %0, align 4, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %5 = phi ptr [ %4, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %3, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i ] ; 4 uses
  %i.ad = phi ptr [ %i.r, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.f, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i ]
  %i.ae = phi i32 [ %i.h, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.020.i.add = add nuw nsw i64 %.sroa.0.020.i.idx, 4 ; 2 uses
  %i.af = icmp eq i64 %.sroa.0.020.i.add, 64
  br i1 %i.af, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %bb.b, !llvm.loop !11498

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit: ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %1
  br i1 %i.ah, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11
  %.sroa.0.07.i = phi ptr [ %i.ax, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11 ], [ %i.ag, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit ] ; 5 uses
  %i.ai = load i32, ptr %.sroa.0.07.i, align 4, !tbaa !74 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %5, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !95 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -4 ; 2 uses
  %i.am = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !74 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [2 x i8], ptr %5, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !95
  %i.aq = icmp ult i16 %i.ap, %i.al
  br i1 %i.aq, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i13
  %i.ar = phi i32 [ %i.as, %.lr.ph.i.i13 ], [ %i.am, %.lr.ph.i10 ]
  %.sroa.0.010.i.i14 = phi ptr [ %.sroa.0.0.i.i16, %.lr.ph.i.i13 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i15 = phi ptr [ %.sroa.0.010.i.i14, %.lr.ph.i.i13 ], [ %.sroa.0.07.i, %.lr.ph.i10 ]
  store i32 %i.ar, ptr %.sroa.05.09.i.i15, align 4, !tbaa !74
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i14, i64 -4 ; 2 uses
  %i.as = load i32, ptr %.sroa.0.0.i.i16, align 4, !tbaa !74 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %5, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !95
  %i.aw = icmp ult i16 %i.av, %i.al
  br i1 %i.aw, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11, !llvm.loop !11497

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i13, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i14, %.lr.ph.i.i13 ]
  store i32 %i.ai, ptr %.sroa.05.0.lcssa.i.i12, align 4, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 4 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %1
  br i1 %i.ay, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i10, !llvm.loop !11499

bb.h:                                             ; preds = %bb.a
  %i.az = icmp eq ptr %0, %1
  br i1 %i.az, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.h
  %.sroa.0.018.i18 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ba = icmp eq ptr %.sroa.0.018.i18, %1
  br i1 %i.ba, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i17
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.pre22.i20 = load i32, ptr %0, align 4, !tbaa !74
  %.pre24.i21 = load ptr, ptr %i.bb, align 8, !tbaa !341
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i19
  %i.bc = phi ptr [ %.pre24.i21, %.lr.ph.i19 ], [ %i.ch, %bb.o ] ; 7 uses
  %i.bd = phi i32 [ %.pre22.i20, %.lr.ph.i19 ], [ %i.ci, %bb.o ] ; 2 uses
  %.sroa.0.020.i22 = phi ptr [ %.sroa.0.018.i18, %.lr.ph.i19 ], [ %.sroa.0.0.i27, %bb.o ] ; 6 uses
  %.pn19.i23 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.020.i22, %bb.o ] ; 4 uses
  %i.be = load i32, ptr %.sroa.0.020.i22, align 4, !tbaa !74 ; 4 uses
  %i.bf = sext i32 %i.bd to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !95
  %i.bi = sext i32 %i.be to i64
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !95 ; 3 uses
  %i.bl = icmp ult i16 %i.bh, %i.bk
  br i1 %i.bl, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bm = ptrtoint ptr %.sroa.0.020.i22 to i64
  %i.bn = sub i64 %i.bm, %i.b                     ; 3 uses
  %i.bo = ashr exact i64 %i.bn, 2                 ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, 1
  br i1 %i.bp, label %bb.k, label %bb.l, !prof !233

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 8
  %i.br = sub nsw i64 0, %i.bo
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.br
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bs, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bn, i1 false)
  %.pre23.i33 = load ptr, ptr %i.bb, align 8, !tbaa !341
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32

bb.l:                                             ; preds = %bb.j
  %i.bt = icmp eq i64 %i.bn, 4
  br i1 %i.bt, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 4
  store i32 %i.bd, ptr %i.bu, align 4, !tbaa !74
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32: ; preds = %bb.m, %bb.l, %bb.k
  %i.bv = phi ptr [ %.pre23.i33, %bb.k ], [ %i.bc, %bb.l ], [ %i.bc, %bb.m ]
  store i32 %i.be, ptr %0, align 4, !tbaa !74
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bw = load i32, ptr %.pn19.i23, align 4, !tbaa !74 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !95
  %i.ca = icmp ult i16 %i.bz, %i.bk
  br i1 %i.ca, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24

.lr.ph.i.i28:                                     ; preds = %bb.n, %.lr.ph.i.i28
  %i.cb = phi i32 [ %i.cc, %.lr.ph.i.i28 ], [ %i.bw, %bb.n ]
  %.sroa.0.010.i.i29 = phi ptr [ %.sroa.0.0.i.i31, %.lr.ph.i.i28 ], [ %.pn19.i23, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i30 = phi ptr [ %.sroa.0.010.i.i29, %.lr.ph.i.i28 ], [ %.sroa.0.020.i22, %bb.n ]
  store i32 %i.cb, ptr %.sroa.05.09.i.i30, align 4, !tbaa !74
  %.sroa.0.0.i.i31 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i29, i64 -4 ; 2 uses
  %i.cc = load i32, ptr %.sroa.0.0.i.i31, align 4, !tbaa !74 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.bc, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !95
  %i.cg = icmp ult i16 %i.cf, %i.bk
  br i1 %i.cg, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24, !llvm.loop !11497

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24: ; preds = %.lr.ph.i.i28, %bb.n
  %.sroa.05.0.lcssa.i.i25 = phi ptr [ %.sroa.0.020.i22, %bb.n ], [ %.sroa.0.010.i.i29, %.lr.ph.i.i28 ]
  store i32 %i.be, ptr %.sroa.05.0.lcssa.i.i25, align 4, !tbaa !74
  %.pre.i26 = load i32, ptr %0, align 4, !tbaa !74
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32
  %i.ch = phi ptr [ %i.bv, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32 ], [ %i.bc, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24 ]
  %i.ci = phi i32 [ %i.be, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i32 ], [ %.pre.i26, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i24 ]
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i22, i64 4 ; 2 uses
  %i.cj = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %i.cj, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit, label %bb.i, !llvm.loop !11498

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_.exit.i11, %.preheader.i17, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !11501
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32 ; 4 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.n = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.ba, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.r = load i32, ptr %i.q, align 4, !tbaa !74   ; 2 uses
  %i.s = icmp slt i64 %.09.us, %i.i
  br i1 %i.s, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !341  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.u = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %0, i64 %i.x
  %i.z = load i32, ptr %i.w, align 4, !tbaa !74
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !74
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !95
  %i.ae = sext i32 %i.z to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !95
  %i.ah = icmp ult i16 %i.ad, %i.ag
  %spec.select.i.us = select i1 %i.ah, i64 %i.x, i64 %i.v ; 6 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !74
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.us
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !74
  %i.al = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.al, label %bb.c, label %._crit_edge.i.us, !llvm.loop !29

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.am = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.am, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !341 ; 2 uses
  %i.ao = sext i32 %i.r to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !95
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !74 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !95
  %i.aw = icmp ult i16 %i.aq, %i.av
  br i1 %i.aw, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.as, ptr %i.ax, align 4, !tbaa !74
  %i.ay = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ay, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN5faiss20simd_result_handlers16ReservoirHandlerINS9_4CMinItiEELb0ELNS9_9SIMDLevelE0EE3endEvEUliiE_EEEvT_T0_SJ_T1_T2_.exit.us, !llvm.loop !30
end_hunk_3
