Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/csf_converter?download=true
inline.NumInlined: 1083
inline.NumDeleted: 539
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_T1_:bb.a
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.z
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !43
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !43
  %i.ae = icmp slt i64 %i.ac, %i.ad
  %spec.select.i.i.i.i = select i1 %i.ae, i64 %i.w, i64 %i.u ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !43
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.i.i.i
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !43
  %i.ai = icmp slt i64 %spec.select.i.i.i.i, %i.q
  br i1 %i.ai, label %bb.c, label %._crit_edge.i.i.i.i, !llvm.loop !4

._crit_edge.i.i.i.i:                              ; preds = %bb.c, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.c ] ; 5 uses
  %i.aj = and i64 %i.n, 8
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.al = add nsw i64 %i.o, -2
  %i.am = ashr exact i64 %i.al, 1
  %i.an = icmp eq i64 %.0.lcssa.i.i.i.i, %i.am
  br i1 %i.an, label %.thread.i.i.i, label %bb.e

.thread.i.i.i:                                    ; preds = %bb.d
  %i.ao = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ap = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !43
  br label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_RSJ_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.ap, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.e ]
  %i.at = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.k
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i89.i.i.i
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !43 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !43
  %i.az = load i64, ptr %i.au, align 8, !tbaa !43
  %i.ba = icmp slt i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.g, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_RSJ_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.019.i.i.i.i.i
  store i64 %i.aw, ptr %i.bb, align 8, !tbaa !43
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_RSJ_.exit.i.i, label %bb.f, !llvm.loop !5

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_RSJ_.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %.019.i.i.i.i.i, %bb.f ], [ 0, %bb.g ]
  %i.bc = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.k, ptr %i.bc, align 8, !tbaa !43
  %i.bd = icmp sgt i64 %i.n, 8
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SJ_.exit, !llvm.loop !254

