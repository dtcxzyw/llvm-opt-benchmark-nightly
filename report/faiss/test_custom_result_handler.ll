Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_custom_result_handler?download=true
inline.NumInlined: 1267
inline.NumDeleted: 572
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_T0_T1_:bb.a
  %i.aa = load float, ptr %i.z, align 4, !tbaa !72
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.y
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !72
  %i.ad = fcmp ogt float %i.aa, %i.ac
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.v, i64 %i.t ; 4 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !56
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i.i.i
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !56
  %i.ah = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ah, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !6

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
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !56
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !56
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.ao, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.as = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.j
  %i.au = load float, ptr %i.at, align 4, !tbaa !72
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !56 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !72
  %i.az = fcmp ogt float %i.ay, %i.au
  br i1 %i.az, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i64 %i.aw, ptr %i.ba, align 8, !tbaa !56
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_RT0_.exit.i.i, label %bb.f, !llvm.loop !7

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.j, ptr %i.bb, align 8, !tbaa !56
  %i.bc = icmp sgt i64 %i.m, 8
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_T0_.exit, !llvm.loop !146

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.be, %bb.b ], [ %2, %.lr.ph ]
  %i.bd = phi i64 [ %i.cp, %bb.b ], [ %i.d, %.lr.ph ]
  %i.be = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bf = lshr i64 %i.bd, 1
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %storemerge2143, i64 -8 ; 3 uses
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !56  ; 3 uses
  %i.bj = load i64, ptr %i.bg, align 8, !tbaa !56 ; 3 uses
  %i.bk = load ptr, ptr %3, align 8, !tbaa !67    ; 6 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !72 ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bj
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !72 ; 3 uses
  %i.bp = fcmp ogt float %i.bm, %i.bo
  %i.bq = load i64, ptr %i.bh, align 8, !tbaa !56 ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !72 ; 4 uses
  br i1 %i.bp, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.bt = fcmp ogt float %i.bo, %i.bs
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bu = load i64, ptr %0, align 8, !tbaa !56
  store i64 %i.bj, ptr %0, align 8, !tbaa !56
  store i64 %i.bu, ptr %i.bg, align 8, !tbaa !56
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bv = fcmp ogt float %i.bm, %i.bs
  %i.bw = load i64, ptr %0, align 8, !tbaa !56    ; 2 uses
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.bq, ptr %0, align 8, !tbaa !56
  store i64 %i.bw, ptr %i.bh, align 8, !tbaa !56
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i64 %i.bi, ptr %0, align 8, !tbaa !56
  store i64 %i.bw, ptr %i.f, align 8, !tbaa !56
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.bx = fcmp ogt float %i.bm, %i.bs
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = load i64, ptr %0, align 8, !tbaa !56
  store i64 %i.bi, ptr %0, align 8, !tbaa !56
  store i64 %i.by, ptr %i.f, align 8, !tbaa !56
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bz = fcmp ogt float %i.bo, %i.bs
  %i.ca = load i64, ptr %0, align 8, !tbaa !56    ; 2 uses
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.bq, ptr %0, align 8, !tbaa !56
  store i64 %i.ca, ptr %i.bh, align 8, !tbaa !56
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i64 %i.bj, ptr %0, align 8, !tbaa !56
  store i64 %i.ca, ptr %i.bg, align 8, !tbaa !56
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_SI_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_SI_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_SI_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_SI_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_SI_T0_.exit.i.preheader, %bb.t
  %.sroa.011.0.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %.sroa.014.0.i.i = phi ptr [ %i.ci, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %i.cb = load i64, ptr %0, align 8, !tbaa !56
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !72 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_SI_T0_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_SI_T0_.exit.i ], [ %i.ci, %bb.r ] ; 8 uses
  %i.ce = load i64, ptr %.sroa.014.1.i.i, align 8, !tbaa !56 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !72
  %i.ch = fcmp ogt float %i.cg, %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  br i1 %i.ch, label %bb.r, label %.preheader.i.i, !llvm.loop !147

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.1.i.i, %.preheader.i.i ], [ %.sroa.011.0.i.i, %bb.r ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -8 ; 5 uses
  %i.cj = load i64, ptr %.sroa.011.1.i.i, align 8, !tbaa !56 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !72
  %i.cm = fcmp ogt float %i.cd, %i.cl
  br i1 %i.cm, label %.preheader.i.i, label %bb.s, !llvm.loop !148

bb.s:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %.not.i.i, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEET_SI_SI_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i64 %i.cj, ptr %.sroa.014.1.i.i, align 8, !tbaa !56
  store i64 %i.ce, ptr %.sroa.011.1.i.i, align 8, !tbaa !56
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_SI_T0_.exit.i, !llvm.loop !149

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEET_SI_SI_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2143, i64 noundef %i.be, ptr nonnull %3)
  %i.cn = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.co = sub i64 %i.cn, %i.a
  %i.cp = ashr exact i64 %i.co, 3                 ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, 16
  br i1 %i.cq, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_T0_.exit, !llvm.loop !145

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEET_SI_SI_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_SI_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre22.i = load i64, ptr %0, align 8, !tbaa !56
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !67
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.e = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %i.y, %bb.g ] ; 6 uses
  %i.f = phi i64 [ %.pre22.i, %.lr.ph.i ], [ %i.z, %bb.g ] ; 2 uses
  %.sroa.0.020.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.020.i.add, %bb.g ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.020.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.020.i.idx ; 4 uses
  %i.g = load i64, ptr %.sroa.0.020.i.ptr, align 8, !tbaa !56 ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !72 ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f
  %i.k = load float, ptr %i.j, align 4, !tbaa !72
  %i.l = fcmp ogt float %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = icmp samesign ugt i64 %.sroa.0.020.i.idx, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !81

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.020.i.idx, i1 false)
  %.pre23.i = load ptr, ptr %2, align 8, !tbaa !67
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  store i64 %i.f, ptr %i.n, align 8, !tbaa !56
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %.pre23.i, %bb.d ], [ %i.e, %bb.e ]
  store i64 %i.g, ptr %0, align 8, !tbaa !56
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.p = load i64, ptr %.pn19.i, align 8, !tbaa !56 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !72
  %i.s = fcmp ogt float %i.i, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.t = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.p, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr, %bb.f ]
  store i64 %i.t, ptr %.sroa.05.09.i.i, align 8, !tbaa !56
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.u = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !56 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !72
  %i.x = fcmp ogt float %i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i, !llvm.loop !150

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i64 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !56
  %.pre.i = load i64, ptr %0, align 8, !tbaa !56
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i
  %i.y = phi ptr [ %i.o, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i ] ; 4 uses
  %i.z = phi i64 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i ]
  %.sroa.0.020.i.add = add nuw nsw i64 %.sroa.0.020.i.idx, 8 ; 2 uses
  %i.aa = icmp eq i64 %.sroa.0.020.i.add, 128
  br i1 %i.aa, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_T0_.exit, label %bb.b, !llvm.loop !151

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_T0_.exit: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i11
  %.sroa.0.07.i = phi ptr [ %i.ap, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i11 ], [ %i.ab, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_T0_.exit ] ; 5 uses
  %i.ad = load i64, ptr %.sroa.0.07.i, align 8, !tbaa !56 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !72 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -8 ; 2 uses
  %i.ag = load i64, ptr %.sroa.0.08.i.i, align 8, !tbaa !56 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !72
  %i.aj = fcmp ogt float %i.af, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i11

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i13
  %i.ak = phi i64 [ %i.al, %.lr.ph.i.i13 ], [ %i.ag, %.lr.ph.i10 ]
  %.sroa.0.010.i.i14 = phi ptr [ %.sroa.0.0.i.i16, %.lr.ph.i.i13 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i15 = phi ptr [ %.sroa.0.010.i.i14, %.lr.ph.i.i13 ], [ %.sroa.0.07.i, %.lr.ph.i10 ]
  store i64 %i.ak, ptr %.sroa.05.09.i.i15, align 8, !tbaa !56
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i14, i64 -8 ; 2 uses
  %i.al = load i64, ptr %.sroa.0.0.i.i16, align 8, !tbaa !56 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !72
  %i.ao = fcmp ogt float %i.af, %i.an
  br i1 %i.ao, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i11, !llvm.loop !150

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i13, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i14, %.lr.ph.i.i13 ]
  store i64 %i.ad, ptr %.sroa.05.0.lcssa.i.i12, align 8, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %1
  br i1 %i.aq, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_T0_.exit, label %.lr.ph.i10, !llvm.loop !152

