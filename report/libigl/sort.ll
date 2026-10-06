Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/sort?download=true
inline.NumInlined: 12484
inline.NumDeleted: 4009
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 334
loop-unroll.NumUnrolled: 388
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_T0_T1_:bb.a
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !131
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.y
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !131
  %i.ad = icmp ult i32 %i.aa, %i.ac
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.v, i64 %i.t ; 4 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !115
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i.i.i
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !115
  %i.ah = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ah, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !27

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ai = and i64 %i.m, 8
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ak = add nsw i64 %i.n, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa.i.i.i.i, %i.al
  br i1 %i.am, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.an = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !115
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !115
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.ao, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.as = load ptr, ptr %3, align 8, !tbaa !167   ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.j
  %i.au = load i32, ptr %i.at, align 4, !tbaa !131
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !115 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !131
  %i.az = icmp ult i32 %i.ay, %i.au
  br i1 %i.az, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i64 %i.aw, ptr %i.ba, align 8, !tbaa !115
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_RT0_.exit.i.i, label %bb.f, !llvm.loop !28

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.j, ptr %i.bb, align 8, !tbaa !115
  %i.bc = icmp sgt i64 %i.m, 8
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_T0_.exit, !llvm.loop !2473

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.be, %bb.b ], [ %2, %.lr.ph ]
  %i.bd = phi i64 [ %i.cq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.be = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bf = lshr i64 %i.bd, 1
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %storemerge2143, i64 -8 ; 3 uses
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !115 ; 3 uses
  %i.bj = load i64, ptr %i.bg, align 8, !tbaa !115 ; 3 uses
  %i.bk = load ptr, ptr %3, align 8, !tbaa !167   ; 6 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !131 ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bj
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !131 ; 3 uses
  %i.bp = icmp ult i32 %i.bm, %i.bo
  %i.bq = load i64, ptr %i.bh, align 8, !tbaa !115 ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !131 ; 4 uses
  br i1 %i.bp, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.bt = icmp ult i32 %i.bo, %i.bs
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bu = load i64, ptr %0, align 8, !tbaa !115
  store i64 %i.bj, ptr %0, align 8, !tbaa !115
  store i64 %i.bu, ptr %i.bg, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bv = icmp ult i32 %i.bm, %i.bs
  %i.bw = load i64, ptr %0, align 8, !tbaa !115   ; 2 uses
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.bq, ptr %0, align 8, !tbaa !115
  store i64 %i.bw, ptr %i.bh, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i64 %i.bi, ptr %0, align 8, !tbaa !115
  store i64 %i.bw, ptr %i.f, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.bx = icmp ult i32 %i.bm, %i.bs
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = load i64, ptr %0, align 8, !tbaa !115
  store i64 %i.bi, ptr %0, align 8, !tbaa !115
  store i64 %i.by, ptr %i.f, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bz = icmp ult i32 %i.bo, %i.bs
  %i.ca = load i64, ptr %0, align 8, !tbaa !115   ; 2 uses
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.bq, ptr %0, align 8, !tbaa !115
  store i64 %i.ca, ptr %i.bh, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i64 %i.bj, ptr %0, align 8, !tbaa !115
  store i64 %i.ca, ptr %i.bg, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.ci, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %i.cb = load i64, ptr %0, align 8, !tbaa !115
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !131 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_SH_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_SH_T0_.exit.i ], [ %i.ci, %bb.r ] ; 8 uses
  %i.ce = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !115 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !131
  %i.ch = icmp ult i32 %i.cg, %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ch, label %bb.r, label %.preheader.i.i, !llvm.loop !2474

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 5 uses
  %i.cj = load i64, ptr %.sroa.09.1.i.i, align 8, !tbaa !115 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !131
  %i.cm = icmp ult i32 %i.cd, %i.cl
  br i1 %i.cm, label %.preheader.i.i, label %bb.s, !llvm.loop !2475

bb.s:                                             ; preds = %.preheader.i.i
  %i.cn = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cn, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEET_SH_SH_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i64 %i.cj, ptr %.sroa.012.1.i.i, align 8, !tbaa !115
  store i64 %i.ce, ptr %.sroa.09.1.i.i, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_SH_T0_.exit.i, !llvm.loop !2476

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEET_SH_SH_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2143, i64 noundef %i.be, ptr nonnull %3)
  %i.co = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cp = sub i64 %i.co, %i.a
  %i.cq = ashr exact i64 %i.cp, 3                 ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, 16
  br i1 %i.cr, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_T0_.exit, !llvm.loop !2472

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEET_SH_SH_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_SH_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i64, ptr %0, align 8, !tbaa !115
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !167 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %3 = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %5, %bb.g ] ; 2 uses
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.y, %bb.g ] ; 6 uses
  %i.f = phi i64 [ %.pre23.i, %.lr.ph.i ], [ %i.z, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i64, ptr %.sroa.0.021.i.ptr, align 8, !tbaa !115 ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !131  ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f
  %i.k = load i32, ptr %i.j, align 4, !tbaa !131
  %i.l = icmp ult i32 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = icmp samesign ugt i64 %.sroa.0.021.i.idx, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !291

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !167 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.f, ptr %i.n, align 8, !tbaa !115
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %4 = phi ptr [ %.pre24.i, %bb.d ], [ %3, %bb.e ]
  %i.o = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i64 %i.g, ptr %0, align 8, !tbaa !115
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.p = load i64, ptr %.pn20.i, align 8, !tbaa !115 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !131
  %i.s = icmp ult i32 %i.i, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.t = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.p, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i64 %i.t, ptr %.sroa.05.09.i.i, align 8, !tbaa !115
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.u = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !115 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !131
  %i.x = icmp ult i32 %i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i, !llvm.loop !2477

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i64 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !115
  %.pre.i = load i64, ptr %0, align 8, !tbaa !115
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i
  %5 = phi ptr [ %4, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %3, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i ] ; 4 uses
  %i.y = phi ptr [ %i.o, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i ]
  %i.z = phi i64 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_T0_.exit, label %bb.b, !llvm.loop !2478

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_T0_.exit: ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not7.i = icmp eq ptr %i.aa, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i11
  %.sroa.0.08.i = phi ptr [ %i.an, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i11 ], [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_T0_.exit ] ; 5 uses
  %i.ab = load i64, ptr %.sroa.0.08.i, align 8, !tbaa !115 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !131 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -8 ; 2 uses
  %i.ae = load i64, ptr %.sroa.0.08.i.i, align 8, !tbaa !115 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !131
  %i.ah = icmp ult i32 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i14
  %i.ai = phi i64 [ %i.aj, %.lr.ph.i.i14 ], [ %i.ae, %.lr.ph.i10 ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i64 %i.ai, ptr %.sroa.05.09.i.i16, align 8, !tbaa !115
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -8 ; 2 uses
  %i.aj = load i64, ptr %.sroa.0.0.i.i17, align 8, !tbaa !115 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !131
  %i.am = icmp ult i32 %i.ad, %i.al
  br i1 %i.am, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i11, !llvm.loop !2477

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i64 %i.ab, ptr %.sroa.05.0.lcssa.i.i12, align 8, !tbaa !115
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8 ; 2 uses
  %.not.i13 = icmp eq ptr %i.an, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_T0_.exit, label %.lr.ph.i10, !llvm.loop !2479

bb.h:                                             ; preds = %bb.a
  %i.ao = icmp eq ptr %0, %1
  br i1 %i.ao, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.018.i19 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not19.i20 = icmp eq ptr %.sroa.0.018.i19, %1
  br i1 %.not19.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre23.i22 = load i64, ptr %0, align 8, !tbaa !115
  %.pre25.i23 = load ptr, ptr %2, align 8, !tbaa !167
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.ap = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.bq, %bb.o ] ; 7 uses
  %i.aq = phi i64 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.br, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.018.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.ar = load i64, ptr %.sroa.0.021.i24, align 8, !tbaa !115 ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !131 ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aq
  %i.av = load i32, ptr %i.au, align 4, !tbaa !131
  %i.aw = icmp ult i32 %i.at, %i.av
  br i1 %i.aw, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ax = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.ay = sub i64 %i.ax, %i.b                     ; 3 uses
  %i.az = ashr exact i64 %i.ay, 3                 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 1
  br i1 %i.ba, label %bb.k, label %bb.l, !prof !291

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 16
  %i.bc = sub nsw i64 0, %i.az
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ay, i1 false)
  %.pre24.i36 = load ptr, ptr %2, align 8, !tbaa !167
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.be = icmp eq i64 %i.ay, 8
  br i1 %i.be, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  store i64 %i.aq, ptr %i.bf, align 8, !tbaa !115
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  %i.bg = phi ptr [ %.pre24.i36, %bb.k ], [ %i.ap, %bb.l ], [ %i.ap, %bb.m ]
  store i64 %i.ar, ptr %0, align 8, !tbaa !115
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bh = load i64, ptr %.pn20.i25, align 8, !tbaa !115 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !131
  %i.bk = icmp ult i32 %i.at, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %i.bl = phi i64 [ %i.bm, %.lr.ph.i.i31 ], [ %i.bh, %bb.n ]
  %.sroa.0.010.i.i32 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph.i.i31 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i33 = phi ptr [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ], [ %.sroa.0.021.i24, %bb.n ]
  store i64 %i.bl, ptr %.sroa.05.09.i.i33, align 8, !tbaa !115
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32, i64 -8 ; 2 uses
  %i.bm = load i64, ptr %.sroa.0.0.i.i34, align 8, !tbaa !115 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !131
  %i.bp = icmp ult i32 %i.at, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i26, !llvm.loop !2477

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ]
  store i64 %i.ar, ptr %.sroa.05.0.lcssa.i.i27, align 8, !tbaa !115
  %.pre.i28 = load i64, ptr %0, align 8, !tbaa !115
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35
  %i.bq = phi ptr [ %i.bg, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %i.ap, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i26 ]
  %i.br = phi i64 [ %i.ar, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 8 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_T0_.exit, label %bb.i, !llvm.loop !2478

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_.exit.i11, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_SH_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !2482 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_SI_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_SI_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.us
  %i.q = load i64, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_SI_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !167 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %i.w
  %i.y = load i64, ptr %i.v, align 8, !tbaa !115
  %i.z = load i64, ptr %i.x, align 8, !tbaa !115
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !131
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.z
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !131
  %i.ae = icmp ult i32 %i.ab, %i.ad
  %spec.select.i.us = select i1 %i.ae, i64 %i.w, i64 %i.u ; 6 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !115
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.us
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !115
  %i.ai = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ai, label %bb.c, label %._crit_edge.i.us, !llvm.loop !27

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.aj = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_SI_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.ak = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !167 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.q
  %i.am = load i32, ptr %i.al, align 4, !tbaa !131
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !115 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !131
  %i.ar = icmp ult i32 %i.aq, %i.am
  br i1 %i.ar, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_SI_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !115
  %i.at = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.at, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_SI_T1_T2_.exit.us, !llvm.loop !28

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_SI_T1_T2_.exit.us: ; preds = %bb.d, %bb.e, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %bb.d ], [ %.0920.i.i.us, %bb.e ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i64 %i.q, ptr %i.au, align 8, !tbaa !115
  %.not.us = icmp eq i64 %.09.us, 0
  %i.av = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !2480

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IjSaIjEEEEEEEvT_T0_SI_T1_T2_.exit
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_T0_T1_:bb.a
  %i.aa = load double, ptr %i.z, align 8, !tbaa !161
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.y
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !161
  %i.ad = fcmp olt double %i.aa, %i.ac
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.v, i64 %i.t ; 4 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !115
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i.i.i
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !115
  %i.ah = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ah, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !31

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ai = and i64 %i.m, 8
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ak = add nsw i64 %i.n, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa.i.i.i.i, %i.al
  br i1 %i.am, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.an = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !115
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !115
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.ao, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.as = load ptr, ptr %3, align 8, !tbaa !158   ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.j
  %i.au = load double, ptr %i.at, align 8, !tbaa !161
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !115 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !161
  %i.az = fcmp olt double %i.ay, %i.au
  br i1 %i.az, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i64 %i.aw, ptr %i.ba, align 8, !tbaa !115
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_RT0_.exit.i.i, label %bb.f, !llvm.loop !32

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.j, ptr %i.bb, align 8, !tbaa !115
  %i.bc = icmp sgt i64 %i.m, 8
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_T0_.exit, !llvm.loop !2523

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.be, %bb.b ], [ %2, %.lr.ph ]
  %i.bd = phi i64 [ %i.cq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.be = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bf = lshr i64 %i.bd, 1
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %storemerge2143, i64 -8 ; 3 uses
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !115 ; 3 uses
  %i.bj = load i64, ptr %i.bg, align 8, !tbaa !115 ; 3 uses
  %i.bk = load ptr, ptr %3, align 8, !tbaa !158   ; 6 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !161 ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !161 ; 3 uses
  %i.bp = fcmp olt double %i.bm, %i.bo
  %i.bq = load i64, ptr %i.bh, align 8, !tbaa !115 ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !161 ; 4 uses
  br i1 %i.bp, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.bt = fcmp olt double %i.bo, %i.bs
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bu = load i64, ptr %0, align 8, !tbaa !115
  store i64 %i.bj, ptr %0, align 8, !tbaa !115
  store i64 %i.bu, ptr %i.bg, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bv = fcmp olt double %i.bm, %i.bs
  %i.bw = load i64, ptr %0, align 8, !tbaa !115   ; 2 uses
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.bq, ptr %0, align 8, !tbaa !115
  store i64 %i.bw, ptr %i.bh, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i64 %i.bi, ptr %0, align 8, !tbaa !115
  store i64 %i.bw, ptr %i.f, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.bx = fcmp olt double %i.bm, %i.bs
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = load i64, ptr %0, align 8, !tbaa !115
  store i64 %i.bi, ptr %0, align 8, !tbaa !115
  store i64 %i.by, ptr %i.f, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bz = fcmp olt double %i.bo, %i.bs
  %i.ca = load i64, ptr %0, align 8, !tbaa !115   ; 2 uses
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.bq, ptr %0, align 8, !tbaa !115
  store i64 %i.ca, ptr %i.bh, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i64 %i.bj, ptr %0, align 8, !tbaa !115
  store i64 %i.ca, ptr %i.bg, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.ci, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %i.cb = load i64, ptr %0, align 8, !tbaa !115
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cb
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !161 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_SH_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_SH_T0_.exit.i ], [ %i.ci, %bb.r ] ; 8 uses
  %i.ce = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !115 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !161
  %i.ch = fcmp olt double %i.cg, %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ch, label %bb.r, label %.preheader.i.i, !llvm.loop !2524

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 5 uses
  %i.cj = load i64, ptr %.sroa.09.1.i.i, align 8, !tbaa !115 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !161
  %i.cm = fcmp olt double %i.cd, %i.cl
  br i1 %i.cm, label %.preheader.i.i, label %bb.s, !llvm.loop !2525

