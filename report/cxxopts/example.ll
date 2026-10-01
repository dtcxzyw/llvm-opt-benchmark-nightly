Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cxxopts/original/example?download=true
inline.NumInlined: 9080
inline.NumDeleted: 3223
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_:bb.a
.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -1 ; 4 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !70    ; 2 uses
  %i.j = load i8, ptr %0, align 1, !tbaa !70
  store i8 %i.j, ptr %i.h, align 1, !tbaa !70
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 5 uses
  %i.m = add nsw i64 %i.l, -1
  %i.n = lshr i64 %i.m, 1
  %i.o = icmp sgt i64 %i.l, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.035.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.035.i.i.i.i, 1                 ; 2 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %0, i64 %i.q
  %i.s = or disjoint i64 %i.p, 1                  ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = load i8, ptr %i.r, align 1, !tbaa !70
  %i.v = load i8, ptr %i.t, align 1, !tbaa !70
  %i.w = icmp slt i8 %i.u, %i.v
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.s, i64 %i.q ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.i.i.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !70
  %i.z = getelementptr inbounds i8, ptr %0, i64 %.035.i.i.i.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !70
  %i.aa = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !21

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ab = and i64 %i.l, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ad = add nsw i64 %i.l, -2
  %i.ae = ashr exact i64 %i.ad, 1
  %i.af = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ae
  br i1 %i.af, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ag = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ah = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !70
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i.i.i
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !70
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.019.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ah, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.019.i.i.i.i.i = phi i64 [ %.0920.i.i56.i.i.i, %bb.e ], [ %.019.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i56.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i56.i.i.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !70  ; 2 uses
  %i.an = icmp slt i8 %i.am, %i.i
  br i1 %i.an, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %.019.i.i.i.i.i
  store i8 %i.am, ptr %i.ao, align 1, !tbaa !70
  %.not7.i.i.i = icmp eq i64 %.0920.i.i56.i.i.i, 0
  br i1 %.not7.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !22

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.ap = getelementptr inbounds i8, ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i8 %i.i, ptr %i.ap, align 1, !tbaa !70
  %i.aq = icmp sgt i64 %i.l, 1
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !1097

.lr.ph43:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1742 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01841 = phi i64 [ %i.as, %bb.b ], [ %2, %.lr.ph ]
  %i.ar = phi i64 [ %i.bq, %bb.b ], [ %i.c, %.lr.ph ]
  %i.as = add nsw i64 %.01841, -1                 ; 3 uses
  %i.at = lshr i64 %i.ar, 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %storemerge1742, i64 -1 ; 3 uses
  %i.aw = load i8, ptr %i.e, align 1, !tbaa !70   ; 5 uses
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !70  ; 5 uses
  %i.ay = icmp slt i8 %i.aw, %i.ax
  %i.az = load i8, ptr %i.av, align 1, !tbaa !70  ; 6 uses
  br i1 %i.ay, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph43
  %i.ba = icmp slt i8 %i.ax, %i.az
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bb = load i8, ptr %0, align 1, !tbaa !70
  store i8 %i.ax, ptr %0, align 1, !tbaa !70
  store i8 %i.bb, ptr %i.au, align 1, !tbaa !70
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bc = icmp slt i8 %i.aw, %i.az
  %i.bd = load i8, ptr %0, align 1, !tbaa !70     ; 2 uses
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 %i.az, ptr %0, align 1, !tbaa !70
  store i8 %i.bd, ptr %i.av, align 1, !tbaa !70
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i8 %i.aw, ptr %0, align 1, !tbaa !70
  store i8 %i.bd, ptr %i.e, align 1, !tbaa !70
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph43
  %i.be = icmp slt i8 %i.aw, %i.az
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = load i8, ptr %0, align 1, !tbaa !70
  store i8 %i.aw, ptr %0, align 1, !tbaa !70
  store i8 %i.bf, ptr %i.e, align 1, !tbaa !70
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bg = icmp slt i8 %i.ax, %i.az
  %i.bh = load i8, ptr %0, align 1, !tbaa !70     ; 2 uses
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 %i.az, ptr %0, align 1, !tbaa !70
  store i8 %i.bh, ptr %i.av, align 1, !tbaa !70
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i8 %i.ax, ptr %0, align 1, !tbaa !70
  store i8 %i.bh, ptr %i.au, align 1, !tbaa !70
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.010.0.i.i = phi ptr [ %i.bl, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bi = load i8, ptr %0, align 1, !tbaa !70     ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bl, %bb.p ] ; 8 uses
  %i.bj = load i8, ptr %.sroa.010.1.i.i, align 1, !tbaa !70 ; 2 uses
  %i.bk = icmp slt i8 %i.bj, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 1 ; 2 uses
  br i1 %i.bk, label %bb.p, label %.preheader.i.i, !llvm.loop !1098

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -1 ; 5 uses
  %i.bm = load i8, ptr %.sroa.0.1.i.i, align 1, !tbaa !70 ; 2 uses
  %i.bn = icmp slt i8 %i.bi, %i.bm
  br i1 %i.bn, label %.preheader.i.i, label %bb.q, !llvm.loop !1099

bb.q:                                             ; preds = %.preheader.i.i
  %i.bo = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.bo, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i8 %i.bm, ptr %.sroa.010.1.i.i, align 1, !tbaa !70
  store i8 %i.bj, ptr %.sroa.0.1.i.i, align 1, !tbaa !70
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !1100

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1742, i64 noundef %i.as)
  %i.bp = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bq = sub i64 %i.bp, %i.a                     ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 16
  br i1 %i.br, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !1096

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.0.015.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.a, %.lr.ph.i
  %.sroa.0.018.i.idx = phi i64 [ 1, %.lr.ph.i ], [ %.sroa.0.018.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.a ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.a ] ; 3 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 4 uses
  %2 = load i8, ptr %.sroa.0.018.i.ptr, align 1, !tbaa !70 ; 4 uses
  %i.e = load i8, ptr %0, align 1, !tbaa !70      ; 2 uses
  %i.f = icmp slt i8 %2, %i.e
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ugt i64 %.sroa.0.018.i.idx, 1
  br i1 %i.g, label %bb.d, label %bb.e, !prof !183

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.015.i.ptr, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.a

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 1
  store i8 %i.e, ptr %i.h, align 1, !tbaa !70
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.a

