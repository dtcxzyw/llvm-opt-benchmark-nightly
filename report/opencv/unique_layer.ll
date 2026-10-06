Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/unique_layer?download=true
inline.NumInlined: 7981
inline.NumDeleted: 2021
loop-unroll.NumRuntimeUnrolled: 165
loop-unroll.NumUnrolled: 165
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_:bb.a
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !139
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !8

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ak = and i64 %i.m, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add nsw i64 %i.n, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i.i.i, %i.an
  br i1 %i.ao, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !139
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !139
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.aq, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.av = sext i32 %i.j to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !139 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !139
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !139
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !139
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %bb.f, !llvm.loop !9

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.bf, align 4, !tbaa !139
  %i.bg = icmp sgt i64 %i.m, 4
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !801

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.bi, %bb.b ], [ %2, %.lr.ph ]
  %i.bh = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bi = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bj = lshr i64 %i.bh, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %storemerge2143, i64 -4 ; 3 uses
  %i.bm = load i32, ptr %i.f, align 4, !tbaa !139 ; 3 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !139 ; 3 uses
  %i.bo = sext i32 %i.bm to i64
  %i.bp = load ptr, ptr %3, align 8, !tbaa !138   ; 6 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !139 ; 3 uses
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !139 ; 3 uses
  %i.bv = icmp slt i32 %i.br, %i.bu
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !139 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !139 ; 4 uses
  br i1 %i.bv, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.cb, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.cc = icmp slt i32 %i.br, %i.bz
  %i.cd = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.ce = icmp slt i32 %i.br, %i.bz
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cf, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.cg = icmp slt i32 %i.bu, %i.bz
  %i.ch = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.cr, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %0, align 4, !tbaa !139
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !139 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i ], [ %i.cr, %bb.r ] ; 8 uses
  %i.cm = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !139
  %i.cq = icmp slt i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.cq, label %bb.r, label %.preheader.i.i, !llvm.loop !802

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.cs = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !139
  %i.cw = icmp slt i32 %i.cl, %i.cv
  br i1 %i.cw, label %.preheader.i.i, label %bb.s, !llvm.loop !803

bb.s:                                             ; preds = %.preheader.i.i
  %i.cx = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cx, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i32 %i.cs, ptr %.sroa.012.1.i.i, align 4, !tbaa !139
  store i32 %i.cm, ptr %.sroa.09.1.i.i, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i, !llvm.loop !804

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2143, i64 noundef %i.bi, ptr nonnull %3)
  %i.cy = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 16
  br i1 %i.db, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !800

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !138
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.f = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i32, ptr %.sroa.0.021.i.ptr, align 4, !tbaa !139 ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !139  ; 2 uses
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !139
  %i.n = icmp slt i32 %i.j, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i64 %.sroa.0.021.i.idx, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !307

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.f, ptr %i.p, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i32 %i.g, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.r = load i32, ptr %.pn20.i, align 4, !tbaa !139 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !139
  %i.v = icmp slt i32 %i.j, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.w = phi i32 [ %i.x, %.lr.ph.i.i ], [ %i.r, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i32 %i.w, ptr %.sroa.05.09.i.i, align 4, !tbaa !139
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.x = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !139 ; 2 uses
  %i.y = load i32, ptr %i.i, align 4, !tbaa !139
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !139
  %i.ac = icmp slt i32 %i.y, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, !llvm.loop !805

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !139
  %.pre.i = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ad = phi ptr [ %i.q, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ] ; 4 uses
  %i.ae = phi i32 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.b, !llvm.loop !806

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.af, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11
  %.sroa.0.08.i = phi ptr [ %i.aw, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11 ], [ %i.af, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit ] ; 5 uses
  %i.ag = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !139 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !139
  %i.ao = icmp slt i32 %i.ak, %i.an
  br i1 %i.ao, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i14
  %i.ap = phi i32 [ %i.aq, %.lr.ph.i.i14 ], [ %i.aj, %.lr.ph.i10 ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i32 %i.ap, ptr %.sroa.05.09.i.i16, align 4, !tbaa !139
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !139 ; 2 uses
  %i.ar = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.ar, %i.au
  br i1 %i.av, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, !llvm.loop !805

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ag, ptr %.sroa.05.0.lcssa.i.i12, align 4, !tbaa !139
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.aw, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10, !llvm.loop !807

bb.h:                                             ; preds = %bb.a
  %i.ax = icmp eq ptr %0, %1
  br i1 %i.ax, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.018.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i20 = icmp eq ptr %.sroa.0.018.i19, %1
  br i1 %.not19.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre23.i22 = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i23 = load ptr, ptr %2, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.ay = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.ce, %bb.o ] ; 7 uses
  %i.az = phi i32 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.cf, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.018.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.ba = load i32, ptr %.sroa.0.021.i24, align 4, !tbaa !139 ; 4 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !139 ; 2 uses
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !139
  %i.bh = icmp slt i32 %i.bd, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.bj = sub i64 %i.bi, %i.b                     ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !307

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bo, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bj, i1 false)
  %.pre24.i36 = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp eq i64 %i.bj, 4
  br i1 %i.bp, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 4
  store i32 %i.az, ptr %i.bq, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  %i.br = phi ptr [ %.pre24.i36, %bb.k ], [ %i.ay, %bb.l ], [ %i.ay, %bb.m ]
  store i32 %i.ba, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bs = load i32, ptr %.pn20.i25, align 4, !tbaa !139 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !139
  %i.bw = icmp slt i32 %i.bd, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %i.bx = phi i32 [ %i.by, %.lr.ph.i.i31 ], [ %i.bs, %bb.n ]
  %.sroa.0.010.i.i32 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph.i.i31 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i33 = phi ptr [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ], [ %.sroa.0.021.i24, %bb.n ]
  store i32 %i.bx, ptr %.sroa.05.09.i.i33, align 4, !tbaa !139
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32, i64 -4 ; 2 uses
  %i.by = load i32, ptr %.sroa.0.0.i.i34, align 4, !tbaa !139 ; 2 uses
  %i.bz = load i32, ptr %i.bc, align 4, !tbaa !139
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !139
  %i.cd = icmp slt i32 %i.bz, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, !llvm.loop !805

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ]
  store i32 %i.ba, ptr %.sroa.05.0.lcssa.i.i27, align 4, !tbaa !139
  %.pre.i28 = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35
  %i.ce = phi ptr [ %i.br, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %i.ay, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %i.cf = phi i32 [ %i.ba, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.i, !llvm.loop !806

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
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
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !184 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.az, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !139  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 4, !tbaa !139
  %i.z = load i32, ptr %i.x, align 4, !tbaa !139
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !139
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !139
  %i.ag = icmp slt i32 %i.ac, %i.af
  %spec.select.i.us = select i1 %i.ag, i64 %i.w, i64 %i.u ; 6 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !139
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.us
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !139
  %i.ak = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.us, !llvm.loop !8

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.al = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.al, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.am = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  %i.an = sext i32 %i.q to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !139 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !139
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.aq, ptr %i.aw, align 4, !tbaa !139
  %i.ax = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ax, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIhhEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us, !llvm.loop !9

end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_:bb.a
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !139
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !14

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ak = and i64 %i.m, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add nsw i64 %i.n, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i.i.i, %i.an
  br i1 %i.ao, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !139
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !139
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.aq, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.av = sext i32 %i.j to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !139 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !139
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !139
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !139
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %bb.f, !llvm.loop !15

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.bf, align 4, !tbaa !139
  %i.bg = icmp sgt i64 %i.m, 4
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !862

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.bi, %bb.b ], [ %2, %.lr.ph ]
  %i.bh = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bi = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bj = lshr i64 %i.bh, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %storemerge2143, i64 -4 ; 3 uses
  %i.bm = load i32, ptr %i.f, align 4, !tbaa !139 ; 3 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !139 ; 3 uses
  %i.bo = sext i32 %i.bm to i64
  %i.bp = load ptr, ptr %3, align 8, !tbaa !138   ; 6 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !139 ; 3 uses
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !139 ; 3 uses
  %i.bv = icmp slt i32 %i.br, %i.bu
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !139 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !139 ; 4 uses
  br i1 %i.bv, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.cb, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.cc = icmp slt i32 %i.br, %i.bz
  %i.cd = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.ce = icmp slt i32 %i.br, %i.bz
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cf, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.cg = icmp slt i32 %i.bu, %i.bz
  %i.ch = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.cr, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %0, align 4, !tbaa !139
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !139 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i ], [ %i.cr, %bb.r ] ; 8 uses
  %i.cm = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !139
  %i.cq = icmp slt i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.cq, label %bb.r, label %.preheader.i.i, !llvm.loop !863

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.cs = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !139
  %i.cw = icmp slt i32 %i.cl, %i.cv
  br i1 %i.cw, label %.preheader.i.i, label %bb.s, !llvm.loop !864