.lr.ph46:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2345 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02444 = phi i64 [ %i.bf, %bb.b ], [ %2, %.lr.ph ]
  %i.be = phi i64 [ %i.cq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.bf = add nsw i64 %.02444, -1                 ; 3 uses
  %i.bg = lshr i64 %i.be, 1
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bg ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %storemerge2345, i64 -8 ; 3 uses
  %i.bj = load i64, ptr %i.f, align 8, !tbaa !43  ; 3 uses
  %i.bk = load i64, ptr %i.bh, align 8, !tbaa !43 ; 3 uses
  %i.bl = load ptr, ptr %4, align 8, !tbaa !40    ; 6 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !43 ; 3 uses
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !43 ; 3 uses
  %i.bq = icmp slt i64 %i.bo, %i.bp
  %i.br = load i64, ptr %i.bi, align 8, !tbaa !43 ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !43 ; 4 uses
  br i1 %i.bq, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph46
  %i.bu = icmp slt i64 %i.bp, %i.bt
  br i1 %i.bu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bv = load i64, ptr %0, align 8, !tbaa !43
  store i64 %i.bk, ptr %0, align 8, !tbaa !43
  store i64 %i.bv, ptr %i.bh, align 8, !tbaa !43
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bw = icmp slt i64 %i.bo, %i.bt
  %i.bx = load i64, ptr %0, align 8, !tbaa !43    ; 2 uses
  br i1 %i.bw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.br, ptr %0, align 8, !tbaa !43
  store i64 %i.bx, ptr %i.bi, align 8, !tbaa !43
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i64 %i.bj, ptr %0, align 8, !tbaa !43
  store i64 %i.bx, ptr %i.f, align 8, !tbaa !43
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader

bb.m:                                             ; preds = %.lr.ph46
  %i.by = icmp slt i64 %i.bo, %i.bt
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bz = load i64, ptr %0, align 8, !tbaa !43
  store i64 %i.bj, ptr %0, align 8, !tbaa !43
  store i64 %i.bz, ptr %i.f, align 8, !tbaa !43
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.ca = icmp slt i64 %i.bp, %i.bt
  %i.cb = load i64, ptr %0, align 8, !tbaa !43    ; 2 uses
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 %i.br, ptr %0, align 8, !tbaa !43
  store i64 %i.cb, ptr %i.bi, align 8, !tbaa !43
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store i64 %i.bk, ptr %0, align 8, !tbaa !43
  store i64 %i.cb, ptr %i.bh, align 8, !tbaa !43
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader: ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader, %bb.t
  %.sroa.011.0.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.t ], [ %storemerge2345, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader ]
  %.sroa.014.0.i.i = phi ptr [ %i.cj, %bb.t ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i.preheader ]
  %i.cc = load i64, ptr %0, align 8, !tbaa !43
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !43 ; 2 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i ], [ %i.cj, %bb.r ] ; 8 uses
  %i.cf = load i64, ptr %.sroa.014.1.i.i, align 8, !tbaa !43 ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !43
  %i.ci = icmp slt i64 %i.ch, %i.ce
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  br i1 %i.ci, label %bb.r, label %.preheader.i.i, !llvm.loop !255

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.1.i.i, %.preheader.i.i ], [ %.sroa.011.0.i.i, %bb.r ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -8 ; 5 uses
  %i.ck = load i64, ptr %.sroa.011.1.i.i, align 8, !tbaa !43 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !43
  %i.cn = icmp slt i64 %i.ce, %i.cm
  br i1 %i.cn, label %.preheader.i.i, label %bb.s, !llvm.loop !256

bb.s:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %.not.i.i, label %bb.t, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEESE_SE_SE_SJ_.exit

bb.t:                                             ; preds = %bb.s
  store i64 %i.ck, ptr %.sroa.014.1.i.i, align 8, !tbaa !43
  store i64 %i.cf, ptr %.sroa.011.1.i.i, align 8, !tbaa !43
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SE_SJ_.exit.i, !llvm.loop !257

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEESE_SE_SE_SJ_.exit: ; preds = %bb.s
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_T1_(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2345, i64 noundef %i.bf, ptr %3, ptr nonnull %4)
  %i.co = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.cp = sub i64 %i.co, %i.a
  %i.cq = ashr exact i64 %i.cp, 3                 ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, 16
  br i1 %i.cr, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SJ_.exit, !llvm.loop !253

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_SJ_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEESE_SE_SE_SJ_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SE_RSJ_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %.pre23.i = load i64, ptr %0, align 8, !tbaa !43
  %.pre25.i = load ptr, ptr %3, align 8, !tbaa !40 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %4 = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %6, %bb.g ] ; 2 uses
  %i.e = phi ptr [ %.pre25.i, %.lr.ph.i ], [ %i.z, %bb.g ] ; 6 uses
  %i.f = phi i64 [ %.pre23.i, %.lr.ph.i ], [ %i.aa, %bb.g ] ; 2 uses
  %.sroa.0.021.i.idx = phi i64 [ 8, %.lr.ph.i ], [ %.sroa.0.021.i.add, %bb.g ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.g = load i64, ptr %.sroa.0.021.i.ptr, align 8, !tbaa !43 ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.f
  %i.j = load i64, ptr %i.h, align 8, !tbaa !43   ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !tbaa !43
  %i.l = icmp slt i64 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = icmp samesign ugt i64 %.sroa.0.021.i.idx, 8
  br i1 %i.m, label %bb.d, label %bb.e, !prof !41

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  %.pre24.i = load ptr, ptr %3, align 8, !tbaa !40 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store i64 %i.f, ptr %i.n, align 8, !tbaa !43
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %bb.e, %bb.d
  %5 = phi ptr [ %.pre24.i, %bb.d ], [ %4, %bb.e ]
  %i.o = phi ptr [ %.pre24.i, %bb.d ], [ %i.e, %bb.e ]
  store i64 %i.g, ptr %0, align 8, !tbaa !43
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.p = load i64, ptr %.pn20.i, align 8, !tbaa !43 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !43
  %i.s = icmp slt i64 %i.j, %i.r
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.t = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.p, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i64 %i.t, ptr %.sroa.05.09.i.i, align 8, !tbaa !43
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.u = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !43 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.u
  %i.w = load i64, ptr %i.h, align 8, !tbaa !43
  %i.x = load i64, ptr %i.v, align 8, !tbaa !43
  %i.y = icmp slt i64 %i.w, %i.x
  br i1 %i.y, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i, !llvm.loop !258

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i64 %i.g, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !43
  %.pre.i = load i64, ptr %0, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i
  %6 = phi ptr [ %5, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i ], [ %4, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i ] ; 4 uses
  %i.z = phi ptr [ %i.o, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i ], [ %i.e, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i ]
  %i.aa = phi i64 [ %i.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i ]
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 8 ; 2 uses
  %i.ab = icmp eq i64 %.sroa.0.021.i.add, 128
  br i1 %i.ab, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_.exit, label %bb.b, !llvm.loop !259

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_.exit: ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %1
  br i1 %i.ad, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i13
  %.sroa.0.09.i = phi ptr [ %i.ar, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i13 ], [ %i.ac, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_.exit ] ; 5 uses
  %i.ae = load i64, ptr %.sroa.0.09.i, align 8, !tbaa !43 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ae ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i, i64 -8 ; 2 uses
  %i.ag = load i64, ptr %.sroa.0.08.i.i, align 8, !tbaa !43 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.ag
  %i.ai = load i64, ptr %i.af, align 8, !tbaa !43
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !43
  %i.ak = icmp slt i64 %i.ai, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i13

.lr.ph.i.i15:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i15
  %i.al = phi i64 [ %i.am, %.lr.ph.i.i15 ], [ %i.ag, %.lr.ph.i12 ]
  %.sroa.0.010.i.i16 = phi ptr [ %.sroa.0.0.i.i18, %.lr.ph.i.i15 ], [ %.sroa.0.08.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.05.09.i.i17 = phi ptr [ %.sroa.0.010.i.i16, %.lr.ph.i.i15 ], [ %.sroa.0.09.i, %.lr.ph.i12 ]
  store i64 %i.al, ptr %.sroa.05.09.i.i17, align 8, !tbaa !43
  %.sroa.0.0.i.i18 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i16, i64 -8 ; 2 uses
  %i.am = load i64, ptr %.sroa.0.0.i.i18, align 8, !tbaa !43 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %i.am
  %i.ao = load i64, ptr %i.af, align 8, !tbaa !43
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !43
  %i.aq = icmp slt i64 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i15, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i13, !llvm.loop !258

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i13: ; preds = %.lr.ph.i.i15, %.lr.ph.i12
  %.sroa.05.0.lcssa.i.i14 = phi ptr [ %.sroa.0.09.i, %.lr.ph.i12 ], [ %.sroa.0.010.i.i16, %.lr.ph.i.i15 ]
  store i64 %i.ae, ptr %.sroa.05.0.lcssa.i.i14, align 8, !tbaa !43
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i, i64 8 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %1
  br i1 %i.as, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_.exit, label %.lr.ph.i12, !llvm.loop !260

bb.h:                                             ; preds = %bb.a
  %i.at = icmp eq ptr %0, %1
  br i1 %i.at, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_.exit, label %.preheader.i19

.preheader.i19:                                   ; preds = %bb.h
  %.sroa.0.019.i20 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = icmp eq ptr %.sroa.0.019.i20, %1
  br i1 %i.au, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_.exit, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.preheader.i19
  %.pre23.i22 = load i64, ptr %0, align 8, !tbaa !43
  %.pre25.i23 = load ptr, ptr %3, align 8, !tbaa !40
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i21
  %i.av = phi ptr [ %.pre25.i23, %.lr.ph.i21 ], [ %i.bx, %bb.o ] ; 7 uses
  %i.aw = phi i64 [ %.pre23.i22, %.lr.ph.i21 ], [ %i.by, %bb.o ] ; 2 uses
  %.sroa.0.021.i24 = phi ptr [ %.sroa.0.019.i20, %.lr.ph.i21 ], [ %.sroa.0.0.i29, %bb.o ] ; 6 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i21 ], [ %.sroa.0.021.i24, %bb.o ] ; 4 uses
  %i.ax = load i64, ptr %.sroa.0.021.i24, align 8, !tbaa !43 ; 4 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.aw
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !43 ; 2 uses
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !43
  %i.bc = icmp slt i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bd = ptrtoint ptr %.sroa.0.021.i24 to i64
  %i.be = sub i64 %i.bd, %i.b                     ; 3 uses
  %i.bf = ashr exact i64 %i.be, 3                 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 1
  br i1 %i.bg, label %bb.k, label %bb.l, !prof !41

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 16
  %i.bi = sub nsw i64 0, %i.bf
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.be, i1 false)
  %.pre24.i35 = load ptr, ptr %3, align 8, !tbaa !40
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i34