bb.h:                                             ; preds = %bb.a
  %i.ar = icmp eq ptr %0, %1
  br i1 %i.ar, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_T0_.exit, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.h
  %.sroa.0.018.i18 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = icmp eq ptr %.sroa.0.018.i18, %1
  br i1 %i.as, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i17
  %.pre22.i20 = load i64, ptr %0, align 8, !tbaa !56
  %.pre24.i21 = load ptr, ptr %2, align 8, !tbaa !67
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i19
  %i.at = phi ptr [ %.pre24.i21, %.lr.ph.i19 ], [ %i.bu, %bb.o ] ; 7 uses
  %i.au = phi i64 [ %.pre22.i20, %.lr.ph.i19 ], [ %i.bv, %bb.o ] ; 2 uses
  %.sroa.0.020.i22 = phi ptr [ %.sroa.0.018.i18, %.lr.ph.i19 ], [ %.sroa.0.0.i27, %bb.o ] ; 6 uses
  %.pn19.i23 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.020.i22, %bb.o ] ; 4 uses
  %i.av = load i64, ptr %.sroa.0.020.i22, align 8, !tbaa !56 ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !72 ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  %i.az = load float, ptr %i.ay, align 4, !tbaa !72
  %i.ba = fcmp ogt float %i.ax, %i.az
  br i1 %i.ba, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bb = ptrtoint ptr %.sroa.0.020.i22 to i64
  %i.bc = sub i64 %i.bb, %i.b                     ; 3 uses
  %i.bd = ashr exact i64 %i.bc, 3                 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 1
  br i1 %i.be, label %bb.k, label %bb.l, !prof !81

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 16
  %i.bg = sub nsw i64 0, %i.bd
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.bc, i1 false)
  %.pre23.i33 = load ptr, ptr %2, align 8, !tbaa !67
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i32