bb.s:                                             ; preds = %.preheader.i.i
  %i.cx = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cx, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i32 %i.cs, ptr %.sroa.012.1.i.i, align 4, !tbaa !139
  store i32 %i.cm, ptr %.sroa.09.1.i.i, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i, !llvm.loop !865

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2143, i64 noundef %i.bi, ptr nonnull %3)
  %i.cy = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 16
  br i1 %i.db, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !861

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !138
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.f = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i32, ptr %.sroa.0.021.i.ptr, align 4, !tbaa !139 ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !139  ; 2 uses
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !139
  %i.n = icmp slt i32 %i.j, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i64 %.sroa.0.021.i.idx, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !307

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.f, ptr %i.p, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i32 %i.g, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.r = load i32, ptr %.pn20.i, align 4, !tbaa !139 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !139
  %i.v = icmp slt i32 %i.j, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.w = phi i32 [ %i.x, %.lr.ph.i.i ], [ %i.r, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i32 %i.w, ptr %.sroa.05.09.i.i, align 4, !tbaa !139
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.x = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !139 ; 2 uses
  %i.y = load i32, ptr %i.i, align 4, !tbaa !139
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !139
  %i.ac = icmp slt i32 %i.y, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, !llvm.loop !866

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !139
  %.pre.i = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ad = phi ptr [ %i.q, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ] ; 4 uses
  %i.ae = phi i32 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.b, !llvm.loop !867

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.af, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11
  %.sroa.0.08.i = phi ptr [ %i.aw, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11 ], [ %i.af, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit ] ; 5 uses
  %i.ag = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !139 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !139
  %i.ao = icmp slt i32 %i.ak, %i.an
  br i1 %i.ao, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i14
  %i.ap = phi i32 [ %i.aq, %.lr.ph.i.i14 ], [ %i.aj, %.lr.ph.i10 ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i32 %i.ap, ptr %.sroa.05.09.i.i16, align 4, !tbaa !139
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !139 ; 2 uses
  %i.ar = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.ar, %i.au
  br i1 %i.av, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, !llvm.loop !866

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ag, ptr %.sroa.05.0.lcssa.i.i12, align 4, !tbaa !139
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.aw, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10, !llvm.loop !868

bb.h:                                             ; preds = %bb.a
  %i.ax = icmp eq ptr %0, %1
  br i1 %i.ax, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.018.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i20 = icmp eq ptr %.sroa.0.018.i19, %1
  br i1 %.not19.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre23.i22 = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i23 = load ptr, ptr %2, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.ay = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.ce, %bb.o ] ; 7 uses
  %i.az = phi i32 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.cf, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.018.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.ba = load i32, ptr %.sroa.0.021.i24, align 4, !tbaa !139 ; 4 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !139 ; 2 uses
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !139
  %i.bh = icmp slt i32 %i.bd, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.bj = sub i64 %i.bi, %i.b                     ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !307

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bo, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bj, i1 false)
  %.pre24.i36 = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp eq i64 %i.bj, 4
  br i1 %i.bp, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 4
  store i32 %i.az, ptr %i.bq, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  %i.br = phi ptr [ %.pre24.i36, %bb.k ], [ %i.ay, %bb.l ], [ %i.ay, %bb.m ]
  store i32 %i.ba, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bs = load i32, ptr %.pn20.i25, align 4, !tbaa !139 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !139
  %i.bw = icmp slt i32 %i.bd, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %i.bx = phi i32 [ %i.by, %.lr.ph.i.i31 ], [ %i.bs, %bb.n ]
  %.sroa.0.010.i.i32 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph.i.i31 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i33 = phi ptr [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ], [ %.sroa.0.021.i24, %bb.n ]
  store i32 %i.bx, ptr %.sroa.05.09.i.i33, align 4, !tbaa !139
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32, i64 -4 ; 2 uses
  %i.by = load i32, ptr %.sroa.0.0.i.i34, align 4, !tbaa !139 ; 2 uses
  %i.bz = load i32, ptr %i.bc, align 4, !tbaa !139
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !139
  %i.cd = icmp slt i32 %i.bz, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, !llvm.loop !866

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ]
  store i32 %i.ba, ptr %.sroa.05.0.lcssa.i.i27, align 4, !tbaa !139
  %.pre.i28 = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35
  %i.ce = phi ptr [ %i.br, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %i.ay, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %i.cf = phi i32 [ %i.ba, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.i, !llvm.loop !867

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
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
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !184 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.az, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !139  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 4, !tbaa !139
  %i.z = load i32, ptr %i.x, align 4, !tbaa !139
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !139
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !139
  %i.ag = icmp slt i32 %i.ac, %i.af
  %spec.select.i.us = select i1 %i.ag, i64 %i.w, i64 %i.u ; 6 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !139
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.us
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !139
  %i.ak = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.us, !llvm.loop !14

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.al = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.al, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.am = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  %i.an = sext i32 %i.q to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !139 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !139
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.aq, ptr %i.aw, align 4, !tbaa !139
  %i.ax = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ax, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIaaEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us, !llvm.loop !15

end_hunk_1
begin_hunk_2_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_:bb.a
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !139
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !20

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ak = and i64 %i.m, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add nsw i64 %i.n, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i.i.i, %i.an
  br i1 %i.ao, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !139
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !139
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.aq, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.av = sext i32 %i.j to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !139 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !139
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !139
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !139
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %bb.f, !llvm.loop !21

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.bf, align 4, !tbaa !139
  %i.bg = icmp sgt i64 %i.m, 4
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !922

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.bi, %bb.b ], [ %2, %.lr.ph ]
  %i.bh = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bi = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bj = lshr i64 %i.bh, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %storemerge2143, i64 -4 ; 3 uses
  %i.bm = load i32, ptr %i.f, align 4, !tbaa !139 ; 3 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !139 ; 3 uses
  %i.bo = sext i32 %i.bm to i64
  %i.bp = load ptr, ptr %3, align 8, !tbaa !138   ; 6 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !139 ; 3 uses
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !139 ; 3 uses
  %i.bv = icmp slt i32 %i.br, %i.bu
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !139 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !139 ; 4 uses
  br i1 %i.bv, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.cb, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.cc = icmp slt i32 %i.br, %i.bz
  %i.cd = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.ce = icmp slt i32 %i.br, %i.bz
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cf, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.cg = icmp slt i32 %i.bu, %i.bz
  %i.ch = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.cr, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %0, align 4, !tbaa !139
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !139 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i ], [ %i.cr, %bb.r ] ; 8 uses
  %i.cm = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !139
  %i.cq = icmp slt i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.cq, label %bb.r, label %.preheader.i.i, !llvm.loop !923

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.cs = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !139
  %i.cw = icmp slt i32 %i.cl, %i.cv
  br i1 %i.cw, label %.preheader.i.i, label %bb.s, !llvm.loop !924

bb.s:                                             ; preds = %.preheader.i.i
  %i.cx = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cx, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i32 %i.cs, ptr %.sroa.012.1.i.i, align 4, !tbaa !139
  store i32 %i.cm, ptr %.sroa.09.1.i.i, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i, !llvm.loop !925

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2143, i64 noundef %i.bi, ptr nonnull %3)
  %i.cy = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 16
  br i1 %i.db, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !921

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !138
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.f = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i32, ptr %.sroa.0.021.i.ptr, align 4, !tbaa !139 ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !139  ; 2 uses
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !139
  %i.n = icmp slt i32 %i.j, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i64 %.sroa.0.021.i.idx, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !307

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.f, ptr %i.p, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i32 %i.g, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.r = load i32, ptr %.pn20.i, align 4, !tbaa !139 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !139
  %i.v = icmp slt i32 %i.j, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.w = phi i32 [ %i.x, %.lr.ph.i.i ], [ %i.r, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i32 %i.w, ptr %.sroa.05.09.i.i, align 4, !tbaa !139
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.x = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !139 ; 2 uses
  %i.y = load i32, ptr %i.i, align 4, !tbaa !139
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !139
  %i.ac = icmp slt i32 %i.y, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, !llvm.loop !926

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !139
  %.pre.i = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ad = phi ptr [ %i.q, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ] ; 4 uses
  %i.ae = phi i32 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.b, !llvm.loop !927

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.af, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11
  %.sroa.0.08.i = phi ptr [ %i.aw, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11 ], [ %i.af, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit ] ; 5 uses
  %i.ag = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !139 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !139
  %i.ao = icmp slt i32 %i.ak, %i.an
  br i1 %i.ao, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i14
  %i.ap = phi i32 [ %i.aq, %.lr.ph.i.i14 ], [ %i.aj, %.lr.ph.i10 ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i32 %i.ap, ptr %.sroa.05.09.i.i16, align 4, !tbaa !139
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !139 ; 2 uses
  %i.ar = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.ar, %i.au
  br i1 %i.av, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, !llvm.loop !926

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ag, ptr %.sroa.05.0.lcssa.i.i12, align 4, !tbaa !139
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.aw, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10, !llvm.loop !928

bb.h:                                             ; preds = %bb.a
  %i.ax = icmp eq ptr %0, %1
  br i1 %i.ax, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.018.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i20 = icmp eq ptr %.sroa.0.018.i19, %1
  br i1 %.not19.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre23.i22 = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i23 = load ptr, ptr %2, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.ay = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.ce, %bb.o ] ; 7 uses
  %i.az = phi i32 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.cf, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.018.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.ba = load i32, ptr %.sroa.0.021.i24, align 4, !tbaa !139 ; 4 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !139 ; 2 uses
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !139
  %i.bh = icmp slt i32 %i.bd, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.bj = sub i64 %i.bi, %i.b                     ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !307

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bo, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bj, i1 false)
  %.pre24.i36 = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp eq i64 %i.bj, 4
  br i1 %i.bp, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 4
  store i32 %i.az, ptr %i.bq, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  %i.br = phi ptr [ %.pre24.i36, %bb.k ], [ %i.ay, %bb.l ], [ %i.ay, %bb.m ]
  store i32 %i.ba, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bs = load i32, ptr %.pn20.i25, align 4, !tbaa !139 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !139
  %i.bw = icmp slt i32 %i.bd, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %i.bx = phi i32 [ %i.by, %.lr.ph.i.i31 ], [ %i.bs, %bb.n ]
  %.sroa.0.010.i.i32 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph.i.i31 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i33 = phi ptr [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ], [ %.sroa.0.021.i24, %bb.n ]
  store i32 %i.bx, ptr %.sroa.05.09.i.i33, align 4, !tbaa !139
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32, i64 -4 ; 2 uses
  %i.by = load i32, ptr %.sroa.0.0.i.i34, align 4, !tbaa !139 ; 2 uses
  %i.bz = load i32, ptr %i.bc, align 4, !tbaa !139
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !139
  %i.cd = icmp slt i32 %i.bz, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, !llvm.loop !926

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ]
  store i32 %i.ba, ptr %.sroa.05.0.lcssa.i.i27, align 4, !tbaa !139
  %.pre.i28 = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35
  %i.ce = phi ptr [ %i.br, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %i.ay, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %i.cf = phi i32 [ %i.ba, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.i, !llvm.loop !927

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
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
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !184 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.az, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !139  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 4, !tbaa !139
  %i.z = load i32, ptr %i.x, align 4, !tbaa !139
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !139
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !139
  %i.ag = icmp slt i32 %i.ac, %i.af
  %spec.select.i.us = select i1 %i.ag, i64 %i.w, i64 %i.u ; 6 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !139
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.us
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !139
  %i.ak = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.us, !llvm.loop !20

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.al = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.al, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.am = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  %i.an = sext i32 %i.q to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !139 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !139
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.aq, ptr %i.aw, align 4, !tbaa !139
  %i.ax = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ax, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIttEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us, !llvm.loop !21

end_hunk_2
begin_hunk_3_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_:bb.a
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !139
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !26

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ak = and i64 %i.m, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add nsw i64 %i.n, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i.i.i, %i.an
  br i1 %i.ao, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !139
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !139
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.aq, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.av = sext i32 %i.j to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !139 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !139
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !139
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !139
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %bb.f, !llvm.loop !27

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.bf, align 4, !tbaa !139
  %i.bg = icmp sgt i64 %i.m, 4
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !982

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.bi, %bb.b ], [ %2, %.lr.ph ]
  %i.bh = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bi = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bj = lshr i64 %i.bh, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %storemerge2143, i64 -4 ; 3 uses
  %i.bm = load i32, ptr %i.f, align 4, !tbaa !139 ; 3 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !139 ; 3 uses
  %i.bo = sext i32 %i.bm to i64
  %i.bp = load ptr, ptr %3, align 8, !tbaa !138   ; 6 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !139 ; 3 uses
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !139 ; 3 uses
  %i.bv = icmp slt i32 %i.br, %i.bu
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !139 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !139 ; 4 uses
  br i1 %i.bv, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.cb, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.cc = icmp slt i32 %i.br, %i.bz
  %i.cd = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.ce = icmp slt i32 %i.br, %i.bz
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cf, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.cg = icmp slt i32 %i.bu, %i.bz
  %i.ch = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.cr, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %0, align 4, !tbaa !139
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !139 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i ], [ %i.cr, %bb.r ] ; 8 uses
  %i.cm = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !139
  %i.cq = icmp slt i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.cq, label %bb.r, label %.preheader.i.i, !llvm.loop !983

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.cs = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !139
  %i.cw = icmp slt i32 %i.cl, %i.cv
  br i1 %i.cw, label %.preheader.i.i, label %bb.s, !llvm.loop !984