bb.f:                                             ; preds = %bb.b
  %i.i = load i8, ptr %.pn17.i, align 1, !tbaa !70 ; 2 uses
  %i.j = icmp slt i8 %2, %i.i
  br i1 %i.j, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.a

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.k = phi i8 [ %i.l, %.lr.ph.i.i ], [ %i.i, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ]
  store i8 %i.k, ptr %.sroa.04.08.i.i, align 1, !tbaa !70
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -1 ; 2 uses
  %i.l = load i8, ptr %.sroa.0.0.i.i, align 1, !tbaa !70 ; 2 uses
  %i.m = icmp slt i8 %2, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.a, !llvm.loop !1101

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.a: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i8 %2, ptr %.sink.i, align 1, !tbaa !70
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 1 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 16
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !1102

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not4.i = icmp eq ptr %i.n, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6.preheader

.lr.ph.i6.preheader:                              ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  %i.o = sub i64 %i.a, %i.b
  %i.p = add i64 %i.a, -17
  %xtraiter = and i64 %i.o, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i6.prol.loopexit, label %.lr.ph.i6.prol

.lr.ph.i6.prol:                                   ; preds = %.lr.ph.i6.preheader
  %i.q = load i8, ptr %i.n, align 1, !tbaa !70    ; 3 uses
  %.sroa.0.07.i.i.prol = getelementptr inbounds nuw i8, ptr %0, i64 15 ; 2 uses
  %i.r = load i8, ptr %.sroa.0.07.i.i.prol, align 1, !tbaa !70 ; 2 uses
  %i.s = icmp slt i8 %i.q, %i.r
  br i1 %i.s, label %.lr.ph.i.i8.prol, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol

.lr.ph.i.i8.prol:                                 ; preds = %.lr.ph.i6.prol, %.lr.ph.i.i8.prol
  %i.t = phi i8 [ %i.u, %.lr.ph.i.i8.prol ], [ %i.r, %.lr.ph.i6.prol ]
  %.sroa.0.09.i.i9.prol = phi ptr [ %.sroa.0.0.i.i11.prol, %.lr.ph.i.i8.prol ], [ %.sroa.0.07.i.i.prol, %.lr.ph.i6.prol ] ; 3 uses
  %.sroa.04.08.i.i10.prol = phi ptr [ %.sroa.0.09.i.i9.prol, %.lr.ph.i.i8.prol ], [ %i.n, %.lr.ph.i6.prol ]
  store i8 %i.t, ptr %.sroa.04.08.i.i10.prol, align 1, !tbaa !70
  %.sroa.0.0.i.i11.prol = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9.prol, i64 -1 ; 2 uses
  %i.u = load i8, ptr %.sroa.0.0.i.i11.prol, align 1, !tbaa !70 ; 2 uses
  %i.v = icmp slt i8 %i.q, %i.u
  br i1 %i.v, label %.lr.ph.i.i8.prol, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol, !llvm.loop !1101

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol: ; preds = %.lr.ph.i.i8.prol, %.lr.ph.i6.prol
  %.sroa.04.0.lcssa.i.i.prol = phi ptr [ %i.n, %.lr.ph.i6.prol ], [ %.sroa.0.09.i.i9.prol, %.lr.ph.i.i8.prol ]
  store i8 %i.q, ptr %.sroa.04.0.lcssa.i.i.prol, align 1, !tbaa !70
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 17
  br label %.lr.ph.i6.prol.loopexit

.lr.ph.i6.prol.loopexit:                          ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol, %.lr.ph.i6.preheader
  %.sroa.0.05.i.unr = phi ptr [ %i.n, %.lr.ph.i6.preheader ], [ %i.w, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.prol ]
  %i.x = icmp eq i64 %i.p, %i.b
  br i1 %i.x, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6.prol.loopexit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1
  %.sroa.0.05.i = phi ptr [ %i.al, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1 ], [ %.sroa.0.05.i.unr, %.lr.ph.i6.prol.loopexit ] ; 8 uses
  %i.y = load i8, ptr %.sroa.0.05.i, align 1, !tbaa !70 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -1 ; 2 uses
  %i.z = load i8, ptr %.sroa.0.07.i.i, align 1, !tbaa !70 ; 2 uses
  %i.aa = icmp slt i8 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.a

.lr.ph.i.i8:                                      ; preds = %.lr.ph.i6, %.lr.ph.i.i8
  %i.ab = phi i8 [ %i.ac, %.lr.ph.i.i8 ], [ %i.z, %.lr.ph.i6 ]
  %.sroa.0.09.i.i9 = phi ptr [ %.sroa.0.0.i.i11, %.lr.ph.i.i8 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.04.08.i.i10 = phi ptr [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ], [ %.sroa.0.05.i, %.lr.ph.i6 ]
  store i8 %i.ab, ptr %.sroa.04.08.i.i10, align 1, !tbaa !70
  %.sroa.0.0.i.i11 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9, i64 -1 ; 2 uses
  %i.ac = load i8, ptr %.sroa.0.0.i.i11, align 1, !tbaa !70 ; 2 uses
  %i.ad = icmp slt i8 %i.y, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.a, !llvm.loop !1101

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.a: ; preds = %.lr.ph.i.i8, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i.a = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ]
  store i8 %i.y, ptr %.sroa.04.0.lcssa.i.i.a, align 1, !tbaa !70
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 1 ; 3 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !70  ; 3 uses
  %i.ag = load i8, ptr %.sroa.0.05.i, align 1, !tbaa !70 ; 2 uses
  %i.ah = icmp slt i8 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i8.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1

.lr.ph.i.i8.1:                                    ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.a, %.lr.ph.i.i8.1
  %i.ai = phi i8 [ %i.aj, %.lr.ph.i.i8.1 ], [ %i.ag, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.a ]
  %.sroa.0.09.i.i9.1 = phi ptr [ %.sroa.0.0.i.i11.1, %.lr.ph.i.i8.1 ], [ %.sroa.0.05.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.a ] ; 3 uses
  %.sroa.04.08.i.i10.1 = phi ptr [ %.sroa.0.09.i.i9.1, %.lr.ph.i.i8.1 ], [ %i.ae, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.a ]
  store i8 %i.ai, ptr %.sroa.04.08.i.i10.1, align 1, !tbaa !70
  %.sroa.0.0.i.i11.1 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9.1, i64 -1 ; 2 uses
  %i.aj = load i8, ptr %.sroa.0.0.i.i11.1, align 1, !tbaa !70 ; 2 uses
  %i.ak = icmp slt i8 %i.af, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i8.1, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1, !llvm.loop !1101

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1: ; preds = %.lr.ph.i.i8.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.a
  %.sroa.04.0.lcssa.i.i.1 = phi ptr [ %i.ae, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.a ], [ %.sroa.0.09.i.i9.1, %.lr.ph.i.i8.1 ]
  store i8 %i.af, ptr %.sroa.04.0.lcssa.i.i.1, align 1, !tbaa !70
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 2 ; 2 uses
  %.not.i7.1 = icmp eq ptr %i.al, %1
  br i1 %.not.i7.1, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6, !llvm.loop !1103