bb.l:                                             ; preds = %bb.j
  %i.bi = icmp eq i64 %i.bc, 8
  br i1 %i.bi, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i32

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 8
  store i64 %i.au, ptr %i.bj, align 8, !tbaa !56
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i32

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i32: ; preds = %bb.m, %bb.l, %bb.k
  %i.bk = phi ptr [ %.pre23.i33, %bb.k ], [ %i.at, %bb.l ], [ %i.at, %bb.m ]
  store i64 %i.av, ptr %0, align 8, !tbaa !56
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %.pn19.i23, align 8, !tbaa !56 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !72
  %i.bo = fcmp ogt float %i.ax, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i24

.lr.ph.i.i28:                                     ; preds = %bb.n, %.lr.ph.i.i28
  %i.bp = phi i64 [ %i.bq, %.lr.ph.i.i28 ], [ %i.bl, %bb.n ]
  %.sroa.0.010.i.i29 = phi ptr [ %.sroa.0.0.i.i31, %.lr.ph.i.i28 ], [ %.pn19.i23, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i30 = phi ptr [ %.sroa.0.010.i.i29, %.lr.ph.i.i28 ], [ %.sroa.0.020.i22, %bb.n ]
  store i64 %i.bp, ptr %.sroa.05.09.i.i30, align 8, !tbaa !56
  %.sroa.0.0.i.i31 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i29, i64 -8 ; 2 uses
  %i.bq = load i64, ptr %.sroa.0.0.i.i31, align 8, !tbaa !56 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !72
  %i.bt = fcmp ogt float %i.ax, %i.bs
  br i1 %i.bt, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i24, !llvm.loop !150

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i24: ; preds = %.lr.ph.i.i28, %bb.n
  %.sroa.05.0.lcssa.i.i25 = phi ptr [ %.sroa.0.020.i22, %bb.n ], [ %.sroa.0.010.i.i29, %.lr.ph.i.i28 ]
  store i64 %i.av, ptr %.sroa.05.0.lcssa.i.i25, align 8, !tbaa !56
  %.pre.i26 = load i64, ptr %0, align 8, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i32
  %i.bu = phi ptr [ %i.bk, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i32 ], [ %i.at, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i24 ]
  %i.bv = phi i64 [ %i.av, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i32 ], [ %.pre.i26, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i24 ]
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i22, i64 8 ; 2 uses
  %i.bw = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %i.bw, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_T0_.exit, label %bb.i, !llvm.loop !151

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_.exit.i11, %.preheader.i17, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_SI_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat {
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
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !83 ; 4 uses
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

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_SJ_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_SJ_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.us
  %i.q = load i64, ptr %i.p, align 8, !tbaa !56   ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_SJ_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !67 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %i.w
  %i.y = load i64, ptr %i.v, align 8, !tbaa !56
  %i.z = load i64, ptr %i.x, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.y
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !72
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.z
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !72
  %i.ae = fcmp ogt float %i.ab, %i.ad
  %spec.select.i.us = select i1 %i.ae, i64 %i.w, i64 %i.u ; 6 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !56
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.us
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !56
  %i.ai = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ai, label %bb.c, label %._crit_edge.i.us, !llvm.loop !6

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.aj = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_SJ_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.ak = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !67 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.q
  %i.am = load float, ptr %i.al, align 4, !tbaa !72
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !56 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !72
  %i.ar = fcmp ogt float %i.aq, %i.am
  br i1 %i.ar, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_SJ_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !56
  %i.at = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.at, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_SJ_T1_T2_.exit.us, !llvm.loop !7

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_SJ_T1_T2_.exit.us: ; preds = %bb.d, %bb.e, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %bb.d ], [ %.0920.i.i.us, %bb.e ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i64 %i.q, ptr %i.au, align 8, !tbaa !56
  %.not.us = icmp eq i64 %.09.us, 0
  %i.av = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !153

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE_EEEvT_T0_SJ_T1_T2_.exit
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_T0_T1_:bb.a
  %i.aa = load float, ptr %i.z, align 4, !tbaa !72
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.y
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !72
  %i.ad = fcmp olt float %i.aa, %i.ac
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.v, i64 %i.t ; 4 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !56
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.i.i.i
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !56
  %i.ah = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ah, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !8

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
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !56
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !56
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.ao, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.as = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.j
  %i.au = load float, ptr %i.at, align 4, !tbaa !72
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !56 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.aw
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !72
  %i.az = fcmp olt float %i.ay, %i.au
  br i1 %i.az, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_RT0_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i64 %i.aw, ptr %i.ba, align 8, !tbaa !56
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_RT0_.exit.i.i, label %bb.f, !llvm.loop !9

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_RT0_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.j, ptr %i.bb, align 8, !tbaa !56
  %i.bc = icmp sgt i64 %i.m, 8
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_T0_.exit, !llvm.loop !155

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2143 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02242 = phi i64 [ %i.be, %bb.b ], [ %2, %.lr.ph ]
  %i.bd = phi i64 [ %i.cp, %bb.b ], [ %i.d, %.lr.ph ]
  %i.be = add nsw i64 %.02242, -1                 ; 3 uses
  %i.bf = lshr i64 %i.bd, 1
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bf ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %storemerge2143, i64 -8 ; 3 uses
  %i.bi = load i64, ptr %i.f, align 8, !tbaa !56  ; 3 uses
  %i.bj = load i64, ptr %i.bg, align 8, !tbaa !56 ; 3 uses
  %i.bk = load ptr, ptr %3, align 8, !tbaa !67    ; 6 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bi
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !72 ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bj
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !72 ; 3 uses
  %i.bp = fcmp olt float %i.bm, %i.bo
  %i.bq = load i64, ptr %i.bh, align 8, !tbaa !56 ; 3 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !72 ; 4 uses
  br i1 %i.bp, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph44
  %i.bt = fcmp olt float %i.bo, %i.bs
  br i1 %i.bt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bu = load i64, ptr %0, align 8, !tbaa !56
  store i64 %i.bj, ptr %0, align 8, !tbaa !56
  store i64 %i.bu, ptr %i.bg, align 8, !tbaa !56
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bv = fcmp olt float %i.bm, %i.bs
  %i.bw = load i64, ptr %0, align 8, !tbaa !56    ; 2 uses
  br i1 %i.bv, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.bq, ptr %0, align 8, !tbaa !56
  store i64 %i.bw, ptr %i.bh, align 8, !tbaa !56
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i64 %i.bi, ptr %0, align 8, !tbaa !56
  store i64 %i.bw, ptr %i.f, align 8, !tbaa !56
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph44
  %i.bx = fcmp olt float %i.bm, %i.bs
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = load i64, ptr %0, align 8, !tbaa !56
  store i64 %i.bi, ptr %0, align 8, !tbaa !56
  store i64 %i.by, ptr %i.f, align 8, !tbaa !56
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bz = fcmp olt float %i.bo, %i.bs
  %i.ca = load i64, ptr %0, align 8, !tbaa !56    ; 2 uses
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.bq, ptr %0, align 8, !tbaa !56
  store i64 %i.ca, ptr %i.bh, align 8, !tbaa !56
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_SI_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i64 %i.bj, ptr %0, align 8, !tbaa !56
  store i64 %i.ca, ptr %i.bg, align 8, !tbaa !56
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_SI_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_SI_T0_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_SI_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_SI_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_SI_T0_.exit.i.preheader, %bb.t
  %.sroa.011.0.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.t ], [ %storemerge2143, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %.sroa.014.0.i.i = phi ptr [ %i.ci, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_SI_T0_.exit.i.preheader ]
  %i.cb = load i64, ptr %0, align 8, !tbaa !56
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cb
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !72 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_SI_T0_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_SI_T0_.exit.i ], [ %i.ci, %bb.r ] ; 8 uses
  %i.ce = load i64, ptr %.sroa.014.1.i.i, align 8, !tbaa !56 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !72
  %i.ch = fcmp olt float %i.cg, %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  br i1 %i.ch, label %bb.r, label %.preheader.i.i, !llvm.loop !156

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.1.i.i, %.preheader.i.i ], [ %.sroa.011.0.i.i, %bb.r ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -8 ; 5 uses
  %i.cj = load i64, ptr %.sroa.011.1.i.i, align 8, !tbaa !56 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !72
  %i.cm = fcmp olt float %i.cd, %i.cl
  br i1 %i.cm, label %.preheader.i.i, label %bb.s, !llvm.loop !157

bb.s:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %.not.i.i, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEET_SI_SI_T0_.exit

bb.t:                                             ; preds = %bb.s
  store i64 %i.cj, ptr %.sroa.014.1.i.i, align 8, !tbaa !56
  store i64 %i.ce, ptr %.sroa.011.1.i.i, align 8, !tbaa !56
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_SI_T0_.exit.i, !llvm.loop !158

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEET_SI_SI_T0_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_T0_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2143, i64 noundef %i.be, ptr nonnull %3)
  %i.cn = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.co = sub i64 %i.cn, %i.a
  %i.cp = ashr exact i64 %i.co, 3                 ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, 16
  br i1 %i.cq, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_T0_.exit, !llvm.loop !154

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEET_SI_SI_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_SI_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre22.i = load i64, ptr %0, align 8, !tbaa !56
  %.pre24.i = load ptr, ptr %2, align 8, !tbaa !67
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.e = phi ptr [ %.pre24.i, %.lr.ph.i ], [ %i.y, %bb.g ] ; 6 uses
  %i.f = phi i64 [ %.pre22.i, %.lr.ph.i ], [ %i.z, %bb.g ] ; 2 uses
  %.sroa.0.020.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.020.i.add, %bb.g ] ; 4 uses
  %.pn19.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.020.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.020.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.020.i.idx ; 4 uses
  %i.g = load i64, ptr %.sroa.0.020.i.ptr, align 8, !tbaa !56 ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g
  %i.i = load float, ptr %i.h, align 4, !tbaa !72 ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f
  %i.k = load float, ptr %i.j, align 4, !tbaa !72
  %i.l = fcmp olt float %i.i, %i.k
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = icmp samesign ugt i64 %.sroa.0.020.i.idx, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !81

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.020.i.idx, i1 false)
  %.pre23.i = load ptr, ptr %2, align 8, !tbaa !67
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn19.i, i64 8
  store i64 %i.f, ptr %i.n, align 8, !tbaa !56
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %i.o = phi ptr [ %.pre23.i, %bb.d ], [ %i.e, %bb.e ]
  store i64 %i.g, ptr %0, align 8, !tbaa !56
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.p = load i64, ptr %.pn19.i, align 8, !tbaa !56 ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !72
  %i.s = fcmp olt float %i.i, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.t = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.p, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn19.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr, %bb.f ]
  store i64 %i.t, ptr %.sroa.05.09.i.i, align 8, !tbaa !56
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.u = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !56 ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.u
  %i.w = load float, ptr %i.v, align 4, !tbaa !72
  %i.x = fcmp olt float %i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i, !llvm.loop !159

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.020.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i64 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !56
  %.pre.i = load i64, ptr %0, align 8, !tbaa !56
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i
  %i.y = phi ptr [ %i.o, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i ] ; 4 uses
  %i.z = phi i64 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i ]
  %.sroa.0.020.i.add = add nuw nsw i64 %.sroa.0.020.i.idx, 8 ; 2 uses
  %i.aa = icmp eq i64 %.sroa.0.020.i.add, 128
  br i1 %i.aa, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_T0_.exit, label %bb.b, !llvm.loop !160

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_T0_.exit: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i11
  %.sroa.0.07.i = phi ptr [ %i.ap, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i11 ], [ %i.ab, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_T0_.exit ] ; 5 uses
  %i.ad = load i64, ptr %.sroa.0.07.i, align 8, !tbaa !56 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !72 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -8 ; 2 uses
  %i.ag = load i64, ptr %.sroa.0.08.i.i, align 8, !tbaa !56 ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !72
  %i.aj = fcmp olt float %i.af, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i11

