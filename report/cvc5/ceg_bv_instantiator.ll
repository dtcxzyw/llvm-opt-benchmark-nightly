Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/ceg_bv_instantiator?download=true
inline.NumInlined: 3539
inline.NumDeleted: 1304
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEElNS1_5__ops15_Iter_less_iterEEvT_SB_T0_T1_:bb.a
  %i.cq = getelementptr inbounds i8, ptr %i.co, i64 -8
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !306, !noalias !812
  %i.cs = icmp ult i32 %i.cr, %i.cm
  br i1 %i.cs, label %.lr.ph.i.i3, label %.preheader.i.i, !llvm.loop !808

bb.o:                                             ; preds = %bb.o, %.preheader.i.i
  %.pn.i.i = phi ptr [ %.sroa.03.0.i, %.preheader.i.i ], [ %storemerge.i.i, %bb.o ] ; 3 uses
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 4 ; 3 uses
  %i.ct = load i32, ptr %.pn.i.i, align 4, !tbaa !306, !noalias !812 ; 2 uses
  %i.cu = icmp ult i32 %i.cm, %i.ct
  br i1 %i.cu, label %bb.o, label %bb.p, !llvm.loop !809

bb.p:                                             ; preds = %bb.o
  %i.cv = icmp ult ptr %storemerge.i.i, %.sroa.04.1.i
  br i1 %i.cv, label %bb.q, label %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEENS1_5__ops15_Iter_less_iterEET_SB_SB_T0_.exit

bb.q:                                             ; preds = %bb.p
  %i.cw = getelementptr inbounds i8, ptr %.sroa.04.1.i, i64 -4 ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !306, !noalias !812
  store i32 %i.ct, ptr %i.cw, align 4, !tbaa !306, !noalias !812
  store i32 %i.cx, ptr %.pn.i.i, align 4, !tbaa !306, !noalias !812
  br label %_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_.exit.i, !llvm.loop !810

_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEENS1_5__ops15_Iter_less_iterEET_SB_SB_T0_.exit: ; preds = %bb.p
  %i.cy = ptrtoint ptr %.sroa.04.1.i to i64       ; 5 uses
  store i64 %i.cy, ptr %6, align 8, !tbaa !321
  store i64 %i.bo, ptr %7, align 8, !tbaa !321
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEElNS1_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr noundef nonnull align 8 dead_on_return %6, ptr noundef nonnull align 8 dead_on_return %7, i64 noundef %i.bp)
  store i64 %i.cy, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.cz = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.da = sub i64 %i.cz, %i.cy
  %i.db = icmp sgt i64 %i.da, 64
  br i1 %i.db, label %.lr.ph, label %.loopexit, !llvm.loop !802

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEENS1_5__ops15_Iter_less_iterEET_SB_SB_T0_.exit, %bb.a, %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_SB_T0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef align 8 dead_on_return %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %5 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !321
  store i64 %i.a, ptr %4, align 8, !tbaa !321
  %i.b = load i64, ptr %1, align 8, !tbaa !321
  store i64 %i.b, ptr %5, align 8, !tbaa !321
  call void @_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr noundef nonnull align 8 dead_on_return %4, ptr noundef nonnull align 8 dead_on_return %5, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.c = load i64, ptr %1, align 8, !tbaa !321    ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 5 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %2, align 8, !tbaa !321 ; 5 uses
  %i.e = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !tbaa !321    ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 13 uses
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 7 uses
  %i.i = sub i64 %i.f, %i.c
  %.fr = freeze i64 %i.i                          ; 2 uses
  %i.j = ashr i64 %.fr, 2                         ; 4 uses
  %i.k = add nsw i64 %i.j, -1
  %i.l = lshr i64 %i.k, 1
  %i.m = icmp sgt i64 %i.j, 2
  %i.n = and i64 %.fr, 4
  %i.o = icmp eq i64 %i.n, 0                      ; 2 uses
  %i.p = add nsw i64 %i.j, -2                     ; 3 uses
  %i.q = ashr exact i64 %i.p, 1                   ; 2 uses
  br i1 %i.m, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.r = or disjoint i64 %i.p, 1
  %i.s = sub nsw i64 1, %i.j
  %i.t = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.v = sub nsw i64 0, %i.q
  %i.w = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.d
  %.sroa.05.07.us = phi ptr [ %i.y, %bb.d ], [ %i.d, %.lr.ph.split.us.preheader ]
  %i.y = getelementptr inbounds i8, ptr %.sroa.05.07.us, i64 -4 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !306  ; 3 uses
  %i.aa = load i32, ptr %i.h, align 4, !tbaa !306 ; 2 uses
  %i.ab = icmp ult i32 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i.preheader.us, label %bb.d