bb.g:                                             ; preds = %bb.a
  %i.am = icmp eq ptr %0, %1
  br i1 %i.am, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.preheader.i12

.preheader.i12:                                   ; preds = %bb.g
  %.sroa.0.015.i13 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.not16.i14 = icmp eq ptr %.sroa.0.015.i13, %1
  br i1 %.not16.i14, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.preheader.i12, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18
  %.sroa.0.018.i16 = phi ptr [ %.sroa.0.0.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %.sroa.0.015.i13, %.preheader.i12 ] ; 6 uses
  %.pn17.i17 = phi ptr [ %.sroa.0.018.i16, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %0, %.preheader.i12 ] ; 3 uses
  %3 = load i8, ptr %.sroa.0.018.i16, align 1, !tbaa !70 ; 4 uses
  %i.an = load i8, ptr %0, align 1, !tbaa !70     ; 2 uses
  %i.ao = icmp slt i8 %3, %i.an
  br i1 %i.ao, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i15
  %i.ap = ptrtoint ptr %.sroa.0.018.i16 to i64
  %i.aq = sub i64 %i.ap, %i.b                     ; 3 uses
  %i.ar = icmp sgt i64 %i.aq, 1
  br i1 %i.ar, label %bb.i, label %bb.j, !prof !183

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.015.i13, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.aq, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

bb.j:                                             ; preds = %bb.h
  %i.as = icmp eq i64 %i.aq, 1
  br i1 %i.as, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.pn17.i17, i64 1
  store i8 %i.an, ptr %i.at, align 1, !tbaa !70
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

bb.l:                                             ; preds = %.lr.ph.i15
  %i.au = load i8, ptr %.pn17.i17, align 1, !tbaa !70 ; 2 uses
  %i.av = icmp slt i8 %3, %i.au
  br i1 %i.av, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18

