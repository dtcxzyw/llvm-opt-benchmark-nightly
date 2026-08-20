inline.NumInlined: 24160
inline.NumDeleted: 12008
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 160
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit
  %i.j = icmp eq i64 %i.l, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !703

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2041 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 5 uses
  %.02140 = phi i64 [ %i.l, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.be, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = add nsw i64 %.02140, -1                  ; 3 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %storemerge2041, i64 -16 ; 3 uses
  %i.p = load i32, ptr %i.f, align 8, !tbaa !665  ; 5 uses
  %i.q = load i32, ptr %i.n, align 8, !tbaa !665  ; 5 uses
  %i.r = icmp slt i32 %i.p, %i.q
  %i.s = load i32, ptr %i.o, align 8, !tbaa !665  ; 6 uses
  br i1 %i.r, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph42
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %0, align 8, !tbaa !32
  store i32 %i.q, ptr %0, align 8, !tbaa !32
  store i32 %i.u, ptr %i.n, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !641
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !641
  store ptr %i.x, ptr %i.g, align 8, !tbaa !641
  store ptr %i.w, ptr %i.v, align 8, !tbaa !641
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.y = icmp slt i32 %i.p, %i.s
  %i.z = load i32, ptr %0, align 8, !tbaa !32     ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.s, ptr %0, align 8, !tbaa !32
  store i32 %i.z, ptr %i.o, align 8, !tbaa !32
  %i.aa = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !641
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !641
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !641
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !641
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i32 %i.p, ptr %0, align 8, !tbaa !32
  store i32 %i.z, ptr %i.f, align 8, !tbaa !32
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !641
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !641
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !641
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !641
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph42
  %i.af = icmp slt i32 %i.p, %i.s
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %0, align 8, !tbaa !32
  store i32 %i.p, ptr %0, align 8, !tbaa !32
  store i32 %i.ag, ptr %i.f, align 8, !tbaa !32
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !641
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !641
  store ptr %i.ai, ptr %i.g, align 8, !tbaa !641
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !641
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp slt i32 %i.q, %i.s
  %i.ak = load i32, ptr %0, align 8, !tbaa !32    ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.s, ptr %0, align 8, !tbaa !32
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !32
  %i.al = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !641
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !641
  store ptr %i.an, ptr %i.g, align 8, !tbaa !641
  store ptr %i.am, ptr %i.al, align 8, !tbaa !641
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.q, ptr %0, align 8, !tbaa !32
  store i32 %i.ak, ptr %i.n, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !641
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !641
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !641
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !641
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader, %bb.o
  %.sroa.010.0.i.i = phi ptr [ %i.au, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge2041, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %i.ar = load i32, ptr %0, align 8, !tbaa !665   ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i ], [ %i.au, %bb.m ] ; 9 uses
  %i.as = load i32, ptr %.sroa.010.1.i.i, align 8, !tbaa !665 ; 2 uses
  %i.at = icmp slt i32 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.at, label %bb.m, label %.preheader.i.i, !llvm.loop !704

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.av = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !665 ; 2 uses
  %i.aw = icmp slt i32 %i.ar, %i.av
  br i1 %i.aw, label %.preheader.i.i, label %bb.n, !llvm.loop !705

bb.n:                                             ; preds = %.preheader.i.i
  %i.ax = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ax, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %i.av, ptr %.sroa.010.1.i.i, align 4, !tbaa !32
  store i32 %i.as, ptr %.sroa.0.1.i.i, align 4, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !641
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !641
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !641
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !641
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i, !llvm.loop !706

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2041, i64 noundef %i.l)
  %i.bc = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bd = sub i64 %i.bc, %i.a
  %i.be = ashr exact i64 %i.bd, 4                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 16
  br i1 %i.bf, label %bb.b, label %.loopexit, !llvm.loop !703

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.09.021.i.idx = phi i64 [ %.sroa.09.021.i.add, %bb.d ], [ 16, %.lr.ph.i ] ; 3 uses
  %.pn20.i = phi ptr [ %.sroa.09.021.i.ptr, %bb.d ], [ %0, %.lr.ph.i ] ; 4 uses
  %.sroa.09.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.021.i.idx ; 6 uses
  %i.f = load i32, ptr %.sroa.09.021.i.ptr, align 8, !tbaa !665 ; 5 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !665
  %i.h = icmp slt i32 %i.f, %i.g
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8 ; 2 uses
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %i.i = add nuw nsw i64 %indvar, 1
  %i.j = lshr exact i64 %.sroa.09.021.i.idx, 4    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32 ; 2 uses
  %xtraiter62 = and i64 %i.i, 3                   ; 2 uses
  %lcmp.mod63.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod63.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.09.021.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter64 = phi i64 [ %prol.iter64.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.l = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !32
  store i32 %i.n, ptr %i.m, align 8, !tbaa !665
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !641
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !667
  %i.r = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter64.next = add i64 %prol.iter64, 1     ; 2 uses
  %prol.iter64.cmp.not = icmp eq i64 %prol.iter64.next, %xtraiter62
  br i1 %prol.iter64.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !707

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.09.021.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %indvar, 3
  br i1 %i.s, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.v = load i32, ptr %i.t, align 4, !tbaa !32
  store i32 %i.v, ptr %i.u, align 8, !tbaa !665
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !641
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !667
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !32
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !665
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !641
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !667
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !32
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !665
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !641
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !667
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.an = load i32, ptr %i.al, align 8, !tbaa !32
  store i32 %i.an, ptr %i.am, align 8, !tbaa !665
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !641
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !667
  %i.ar = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.as = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, !llvm.loop !708

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i32 %i.f, ptr %0, align 8, !tbaa !665
  store ptr %.sroa.48.0.copyload.i, ptr %i.e, align 8, !tbaa !667
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.at = load i32, ptr %.pn20.i, align 8, !tbaa !665 ; 2 uses
  %i.au = icmp slt i32 %i.f, %i.at
  br i1 %i.au, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.av = phi i32 [ %i.az, %.lr.ph.i.i ], [ %i.at, %bb.c ]
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.c ] ; 3 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.09.021.i.ptr, %bb.c ] ; 3 uses
  store i32 %i.av, ptr %.sroa.06.010.i.i, align 8, !tbaa !665
  %i.aw = getelementptr inbounds i8, ptr %.sroa.06.010.i.i, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !641
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !667
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -16 ; 2 uses
  %i.az = load i32, ptr %.sroa.0.0.i.i, align 8, !tbaa !665 ; 2 uses
  %i.ba = icmp slt i32 %i.f, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, !llvm.loop !709

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.09.021.i.ptr, %bb.c ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %i.f, ptr %.sroa.06.0.lcssa.i.i, align 8, !tbaa !665
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 8
  store ptr %.sroa.48.0.copyload.i, ptr %i.bb, align 8, !tbaa !667
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i
  %.sroa.09.021.i.add = add nuw nsw i64 %.sroa.09.021.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.09.021.i.add, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.b, !llvm.loop !710

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit: ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.bc, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13
  %.sroa.0.07.i = phi ptr [ %i.bm, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13 ], [ %i.bc, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.55.0.copyload.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i, align 8
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.bd = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !665 ; 2 uses
  %i.be = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bf = phi i32 [ %i.bj, %.lr.ph.i.i16 ], [ %i.bd, %.lr.ph.i12 ]
  %.sroa.0.011.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.06.010.i.i18 = phi ptr [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  store i32 %i.bf, ptr %.sroa.06.010.i.i18, align 8, !tbaa !665
  %i.bg = getelementptr inbounds i8, ptr %.sroa.06.010.i.i18, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !641
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i18, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !667
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17, i64 -16 ; 2 uses
  %i.bj = load i32, ptr %.sroa.0.0.i.i19, align 8, !tbaa !665 ; 2 uses
  %i.bk = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, !llvm.loop !709

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i14, align 8, !tbaa !665
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i14, i64 8
  store ptr %.sroa.55.0.copyload.i.i, ptr %i.bl, align 8, !tbaa !667
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bm, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12, !llvm.loop !711

bb.e:                                             ; preds = %bb.a
  %i.bn = icmp eq ptr %0, %1
  br i1 %i.bn, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.e
  %.sroa.09.018.i21 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19.i22 = icmp eq ptr %.sroa.09.018.i21, %1
  br i1 %.not19.i22, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader.i20
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i23
  %.sroa.09.021.i24 = phi ptr [ %.sroa.09.018.i21, %.lr.ph.i23 ], [ %.sroa.09.0.i30, %bb.i ] ; 8 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i23 ], [ %.sroa.09.021.i24, %bb.i ] ; 4 uses
  %i.bp = load i32, ptr %.sroa.09.021.i24, align 8, !tbaa !665 ; 5 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !665
  %i.br = icmp slt i32 %i.bp, %i.bq
  %.sroa.48.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 24
  %.sroa.48.0.copyload.i27 = load ptr, ptr %.sroa.48.0..sroa_idx.i26, align 8 ; 2 uses
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = ptrtoint ptr %.sroa.09.021.i24 to i64
  %i.bt = sub i64 %i.bs, %i.b
  %i.bu = ashr exact i64 %i.bt, 4                 ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.preheader.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36

.lr.ph.i.i.i.i.i.preheader.i37:                   ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 32 ; 2 uses
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol

.lr.ph.i.i.i.i.i.i38.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i37, %.lr.ph.i.i.i.i.i.i38.prol
  %.010.i.i.i.i.i.i39.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %.069.i.i.i.i.i.i40.prol = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %.078.i.i.i.i.i.i41.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ], [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i38.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -16 ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -16 ; 3 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !32
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !665
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !641
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !667
  %i.cd = add nsw i64 %.010.i.i.i.i.i.i39.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol, !llvm.loop !712

end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a
  %i.t = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.t, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
          to label %.noexc190 unwind label %bb.af

.noexc190:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !925  ; 2 uses
  %.not156 = icmp eq ptr %i.w, null
  br i1 %.not156, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.x = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.y = icmp samesign ult i64 %i.f, 16385
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i64 %i.x, 15
  %i.aa = alloca i8, i64 %i.z, align 16           ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #41 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
          to label %.noexc193 unwind label %bb.ag

.noexc193:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.ah = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.q, !prof !35

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #35
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #35
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #35
  br label %.body

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.al = icmp sgt i64 %1, 0
  br i1 %i.al, label %bb.r, label %.thread.thread

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !926
  %.sroa.speculated275 = tail call i64 @llvm.smax.i64(i64 %6, i64 %0)
  %i.an = shl i64 %.sroa.speculated275, 5
  %.fr = freeze i64 %i.am
  %i.ao = udiv i64 %.fr, %i.an
  %i.ap = and i64 %i.ao, 576460752303423484       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp sgt i64 %0, 0
  %. = select i1 %i.aq, i64 4, i64 %i.ap          ; 5 uses
  br i1 %i.ar, label %.lr.ph314.us.preheader, label %._crit_edge

.thread.thread:                                   ; preds = %bb.q
  %i.as = icmp sgt i64 %0, 0
  br i1 %i.as, label %.lr.ph325.split.preheader, label %._crit_edge

.lr.ph325.split.preheader:                        ; preds = %.thread.thread
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.av = icmp slt i64 %i.b, %0
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph314.us.preheader:                           ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bb = shl i64 %i.b, 3
  %i.bc = mul i64 %., %6
  %i.bd = shl i64 %i.bc, 3
  %i.be = shl i64 %6, 3                           ; 3 uses
  %i.bf = shl i64 %3, 3
  %i.bg = add i64 %i.bf, 8                        ; 3 uses
  %i.bh = mul i64 %i.b, %i.bg
  %i.bi = shl i64 %3, 5
  %i.bj = add i64 %i.bi, 32
  %i.bk = shl i64 %3, 3
  %stride.check.1 = icmp slt i64 %i.be, 0
  %i.bl = shl i64 %i.bg, 1
  %i.bm = shl i64 %3, 4
  %stride.check.2 = icmp slt i64 %i.be, 0
  br label %.lr.ph314.us

.lr.ph314.us:                                     ; preds = %.loopexit.us, %.lr.ph314.us.preheader
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph314.us.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ %0, %.lr.ph314.us.preheader ] ; 2 uses
  %.0132323.us = phi i64 [ %i.cf, %.loopexit.us ], [ 0, %.lr.ph314.us.preheader ] ; 4 uses
  %i.bn = mul i64 %i.bb, %indvar                  ; 3 uses
  %i.bo = mul i64 %i.bh, %indvar                  ; 4 uses
  %smin = call i64 @llvm.smin.i64(i64 %i.b, i64 %indvars.iv)
  %i.bp = sub nsw i64 %0, %.0132323.us
  %.sroa.speculated218.us = call i64 @llvm.smin.i64(i64 %i.b, i64 %i.bp) ; 8 uses
  %i.bq = icmp sgt i64 %.sroa.speculated218.us, 0
  br i1 %i.bq, label %.lr.ph308.us.us.preheader, label %._crit_edge315.us

.lr.ph308.us.us.preheader:                        ; preds = %.lr.ph314.us
  %i.br = getelementptr i8, ptr %4, i64 %i.bn
  %i.bs = getelementptr i8, ptr %4, i64 %i.bn
  %i.bt = getelementptr i8, ptr %2, i64 %i.bo
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %invariant.gep389 = getelementptr i8, ptr %i.bu, i64 %i.bg
  %i.bv = getelementptr i8, ptr %2, i64 %i.bo
  %i.bw = getelementptr i8, ptr %4, i64 %i.bn
  %i.bx = getelementptr i8, ptr %2, i64 %i.bo
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %invariant.gep391 = getelementptr i8, ptr %i.by, i64 %i.bl
  %i.bz = getelementptr i8, ptr %2, i64 %i.bo
  br label %.lr.ph308.us.us

bb.s:                                             ; preds = %.lr.ph.us330, %bb.w
  %.0322.us = phi i64 [ %i.cf, %.lr.ph.us330 ], [ %i.cd, %bb.w ] ; 4 uses
  %i.ca = sub nsw i64 %0, %.0322.us
  %.sroa.speculated.us = call i64 @llvm.smin.i64(i64 %i.ca, i64 %.sroa.speculated243) ; 3 uses
  %i.cb = icmp sgt i64 %.sroa.speculated.us, 0
  br i1 %i.cb, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  %gep.us327 = getelementptr [8 x i8], ptr %invariant.gep.us331, i64 %.0322.us
  store ptr %gep.us327, ptr %14, align 8
  store i64 %3, ptr %i.az, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.sroa.speculated218.us, i64 noundef %.sroa.speculated.us, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %.split.us332

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %i.cc = getelementptr [8 x i8], ptr %4, i64 %.0322.us
  store ptr %i.cc, ptr %15, align 8
  store i64 %6, ptr %i.ba, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated.us, i64 noundef %.sroa.speculated218.us, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.v unwind label %.split334.us

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.cd = add nsw i64 %.0322.us, %.sroa.speculated243 ; 2 uses
  %i.ce = icmp slt i64 %i.cd, %0
  br i1 %i.ce, label %bb.s, label %.loopexit.us, !llvm.loop !928