bb.l:                                             ; preds = %bb.j
  %i.bk = icmp eq i64 %i.be, 8
  br i1 %i.bk, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i34

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 8
  store i64 %i.aw, ptr %i.bl, align 8, !tbaa !43
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i34

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i34: ; preds = %bb.m, %bb.l, %bb.k
  %i.bm = phi ptr [ %.pre24.i35, %bb.k ], [ %i.av, %bb.l ], [ %i.av, %bb.m ]
  store i64 %i.ax, ptr %0, align 8, !tbaa !43
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.bn = load i64, ptr %.pn20.i25, align 8, !tbaa !43 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !43
  %i.bq = icmp slt i64 %i.ba, %i.bp
  br i1 %i.bq, label %.lr.ph.i.i30, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i26

.lr.ph.i.i30:                                     ; preds = %bb.n, %.lr.ph.i.i30
  %i.br = phi i64 [ %i.bs, %.lr.ph.i.i30 ], [ %i.bn, %bb.n ]
  %.sroa.0.010.i.i31 = phi ptr [ %.sroa.0.0.i.i33, %.lr.ph.i.i30 ], [ %.pn20.i25, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i32 = phi ptr [ %.sroa.0.010.i.i31, %.lr.ph.i.i30 ], [ %.sroa.0.021.i24, %bb.n ]
  store i64 %i.br, ptr %.sroa.05.09.i.i32, align 8, !tbaa !43
  %.sroa.0.0.i.i33 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i31, i64 -8 ; 2 uses
  %i.bs = load i64, ptr %.sroa.0.0.i.i33, align 8, !tbaa !43 ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bs
  %i.bu = load i64, ptr %i.ay, align 8, !tbaa !43
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !43
  %i.bw = icmp slt i64 %i.bu, %i.bv
  br i1 %i.bw, label %.lr.ph.i.i30, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i26, !llvm.loop !258

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i26: ; preds = %.lr.ph.i.i30, %bb.n
  %.sroa.05.0.lcssa.i.i27 = phi ptr [ %.sroa.0.021.i24, %bb.n ], [ %.sroa.0.010.i.i31, %.lr.ph.i.i30 ]
  store i64 %i.ax, ptr %.sroa.05.0.lcssa.i.i27, align 8, !tbaa !43
  %.pre.i28 = load i64, ptr %0, align 8, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i26, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i34
  %i.bx = phi ptr [ %i.bm, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i34 ], [ %i.av, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i26 ]
  %i.by = phi i64 [ %i.ax, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEES6_ET0_T_S8_S7_.exit.i34 ], [ %.pre.i28, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i26 ]
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i24, i64 8 ; 2 uses
  %i.bz = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %i.bz, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_.exit, label %bb.i, !llvm.loop !259

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops14_Val_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_.exit.i13, %.preheader.i19, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_RSJ_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
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
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !95 ; 4 uses
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

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_SJ_T1_T2_.exit.us
  %.09.us = phi i64 [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_SJ_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.us
  %i.q = load i64, ptr %i.p, align 8, !tbaa !43   ; 2 uses
  %i.r = icmp slt i64 %.09.us, %i.i
  br i1 %i.r, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_SJ_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us
  %i.s = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !40 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us
  %.037.i.us = phi i64 [ %.09.us, %.lr.ph.i.us ], [ %spec.select.i.us, %bb.c ] ; 2 uses
  %i.t = shl i64 %.037.i.us, 1                    ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %0, i64 %i.w
  %i.y = load i64, ptr %i.v, align 8, !tbaa !43
  %i.z = load i64, ptr %i.x, align 8, !tbaa !43
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.y
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.z
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !43
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !43
  %i.ae = icmp slt i64 %i.ac, %i.ad
  %spec.select.i.us = select i1 %i.ae, i64 %i.w, i64 %i.u ; 6 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.us
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !43
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.037.i.us
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !43
  %i.ai = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ai, label %bb.c, label %._crit_edge.i.us, !llvm.loop !4

._crit_edge.i.us:                                 ; preds = %bb.c
  %i.aj = icmp sgt i64 %spec.select.i.us, %.09.us
  br i1 %i.aj, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_SJ_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us
  %i.ak = load ptr, ptr %.sroa.2.0.copyload, align 8, !tbaa !40 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.us
  %.019.i.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.e ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0920.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !43 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !43
  %i.aq = load i64, ptr %i.al, align 8, !tbaa !43
  %i.ar = icmp slt i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.e, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_SJ_T1_T2_.exit.us

bb.e:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i.us
  store i64 %i.an, ptr %i.as, align 8, !tbaa !43
  %i.at = icmp sgt i64 %.0920.i.i.us, %.09.us
  br i1 %i.at, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_SJ_T1_T2_.exit.us, !llvm.loop !5

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SJ_SJ_T1_T2_.exit.us: ; preds = %bb.d, %bb.e, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.09.us, %.split.us ], [ %.019.i.i.us, %bb.d ], [ %.0920.i.i.us, %bb.e ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i64 %i.q, ptr %i.au, align 8, !tbaa !43
  %.not.us = icmp eq i64 %.09.us, 0
  %i.av = add nsw i64 %.09.us, -1
end_hunk_0