bb.s:                                             ; preds = %.preheader.i.i
  %i.cn = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cn, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEET_SH_SH_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i64 %i.cj, ptr %.sroa.012.1.i.i, align 8, !tbaa !115
  store i64 %i.ce, ptr %.sroa.09.1.i.i, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_SH_T0_.exit.i, !llvm.loop !2526

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEET_SH_SH_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2143, i64 noundef %i.be, ptr nonnull %3)
  %i.co = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cp = sub i64 %i.co, %i.a
  %i.cq = ashr exact i64 %i.cp, 3                 ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, 16
  br i1 %i.cr, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_T0_.exit, !llvm.loop !2522

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEET_SH_SH_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_SH_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i64, ptr %0, align 8, !tbaa !115
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !158 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %3 = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %5, %bb.g ] ; 2 uses
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.y, %bb.g ] ; 6 uses
  %i.f = phi i64 [ %.pre23.i, %.lr.ph.i ], [ %i.z, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i64, ptr %.sroa.0.021.i.ptr, align 8, !tbaa !115 ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g
  %i.i = load double, ptr %i.h, align 8, !tbaa !161 ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.k = load double, ptr %i.j, align 8, !tbaa !161
  %i.l = fcmp olt double %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = icmp samesign ugt i64 %.sroa.0.021.i.idx, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !291

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !158 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.f, ptr %i.n, align 8, !tbaa !115
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %4 = phi ptr [ %.pre24.i, %bb.d ], [ %3, %bb.e ]
  %i.o = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i64 %i.g, ptr %0, align 8, !tbaa !115
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.p = load i64, ptr %.pn20.i, align 8, !tbaa !115 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !161
  %i.s = fcmp olt double %i.i, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.t = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.p, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i64 %i.t, ptr %.sroa.05.09.i.i, align 8, !tbaa !115
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.u = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !115 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !161
  %i.x = fcmp olt double %i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i, !llvm.loop !2527

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i64 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !115
  %.pre.i = load i64, ptr %0, align 8, !tbaa !115
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i
  %5 = phi ptr [ %4, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %3, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i ] ; 4 uses
  %i.y = phi ptr [ %i.o, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i ]
  %i.z = phi i64 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_T0_.exit, label %bb.b, !llvm.loop !2528

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_T0_.exit: ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not7.i = icmp eq ptr %i.aa, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i11
  %.sroa.0.08.i = phi ptr [ %i.an, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i11 ], [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_T0_.exit ] ; 5 uses
  %i.ab = load i64, ptr %.sroa.0.08.i, align 8, !tbaa !115 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !161 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -8 ; 2 uses
  %i.ae = load i64, ptr %.sroa.0.08.i.i, align 8, !tbaa !115 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !161
  %i.ah = fcmp olt double %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i14
  %i.ai = phi i64 [ %i.aj, %.lr.ph.i.i14 ], [ %i.ae, %.lr.ph.i10 ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i64 %i.ai, ptr %.sroa.05.09.i.i16, align 8, !tbaa !115
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -8 ; 2 uses
  %i.aj = load i64, ptr %.sroa.0.0.i.i17, align 8, !tbaa !115 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !161
  %i.am = fcmp olt double %i.ad, %i.al
  br i1 %i.am, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i11, !llvm.loop !2527

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i64 %i.ab, ptr %.sroa.05.0.lcssa.i.i12, align 8, !tbaa !115
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8 ; 2 uses
  %.not.i13 = icmp eq ptr %i.an, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_T0_.exit, label %.lr.ph.i10, !llvm.loop !2529

bb.h:                                             ; preds = %bb.a
  %i.ao = icmp eq ptr %0, %1
  br i1 %i.ao, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.018.i19 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not19.i20 = icmp eq ptr %.sroa.0.018.i19, %1
  br i1 %.not19.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre23.i22 = load i64, ptr %0, align 8, !tbaa !115
  %.pre25.i23 = load ptr, ptr %2, align 8, !tbaa !158
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.ap = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.bq, %bb.o ] ; 7 uses
  %i.aq = phi i64 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.br, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.018.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.ar = load i64, ptr %.sroa.0.021.i24, align 8, !tbaa !115 ; 4 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !161 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  %i.av = load double, ptr %i.au, align 8, !tbaa !161
  %i.aw = fcmp olt double %i.at, %i.av
  br i1 %i.aw, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ax = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.ay = sub i64 %i.ax, %i.b                     ; 3 uses
  %i.az = ashr exact i64 %i.ay, 3                 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 1
  br i1 %i.ba, label %bb.k, label %bb.l, !prof !291

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 16
  %i.bc = sub nsw i64 0, %i.az
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ay, i1 false)
  %.pre24.i36 = load ptr, ptr %2, align 8, !tbaa !158
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.be = icmp eq i64 %i.ay, 8
  br i1 %i.be, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  store i64 %i.aq, ptr %i.bf, align 8, !tbaa !115
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  %i.bg = phi ptr [ %.pre24.i36, %bb.k ], [ %i.ap, %bb.l ], [ %i.ap, %bb.m ]
  store i64 %i.ar, ptr %0, align 8, !tbaa !115
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bh = load i64, ptr %.pn20.i25, align 8, !tbaa !115 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !161
  %i.bk = fcmp olt double %i.at, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %i.bl = phi i64 [ %i.bm, %.lr.ph.i.i31 ], [ %i.bh, %bb.n ]
  %.sroa.0.010.i.i32 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph.i.i31 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i33 = phi ptr [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ], [ %.sroa.0.021.i24, %bb.n ]
  store i64 %i.bl, ptr %.sroa.05.09.i.i33, align 8, !tbaa !115
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32, i64 -8 ; 2 uses
  %i.bm = load i64, ptr %.sroa.0.0.i.i34, align 8, !tbaa !115 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !161
  %i.bp = fcmp olt double %i.at, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i26, !llvm.loop !2527

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ]
  store i64 %i.ar, ptr %.sroa.05.0.lcssa.i.i27, align 8, !tbaa !115
  %.pre.i28 = load i64, ptr %0, align 8, !tbaa !115
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35
  %i.bq = phi ptr [ %i.bg, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %i.ap, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i26 ]
  %i.br = phi i64 [ %i.ar, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 8 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_T0_.exit, label %bb.i, !llvm.loop !2528

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_.exit.i11, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_SH_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !2532 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_SI_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_SI_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.us
  %i.q = load i64, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_SI_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !158 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %i.w
  %i.y = load i64, ptr %i.v, align 8, !tbaa !115
  %i.z = load i64, ptr %i.x, align 8, !tbaa !115
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.y
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !161
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.z
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !161
  %i.ae = fcmp olt double %i.ab, %i.ad
  %spec.select.i.us = select i1 %i.ae, i64 %i.w, i64 %i.u ; 6 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !115
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.us
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !115
  %i.ai = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ai, label %bb.c, label %._crit_edge.i.us, !llvm.loop !31

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.aj = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_SI_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.ak = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !158 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.q
  %i.am = load double, ptr %i.al, align 8, !tbaa !161
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !115 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !161
  %i.ar = fcmp olt double %i.aq, %i.am
  br i1 %i.ar, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_SI_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !115
  %i.at = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.at, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_SI_T1_T2_.exit.us, !llvm.loop !32

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_SI_T1_T2_.exit.us: ; preds = %bb.d, %bb.e, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %bb.d ], [ %.0920.i.i.us, %bb.e ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i64 %i.q, ptr %i.au, align 8, !tbaa !115
  %.not.us = icmp eq i64 %.09.us, 0
  %i.av = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !2530

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IdSaIdEEEEEEEvT_T0_SI_T1_T2_.exit
end_hunk_1
begin_hunk_2_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_T0_T1_:bb.a
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !131
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.y
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !131
  %i.ad = icmp slt i32 %i.aa, %i.ac
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.v, i64 %i.t ; 4 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !115
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i.i.i
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !115
  %i.ah = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ah, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !57

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ai = and i64 %i.m, 8
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ak = add nsw i64 %i.n, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa.i.i.i.i, %i.al
  br i1 %i.am, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.an = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !115
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !115
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.ao, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.as = load ptr, ptr %3, align 8, !tbaa !129   ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.j
  %i.au = load i32, ptr %i.at, align 4, !tbaa !131
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !115 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !131
  %i.az = icmp slt i32 %i.ay, %i.au
  br i1 %i.az, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i64 %i.aw, ptr %i.ba, align 8, !tbaa !115
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_RT0_.exit.i.i, label %bb.f, !llvm.loop !58

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.j, ptr %i.bb, align 8, !tbaa !115
  %i.bc = icmp sgt i64 %i.m, 8
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_T0_.exit, !llvm.loop !3020

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.be, %bb.b ], [ %2, %.lr.ph ]
  %i.bd = phi i64 [ %i.cq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.be = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bf = lshr i64 %i.bd, 1
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %storemerge2143, i64 -8 ; 3 uses
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !115 ; 3 uses
  %i.bj = load i64, ptr %i.bg, align 8, !tbaa !115 ; 3 uses
  %i.bk = load ptr, ptr %3, align 8, !tbaa !129   ; 6 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !131 ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bj
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !131 ; 3 uses
  %i.bp = icmp slt i32 %i.bm, %i.bo
  %i.bq = load i64, ptr %i.bh, align 8, !tbaa !115 ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !131 ; 4 uses
  br i1 %i.bp, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.bt = icmp slt i32 %i.bo, %i.bs
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bu = load i64, ptr %0, align 8, !tbaa !115
  store i64 %i.bj, ptr %0, align 8, !tbaa !115
  store i64 %i.bu, ptr %i.bg, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bv = icmp slt i32 %i.bm, %i.bs
  %i.bw = load i64, ptr %0, align 8, !tbaa !115   ; 2 uses
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.bq, ptr %0, align 8, !tbaa !115
  store i64 %i.bw, ptr %i.bh, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i64 %i.bi, ptr %0, align 8, !tbaa !115
  store i64 %i.bw, ptr %i.f, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.bx = icmp slt i32 %i.bm, %i.bs
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = load i64, ptr %0, align 8, !tbaa !115
  store i64 %i.bi, ptr %0, align 8, !tbaa !115
  store i64 %i.by, ptr %i.f, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bz = icmp slt i32 %i.bo, %i.bs
  %i.ca = load i64, ptr %0, align 8, !tbaa !115   ; 2 uses
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.bq, ptr %0, align 8, !tbaa !115
  store i64 %i.ca, ptr %i.bh, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i64 %i.bj, ptr %0, align 8, !tbaa !115
  store i64 %i.ca, ptr %i.bg, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.ci, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %i.cb = load i64, ptr %0, align 8, !tbaa !115
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !131 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_SH_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_SH_T0_.exit.i ], [ %i.ci, %bb.r ] ; 8 uses
  %i.ce = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !115 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !131
  %i.ch = icmp slt i32 %i.cg, %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ch, label %bb.r, label %.preheader.i.i, !llvm.loop !3021

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 5 uses
  %i.cj = load i64, ptr %.sroa.09.1.i.i, align 8, !tbaa !115 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !131
  %i.cm = icmp slt i32 %i.cd, %i.cl
  br i1 %i.cm, label %.preheader.i.i, label %bb.s, !llvm.loop !3022