bb.s:                                             ; preds = %.preheader.i.i
  %i.cx = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cx, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i32 %i.cs, ptr %.sroa.012.1.i.i, align 4, !tbaa !139
  store i32 %i.cm, ptr %.sroa.09.1.i.i, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i, !llvm.loop !985

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2143, i64 noundef %i.bi, ptr nonnull %3)
  %i.cy = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 16
  br i1 %i.db, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !981

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !138
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.f = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i32, ptr %.sroa.0.021.i.ptr, align 4, !tbaa !139 ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !139  ; 2 uses
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !139
  %i.n = icmp slt i32 %i.j, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i64 %.sroa.0.021.i.idx, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !307

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.f, ptr %i.p, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i32 %i.g, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.r = load i32, ptr %.pn20.i, align 4, !tbaa !139 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !139
  %i.v = icmp slt i32 %i.j, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.w = phi i32 [ %i.x, %.lr.ph.i.i ], [ %i.r, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i32 %i.w, ptr %.sroa.05.09.i.i, align 4, !tbaa !139
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.x = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !139 ; 2 uses
  %i.y = load i32, ptr %i.i, align 4, !tbaa !139
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !139
  %i.ac = icmp slt i32 %i.y, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, !llvm.loop !986

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !139
  %.pre.i = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ad = phi ptr [ %i.q, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ] ; 4 uses
  %i.ae = phi i32 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.b, !llvm.loop !987

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.af, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11
  %.sroa.0.08.i = phi ptr [ %i.aw, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11 ], [ %i.af, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit ] ; 5 uses
  %i.ag = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !139 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !139
  %i.ao = icmp slt i32 %i.ak, %i.an
  br i1 %i.ao, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i14
  %i.ap = phi i32 [ %i.aq, %.lr.ph.i.i14 ], [ %i.aj, %.lr.ph.i10 ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i32 %i.ap, ptr %.sroa.05.09.i.i16, align 4, !tbaa !139
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !139 ; 2 uses
  %i.ar = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.ar, %i.au
  br i1 %i.av, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, !llvm.loop !986

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ag, ptr %.sroa.05.0.lcssa.i.i12, align 4, !tbaa !139
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.aw, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10, !llvm.loop !988

bb.h:                                             ; preds = %bb.a
  %i.ax = icmp eq ptr %0, %1
  br i1 %i.ax, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.018.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i20 = icmp eq ptr %.sroa.0.018.i19, %1
  br i1 %.not19.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre23.i22 = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i23 = load ptr, ptr %2, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.ay = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.ce, %bb.o ] ; 7 uses
  %i.az = phi i32 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.cf, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.018.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.ba = load i32, ptr %.sroa.0.021.i24, align 4, !tbaa !139 ; 4 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !139 ; 2 uses
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !139
  %i.bh = icmp slt i32 %i.bd, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.bj = sub i64 %i.bi, %i.b                     ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !307

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bo, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bj, i1 false)
  %.pre24.i36 = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp eq i64 %i.bj, 4
  br i1 %i.bp, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 4
  store i32 %i.az, ptr %i.bq, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  %i.br = phi ptr [ %.pre24.i36, %bb.k ], [ %i.ay, %bb.l ], [ %i.ay, %bb.m ]
  store i32 %i.ba, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bs = load i32, ptr %.pn20.i25, align 4, !tbaa !139 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !139
  %i.bw = icmp slt i32 %i.bd, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %i.bx = phi i32 [ %i.by, %.lr.ph.i.i31 ], [ %i.bs, %bb.n ]
  %.sroa.0.010.i.i32 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph.i.i31 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i33 = phi ptr [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ], [ %.sroa.0.021.i24, %bb.n ]
  store i32 %i.bx, ptr %.sroa.05.09.i.i33, align 4, !tbaa !139
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32, i64 -4 ; 2 uses
  %i.by = load i32, ptr %.sroa.0.0.i.i34, align 4, !tbaa !139 ; 2 uses
  %i.bz = load i32, ptr %i.bc, align 4, !tbaa !139
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !139
  %i.cd = icmp slt i32 %i.bz, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, !llvm.loop !986

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ]
  store i32 %i.ba, ptr %.sroa.05.0.lcssa.i.i27, align 4, !tbaa !139
  %.pre.i28 = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35
  %i.ce = phi ptr [ %i.br, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %i.ay, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %i.cf = phi i32 [ %i.ba, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.i, !llvm.loop !987

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
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
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !184 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.az, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !139  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 4, !tbaa !139
  %i.z = load i32, ptr %i.x, align 4, !tbaa !139
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !139
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !139
  %i.ag = icmp slt i32 %i.ac, %i.af
  %spec.select.i.us = select i1 %i.ag, i64 %i.w, i64 %i.u ; 6 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !139
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.us
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !139
  %i.ak = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.us, !llvm.loop !26

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.al = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.al, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.am = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  %i.an = sext i32 %i.q to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !139 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !139
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.aq, ptr %i.aw, align 4, !tbaa !139
  %i.ax = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ax, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIssEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us, !llvm.loop !27

end_hunk_3
begin_hunk_4_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_T1_:bb.a
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !139
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !33

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ak = and i64 %i.m, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add nsw i64 %i.n, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i.i.i, %i.an
  br i1 %i.ao, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !139
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !139
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.aq, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.av = sext i32 %i.j to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !139 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !139
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !139
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !139
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_RT0_.exit.i.i, label %bb.f, !llvm.loop !34

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.bf, align 4, !tbaa !139
  %i.bg = icmp sgt i64 %i.m, 4
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_T0_.exit, !llvm.loop !1040

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.bi, %bb.b ], [ %2, %.lr.ph ]
  %i.bh = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bi = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bj = lshr i64 %i.bh, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %storemerge2143, i64 -4 ; 3 uses
  %i.bm = load i32, ptr %i.f, align 4, !tbaa !139 ; 3 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !139 ; 3 uses
  %i.bo = sext i32 %i.bm to i64
  %i.bp = load ptr, ptr %3, align 8, !tbaa !138   ; 6 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !139 ; 3 uses
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !139 ; 3 uses
  %i.bv = icmp slt i32 %i.br, %i.bu
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !139 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !139 ; 4 uses
  br i1 %i.bv, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.cb, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.cc = icmp slt i32 %i.br, %i.bz
  %i.cd = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.ce = icmp slt i32 %i.br, %i.bz
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cf, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.cg = icmp slt i32 %i.bu, %i.bz
  %i.ch = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.cr, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %0, align 4, !tbaa !139
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !139 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i ], [ %i.cr, %bb.r ] ; 8 uses
  %i.cm = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !139
  %i.cq = icmp slt i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.cq, label %bb.r, label %.preheader.i.i, !llvm.loop !1041

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.cs = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !139
  %i.cw = icmp slt i32 %i.cl, %i.cv
  br i1 %i.cw, label %.preheader.i.i, label %bb.s, !llvm.loop !1042