.loopexit.us:                                     ; preds = %bb.w
  %indvars.iv.next = sub i64 %indvars.iv, %i.b
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph314.us, !llvm.loop !929

._crit_edge315.us:                                ; preds = %._crit_edge309.us.us, %.lr.ph314.us
  %i.cf = add nsw i64 %.0132323.us, %i.b          ; 3 uses
  %i.cg = icmp slt i64 %i.cf, %0
  br i1 %i.cg, label %.lr.ph.us330, label %._crit_edge

.lr.ph308.us.us:                                  ; preds = %.lr.ph308.us.us.preheader, %._crit_edge309.us.us
  %indvar375 = phi i64 [ %indvar.next376, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 3 uses
  %.0131312.us.us = phi i64 [ %i.gz, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 10 uses
  %i.ch = mul i64 %i.bd, %indvar375               ; 3 uses
  %i.ci = or disjoint i64 %.0131312.us.us, 1
  %i.cj = mul i64 %., %indvar375                  ; 2 uses
  %i.ck = sub i64 %1, %i.cj
  %smin379 = call i64 @llvm.smin.i64(i64 %., i64 %i.ck)
  %i.cl = add i64 %smin379, %.0131312.us.us
  %smax = call i64 @llvm.smax.i64(i64 %i.ci, i64 %i.cl)
  %i.cm = xor i64 %i.cj, -1
  %i.cn = add nsw i64 %smax, %i.cm
  %i.co = mul i64 %i.be, %i.cn
  %i.cp = sub nsw i64 %1, %.0131312.us.us         ; 2 uses
  %.sroa.speculated213.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.cp) ; 3 uses
  %i.cq = add nsw i64 %.sroa.speculated213.us.us, %.0131312.us.us ; 3 uses
  %i.cr = icmp slt i64 %i.cp, 1
  %i.cs = mul nuw nsw i64 %.0131312.us.us, %.sroa.speculated218.us
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cs ; 2 uses
  %i.cu = mul nsw i64 %.0131312.us.us, %6
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %4, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %i.br, i64 %i.ch
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.co
  %i.cx = getelementptr i8, ptr %i.bs, i64 %i.ch
  %i.cy = getelementptr i8, ptr %i.bw, i64 %i.ch
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %.lr.ph308.us.us
  %indvar377 = phi i64 [ %indvar.next378, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 3 uses
  %indvars.iv341 = phi i64 [ %indvars.iv.next342, %bb.ac ], [ %smin, %.lr.ph308.us.us ] ; 4 uses
  %.0130306.us.us = phi i64 [ %i.ef, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 5 uses
  %i.cz = shl i64 %indvar377, 5                   ; 3 uses
  %scevgep380 = getelementptr i8, ptr %i.cw, i64 %i.cz
  %smin381 = call i64 @llvm.smin.i64(i64 %indvars.iv341, i64 4)
  %i.da = shl i64 %smin381, 3                     ; 3 uses
  %scevgep382 = getelementptr i8, ptr %scevgep380, i64 %i.da ; 2 uses
  %i.db = mul i64 %i.bj, %indvar377               ; 4 uses
  %i.dc = sub nsw i64 %.sroa.speculated218.us, %.0130306.us.us ; 6 uses
  %.sroa.speculated207.us.us = call i64 @llvm.smin.i64(i64 %i.dc, i64 4) ; 9 uses
  %i.dd = icmp slt i64 %i.dc, 1
  %i.de = add nsw i64 %.0130306.us.us, %.0132323.us ; 10 uses
  %brmerge = select i1 %i.dd, i1 true, i1 %i.cr
  br i1 %brmerge, label %._crit_edge305.split.us.us, label %.lr.ph300.us.us

.lr.ph300.us.us:                                  ; preds = %bb.x
  %i.df = add nsw i64 %.sroa.speculated207.us.us, -1
  %i.dg = add nsw i64 %i.de, 1                    ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %4, i64 %i.de
  %i.di = getelementptr [8 x i8], ptr %4, i64 %i.dg
  %i.dj = mul nsw i64 %i.de, %3
  %i.dk = getelementptr [8 x i8], ptr %2, i64 %i.dg
  %i.dl = getelementptr [8 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = icmp sgt i64 %i.dc, 1
  br i1 %i.dm, label %.lr.ph.us.us, label %._crit_edge301.split.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph300.us.us, %._crit_edge.us.us
  %.0128298.us.us = phi i64 [ %i.eh, %._crit_edge.us.us ], [ %.0131312.us.us, %.lr.ph300.us.us ] ; 2 uses
  %i.dn = mul nsw i64 %.0128298.us.us, %6         ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %i.dh, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !378
  %i.dq = getelementptr [8 x i8], ptr %i.di, i64 %i.dn
  %i.dr = fneg double %i.dp
  br label %scalar.ph

scalar.ph:                                        ; preds = %.lr.ph.us.us, %scalar.ph
  %.0127297.us.us = phi i64 [ %i.dx, %scalar.ph ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.0127297.us.us
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !378
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.0127297.us.us ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !378
  %i.dw = call double @llvm.fmuladd.f64(double %i.dr, double %i.dt, double %i.dv)
  store double %i.dw, ptr %i.du, align 8, !tbaa !378
  %i.dx = add nuw nsw i64 %.0127297.us.us, 1      ; 2 uses
  %i.dy = icmp slt i64 %i.dx, %i.df
  br i1 %i.dy, label %scalar.ph, label %._crit_edge.us.us, !llvm.loop !930

._crit_edge305.split.us.us:                       ; preds = %.lr.ph300.us.us.2, %._crit_edge.us.us.2, %._crit_edge301.split.us.us, %._crit_edge301.split.us.us.1, %bb.x
  %i.dz = sub nsw i64 %i.dc, %.sroa.speculated207.us.us ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.de
  store ptr %gep.us.us, ptr %11, align 8
  store i64 %6, ptr %i.aw, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.sroa.speculated207.us.us, i64 noundef %.sroa.speculated213.us.us, i64 noundef %.sroa.speculated218.us, i64 noundef %.0130306.us.us)
          to label %bb.y unwind label %.split.us.split.us

bb.y:                                             ; preds = %._crit_edge305.split.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %i.ea = icmp sgt i64 %i.dz, 0
  br i1 %i.ea, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.eb = add nsw i64 %.sroa.speculated207.us.us, %i.de ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.ec = mul nsw i64 %i.de, %3
  %i.ed = getelementptr [8 x i8], ptr %2, i64 %i.eb
  %i.ee = getelementptr [8 x i8], ptr %i.ed, i64 %i.ec
  store ptr %i.ee, ptr %12, align 8
  store i64 %3, ptr %i.ax, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %.sroa.speculated207.us.us, i64 noundef %i.dz, i64 noundef 0, i64 noundef 0)
          to label %bb.aa unwind label %.split317.us.split.us

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  %gep311.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.eb
  store ptr %gep311.us.us, ptr %13, align 8
  store i64 %6, ptr %i.ay, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ct, i64 noundef %i.dz, i64 noundef %.sroa.speculated207.us.us, i64 noundef %.sroa.speculated213.us.us, double noundef -1.000000e+00, i64 noundef %.sroa.speculated207.us.us, i64 noundef %.sroa.speculated218.us, i64 noundef 0, i64 noundef %.0130306.us.us)
          to label %bb.ab unwind label %.split320.us.split.us

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %i.ef = add nuw nsw i64 %.0130306.us.us, 4      ; 2 uses
  %i.eg = icmp slt i64 %i.ef, %.sroa.speculated218.us
  %indvars.iv.next342 = add i64 %indvars.iv341, -4
  %indvar.next378 = add i64 %indvar377, 1
  br i1 %i.eg, label %bb.x, label %._crit_edge309.us.us, !llvm.loop !931

._crit_edge.us.us:                                ; preds = %scalar.ph
  %i.eh = add nuw nsw i64 %.0128298.us.us, 1      ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.cq
  br i1 %i.ei, label %.lr.ph.us.us, label %._crit_edge301.split.us.us, !llvm.loop !932

._crit_edge301.split.us.us:                       ; preds = %._crit_edge.us.us, %.lr.ph300.us.us
  %exitcond.not = icmp slt i64 %indvars.iv341, 2
  br i1 %exitcond.not, label %._crit_edge305.split.us.us, label %.lr.ph300.us.us.1

.lr.ph300.us.us.1:                                ; preds = %._crit_edge301.split.us.us
  %i.ej = getelementptr i8, ptr %i.cx, i64 %i.cz
  %scevgep.1 = getelementptr i8, ptr %i.ej, i64 16
  %gep390 = getelementptr i8, ptr %invariant.gep389, i64 %i.db
  %i.ek = getelementptr i8, ptr %i.bv, i64 %i.db
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.da
  %scevgep384.1 = getelementptr i8, ptr %i.el, i64 %i.bk
  %i.em = add nsw i64 %i.de, 1                    ; 2 uses
  %i.en = add nsw i64 %.sroa.speculated207.us.us, -2 ; 4 uses
  %i.eo = add nsw i64 %i.de, 2                    ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %4, i64 %i.em
  %i.eq = getelementptr [8 x i8], ptr %4, i64 %i.eo
  %i.er = mul nsw i64 %i.em, %3
  %i.es = getelementptr [8 x i8], ptr %2, i64 %i.eo
  %i.et = getelementptr [8 x i8], ptr %i.es, i64 %i.er ; 2 uses
  %i.eu = icmp sgt i64 %i.dc, 2
  br i1 %i.eu, label %.lr.ph.us.us.preheader.1, label %._crit_edge301.split.us.us.1

.lr.ph.us.us.preheader.1:                         ; preds = %.lr.ph300.us.us.1
  %min.iters.check.1 = icmp ult i64 %i.en, 4
  %bound0.1 = icmp ult ptr %scevgep.1, %scevgep384.1
  %bound1.1 = icmp ult ptr %gep390, %scevgep382
  %found.conflict.1 = and i1 %bound0.1, %bound1.1
  %i.ev = or i1 %found.conflict.1, %stride.check.1
  %n.vec.1 = and i64 %i.en, 9223372036854775804   ; 3 uses
  %cmp.n.1 = icmp eq i64 %i.en, %n.vec.1
  br label %.lr.ph.us.us.1

.lr.ph.us.us.1:                                   ; preds = %._crit_edge.us.us.1, %.lr.ph.us.us.preheader.1
  %.0128298.us.us.1 = phi i64 [ %i.fp, %._crit_edge.us.us.1 ], [ %.0131312.us.us, %.lr.ph.us.us.preheader.1 ] ; 2 uses
  %i.ew = mul nsw i64 %.0128298.us.us.1, %6       ; 2 uses
  %i.ex = getelementptr [8 x i8], ptr %i.ep, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !378
  %i.ez = getelementptr [8 x i8], ptr %i.eq, i64 %i.ew ; 2 uses
  %i.fa = fneg double %i.ey                       ; 2 uses
  %brmerge393 = select i1 %min.iters.check.1, i1 true, i1 %i.ev
  br i1 %brmerge393, label %scalar.ph.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %.lr.ph.us.us.1
  %broadcast.splatinsert.1 = insertelement <2 x double> poison, double %i.fa, i64 0
  %broadcast.splat.1 = shufflevector <2 x double> %broadcast.splatinsert.1, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %index.1 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load.1 = load <2 x double>, ptr %i.fb, align 8, !tbaa !378, !alias.scope !933
  %wide.load385.1 = load <2 x double>, ptr %i.fc, align 8, !tbaa !378, !alias.scope !933
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index.1 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %wide.load386.1 = load <2 x double>, ptr %i.fd, align 8, !tbaa !378, !alias.scope !936, !noalias !933
  %wide.load387.1 = load <2 x double>, ptr %i.fe, align 8, !tbaa !378, !alias.scope !936, !noalias !933
  %i.ff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.1, <2 x double> %wide.load.1, <2 x double> %wide.load386.1)
  %i.fg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.1, <2 x double> %wide.load385.1, <2 x double> %wide.load387.1)
  store <2 x double> %i.ff, ptr %i.fd, align 8, !tbaa !378, !alias.scope !936, !noalias !933
  store <2 x double> %i.fg, ptr %i.fe, align 8, !tbaa !378, !alias.scope !936, !noalias !933
  %index.next.1 = add nuw i64 %index.1, 4         ; 2 uses
  %i.fh = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.fh, label %middle.block.1, label %vector.body.1, !llvm.loop !938

middle.block.1:                                   ; preds = %vector.body.1
  br i1 %cmp.n.1, label %._crit_edge.us.us.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %.lr.ph.us.us.1, %middle.block.1
  %.0127297.us.us.ph.1 = phi i64 [ %n.vec.1, %middle.block.1 ], [ 0, %.lr.ph.us.us.1 ]
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.1, %scalar.ph.preheader.1
  %.0127297.us.us.1 = phi i64 [ %i.fn, %scalar.ph.1 ], [ %.0127297.us.us.ph.1, %scalar.ph.preheader.1 ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.0127297.us.us.1
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !378
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.0127297.us.us.1 ; 2 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !378
  %i.fm = call double @llvm.fmuladd.f64(double %i.fa, double %i.fj, double %i.fl)
  store double %i.fm, ptr %i.fk, align 8, !tbaa !378
  %i.fn = add nuw nsw i64 %.0127297.us.us.1, 1    ; 2 uses
  %i.fo = icmp slt i64 %i.fn, %i.en
  br i1 %i.fo, label %scalar.ph.1, label %._crit_edge.us.us.1, !llvm.loop !930

._crit_edge.us.us.1:                              ; preds = %scalar.ph.1, %middle.block.1
  %i.fp = add nuw nsw i64 %.0128298.us.us.1, 1    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi2ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !925  ; 2 uses
  %.not159 = icmp eq ptr %i.w, null
  br i1 %.not159, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.x = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.y = icmp samesign ult i64 %i.f, 16385
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i64 %i.x, 15
  %i.aa = alloca i8, i64 %i.z, align 16           ; 2 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #41 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
          to label %.noexc196 unwind label %bb.ag

.noexc196:                                        ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.j
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.ah = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %bb.q, !prof !35

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #35
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #35
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #35
  br label %.body

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.l
  %i.al = icmp sgt i64 %1, 0
  br i1 %i.al, label %bb.r, label %.thread.thread

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !926
  %.sroa.speculated280 = tail call i64 @llvm.smax.i64(i64 %6, i64 %0)
  %i.an = shl i64 %.sroa.speculated280, 5
  %.fr = freeze i64 %i.am
  %i.ao = udiv i64 %.fr, %i.an
  %i.ap = and i64 %i.ao, 576460752303423484       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp sgt i64 %0, 0
  %. = select i1 %i.aq, i64 4, i64 %i.ap          ; 7 uses
  br i1 %i.ar, label %.lr.ph312.us.preheader, label %._crit_edge

.thread.thread:                                   ; preds = %bb.q
  %i.as = icmp sgt i64 %0, 0
  br i1 %i.as, label %.lr.ph328.split.preheader, label %._crit_edge

.lr.ph328.split.preheader:                        ; preds = %.thread.thread
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.av = sub nsw i64 %0, %i.b                    ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.lr.ph, label %._crit_edge

.lr.ph.lr.ph:                                     ; preds = %.lr.ph328.split.preheader
  %.sroa.speculated221375 = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %0)
  br label %.lr.ph