.lr.ph.i.i22:                                     ; preds = %bb.l, %.lr.ph.i.i22
  %i.aw = phi i8 [ %i.ax, %.lr.ph.i.i22 ], [ %i.au, %bb.l ]
  %.sroa.0.09.i.i23 = phi ptr [ %.sroa.0.0.i.i25, %.lr.ph.i.i22 ], [ %.pn17.i17, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i24 = phi ptr [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ], [ %.sroa.0.018.i16, %bb.l ]
  store i8 %i.aw, ptr %.sroa.04.08.i.i24, align 1, !tbaa !70
  %.sroa.0.0.i.i25 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i23, i64 -1 ; 2 uses
  %i.ax = load i8, ptr %.sroa.0.0.i.i25, align 1, !tbaa !70 ; 2 uses
  %i.ay = icmp slt i8 %3, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18, !llvm.loop !1101

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18: ; preds = %.lr.ph.i.i22, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i19 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.018.i16, %bb.l ], [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ]
  store i8 %3, ptr %.sink.i19, align 1, !tbaa !70
  %.sroa.0.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i16, i64 1 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.i20, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15, !llvm.loop !1102

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i18, %.lr.ph.i6.prol.loopexit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.1, %.preheader.i12, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 4 uses
  %i.d = icmp slt i64 %.fr, 2
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %.fr, -2                     ; 3 uses
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %i.g = add nsw i64 %.fr, -1
  %i.h = lshr i64 %i.g, 1                         ; 4 uses
  %i.i = and i64 %.fr, 1
  %i.j = icmp eq i64 %i.i, 0
  %i.k = lshr exact i64 %i.e, 1                   ; 2 uses
  br i1 %i.j, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.l = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.ak, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.f, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds i8, ptr %0, i64 %.08.us
  %i.p = load i8, ptr %i.o, align 1, !tbaa !70    ; 2 uses
  %i.q = icmp slt i64 %.08.us, %i.h
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u
  %i.w = load i8, ptr %i.t, align 1, !tbaa !70
  %i.x = load i8, ptr %i.v, align 1, !tbaa !70
  %i.y = icmp slt i8 %i.w, %i.x
  %spec.select.i.us = select i1 %i.y, i64 %i.u, i64 %i.s ; 6 uses
  %i.z = getelementptr inbounds i8, ptr %0, i64 %spec.select.i.us
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !70
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %.035.i.us
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !70
  %i.ac = icmp slt i64 %spec.select.i.us, %i.h
  br i1 %i.ac, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !21

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ad = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.ad, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i.us
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !70  ; 2 uses
  %i.ag = icmp slt i8 %i.af, %i.p
  br i1 %i.ag, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.i.us
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !70
  %i.ai = icmp sgt i64 %.0920.i.i.us, %.08.us
  br i1 %i.ai, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !22

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i.us
  store i8 %i.p, ptr %i.aj, align 1, !tbaa !70
  %.not.us = icmp eq i64 %.08.us, 0
  %i.ak = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !1104

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.08 = phi i64 [ %i.bj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.f, %.split.preheader ] ; 8 uses
  %i.al = getelementptr inbounds i8, ptr %0, i64 %.08
  %i.am = load i8, ptr %i.al, align 1, !tbaa !70  ; 2 uses
  %i.an = icmp slt i64 %.08, %i.h
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.ao = shl i64 %.035.i, 1                      ; 2 uses
  %i.ap = add i64 %i.ao, 2                        ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %0, i64 %i.ap
  %i.ar = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %0, i64 %i.ar
  %i.at = load i8, ptr %i.aq, align 1, !tbaa !70
  %i.au = load i8, ptr %i.as, align 1, !tbaa !70
  %i.av = icmp slt i8 %i.at, %i.au
  %spec.select.i = select i1 %i.av, i64 %i.ar, i64 %i.ap ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %spec.select.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !70
  %i.ay = getelementptr inbounds i8, ptr %0, i64 %.035.i
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !70
  %i.az = icmp slt i64 %spec.select.i, %i.h
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !21

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ba = icmp eq i64 %.0.lcssa.i, %i.k
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bb = load i8, ptr %i.m, align 1, !tbaa !70
  store i8 %i.bb, ptr %i.n, align 1, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.l, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bc = icmp sgt i64 %.1.i, %.08
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.0920.i.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !70  ; 2 uses
  %i.bf = icmp slt i8 %i.be, %i.am
  br i1 %i.bf, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.i
  store i8 %i.be, ptr %i.bg, align 1, !tbaa !70
  %i.bh = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !22

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i.i
  store i8 %i.am, ptr %i.bi, align 1, !tbaa !70
  %.not = icmp eq i64 %.08, 0
  %i.bj = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !1104

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElcNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #23

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZZNKSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_applyEcSt17integral_constantIbLb0EEENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !467    ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !468   ; 6 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.a, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.016.i.i, 1                    ; 3 uses
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.015.i.i, i64 %i.k ; 2 uses
  %i.l = load i8, ptr %.sink.i.i.i, align 1, !tbaa !70
  %i.m = icmp slt i8 %i.l, %i.f                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 1
  %i.o = xor i64 %i.k, -1
  %i.p = add nsw i64 %.016.i.i, %i.o
  %.sroa.011.1.i.i = select i1 %i.m, ptr %i.n, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.m, i64 %i.p, i64 %i.k    ; 2 uses
  %i.q = icmp sgt i64 %.1.i.i, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, !llvm.loop !23

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %bb.a
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.b, %bb.a ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.011.0.lcssa.i.i, %i.d
  br i1 %.not.i, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i
  %i.r = load i8, ptr %.sroa.011.0.lcssa.i.i, align 1, !tbaa !70
  %.not = icmp slt i8 %i.f, %i.r
  br i1 %.not, label %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread, label %_ZNKSt7__cxx1112regex_traitsIcE7isctypeEcNS1_10_RegexMaskE.exit.thread

_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit.thread: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcNS0_5__ops14_Iter_less_valEET_SA_SA_RKT0_T1_.exit.i, %_ZSt13binary_searchIN9__gnu_cxx17__normal_iteratorIPKcSt6vectorIcSaIcEEEEcEbT_S8_RKT0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !469  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 56
end_hunk_0