bb.s:                                             ; preds = %.preheader.i.i
  %i.cx = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cx, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEET_SM_SM_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i32 %i.cs, ptr %.sroa.012.1.i.i, align 4, !tbaa !139
  store i32 %i.cm, ptr %.sroa.09.1.i.i, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i, !llvm.loop !1043

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEET_SM_SM_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2143, i64 noundef %i.bi, ptr nonnull %3)
  %i.cy = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 16
  br i1 %i.db, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_T0_.exit, !llvm.loop !1039

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEET_SM_SM_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !138
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.f = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i32, ptr %.sroa.0.021.i.ptr, align 4, !tbaa !139 ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !139  ; 2 uses
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !139
  %i.n = icmp slt i32 %i.j, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i64 %.sroa.0.021.i.idx, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !307

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.f, ptr %i.p, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i32 %i.g, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.r = load i32, ptr %.pn20.i, align 4, !tbaa !139 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !139
  %i.v = icmp slt i32 %i.j, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.w = phi i32 [ %i.x, %.lr.ph.i.i ], [ %i.r, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i32 %i.w, ptr %.sroa.05.09.i.i, align 4, !tbaa !139
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.x = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !139 ; 2 uses
  %i.y = load i32, ptr %i.i, align 4, !tbaa !139
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !139
  %i.ac = icmp slt i32 %i.y, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i, !llvm.loop !1044

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !139
  %.pre.i = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ad = phi ptr [ %i.q, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i ] ; 4 uses
  %i.ae = phi i32 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit, label %bb.b, !llvm.loop !1045

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.af, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i11
  %.sroa.0.08.i = phi ptr [ %i.aw, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i11 ], [ %i.af, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit ] ; 5 uses
  %i.ag = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !139 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !139
  %i.ao = icmp slt i32 %i.ak, %i.an
  br i1 %i.ao, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i14
  %i.ap = phi i32 [ %i.aq, %.lr.ph.i.i14 ], [ %i.aj, %.lr.ph.i10 ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i32 %i.ap, ptr %.sroa.05.09.i.i16, align 4, !tbaa !139
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !139 ; 2 uses
  %i.ar = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.ar, %i.au
  br i1 %i.av, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i11, !llvm.loop !1044

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ag, ptr %.sroa.05.0.lcssa.i.i12, align 4, !tbaa !139
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.aw, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit, label %.lr.ph.i10, !llvm.loop !1046

bb.h:                                             ; preds = %bb.a
  %i.ax = icmp eq ptr %0, %1
  br i1 %i.ax, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.018.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i20 = icmp eq ptr %.sroa.0.018.i19, %1
  br i1 %.not19.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre23.i22 = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i23 = load ptr, ptr %2, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.ay = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.ce, %bb.o ] ; 7 uses
  %i.az = phi i32 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.cf, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.018.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.ba = load i32, ptr %.sroa.0.021.i24, align 4, !tbaa !139 ; 4 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !139 ; 2 uses
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !139
  %i.bh = icmp slt i32 %i.bd, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.bj = sub i64 %i.bi, %i.b                     ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !307

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bo, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bj, i1 false)
  %.pre24.i36 = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp eq i64 %i.bj, 4
  br i1 %i.bp, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 4
  store i32 %i.az, ptr %i.bq, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  %i.br = phi ptr [ %.pre24.i36, %bb.k ], [ %i.ay, %bb.l ], [ %i.ay, %bb.m ]
  store i32 %i.ba, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bs = load i32, ptr %.pn20.i25, align 4, !tbaa !139 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !139
  %i.bw = icmp slt i32 %i.bd, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %i.bx = phi i32 [ %i.by, %.lr.ph.i.i31 ], [ %i.bs, %bb.n ]
  %.sroa.0.010.i.i32 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph.i.i31 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i33 = phi ptr [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ], [ %.sroa.0.021.i24, %bb.n ]
  store i32 %i.bx, ptr %.sroa.05.09.i.i33, align 4, !tbaa !139
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32, i64 -4 ; 2 uses
  %i.by = load i32, ptr %.sroa.0.0.i.i34, align 4, !tbaa !139 ; 2 uses
  %i.bz = load i32, ptr %i.bc, align 4, !tbaa !139
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !139
  %i.cd = icmp slt i32 %i.bz, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i26, !llvm.loop !1044

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ]
  store i32 %i.ba, ptr %.sroa.05.0.lcssa.i.i27, align 4, !tbaa !139
  %.pre.i28 = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35
  %i.ce = phi ptr [ %i.br, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %i.ay, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %i.cf = phi i32 [ %i.ba, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit, label %bb.i, !llvm.loop !1045

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i11, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
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
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !184 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_SN_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.az, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_SN_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !139  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_SN_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 4, !tbaa !139
  %i.z = load i32, ptr %i.x, align 4, !tbaa !139
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !139
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !139
  %i.ag = icmp slt i32 %i.ac, %i.af
  %spec.select.i.us = select i1 %i.ag, i64 %i.w, i64 %i.u ; 6 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !139
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.us
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !139
  %i.ak = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.us, !llvm.loop !33

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.al = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.al, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_SN_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.am = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  %i.an = sext i32 %i.q to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !139 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !139
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_SN_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.aq, ptr %i.aw, align 4, !tbaa !139
  %i.ax = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ax, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6hfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_SN_T1_T2_.exit.us, !llvm.loop !34

end_hunk_4
begin_hunk_5_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_T1_:bb.a
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !139
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !39

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ak = and i64 %i.m, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add nsw i64 %i.n, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i.i.i, %i.an
  br i1 %i.ao, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !139
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !139
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.aq, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.av = sext i32 %i.j to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !139 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !139
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !139
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !139
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_RT0_.exit.i.i, label %bb.f, !llvm.loop !40

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.bf, align 4, !tbaa !139
  %i.bg = icmp sgt i64 %i.m, 4
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_T0_.exit, !llvm.loop !1099

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.bi, %bb.b ], [ %2, %.lr.ph ]
  %i.bh = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bi = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bj = lshr i64 %i.bh, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %storemerge2143, i64 -4 ; 3 uses
  %i.bm = load i32, ptr %i.f, align 4, !tbaa !139 ; 3 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !139 ; 3 uses
  %i.bo = sext i32 %i.bm to i64
  %i.bp = load ptr, ptr %3, align 8, !tbaa !138   ; 6 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !139 ; 3 uses
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !139 ; 3 uses
  %i.bv = icmp slt i32 %i.br, %i.bu
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !139 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !139 ; 4 uses
  br i1 %i.bv, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.cb, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.cc = icmp slt i32 %i.br, %i.bz
  %i.cd = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.ce = icmp slt i32 %i.br, %i.bz
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cf, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.cg = icmp slt i32 %i.bu, %i.bz
  %i.ch = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.cr, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %0, align 4, !tbaa !139
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !139 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i ], [ %i.cr, %bb.r ] ; 8 uses
  %i.cm = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !139
  %i.cq = icmp slt i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.cq, label %bb.r, label %.preheader.i.i, !llvm.loop !1100

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.cs = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !139
  %i.cw = icmp slt i32 %i.cl, %i.cv
  br i1 %i.cw, label %.preheader.i.i, label %bb.s, !llvm.loop !1101

bb.s:                                             ; preds = %.preheader.i.i
  %i.cx = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cx, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEET_SM_SM_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i32 %i.cs, ptr %.sroa.012.1.i.i, align 4, !tbaa !139
  store i32 %i.cm, ptr %.sroa.09.1.i.i, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_SM_T0_.exit.i, !llvm.loop !1102

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEET_SM_SM_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2143, i64 noundef %i.bi, ptr nonnull %3)
  %i.cy = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 16
  br i1 %i.db, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_T0_.exit, !llvm.loop !1098

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEET_SM_SM_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_SM_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !138
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.f = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i32, ptr %.sroa.0.021.i.ptr, align 4, !tbaa !139 ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !139  ; 2 uses
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !139
  %i.n = icmp slt i32 %i.j, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i64 %.sroa.0.021.i.idx, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !307

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.f, ptr %i.p, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i32 %i.g, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.r = load i32, ptr %.pn20.i, align 4, !tbaa !139 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !139
  %i.v = icmp slt i32 %i.j, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.w = phi i32 [ %i.x, %.lr.ph.i.i ], [ %i.r, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i32 %i.w, ptr %.sroa.05.09.i.i, align 4, !tbaa !139
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.x = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !139 ; 2 uses
  %i.y = load i32, ptr %i.i, align 4, !tbaa !139
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !139
  %i.ac = icmp slt i32 %i.y, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i, !llvm.loop !1103

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !139
  %.pre.i = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ad = phi ptr [ %i.q, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i ] ; 4 uses
  %i.ae = phi i32 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit, label %bb.b, !llvm.loop !1104

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.af, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i11
  %.sroa.0.08.i = phi ptr [ %i.aw, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i11 ], [ %i.af, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit ] ; 5 uses
  %i.ag = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !139 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !139
  %i.ao = icmp slt i32 %i.ak, %i.an
  br i1 %i.ao, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i14
  %i.ap = phi i32 [ %i.aq, %.lr.ph.i.i14 ], [ %i.aj, %.lr.ph.i10 ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i32 %i.ap, ptr %.sroa.05.09.i.i16, align 4, !tbaa !139
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !139 ; 2 uses
  %i.ar = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.ar, %i.au
  br i1 %i.av, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i11, !llvm.loop !1103

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ag, ptr %.sroa.05.0.lcssa.i.i12, align 4, !tbaa !139
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.aw, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit, label %.lr.ph.i10, !llvm.loop !1105

bb.h:                                             ; preds = %bb.a
  %i.ax = icmp eq ptr %0, %1
  br i1 %i.ax, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.018.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i20 = icmp eq ptr %.sroa.0.018.i19, %1
  br i1 %.not19.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre23.i22 = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i23 = load ptr, ptr %2, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.ay = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.ce, %bb.o ] ; 7 uses
  %i.az = phi i32 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.cf, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.018.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.ba = load i32, ptr %.sroa.0.021.i24, align 4, !tbaa !139 ; 4 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !139 ; 2 uses
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !139
  %i.bh = icmp slt i32 %i.bd, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.bj = sub i64 %i.bi, %i.b                     ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !307

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bo, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bj, i1 false)
  %.pre24.i36 = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp eq i64 %i.bj, 4
  br i1 %i.bp, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 4
  store i32 %i.az, ptr %i.bq, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  %i.br = phi ptr [ %.pre24.i36, %bb.k ], [ %i.ay, %bb.l ], [ %i.ay, %bb.m ]
  store i32 %i.ba, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bs = load i32, ptr %.pn20.i25, align 4, !tbaa !139 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !139
  %i.bw = icmp slt i32 %i.bd, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %i.bx = phi i32 [ %i.by, %.lr.ph.i.i31 ], [ %i.bs, %bb.n ]
  %.sroa.0.010.i.i32 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph.i.i31 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i33 = phi ptr [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ], [ %.sroa.0.021.i24, %bb.n ]
  store i32 %i.bx, ptr %.sroa.05.09.i.i33, align 4, !tbaa !139
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32, i64 -4 ; 2 uses
  %i.by = load i32, ptr %.sroa.0.0.i.i34, align 4, !tbaa !139 ; 2 uses
  %i.bz = load i32, ptr %i.bc, align 4, !tbaa !139
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !139
  %i.cd = icmp slt i32 %i.bz, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i26, !llvm.loop !1103

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ]
  store i32 %i.ba, ptr %.sroa.05.0.lcssa.i.i27, align 4, !tbaa !139
  %.pre.i28 = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35
  %i.ce = phi ptr [ %i.br, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %i.ay, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %i.cf = phi i32 [ %i.ba, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit, label %bb.i, !llvm.loop !1104

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_.exit.i11, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_SM_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
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
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !184 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_SN_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.az, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_SN_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !139  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_SN_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 4, !tbaa !139
  %i.z = load i32, ptr %i.x, align 4, !tbaa !139
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !139
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !139
  %i.ag = icmp slt i32 %i.ac, %i.af
  %spec.select.i.us = select i1 %i.ag, i64 %i.w, i64 %i.u ; 6 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !139
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.us
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !139
  %i.ak = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.us, !llvm.loop !39

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.al = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.al, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_SN_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.am = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  %i.an = sext i32 %i.q to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !139 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !139
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_SN_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.aq, ptr %i.aw, align 4, !tbaa !139
  %i.ax = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ax, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplINS9_6bfloatEfEEvRKNS9_3MatERS3_ISE_SaISE_EEibEUliiE_EEEvT_T0_SN_T1_T2_.exit.us, !llvm.loop !40

end_hunk_5
begin_hunk_6_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_:bb.a
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !139
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !45

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ak = and i64 %i.m, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add nsw i64 %i.n, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i.i.i, %i.an
  br i1 %i.ao, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !139
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !139
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.aq, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.av = sext i32 %i.j to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !139 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !139
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !139
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !139
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %bb.f, !llvm.loop !46

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.bf, align 4, !tbaa !139
  %i.bg = icmp sgt i64 %i.m, 4
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !1160

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.bi, %bb.b ], [ %2, %.lr.ph ]
  %i.bh = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bi = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bj = lshr i64 %i.bh, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %storemerge2143, i64 -4 ; 3 uses
  %i.bm = load i32, ptr %i.f, align 4, !tbaa !139 ; 3 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !139 ; 3 uses
  %i.bo = sext i32 %i.bm to i64
  %i.bp = load ptr, ptr %3, align 8, !tbaa !138   ; 6 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !139 ; 3 uses
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !139 ; 3 uses
  %i.bv = icmp slt i32 %i.br, %i.bu
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !139 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !139 ; 4 uses
  br i1 %i.bv, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.cb, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.cc = icmp slt i32 %i.br, %i.bz
  %i.cd = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.ce = icmp slt i32 %i.br, %i.bz
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cf, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.cg = icmp slt i32 %i.bu, %i.bz
  %i.ch = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.cr, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %0, align 4, !tbaa !139
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !139 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i ], [ %i.cr, %bb.r ] ; 8 uses
  %i.cm = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !139
  %i.cq = icmp slt i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.cq, label %bb.r, label %.preheader.i.i, !llvm.loop !1161

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.cs = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !139
  %i.cw = icmp slt i32 %i.cl, %i.cv
  br i1 %i.cw, label %.preheader.i.i, label %bb.s, !llvm.loop !1162