.lr.ph312.us.preheader:                           ; preds = %bb.r
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bc = icmp sgt i64 %i.b, 0
  %i.bd = shl i64 %0, 3                           ; 4 uses
  %i.be = mul i64 %i.b, -8
  %i.bf = mul i64 %., %6
  %i.bg = shl i64 %i.bf, 3
  %i.bh = add i64 %i.bd, -8
  %i.bi = shl i64 %6, 3                           ; 2 uses
  %i.bj = add nuw i64 %0, 2305843009213693951
  %i.bk = mul i64 %3, %i.bj
  %i.bl = shl i64 %i.bk, 3                        ; 2 uses
  %i.bm = add i64 %i.bl, %i.bd
  %i.bn = shl i64 %3, 3
  %i.bo = sub nuw nsw i64 -8, %i.bn               ; 2 uses
  %i.bp = mul i64 %i.b, %i.bo
  %i.bq = shl i64 %3, 5
  %i.br = sub nuw nsw i64 -32, %i.bq
  %i.bs = mul i64 %3, -8
  %i.bt = getelementptr i8, ptr %4, i64 %i.bd
  %i.bu = getelementptr i8, ptr %2, i64 %i.bl
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bd
  %i.bw = getelementptr i8, ptr %i.bv, i64 -8
  %ident.check.not = icmp eq i64 %6, 1
  %stride.check = icmp slt i64 %i.bi, 0
  br label %.lr.ph312.us

.lr.ph312.us:                                     ; preds = %.loopexit.us, %.lr.ph312.us.preheader
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph312.us.preheader ] ; 3 uses
  %.0135326.us = phi i64 [ %i.cl, %.loopexit.us ], [ %0, %.lr.ph312.us.preheader ] ; 5 uses
  %i.bx = mul i64 %i.be, %indvar                  ; 2 uses
  %i.by = add i64 %i.bh, %i.bx
  %i.bz = mul i64 %i.bp, %indvar                  ; 2 uses
  %i.ca = add i64 %i.bm, %i.bz
  %smin = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0135326.us) ; 9 uses
  %i.cb = sub nsw i64 %.0135326.us, %smin         ; 2 uses
  %i.cc = getelementptr [8 x i8], ptr %2, i64 %i.cb
  %i.cd = getelementptr [8 x i8], ptr %4, i64 %i.cb
  br i1 %i.bc, label %.lr.ph308.us.us.preheader, label %._crit_edge313.us

.lr.ph308.us.us.preheader:                        ; preds = %.lr.ph312.us
  %i.ce = getelementptr i8, ptr %i.bt, i64 %i.bx
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.bz
  br label %.lr.ph308.us.us

bb.s:                                             ; preds = %.lr.ph.us, %bb.w
  %.0325.us = phi i64 [ 0, %.lr.ph.us ], [ %i.cj, %bb.w ] ; 4 uses
  %i.cg = sub nsw i64 %i.cl, %.0325.us
  %.sroa.speculated.us = call i64 @llvm.smin.i64(i64 %i.cg, i64 %.sroa.speculated246) ; 3 uses
  %i.ch = icmp sgt i64 %.sroa.speculated.us, 0
  br i1 %i.ch, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  %gep.us330 = getelementptr [8 x i8], ptr %invariant.gep.us333, i64 %.0325.us
  store ptr %gep.us330, ptr %14, align 8
  store i64 %3, ptr %i.ba, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %smin, i64 noundef %.sroa.speculated.us, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %.split.us334

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %i.ci = getelementptr [8 x i8], ptr %4, i64 %.0325.us
  store ptr %i.ci, ptr %15, align 8
  store i64 %6, ptr %i.bb, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated.us, i64 noundef %smin, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.v unwind label %.split336.us

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.cj = add nsw i64 %.0325.us, %.sroa.speculated246 ; 2 uses
  %i.ck = icmp slt i64 %i.cj, %i.cl
  br i1 %i.ck, label %bb.s, label %.loopexit.us, !llvm.loop !1215

.loopexit.us:                                     ; preds = %bb.w
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph312.us, !llvm.loop !1216

._crit_edge313.us:                                ; preds = %._crit_edge309.us.us, %.lr.ph312.us
  %i.cl = sub nsw i64 %.0135326.us, %i.b          ; 5 uses
  %i.cm = icmp sgt i64 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.us, label %._crit_edge

.lr.ph308.us.us:                                  ; preds = %.lr.ph308.us.us.preheader, %._crit_edge309.us.us
  %indvar377 = phi i64 [ %indvar.next378, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 4 uses
  %.0134310.us.us = phi i64 [ %i.gl, %._crit_edge309.us.us ], [ 0, %.lr.ph308.us.us.preheader ] ; 13 uses
  %i.cn = or disjoint i64 %.0134310.us.us, 1
  %i.co = mul i64 %., %indvar377                  ; 2 uses
  %i.cp = sub i64 %1, %i.co
  %smin390 = call i64 @llvm.smin.i64(i64 %., i64 %i.cp)
  %i.cq = add i64 %smin390, %.0134310.us.us
  %smax391 = call i64 @llvm.smax.i64(i64 %i.cn, i64 %i.cq) ; 2 uses
  %i.cr = sub i64 %smax391, %i.co                 ; 2 uses
  %i.cs = mul i64 %i.bg, %indvar377               ; 2 uses
  %i.ct = add i64 %i.by, %i.cs
  %i.cu = or disjoint i64 %.0134310.us.us, 1
  %i.cv = mul i64 %., %indvar377                  ; 2 uses
  %i.cw = sub i64 %1, %i.cv
  %smin383 = call i64 @llvm.smin.i64(i64 %., i64 %i.cw)
  %i.cx = add i64 %smin383, %.0134310.us.us
  %smax = call i64 @llvm.smax.i64(i64 %i.cu, i64 %i.cx)
  %i.cy = xor i64 %i.cv, -1
  %i.cz = add nsw i64 %smax, %i.cy
  %i.da = mul i64 %i.bi, %i.cz
  %i.db = add i64 %i.ct, %i.da
  %i.dc = sub nsw i64 %1, %.0134310.us.us         ; 2 uses
  %.sroa.speculated216.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.dc) ; 3 uses
  %i.dd = add nsw i64 %.sroa.speculated216.us.us, %.0134310.us.us ; 2 uses
  %i.de = icmp slt i64 %i.dc, 1
  %i.df = mul nuw nsw i64 %.0134310.us.us, %smin
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.df ; 2 uses
  %i.dh = mul nsw i64 %.0134310.us.us, %6         ; 2 uses
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %4, i64 %i.dh
  %i.di = getelementptr [8 x i8], ptr %i.cd, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.ce, i64 %i.cs
  %min.iters.check393 = icmp ugt i64 %i.cr, 3
  %or.cond = and i1 %min.iters.check393, %ident.check.not
  %i.dk = and i64 %smax391, 3                     ; 2 uses
  %n.vec395 = sub nuw i64 %i.cr, %i.dk            ; 2 uses
  %i.dl = add i64 %.0134310.us.us, %n.vec395
  %cmp.n404 = icmp eq i64 %i.dk, 0
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %.lr.ph308.us.us
  %indvar379 = phi i64 [ %indvar.next380, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ac ], [ %smin, %.lr.ph308.us.us ] ; 3 uses
  %.0133306.us.us = phi i64 [ %i.fm, %bb.ac ], [ 0, %.lr.ph308.us.us ] ; 4 uses
  %i.dm = mul i64 %indvar379, -32                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dj, i64 %i.dm
  %smin381 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 4) ; 2 uses
  %i.dn = mul i64 %smin381, -8
  %scevgep382 = getelementptr i8, ptr %scevgep, i64 %i.dn
  %i.do = add i64 %i.db, %i.dm
  %i.dp = mul i64 %i.br, %indvar379               ; 2 uses
  %i.dq = add i64 %i.ca, %i.dp
  %i.dr = shl i64 %smin381, 3
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.du = call i64 @llvm.umin.i64(i64 %i.dt, i64 4)
  %i.dv = sub nsw i64 %smin, %.0133306.us.us      ; 3 uses
  %.sroa.speculated210.us.us = call i64 @llvm.smin.i64(i64 %i.dv, i64 4) ; 7 uses
  %i.dw = icmp slt i64 %i.dv, 1
  %brmerge = select i1 %i.dw, i1 true, i1 %i.de
  br i1 %brmerge, label %._crit_edge.split.us.us, label %.lr.ph303.us.us.preheader

.lr.ph303.us.us.preheader:                        ; preds = %bb.x
  %i.dx = getelementptr i8, ptr %2, i64 %i.ds
  %i.dy = getelementptr i8, ptr %i.cf, i64 %i.dp
  br label %.lr.ph303.us.us

.lr.ph303.us.us:                                  ; preds = %.lr.ph303.us.us.preheader, %._crit_edge304.us.us
  %.0132305.us.us = phi i64 [ %i.fo, %._crit_edge304.us.us ], [ 0, %.lr.ph303.us.us.preheader ] ; 6 uses
  %i.dz = shl i64 %.0132305.us.us, 3
  %i.ea = sub i64 %i.do, %i.dz
  %scevgep384 = getelementptr i8, ptr %4, i64 %i.ea
  %i.eb = mul i64 %i.bs, %.0132305.us.us
  %scevgep385 = getelementptr i8, ptr %i.dx, i64 %i.eb
  %i.ec = mul i64 %i.bo, %.0132305.us.us
  %scevgep386 = getelementptr i8, ptr %i.dy, i64 %i.ec
  %i.ed = add nuw nsw i64 %.0132305.us.us, %.0133306.us.us
  %i.ee = xor i64 %i.ed, -1
  %i.ef = add nsw i64 %.0135326.us, %i.ee         ; 4 uses
  %i.eg = xor i64 %.0132305.us.us, -1
  %i.eh = add nsw i64 %.sroa.speculated210.us.us, %i.eg ; 6 uses
  %i.ei = sub nsw i64 %i.ef, %i.eh                ; 2 uses
  %i.ej = mul nsw i64 %i.ef, %3                   ; 2 uses
  %i.ek = getelementptr [8 x i8], ptr %2, i64 %i.ef
  %i.el = getelementptr [8 x i8], ptr %i.ek, i64 %i.ej
  %i.em = load double, ptr %i.el, align 8, !tbaa !378
  %i.en = fdiv double 1.000000e+00, %i.em         ; 3 uses
  %i.eo = getelementptr [8 x i8], ptr %4, i64 %i.ef ; 3 uses
  %i.ep = getelementptr [8 x i8], ptr %4, i64 %i.ei
  %i.eq = getelementptr [8 x i8], ptr %2, i64 %i.ei
  %i.er = getelementptr [8 x i8], ptr %i.eq, i64 %i.ej ; 2 uses
  %i.es = icmp sgt i64 %i.eh, 0
  br i1 %i.es, label %.lr.ph.us.us.us.preheader, label %.lr.ph303.split.us316.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph303.us.us
  %min.iters.check = icmp ult i64 %i.eh, 4
  %bound0 = icmp ult ptr %scevgep382, %scevgep386
  %bound1 = icmp ult ptr %scevgep385, %scevgep384
  %found.conflict = and i1 %bound0, %bound1
  %i.et = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.eh, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.eh, %n.vec
  br label %.lr.ph.us.us.us

.lr.ph303.split.us316.us.preheader:               ; preds = %.lr.ph303.us.us
  br i1 %or.cond, label %vector.ph394, label %.lr.ph303.split.us316.us.preheader406

vector.ph394:                                     ; preds = %.lr.ph303.split.us316.us.preheader
  %broadcast.splatinsert396 = insertelement <2 x double> poison, double %i.en, i64 0
  %broadcast.splat397 = shufflevector <2 x double> %broadcast.splatinsert396, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %i.eo, i64 %.0134310.us.us
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph394
  %index399 = phi i64 [ 0, %vector.ph394 ], [ %index.next402, %vector.body398 ] ; 2 uses
  %i.ev = getelementptr [8 x i8], ptr %i.eu, i64 %index399 ; 3 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 16     ; 2 uses
  %wide.load400 = load <2 x double>, ptr %i.ev, align 8, !tbaa !378
  %wide.load401 = load <2 x double>, ptr %i.ew, align 8, !tbaa !378
  %i.ex = fmul <2 x double> %broadcast.splat397, %wide.load400
  %i.ey = fmul <2 x double> %broadcast.splat397, %wide.load401
  store <2 x double> %i.ex, ptr %i.ev, align 8, !tbaa !378
  store <2 x double> %i.ey, ptr %i.ew, align 8, !tbaa !378
  %index.next402 = add nuw i64 %index399, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next402, %n.vec395
  br i1 %i.ez, label %middle.block403, label %vector.body398, !llvm.loop !1217

middle.block403:                                  ; preds = %vector.body398
  br i1 %cmp.n404, label %._crit_edge304.us.us, label %.lr.ph303.split.us316.us.preheader406

.lr.ph303.split.us316.us.preheader406:            ; preds = %.lr.ph303.split.us316.us.preheader, %middle.block403
  %.0131301.us314.us.ph = phi i64 [ %.0134310.us.us, %.lr.ph303.split.us316.us.preheader ], [ %i.dl, %middle.block403 ]
  br label %.lr.ph303.split.us316.us

.lr.ph303.split.us316.us:                         ; preds = %.lr.ph303.split.us316.us.preheader406, %.lr.ph303.split.us316.us
  %.0131301.us314.us = phi i64 [ %i.fe, %.lr.ph303.split.us316.us ], [ %.0131301.us314.us.ph, %.lr.ph303.split.us316.us.preheader406 ] ; 2 uses
  %i.fa = mul nsw i64 %.0131301.us314.us, %6
  %i.fb = getelementptr [8 x i8], ptr %i.eo, i64 %i.fa ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !378
  %i.fd = fmul double %i.en, %i.fc
  store double %i.fd, ptr %i.fb, align 8, !tbaa !378
  %i.fe = add nuw nsw i64 %.0131301.us314.us, 1   ; 2 uses
  %i.ff = icmp slt i64 %i.fe, %i.dd
  br i1 %i.ff, label %.lr.ph303.split.us316.us, label %._crit_edge304.us.us, !llvm.loop !1218