.lr.ph.i.i13:                                     ; preds = %.lr.ph.i10, %.lr.ph.i.i13
  %i.ak = phi i64 [ %i.al, %.lr.ph.i.i13 ], [ %i.ag, %.lr.ph.i10 ]
  %.sroa.0.010.i.i14 = phi ptr [ %.sroa.0.0.i.i16, %.lr.ph.i.i13 ], [ %.sroa.0.08.i.i, %.lr.ph.i10 ] ; 3 uses
  %.sroa.05.09.i.i15 = phi ptr [ %.sroa.0.010.i.i14, %.lr.ph.i.i13 ], [ %.sroa.0.07.i, %.lr.ph.i10 ]
  store i64 %i.ak, ptr %.sroa.05.09.i.i15, align 8, !tbaa !56
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i14, i64 -8 ; 2 uses
  %i.al = load i64, ptr %.sroa.0.0.i.i16, align 8, !tbaa !56 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.al
  %i.an = load float, ptr %i.am, align 4, !tbaa !72
  %i.ao = fcmp olt float %i.af, %i.an
  br i1 %i.ao, label %.lr.ph.i.i13, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i11, !llvm.loop !159

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i11: ; preds = %.lr.ph.i.i13, %.lr.ph.i10
  %.sroa.05.0.lcssa.i.i12 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i10 ], [ %.sroa.0.010.i.i14, %.lr.ph.i.i13 ]
  store i64 %i.ad, ptr %.sroa.05.0.lcssa.i.i12, align 8, !tbaa !56
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %1
  br i1 %i.aq, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_T0_.exit, label %.lr.ph.i10, !llvm.loop !161