bb.s:                                             ; preds = %.preheader.i.i
  %i.cx = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cx, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i32 %i.cs, ptr %.sroa.012.1.i.i, align 4, !tbaa !139
  store i32 %i.cm, ptr %.sroa.09.1.i.i, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i, !llvm.loop !1163

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2143, i64 noundef %i.bi, ptr nonnull %3)
  %i.cy = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 16
  br i1 %i.db, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !1159

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !138
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.f = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i32, ptr %.sroa.0.021.i.ptr, align 4, !tbaa !139 ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !139  ; 2 uses
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !139
  %i.n = icmp slt i32 %i.j, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i64 %.sroa.0.021.i.idx, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !307

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.f, ptr %i.p, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i32 %i.g, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.r = load i32, ptr %.pn20.i, align 4, !tbaa !139 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !139
  %i.v = icmp slt i32 %i.j, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.w = phi i32 [ %i.x, %.lr.ph.i.i ], [ %i.r, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i32 %i.w, ptr %.sroa.05.09.i.i, align 4, !tbaa !139
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.x = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !139 ; 2 uses
  %i.y = load i32, ptr %i.i, align 4, !tbaa !139
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !139
  %i.ac = icmp slt i32 %i.y, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, !llvm.loop !1164

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !139
  %.pre.i = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ad = phi ptr [ %i.q, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ] ; 4 uses
  %i.ae = phi i32 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.b, !llvm.loop !1165

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.af, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11
  %.sroa.0.08.i = phi ptr [ %i.aw, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11 ], [ %i.af, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit ] ; 5 uses
  %i.ag = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !139 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !139
  %i.ao = icmp slt i32 %i.ak, %i.an
  br i1 %i.ao, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i14
  %i.ap = phi i32 [ %i.aq, %.lr.ph.i.i14 ], [ %i.aj, %.lr.ph.i10 ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i32 %i.ap, ptr %.sroa.05.09.i.i16, align 4, !tbaa !139
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !139 ; 2 uses
  %i.ar = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.ar, %i.au
  br i1 %i.av, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, !llvm.loop !1164

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ag, ptr %.sroa.05.0.lcssa.i.i12, align 4, !tbaa !139
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.aw, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10, !llvm.loop !1166

bb.h:                                             ; preds = %bb.a
  %i.ax = icmp eq ptr %0, %1
  br i1 %i.ax, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.018.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i20 = icmp eq ptr %.sroa.0.018.i19, %1
  br i1 %.not19.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre23.i22 = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i23 = load ptr, ptr %2, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.ay = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.ce, %bb.o ] ; 7 uses
  %i.az = phi i32 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.cf, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.018.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.ba = load i32, ptr %.sroa.0.021.i24, align 4, !tbaa !139 ; 4 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !139 ; 2 uses
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !139
  %i.bh = icmp slt i32 %i.bd, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.bj = sub i64 %i.bi, %i.b                     ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !307

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bo, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bj, i1 false)
  %.pre24.i36 = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp eq i64 %i.bj, 4
  br i1 %i.bp, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 4
  store i32 %i.az, ptr %i.bq, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  %i.br = phi ptr [ %.pre24.i36, %bb.k ], [ %i.ay, %bb.l ], [ %i.ay, %bb.m ]
  store i32 %i.ba, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bs = load i32, ptr %.pn20.i25, align 4, !tbaa !139 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !139
  %i.bw = icmp slt i32 %i.bd, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %i.bx = phi i32 [ %i.by, %.lr.ph.i.i31 ], [ %i.bs, %bb.n ]
  %.sroa.0.010.i.i32 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph.i.i31 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i33 = phi ptr [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ], [ %.sroa.0.021.i24, %bb.n ]
  store i32 %i.bx, ptr %.sroa.05.09.i.i33, align 4, !tbaa !139
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32, i64 -4 ; 2 uses
  %i.by = load i32, ptr %.sroa.0.0.i.i34, align 4, !tbaa !139 ; 2 uses
  %i.bz = load i32, ptr %i.bc, align 4, !tbaa !139
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !139
  %i.cd = icmp slt i32 %i.bz, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, !llvm.loop !1164

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ]
  store i32 %i.ba, ptr %.sroa.05.0.lcssa.i.i27, align 4, !tbaa !139
  %.pre.i28 = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35
  %i.ce = phi ptr [ %i.br, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %i.ay, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %i.cf = phi i32 [ %i.ba, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.i, !llvm.loop !1165

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
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
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !184 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.az, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !139  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 4, !tbaa !139
  %i.z = load i32, ptr %i.x, align 4, !tbaa !139
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !139
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !139
  %i.ag = icmp slt i32 %i.ac, %i.af
  %spec.select.i.us = select i1 %i.ag, i64 %i.w, i64 %i.u ; 6 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !139
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.us
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !139
  %i.ak = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.us, !llvm.loop !45

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.al = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.al, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.am = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  %i.an = sext i32 %i.q to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !139 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !139
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.aq, ptr %i.aw, align 4, !tbaa !139
  %i.ax = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ax, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIjjEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us, !llvm.loop !46

end_hunk_6
begin_hunk_7_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_:bb.a
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !139
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !51

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ak = and i64 %i.m, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add nsw i64 %i.n, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i.i.i, %i.an
  br i1 %i.ao, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !139
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !139
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.aq, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.av = sext i32 %i.j to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !139 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !139
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !139
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !139
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %bb.f, !llvm.loop !52

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.bf, align 4, !tbaa !139
  %i.bg = icmp sgt i64 %i.m, 4
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !1220

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.bi, %bb.b ], [ %2, %.lr.ph ]
  %i.bh = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bi = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bj = lshr i64 %i.bh, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %storemerge2143, i64 -4 ; 3 uses
  %i.bm = load i32, ptr %i.f, align 4, !tbaa !139 ; 3 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !139 ; 3 uses
  %i.bo = sext i32 %i.bm to i64
  %i.bp = load ptr, ptr %3, align 8, !tbaa !138   ; 6 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !139 ; 3 uses
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !139 ; 3 uses
  %i.bv = icmp slt i32 %i.br, %i.bu
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !139 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !139 ; 4 uses
  br i1 %i.bv, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.cb, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.cc = icmp slt i32 %i.br, %i.bz
  %i.cd = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.ce = icmp slt i32 %i.br, %i.bz
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cf, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.cg = icmp slt i32 %i.bu, %i.bz
  %i.ch = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.cr, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %0, align 4, !tbaa !139
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !139 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i ], [ %i.cr, %bb.r ] ; 8 uses
  %i.cm = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !139
  %i.cq = icmp slt i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.cq, label %bb.r, label %.preheader.i.i, !llvm.loop !1221

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.cs = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !139
  %i.cw = icmp slt i32 %i.cl, %i.cv
  br i1 %i.cw, label %.preheader.i.i, label %bb.s, !llvm.loop !1222