._crit_edge.split.us.us:                          ; preds = %._crit_edge304.us.us, %bb.x
  %i.fg = sub nsw i64 %i.dv, %.sroa.speculated210.us.us ; 5 uses
  %i.fh = add i64 %.0133306.us.us, %.sroa.speculated210.us.us
  %i.fi = sub i64 %.0135326.us, %i.fh             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.fi
  store ptr %gep.us.us, ptr %11, align 8
  store i64 %6, ptr %i.ax, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.sroa.speculated210.us.us, i64 noundef %.sroa.speculated216.us.us, i64 noundef %smin, i64 noundef %i.fg)
          to label %bb.y unwind label %.split.us.split.us

bb.y:                                             ; preds = %._crit_edge.split.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %i.fj = icmp sgt i64 %i.fg, 0
  br i1 %i.fj, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.fk = mul nsw i64 %i.fi, %3
  %i.fl = getelementptr [8 x i8], ptr %i.cc, i64 %i.fk
  store ptr %i.fl, ptr %12, align 8
  store i64 %3, ptr %i.ay, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %.sroa.speculated210.us.us, i64 noundef %i.fg, i64 noundef 0, i64 noundef 0)
          to label %bb.aa unwind label %.split320.us.split.us

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  store ptr %i.di, ptr %13, align 8
  store i64 %6, ptr %i.az, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.r, ptr noundef nonnull %i.dg, i64 noundef %i.fg, i64 noundef %.sroa.speculated210.us.us, i64 noundef %.sroa.speculated216.us.us, double noundef -1.000000e+00, i64 noundef %.sroa.speculated210.us.us, i64 noundef %smin, i64 noundef 0, i64 noundef %i.fg)
          to label %bb.ab unwind label %.split323.us.split.us

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %i.fm = add nuw nsw i64 %.0133306.us.us, 4      ; 2 uses
  %i.fn = icmp slt i64 %i.fm, %smin
  %indvars.iv.next = add i64 %indvars.iv, -4
  %indvar.next380 = add i64 %indvar379, 1
  br i1 %i.fn, label %bb.x, label %._crit_edge309.us.us, !llvm.loop !1219

._crit_edge304.us.us:                             ; preds = %.lr.ph303.split.us316.us, %._crit_edge.us.us.us, %middle.block403
  %i.fo = add nuw nsw i64 %.0132305.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.fo, %i.du
  br i1 %exitcond.not, label %._crit_edge.split.us.us, label %.lr.ph303.us.us, !llvm.loop !1220

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.us.us.us
  %.0131301.us.us.us = phi i64 [ %i.gj, %._crit_edge.us.us.us ], [ %.0134310.us.us, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.fp = mul nsw i64 %.0131301.us.us.us, %6      ; 2 uses
  %i.fq = getelementptr [8 x i8], ptr %i.eo, i64 %i.fp ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !378
  %i.fs = fmul double %i.en, %i.fr                ; 2 uses
  store double %i.fs, ptr %i.fq, align 8, !tbaa !378
  %i.ft = getelementptr [8 x i8], ptr %i.ep, i64 %i.fp ; 2 uses
  %i.fu = fneg double %i.fs                       ; 2 uses
  %brmerge409 = select i1 %min.iters.check, i1 true, i1 %i.et
  br i1 %brmerge409, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fu, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %index ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %wide.load = load <2 x double>, ptr %i.fv, align 8, !tbaa !378, !alias.scope !1221
  %wide.load387 = load <2 x double>, ptr %i.fw, align 8, !tbaa !378, !alias.scope !1221
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %index ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %wide.load388 = load <2 x double>, ptr %i.fx, align 8, !tbaa !378, !alias.scope !1224, !noalias !1221
end_hunk_2
begin_hunk_3_@_ZN5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE7computeIS2_EERS3_RKNS_9EigenBaseIT_EE:bb.a

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit: ; preds = %.lr.ph85.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i, %bb.q, %bb.r
  %.0.i.i.i = phi double [ %i.fe, %bb.r ], [ %i.dx, %bb.q ], [ %.lcssa77.unr, %.lr.ph85.i.i.i.i.i.prol.loopexit ], [ %i.fb, %.lr.ph85.i.i.i.i.i ]
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.050 ; 6 uses
  %i.fg = icmp eq i64 %.050, 0
  br i1 %i.fg, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit, label %bb.s

bb.s:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit
  %i.fh = load double, ptr %i.ff, align 8, !tbaa !378
  %i.fi = tail call noundef double @llvm.fabs.f64(double %i.fh) ; 3 uses
  %.not = icmp eq i64 %.050, 1
  br i1 %.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit, label %.lr.ph.i.i.i.i.i18.preheader

.lr.ph.i.i.i.i.i18.preheader:                     ; preds = %bb.s
  %xtraiter83 = and i64 %i.cp, 3                  ; 3 uses
  %i.fj = icmp ult i64 %i.cq, 3
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i18.epil.preheader, label %.lr.ph.i.i.i.i.i18.preheader.new

.lr.ph.i.i.i.i.i18.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i18.preheader
  %unroll_iter = and i64 %i.cp, -4
  br label %.lr.ph.i.i.i.i.i18

.lr.ph.i.i.i.i.i18:                               ; preds = %.lr.ph.i.i.i.i.i18, %.lr.ph.i.i.i.i.i18.preheader.new
  %.01724.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i18.preheader.new ], [ %i.gh, %.lr.ph.i.i.i.i.i18 ] ; 5 uses
  %.02223.i.i.i.i.i = phi double [ %i.fi, %.lr.ph.i.i.i.i.i18.preheader.new ], [ %i.gg, %.lr.ph.i.i.i.i.i18 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i18.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i18 ]
  %i.fk = mul nsw i64 %.01724.i.i.i.i.i, %i.bo
  %i.fl = getelementptr [8 x i8], ptr %i.ff, i64 %i.fk
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !378
  %i.fn = tail call noundef double @llvm.fabs.f64(double %i.fm)
  %i.fo = fadd double %.02223.i.i.i.i.i, %i.fn
  %i.fp = add nuw nsw i64 %.01724.i.i.i.i.i, 1
  %i.fq = mul nsw i64 %i.fp, %i.bo
  %i.fr = getelementptr [8 x i8], ptr %i.ff, i64 %i.fq
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !378
  %i.ft = tail call noundef double @llvm.fabs.f64(double %i.fs)
  %i.fu = fadd double %i.fo, %i.ft
  %i.fv = add nuw nsw i64 %.01724.i.i.i.i.i, 2
  %i.fw = mul nsw i64 %i.fv, %i.bo
  %i.fx = getelementptr [8 x i8], ptr %i.ff, i64 %i.fw
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !378
  %i.fz = tail call noundef double @llvm.fabs.f64(double %i.fy)
  %i.ga = fadd double %i.fu, %i.fz
  %i.gb = add nuw nsw i64 %.01724.i.i.i.i.i, 3
  %i.gc = mul nsw i64 %i.gb, %i.bo
  %i.gd = getelementptr [8 x i8], ptr %i.ff, i64 %i.gc
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !378
  %i.gf = tail call noundef double @llvm.fabs.f64(double %i.ge)
  %i.gg = fadd double %i.ga, %i.gf                ; 3 uses
  %i.gh = add nuw nsw i64 %.01724.i.i.i.i.i, 4    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i18, !llvm.loop !1485

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i18
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit, label %.lr.ph.i.i.i.i.i18.epil.preheader