bb.s:                                             ; preds = %.preheader.i.i
  %i.cn = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cn, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEET_SH_SH_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i64 %i.cj, ptr %.sroa.012.1.i.i, align 8, !tbaa !115
  store i64 %i.ce, ptr %.sroa.09.1.i.i, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_SH_T0_.exit.i, !llvm.loop !3023

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEET_SH_SH_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2143, i64 noundef %i.be, ptr nonnull %3)
  %i.co = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cp = sub i64 %i.co, %i.a
  %i.cq = ashr exact i64 %i.cp, 3                 ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, 16
  br i1 %i.cr, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_T0_.exit, !llvm.loop !3019

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEET_SH_SH_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_SH_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i64, ptr %0, align 8, !tbaa !115
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !129 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %3 = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %5, %bb.g ] ; 2 uses
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.y, %bb.g ] ; 6 uses
  %i.f = phi i64 [ %.pre23.i, %.lr.ph.i ], [ %i.z, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i64, ptr %.sroa.0.021.i.ptr, align 8, !tbaa !115 ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !131  ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f
  %i.k = load i32, ptr %i.j, align 4, !tbaa !131
  %i.l = icmp slt i32 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = icmp samesign ugt i64 %.sroa.0.021.i.idx, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !291

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !129 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.f, ptr %i.n, align 8, !tbaa !115
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %4 = phi ptr [ %.pre24.i, %bb.d ], [ %3, %bb.e ]
  %i.o = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i64 %i.g, ptr %0, align 8, !tbaa !115
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.p = load i64, ptr %.pn20.i, align 8, !tbaa !115 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !131
  %i.s = icmp slt i32 %i.i, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.t = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.p, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i64 %i.t, ptr %.sroa.05.09.i.i, align 8, !tbaa !115
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.u = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !115 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !131
  %i.x = icmp slt i32 %i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i, !llvm.loop !3024

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i64 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !115
  %.pre.i = load i64, ptr %0, align 8, !tbaa !115
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i
  %5 = phi ptr [ %4, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %3, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i ] ; 4 uses
  %i.y = phi ptr [ %i.o, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i ]
  %i.z = phi i64 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_T0_.exit, label %bb.b, !llvm.loop !3025

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_T0_.exit: ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not7.i = icmp eq ptr %i.aa, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i11
  %.sroa.0.08.i = phi ptr [ %i.an, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i11 ], [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_T0_.exit ] ; 5 uses
  %i.ab = load i64, ptr %.sroa.0.08.i, align 8, !tbaa !115 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !131 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -8 ; 2 uses
  %i.ae = load i64, ptr %.sroa.0.08.i.i, align 8, !tbaa !115 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !131
  %i.ah = icmp slt i32 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i14
  %i.ai = phi i64 [ %i.aj, %.lr.ph.i.i14 ], [ %i.ae, %.lr.ph.i10 ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i64 %i.ai, ptr %.sroa.05.09.i.i16, align 8, !tbaa !115
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -8 ; 2 uses
  %i.aj = load i64, ptr %.sroa.0.0.i.i17, align 8, !tbaa !115 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !131
  %i.am = icmp slt i32 %i.ad, %i.al
  br i1 %i.am, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i11, !llvm.loop !3024

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i64 %i.ab, ptr %.sroa.05.0.lcssa.i.i12, align 8, !tbaa !115
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8 ; 2 uses
  %.not.i13 = icmp eq ptr %i.an, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_T0_.exit, label %.lr.ph.i10, !llvm.loop !3026

bb.h:                                             ; preds = %bb.a
  %i.ao = icmp eq ptr %0, %1
  br i1 %i.ao, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.018.i19 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not19.i20 = icmp eq ptr %.sroa.0.018.i19, %1
  br i1 %.not19.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre23.i22 = load i64, ptr %0, align 8, !tbaa !115
  %.pre25.i23 = load ptr, ptr %2, align 8, !tbaa !129
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.ap = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.bq, %bb.o ] ; 7 uses
  %i.aq = phi i64 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.br, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.018.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.ar = load i64, ptr %.sroa.0.021.i24, align 8, !tbaa !115 ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !131 ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aq
  %i.av = load i32, ptr %i.au, align 4, !tbaa !131
  %i.aw = icmp slt i32 %i.at, %i.av
  br i1 %i.aw, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ax = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.ay = sub i64 %i.ax, %i.b                     ; 3 uses
  %i.az = ashr exact i64 %i.ay, 3                 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 1
  br i1 %i.ba, label %bb.k, label %bb.l, !prof !291

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 16
  %i.bc = sub nsw i64 0, %i.az
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ay, i1 false)
  %.pre24.i36 = load ptr, ptr %2, align 8, !tbaa !129
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.be = icmp eq i64 %i.ay, 8
  br i1 %i.be, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  store i64 %i.aq, ptr %i.bf, align 8, !tbaa !115
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  %i.bg = phi ptr [ %.pre24.i36, %bb.k ], [ %i.ap, %bb.l ], [ %i.ap, %bb.m ]
  store i64 %i.ar, ptr %0, align 8, !tbaa !115
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bh = load i64, ptr %.pn20.i25, align 8, !tbaa !115 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !131
  %i.bk = icmp slt i32 %i.at, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %i.bl = phi i64 [ %i.bm, %.lr.ph.i.i31 ], [ %i.bh, %bb.n ]
  %.sroa.0.010.i.i32 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph.i.i31 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i33 = phi ptr [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ], [ %.sroa.0.021.i24, %bb.n ]
  store i64 %i.bl, ptr %.sroa.05.09.i.i33, align 8, !tbaa !115
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32, i64 -8 ; 2 uses
  %i.bm = load i64, ptr %.sroa.0.0.i.i34, align 8, !tbaa !115 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !131
  %i.bp = icmp slt i32 %i.at, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i26, !llvm.loop !3024

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ]
  store i64 %i.ar, ptr %.sroa.05.0.lcssa.i.i27, align 8, !tbaa !115
  %.pre.i28 = load i64, ptr %0, align 8, !tbaa !115
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35
  %i.bq = phi ptr [ %i.bg, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %i.ap, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i26 ]
  %i.br = phi i64 [ %i.ar, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 8 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_T0_.exit, label %bb.i, !llvm.loop !3025

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_.exit.i11, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_SH_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !3029 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_SI_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_SI_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.us
  %i.q = load i64, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_SI_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !129 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %i.w
  %i.y = load i64, ptr %i.v, align 8, !tbaa !115
  %i.z = load i64, ptr %i.x, align 8, !tbaa !115
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !131
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.z
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !131
  %i.ae = icmp slt i32 %i.ab, %i.ad
  %spec.select.i.us = select i1 %i.ae, i64 %i.w, i64 %i.u ; 6 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !115
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.us
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !115
  %i.ai = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ai, label %bb.c, label %._crit_edge.i.us, !llvm.loop !57

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.aj = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_SI_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.ak = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !129 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.q
  %i.am = load i32, ptr %i.al, align 4, !tbaa !131
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !115 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !131
  %i.ar = icmp slt i32 %i.aq, %i.am
  br i1 %i.ar, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_SI_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !115
  %i.at = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.at, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_SI_T1_T2_.exit.us, !llvm.loop !58

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_SI_T1_T2_.exit.us: ; preds = %bb.d, %bb.e, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %bb.d ], [ %.0920.i.i.us, %bb.e ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i64 %i.q, ptr %i.au, align 8, !tbaa !115
  %.not.us = icmp eq i64 %.09.us, 0
  %i.av = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !3027

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IiSaIiEEEEEEEvT_T0_SI_T1_T2_.exit
end_hunk_2
begin_hunk_3_@_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_T0_T1_:bb.a
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.030.i.i.i.i
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !131
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !71

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ak = and i64 %i.l, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add nsw i64 %i.m, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i.i.i, %i.an
  br i1 %i.ao, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !131
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !131
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.128.i8.i.i.i = phi i64 [ %i.aq, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.au = sext i32 %i.i to i64
  %i.av = load ptr, ptr %3, align 8, !tbaa !224   ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.au
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.01317.i.i.i.i.i = phi i64 [ %.128.i8.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.018.i.i910.i.i.i, %bb.g ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i910.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i910.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !131 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !131
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !131
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !131
  %.not11.i.i.i = icmp eq i64 %.018.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_RT0_.exit.i.i, label %bb.f, !llvm.loop !72

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.01317.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i32 %i.i, ptr %i.bf, align 4, !tbaa !131
  %i.bg = icmp sgt i64 %i.l, 4
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_T0_.exit, !llvm.loop !3230

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0152244 = phi i64 [ %i.bi, %bb.b ], [ %2, %.lr.ph ]
  %.02343 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.bh = phi i64 [ %i.cz, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bi = add nsw i64 %.0152244, -1               ; 3 uses
  %i.bj = lshr i64 %i.bh, 3
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %.02343, i64 -4 ; 3 uses
  %i.bm = load i32, ptr %i.e, align 4, !tbaa !131 ; 3 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = load i32, ptr %i.bk, align 4, !tbaa !131 ; 3 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = load ptr, ptr %3, align 8, !tbaa !224   ; 6 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bn
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !131 ; 3 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bp
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !131 ; 3 uses
  %i.bv = icmp slt i32 %i.bs, %i.bu
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !131 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !131 ; 4 uses
  br i1 %i.bv, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph45
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = load i32, ptr %0, align 4, !tbaa !131
  store i32 %i.bo, ptr %0, align 4, !tbaa !131
  store i32 %i.cb, ptr %i.bk, align 4, !tbaa !131
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.cc = icmp slt i32 %i.bs, %i.bz
  %i.cd = load i32, ptr %0, align 4, !tbaa !131   ; 2 uses
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bw, ptr %0, align 4, !tbaa !131
  store i32 %i.cd, ptr %i.bl, align 4, !tbaa !131
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.bm, ptr %0, align 4, !tbaa !131
  store i32 %i.cd, ptr %i.e, align 4, !tbaa !131
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph45
  %i.ce = icmp slt i32 %i.bs, %i.bz
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = load i32, ptr %0, align 4, !tbaa !131
  store i32 %i.bm, ptr %0, align 4, !tbaa !131
  store i32 %i.cf, ptr %i.e, align 4, !tbaa !131
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.cg = icmp slt i32 %i.bu, %i.bz
  %i.ch = load i32, ptr %0, align 4, !tbaa !131   ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bw, ptr %0, align 4, !tbaa !131
  store i32 %i.ch, ptr %i.bl, align 4, !tbaa !131
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %i.bo, ptr %0, align 4, !tbaa !131
  store i32 %i.ch, ptr %i.bk, align 4, !tbaa !131
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_SF_T0_.exit.i

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_SF_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader, %bb.t
  %.013.i.i = phi ptr [ %.114.i.i, %bb.t ], [ %.02343, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.cr, %bb.t ], [ %i.e, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %0, align 4, !tbaa !131
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !131 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_SF_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_SF_T0_.exit.i ], [ %i.cr, %bb.r ] ; 8 uses
  %i.cm = load i32, ptr %.1.i.i, align 4, !tbaa !131 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !131
  %i.cq = icmp slt i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.cq, label %bb.r, label %.preheader.i.i, !llvm.loop !3231

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.r ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.cs = load i32, ptr %.114.i.i, align 4, !tbaa !131 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !131
  %i.cw = icmp slt i32 %i.cl, %i.cv
  br i1 %i.cw, label %.preheader.i.i, label %bb.s, !llvm.loop !3232

bb.s:                                             ; preds = %.preheader.i.i
  %i.cx = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.cx, label %bb.t, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEET_SF_SF_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i32 %i.cs, ptr %.1.i.i, align 4, !tbaa !131
  store i32 %i.cm, ptr %.114.i.i, align 4, !tbaa !131
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_SF_T0_.exit.i, !llvm.loop !3233

_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEET_SF_SF_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02343, i64 noundef %i.bi, ptr nonnull %3)
  %i.cy = ptrtoint ptr %.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a                     ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 64
  br i1 %i.da, label %bb.b, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_T0_.exit, !llvm.loop !3229

_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEET_SF_SF_T0_.exit, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_SF_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %.pre22.i = load i32, ptr %0, align 4, !tbaa !131
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !224 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %3 = phi ptr [ %.pre24.i, %bb.b ], [ %5, %bb.h ] ; 2 uses
  %i.e = phi ptr [ %.pre24.i, %bb.b ], [ %i.ad, %bb.h ] ; 6 uses
  %i.f = phi i32 [ %.pre22.i, %bb.b ], [ %i.ae, %bb.h ] ; 2 uses
  %.020.i.idx = phi i64 [ 4, %bb.b ], [ %.020.i.add, %bb.h ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %bb.h ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 4 uses
  %i.g = load i32, ptr %.020.i.ptr, align 4, !tbaa !131 ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = sext i32 %i.f to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !131  ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !131
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = icmp samesign ugt i64 %.020.i.idx, 4
  br i1 %i.o, label %bb.e, label %bb.f, !prof !291

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  %.pre23.i = load ptr, ptr %2, align 8, !tbaa !224 ; 2 uses
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  store i32 %i.f, ptr %i.p, align 4, !tbaa !131
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.f, %bb.e
  %4 = phi ptr [ %.pre23.i, %bb.e ], [ %3, %bb.f ]
  %i.q = phi ptr [ %.pre23.i, %bb.e ], [ %i.e, %bb.f ]
  store i32 %i.g, ptr %0, align 4, !tbaa !131
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.r = load i32, ptr %.pn19.i, align 4, !tbaa !131 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !131
  %i.v = icmp slt i32 %i.k, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.w = phi i32 [ %i.x, %.lr.ph.i.i ], [ %i.r, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i.ptr, %bb.g ]
  store i32 %i.w, ptr %.0912.i.i, align 4, !tbaa !131
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -4 ; 2 uses
  %i.x = load i32, ptr %.0.i.i, align 4, !tbaa !131 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = load i32, ptr %i.j, align 4, !tbaa !131
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !131
  %i.ac = icmp slt i32 %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i, !llvm.loop !3234

_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.g
  %.09.lcssa.i.i = phi ptr [ %.020.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.09.lcssa.i.i, align 4, !tbaa !131
  %.pre.i = load i32, ptr %0, align 4, !tbaa !131
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
  %5 = phi ptr [ %4, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ %3, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i ] ; 4 uses
  %i.ad = phi ptr [ %i.q, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i ]
  %i.ae = phi i32 [ %i.g, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i ]
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_T0_.exit, label %bb.c, !llvm.loop !3235

_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_T0_.exit: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.af, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_T0_.exit, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i11
  %.08.i = phi ptr [ %i.aw, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i11 ], [ %i.af, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_T0_.exit ] ; 5 uses
  %i.ag = load i32, ptr %.08.i, align 4, !tbaa !131 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ah ; 2 uses
  %.011.i.i = getelementptr inbounds i8, ptr %.08.i, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %.011.i.i, align 4, !tbaa !131 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = load i32, ptr %i.ai, align 4, !tbaa !131
  %i.am = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ak
  %i.an = load i32, ptr %i.am, align 4, !tbaa !131
  %i.ao = icmp slt i32 %i.al, %i.an
  br i1 %i.ao, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i14
  %i.ap = phi i32 [ %i.aq, %.lr.ph.i.i14 ], [ %i.aj, %.lr.ph.i ]
  %.013.i.i15 = phi ptr [ %.0.i.i17, %.lr.ph.i.i14 ], [ %.011.i.i, %.lr.ph.i ] ; 3 uses
  %.0912.i.i16 = phi ptr [ %.013.i.i15, %.lr.ph.i.i14 ], [ %.08.i, %.lr.ph.i ]
  store i32 %i.ap, ptr %.0912.i.i16, align 4, !tbaa !131
  %.0.i.i17 = getelementptr inbounds i8, ptr %.013.i.i15, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %.0.i.i17, align 4, !tbaa !131 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = load i32, ptr %i.ai, align 4, !tbaa !131
  %i.at = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ar
  %i.au = load i32, ptr %i.at, align 4, !tbaa !131
  %i.av = icmp slt i32 %i.as, %i.au
  br i1 %i.av, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i11, !llvm.loop !3234

_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i
  %.09.lcssa.i.i12 = phi ptr [ %.08.i, %.lr.ph.i ], [ %.013.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ag, ptr %.09.lcssa.i.i12, align 4, !tbaa !131
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.aw, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_T0_.exit, label %.lr.ph.i, !llvm.loop !3236

bb.i:                                             ; preds = %bb.a
  %i.ax = icmp eq ptr %0, %1
  br i1 %i.ax, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %.017.i18 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i18, %1
  br i1 %.not18.i, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i
  %.pre22.i20 = load i32, ptr %0, align 4, !tbaa !131
  %.pre24.i21 = load ptr, ptr %2, align 8, !tbaa !224
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %.lr.ph.i19
  %i.ay = phi ptr [ %.pre24.i21, %.lr.ph.i19 ], [ %i.ce, %bb.p ] ; 7 uses
  %i.az = phi i32 [ %.pre22.i20, %.lr.ph.i19 ], [ %i.cf, %bb.p ] ; 2 uses
  %.020.i22 = phi ptr [ %.017.i18, %.lr.ph.i19 ], [ %.0.i27, %bb.p ] ; 6 uses
  %.pn19.i23 = phi ptr [ %0, %.lr.ph.i19 ], [ %.020.i22, %bb.p ] ; 4 uses
  %i.ba = load i32, ptr %.020.i22, align 4, !tbaa !131 ; 4 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = sext i32 %i.az to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bb ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !131 ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !131
  %i.bh = icmp slt i32 %i.be, %i.bg
  br i1 %i.bh, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bi = ptrtoint ptr %.020.i22 to i64
  %i.bj = sub i64 %i.bi, %i.b                     ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.l, label %bb.m, !prof !291

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 8
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bo, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bj, i1 false)
  %.pre23.i34 = load ptr, ptr %2, align 8, !tbaa !224
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i33

bb.m:                                             ; preds = %bb.k
  %i.bp = icmp eq i64 %i.bj, 4
  br i1 %i.bp, label %bb.n, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i33

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 4
  store i32 %i.az, ptr %i.bq, align 4, !tbaa !131
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i33

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i33:   ; preds = %bb.n, %bb.m, %bb.l
  %i.br = phi ptr [ %.pre23.i34, %bb.l ], [ %i.ay, %bb.m ], [ %i.ay, %bb.n ]
  store i32 %i.ba, ptr %0, align 4, !tbaa !131
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.bs = load i32, ptr %.pn19.i23, align 4, !tbaa !131 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !131
  %i.bw = icmp slt i32 %i.be, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i29, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i24

.lr.ph.i.i29:                                     ; preds = %bb.o, %.lr.ph.i.i29
  %i.bx = phi i32 [ %i.by, %.lr.ph.i.i29 ], [ %i.bs, %bb.o ]
  %.013.i.i30 = phi ptr [ %.0.i.i32, %.lr.ph.i.i29 ], [ %.pn19.i23, %bb.o ] ; 3 uses
  %.0912.i.i31 = phi ptr [ %.013.i.i30, %.lr.ph.i.i29 ], [ %.020.i22, %bb.o ]
  store i32 %i.bx, ptr %.0912.i.i31, align 4, !tbaa !131
  %.0.i.i32 = getelementptr inbounds i8, ptr %.013.i.i30, i64 -4 ; 2 uses
  %i.by = load i32, ptr %.0.i.i32, align 4, !tbaa !131 ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = load i32, ptr %i.bd, align 4, !tbaa !131
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bz
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !131
  %i.cd = icmp slt i32 %i.ca, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i29, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i24, !llvm.loop !3234

_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i24: ; preds = %.lr.ph.i.i29, %bb.o
  %.09.lcssa.i.i25 = phi ptr [ %.020.i22, %bb.o ], [ %.013.i.i30, %.lr.ph.i.i29 ]
  store i32 %i.ba, ptr %.09.lcssa.i.i25, align 4, !tbaa !131
  %.pre.i26 = load i32, ptr %0, align 4, !tbaa !131
  br label %bb.p

bb.p:                                             ; preds = %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i24, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i33
  %i.ce = phi ptr [ %i.br, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i33 ], [ %i.ay, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i24 ]
  %i.cf = phi i32 [ %i.ba, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i33 ], [ %.pre.i26, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i24 ]
  %.0.i27 = getelementptr inbounds nuw i8, ptr %.020.i22, i64 4 ; 2 uses
  %.not.i28 = icmp eq ptr %.0.i27, %1
  br i1 %.not.i28, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_T0_.exit, label %bb.j, !llvm.loop !3235

_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_T0_.exit: ; preds = %bb.p, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_.exit.i11, %.preheader.i, %bb.i, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_SF_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !3239 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_SG_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.ba, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_SG_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !131  ; 2 uses
  %i.r = icmp slt i64 %.014.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_SG_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !224 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.030.i.us = phi i64 [ %.014.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.030.i.us, 1                    ; 3 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr [4 x i8], ptr %0, i64 %i.t
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.v, align 4, !tbaa !131
  %i.z = sext i32 %i.y to i64
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !131
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.z
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !131
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ab
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !131
  %i.ag = icmp slt i32 %i.ad, %i.af
  %i.ah = or disjoint i64 %i.t, 1
  %spec.select.i.us = select i1 %i.ag, i64 %i.ah, i64 %i.u ; 6 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !131
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %.030.i.us
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !131
  %i.al = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.al, label %bb.c, label %._crit_edge.i.us, !llvm.loop !71

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.am = icmp sgt i64 %spec.select.i.us, %.014.us
  br i1 %i.am, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_SG_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.an = sext i32 %i.q to i64
  %i.ao = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !224 ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.01317.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.e ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.us
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !131 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !131
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !131
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.e, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_SG_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.us
  store i32 %i.ar, ptr %i.ax, align 4, !tbaa !131
  %i.ay = icmp sgt i64 %.018.i.i.us, %.014.us
  br i1 %i.ay, label %bb.d, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi1ELb0EEEEEEEEvT_T0_SG_T1_T2_.exit.us, !llvm.loop !72

end_hunk_3
begin_hunk_4_@_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_T0_T1_:bb.a
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.030.i.i.i.i
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !131
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.o
  br i1 %i.aj, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !73

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ak = and i64 %i.l, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = add nsw i64 %i.m, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i.i.i, %i.an
  br i1 %i.ao, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !131
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !131
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.128.i8.i.i.i = phi i64 [ %i.aq, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.au = sext i32 %i.i to i64
  %i.av = load ptr, ptr %3, align 8, !tbaa !227   ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.au
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.01317.i.i.i.i.i = phi i64 [ %.128.i8.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.018.i.i910.i.i.i, %bb.g ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i910.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i910.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !131 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !131
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !131
  %i.bd = icmp slt i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.g, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds [4 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i32 %i.ay, ptr %i.be, align 4, !tbaa !131
  %.not11.i.i.i = icmp eq i64 %.018.i.i910.i.i.i, 0
  br i1 %.not11.i.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_RT0_.exit.i.i, label %bb.f, !llvm.loop !74

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.01317.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i32 %i.i, ptr %i.bf, align 4, !tbaa !131
  %i.bg = icmp sgt i64 %i.l, 4
  br i1 %i.bg, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_T0_.exit, !llvm.loop !3241

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0152244 = phi i64 [ %i.bi, %bb.b ], [ %2, %.lr.ph ]
  %.02343 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.bh = phi i64 [ %i.cz, %bb.b ], [ %i.c, %.lr.ph ]
  %i.bi = add nsw i64 %.0152244, -1               ; 3 uses
  %i.bj = lshr i64 %i.bh, 3
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %.02343, i64 -4 ; 3 uses
  %i.bm = load i32, ptr %i.e, align 4, !tbaa !131 ; 3 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = load i32, ptr %i.bk, align 4, !tbaa !131 ; 3 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = load ptr, ptr %3, align 8, !tbaa !227   ; 6 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bn
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !131 ; 3 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bp
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !131 ; 3 uses
  %i.bv = icmp slt i32 %i.bs, %i.bu
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !131 ; 3 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !131 ; 4 uses
  br i1 %i.bv, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph45
  %i.ca = icmp slt i32 %i.bu, %i.bz
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = load i32, ptr %0, align 4, !tbaa !131
  store i32 %i.bo, ptr %0, align 4, !tbaa !131
  store i32 %i.cb, ptr %i.bk, align 4, !tbaa !131
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.cc = icmp slt i32 %i.bs, %i.bz
  %i.cd = load i32, ptr %0, align 4, !tbaa !131   ; 2 uses
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.bw, ptr %0, align 4, !tbaa !131
  store i32 %i.cd, ptr %i.bl, align 4, !tbaa !131
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.bm, ptr %0, align 4, !tbaa !131
  store i32 %i.cd, ptr %i.e, align 4, !tbaa !131
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph45
  %i.ce = icmp slt i32 %i.bs, %i.bz
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cf = load i32, ptr %0, align 4, !tbaa !131
  store i32 %i.bm, ptr %0, align 4, !tbaa !131
  store i32 %i.cf, ptr %i.e, align 4, !tbaa !131
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.cg = icmp slt i32 %i.bu, %i.bz
  %i.ch = load i32, ptr %0, align 4, !tbaa !131   ; 2 uses
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.bw, ptr %0, align 4, !tbaa !131
  store i32 %i.ch, ptr %i.bl, align 4, !tbaa !131
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i32 %i.bo, ptr %0, align 4, !tbaa !131
  store i32 %i.ch, ptr %i.bk, align 4, !tbaa !131
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_SF_T0_.exit.i

_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_SF_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader, %bb.t
  %.013.i.i = phi ptr [ %.114.i.i, %bb.t ], [ %.02343, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.cr, %bb.t ], [ %i.e, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_SF_T0_.exit.i.preheader ]
  %i.ci = load i32, ptr %0, align 4, !tbaa !131
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !131 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_SF_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_SF_T0_.exit.i ], [ %i.cr, %bb.r ] ; 8 uses
  %i.cm = load i32, ptr %.1.i.i, align 4, !tbaa !131 ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !131
  %i.cq = icmp slt i32 %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4 ; 2 uses
  br i1 %i.cq, label %bb.r, label %.preheader.i.i, !llvm.loop !3242

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.r ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -4 ; 5 uses
  %i.cs = load i32, ptr %.114.i.i, align 4, !tbaa !131 ; 2 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.bq, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !131
  %i.cw = icmp slt i32 %i.cl, %i.cv
  br i1 %i.cw, label %.preheader.i.i, label %bb.s, !llvm.loop !3243

bb.s:                                             ; preds = %.preheader.i.i
  %i.cx = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.cx, label %bb.t, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEET_SF_SF_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i32 %i.cs, ptr %.1.i.i, align 4, !tbaa !131
  store i32 %i.cm, ptr %.114.i.i, align 4, !tbaa !131
  br label %_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_SF_T0_.exit.i, !llvm.loop !3244

_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEET_SF_SF_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02343, i64 noundef %i.bi, ptr nonnull %3)
  %i.cy = ptrtoint ptr %.1.i.i to i64
  %i.cz = sub i64 %i.cy, %i.a                     ; 2 uses
  %i.da = icmp sgt i64 %i.cz, 64
  br i1 %i.da, label %bb.b, label %_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_T0_.exit, !llvm.loop !3240

_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEET_SF_SF_T0_.exit, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_SF_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %.pre22.i = load i32, ptr %0, align 4, !tbaa !131
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !227 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %3 = phi ptr [ %.pre24.i, %bb.b ], [ %5, %bb.h ] ; 2 uses
  %i.e = phi ptr [ %.pre24.i, %bb.b ], [ %i.ad, %bb.h ] ; 6 uses
  %i.f = phi i32 [ %.pre22.i, %bb.b ], [ %i.ae, %bb.h ] ; 2 uses
  %.020.i.idx = phi i64 [ 4, %bb.b ], [ %.020.i.add, %bb.h ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %bb.b ], [ %.020.i.ptr, %bb.h ] ; 3 uses
  %.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.020.i.idx ; 4 uses
  %i.g = load i32, ptr %.020.i.ptr, align 4, !tbaa !131 ; 4 uses
  %i.h = sext i32 %i.g to i64
  %i.i = sext i32 %i.f to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.h ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !131  ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !131
  %i.n = icmp slt i32 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = icmp samesign ugt i64 %.020.i.idx, 4
  br i1 %i.o, label %bb.e, label %bb.f, !prof !291

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.020.i.idx, i1 false)
  %.pre23.i = load ptr, ptr %2, align 8, !tbaa !227 ; 2 uses
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 4
  store i32 %i.f, ptr %i.p, align 4, !tbaa !131
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.f, %bb.e
  %4 = phi ptr [ %.pre23.i, %bb.e ], [ %3, %bb.f ]
  %i.q = phi ptr [ %.pre23.i, %bb.e ], [ %i.e, %bb.f ]
  store i32 %i.g, ptr %0, align 4, !tbaa !131
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.r = load i32, ptr %.pn19.i, align 4, !tbaa !131 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !131
  %i.v = icmp slt i32 %i.k, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.w = phi i32 [ %i.x, %.lr.ph.i.i ], [ %i.r, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.020.i.ptr, %bb.g ]
  store i32 %i.w, ptr %.0912.i.i, align 4, !tbaa !131
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -4 ; 2 uses
  %i.x = load i32, ptr %.0.i.i, align 4, !tbaa !131 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = load i32, ptr %i.j, align 4, !tbaa !131
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.y
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !131
  %i.ac = icmp slt i32 %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i, !llvm.loop !3245

_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.g
  %.09.lcssa.i.i = phi ptr [ %.020.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.09.lcssa.i.i, align 4, !tbaa !131
  %.pre.i = load i32, ptr %0, align 4, !tbaa !131
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i
  %5 = phi ptr [ %4, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ %3, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i ] ; 4 uses
  %i.ad = phi ptr [ %i.q, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i ]
  %i.ae = phi i32 [ %i.g, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i ]
  %.020.i.add = add nuw nsw i64 %.020.i.idx, 4    ; 2 uses
  %.not.i = icmp eq i64 %.020.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_T0_.exit, label %bb.c, !llvm.loop !3246

_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_T0_.exit: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.af, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_T0_.exit, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i11
  %.08.i = phi ptr [ %i.aw, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i11 ], [ %i.af, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_T0_.exit ] ; 5 uses
  %i.ag = load i32, ptr %.08.i, align 4, !tbaa !131 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ah ; 2 uses
  %.011.i.i = getelementptr inbounds i8, ptr %.08.i, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %.011.i.i, align 4, !tbaa !131 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = load i32, ptr %i.ai, align 4, !tbaa !131
  %i.am = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ak
  %i.an = load i32, ptr %i.am, align 4, !tbaa !131
  %i.ao = icmp slt i32 %i.al, %i.an
  br i1 %i.ao, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i, %.lr.ph.i.i14
  %i.ap = phi i32 [ %i.aq, %.lr.ph.i.i14 ], [ %i.aj, %.lr.ph.i ]
  %.013.i.i15 = phi ptr [ %.0.i.i17, %.lr.ph.i.i14 ], [ %.011.i.i, %.lr.ph.i ] ; 3 uses
  %.0912.i.i16 = phi ptr [ %.013.i.i15, %.lr.ph.i.i14 ], [ %.08.i, %.lr.ph.i ]
  store i32 %i.ap, ptr %.0912.i.i16, align 4, !tbaa !131
  %.0.i.i17 = getelementptr inbounds i8, ptr %.013.i.i15, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %.0.i.i17, align 4, !tbaa !131 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = load i32, ptr %i.ai, align 4, !tbaa !131
  %i.at = getelementptr inbounds [4 x i8], ptr %5, i64 %i.ar
  %i.au = load i32, ptr %i.at, align 4, !tbaa !131
  %i.av = icmp slt i32 %i.as, %i.au
  br i1 %i.av, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i11, !llvm.loop !3245

_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i
  %.09.lcssa.i.i12 = phi ptr [ %.08.i, %.lr.ph.i ], [ %.013.i.i15, %.lr.ph.i.i14 ]
  store i32 %i.ag, ptr %.09.lcssa.i.i12, align 4, !tbaa !131
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i, i64 4 ; 2 uses
  %.not.i13 = icmp eq ptr %i.aw, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_T0_.exit, label %.lr.ph.i, !llvm.loop !3247

bb.i:                                             ; preds = %bb.a
  %i.ax = icmp eq ptr %0, %1
  br i1 %i.ax, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_T0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %.017.i18 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not18.i = icmp eq ptr %.017.i18, %1
  br i1 %.not18.i, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i
  %.pre22.i20 = load i32, ptr %0, align 4, !tbaa !131
  %.pre24.i21 = load ptr, ptr %2, align 8, !tbaa !227
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %.lr.ph.i19
  %i.ay = phi ptr [ %.pre24.i21, %.lr.ph.i19 ], [ %i.ce, %bb.p ] ; 7 uses
  %i.az = phi i32 [ %.pre22.i20, %.lr.ph.i19 ], [ %i.cf, %bb.p ] ; 2 uses
  %.020.i22 = phi ptr [ %.017.i18, %.lr.ph.i19 ], [ %.0.i27, %bb.p ] ; 6 uses
  %.pn19.i23 = phi ptr [ %0, %.lr.ph.i19 ], [ %.020.i22, %bb.p ] ; 4 uses
  %i.ba = load i32, ptr %.020.i22, align 4, !tbaa !131 ; 4 uses
  %i.bb = sext i32 %i.ba to i64
  %i.bc = sext i32 %i.az to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bb ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !131 ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !131
  %i.bh = icmp slt i32 %i.be, %i.bg
  br i1 %i.bh, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bi = ptrtoint ptr %.020.i22 to i64
  %i.bj = sub i64 %i.bi, %i.b                     ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 2                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.l, label %bb.m, !prof !291

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 8
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bo, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bj, i1 false)
  %.pre23.i34 = load ptr, ptr %2, align 8, !tbaa !227
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i33

bb.m:                                             ; preds = %bb.k
  %i.bp = icmp eq i64 %i.bj, 4
  br i1 %i.bp, label %bb.n, label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i33

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 4
  store i32 %i.az, ptr %i.bq, align 4, !tbaa !131
  br label %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i33

_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i33:   ; preds = %bb.n, %bb.m, %bb.l
  %i.br = phi ptr [ %.pre23.i34, %bb.l ], [ %i.ay, %bb.m ], [ %i.ay, %bb.n ]
  store i32 %i.ba, ptr %0, align 4, !tbaa !131
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.bs = load i32, ptr %.pn19.i23, align 4, !tbaa !131 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !131
  %i.bw = icmp slt i32 %i.be, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i29, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i24

.lr.ph.i.i29:                                     ; preds = %bb.o, %.lr.ph.i.i29
  %i.bx = phi i32 [ %i.by, %.lr.ph.i.i29 ], [ %i.bs, %bb.o ]
  %.013.i.i30 = phi ptr [ %.0.i.i32, %.lr.ph.i.i29 ], [ %.pn19.i23, %bb.o ] ; 3 uses
  %.0912.i.i31 = phi ptr [ %.013.i.i30, %.lr.ph.i.i29 ], [ %.020.i22, %bb.o ]
  store i32 %i.bx, ptr %.0912.i.i31, align 4, !tbaa !131
  %.0.i.i32 = getelementptr inbounds i8, ptr %.013.i.i30, i64 -4 ; 2 uses
  %i.by = load i32, ptr %.0.i.i32, align 4, !tbaa !131 ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = load i32, ptr %i.bd, align 4, !tbaa !131
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bz
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !131
  %i.cd = icmp slt i32 %i.ca, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i29, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i24, !llvm.loop !3245

_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i24: ; preds = %.lr.ph.i.i29, %bb.o
  %.09.lcssa.i.i25 = phi ptr [ %.020.i22, %bb.o ], [ %.013.i.i30, %.lr.ph.i.i29 ]
  store i32 %i.ba, ptr %.09.lcssa.i.i25, align 4, !tbaa !131
  %.pre.i26 = load i32, ptr %0, align 4, !tbaa !131
  br label %bb.p

bb.p:                                             ; preds = %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i24, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i33
  %i.ce = phi ptr [ %i.br, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i33 ], [ %i.ay, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i24 ]
  %i.cf = phi i32 [ %i.ba, %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit.i33 ], [ %.pre.i26, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i24 ]
  %.0.i27 = getelementptr inbounds nuw i8, ptr %.020.i22, i64 4 ; 2 uses
  %.not.i28 = icmp eq ptr %.0.i27, %1
  br i1 %.not.i28, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_T0_.exit, label %bb.j, !llvm.loop !3246

_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_T0_.exit: ; preds = %bb.p, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_.exit.i11, %.preheader.i, %bb.i, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_SF_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !3250 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_SG_T1_T2_.exit.us
  %.014.us = phi i64 [ %i.ba, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_SG_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.us
  %i.q = load i32, ptr %i.p, align 4, !tbaa !131  ; 2 uses
  %i.r = icmp slt i64 %.014.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_SG_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !227 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.030.i.us = phi i64 [ %.014.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.030.i.us, 1                    ; 3 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr [4 x i8], ptr %0, i64 %i.t
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.v, align 4, !tbaa !131
  %i.z = sext i32 %i.y to i64
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !131
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.z
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !131
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ab
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !131
  %i.ag = icmp slt i32 %i.ad, %i.af
  %i.ah = or disjoint i64 %i.t, 1
  %spec.select.i.us = select i1 %i.ag, i64 %i.ah, i64 %i.u ; 6 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !131
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %.030.i.us
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !131
  %i.al = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.al, label %bb.c, label %._crit_edge.i.us, !llvm.loop !73

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.am = icmp sgt i64 %spec.select.i.us, %.014.us
  br i1 %i.am, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_SG_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.an = sext i32 %i.q to i64
  %i.ao = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !227 ; 2 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.01317.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.018.i.i.us, %bb.e ] ; 3 uses
  %.018.in.i.i.us = add nsw i64 %.01317.i.i.us, -1
  %.018.i.i.us = sdiv i64 %.018.in.i.i.us, 2      ; 4 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.018.i.i.us
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !131 ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !131
  %i.av = load i32, ptr %i.ap, align 4, !tbaa !131
  %i.aw = icmp slt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.e, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_SG_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01317.i.i.us
  store i32 %i.ar, ptr %i.ax, align 4, !tbaa !131
  %i.ay = icmp sgt i64 %.018.i.i.us, %.014.us
  br i1 %i.ay, label %bb.d, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN3igl19IndexVectorLessThanIKN5Eigen5BlockIKNS6_6MatrixIiLi1ELi6ELi1ELi1ELi6EEELi1ELi6ELb1EEEEEEEEvT_T0_SG_T1_T2_.exit.us, !llvm.loop !74

end_hunk_4
begin_hunk_5_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_T0_T1_:bb.a
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !115
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.y
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !115
  %i.ad = icmp slt i64 %i.aa, %i.ac
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.v, i64 %i.t ; 4 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !115
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i.i.i
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !115
  %i.ah = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ah, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !81

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ai = and i64 %i.m, 8
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ak = add nsw i64 %i.n, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa.i.i.i.i, %i.al
  br i1 %i.am, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.an = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !115
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !115
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.ao, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.as = load ptr, ptr %3, align 8, !tbaa !238   ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.j
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.av = load i64, ptr %i.au, align 8, !tbaa !115 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !115
  %i.ay = load i64, ptr %i.at, align 8, !tbaa !115
  %i.az = icmp slt i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i64 %i.av, ptr %i.ba, align 8, !tbaa !115
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_RT0_.exit.i.i, label %bb.f, !llvm.loop !82

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.j, ptr %i.bb, align 8, !tbaa !115
  %i.bc = icmp sgt i64 %i.m, 8
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_T0_.exit, !llvm.loop !3356

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.be, %bb.b ], [ %2, %.lr.ph ]
  %i.bd = phi i64 [ %i.cq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.be = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bf = lshr i64 %i.bd, 1
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %storemerge2143, i64 -8 ; 3 uses
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !115 ; 3 uses
  %i.bj = load i64, ptr %i.bg, align 8, !tbaa !115 ; 3 uses
  %i.bk = load ptr, ptr %3, align 8, !tbaa !238   ; 6 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !115 ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !115 ; 3 uses
  %i.bp = icmp slt i64 %i.bm, %i.bo
  %i.bq = load i64, ptr %i.bh, align 8, !tbaa !115 ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !115 ; 4 uses
  br i1 %i.bp, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.bt = icmp slt i64 %i.bo, %i.bs
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bu = load i64, ptr %0, align 8, !tbaa !115
  store i64 %i.bj, ptr %0, align 8, !tbaa !115
  store i64 %i.bu, ptr %i.bg, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bv = icmp slt i64 %i.bm, %i.bs
  %i.bw = load i64, ptr %0, align 8, !tbaa !115   ; 2 uses
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.bq, ptr %0, align 8, !tbaa !115
  store i64 %i.bw, ptr %i.bh, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i64 %i.bi, ptr %0, align 8, !tbaa !115
  store i64 %i.bw, ptr %i.f, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.bx = icmp slt i64 %i.bm, %i.bs
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = load i64, ptr %0, align 8, !tbaa !115
  store i64 %i.bi, ptr %0, align 8, !tbaa !115
  store i64 %i.by, ptr %i.f, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bz = icmp slt i64 %i.bo, %i.bs
  %i.ca = load i64, ptr %0, align 8, !tbaa !115   ; 2 uses
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.bq, ptr %0, align 8, !tbaa !115
  store i64 %i.ca, ptr %i.bh, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i64 %i.bj, ptr %0, align 8, !tbaa !115
  store i64 %i.ca, ptr %i.bg, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.ci, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %i.cb = load i64, ptr %0, align 8, !tbaa !115
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !115 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_SH_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_SH_T0_.exit.i ], [ %i.ci, %bb.r ] ; 8 uses
  %i.ce = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !115 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !115
  %i.ch = icmp slt i64 %i.cg, %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ch, label %bb.r, label %.preheader.i.i, !llvm.loop !3357

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 5 uses
  %i.cj = load i64, ptr %.sroa.09.1.i.i, align 8, !tbaa !115 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.cj
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !115
  %i.cm = icmp slt i64 %i.cd, %i.cl
  br i1 %i.cm, label %.preheader.i.i, label %bb.s, !llvm.loop !3358

bb.s:                                             ; preds = %.preheader.i.i
  %i.cn = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cn, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEET_SH_SH_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i64 %i.cj, ptr %.sroa.012.1.i.i, align 8, !tbaa !115
  store i64 %i.ce, ptr %.sroa.09.1.i.i, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_SH_T0_.exit.i, !llvm.loop !3359

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEET_SH_SH_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2143, i64 noundef %i.be, ptr nonnull %3)
  %i.co = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cp = sub i64 %i.co, %i.a
  %i.cq = ashr exact i64 %i.cp, 3                 ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, 16
  br i1 %i.cr, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_T0_.exit, !llvm.loop !3355

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEET_SH_SH_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_SH_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i64, ptr %0, align 8, !tbaa !115
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !238 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %3 = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %5, %bb.g ] ; 2 uses
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.z, %bb.g ] ; 6 uses
  %i.f = phi i64 [ %.pre23.i, %.lr.ph.i ], [ %i.aa, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i64, ptr %.sroa.0.021.i.ptr, align 8, !tbaa !115 ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !115  ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.k = load i64, ptr %i.j, align 8, !tbaa !115
  %i.l = icmp slt i64 %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = icmp samesign ugt i64 %.sroa.0.021.i.idx, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !291

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !238 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.f, ptr %i.n, align 8, !tbaa !115
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %4 = phi ptr [ %.pre24.i, %bb.d ], [ %3, %bb.e ]
  %i.o = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i64 %i.g, ptr %0, align 8, !tbaa !115
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.p = load i64, ptr %.pn20.i, align 8, !tbaa !115 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !115
  %i.s = icmp slt i64 %i.i, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.t = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.p, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i64 %i.t, ptr %.sroa.05.09.i.i, align 8, !tbaa !115
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.u = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !115 ; 2 uses
  %i.v = load i64, ptr %i.h, align 8, !tbaa !115
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.u
  %i.x = load i64, ptr %i.w, align 8, !tbaa !115
  %i.y = icmp slt i64 %i.v, %i.x
  br i1 %i.y, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i, !llvm.loop !3360

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i64 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !115
  %.pre.i = load i64, ptr %0, align 8, !tbaa !115
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i
  %5 = phi ptr [ %4, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %3, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i ] ; 4 uses
  %i.z = phi ptr [ %i.o, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i ]
  %i.aa = phi i64 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_T0_.exit, label %bb.b, !llvm.loop !3361

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_T0_.exit: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not7.i = icmp eq ptr %i.ab, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i11
  %.sroa.0.08.i = phi ptr [ %i.ap, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i11 ], [ %i.ab, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_T0_.exit ] ; 5 uses
  %i.ac = load i64, ptr %.sroa.0.08.i, align 8, !tbaa !115 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ac ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -8 ; 2 uses
  %i.ae = load i64, ptr %.sroa.0.08.i.i, align 8, !tbaa !115 ; 2 uses
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !115
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ae
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !115
  %i.ai = icmp slt i64 %i.af, %i.ah
  br i1 %i.ai, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i14
  %i.aj = phi i64 [ %i.ak, %.lr.ph.i.i14 ], [ %i.ae, %.lr.ph.i10 ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i64 %i.aj, ptr %.sroa.05.09.i.i16, align 8, !tbaa !115
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -8 ; 2 uses
  %i.ak = load i64, ptr %.sroa.0.0.i.i17, align 8, !tbaa !115 ; 2 uses
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !115
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ak
  %i.an = load i64, ptr %i.am, align 8, !tbaa !115
  %i.ao = icmp slt i64 %i.al, %i.an
  br i1 %i.ao, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i11, !llvm.loop !3360

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i64 %i.ac, ptr %.sroa.05.0.lcssa.i.i12, align 8, !tbaa !115
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8 ; 2 uses
  %.not.i13 = icmp eq ptr %i.ap, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_T0_.exit, label %.lr.ph.i10, !llvm.loop !3362

bb.h:                                             ; preds = %bb.a
  %i.aq = icmp eq ptr %0, %1
  br i1 %i.aq, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.018.i19 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not19.i20 = icmp eq ptr %.sroa.0.018.i19, %1
  br i1 %.not19.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre23.i22 = load i64, ptr %0, align 8, !tbaa !115
  %.pre25.i23 = load ptr, ptr %2, align 8, !tbaa !238
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.ar = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.bt, %bb.o ] ; 7 uses
  %i.as = phi i64 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.bu, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.018.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.at = load i64, ptr %.sroa.0.021.i24, align 8, !tbaa !115 ; 4 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.at ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !115 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !115
  %i.ay = icmp slt i64 %i.av, %i.ax
  br i1 %i.ay, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.az = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.ba = sub i64 %i.az, %i.b                     ; 3 uses
  %i.bb = ashr exact i64 %i.ba, 3                 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 1
  br i1 %i.bc, label %bb.k, label %bb.l, !prof !291

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 16
  %i.be = sub nsw i64 0, %i.bb
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ba, i1 false)
  %.pre24.i36 = load ptr, ptr %2, align 8, !tbaa !238
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.bg = icmp eq i64 %i.ba, 8
  br i1 %i.bg, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  store i64 %i.as, ptr %i.bh, align 8, !tbaa !115
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  %i.bi = phi ptr [ %.pre24.i36, %bb.k ], [ %i.ar, %bb.l ], [ %i.ar, %bb.m ]
  store i64 %i.at, ptr %0, align 8, !tbaa !115
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bj = load i64, ptr %.pn20.i25, align 8, !tbaa !115 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !115
  %i.bm = icmp slt i64 %i.av, %i.bl
  br i1 %i.bm, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %i.bn = phi i64 [ %i.bo, %.lr.ph.i.i31 ], [ %i.bj, %bb.n ]
  %.sroa.0.010.i.i32 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph.i.i31 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i33 = phi ptr [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ], [ %.sroa.0.021.i24, %bb.n ]
  store i64 %i.bn, ptr %.sroa.05.09.i.i33, align 8, !tbaa !115
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32, i64 -8 ; 2 uses
  %i.bo = load i64, ptr %.sroa.0.0.i.i34, align 8, !tbaa !115 ; 2 uses
  %i.bp = load i64, ptr %i.au, align 8, !tbaa !115
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bo
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !115
  %i.bs = icmp slt i64 %i.bp, %i.br
  br i1 %i.bs, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i26, !llvm.loop !3360

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ]
  store i64 %i.at, ptr %.sroa.05.0.lcssa.i.i27, align 8, !tbaa !115
  %.pre.i28 = load i64, ptr %0, align 8, !tbaa !115
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35
  %i.bt = phi ptr [ %i.bi, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %i.ar, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i26 ]
  %i.bu = phi i64 [ %i.at, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 8 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_T0_.exit, label %bb.i, !llvm.loop !3361

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_.exit.i11, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_SH_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !3365 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_SI_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_SI_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.us
  %i.q = load i64, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_SI_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !238 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %i.w
  %i.y = load i64, ptr %i.v, align 8, !tbaa !115
  %i.z = load i64, ptr %i.x, align 8, !tbaa !115
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.y
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !115
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.z
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !115
  %i.ae = icmp slt i64 %i.ab, %i.ad
  %spec.select.i.us = select i1 %i.ae, i64 %i.w, i64 %i.u ; 6 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !115
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.us
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !115
  %i.ai = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ai, label %bb.c, label %._crit_edge.i.us, !llvm.loop !81

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.aj = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_SI_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.ak = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !238 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !115 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !115
  %i.aq = load i64, ptr %i.al, align 8, !tbaa !115
  %i.ar = icmp slt i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_SI_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store i64 %i.an, ptr %i.as, align 8, !tbaa !115
  %i.at = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.at, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_SI_T1_T2_.exit.us, !llvm.loop !82

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IlSaIlEEEEEEEvT_T0_SI_T1_T2_.exit.us: ; preds = %bb.d, %bb.e, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %bb.d ], [ %.0920.i.i.us, %bb.e ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i64 %i.q, ptr %i.au, align 8, !tbaa !115
  %.not.us = icmp eq i64 %.09.us, 0
  %i.av = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !3363

end_hunk_5
begin_hunk_6_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_T0_T1_:bb.a
  %i.aa = load float, ptr %i.z, align 4, !tbaa !252
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.y
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !252
  %i.ad = fcmp olt float %i.aa, %i.ac
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.v, i64 %i.t ; 4 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !115
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i.i.i
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !115
  %i.ah = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ah, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !89

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.ai = and i64 %i.m, 8
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ak = add nsw i64 %i.n, -2
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = icmp eq i64 %.0.lcssa.i.i.i.i, %i.al
  br i1 %i.am, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.an = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ao = or disjoint i64 %i.an, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !115
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !115
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.ao, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.as = load ptr, ptr %3, align 8, !tbaa !249   ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.j
  %i.au = load float, ptr %i.at, align 4, !tbaa !252
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !115 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !252
  %i.az = fcmp olt float %i.ay, %i.au
  br i1 %i.az, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i64 %i.aw, ptr %i.ba, align 8, !tbaa !115
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_RT0_.exit.i.i, label %bb.f, !llvm.loop !90

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.j, ptr %i.bb, align 8, !tbaa !115
  %i.bc = icmp sgt i64 %i.m, 8
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_T0_.exit, !llvm.loop !3468

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.be, %bb.b ], [ %2, %.lr.ph ]
  %i.bd = phi i64 [ %i.cq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.be = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bf = lshr i64 %i.bd, 1
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %storemerge2143, i64 -8 ; 3 uses
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !115 ; 3 uses
  %i.bj = load i64, ptr %i.bg, align 8, !tbaa !115 ; 3 uses
  %i.bk = load ptr, ptr %3, align 8, !tbaa !249   ; 6 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !252 ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bj
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !252 ; 3 uses
  %i.bp = fcmp olt float %i.bm, %i.bo
  %i.bq = load i64, ptr %i.bh, align 8, !tbaa !115 ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !252 ; 4 uses
  br i1 %i.bp, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.bt = fcmp olt float %i.bo, %i.bs
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bu = load i64, ptr %0, align 8, !tbaa !115
  store i64 %i.bj, ptr %0, align 8, !tbaa !115
  store i64 %i.bu, ptr %i.bg, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bv = fcmp olt float %i.bm, %i.bs
  %i.bw = load i64, ptr %0, align 8, !tbaa !115   ; 2 uses
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.bq, ptr %0, align 8, !tbaa !115
  store i64 %i.bw, ptr %i.bh, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i64 %i.bi, ptr %0, align 8, !tbaa !115
  store i64 %i.bw, ptr %i.f, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.bx = fcmp olt float %i.bm, %i.bs
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = load i64, ptr %0, align 8, !tbaa !115
  store i64 %i.bi, ptr %0, align 8, !tbaa !115
  store i64 %i.by, ptr %i.f, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bz = fcmp olt float %i.bo, %i.bs
  %i.ca = load i64, ptr %0, align 8, !tbaa !115   ; 2 uses
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.bq, ptr %0, align 8, !tbaa !115
  store i64 %i.ca, ptr %i.bh, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i64 %i.bj, ptr %0, align 8, !tbaa !115
  store i64 %i.ca, ptr %i.bg, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_SH_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_SH_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader, %bb.t
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.ci, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_SH_T0_.exit.i.preheader ]
  %i.cb = load i64, ptr %0, align 8, !tbaa !115
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !252 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_SH_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_SH_T0_.exit.i ], [ %i.ci, %bb.r ] ; 8 uses
  %i.ce = load i64, ptr %.sroa.012.1.i.i, align 8, !tbaa !115 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !252
  %i.ch = fcmp olt float %i.cg, %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ch, label %bb.r, label %.preheader.i.i, !llvm.loop !3469

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.r ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -8 ; 5 uses
  %i.cj = load i64, ptr %.sroa.09.1.i.i, align 8, !tbaa !115 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !252
  %i.cm = fcmp olt float %i.cd, %i.cl
  br i1 %i.cm, label %.preheader.i.i, label %bb.s, !llvm.loop !3470

bb.s:                                             ; preds = %.preheader.i.i
  %i.cn = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.cn, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEET_SH_SH_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i64 %i.cj, ptr %.sroa.012.1.i.i, align 8, !tbaa !115
  store i64 %i.ce, ptr %.sroa.09.1.i.i, align 8, !tbaa !115
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_SH_T0_.exit.i, !llvm.loop !3471

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEET_SH_SH_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2143, i64 noundef %i.be, ptr nonnull %3)
  %i.co = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.cp = sub i64 %i.co, %i.a
  %i.cq = ashr exact i64 %i.cp, 3                 ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, 16
  br i1 %i.cr, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_T0_.exit, !llvm.loop !3467

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEET_SH_SH_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_SH_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i64, ptr %0, align 8, !tbaa !115
  %.pre25.i = load ptr, ptr %2, align 8, !tbaa !249 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %3 = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %5, %bb.g ] ; 2 uses
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.y, %bb.g ] ; 6 uses
  %i.f = phi i64 [ %.pre23.i, %.lr.ph.i ], [ %i.z, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i64, ptr %.sroa.0.021.i.ptr, align 8, !tbaa !115 ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !252 ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f
  %i.k = load float, ptr %i.j, align 4, !tbaa !252
  %i.l = fcmp olt float %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = icmp samesign ugt i64 %.sroa.0.021.i.idx, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !291

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !249 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.f, ptr %i.n, align 8, !tbaa !115
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %4 = phi ptr [ %.pre24.i, %bb.d ], [ %3, %bb.e ]
  %i.o = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i64 %i.g, ptr %0, align 8, !tbaa !115
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.p = load i64, ptr %.pn20.i, align 8, !tbaa !115 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !252
  %i.s = fcmp olt float %i.i, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.t = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.p, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i64 %i.t, ptr %.sroa.05.09.i.i, align 8, !tbaa !115
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.u = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !115 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !252
  %i.x = fcmp olt float %i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i, !llvm.loop !3472

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i64 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !115
  %.pre.i = load i64, ptr %0, align 8, !tbaa !115
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i
  %5 = phi ptr [ %4, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %3, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i ] ; 4 uses
  %i.y = phi ptr [ %i.o, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i ]
  %i.z = phi i64 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 8 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_T0_.exit, label %bb.b, !llvm.loop !3473

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_T0_.exit: ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not7.i = icmp eq ptr %i.aa, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i11
  %.sroa.0.08.i = phi ptr [ %i.an, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i11 ], [ %i.aa, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_T0_.exit ] ; 5 uses
  %i.ab = load i64, ptr %.sroa.0.08.i, align 8, !tbaa !115 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ab
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !252 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -8 ; 2 uses
  %i.ae = load i64, ptr %.sroa.0.08.i.i, align 8, !tbaa !115 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !252
  %i.ah = fcmp olt float %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i11

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i14
  %i.ai = phi i64 [ %i.aj, %.lr.ph.i.i14 ], [ %i.ae, %.lr.ph.i10 ]
  %.sroa.0.010.i.i15 = phi ptr [ %.sroa.0.0.i.i17, %.lr.ph.i.i14 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i16 = phi ptr [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ], [ %.sroa.0.08.i, %.lr.ph.i10 ]
  store i64 %i.ai, ptr %.sroa.05.09.i.i16, align 8, !tbaa !115
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i15, i64 -8 ; 2 uses
  %i.aj = load i64, ptr %.sroa.0.0.i.i17, align 8, !tbaa !115 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !252
  %i.am = fcmp olt float %i.ad, %i.al
  br i1 %i.am, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i11, !llvm.loop !3472

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i14, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.08.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i15, %.lr.ph.i.i14 ]
  store i64 %i.ab, ptr %.sroa.05.0.lcssa.i.i12, align 8, !tbaa !115
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8 ; 2 uses
  %.not.i13 = icmp eq ptr %i.an, %1
  br i1 %.not.i13, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_T0_.exit, label %.lr.ph.i10, !llvm.loop !3474

bb.h:                                             ; preds = %bb.a
  %i.ao = icmp eq ptr %0, %1
  br i1 %i.ao, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_T0_.exit, label %.preheader.i18

.preheader.i18:                                   ; preds = %bb.h
  %.sroa.0.018.i19 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not19.i20 = icmp eq ptr %.sroa.0.018.i19, %1
  br i1 %.not19.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_T0_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i18
  %.pre23.i22 = load i64, ptr %0, align 8, !tbaa !115
  %.pre25.i23 = load ptr, ptr %2, align 8, !tbaa !249
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.ap = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.bq, %bb.o ] ; 7 uses
  %i.aq = phi i64 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.br, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.018.i19, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.ar = load i64, ptr %.sroa.0.021.i24, align 8, !tbaa !115 ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !252 ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aq
  %i.av = load float, ptr %i.au, align 4, !tbaa !252
  %i.aw = fcmp olt float %i.at, %i.av
  br i1 %i.aw, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ax = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.ay = sub i64 %i.ax, %i.b                     ; 3 uses
  %i.az = ashr exact i64 %i.ay, 3                 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 1
  br i1 %i.ba, label %bb.k, label %bb.l, !prof !291

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 16
  %i.bc = sub nsw i64 0, %i.az
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bc
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.ay, i1 false)
  %.pre24.i36 = load ptr, ptr %2, align 8, !tbaa !249
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35