bb.s:                                             ; preds = %.preheader.i.i
  %i.cx = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cx, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i32 %i.cs, ptr %.sroa.012.1.i.i, align 4, !tbaa !139
  store i32 %i.cm, ptr %.sroa.09.1.i.i, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i, !llvm.loop !1223

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2143, i64 noundef %i.bi, ptr nonnull %3)
  %i.cy = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 16
  br i1 %i.db, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !1219

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !138
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.f = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i32, ptr %.sroa.0.021.i.ptr, align 4, !tbaa !139 ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !139  ; 2 uses
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !139
  %i.n = icmp slt i32 %i.j, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i64 %.sroa.0.021.i.idx, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !307

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.f, ptr %i.p, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i32 %i.g, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.r = load i32, ptr %.pn20.i, align 4, !tbaa !139 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !139
  %i.v = icmp slt i32 %i.j, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.w = phi i32 [ %i.x, %.lr.ph.i.i ], [ %i.r, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i32 %i.w, ptr %.sroa.05.09.i.i, align 4, !tbaa !139
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.x = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !139 ; 2 uses
  %i.y = load i32, ptr %i.i, align 4, !tbaa !139
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !139
  %i.ac = icmp slt i32 %i.y, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, !llvm.loop !1224

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !139
  %.pre.i = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ad = phi ptr [ %i.q, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ] ; 4 uses
  %i.ae = phi i32 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.b, !llvm.loop !1225

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.af, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11
  %.sroa.0.08.i = phi ptr [ %i.aw, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11 ], [ %i.af, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit ] ; 5 uses
  %i.ag = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !139 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !139
  %i.ao = icmp slt i32 %i.ak, %i.an
  br i1 %i.ao, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i14
  %i.ap = phi i32 [ %i.aq, %.lr.ph.i.i14 ], [ %i.aj, %.lr.ph.i10 ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i32 %i.ap, ptr %.sroa.05.09.i.i16, align 4, !tbaa !139
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !139 ; 2 uses
  %i.ar = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.ar, %i.au
  br i1 %i.av, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, !llvm.loop !1224

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ag, ptr %.sroa.05.0.lcssa.i.i12, align 4, !tbaa !139
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.aw, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10, !llvm.loop !1226

bb.h:                                             ; preds = %bb.a
  %i.ax = icmp eq ptr %0, %1
  br i1 %i.ax, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.018.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i20 = icmp eq ptr %.sroa.0.018.i19, %1
  br i1 %.not19.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre23.i22 = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i23 = load ptr, ptr %2, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.ay = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.ce, %bb.o ] ; 7 uses
  %i.az = phi i32 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.cf, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.018.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.ba = load i32, ptr %.sroa.0.021.i24, align 4, !tbaa !139 ; 4 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !139 ; 2 uses
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !139
  %i.bh = icmp slt i32 %i.bd, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.bj = sub i64 %i.bi, %i.b                     ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !307

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bo, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bj, i1 false)
  %.pre24.i36 = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp eq i64 %i.bj, 4
  br i1 %i.bp, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 4
  store i32 %i.az, ptr %i.bq, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  %i.br = phi ptr [ %.pre24.i36, %bb.k ], [ %i.ay, %bb.l ], [ %i.ay, %bb.m ]
  store i32 %i.ba, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bs = load i32, ptr %.pn20.i25, align 4, !tbaa !139 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !139
  %i.bw = icmp slt i32 %i.bd, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %i.bx = phi i32 [ %i.by, %.lr.ph.i.i31 ], [ %i.bs, %bb.n ]
  %.sroa.0.010.i.i32 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph.i.i31 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i33 = phi ptr [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ], [ %.sroa.0.021.i24, %bb.n ]
  store i32 %i.bx, ptr %.sroa.05.09.i.i33, align 4, !tbaa !139
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32, i64 -4 ; 2 uses
  %i.by = load i32, ptr %.sroa.0.0.i.i34, align 4, !tbaa !139 ; 2 uses
  %i.bz = load i32, ptr %i.bc, align 4, !tbaa !139
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !139
  %i.cd = icmp slt i32 %i.bz, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, !llvm.loop !1224

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ]
  store i32 %i.ba, ptr %.sroa.05.0.lcssa.i.i27, align 4, !tbaa !139
  %.pre.i28 = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35
  %i.ce = phi ptr [ %i.br, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %i.ay, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %i.cf = phi i32 [ %i.ba, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.i, !llvm.loop !1225

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
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
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !184 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.az, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !139  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 4, !tbaa !139
  %i.z = load i32, ptr %i.x, align 4, !tbaa !139
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !139
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !139
  %i.ag = icmp slt i32 %i.ac, %i.af
  %spec.select.i.us = select i1 %i.ag, i64 %i.w, i64 %i.u ; 6 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !139
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.us
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !139
  %i.ak = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.us, !llvm.loop !51

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.al = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.al, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.am = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  %i.an = sext i32 %i.q to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !139 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !139
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.aq, ptr %i.aw, align 4, !tbaa !139
  %i.ax = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ax, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIiiEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us, !llvm.loop !52

end_hunk_7
begin_hunk_8_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_:bb.a
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !139
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !57

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ak = and i64 %i.m, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add nsw i64 %i.n, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i.i.i, %i.an
  br i1 %i.ao, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !139
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !139
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.aq, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.av = sext i32 %i.j to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !139 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !139
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !139
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !139
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %bb.f, !llvm.loop !58

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.bf, align 4, !tbaa !139
  %i.bg = icmp sgt i64 %i.m, 4
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !1278

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.bi, %bb.b ], [ %2, %.lr.ph ]
  %i.bh = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bi = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bj = lshr i64 %i.bh, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %storemerge2143, i64 -4 ; 3 uses
  %i.bm = load i32, ptr %i.f, align 4, !tbaa !139 ; 3 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !139 ; 3 uses
  %i.bo = sext i32 %i.bm to i64
  %i.bp = load ptr, ptr %3, align 8, !tbaa !138   ; 6 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !139 ; 3 uses
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !139 ; 3 uses
  %i.bv = icmp slt i32 %i.br, %i.bu
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !139 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !139 ; 4 uses
  br i1 %i.bv, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.cb, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.cc = icmp slt i32 %i.br, %i.bz
  %i.cd = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.ce = icmp slt i32 %i.br, %i.bz
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cf, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.cg = icmp slt i32 %i.bu, %i.bz
  %i.ch = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.cr, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %0, align 4, !tbaa !139
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !139 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i ], [ %i.cr, %bb.r ] ; 8 uses
  %i.cm = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !139
  %i.cq = icmp slt i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.cq, label %bb.r, label %.preheader.i.i, !llvm.loop !1279

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.cs = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !139
  %i.cw = icmp slt i32 %i.cl, %i.cv
  br i1 %i.cw, label %.preheader.i.i, label %bb.s, !llvm.loop !1280

bb.s:                                             ; preds = %.preheader.i.i
  %i.cx = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cx, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i32 %i.cs, ptr %.sroa.012.1.i.i, align 4, !tbaa !139
  store i32 %i.cm, ptr %.sroa.09.1.i.i, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i, !llvm.loop !1281

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2143, i64 noundef %i.bi, ptr nonnull %3)
  %i.cy = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 16
  br i1 %i.db, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !1277

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !138
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.f = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i32, ptr %.sroa.0.021.i.ptr, align 4, !tbaa !139 ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !139  ; 2 uses
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !139
  %i.n = icmp slt i32 %i.j, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i64 %.sroa.0.021.i.idx, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !307

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.f, ptr %i.p, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i32 %i.g, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.r = load i32, ptr %.pn20.i, align 4, !tbaa !139 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !139
  %i.v = icmp slt i32 %i.j, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.w = phi i32 [ %i.x, %.lr.ph.i.i ], [ %i.r, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i32 %i.w, ptr %.sroa.05.09.i.i, align 4, !tbaa !139
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.x = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !139 ; 2 uses
  %i.y = load i32, ptr %i.i, align 4, !tbaa !139
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !139
  %i.ac = icmp slt i32 %i.y, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, !llvm.loop !1282

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !139
  %.pre.i = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ad = phi ptr [ %i.q, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ] ; 4 uses
  %i.ae = phi i32 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.b, !llvm.loop !1283

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.af, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11
  %.sroa.0.08.i = phi ptr [ %i.aw, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11 ], [ %i.af, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit ] ; 5 uses
  %i.ag = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !139 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !139
  %i.ao = icmp slt i32 %i.ak, %i.an
  br i1 %i.ao, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i14
  %i.ap = phi i32 [ %i.aq, %.lr.ph.i.i14 ], [ %i.aj, %.lr.ph.i10 ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i32 %i.ap, ptr %.sroa.05.09.i.i16, align 4, !tbaa !139
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !139 ; 2 uses
  %i.ar = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.ar, %i.au
  br i1 %i.av, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, !llvm.loop !1282

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ag, ptr %.sroa.05.0.lcssa.i.i12, align 4, !tbaa !139
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.aw, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10, !llvm.loop !1284

bb.h:                                             ; preds = %bb.a
  %i.ax = icmp eq ptr %0, %1
  br i1 %i.ax, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.018.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i20 = icmp eq ptr %.sroa.0.018.i19, %1
  br i1 %.not19.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre23.i22 = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i23 = load ptr, ptr %2, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.ay = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.ce, %bb.o ] ; 7 uses
  %i.az = phi i32 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.cf, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.018.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.ba = load i32, ptr %.sroa.0.021.i24, align 4, !tbaa !139 ; 4 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !139 ; 2 uses
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !139
  %i.bh = icmp slt i32 %i.bd, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.bj = sub i64 %i.bi, %i.b                     ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !307

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bo, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bj, i1 false)
  %.pre24.i36 = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp eq i64 %i.bj, 4
  br i1 %i.bp, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 4
  store i32 %i.az, ptr %i.bq, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  %i.br = phi ptr [ %.pre24.i36, %bb.k ], [ %i.ay, %bb.l ], [ %i.ay, %bb.m ]
  store i32 %i.ba, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bs = load i32, ptr %.pn20.i25, align 4, !tbaa !139 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !139
  %i.bw = icmp slt i32 %i.bd, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %i.bx = phi i32 [ %i.by, %.lr.ph.i.i31 ], [ %i.bs, %bb.n ]
  %.sroa.0.010.i.i32 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph.i.i31 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i33 = phi ptr [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ], [ %.sroa.0.021.i24, %bb.n ]
  store i32 %i.bx, ptr %.sroa.05.09.i.i33, align 4, !tbaa !139
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32, i64 -4 ; 2 uses
  %i.by = load i32, ptr %.sroa.0.0.i.i34, align 4, !tbaa !139 ; 2 uses
  %i.bz = load i32, ptr %i.bc, align 4, !tbaa !139
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !139
  %i.cd = icmp slt i32 %i.bz, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, !llvm.loop !1282

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ]
  store i32 %i.ba, ptr %.sroa.05.0.lcssa.i.i27, align 4, !tbaa !139
  %.pre.i28 = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35
  %i.ce = phi ptr [ %i.br, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %i.ay, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %i.cf = phi i32 [ %i.ba, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.i, !llvm.loop !1283

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
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
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !184 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.az, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !139  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 4, !tbaa !139
  %i.z = load i32, ptr %i.x, align 4, !tbaa !139
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !139
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !139
  %i.ag = icmp slt i32 %i.ac, %i.af
  %spec.select.i.us = select i1 %i.ag, i64 %i.w, i64 %i.u ; 6 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !139
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.us
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !139
  %i.ak = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.us, !llvm.loop !57

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.al = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.al, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.am = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  %i.an = sext i32 %i.q to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !139 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !139
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.aq, ptr %i.aw, align 4, !tbaa !139
  %i.ax = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ax, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIffEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us, !llvm.loop !58

end_hunk_8
begin_hunk_9_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_:bb.a
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !139
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !61

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ak = and i64 %i.m, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add nsw i64 %i.n, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i.i.i, %i.an
  br i1 %i.ao, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !139
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !139
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.aq, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.av = sext i32 %i.j to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !139 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !139
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !139
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !139
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %bb.f, !llvm.loop !62

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.bf, align 4, !tbaa !139
  %i.bg = icmp sgt i64 %i.m, 4
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !1339

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.bi, %bb.b ], [ %2, %.lr.ph ]
  %i.bh = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bi = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bj = lshr i64 %i.bh, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %storemerge2143, i64 -4 ; 3 uses
  %i.bm = load i32, ptr %i.f, align 4, !tbaa !139 ; 3 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !139 ; 3 uses
  %i.bo = sext i32 %i.bm to i64
  %i.bp = load ptr, ptr %3, align 8, !tbaa !138   ; 6 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !139 ; 3 uses
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !139 ; 3 uses
  %i.bv = icmp slt i32 %i.br, %i.bu
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !139 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !139 ; 4 uses
  br i1 %i.bv, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.cb, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.cc = icmp slt i32 %i.br, %i.bz
  %i.cd = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.ce = icmp slt i32 %i.br, %i.bz
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cf, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.cg = icmp slt i32 %i.bu, %i.bz
  %i.ch = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.cr, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %0, align 4, !tbaa !139
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !139 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i ], [ %i.cr, %bb.r ] ; 8 uses
  %i.cm = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !139
  %i.cq = icmp slt i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.cq, label %bb.r, label %.preheader.i.i, !llvm.loop !1340

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.cs = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !139
  %i.cw = icmp slt i32 %i.cl, %i.cv
  br i1 %i.cw, label %.preheader.i.i, label %bb.s, !llvm.loop !1341