.lr.ph.i.i.preheader.us:                          ; preds = %.lr.ph.split.us
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !306
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader.us, %.lr.ph.i.i.us
  %.030.i.i.us = phi i64 [ %spec.select.i.i.us, %.lr.ph.i.i.us ], [ 0, %.lr.ph.i.i.preheader.us ] ; 2 uses
  %i.ac = shl i64 %.030.i.i.us, 1                 ; 4 uses
  %i.ad = add i64 %i.ac, 2
  %i.ae = sub nuw nsw i64 -2, %i.ac
  %i.af = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ae
  %i.ag = or disjoint i64 %i.ac, 1
  %i.ah = xor i64 %i.ac, -1
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !306
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !306
  %i.an = icmp ult i32 %i.ak, %i.am
  %spec.select.i.i.us = select i1 %i.an, i64 %i.ag, i64 %i.ad ; 6 uses
  %i.ao = sub i64 0, %spec.select.i.i.us
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !306
  %i.as = sub i64 0, %.030.i.i.us
  %i.at = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.as
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.ar, ptr %i.au, align 4, !tbaa !306
  %i.av = icmp slt i64 %spec.select.i.i.us, %i.l
  br i1 %i.av, label %.lr.ph.i.i.us, label %._crit_edge.i.i.loopexit.us, !llvm.loop !17

bb.b:                                             ; preds = %._crit_edge.i.i.loopexit.us
  %.not.i.us = icmp eq i64 %spec.select.i.i.us, 0
  br i1 %.not.i.us, label %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.us, label %.lr.ph.i.i.i.us.preheader

.thread.i.us:                                     ; preds = %._crit_edge.i.i.loopexit.us
  %i.aw = load i32, ptr %i.u, align 4, !tbaa !306
  store i32 %i.aw, ptr %i.x, align 4, !tbaa !306
  br label %.lr.ph.i.i.i.us.preheader