bb.h:                                             ; preds = %bb.a
  %i.ar = icmp eq ptr %0, %1
  br i1 %i.ar, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_T0_.exit, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.h
  %.sroa.0.018.i18 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.as = icmp eq ptr %.sroa.0.018.i18, %1
  br i1 %i.as, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i17
  %.pre22.i20 = load i64, ptr %0, align 8, !tbaa !56
  %.pre24.i21 = load ptr, ptr %2, align 8, !tbaa !67
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i19
  %i.at = phi ptr [ %.pre24.i21, %.lr.ph.i19 ], [ %i.bu, %bb.o ] ; 7 uses
  %i.au = phi i64 [ %.pre22.i20, %.lr.ph.i19 ], [ %i.bv, %bb.o ] ; 2 uses
  %.sroa.0.020.i22 = phi ptr [ %.sroa.0.018.i18, %.lr.ph.i19 ], [ %.sroa.0.0.i27, %bb.o ] ; 6 uses
  %.pn19.i23 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.020.i22, %bb.o ] ; 4 uses
  %i.av = load i64, ptr %.sroa.0.020.i22, align 8, !tbaa !56 ; 4 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !72 ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  %i.az = load float, ptr %i.ay, align 4, !tbaa !72
  %i.ba = fcmp olt float %i.ax, %i.az
  br i1 %i.ba, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bb = ptrtoint ptr %.sroa.0.020.i22 to i64
  %i.bc = sub i64 %i.bb, %i.b                     ; 3 uses
  %i.bd = ashr exact i64 %i.bc, 3                 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 1
  br i1 %i.be, label %bb.k, label %bb.l, !prof !81

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 16
  %i.bg = sub nsw i64 0, %i.bd
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.bc, i1 false)
  %.pre23.i33 = load ptr, ptr %2, align 8, !tbaa !67
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i32