.lr.ph.i.i.i.i.i18.epil.preheader:                ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i18.preheader
  %.01724.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i18.preheader ], [ %i.gh, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.epil.init = phi double [ %i.fi, %.lr.ph.i.i.i.i.i18.preheader ], [ %i.gg, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa ]
  %lcmp.mod86 = icmp ne i64 %xtraiter83, 0
  tail call void @llvm.assume(i1 %lcmp.mod86)
  br label %.lr.ph.i.i.i.i.i18.epil

.lr.ph.i.i.i.i.i18.epil:                          ; preds = %.lr.ph.i.i.i.i.i18.epil, %.lr.ph.i.i.i.i.i18.epil.preheader
  %.01724.i.i.i.i.i.epil = phi i64 [ %i.gn, %.lr.ph.i.i.i.i.i18.epil ], [ %.01724.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i18.epil.preheader ] ; 2 uses
  %.02223.i.i.i.i.i.epil = phi double [ %i.gm, %.lr.ph.i.i.i.i.i18.epil ], [ %.02223.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i18.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i18.epil ], [ 0, %.lr.ph.i.i.i.i.i18.epil.preheader ]
  %i.gi = mul nsw i64 %.01724.i.i.i.i.i.epil, %i.bo
  %i.gj = getelementptr [8 x i8], ptr %i.ff, i64 %i.gi
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !378
  %i.gl = tail call noundef double @llvm.fabs.f64(double %i.gk)
  %i.gm = fadd double %.02223.i.i.i.i.i.epil, %i.gl ; 2 uses
  %i.gn = add nuw nsw i64 %.01724.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter83
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit, label %.lr.ph.i.i.i.i.i18.epil, !llvm.loop !1486

_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i18.epil, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit, %bb.s
  %.0.i.i.i17 = phi double [ 0.000000e+00, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE6lpNormILi1EEEdv.exit ], [ %i.fi, %bb.s ], [ %i.gg, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit.loopexit.unr-lcssa ], [ %i.gm, %.lr.ph.i.i.i.i.i18.epil ]
  %i.go = fadd double %.0.i.i.i, %.0.i.i.i17      ; 3 uses
  %i.gp = fcmp ogt double %i.go, %i.co
  br i1 %i.gp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit
  store double %i.go, ptr %i.bl, align 8, !tbaa !1477
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit
  %i.gq = phi double [ %i.go, %bb.t ], [ %i.co, %_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE6lpNormILi1EEEdv.exit ]
  %i.gr = add nuw nsw i64 %.050, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.gr, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !1487
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5Eigen8internal12ldlt_inplaceILi1EE9unblockedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14TranspositionsILin1ELin1EiEENS4_IdLin1ELi1ELi0ELin1ELi1EEEEEbRT_RT0_RT1_RNS0_10SignMatrixE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper.611", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !376  ; 10 uses
  %i.c = icmp slt i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = add nsw i64 %i.b, -1                     ; 2 uses
  %i.h = add nsw i64 %i.b, -2                     ; 2 uses
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !801  ; 5 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE11setIdentityEv.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !800    ; 2 uses
  %min.iters.check593 = icmp ult i64 %i.j, 8
  br i1 %min.iters.check593, label %scalar.ph592.preheader, label %vector.ph594

vector.ph594:                                     ; preds = %.lr.ph.i
  %n.vec595 = and i64 %i.j, 9223372036854775800   ; 3 uses
  br label %vector.body596

vector.body596:                                   ; preds = %vector.body596, %vector.ph594
  %index597 = phi i64 [ 0, %vector.ph594 ], [ %index.next598, %vector.body596 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph594 ], [ %vec.ind.next, %vector.body596 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index597 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> %vec.ind, ptr %i.m, align 4, !tbaa !32
  store <4 x i32> %step.add, ptr %i.n, align 4, !tbaa !32
  %index.next598 = add nuw i64 %index597, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.o = icmp eq i64 %index.next598, %n.vec595
  br i1 %i.o, label %middle.block599, label %vector.body596, !llvm.loop !1488

middle.block599:                                  ; preds = %vector.body596
  %cmp.n600 = icmp eq i64 %i.j, %n.vec595
  br i1 %cmp.n600, label %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE11setIdentityEv.exit, label %scalar.ph592.preheader

scalar.ph592.preheader:                           ; preds = %.lr.ph.i, %middle.block599
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec595, %middle.block599 ]
  br label %scalar.ph592

scalar.ph592:                                     ; preds = %scalar.ph592.preheader, %scalar.ph592
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph592 ], [ %indvars.iv.i.ph, %scalar.ph592.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.q = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.q, ptr %i.p, align 4, !tbaa !32
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.j
  br i1 %exitcond.not.i, label %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE11setIdentityEv.exit, label %scalar.ph592, !llvm.loop !1489

_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE11setIdentityEv.exit: ; preds = %scalar.ph592, %middle.block599, %bb.b
  %i.r = icmp eq i64 %i.b, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE11setIdentityEv.exit
  store i32 2, ptr %3, align 4, !tbaa !1490
  br label %.loopexit420

bb.d:                                             ; preds = %_ZN5Eigen18TranspositionsBaseINS_14TranspositionsILin1ELin1EiEEE11setIdentityEv.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !365
  %i.t = load double, ptr %i.s, align 8, !tbaa !378 ; 2 uses
  %i.u = fcmp ogt double %i.t, 0.000000e+00
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %3, align 4, !tbaa !1490
  br label %.loopexit420

bb.f:                                             ; preds = %bb.d
  %i.v = fcmp olt double %i.t, 0.000000e+00
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %3, align 4, !tbaa !1490
  br label %.loopexit420

bb.h:                                             ; preds = %bb.f
  store i32 2, ptr %3, align 4, !tbaa !1490
  br label %.loopexit420

bb.i:                                             ; preds = %bb.ae
  %exitcond433.not = icmp eq i64 %.pre-phi, %i.b
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond433.not, label %.thread410, label %bb.j, !llvm.loop !1491

bb.j:                                             ; preds = %.preheader, %bb.i
  %indvar = phi i64 [ 0, %.preheader ], [ %indvar.next, %bb.i ] ; 16 uses
  %.0116461 = phi i64 [ 0, %.preheader ], [ %.pre-phi, %bb.i ] ; 40 uses
  %.0118460 = phi i8 [ 1, %.preheader ], [ %.4, %bb.i ] ; 6 uses
  %.0120459 = phi i1 [ false, %.preheader ], [ %.2122, %bb.i ] ; 3 uses
  %.0123458 = phi i1 [ undef, %.preheader ], [ %.1124, %bb.i ] ; 8 uses
  %i.w = add nsw i64 %.0116461, -1                ; 2 uses
  %i.x = add nsw i64 %.0116461, -2
  %i.y = add nsw i64 %.0116461, -1                ; 2 uses
  %i.z = add nsw i64 %.0116461, -2
  %i.aa = sub i64 %i.g, %indvar                   ; 3 uses
  %i.ab = shl i64 %indvar, 4
  %i.ac = shl i64 %indvar, 3
  %i.ad = shl i64 %indvar, 3
  %i.ae = xor i64 %indvar, -1
  %i.af = add i64 %i.b, %i.ae
  %i.ag = shl i64 %indvar, 3                      ; 2 uses
  %i.ah = add i64 %i.ag, 8
  %i.ai = add nuw nsw i64 %.0116461, 1
  %i.aj = xor i64 %indvar, -1
  %i.ak = add nuw i64 %.0116461, 2
  %i.al = shl i64 %indvar, 4                      ; 2 uses
  %i.am = add nuw i64 %.0116461, 2
  %i.an = shl i64 %indvar, 3                      ; 2 uses
  %i.ao = shl i64 %indvar, 3
  %i.ap = shl i64 %indvar, 4
  %i.aq = sub nsw i64 %i.b, %.0116461             ; 3 uses
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !376, !noalias !1492 ; 14 uses
  %i.as = load i64, ptr %i.d, align 8, !tbaa !377, !noalias !1492
  %.sroa.speculated.i.i.i.i = call noundef i64 @llvm.smin.i64(i64 %i.as, i64 %i.ar)
  %i.at = sub nsw i64 %.sroa.speculated.i.i.i.i, %i.aq
  %i.au = load ptr, ptr %0, align 8, !tbaa !365, !noalias !1492 ; 13 uses
  %i.av = add nsw i64 %i.ar, 1                    ; 4 uses
  %i.aw = mul nsw i64 %i.at, %i.av
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.aw ; 4 uses
  %i.ay = icmp sgt i64 %i.aq, 1                   ; 4 uses
  br i1 %i.ay, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread: ; preds = %bb.j
  %i.az = trunc i64 %.0116461 to i32
  %i.ba = load ptr, ptr %1, align 8, !tbaa !800
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %.0116461
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !32
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.j
  %i.bc = load double, ptr %i.ax, align 8, !tbaa !378
  %i.bd = call noundef double @llvm.fabs.f64(double %i.bc) ; 2 uses
  %xtraiter = and i64 %i.aa, 1
  %i.be = icmp eq i64 %i.h, %indvar
  br i1 %i.be, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.aa, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02125.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.bt, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.bf = phi double [ %i.bd, %.lr.ph.i.i.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.bg = mul nsw i64 %.02125.i.i.i.i, %i.av
  %i.bh = getelementptr [8 x i8], ptr %i.ax, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !378
  %i.bj = call noundef double @llvm.fabs.f64(double %i.bi) ; 2 uses
  %i.bk = fcmp ogt double %i.bj, %i.bf            ; 2 uses
  %.sroa.0.1.i.i = select i1 %i.bk, i64 %.02125.i.i.i.i, i64 %.sroa.0.0.i.i
  %i.bl = select i1 %i.bk, double %i.bj, double %i.bf ; 2 uses
  %i.bm = add nuw nsw i64 %.02125.i.i.i.i, 1      ; 2 uses
  %i.bn = mul nsw i64 %i.bm, %i.av
  %i.bo = getelementptr [8 x i8], ptr %i.ax, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !378
  %i.bq = call noundef double @llvm.fabs.f64(double %i.bp) ; 2 uses
  %i.br = fcmp ogt double %i.bq, %i.bl            ; 2 uses
  %.sroa.0.1.i.i.1 = select i1 %i.br, i64 %i.bm, i64 %.sroa.0.1.i.i ; 3 uses
  %i.bs = select i1 %i.br, double %i.bq, double %i.bl ; 2 uses
  %i.bt = add nuw nsw i64 %.02125.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !1495

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02125.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.bt, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.bd, %.lr.ph.i.i.i.i.preheader ], [ %i.bs, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod616 = trunc i64 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod616)
  %i.bu = mul nsw i64 %.02125.i.i.i.i.epil.init, %i.av
  %i.bv = getelementptr [8 x i8], ptr %i.ax, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !378
  %i.bx = call noundef double @llvm.fabs.f64(double %i.bw)
  %i.by = fcmp ogt double %i.bx, %.epil.init
  %.sroa.0.1.i.i.epil = select i1 %i.by, i64 %.02125.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 7 uses
  %i.bz = add nuw i64 %.sroa.0.1.i.i.lcssa, %.0116461 ; 13 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = load ptr, ptr %1, align 8, !tbaa !800
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.0116461
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !32
  %.not = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge, label %bb.k

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge: ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %.pre = add nuw nsw i64 %.0116461, 1
  br label %.loopexit

bb.k:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.cd = xor i64 %i.bz, -1
  %i.ce = add i64 %i.b, %i.cd                     ; 6 uses
  %i.cf = getelementptr [8 x i8], ptr %i.au, i64 %.0116461 ; 5 uses
  %i.cg = getelementptr [8 x i8], ptr %i.au, i64 %i.bz ; 5 uses
  %.not414 = icmp eq i64 %.0116461, 0
  br i1 %.not414, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.k
  %min.iters.check578 = icmp ugt i64 %.0116461, 5
  %ident.check569.not = icmp eq i64 %i.ar, 1
  %or.cond602 = select i1 %min.iters.check578, i1 %ident.check569.not, i1 false
  br i1 %or.cond602, label %vector.memcheck570, label %.lr.ph.i.i.i.i.i.i.preheader609

vector.memcheck570:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep571 = getelementptr i8, ptr %i.au, i64 %i.ab
  %scevgep572 = getelementptr i8, ptr %i.au, i64 %i.ac
  %i.ch = shl i64 %i.bz, 3
  %scevgep573 = getelementptr i8, ptr %scevgep572, i64 %i.ch
  %bound0574 = icmp ult ptr %i.cf, %scevgep573
  %bound1575 = icmp ult ptr %i.cg, %scevgep571
  %found.conflict576 = and i1 %bound0574, %bound1575
  br i1 %found.conflict576, label %.lr.ph.i.i.i.i.i.i.preheader609, label %vector.ph579

vector.ph579:                                     ; preds = %vector.memcheck570
  %n.vec580 = and i64 %.0116461, -4               ; 3 uses
  br label %vector.body581

vector.body581:                                   ; preds = %vector.body581, %vector.ph579
  %index582 = phi i64 [ 0, %vector.ph579 ], [ %index.next587, %vector.body581 ] ; 3 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %index582 ; 3 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %index582 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %wide.load583 = load <2 x double>, ptr %i.ci, align 8, !tbaa !378, !alias.scope !1496, !noalias !1499
  %wide.load584 = load <2 x double>, ptr %i.ck, align 8, !tbaa !378, !alias.scope !1496, !noalias !1499
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %wide.load585 = load <2 x double>, ptr %i.cj, align 8, !tbaa !378, !alias.scope !1499
  %wide.load586 = load <2 x double>, ptr %i.cl, align 8, !tbaa !378, !alias.scope !1499
  store <2 x double> %wide.load585, ptr %i.ci, align 8, !tbaa !378, !alias.scope !1496, !noalias !1499
  store <2 x double> %wide.load586, ptr %i.ck, align 8, !tbaa !378, !alias.scope !1496, !noalias !1499
  store <2 x double> %wide.load583, ptr %i.cj, align 8, !tbaa !378, !alias.scope !1499
  store <2 x double> %wide.load584, ptr %i.cl, align 8, !tbaa !378, !alias.scope !1499
  %index.next587 = add nuw i64 %index582, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next587, %n.vec580
  br i1 %i.cm, label %middle.block588, label %vector.body581, !llvm.loop !1501

middle.block588:                                  ; preds = %vector.body581
  %cmp.n589 = icmp eq i64 %.0116461, %n.vec580
  br i1 %cmp.n589, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader609

.lr.ph.i.i.i.i.i.i.preheader609:                  ; preds = %vector.memcheck570, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block588
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck570 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec580, %middle.block588 ] ; 4 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter617 = and i64 %.0116461, 1
  %lcmp.mod618.not = icmp eq i64 %xtraiter617, 0
  br i1 %lcmp.mod618.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader609
  %i.cn = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.ar  ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.cn ; 2 uses
  %i.cq = load double, ptr %i.co, align 8, !tbaa !378
  %i.cr = load double, ptr %i.cp, align 8, !tbaa !378
  store double %i.cr, ptr %i.co, align 8, !tbaa !378
  store double %i.cq, ptr %i.cp, align 8, !tbaa !378
  %i.cs = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader609
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader609 ], [ %i.cs, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ct = icmp eq i64 %.0116461, %.neg
  br i1 %i.ct, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.cu = mul nsw i64 %.05.i.i.i.i.i.i, %i.ar     ; 2 uses
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.cu ; 2 uses
  %i.cx = load double, ptr %i.cv, align 8, !tbaa !378
  %i.cy = load double, ptr %i.cw, align 8, !tbaa !378
  store double %i.cy, ptr %i.cv, align 8, !tbaa !378
  store double %i.cx, ptr %i.cw, align 8, !tbaa !378
  %i.cz = add nuw nsw i64 %.05.i.i.i.i.i.i, 1
  %i.da = mul nsw i64 %i.cz, %i.ar                ; 2 uses
  %i.db = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.da ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cg, i64 %i.da ; 2 uses
  %i.dd = load double, ptr %i.db, align 8, !tbaa !378
  %i.de = load double, ptr %i.dc, align 8, !tbaa !378
  store double %i.de, ptr %i.db, align 8, !tbaa !378
  store double %i.dd, ptr %i.dc, align 8, !tbaa !378
  %i.df = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.df, %.0116461
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1502

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block588, %bb.k
  %i.dg = mul nsw i64 %i.ar, %.0116461
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.dg
  %i.di = sub nsw i64 %i.ar, %i.ce                ; 4 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.di ; 11 uses
  %i.dk = mul i64 %i.bz, %i.ar
  %i.dl = getelementptr [8 x i8], ptr %i.au, i64 %i.dk
  %i.dm = getelementptr [8 x i8], ptr %i.dl, i64 %i.di ; 10 uses
  %i.dn = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.do = and i64 %i.dn, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.l, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %i.dp = lshr exact i64 %i.dn, 3
  %i.dq = and i64 %i.dp, 1
  %i.dr = call i64 @llvm.smin.i64(i64 %i.dq, i64 %i.ce)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.l, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.dr, %bb.l ], [ %i.ce, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ] ; 13 uses
  %i.ds = sub nsw i64 %i.ce, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.dt = sdiv i64 %i.ds, 2                       ; 2 uses
  %i.du = shl nsw i64 %i.dt, 1                    ; 2 uses
  %i.dv = add nsw i64 %i.du, %.0.i.i.i.i.i.i.i    ; 6 uses
  %i.dw = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.dw, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check555 = icmp ult i64 %.0.i.i.i.i.i.i.i, 10
  br i1 %min.iters.check555, label %.lr.ph.i.i.i.i.i.i.i.preheader608, label %vector.memcheck546

vector.memcheck546:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.dx = mul i64 %i.ar, %i.ad
  %i.dy = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.dz = getelementptr i8, ptr %i.au, i64 %i.dx
  %scevgep547 = getelementptr i8, ptr %i.dz, i64 %i.dy
  %i.ea = shl i64 %i.di, 3                        ; 2 uses
  %scevgep548 = getelementptr i8, ptr %scevgep547, i64 %i.ea
  %scevgep549 = getelementptr i8, ptr %i.au, i64 %i.dy
  %i.eb = shl i64 %i.ar, 3
  %i.ec = mul i64 %i.eb, %i.bz
  %i.ed = getelementptr i8, ptr %scevgep549, i64 %i.ec
  %scevgep550 = getelementptr i8, ptr %i.ed, i64 %i.ea
  %bound0551 = icmp ult ptr %i.dj, %scevgep550
  %bound1552 = icmp ult ptr %i.dm, %scevgep548
  %found.conflict553 = and i1 %bound0551, %bound1552
  br i1 %found.conflict553, label %.lr.ph.i.i.i.i.i.i.i.preheader608, label %vector.ph556

vector.ph556:                                     ; preds = %vector.memcheck546
  %n.vec557 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body558