.lr.ph.i.i.i.us.preheader:                        ; preds = %.thread.i.us, %bb.b
  %.0916.i.i.i.us.ph = phi i64 [ %spec.select.i.i.us, %bb.b ], [ %i.r, %.thread.i.us ]
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %bb.c
  %.0916.i.i.i.us = phi i64 [ %.017.i.i23.i.us, %bb.c ], [ %.0916.i.i.i.us.ph, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.017.in.i.i.i.us = add nsw i64 %.0916.i.i.i.us, -1
  %.017.i.i23.i.us = lshr i64 %.017.in.i.i.i.us, 1 ; 3 uses
  %i.ax = sub nsw i64 0, %.017.i.i23.i.us
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !306 ; 2 uses
  %i.bb = icmp ult i32 %i.ba, %i.z
  br i1 %i.bb, label %bb.c, label %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.i.us
  %i.bc = sub nsw i64 0, %.0916.i.i.i.us
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  store i32 %i.ba, ptr %i.be, align 4, !tbaa !306
  %.not4.i.us = icmp eq i64 %.017.i.i23.i.us, 0
  br i1 %.not4.i.us, label %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.us, label %.lr.ph.i.i.i.us, !llvm.loop !18

_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.us: ; preds = %.lr.ph.i.i.i.us, %bb.c, %bb.b
  %.09.lcssa.i.i.i.us = phi i64 [ 0, %bb.b ], [ %.0916.i.i.i.us, %.lr.ph.i.i.i.us ], [ 0, %bb.c ]
  %i.bf = sub nsw i64 0, %.09.lcssa.i.i.i.us
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -4
  store i32 %i.z, ptr %i.bh, align 4, !tbaa !306
  br label %bb.d

bb.d:                                             ; preds = %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.us, %.lr.ph.split.us
  %i.bi = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.y
  br i1 %i.bi, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !813

._crit_edge.i.i.loopexit.us:                      ; preds = %.lr.ph.i.i.us
  %i.bj = icmp eq i64 %spec.select.i.i.us, %i.q
  %or.cond = select i1 %i.o, i1 %i.bj, i1 false
  br i1 %or.cond, label %.thread.i.us, label %bb.b

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bk = getelementptr inbounds i8, ptr %i.g, i64 -8
  br i1 %i.o, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.bl = icmp eq i64 %i.p, 0
  br i1 %i.bl, label %.lr.ph.split.split.us.split.us.preheader, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us.preheader:         ; preds = %.lr.ph.split.split.us
  %i.bm = getelementptr inbounds i8, ptr %i.g, i64 -8
  br label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us.split.us.preheader, %6
  %.sroa.05.07.us8.us = phi ptr [ %i.bn, %6 ], [ %i.d, %.lr.ph.split.split.us.split.us.preheader ]
  %i.bn = getelementptr inbounds i8, ptr %.sroa.05.07.us8.us, i64 -4 ; 4 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !306 ; 3 uses
  %i.bp = load i32, ptr %i.h, align 4, !tbaa !306 ; 2 uses
  %i.bq = icmp ult i32 %i.bo, %i.bp
  br i1 %i.bq, label %._crit_edge.i.i.us9.us, label %6

._crit_edge.i.i.us9.us:                           ; preds = %.lr.ph.split.split.us.split.us
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !306
  %i.br = load i32, ptr %i.bk, align 4, !tbaa !306 ; 3 uses
  store i32 %i.br, ptr %i.h, align 4, !tbaa !306
  %i.bs = icmp ult i32 %i.br, %i.bo
  br i1 %i.bs, label %bb.e, label %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.loopexit.us18.us

bb.e:                                             ; preds = %._crit_edge.i.i.us9.us
  store i32 %i.br, ptr %i.bm, align 4, !tbaa !306
  br label %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.loopexit.us18.us

6:                                                ; preds = %_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.loopexit.us18.us, %.lr.ph.split.split.us.split.us
  %7 = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.bn
  br i1 %7, label %.lr.ph.split.split.us.split.us, label %._crit_edge, !llvm.loop !813

_ZSt10__pop_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_.exit.loopexit.us18.us: ; preds = %bb.e, %._crit_edge.i.i.us9.us
  %.09.lcssa.i.i.i.ph.us19.us.neg = phi i64 [ -1, %._crit_edge.i.i.us9.us ], [ 0, %bb.e ]
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.09.lcssa.i.i.i.ph.us19.us.neg
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  store i32 %i.bo, ptr %i.bu, align 4, !tbaa !306
  br label %6

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us
  %.pre27 = load i32, ptr %i.h, align 4, !tbaa !306
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.split.split.us.split
  %i.bv = phi i32 [ %.pre27, %.lr.ph.split.split.us.split ], [ %i.bz, %bb.g ] ; 3 uses
  %.sroa.05.07.us8 = phi ptr [ %i.d, %.lr.ph.split.split.us.split ], [ %i.bw, %bb.g ]
  %i.bw = getelementptr inbounds i8, ptr %.sroa.05.07.us8, i64 -4 ; 4 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !306 ; 3 uses
  %i.by = icmp ult i32 %i.bx, %i.bv
  br i1 %i.by, label %._crit_edge.i.i.us9, label %bb.g

._crit_edge.i.i.us9:                              ; preds = %bb.f
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !306
  store i32 %i.bx, ptr %i.h, align 4, !tbaa !306
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.us9, %bb.f
  %i.bz = phi i32 [ %i.bx, %._crit_edge.i.i.us9 ], [ %i.bv, %bb.f ]
  %i.ca = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.bw
  br i1 %i.ca, label %bb.f, label %._crit_edge, !llvm.loop !813

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %.pre = load i32, ptr %i.h, align 4, !tbaa !306
  br label %bb.h

._crit_edge:                                      ; preds = %bb.i, %bb.g, %6, %bb.d, %bb.a
  ret void

bb.h:                                             ; preds = %.lr.ph.split.split, %bb.i
  %i.cb = phi i32 [ %.pre, %.lr.ph.split.split ], [ %i.cf, %bb.i ] ; 3 uses
  %.sroa.05.07 = phi ptr [ %i.d, %.lr.ph.split.split ], [ %i.cc, %bb.i ]
  %i.cc = getelementptr inbounds i8, ptr %.sroa.05.07, i64 -4 ; 4 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !306 ; 3 uses
  %i.ce = icmp ult i32 %i.cd, %i.cb
  br i1 %i.ce, label %._crit_edge.i.i, label %bb.i

._crit_edge.i.i:                                  ; preds = %bb.h
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !306
  store i32 %i.cd, ptr %i.h, align 4, !tbaa !306
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i
  %i.cf = phi i32 [ %i.cb, %bb.h ], [ %i.cd, %._crit_edge.i.i ]
  %i.cg = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.cc
  br i1 %i.cg, label %bb.h, label %._crit_edge, !llvm.loop !813
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEENS1_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr noundef align 8 dead_on_return %0, ptr noundef align 8 dead_on_return %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 19 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !321
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 4 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1
  %i.n = sub nsw i64 1, %i.d
  %i.o = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.q = sub nsw i64 0, %i.l
  %i.r = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEljNS1_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.bf, %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEljNS1_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.t = sub i64 0, %.08.us
  %i.u = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !306  ; 2 uses
  %i.x = icmp slt i64 %.08.us, %i.i
  br i1 %i.x, label %.lr.ph.i.us, label %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEljNS1_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.030.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.y = shl i64 %.030.i.us, 1                    ; 4 uses
  %i.z = add i64 %i.y, 2
  %i.aa = sub nuw nsw i64 -2, %i.y
  %i.ab = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.aa
  %i.ac = or disjoint i64 %i.y, 1
  %i.ad = xor i64 %i.y, -1
  %i.ae = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !306
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !306
  %i.aj = icmp ult i32 %i.ag, %i.ai
  %spec.select.i.us = select i1 %i.aj, i64 %i.ac, i64 %i.z ; 6 uses
  %i.ak = sub i64 0, %spec.select.i.us
  %i.al = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !306
  %i.ao = sub i64 0, %.030.i.us
  %i.ap = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -4
  store i32 %i.an, ptr %i.aq, align 4, !tbaa !306
  %i.ar = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ar, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !17

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.as = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.as, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEljNS1_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.0916.i.i.us = phi i64 [ %.017.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.017.in.i.i.us = add nsw i64 %.0916.i.i.us, -1
  %.017.i.i.us = sdiv i64 %.017.in.i.i.us, 2      ; 4 uses
  %i.at = sub nsw i64 0, %.017.i.i.us
  %i.au = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.at
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !306 ; 2 uses
  %i.ax = icmp ult i32 %i.aw, %i.w
  br i1 %i.ax, label %bb.c, label %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEljNS1_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ay = sub nsw i64 0, %.0916.i.i.us
  %i.az = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -4
  store i32 %i.aw, ptr %i.ba, align 4, !tbaa !306
  %i.bb = icmp sgt i64 %.017.i.i.us, %.08.us
  br i1 %i.bb, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEljNS1_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.us, !llvm.loop !18

_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEljNS1_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.09.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.0916.i.i.us, %.lr.ph.i.i.us ], [ %.017.i.i.us, %bb.c ]
  %i.bc = sub nsw i64 0, %.09.lcssa.i.i.us
  %i.bd = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  store i32 %i.w, ptr %i.be, align 4, !tbaa !306
  %.not.us = icmp eq i64 %.08.us, 0
  %i.bf = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !814

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEljNS1_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit
  %.08 = phi i64 [ %i.cu, %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEljNS1_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.bg = sub i64 0, %.08
  %i.bh = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !306 ; 2 uses
  %i.bk = icmp slt i64 %.08, %i.i
  br i1 %i.bk, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.030.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.bl = shl i64 %.030.i, 1                      ; 4 uses
  %i.bm = add i64 %i.bl, 2
  %i.bn = sub nuw nsw i64 -2, %i.bl
  %i.bo = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bn
  %i.bp = or disjoint i64 %i.bl, 1
  %i.bq = xor i64 %i.bl, -1
  %i.br = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !306
  %i.bu = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !306
  %i.bw = icmp ult i32 %i.bt, %i.bv
  %spec.select.i = select i1 %i.bw, i64 %i.bp, i64 %i.bm ; 4 uses
  %i.bx = sub i64 0, %spec.select.i
  %i.by = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !306
  %i.cb = sub i64 0, %.030.i
  %i.cc = getelementptr inbounds [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4
  store i32 %i.ca, ptr %i.cd, align 4, !tbaa !306
  %i.ce = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ce, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.cf = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.cf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.cg = load i32, ptr %i.p, align 4, !tbaa !306
  store i32 %i.cg, ptr %i.s, align 4, !tbaa !306
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.122.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.ch = icmp sgt i64 %.122.i, %.08
  br i1 %i.ch, label %.lr.ph.i.i, label %_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEEljNS1_5__ops15_Iter_less_iterEEvT_T0_SC_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
end_hunk_0