bb.l:                                             ; preds = %bb.j
  %i.bi = icmp eq i64 %i.bc, 8
  br i1 %i.bi, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i32

bb.m:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.pn19.i23, i64 8
  store i64 %i.au, ptr %i.bj, align 8, !tbaa !56
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i32

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i32: ; preds = %bb.m, %bb.l, %bb.k
  %i.bk = phi ptr [ %.pre23.i33, %bb.k ], [ %i.at, %bb.l ], [ %i.at, %bb.m ]
  store i64 %i.av, ptr %0, align 8, !tbaa !56
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bl = load i64, ptr %.pn19.i23, align 8, !tbaa !56 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !72
  %i.bo = fcmp olt float %i.ax, %i.bn
  br i1 %i.bo, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i24

.lr.ph.i.i28:                                     ; preds = %bb.n, %.lr.ph.i.i28
  %i.bp = phi i64 [ %i.bq, %.lr.ph.i.i28 ], [ %i.bl, %bb.n ]
  %.sroa.0.010.i.i29 = phi ptr [ %.sroa.0.0.i.i31, %.lr.ph.i.i28 ], [ %.pn19.i23, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i30 = phi ptr [ %.sroa.0.010.i.i29, %.lr.ph.i.i28 ], [ %.sroa.0.020.i22, %bb.n ]
  store i64 %i.bp, ptr %.sroa.05.09.i.i30, align 8, !tbaa !56
  %.sroa.0.0.i.i31 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i29, i64 -8 ; 2 uses
  %i.bq = load i64, ptr %.sroa.0.0.i.i31, align 8, !tbaa !56 ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !72
  %i.bt = fcmp olt float %i.ax, %i.bs
  br i1 %i.bt, label %.lr.ph.i.i28, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i24, !llvm.loop !159

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i24: ; preds = %.lr.ph.i.i28, %bb.n
  %.sroa.05.0.lcssa.i.i25 = phi ptr [ %.sroa.0.020.i22, %bb.n ], [ %.sroa.0.010.i.i29, %.lr.ph.i.i28 ]
  store i64 %i.av, ptr %.sroa.05.0.lcssa.i.i25, align 8, !tbaa !56
  %.pre.i26 = load i64, ptr %0, align 8, !tbaa !56
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i32
  %i.bu = phi ptr [ %i.bk, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i32 ], [ %i.at, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i24 ]
  %i.bv = phi i64 [ %i.av, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i32 ], [ %.pre.i26, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i24 ]
  %.sroa.0.0.i27 = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i22, i64 8 ; 2 uses
  %i.bw = icmp eq ptr %.sroa.0.0.i27, %1
  br i1 %i.bw, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_T0_.exit, label %bb.i, !llvm.loop !160

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_.exit.i11, %.preheader.i17, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_SI_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat {
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
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !83 ; 4 uses
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

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_SJ_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_SJ_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.us
  %i.q = load i64, ptr %i.p, align 8, !tbaa !56   ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_SJ_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !67 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.036.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.036.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %i.w
  %i.y = load i64, ptr %i.v, align 8, !tbaa !56
  %i.z = load i64, ptr %i.x, align 8, !tbaa !56
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.y
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !72
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.z
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !72
  %i.ae = fcmp olt float %i.ab, %i.ad
  %spec.select.i.us = select i1 %i.ae, i64 %i.w, i64 %i.u ; 6 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !56
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.036.i.us
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !56
  %i.ai = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ai, label %bb.c, label %._crit_edge.i.us, !llvm.loop !8

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.aj = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_SJ_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.ak = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !67 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.q
  %i.am = load float, ptr %i.al, align 4, !tbaa !72
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !56 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !72
  %i.ar = fcmp olt float %i.aq, %i.am
  br i1 %i.ar, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_SJ_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !56
  %i.at = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.at, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_SJ_T1_T2_.exit.us, !llvm.loop !9

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_SJ_T1_T2_.exit.us: ; preds = %bb.d, %bb.e, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %bb.d ], [ %.0920.i.i.us, %bb.e ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i64 %i.q, ptr %i.au, align 8, !tbaa !56
  %.not.us = icmp eq i64 %.09.us, 0
  %i.av = add nsw i64 %.09.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !162

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZNK23CollectAllResultHandler9get_top_kEmRS3_IfSaIfEERS3_IlSaIlEEbEUlmmE0_EEEvT_T0_SJ_T1_T2_.exit
end_hunk_1