bb.s:                                             ; preds = %.preheader.i.i
  %i.cx = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cx, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i32 %i.cs, ptr %.sroa.012.1.i.i, align 4, !tbaa !139
  store i32 %i.cm, ptr %.sroa.09.1.i.i, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i, !llvm.loop !1342

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2143, i64 noundef %i.bi, ptr nonnull %3)
  %i.cy = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 16
  br i1 %i.db, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !1338

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !138
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.f = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i32, ptr %.sroa.0.021.i.ptr, align 4, !tbaa !139 ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !139  ; 2 uses
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !139
  %i.n = icmp slt i32 %i.j, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i64 %.sroa.0.021.i.idx, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !307

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.f, ptr %i.p, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i32 %i.g, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.r = load i32, ptr %.pn20.i, align 4, !tbaa !139 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !139
  %i.v = icmp slt i32 %i.j, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.w = phi i32 [ %i.x, %.lr.ph.i.i ], [ %i.r, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i32 %i.w, ptr %.sroa.05.09.i.i, align 4, !tbaa !139
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.x = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !139 ; 2 uses
  %i.y = load i32, ptr %i.i, align 4, !tbaa !139
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !139
  %i.ac = icmp slt i32 %i.y, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, !llvm.loop !1343

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !139
  %.pre.i = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ad = phi ptr [ %i.q, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ] ; 4 uses
  %i.ae = phi i32 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.b, !llvm.loop !1344

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.af, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11
  %.sroa.0.08.i = phi ptr [ %i.aw, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11 ], [ %i.af, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit ] ; 5 uses
  %i.ag = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !139 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !139
  %i.ao = icmp slt i32 %i.ak, %i.an
  br i1 %i.ao, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i14
  %i.ap = phi i32 [ %i.aq, %.lr.ph.i.i14 ], [ %i.aj, %.lr.ph.i10 ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i32 %i.ap, ptr %.sroa.05.09.i.i16, align 4, !tbaa !139
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !139 ; 2 uses
  %i.ar = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.ar, %i.au
  br i1 %i.av, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, !llvm.loop !1343

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ag, ptr %.sroa.05.0.lcssa.i.i12, align 4, !tbaa !139
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.aw, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10, !llvm.loop !1345

bb.h:                                             ; preds = %bb.a
  %i.ax = icmp eq ptr %0, %1
  br i1 %i.ax, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.018.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i20 = icmp eq ptr %.sroa.0.018.i19, %1
  br i1 %.not19.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre23.i22 = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i23 = load ptr, ptr %2, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.ay = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.ce, %bb.o ] ; 7 uses
  %i.az = phi i32 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.cf, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.018.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.ba = load i32, ptr %.sroa.0.021.i24, align 4, !tbaa !139 ; 4 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !139 ; 2 uses
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !139
  %i.bh = icmp slt i32 %i.bd, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.bj = sub i64 %i.bi, %i.b                     ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !307

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bo, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bj, i1 false)
  %.pre24.i36 = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp eq i64 %i.bj, 4
  br i1 %i.bp, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 4
  store i32 %i.az, ptr %i.bq, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  %i.br = phi ptr [ %.pre24.i36, %bb.k ], [ %i.ay, %bb.l ], [ %i.ay, %bb.m ]
  store i32 %i.ba, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bs = load i32, ptr %.pn20.i25, align 4, !tbaa !139 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !139
  %i.bw = icmp slt i32 %i.bd, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %i.bx = phi i32 [ %i.by, %.lr.ph.i.i31 ], [ %i.bs, %bb.n ]
  %.sroa.0.010.i.i32 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph.i.i31 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i33 = phi ptr [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ], [ %.sroa.0.021.i24, %bb.n ]
  store i32 %i.bx, ptr %.sroa.05.09.i.i33, align 4, !tbaa !139
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32, i64 -4 ; 2 uses
  %i.by = load i32, ptr %.sroa.0.0.i.i34, align 4, !tbaa !139 ; 2 uses
  %i.bz = load i32, ptr %i.bc, align 4, !tbaa !139
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !139
  %i.cd = icmp slt i32 %i.bz, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, !llvm.loop !1343

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ]
  store i32 %i.ba, ptr %.sroa.05.0.lcssa.i.i27, align 4, !tbaa !139
  %.pre.i28 = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35
  %i.ce = phi ptr [ %i.br, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %i.ay, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %i.cf = phi i32 [ %i.ba, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.i, !llvm.loop !1344

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
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
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !184 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.az, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !139  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 4, !tbaa !139
  %i.z = load i32, ptr %i.x, align 4, !tbaa !139
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !139
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !139
  %i.ag = icmp slt i32 %i.ac, %i.af
  %spec.select.i.us = select i1 %i.ag, i64 %i.w, i64 %i.u ; 6 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !139
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.us
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !139
  %i.ak = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.us, !llvm.loop !61

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.al = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.al, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.am = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  %i.an = sext i32 %i.q to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !139 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !139
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.aq, ptr %i.aw, align 4, !tbaa !139
  %i.ax = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ax, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplImmEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us, !llvm.loop !62

end_hunk_9
begin_hunk_10_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_:bb.a
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !139
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !65

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ak = and i64 %i.m, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add nsw i64 %i.n, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i.i.i, %i.an
  br i1 %i.ao, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !139
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !139
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.aq, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.av = sext i32 %i.j to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !139 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !139
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !139
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !139
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %bb.f, !llvm.loop !66

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.bf, align 4, !tbaa !139
  %i.bg = icmp sgt i64 %i.m, 4
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !1401

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.bi, %bb.b ], [ %2, %.lr.ph ]
  %i.bh = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bi = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bj = lshr i64 %i.bh, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %storemerge2143, i64 -4 ; 3 uses
  %i.bm = load i32, ptr %i.f, align 4, !tbaa !139 ; 3 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !139 ; 3 uses
  %i.bo = sext i32 %i.bm to i64
  %i.bp = load ptr, ptr %3, align 8, !tbaa !138   ; 6 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !139 ; 3 uses
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !139 ; 3 uses
  %i.bv = icmp slt i32 %i.br, %i.bu
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !139 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !139 ; 4 uses
  br i1 %i.bv, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.cb, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.cc = icmp slt i32 %i.br, %i.bz
  %i.cd = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.ce = icmp slt i32 %i.br, %i.bz
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cf, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.cg = icmp slt i32 %i.bu, %i.bz
  %i.ch = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.cr, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %0, align 4, !tbaa !139
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !139 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i ], [ %i.cr, %bb.r ] ; 8 uses
  %i.cm = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !139
  %i.cq = icmp slt i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.cq, label %bb.r, label %.preheader.i.i, !llvm.loop !1402

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.cs = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !139
  %i.cw = icmp slt i32 %i.cl, %i.cv
  br i1 %i.cw, label %.preheader.i.i, label %bb.s, !llvm.loop !1403