vector.body558:                                   ; preds = %vector.body558, %vector.ph556
  %index559 = phi i64 [ 0, %vector.ph556 ], [ %index.next564, %vector.body558 ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %index559 ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index559 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %wide.load560 = load <2 x double>, ptr %i.ee, align 8, !tbaa !378, !alias.scope !1503, !noalias !1506
  %wide.load561 = load <2 x double>, ptr %i.eg, align 8, !tbaa !378, !alias.scope !1503, !noalias !1506
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %wide.load562 = load <2 x double>, ptr %i.ef, align 8, !tbaa !378, !alias.scope !1506
  %wide.load563 = load <2 x double>, ptr %i.eh, align 8, !tbaa !378, !alias.scope !1506
  store <2 x double> %wide.load562, ptr %i.ee, align 8, !tbaa !378, !alias.scope !1503, !noalias !1506
  store <2 x double> %wide.load563, ptr %i.eg, align 8, !tbaa !378, !alias.scope !1503, !noalias !1506
  store <2 x double> %wide.load560, ptr %i.ef, align 8, !tbaa !378, !alias.scope !1506
  store <2 x double> %wide.load561, ptr %i.eh, align 8, !tbaa !378, !alias.scope !1506
  %index.next564 = add nuw i64 %index559, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next564, %n.vec557
  br i1 %i.ei, label %middle.block565, label %vector.body558, !llvm.loop !1508

middle.block565:                                  ; preds = %vector.body558
  %cmp.n566 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec557
  br i1 %cmp.n566, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader608

.lr.ph.i.i.i.i.i.i.i.preheader608:                ; preds = %vector.memcheck546, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block565
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck546 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec557, %middle.block565 ] ; 5 uses
  %.neg638 = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  %xtraiter619 = and i64 %.0.i.i.i.i.i.i.i, 1
  %lcmp.mod620.not = icmp eq i64 %xtraiter619, 0
  br i1 %lcmp.mod620.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader608
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.05.i.i.i.i.i.i.i.ph ; 2 uses
  %i.el = load double, ptr %i.ej, align 8, !tbaa !378
  %i.em = load double, ptr %i.ek, align 8, !tbaa !378
  store double %i.em, ptr %i.ej, align 8, !tbaa !378
  store double %i.el, ptr %i.ek, align 8, !tbaa !378
  %i.en = or disjoint i64 %.05.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader608
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader608 ], [ %i.en, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.eo = icmp eq i64 %.0.i.i.i.i.i.i.i, %.neg638
  br i1 %i.eo, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.ey, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.er = load double, ptr %i.ep, align 8, !tbaa !378
  %i.es = load double, ptr %i.eq, align 8, !tbaa !378
  store double %i.es, ptr %i.ep, align 8, !tbaa !378
  store double %i.er, ptr %i.eq, align 8, !tbaa !378
  %i.et = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.et ; 2 uses
  %i.ew = load double, ptr %i.eu, align 8, !tbaa !378
  %i.ex = load double, ptr %i.ev, align 8, !tbaa !378
  store double %i.ex, ptr %i.eu, align 8, !tbaa !378
  store double %i.ew, ptr %i.ev, align 8, !tbaa !378
  %i.ey = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ey, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1509

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block565, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.ez = icmp sgt i64 %i.ds, 1
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i.i134, label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i134, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.fa = icmp slt i64 %i.dv, %i.ce
  br i1 %i.fa, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fb = add i64 %.0.i.i.i.i.i.i.i, %i.du
  %i.fc = add i64 %i.fb, %.sroa.0.1.i.i.lcssa
  %i.fd = sub i64 %i.af, %i.fc                    ; 3 uses
  %min.iters.check533 = icmp ult i64 %i.fd, 18
  br i1 %min.iters.check533, label %.lr.ph.i17.i.i.i.i.i.i.preheader607, label %vector.memcheck522

vector.memcheck522:                               ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.fe = mul i64 %i.ar, %i.ag
  %i.ff = shl i64 %i.dt, 4                        ; 2 uses
  %i.fg = shl i64 %.0.i.i.i.i.i.i.i, 3            ; 2 uses
  %i.fh = getelementptr i8, ptr %i.au, i64 %i.fe
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.ff
  %scevgep523 = getelementptr i8, ptr %i.fi, i64 %i.fg
  %i.fj = shl i64 %i.di, 3                        ; 2 uses
  %scevgep524 = getelementptr i8, ptr %scevgep523, i64 %i.fj
  %i.fk = mul i64 %i.ar, %i.ah
  %scevgep525 = getelementptr i8, ptr %i.au, i64 %i.fk
  %i.fl = getelementptr i8, ptr %i.au, i64 %i.ff
  %scevgep526 = getelementptr i8, ptr %i.fl, i64 %i.fg
  %i.fm = shl i64 %i.ar, 3                        ; 2 uses
  %i.fn = mul i64 %i.fm, %i.bz
  %i.fo = getelementptr i8, ptr %scevgep526, i64 %i.fn
  %scevgep527 = getelementptr i8, ptr %i.fo, i64 %i.fj
  %i.fp = add nuw i64 %i.ai, %.sroa.0.1.i.i.lcssa
  %i.fq = mul i64 %i.fm, %i.fp
  %scevgep528 = getelementptr i8, ptr %i.au, i64 %i.fq
  %bound0529 = icmp ult ptr %scevgep524, %scevgep528
  %bound1530 = icmp ult ptr %scevgep527, %scevgep525
  %found.conflict531 = and i1 %bound0529, %bound1530
  br i1 %found.conflict531, label %.lr.ph.i17.i.i.i.i.i.i.preheader607, label %vector.ph534

vector.ph534:                                     ; preds = %vector.memcheck522
  %n.vec535 = and i64 %i.fd, -4                   ; 3 uses
  %i.fr = add i64 %i.dv, %n.vec535
  br label %vector.body536

vector.body536:                                   ; preds = %vector.body536, %vector.ph534
  %index537 = phi i64 [ 0, %vector.ph534 ], [ %index.next542, %vector.body536 ] ; 2 uses
  %i.fs = add i64 %i.dv, %index537                ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.fs ; 3 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.fs ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %wide.load538 = load <2 x double>, ptr %i.ft, align 8, !tbaa !378, !alias.scope !1510, !noalias !1513
  %wide.load539 = load <2 x double>, ptr %i.fv, align 8, !tbaa !378, !alias.scope !1510, !noalias !1513
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 2 uses
  %wide.load540 = load <2 x double>, ptr %i.fu, align 8, !tbaa !378, !alias.scope !1513
  %wide.load541 = load <2 x double>, ptr %i.fw, align 8, !tbaa !378, !alias.scope !1513
  store <2 x double> %wide.load540, ptr %i.ft, align 8, !tbaa !378, !alias.scope !1510, !noalias !1513
  store <2 x double> %wide.load541, ptr %i.fv, align 8, !tbaa !378, !alias.scope !1510, !noalias !1513
  store <2 x double> %wide.load538, ptr %i.fu, align 8, !tbaa !378, !alias.scope !1513
  store <2 x double> %wide.load539, ptr %i.fw, align 8, !tbaa !378, !alias.scope !1513
  %index.next542 = add nuw i64 %index537, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next542, %n.vec535
  br i1 %i.fx, label %middle.block543, label %vector.body536, !llvm.loop !1515

middle.block543:                                  ; preds = %vector.body536
  %cmp.n544 = icmp eq i64 %i.fd, %n.vec535
  br i1 %cmp.n544, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader607

.lr.ph.i17.i.i.i.i.i.i.preheader607:              ; preds = %vector.memcheck522, %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block543
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.dv, %vector.memcheck522 ], [ %i.dv, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.fr, %middle.block543 ] ; 6 uses
  %i.fy = add i64 %indvar, %.05.i18.i.i.i.i.i.i.ph
  %i.fz = add i64 %i.fy, %.sroa.0.1.i.i.lcssa
  %i.ga = sub i64 %i.g, %i.fz
  %i.gb = add i64 %indvar, %.05.i18.i.i.i.i.i.i.ph
  %i.gc = add i64 %i.gb, %.sroa.0.1.i.i.lcssa
  %xtraiter621 = and i64 %i.ga, 1
  %lcmp.mod622.not = icmp eq i64 %xtraiter621, 0
  br i1 %lcmp.mod622.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader607
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.gf = load double, ptr %i.gd, align 8, !tbaa !378
  %i.gg = load double, ptr %i.ge, align 8, !tbaa !378
  store double %i.gg, ptr %i.gd, align 8, !tbaa !378
  store double %i.gf, ptr %i.ge, align 8, !tbaa !378
  %i.gh = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader607
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader607 ], [ %i.gh, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.gi = icmp eq i64 %i.h, %i.gc
  br i1 %i.gi, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.gs, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.gl = load double, ptr %i.gj, align 8, !tbaa !378
  %i.gm = load double, ptr %i.gk, align 8, !tbaa !378
  store double %i.gm, ptr %i.gj, align 8, !tbaa !378
  store double %i.gl, ptr %i.gk, align 8, !tbaa !378
  %i.gn = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %i.gn ; 2 uses
  %i.gq = load double, ptr %i.go, align 8, !tbaa !378
  %i.gr = load double, ptr %i.gp, align 8, !tbaa !378
  store double %i.gr, ptr %i.go, align 8, !tbaa !378
  store double %i.gq, ptr %i.gp, align 8, !tbaa !378
  %i.gs = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.gs, %i.ce
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !1516

.lr.ph.i.i.i.i.i.i134:                            ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i134
  %.021.i.i.i.i.i.i = phi i64 [ %i.gx, %.lr.ph.i.i.i.i.i.i134 ], [ %.0.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEESB_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i ] ; 3 uses
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.dm, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gu = load <2 x double>, ptr %i.gt, align 1, !tbaa !17
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.gw = load <2 x double>, ptr %i.gv, align 16, !tbaa !17
  store <2 x double> %i.gw, ptr %i.gt, align 1, !tbaa !17
  store <2 x double> %i.gu, ptr %i.gv, align 16, !tbaa !17
  %i.gx = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.gy = icmp slt i64 %i.gx, %i.dv
  br i1 %i.gy, label %.lr.ph.i.i.i.i.i.i134, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1517

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block543, %._crit_edge.i.i.i.i.i.i
  %i.gz = load ptr, ptr %0, align 8, !tbaa !365   ; 7 uses
  %i.ha = load i64, ptr %i.a, align 8, !tbaa !376 ; 4 uses
  %i.hb = mul nsw i64 %i.ha, %.0116461            ; 2 uses
  %i.hc = getelementptr [8 x i8], ptr %i.gz, i64 %.0116461
  %i.hd = getelementptr [8 x i8], ptr %i.hc, i64 %i.hb ; 2 uses
  %i.he = mul nsw i64 %i.ha, %i.bz
  %i.hf = getelementptr [8 x i8], ptr %i.gz, i64 %i.bz ; 3 uses
  %i.hg = getelementptr [8 x i8], ptr %i.hf, i64 %i.he ; 2 uses
  %i.hh = load double, ptr %i.hd, align 8, !tbaa !378
  %i.hi = load double, ptr %i.hg, align 8, !tbaa !378
  store double %i.hi, ptr %i.hd, align 8, !tbaa !378
  store double %i.hh, ptr %i.hg, align 8, !tbaa !378
  %invariant.gep = getelementptr [8 x i8], ptr %i.gz, i64 %i.hb ; 2 uses
  %.0115424 = add nuw nsw i64 %.0116461, 1        ; 7 uses
  %.not453 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 1
  br i1 %.not453, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %smax507 = call i64 @llvm.smax.i64(i64 %i.ak, i64 %i.bz)
  %i.hj = add i64 %smax507, %i.aj                 ; 3 uses
  %min.iters.check509 = icmp ugt i64 %i.hj, 9
  %ident.check495.not = icmp eq i64 %i.ha, 1
  %or.cond603 = and i1 %min.iters.check509, %ident.check495.not
  br i1 %or.cond603, label %vector.memcheck496, label %.lr.ph.preheader606

vector.memcheck496:                               ; preds = %.lr.ph.preheader
  %i.hk = getelementptr i8, ptr %i.gz, i64 %i.al
  %scevgep497 = getelementptr i8, ptr %i.hk, i64 8
  %i.hl = getelementptr i8, ptr %i.gz, i64 %i.al
  %smax = call i64 @llvm.smax.i64(i64 %i.am, i64 %i.bz)
  %reass.sub = sub i64 %smax, %indvar
  %i.hm = shl i64 %reass.sub, 3                   ; 2 uses
  %scevgep499 = getelementptr i8, ptr %i.hl, i64 %i.hm
  %i.hn = getelementptr i8, ptr %i.gz, i64 %i.an
  %scevgep500 = getelementptr i8, ptr %i.hn, i64 8
  %i.ho = shl i64 %i.bz, 3                        ; 2 uses
  %scevgep501 = getelementptr i8, ptr %scevgep500, i64 %i.ho
  %i.hp = getelementptr i8, ptr %i.gz, i64 %i.an
  %i.hq = getelementptr i8, ptr %i.hp, i64 %i.hm
  %scevgep503 = getelementptr i8, ptr %i.hq, i64 %i.ho
  %bound0504 = icmp ult ptr %scevgep497, %scevgep503
  %bound1505 = icmp ult ptr %scevgep501, %scevgep499
  %found.conflict506 = and i1 %bound0504, %bound1505
  br i1 %found.conflict506, label %.lr.ph.preheader606, label %vector.ph510

vector.ph510:                                     ; preds = %vector.memcheck496
  %n.vec511 = and i64 %i.hj, -4                   ; 3 uses
  %i.hr = add i64 %.0115424, %n.vec511
  br label %vector.body512

vector.body512:                                   ; preds = %vector.body512, %vector.ph510
  %index513 = phi i64 [ 0, %vector.ph510 ], [ %index.next518, %vector.body512 ] ; 2 uses
  %i.hs = add nuw i64 %.0115424, %index513        ; 2 uses
  %i.ht = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.hs ; 3 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 16     ; 2 uses
  %wide.load514 = load <2 x double>, ptr %i.ht, align 8, !tbaa !378, !alias.scope !1518, !noalias !1521
  %wide.load515 = load <2 x double>, ptr %i.hu, align 8, !tbaa !378, !alias.scope !1518, !noalias !1521
  %i.hv = getelementptr [8 x i8], ptr %i.hf, i64 %i.hs ; 3 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 16     ; 2 uses
  %wide.load516 = load <2 x double>, ptr %i.hv, align 8, !tbaa !378, !alias.scope !1521
  %wide.load517 = load <2 x double>, ptr %i.hw, align 8, !tbaa !378, !alias.scope !1521
  store <2 x double> %wide.load516, ptr %i.ht, align 8, !tbaa !378, !alias.scope !1518, !noalias !1521
  store <2 x double> %wide.load517, ptr %i.hu, align 8, !tbaa !378, !alias.scope !1518, !noalias !1521
  store <2 x double> %wide.load514, ptr %i.hv, align 8, !tbaa !378, !alias.scope !1521
  store <2 x double> %wide.load515, ptr %i.hw, align 8, !tbaa !378, !alias.scope !1521
  %index.next518 = add nuw i64 %index513, 4       ; 2 uses
  %i.hx = icmp eq i64 %index.next518, %n.vec511
  br i1 %i.hx, label %middle.block519, label %vector.body512, !llvm.loop !1523

middle.block519:                                  ; preds = %vector.body512
  %cmp.n520 = icmp eq i64 %i.hj, %n.vec511
  br i1 %cmp.n520, label %.loopexit, label %.lr.ph.preheader606

.lr.ph.preheader606:                              ; preds = %vector.memcheck496, %.lr.ph.preheader, %middle.block519
  %.0115425.ph = phi i64 [ %.0115424, %vector.memcheck496 ], [ %.0115424, %.lr.ph.preheader ], [ %i.hr, %middle.block519 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader606, %.lr.ph
  %.0115425 = phi i64 [ %.0115, %.lr.ph ], [ %.0115425.ph, %.lr.ph.preheader606 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0115425 ; 2 uses
  %i.hy = load double, ptr %gep, align 8, !tbaa !378
  %i.hz = mul nsw i64 %.0115425, %i.ha
  %i.ia = getelementptr [8 x i8], ptr %i.hf, i64 %i.hz ; 2 uses
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !378
  store double %i.ib, ptr %gep, align 8, !tbaa !378
  store double %i.hy, ptr %i.ia, align 8, !tbaa !378
  %.0115 = add nuw nsw i64 %.0115425, 1           ; 2 uses
  %i.ic = icmp slt i64 %.0115, %i.bz
  br i1 %i.ic, label %.lr.ph, label %.loopexit, !llvm.loop !1524

.loopexit:                                        ; preds = %.lr.ph, %middle.block519, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit
  %.pre-phi = phi i64 [ %.pre, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_5BlockINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit..loopexit_crit_edge ], [ %.0115424, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEE4swapIS5_EEvRKNS0_IT_EE.exit ], [ %.0115424, %middle.block519 ], [ %.0115424, %.lr.ph ] ; 3 uses
  %i.id = add i64 %i.aq, -1                       ; 8 uses
  %i.ie = load ptr, ptr %0, align 8, !tbaa !365   ; 15 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.pre-phi ; 8 uses
  %i.ig = load i64, ptr %i.a, align 8, !tbaa !376 ; 17 uses
  %i.ih = mul nsw i64 %i.ig, %.0116461            ; 2 uses
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.if, i64 %i.ih ; 10 uses
  %i.ij = getelementptr [8 x i8], ptr %i.ie, i64 %.0116461 ; 12 uses
  %.not132 = icmp eq i64 %.0116461, 0
  br i1 %.not132, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_IS3_Lin1ELin1ELb0EEENS1_INS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.ik = load ptr, ptr %2, align 8, !tbaa !345, !noalias !1525 ; 20 uses
  %i.il = add nsw i64 %i.ig, 1                    ; 7 uses
  %min.iters.check484 = icmp ugt i64 %.0116461, 12
  %ident.check.not = icmp eq i64 %i.ig, 1
end_hunk_3
begin_hunk_4_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.2138", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.2138", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit
  %i.j = icmp eq i64 %i.l, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !1860

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2041 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 5 uses
  %.02140 = phi i64 [ %i.l, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.be, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = add nsw i64 %.02140, -1                  ; 3 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %storemerge2041, i64 -16 ; 3 uses
  %i.p = load i32, ptr %i.f, align 8, !tbaa !1823 ; 5 uses
  %i.q = load i32, ptr %i.n, align 8, !tbaa !1823 ; 5 uses
  %i.r = icmp slt i32 %i.p, %i.q
  %i.s = load i32, ptr %i.o, align 8, !tbaa !1823 ; 6 uses
  br i1 %i.r, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph42
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %0, align 8, !tbaa !32
  store i32 %i.q, ptr %0, align 8, !tbaa !32
  store i32 %i.u, ptr %i.n, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !1684
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !1684
  store ptr %i.x, ptr %i.g, align 8, !tbaa !1684
  store ptr %i.w, ptr %i.v, align 8, !tbaa !1684
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.y = icmp slt i32 %i.p, %i.s
  %i.z = load i32, ptr %0, align 8, !tbaa !32     ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.s, ptr %0, align 8, !tbaa !32
  store i32 %i.z, ptr %i.o, align 8, !tbaa !32
  %i.aa = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !1684
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !1684
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !1684
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !1684
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i32 %i.p, ptr %0, align 8, !tbaa !32
  store i32 %i.z, ptr %i.f, align 8, !tbaa !32
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !1684
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !1684
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !1684
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !1684
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph42
  %i.af = icmp slt i32 %i.p, %i.s
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %0, align 8, !tbaa !32
  store i32 %i.p, ptr %0, align 8, !tbaa !32
  store i32 %i.ag, ptr %i.f, align 8, !tbaa !32
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !1684
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !1684
  store ptr %i.ai, ptr %i.g, align 8, !tbaa !1684
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !1684
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp slt i32 %i.q, %i.s
  %i.ak = load i32, ptr %0, align 8, !tbaa !32    ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.s, ptr %0, align 8, !tbaa !32
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !32
  %i.al = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !1684
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !1684
  store ptr %i.an, ptr %i.g, align 8, !tbaa !1684
  store ptr %i.am, ptr %i.al, align 8, !tbaa !1684
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.q, ptr %0, align 8, !tbaa !32
  store i32 %i.ak, ptr %i.n, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !1684
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !1684
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !1684
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !1684
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader, %bb.o
  %.sroa.010.0.i.i = phi ptr [ %i.au, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge2041, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %i.ar = load i32, ptr %0, align 8, !tbaa !1823  ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i ], [ %i.au, %bb.m ] ; 9 uses
  %i.as = load i32, ptr %.sroa.010.1.i.i, align 8, !tbaa !1823 ; 2 uses
  %i.at = icmp slt i32 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.at, label %bb.m, label %.preheader.i.i, !llvm.loop !1861

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.av = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !1823 ; 2 uses
  %i.aw = icmp slt i32 %i.ar, %i.av
  br i1 %i.aw, label %.preheader.i.i, label %bb.n, !llvm.loop !1862

bb.n:                                             ; preds = %.preheader.i.i
  %i.ax = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ax, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %i.av, ptr %.sroa.010.1.i.i, align 4, !tbaa !32
  store i32 %i.as, ptr %.sroa.0.1.i.i, align 4, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !1684
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !1684
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !1684
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !1684
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i, !llvm.loop !1863

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2041, i64 noundef %i.l)
  %i.bc = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bd = sub i64 %i.bc, %i.a
  %i.be = ashr exact i64 %i.bd, 4                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 16
  br i1 %i.bf, label %bb.b, label %.loopexit, !llvm.loop !1860

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.09.021.i.idx = phi i64 [ %.sroa.09.021.i.add, %bb.d ], [ 16, %.lr.ph.i ] ; 3 uses
  %.pn20.i = phi ptr [ %.sroa.09.021.i.ptr, %bb.d ], [ %0, %.lr.ph.i ] ; 4 uses
  %.sroa.09.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.021.i.idx ; 6 uses
  %i.f = load i32, ptr %.sroa.09.021.i.ptr, align 8, !tbaa !1823 ; 5 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !1823
  %i.h = icmp slt i32 %i.f, %i.g
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8 ; 2 uses
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %i.i = add nuw nsw i64 %indvar, 1
  %i.j = lshr exact i64 %.sroa.09.021.i.idx, 4    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32 ; 2 uses
  %xtraiter62 = and i64 %i.i, 3                   ; 2 uses
  %lcmp.mod63.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod63.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.09.021.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter64 = phi i64 [ %prol.iter64.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.l = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !32
  store i32 %i.n, ptr %i.m, align 8, !tbaa !1823
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1684
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !1825
  %i.r = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter64.next = add i64 %prol.iter64, 1     ; 2 uses
  %prol.iter64.cmp.not = icmp eq i64 %prol.iter64.next, %xtraiter62
  br i1 %prol.iter64.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1864

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.09.021.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %indvar, 3
  br i1 %i.s, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.v = load i32, ptr %i.t, align 4, !tbaa !32
  store i32 %i.v, ptr %i.u, align 8, !tbaa !1823
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1684
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !1825
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !32
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !1823
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1684
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !1825
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !32
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !1823
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1684
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !1825
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.an = load i32, ptr %i.al, align 8, !tbaa !32
  store i32 %i.an, ptr %i.am, align 8, !tbaa !1823
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1684
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !1825
  %i.ar = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.as = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, !llvm.loop !1865

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i32 %i.f, ptr %0, align 8, !tbaa !1823
  store ptr %.sroa.48.0.copyload.i, ptr %i.e, align 8, !tbaa !1825
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.at = load i32, ptr %.pn20.i, align 8, !tbaa !1823 ; 2 uses
  %i.au = icmp slt i32 %i.f, %i.at
  br i1 %i.au, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.av = phi i32 [ %i.az, %.lr.ph.i.i ], [ %i.at, %bb.c ]
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.c ] ; 3 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.09.021.i.ptr, %bb.c ] ; 3 uses
  store i32 %i.av, ptr %.sroa.06.010.i.i, align 8, !tbaa !1823
  %i.aw = getelementptr inbounds i8, ptr %.sroa.06.010.i.i, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1684
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !1825
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -16 ; 2 uses
  %i.az = load i32, ptr %.sroa.0.0.i.i, align 8, !tbaa !1823 ; 2 uses
  %i.ba = icmp slt i32 %i.f, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, !llvm.loop !1866

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.09.021.i.ptr, %bb.c ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %i.f, ptr %.sroa.06.0.lcssa.i.i, align 8, !tbaa !1823
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 8
  store ptr %.sroa.48.0.copyload.i, ptr %i.bb, align 8, !tbaa !1825
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i
  %.sroa.09.021.i.add = add nuw nsw i64 %.sroa.09.021.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.09.021.i.add, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.b, !llvm.loop !1867

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit: ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.bc, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13
  %.sroa.0.07.i = phi ptr [ %i.bm, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13 ], [ %i.bc, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.55.0.copyload.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i, align 8
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.bd = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !1823 ; 2 uses
  %i.be = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bf = phi i32 [ %i.bj, %.lr.ph.i.i16 ], [ %i.bd, %.lr.ph.i12 ]
  %.sroa.0.011.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.06.010.i.i18 = phi ptr [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  store i32 %i.bf, ptr %.sroa.06.010.i.i18, align 8, !tbaa !1823
  %i.bg = getelementptr inbounds i8, ptr %.sroa.06.010.i.i18, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1684
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i18, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !1825
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17, i64 -16 ; 2 uses
  %i.bj = load i32, ptr %.sroa.0.0.i.i19, align 8, !tbaa !1823 ; 2 uses
  %i.bk = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, !llvm.loop !1866

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i14, align 8, !tbaa !1823
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i14, i64 8
  store ptr %.sroa.55.0.copyload.i.i, ptr %i.bl, align 8, !tbaa !1825
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bm, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12, !llvm.loop !1868

bb.e:                                             ; preds = %bb.a
  %i.bn = icmp eq ptr %0, %1
  br i1 %i.bn, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.e
  %.sroa.09.018.i21 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19.i22 = icmp eq ptr %.sroa.09.018.i21, %1
  br i1 %.not19.i22, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader.i20
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i23
  %.sroa.09.021.i24 = phi ptr [ %.sroa.09.018.i21, %.lr.ph.i23 ], [ %.sroa.09.0.i30, %bb.i ] ; 8 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i23 ], [ %.sroa.09.021.i24, %bb.i ] ; 4 uses
  %i.bp = load i32, ptr %.sroa.09.021.i24, align 8, !tbaa !1823 ; 5 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !1823
  %i.br = icmp slt i32 %i.bp, %i.bq
  %.sroa.48.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 24
  %.sroa.48.0.copyload.i27 = load ptr, ptr %.sroa.48.0..sroa_idx.i26, align 8 ; 2 uses
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = ptrtoint ptr %.sroa.09.021.i24 to i64
  %i.bt = sub i64 %i.bs, %i.b
  %i.bu = ashr exact i64 %i.bt, 4                 ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.preheader.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36

.lr.ph.i.i.i.i.i.preheader.i37:                   ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 32 ; 2 uses
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol

.lr.ph.i.i.i.i.i.i38.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i37, %.lr.ph.i.i.i.i.i.i38.prol
  %.010.i.i.i.i.i.i39.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %.069.i.i.i.i.i.i40.prol = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %.078.i.i.i.i.i.i41.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ], [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i38.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -16 ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -16 ; 3 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !32
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !1823
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1684
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !1825
  %i.cd = add nsw i64 %.010.i.i.i.i.i.i39.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol, !llvm.loop !1869

end_hunk_4
begin_hunk_5_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3059", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3059", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit
  %i.j = icmp eq i64 %i.l, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !2182

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2041 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 5 uses
  %.02140 = phi i64 [ %i.l, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.be, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = add nsw i64 %.02140, -1                  ; 3 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %storemerge2041, i64 -16 ; 3 uses
  %i.p = load i32, ptr %i.f, align 8, !tbaa !2148 ; 5 uses
  %i.q = load i32, ptr %i.n, align 8, !tbaa !2148 ; 5 uses
  %i.r = icmp slt i32 %i.p, %i.q
  %i.s = load i32, ptr %i.o, align 8, !tbaa !2148 ; 6 uses
  br i1 %i.r, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph42
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %0, align 8, !tbaa !32
  store i32 %i.q, ptr %0, align 8, !tbaa !32
  store i32 %i.u, ptr %i.n, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !2026
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !2026
  store ptr %i.x, ptr %i.g, align 8, !tbaa !2026
  store ptr %i.w, ptr %i.v, align 8, !tbaa !2026
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.y = icmp slt i32 %i.p, %i.s
  %i.z = load i32, ptr %0, align 8, !tbaa !32     ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.s, ptr %0, align 8, !tbaa !32
  store i32 %i.z, ptr %i.o, align 8, !tbaa !32
  %i.aa = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !2026
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !2026
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !2026
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !2026
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i32 %i.p, ptr %0, align 8, !tbaa !32
  store i32 %i.z, ptr %i.f, align 8, !tbaa !32
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !2026
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !2026
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !2026
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !2026
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph42
  %i.af = icmp slt i32 %i.p, %i.s
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %0, align 8, !tbaa !32
  store i32 %i.p, ptr %0, align 8, !tbaa !32
  store i32 %i.ag, ptr %i.f, align 8, !tbaa !32
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !2026
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !2026
  store ptr %i.ai, ptr %i.g, align 8, !tbaa !2026
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !2026
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp slt i32 %i.q, %i.s
  %i.ak = load i32, ptr %0, align 8, !tbaa !32    ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.s, ptr %0, align 8, !tbaa !32
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !32
  %i.al = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !2026
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !2026
  store ptr %i.an, ptr %i.g, align 8, !tbaa !2026
  store ptr %i.am, ptr %i.al, align 8, !tbaa !2026
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.q, ptr %0, align 8, !tbaa !32
  store i32 %i.ak, ptr %i.n, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !2026
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !2026
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !2026
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !2026
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader, %bb.o
  %.sroa.010.0.i.i = phi ptr [ %i.au, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge2041, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %i.ar = load i32, ptr %0, align 8, !tbaa !2148  ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i ], [ %i.au, %bb.m ] ; 9 uses
  %i.as = load i32, ptr %.sroa.010.1.i.i, align 8, !tbaa !2148 ; 2 uses
  %i.at = icmp slt i32 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.at, label %bb.m, label %.preheader.i.i, !llvm.loop !2183

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.av = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !2148 ; 2 uses
  %i.aw = icmp slt i32 %i.ar, %i.av
  br i1 %i.aw, label %.preheader.i.i, label %bb.n, !llvm.loop !2184

bb.n:                                             ; preds = %.preheader.i.i
  %i.ax = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ax, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %i.av, ptr %.sroa.010.1.i.i, align 4, !tbaa !32
  store i32 %i.as, ptr %.sroa.0.1.i.i, align 4, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !2026
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !2026
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !2026
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !2026
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i, !llvm.loop !2185

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2041, i64 noundef %i.l)
  %i.bc = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bd = sub i64 %i.bc, %i.a
  %i.be = ashr exact i64 %i.bd, 4                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 16
  br i1 %i.bf, label %bb.b, label %.loopexit, !llvm.loop !2182

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.09.021.i.idx = phi i64 [ %.sroa.09.021.i.add, %bb.d ], [ 16, %.lr.ph.i ] ; 3 uses
  %.pn20.i = phi ptr [ %.sroa.09.021.i.ptr, %bb.d ], [ %0, %.lr.ph.i ] ; 4 uses
  %.sroa.09.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.021.i.idx ; 6 uses
  %i.f = load i32, ptr %.sroa.09.021.i.ptr, align 8, !tbaa !2148 ; 5 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !2148
  %i.h = icmp slt i32 %i.f, %i.g
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8 ; 2 uses
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %i.i = add nuw nsw i64 %indvar, 1
  %i.j = lshr exact i64 %.sroa.09.021.i.idx, 4    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32 ; 2 uses
  %xtraiter62 = and i64 %i.i, 3                   ; 2 uses
  %lcmp.mod63.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod63.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.09.021.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter64 = phi i64 [ %prol.iter64.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.l = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !32
  store i32 %i.n, ptr %i.m, align 8, !tbaa !2148
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2026
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !2150
  %i.r = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter64.next = add i64 %prol.iter64, 1     ; 2 uses
  %prol.iter64.cmp.not = icmp eq i64 %prol.iter64.next, %xtraiter62
  br i1 %prol.iter64.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2186

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.09.021.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %indvar, 3
  br i1 %i.s, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.v = load i32, ptr %i.t, align 4, !tbaa !32
  store i32 %i.v, ptr %i.u, align 8, !tbaa !2148
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2026
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !2150
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !32
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !2148
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2026
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !2150
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !32
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !2148
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2026
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !2150
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.an = load i32, ptr %i.al, align 8, !tbaa !32
  store i32 %i.an, ptr %i.am, align 8, !tbaa !2148
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2026
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !2150
  %i.ar = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.as = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, !llvm.loop !2187

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i32 %i.f, ptr %0, align 8, !tbaa !2148
  store ptr %.sroa.48.0.copyload.i, ptr %i.e, align 8, !tbaa !2150
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.at = load i32, ptr %.pn20.i, align 8, !tbaa !2148 ; 2 uses
  %i.au = icmp slt i32 %i.f, %i.at
  br i1 %i.au, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.av = phi i32 [ %i.az, %.lr.ph.i.i ], [ %i.at, %bb.c ]
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.c ] ; 3 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.09.021.i.ptr, %bb.c ] ; 3 uses
  store i32 %i.av, ptr %.sroa.06.010.i.i, align 8, !tbaa !2148
  %i.aw = getelementptr inbounds i8, ptr %.sroa.06.010.i.i, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2026
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !2150
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -16 ; 2 uses
  %i.az = load i32, ptr %.sroa.0.0.i.i, align 8, !tbaa !2148 ; 2 uses
  %i.ba = icmp slt i32 %i.f, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, !llvm.loop !2188

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.09.021.i.ptr, %bb.c ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %i.f, ptr %.sroa.06.0.lcssa.i.i, align 8, !tbaa !2148
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 8
  store ptr %.sroa.48.0.copyload.i, ptr %i.bb, align 8, !tbaa !2150
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i
  %.sroa.09.021.i.add = add nuw nsw i64 %.sroa.09.021.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.09.021.i.add, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.b, !llvm.loop !2189

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit: ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.bc, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13
  %.sroa.0.07.i = phi ptr [ %i.bm, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13 ], [ %i.bc, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.55.0.copyload.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i, align 8
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.bd = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !2148 ; 2 uses
  %i.be = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bf = phi i32 [ %i.bj, %.lr.ph.i.i16 ], [ %i.bd, %.lr.ph.i12 ]
  %.sroa.0.011.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.06.010.i.i18 = phi ptr [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  store i32 %i.bf, ptr %.sroa.06.010.i.i18, align 8, !tbaa !2148
  %i.bg = getelementptr inbounds i8, ptr %.sroa.06.010.i.i18, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2026
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i18, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !2150
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17, i64 -16 ; 2 uses
  %i.bj = load i32, ptr %.sroa.0.0.i.i19, align 8, !tbaa !2148 ; 2 uses
  %i.bk = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, !llvm.loop !2188

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i14, align 8, !tbaa !2148
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i14, i64 8
  store ptr %.sroa.55.0.copyload.i.i, ptr %i.bl, align 8, !tbaa !2150
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bm, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12, !llvm.loop !2190

bb.e:                                             ; preds = %bb.a
  %i.bn = icmp eq ptr %0, %1
  br i1 %i.bn, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.e
  %.sroa.09.018.i21 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19.i22 = icmp eq ptr %.sroa.09.018.i21, %1
  br i1 %.not19.i22, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader.i20
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i23
  %.sroa.09.021.i24 = phi ptr [ %.sroa.09.018.i21, %.lr.ph.i23 ], [ %.sroa.09.0.i30, %bb.i ] ; 8 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i23 ], [ %.sroa.09.021.i24, %bb.i ] ; 4 uses
  %i.bp = load i32, ptr %.sroa.09.021.i24, align 8, !tbaa !2148 ; 5 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !2148
  %i.br = icmp slt i32 %i.bp, %i.bq
  %.sroa.48.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 24
  %.sroa.48.0.copyload.i27 = load ptr, ptr %.sroa.48.0..sroa_idx.i26, align 8 ; 2 uses
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = ptrtoint ptr %.sroa.09.021.i24 to i64
  %i.bt = sub i64 %i.bs, %i.b
  %i.bu = ashr exact i64 %i.bt, 4                 ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.preheader.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36

.lr.ph.i.i.i.i.i.preheader.i37:                   ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 32 ; 2 uses
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol

.lr.ph.i.i.i.i.i.i38.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i37, %.lr.ph.i.i.i.i.i.i38.prol
  %.010.i.i.i.i.i.i39.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %.069.i.i.i.i.i.i40.prol = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %.078.i.i.i.i.i.i41.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ], [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i38.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -16 ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -16 ; 3 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !32
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !2148
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2026
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !2150
  %i.cd = add nsw i64 %.010.i.i.i.i.i.i39.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol, !llvm.loop !2191

end_hunk_5
begin_hunk_6_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3802", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3802", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph42

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit
  %i.j = icmp eq i64 %i.l, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !2490

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph42:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2041 = phi ptr [ %.sroa.010.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 5 uses
  %.02140 = phi i64 [ %i.l, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.be, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = add nsw i64 %.02140, -1                  ; 3 uses
  %i.m = lshr i64 %i.k, 1
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %storemerge2041, i64 -16 ; 3 uses
  %i.p = load i32, ptr %i.f, align 8, !tbaa !2456 ; 5 uses
  %i.q = load i32, ptr %i.n, align 8, !tbaa !2456 ; 5 uses
  %i.r = icmp slt i32 %i.p, %i.q
  %i.s = load i32, ptr %i.o, align 8, !tbaa !2456 ; 6 uses
  br i1 %i.r, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph42
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %0, align 8, !tbaa !32
  store i32 %i.q, ptr %0, align 8, !tbaa !32
  store i32 %i.u, ptr %i.n, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !2343
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !2343
  store ptr %i.x, ptr %i.g, align 8, !tbaa !2343
  store ptr %i.w, ptr %i.v, align 8, !tbaa !2343
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.y = icmp slt i32 %i.p, %i.s
  %i.z = load i32, ptr %0, align 8, !tbaa !32     ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.s, ptr %0, align 8, !tbaa !32
  store i32 %i.z, ptr %i.o, align 8, !tbaa !32
  %i.aa = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !2343
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !2343
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !2343
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !2343
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i32 %i.p, ptr %0, align 8, !tbaa !32
  store i32 %i.z, ptr %i.f, align 8, !tbaa !32
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !2343
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !2343
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !2343
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !2343
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph42
  %i.af = icmp slt i32 %i.p, %i.s
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %0, align 8, !tbaa !32
  store i32 %i.p, ptr %0, align 8, !tbaa !32
  store i32 %i.ag, ptr %i.f, align 8, !tbaa !32
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !2343
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !2343
  store ptr %i.ai, ptr %i.g, align 8, !tbaa !2343
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !2343
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp slt i32 %i.q, %i.s
  %i.ak = load i32, ptr %0, align 8, !tbaa !32    ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.s, ptr %0, align 8, !tbaa !32
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !32
  %i.al = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !2343
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !2343
  store ptr %i.an, ptr %i.g, align 8, !tbaa !2343
  store ptr %i.am, ptr %i.al, align 8, !tbaa !2343
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.q, ptr %0, align 8, !tbaa !32
  store i32 %i.ak, ptr %i.n, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !2343
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !2343
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !2343
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !2343
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader, %bb.o
  %.sroa.010.0.i.i = phi ptr [ %i.au, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge2041, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %i.ar = load i32, ptr %0, align 8, !tbaa !2456  ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i ], [ %i.au, %bb.m ] ; 9 uses
  %i.as = load i32, ptr %.sroa.010.1.i.i, align 8, !tbaa !2456 ; 2 uses
  %i.at = icmp slt i32 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.at, label %bb.m, label %.preheader.i.i, !llvm.loop !2491

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.av = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !2456 ; 2 uses
  %i.aw = icmp slt i32 %i.ar, %i.av
  br i1 %i.aw, label %.preheader.i.i, label %bb.n, !llvm.loop !2492

bb.n:                                             ; preds = %.preheader.i.i
  %i.ax = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ax, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %i.av, ptr %.sroa.010.1.i.i, align 4, !tbaa !32
  store i32 %i.as, ptr %.sroa.0.1.i.i, align 4, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !2343
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !2343
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !2343
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !2343
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i, !llvm.loop !2493

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2041, i64 noundef %i.l)
  %i.bc = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bd = sub i64 %i.bc, %i.a
  %i.be = ashr exact i64 %i.bd, 4                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 16
  br i1 %i.bf, label %bb.b, label %.loopexit, !llvm.loop !2490

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 256
  br i1 %i.d, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.09.021.i.idx = phi i64 [ %.sroa.09.021.i.add, %bb.d ], [ 16, %.lr.ph.i ] ; 3 uses
  %.pn20.i = phi ptr [ %.sroa.09.021.i.ptr, %bb.d ], [ %0, %.lr.ph.i ] ; 4 uses
  %.sroa.09.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.021.i.idx ; 6 uses
  %i.f = load i32, ptr %.sroa.09.021.i.ptr, align 8, !tbaa !2456 ; 5 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !2456
  %i.h = icmp slt i32 %i.f, %i.g
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8 ; 2 uses
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %i.i = add nuw nsw i64 %indvar, 1
  %i.j = lshr exact i64 %.sroa.09.021.i.idx, 4    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32 ; 2 uses
  %xtraiter62 = and i64 %i.i, 3                   ; 2 uses
  %lcmp.mod63.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod63.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.k, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.09.021.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter64 = phi i64 [ %prol.iter64.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.l = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !32
  store i32 %i.n, ptr %i.m, align 8, !tbaa !2456
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2343
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !2458
  %i.r = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter64.next = add i64 %prol.iter64, 1     ; 2 uses
  %prol.iter64.cmp.not = icmp eq i64 %prol.iter64.next, %xtraiter62
  br i1 %prol.iter64.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2494

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.m, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.09.021.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.l, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.s = icmp ult i64 %indvar, 3
  br i1 %i.s, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.v = load i32, ptr %i.t, align 4, !tbaa !32
  store i32 %i.v, ptr %i.u, align 8, !tbaa !2456
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2343
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !2458
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !32
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !2456
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2343
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !2458
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !32
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !2456
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2343
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !2458
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.an = load i32, ptr %i.al, align 8, !tbaa !32
  store i32 %i.an, ptr %i.am, align 8, !tbaa !2456
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2343
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !2458
  %i.ar = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.as = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, !llvm.loop !2495

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i32 %i.f, ptr %0, align 8, !tbaa !2456
  store ptr %.sroa.48.0.copyload.i, ptr %i.e, align 8, !tbaa !2458
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.at = load i32, ptr %.pn20.i, align 8, !tbaa !2456 ; 2 uses
  %i.au = icmp slt i32 %i.f, %i.at
  br i1 %i.au, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.av = phi i32 [ %i.az, %.lr.ph.i.i ], [ %i.at, %bb.c ]
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.c ] ; 3 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.09.021.i.ptr, %bb.c ] ; 3 uses
  store i32 %i.av, ptr %.sroa.06.010.i.i, align 8, !tbaa !2456
  %i.aw = getelementptr inbounds i8, ptr %.sroa.06.010.i.i, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2343
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !2458
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -16 ; 2 uses
  %i.az = load i32, ptr %.sroa.0.0.i.i, align 8, !tbaa !2456 ; 2 uses
  %i.ba = icmp slt i32 %i.f, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, !llvm.loop !2496

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.09.021.i.ptr, %bb.c ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %i.f, ptr %.sroa.06.0.lcssa.i.i, align 8, !tbaa !2456
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 8
  store ptr %.sroa.48.0.copyload.i, ptr %i.bb, align 8, !tbaa !2458
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i
  %.sroa.09.021.i.add = add nuw nsw i64 %.sroa.09.021.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.09.021.i.add, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.b, !llvm.loop !2497

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit: ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.bc, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13
  %.sroa.0.07.i = phi ptr [ %i.bm, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13 ], [ %i.bc, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.55.0.copyload.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i, align 8
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.bd = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !2456 ; 2 uses
  %i.be = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bf = phi i32 [ %i.bj, %.lr.ph.i.i16 ], [ %i.bd, %.lr.ph.i12 ]
  %.sroa.0.011.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.06.010.i.i18 = phi ptr [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  store i32 %i.bf, ptr %.sroa.06.010.i.i18, align 8, !tbaa !2456
  %i.bg = getelementptr inbounds i8, ptr %.sroa.06.010.i.i18, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2343
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i18, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !2458
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17, i64 -16 ; 2 uses
  %i.bj = load i32, ptr %.sroa.0.0.i.i19, align 8, !tbaa !2456 ; 2 uses
  %i.bk = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, !llvm.loop !2496

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i14, align 8, !tbaa !2456
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i14, i64 8
  store ptr %.sroa.55.0.copyload.i.i, ptr %i.bl, align 8, !tbaa !2458
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bm, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12, !llvm.loop !2498

bb.e:                                             ; preds = %bb.a
  %i.bn = icmp eq ptr %0, %1
  br i1 %i.bn, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.e
  %.sroa.09.018.i21 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19.i22 = icmp eq ptr %.sroa.09.018.i21, %1
  br i1 %.not19.i22, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader.i20
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i23
  %.sroa.09.021.i24 = phi ptr [ %.sroa.09.018.i21, %.lr.ph.i23 ], [ %.sroa.09.0.i30, %bb.i ] ; 8 uses
  %.pn20.i25 = phi ptr [ %0, %.lr.ph.i23 ], [ %.sroa.09.021.i24, %bb.i ] ; 4 uses
  %i.bp = load i32, ptr %.sroa.09.021.i24, align 8, !tbaa !2456 ; 5 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !2456
  %i.br = icmp slt i32 %i.bp, %i.bq
  %.sroa.48.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 24
  %.sroa.48.0.copyload.i27 = load ptr, ptr %.sroa.48.0..sroa_idx.i26, align 8 ; 2 uses
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = ptrtoint ptr %.sroa.09.021.i24 to i64
  %i.bt = sub i64 %i.bs, %i.b
  %i.bu = ashr exact i64 %i.bt, 4                 ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.preheader.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36

.lr.ph.i.i.i.i.i.preheader.i37:                   ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 32 ; 2 uses
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol

.lr.ph.i.i.i.i.i.i38.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i37, %.lr.ph.i.i.i.i.i.i38.prol
  %.010.i.i.i.i.i.i39.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %.069.i.i.i.i.i.i40.prol = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bw, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %.078.i.i.i.i.i.i41.prol = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i38.prol ], [ %.sroa.09.021.i24, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i38.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -16 ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -16 ; 3 uses
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !32
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !2456
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2343
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !2458
  %i.cd = add nsw i64 %.010.i.i.i.i.i.i39.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol, !llvm.loop !2499

end_hunk_6