bb.l:                                             ; preds = %bb.j
  %i.be = icmp eq i64 %i.ay, 8
  br i1 %i.be, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  store i64 %i.aq, ptr %i.bf, align 8, !tbaa !115
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35: ; preds = %bb.m, %bb.l, %bb.k
  %i.bg = phi ptr [ %.pre24.i36, %bb.k ], [ %i.ap, %bb.l ], [ %i.ap, %bb.m ]
  store i64 %i.ar, ptr %0, align 8, !tbaa !115
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bh = load i64, ptr %.pn20.i25, align 8, !tbaa !115 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !252
  %i.bk = fcmp olt float %i.at, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i26

.lr.ph.i.i31:                                     ; preds = %bb.n, %.lr.ph.i.i31
  %i.bl = phi i64 [ %i.bm, %.lr.ph.i.i31 ], [ %i.bh, %bb.n ]
  %.sroa.0.010.i.i32 = phi ptr [ %.sroa.0.0.i.i34, %.lr.ph.i.i31 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i33 = phi ptr [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ], [ %.sroa.0.021.i24, %bb.n ]
  store i64 %i.bl, ptr %.sroa.05.09.i.i33, align 8, !tbaa !115
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i32, i64 -8 ; 2 uses
  %i.bm = load i64, ptr %.sroa.0.0.i.i34, align 8, !tbaa !115 ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.bm
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !252
  %i.bp = fcmp olt float %i.at, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i31, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i26, !llvm.loop !3472

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i26: ; preds = %.lr.ph.i.i31, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i32, %.lr.ph.i.i31 ]
  store i64 %i.ar, ptr %.sroa.05.0.lcssa.i.i27, align 8, !tbaa !115
  %.pre.i28 = load i64, ptr %0, align 8, !tbaa !115
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35
  %i.bq = phi ptr [ %i.bg, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %i.ap, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i26 ]
  %i.br = phi i64 [ %i.ar, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 8 ; 2 uses
  %.not.i30 = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %.not.i30, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_T0_.exit, label %bb.i, !llvm.loop !3473

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_.exit.i11, %.preheader.i18, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_SH_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 3                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !3477 ; 4 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_SI_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_SI_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.us
  %i.q = load i64, ptr %i.p, align 8, !tbaa !115  ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_SI_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !249 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %i.w
  %i.y = load i64, ptr %i.v, align 8, !tbaa !115
  %i.z = load i64, ptr %i.x, align 8, !tbaa !115
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.y
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !252
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.z
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !252
  %i.ae = fcmp olt float %i.ab, %i.ad
  %spec.select.i.us = select i1 %i.ae, i64 %i.w, i64 %i.u ; 6 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !115
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.us
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !115
  %i.ai = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ai, label %bb.c, label %._crit_edge.i.us, !llvm.loop !89

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.aj = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_SI_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.ak = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !249 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.q
  %i.am = load float, ptr %i.al, align 4, !tbaa !252
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !115 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !252
  %i.ar = fcmp olt float %i.aq, %i.am
  br i1 %i.ar, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_SI_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !115
  %i.at = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.at, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_SI_T1_T2_.exit.us, !llvm.loop !90

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_SI_T1_T2_.exit.us: ; preds = %bb.d, %bb.e, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %bb.d ], [ %.0920.i.i.us, %bb.e ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i64 %i.q, ptr %i.au, align 8, !tbaa !115
  %.not.us = icmp eq i64 %.09.us, 0
  %i.av = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !3475

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIN3igl13IndexLessThanIRKS3_IfSaIfEEEEEEEvT_T0_SI_T1_T2_.exit
end_hunk_6