bb.s:                                             ; preds = %.preheader.i.i
  %i.cx = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cx, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i32 %i.cs, ptr %.sroa.012.1.i.i, align 4, !tbaa !139
  store i32 %i.cm, ptr %.sroa.09.1.i.i, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i, !llvm.loop !1404

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2143, i64 noundef %i.bi, ptr nonnull %3)
  %i.cy = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 16
  br i1 %i.db, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !1400

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !138
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.f = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i32, ptr %.sroa.0.021.i.ptr, align 4, !tbaa !139 ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !139  ; 2 uses
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !139
  %i.n = icmp slt i32 %i.j, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i64 %.sroa.0.021.i.idx, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !307

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.f, ptr %i.p, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i32 %i.g, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.r = load i32, ptr %.pn20.i, align 4, !tbaa !139 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !139
  %i.v = icmp slt i32 %i.j, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.w = phi i32 [ %i.x, %.lr.ph.i.i ], [ %i.r, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i32 %i.w, ptr %.sroa.05.09.i.i, align 4, !tbaa !139
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.x = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !139 ; 2 uses
  %i.y = load i32, ptr %i.i, align 4, !tbaa !139
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !139
  %i.ac = icmp slt i32 %i.y, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, !llvm.loop !1405

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !139
  %.pre.i = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ad = phi ptr [ %i.q, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ] ; 4 uses
  %i.ae = phi i32 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.b, !llvm.loop !1406

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.af, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11
  %.sroa.0.08.i = phi ptr [ %i.aw, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11 ], [ %i.af, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit ] ; 5 uses
  %i.ag = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !139 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !139
  %i.ao = icmp slt i32 %i.ak, %i.an
  br i1 %i.ao, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i14
  %i.ap = phi i32 [ %i.aq, %.lr.ph.i.i14 ], [ %i.aj, %.lr.ph.i10 ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i32 %i.ap, ptr %.sroa.05.09.i.i16, align 4, !tbaa !139
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !139 ; 2 uses
  %i.ar = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.ar, %i.au
  br i1 %i.av, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, !llvm.loop !1405

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ag, ptr %.sroa.05.0.lcssa.i.i12, align 4, !tbaa !139
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.aw, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10, !llvm.loop !1407

bb.h:                                             ; preds = %bb.a
  %i.ax = icmp eq ptr %0, %1
  br i1 %i.ax, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.018.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i20 = icmp eq ptr %.sroa.0.018.i19, %1
  br i1 %.not19.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre23.i22 = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i23 = load ptr, ptr %2, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.ay = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.ce, %bb.o ] ; 7 uses
  %i.az = phi i32 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.cf, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.018.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.ba = load i32, ptr %.sroa.0.021.i24, align 4, !tbaa !139 ; 4 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !139 ; 2 uses
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !139
  %i.bh = icmp slt i32 %i.bd, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.bj = sub i64 %i.bi, %i.b                     ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !307

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bo, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bj, i1 false)
  %.pre24.i36 = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp eq i64 %i.bj, 4
  br i1 %i.bp, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 4
  store i32 %i.az, ptr %i.bq, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  %i.br = phi ptr [ %.pre24.i36, %bb.k ], [ %i.ay, %bb.l ], [ %i.ay, %bb.m ]
  store i32 %i.ba, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bs = load i32, ptr %.pn20.i25, align 4, !tbaa !139 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !139
  %i.bw = icmp slt i32 %i.bd, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %i.bx = phi i32 [ %i.by, %.lr.ph.i.i31 ], [ %i.bs, %bb.n ]
  %.sroa.0.010.i.i32 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph.i.i31 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i33 = phi ptr [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ], [ %.sroa.0.021.i24, %bb.n ]
  store i32 %i.bx, ptr %.sroa.05.09.i.i33, align 4, !tbaa !139
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32, i64 -4 ; 2 uses
  %i.by = load i32, ptr %.sroa.0.0.i.i34, align 4, !tbaa !139 ; 2 uses
  %i.bz = load i32, ptr %i.bc, align 4, !tbaa !139
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !139
  %i.cd = icmp slt i32 %i.bz, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, !llvm.loop !1405

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ]
  store i32 %i.ba, ptr %.sroa.05.0.lcssa.i.i27, align 4, !tbaa !139
  %.pre.i28 = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35
  %i.ce = phi ptr [ %i.br, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %i.ay, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %i.cf = phi i32 [ %i.ba, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.i, !llvm.loop !1406

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
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
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !184 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.az, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !139  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 4, !tbaa !139
  %i.z = load i32, ptr %i.x, align 4, !tbaa !139
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !139
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !139
  %i.ag = icmp slt i32 %i.ac, %i.af
  %spec.select.i.us = select i1 %i.ag, i64 %i.w, i64 %i.u ; 6 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !139
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.us
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !139
  %i.ak = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.us, !llvm.loop !65

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.al = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.al, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.am = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  %i.an = sext i32 %i.q to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !139 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !139
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.aq, ptr %i.aw, align 4, !tbaa !139
  %i.ax = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ax, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIllEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us, !llvm.loop !66

end_hunk_10
begin_hunk_11_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_:bb.a
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !139
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !69

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ak = and i64 %i.m, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add nsw i64 %i.n, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i.i.i, %i.an
  br i1 %i.ao, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !139
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !139
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.aq, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.au = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.av = sext i32 %i.j to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !139 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !139
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !139
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !139
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, label %bb.f, !llvm.loop !70

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.j, ptr %i.bf, align 4, !tbaa !139
  %i.bg = icmp sgt i64 %i.m, 4
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !1463

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.bi, %bb.b ], [ %2, %.lr.ph ]
  %i.bh = phi i64 [ %i.da, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bi = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bj = lshr i64 %i.bh, 1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %storemerge2143, i64 -4 ; 3 uses
  %i.bm = load i32, ptr %i.f, align 4, !tbaa !139 ; 3 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !139 ; 3 uses
  %i.bo = sext i32 %i.bm to i64
  %i.bp = load ptr, ptr %3, align 8, !tbaa !138   ; 6 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !139 ; 3 uses
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !139 ; 3 uses
  %i.bv = icmp slt i32 %i.br, %i.bu
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !139 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !139 ; 4 uses
  br i1 %i.bv, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.cb, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.cc = icmp slt i32 %i.br, %i.bz
  %i.cd = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cd, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.ce = icmp slt i32 %i.br, %i.bz
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = load i32, ptr %0, align 4, !tbaa !139
  store i32 %i.bm, ptr %0, align 4, !tbaa !139
  store i32 %i.cf, ptr %i.f, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.cg = icmp slt i32 %i.bu, %i.bz
  %i.ch = load i32, ptr %0, align 4, !tbaa !139   ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bw, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bl, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %i.bn, ptr %0, align 4, !tbaa !139
  store i32 %i.ch, ptr %i.bk, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.cr, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %0, align 4, !tbaa !139
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !139 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i ], [ %i.cr, %bb.r ] ; 8 uses
  %i.cm = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !139
  %i.cq = icmp slt i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.cq, label %bb.r, label %.preheader.i.i, !llvm.loop !1464

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.cs = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !139
  %i.cw = icmp slt i32 %i.cl, %i.cv
  br i1 %i.cw, label %.preheader.i.i, label %bb.s, !llvm.loop !1465

bb.s:                                             ; preds = %.preheader.i.i
  %i.cx = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cx, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i32 %i.cs, ptr %.sroa.012.1.i.i, align 4, !tbaa !139
  store i32 %i.cm, ptr %.sroa.09.1.i.i, align 4, !tbaa !139
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_SL_T0_.exit.i, !llvm.loop !1466

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2143, i64 noundef %i.bi, ptr nonnull %3)
  %i.cy = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a
  %i.da = ashr exact i64 %i.cz, 2                 ; 2 uses
  %i.db = icmp sgt i64 %i.da, 16
  br i1 %i.db, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit, !llvm.loop !1462

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEET_SL_SL_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_SL_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !138
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.ad, %bb.g ] ; 6 uses
  %i.f = phi i32 [ %.pre23.i, %.lr.ph.i ], [ %i.ae, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i32, ptr %.sroa.0.021.i.ptr, align 4, !tbaa !139 ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !139  ; 2 uses
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !139
  %i.n = icmp slt i32 %i.j, %i.m
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp samesign ugt i64 %.sroa.0.021.i.idx, 4
  br i1 %i.o, label %bb.d, label %bb.e, !prof !307

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.f, ptr %i.p, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i32 %i.g, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.r = load i32, ptr %.pn20.i, align 4, !tbaa !139 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !139
  %i.v = icmp slt i32 %i.j, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.w = phi i32 [ %i.x, %.lr.ph.i.i ], [ %i.r, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i32 %i.w, ptr %.sroa.05.09.i.i, align 4, !tbaa !139
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.x = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !139 ; 2 uses
  %i.y = load i32, ptr %i.i, align 4, !tbaa !139
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !139
  %i.ac = icmp slt i32 %i.y, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, !llvm.loop !1467

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !139
  %.pre.i = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ad = phi ptr [ %i.q, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ] ; 4 uses
  %i.ae = phi i32 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.b, !llvm.loop !1468

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.af, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11
  %.sroa.0.08.i = phi ptr [ %i.aw, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11 ], [ %i.af, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit ] ; 5 uses
  %i.ag = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !139 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !139 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !139
  %i.ao = icmp slt i32 %i.ak, %i.an
  br i1 %i.ao, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i14
  %i.ap = phi i32 [ %i.aq, %.lr.ph.i.i14 ], [ %i.aj, %.lr.ph.i10 ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i32 %i.ap, ptr %.sroa.05.09.i.i16, align 4, !tbaa !139
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %.sroa.0.0.i.i17, align 4, !tbaa !139 ; 2 uses
  %i.ar = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.ar, %i.au
  br i1 %i.av, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, !llvm.loop !1467

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ag, ptr %.sroa.05.0.lcssa.i.i12, align 4, !tbaa !139
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.aw, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i10, !llvm.loop !1469

bb.h:                                             ; preds = %bb.a
  %i.ax = icmp eq ptr %0, %1
  br i1 %i.ax, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.018.i19 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i20 = icmp eq ptr %.sroa.0.018.i19, %1
  br i1 %.not19.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre23.i22 = load i32, ptr %0, align 4, !tbaa !139
  %.pre25.i23 = load ptr, ptr %2, align 8, !tbaa !138
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.ay = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.ce, %bb.o ] ; 7 uses
  %i.az = phi i32 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.cf, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.018.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.ba = load i32, ptr %.sroa.0.021.i24, align 4, !tbaa !139 ; 4 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !139 ; 2 uses
  %i.be = sext i32 %i.az to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !139
  %i.bh = icmp slt i32 %i.bd, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bi = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.bj = sub i64 %i.bi, %i.b                     ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !307

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bo, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bj, i1 false)
  %.pre24.i36 = load ptr, ptr %2, align 8, !tbaa !138
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.bp = icmp eq i64 %i.bj, 4
  br i1 %i.bp, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 4
  store i32 %i.az, ptr %i.bq, align 4, !tbaa !139
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  %i.br = phi ptr [ %.pre24.i36, %bb.k ], [ %i.ay, %bb.l ], [ %i.ay, %bb.m ]
  store i32 %i.ba, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bs = load i32, ptr %.pn20.i25, align 4, !tbaa !139 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !139
  %i.bw = icmp slt i32 %i.bd, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %i.bx = phi i32 [ %i.by, %.lr.ph.i.i31 ], [ %i.bs, %bb.n ]
  %.sroa.0.010.i.i32 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph.i.i31 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i33 = phi ptr [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ], [ %.sroa.0.021.i24, %bb.n ]
  store i32 %i.bx, ptr %.sroa.05.09.i.i33, align 4, !tbaa !139
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32, i64 -4 ; 2 uses
  %i.by = load i32, ptr %.sroa.0.0.i.i34, align 4, !tbaa !139 ; 2 uses
  %i.bz = load i32, ptr %i.bc, align 4, !tbaa !139
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !139
  %i.cd = icmp slt i32 %i.bz, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, !llvm.loop !1467

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ]
  store i32 %i.ba, ptr %.sroa.05.0.lcssa.i.i27, align 4, !tbaa !139
  %.pre.i28 = load i32, ptr %0, align 4, !tbaa !139
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35
  %i.ce = phi ptr [ %i.br, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %i.ay, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %i.cf = phi i32 [ %i.ba, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 4 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit, label %bb.i, !llvm.loop !1468

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_.exit.i11, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_SL_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
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
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !184 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.az, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !139  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 4, !tbaa !139
  %i.z = load i32, ptr %i.x, align 4, !tbaa !139
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !139
  %i.ad = sext i32 %i.z to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !139
  %i.ag = icmp slt i32 %i.ac, %i.af
  %spec.select.i.us = select i1 %i.ag, i64 %i.w, i64 %i.u ; 6 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !139
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.us
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !139
  %i.ak = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ak, label %bb.c, label %._crit_edge.i.us, !llvm.loop !69

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.al = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.al, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.am = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !138 ; 2 uses
  %i.an = sext i32 %i.q to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !139 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !139
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !139
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.aq, ptr %i.aw, align 4, !tbaa !139
  %i.ax = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.ax, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK2cv3dnn15UniqueLayerImpl14uniqueAxisImplIddEEvRKNS9_3MatERS3_ISD_SaISD_EEibEUliiE_EEEvT_T0_SM_T1_T2_.exit.us, !llvm.loop !70

end_hunk_11
