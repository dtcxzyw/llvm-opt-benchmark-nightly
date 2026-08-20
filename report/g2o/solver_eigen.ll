inline.NumInlined: 23967
inline.NumDeleted: 11511
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 155
loop-unroll.NumUnrolled: 180
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.520", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.520", align 1 ; 3 uses
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
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !1055

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
  %i.p = load i32, ptr %i.f, align 8, !tbaa !1023 ; 5 uses
  %i.q = load i32, ptr %i.n, align 8, !tbaa !1023 ; 5 uses
  %i.r = icmp slt i32 %i.p, %i.q
  %i.s = load i32, ptr %i.o, align 8, !tbaa !1023 ; 6 uses
  br i1 %i.r, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph42
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %0, align 8, !tbaa !32
  store i32 %i.q, ptr %0, align 8, !tbaa !32
  store i32 %i.u, ptr %i.n, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !533
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !533
  store ptr %i.x, ptr %i.g, align 8, !tbaa !533
  store ptr %i.w, ptr %i.v, align 8, !tbaa !533
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.y = icmp slt i32 %i.p, %i.s
  %i.z = load i32, ptr %0, align 8, !tbaa !32     ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.s, ptr %0, align 8, !tbaa !32
  store i32 %i.z, ptr %i.o, align 8, !tbaa !32
  %i.aa = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !533
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !533
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !533
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !533
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i32 %i.p, ptr %0, align 8, !tbaa !32
  store i32 %i.z, ptr %i.f, align 8, !tbaa !32
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !533
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !533
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !533
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !533
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph42
  %i.af = icmp slt i32 %i.p, %i.s
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %0, align 8, !tbaa !32
  store i32 %i.p, ptr %0, align 8, !tbaa !32
  store i32 %i.ag, ptr %i.f, align 8, !tbaa !32
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !533
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !533
  store ptr %i.ai, ptr %i.g, align 8, !tbaa !533
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !533
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp slt i32 %i.q, %i.s
  %i.ak = load i32, ptr %0, align 8, !tbaa !32    ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.s, ptr %0, align 8, !tbaa !32
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !32
  %i.al = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !533
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !533
  store ptr %i.an, ptr %i.g, align 8, !tbaa !533
  store ptr %i.am, ptr %i.al, align 8, !tbaa !533
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.q, ptr %0, align 8, !tbaa !32
  store i32 %i.ak, ptr %i.n, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !533
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !533
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !533
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !533
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader, %bb.o
  %.sroa.010.0.i.i = phi ptr [ %i.au, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge2041, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %i.ar = load i32, ptr %0, align 8, !tbaa !1023  ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i ], [ %i.au, %bb.m ] ; 9 uses
  %i.as = load i32, ptr %.sroa.010.1.i.i, align 8, !tbaa !1023 ; 2 uses
  %i.at = icmp slt i32 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.at, label %bb.m, label %.preheader.i.i, !llvm.loop !1056

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.av = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !1023 ; 2 uses
  %i.aw = icmp slt i32 %i.ar, %i.av
  br i1 %i.aw, label %.preheader.i.i, label %bb.n, !llvm.loop !1057

bb.n:                                             ; preds = %.preheader.i.i
  %i.ax = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ax, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %i.av, ptr %.sroa.010.1.i.i, align 4, !tbaa !32
  store i32 %i.as, ptr %.sroa.0.1.i.i, align 4, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !533
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !533
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !533
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !533
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i, !llvm.loop !1058

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2041, i64 noundef %i.l)
  %i.bc = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bd = sub i64 %i.bc, %i.a
  %i.be = ashr exact i64 %i.bd, 4                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 16
  br i1 %i.bf, label %bb.b, label %.loopexit, !llvm.loop !1055

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
  %i.f = load i32, ptr %.sroa.09.021.i.ptr, align 8, !tbaa !1023 ; 5 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !1023
  %i.h = icmp slt i32 %i.f, %i.g
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8 ; 2 uses
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %i.i = add i64 %indvar, 1
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
  store i32 %i.n, ptr %i.m, align 8, !tbaa !1023
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !533
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !1025
  %i.r = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter64.next = add i64 %prol.iter64, 1     ; 2 uses
  %prol.iter64.cmp.not = icmp eq i64 %prol.iter64.next, %xtraiter62
  br i1 %prol.iter64.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !1059

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
  store i32 %i.v, ptr %i.u, align 8, !tbaa !1023
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !533
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !1025
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !32
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !1023
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !533
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !1025
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !32
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !1023
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !533
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !1025
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.an = load i32, ptr %i.al, align 8, !tbaa !32
  store i32 %i.an, ptr %i.am, align 8, !tbaa !1023
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !533
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !1025
  %i.ar = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.as = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, !llvm.loop !1060

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i32 %i.f, ptr %0, align 8, !tbaa !1023
  store ptr %.sroa.48.0.copyload.i, ptr %i.e, align 8, !tbaa !1025
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.at = load i32, ptr %.pn20.i, align 8, !tbaa !1023 ; 2 uses
  %i.au = icmp slt i32 %i.f, %i.at
  br i1 %i.au, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.av = phi i32 [ %i.az, %.lr.ph.i.i ], [ %i.at, %bb.c ]
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.c ] ; 3 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.09.021.i.ptr, %bb.c ] ; 3 uses
  store i32 %i.av, ptr %.sroa.06.010.i.i, align 8, !tbaa !1023
  %i.aw = getelementptr inbounds i8, ptr %.sroa.06.010.i.i, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !533
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !1025
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -16 ; 2 uses
  %i.az = load i32, ptr %.sroa.0.0.i.i, align 8, !tbaa !1023 ; 2 uses
  %i.ba = icmp slt i32 %i.f, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, !llvm.loop !1061

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.09.021.i.ptr, %bb.c ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %i.f, ptr %.sroa.06.0.lcssa.i.i, align 8, !tbaa !1023
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 8
  store ptr %.sroa.48.0.copyload.i, ptr %i.bb, align 8, !tbaa !1025
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i
  %.sroa.09.021.i.add = add nuw nsw i64 %.sroa.09.021.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.09.021.i.add, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.b, !llvm.loop !1062

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
  %i.bd = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !1023 ; 2 uses
  %i.be = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bf = phi i32 [ %i.bj, %.lr.ph.i.i16 ], [ %i.bd, %.lr.ph.i12 ]
  %.sroa.0.011.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.06.010.i.i18 = phi ptr [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  store i32 %i.bf, ptr %.sroa.06.010.i.i18, align 8, !tbaa !1023
  %i.bg = getelementptr inbounds i8, ptr %.sroa.06.010.i.i18, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !533
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i18, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !1025
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17, i64 -16 ; 2 uses
  %i.bj = load i32, ptr %.sroa.0.0.i.i19, align 8, !tbaa !1023 ; 2 uses
  %i.bk = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, !llvm.loop !1061

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i14, align 8, !tbaa !1023
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i14, i64 8
  store ptr %.sroa.55.0.copyload.i.i, ptr %i.bl, align 8, !tbaa !1025
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bm, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12, !llvm.loop !1063

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
  %i.bp = load i32, ptr %.sroa.09.021.i24, align 8, !tbaa !1023 ; 5 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !1023
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
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !1023
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !533
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !1025
  %i.cd = add nsw i64 %.010.i.i.i.i.i.i39.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol, !llvm.loop !1064

end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a
  %i.t = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.t, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.u = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.u, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
          to label %.noexc188 unwind label %bb.ae

.noexc188:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1273 ; 2 uses
  %.not155 = icmp eq ptr %i.w, null
  br i1 %.not155, label %bb.h, label %_ZN5Eigen8internal14aligned_mallocEm.exit192

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.x = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.y = icmp samesign ult i64 %i.f, 16385
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i64 %i.x, 15
  %i.aa = alloca i8, i64 %i.z, align 16           ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit192

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #43 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %_ZN5Eigen8internal14aligned_mallocEm.exit192

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
          to label %.noexc191 unwind label %bb.af

.noexc191:                                        ; preds = %bb.k
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit192:     ; preds = %bb.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.i
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.ah = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.p, !prof !35

bb.l:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit192
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #38
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #38
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #38
  br label %.body

bb.p:                                             ; preds = %bb.n, %bb.l, %_ZN5Eigen8internal14aligned_mallocEm.exit192
  %i.al = icmp sgt i64 %1, 0
  br i1 %i.al, label %bb.q, label %.thread.thread

bb.q:                                             ; preds = %bb.p
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !1274
  %.sroa.speculated273 = tail call i64 @llvm.smax.i64(i64 %6, i64 %0)
  %i.an = shl i64 %.sroa.speculated273, 5
  %.fr = freeze i64 %i.am
  %i.ao = udiv i64 %.fr, %i.an
  %i.ap = and i64 %i.ao, 576460752303423484       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp sgt i64 %0, 0
  %. = select i1 %i.aq, i64 4, i64 %i.ap          ; 5 uses
  br i1 %i.ar, label %.lr.ph312.us.preheader, label %._crit_edge

.thread.thread:                                   ; preds = %bb.p
  %i.as = icmp sgt i64 %0, 0
  br i1 %i.as, label %.lr.ph323.split.preheader, label %._crit_edge

.lr.ph323.split.preheader:                        ; preds = %.thread.thread
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.av = icmp slt i64 %i.b, %0
  br i1 %i.av, label %.lr.ph, label %._crit_edge

.lr.ph312.us.preheader:                           ; preds = %bb.q
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
  br label %.lr.ph312.us

.lr.ph312.us:                                     ; preds = %.loopexit.us, %.lr.ph312.us.preheader
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph312.us.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.us ], [ %0, %.lr.ph312.us.preheader ] ; 2 uses
  %.0132321.us = phi i64 [ %i.cf, %.loopexit.us ], [ 0, %.lr.ph312.us.preheader ] ; 4 uses
  %i.bn = mul i64 %i.bb, %indvar                  ; 3 uses
  %i.bo = mul i64 %i.bh, %indvar                  ; 4 uses
  %smin = call i64 @llvm.smin.i64(i64 %i.b, i64 %indvars.iv)
  %i.bp = sub nsw i64 %0, %.0132321.us
  %.sroa.speculated216.us = call i64 @llvm.smin.i64(i64 %i.b, i64 %i.bp) ; 8 uses
  %i.bq = icmp sgt i64 %.sroa.speculated216.us, 0
  br i1 %i.bq, label %.lr.ph306.us.us.preheader, label %._crit_edge313.us

.lr.ph306.us.us.preheader:                        ; preds = %.lr.ph312.us
  %i.br = getelementptr i8, ptr %4, i64 %i.bn
  %i.bs = getelementptr i8, ptr %4, i64 %i.bn
  %i.bt = getelementptr i8, ptr %2, i64 %i.bo
  %i.bu = getelementptr i8, ptr %i.bt, i64 8
  %invariant.gep387 = getelementptr i8, ptr %i.bu, i64 %i.bg
  %i.bv = getelementptr i8, ptr %2, i64 %i.bo
  %i.bw = getelementptr i8, ptr %4, i64 %i.bn
  %i.bx = getelementptr i8, ptr %2, i64 %i.bo
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %invariant.gep389 = getelementptr i8, ptr %i.by, i64 %i.bl
  %i.bz = getelementptr i8, ptr %2, i64 %i.bo
  br label %.lr.ph306.us.us

bb.r:                                             ; preds = %.lr.ph.us328, %bb.v
  %.0320.us = phi i64 [ %i.cf, %.lr.ph.us328 ], [ %i.cd, %bb.v ] ; 4 uses
  %i.ca = sub nsw i64 %0, %.0320.us
  %.sroa.speculated.us = call i64 @llvm.smin.i64(i64 %i.ca, i64 %.sroa.speculated241) ; 3 uses
  %i.cb = icmp sgt i64 %.sroa.speculated.us, 0
  br i1 %i.cb, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  %gep.us325 = getelementptr [8 x i8], ptr %invariant.gep.us329, i64 %.0320.us
  store ptr %gep.us325, ptr %14, align 8
  store i64 %3, ptr %i.az, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.sroa.speculated216.us, i64 noundef %.sroa.speculated.us, i64 noundef 0, i64 noundef 0)
          to label %bb.t unwind label %.split.us330

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.cc = getelementptr [8 x i8], ptr %4, i64 %.0320.us
  store ptr %i.cc, ptr %15, align 8
  store i64 %6, ptr %i.ba, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated.us, i64 noundef %.sroa.speculated216.us, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %.split332.us

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.cd = add nsw i64 %.0320.us, %.sroa.speculated241 ; 2 uses
  %i.ce = icmp slt i64 %i.cd, %0
  br i1 %i.ce, label %bb.r, label %.loopexit.us, !llvm.loop !1276

.loopexit.us:                                     ; preds = %bb.v
  %indvars.iv.next = sub i64 %indvars.iv, %i.b
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph312.us, !llvm.loop !1277

._crit_edge313.us:                                ; preds = %._crit_edge307.us.us, %.lr.ph312.us
  %i.cf = add nsw i64 %.0132321.us, %i.b          ; 3 uses
  %i.cg = icmp slt i64 %i.cf, %0
  br i1 %i.cg, label %.lr.ph.us328, label %._crit_edge

.lr.ph306.us.us:                                  ; preds = %.lr.ph306.us.us.preheader, %._crit_edge307.us.us
  %indvar373 = phi i64 [ %indvar.next374, %._crit_edge307.us.us ], [ 0, %.lr.ph306.us.us.preheader ] ; 3 uses
  %.0131310.us.us = phi i64 [ %i.gz, %._crit_edge307.us.us ], [ 0, %.lr.ph306.us.us.preheader ] ; 10 uses
  %i.ch = mul i64 %i.bd, %indvar373               ; 3 uses
  %i.ci = or disjoint i64 %.0131310.us.us, 1
  %i.cj = mul i64 %., %indvar373                  ; 2 uses
  %i.ck = sub i64 %1, %i.cj
  %smin377 = call i64 @llvm.smin.i64(i64 %., i64 %i.ck)
  %i.cl = add i64 %smin377, %.0131310.us.us
  %smax = call i64 @llvm.smax.i64(i64 %i.ci, i64 %i.cl)
  %i.cm = xor i64 %i.cj, -1
  %i.cn = add i64 %smax, %i.cm
  %i.co = mul i64 %i.be, %i.cn
  %i.cp = sub nsw i64 %1, %.0131310.us.us         ; 2 uses
  %.sroa.speculated211.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.cp) ; 3 uses
  %i.cq = add nsw i64 %.sroa.speculated211.us.us, %.0131310.us.us ; 3 uses
  %i.cr = icmp slt i64 %i.cp, 1
  %i.cs = mul nuw nsw i64 %.0131310.us.us, %.sroa.speculated216.us
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.cs ; 2 uses
  %i.cu = mul nsw i64 %.0131310.us.us, %6
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %4, i64 %i.cu ; 2 uses
  %i.cv = getelementptr i8, ptr %i.br, i64 %i.ch
  %i.cw = getelementptr i8, ptr %i.cv, i64 %i.co
  %i.cx = getelementptr i8, ptr %i.bs, i64 %i.ch
  %i.cy = getelementptr i8, ptr %i.bw, i64 %i.ch
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %.lr.ph306.us.us
  %indvar375 = phi i64 [ %indvar.next376, %bb.ab ], [ 0, %.lr.ph306.us.us ] ; 3 uses
  %indvars.iv339 = phi i64 [ %indvars.iv.next340, %bb.ab ], [ %smin, %.lr.ph306.us.us ] ; 4 uses
  %.0130304.us.us = phi i64 [ %i.ef, %bb.ab ], [ 0, %.lr.ph306.us.us ] ; 5 uses
  %i.cz = shl i64 %indvar375, 5                   ; 3 uses
  %scevgep378 = getelementptr i8, ptr %i.cw, i64 %i.cz
  %smin379 = call i64 @llvm.smin.i64(i64 %indvars.iv339, i64 4)
  %i.da = shl i64 %smin379, 3                     ; 3 uses
  %scevgep380 = getelementptr i8, ptr %scevgep378, i64 %i.da ; 2 uses
  %i.db = mul i64 %i.bj, %indvar375               ; 4 uses
  %i.dc = sub nsw i64 %.sroa.speculated216.us, %.0130304.us.us ; 6 uses
  %.sroa.speculated205.us.us = call i64 @llvm.smin.i64(i64 %i.dc, i64 4) ; 9 uses
  %i.dd = icmp slt i64 %i.dc, 1
  %i.de = add nsw i64 %.0130304.us.us, %.0132321.us ; 10 uses
  %brmerge = select i1 %i.dd, i1 true, i1 %i.cr
  br i1 %brmerge, label %._crit_edge303.split.us.us, label %.lr.ph298.us.us

.lr.ph298.us.us:                                  ; preds = %bb.w
  %i.df = add nsw i64 %.sroa.speculated205.us.us, -1
  %i.dg = add nsw i64 %i.de, 1                    ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %4, i64 %i.de
  %i.di = getelementptr [8 x i8], ptr %4, i64 %i.dg
  %i.dj = mul nsw i64 %i.de, %3
  %i.dk = getelementptr [8 x i8], ptr %2, i64 %i.dg
  %i.dl = getelementptr [8 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = icmp sgt i64 %i.dc, 1
  br i1 %i.dm, label %.lr.ph.us.us, label %._crit_edge299.split.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph298.us.us, %._crit_edge.us.us
  %.0128296.us.us = phi i64 [ %i.eh, %._crit_edge.us.us ], [ %.0131310.us.us, %.lr.ph298.us.us ] ; 2 uses
  %i.dn = mul nsw i64 %.0128296.us.us, %6         ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %i.dh, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !399
  %i.dq = getelementptr [8 x i8], ptr %i.di, i64 %i.dn
  %i.dr = fneg double %i.dp
  br label %scalar.ph

scalar.ph:                                        ; preds = %.lr.ph.us.us, %scalar.ph
  %.0127295.us.us = phi i64 [ %i.dx, %scalar.ph ], [ 0, %.lr.ph.us.us ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.0127295.us.us
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !399
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %.0127295.us.us ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !399
  %i.dw = call double @llvm.fmuladd.f64(double %i.dr, double %i.dt, double %i.dv)
  store double %i.dw, ptr %i.du, align 8, !tbaa !399
  %i.dx = add nuw nsw i64 %.0127295.us.us, 1      ; 2 uses
  %i.dy = icmp slt i64 %i.dx, %i.df
  br i1 %i.dy, label %scalar.ph, label %._crit_edge.us.us, !llvm.loop !1278

._crit_edge303.split.us.us:                       ; preds = %.lr.ph298.us.us.2, %._crit_edge.us.us.2, %._crit_edge299.split.us.us, %._crit_edge299.split.us.us.1, %bb.w
  %i.dz = sub nsw i64 %i.dc, %.sroa.speculated205.us.us ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.de
  store ptr %gep.us.us, ptr %11, align 8
  store i64 %6, ptr %i.aw, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.sroa.speculated205.us.us, i64 noundef %.sroa.speculated211.us.us, i64 noundef %.sroa.speculated216.us, i64 noundef %.0130304.us.us)
          to label %bb.x unwind label %.split.us.split.us

bb.x:                                             ; preds = %._crit_edge303.split.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  %i.ea = icmp sgt i64 %i.dz, 0
  br i1 %i.ea, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.eb = add nsw i64 %.sroa.speculated205.us.us, %i.de ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.ec = mul nsw i64 %i.de, %3
  %i.ed = getelementptr [8 x i8], ptr %2, i64 %i.eb
  %i.ee = getelementptr [8 x i8], ptr %i.ed, i64 %i.ec
  store ptr %i.ee, ptr %12, align 8
  store i64 %3, ptr %i.ax, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %.sroa.speculated205.us.us, i64 noundef %i.dz, i64 noundef 0, i64 noundef 0)
          to label %bb.z unwind label %.split315.us.split.us

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %gep309.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.eb
  store ptr %gep309.us.us, ptr %13, align 8
  store i64 %6, ptr %i.ay, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ct, i64 noundef %i.dz, i64 noundef %.sroa.speculated205.us.us, i64 noundef %.sroa.speculated211.us.us, double noundef -1.000000e+00, i64 noundef %.sroa.speculated205.us.us, i64 noundef %.sroa.speculated216.us, i64 noundef 0, i64 noundef %.0130304.us.us)
          to label %bb.aa unwind label %.split318.us.split.us

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %i.ef = add nuw nsw i64 %.0130304.us.us, 4      ; 2 uses
  %i.eg = icmp slt i64 %i.ef, %.sroa.speculated216.us
  %indvars.iv.next340 = add i64 %indvars.iv339, -4
  %indvar.next376 = add i64 %indvar375, 1
  br i1 %i.eg, label %bb.w, label %._crit_edge307.us.us, !llvm.loop !1279

._crit_edge.us.us:                                ; preds = %scalar.ph
  %i.eh = add nuw nsw i64 %.0128296.us.us, 1      ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.cq
  br i1 %i.ei, label %.lr.ph.us.us, label %._crit_edge299.split.us.us, !llvm.loop !1280

._crit_edge299.split.us.us:                       ; preds = %._crit_edge.us.us, %.lr.ph298.us.us
  %exitcond.not = icmp slt i64 %indvars.iv339, 2
  br i1 %exitcond.not, label %._crit_edge303.split.us.us, label %.lr.ph298.us.us.1

.lr.ph298.us.us.1:                                ; preds = %._crit_edge299.split.us.us
  %i.ej = getelementptr i8, ptr %i.cx, i64 %i.cz
  %scevgep.1 = getelementptr i8, ptr %i.ej, i64 16
  %gep388 = getelementptr i8, ptr %invariant.gep387, i64 %i.db
  %i.ek = getelementptr i8, ptr %i.bv, i64 %i.db
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.da
  %scevgep382.1 = getelementptr i8, ptr %i.el, i64 %i.bk
  %i.em = add nsw i64 %i.de, 1                    ; 2 uses
  %i.en = add nsw i64 %.sroa.speculated205.us.us, -2 ; 4 uses
  %i.eo = add nsw i64 %i.de, 2                    ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %4, i64 %i.em
  %i.eq = getelementptr [8 x i8], ptr %4, i64 %i.eo
  %i.er = mul nsw i64 %i.em, %3
  %i.es = getelementptr [8 x i8], ptr %2, i64 %i.eo
  %i.et = getelementptr [8 x i8], ptr %i.es, i64 %i.er ; 2 uses
  %i.eu = icmp sgt i64 %i.dc, 2
  br i1 %i.eu, label %.lr.ph.us.us.preheader.1, label %._crit_edge299.split.us.us.1

.lr.ph.us.us.preheader.1:                         ; preds = %.lr.ph298.us.us.1
  %min.iters.check.1 = icmp ult i64 %i.en, 4
  %bound0.1 = icmp ult ptr %scevgep.1, %scevgep382.1
  %bound1.1 = icmp ult ptr %gep388, %scevgep380
  %found.conflict.1 = and i1 %bound0.1, %bound1.1
  %i.ev = or i1 %found.conflict.1, %stride.check.1
  %n.vec.1 = and i64 %i.en, 9223372036854775804   ; 3 uses
  %cmp.n.1 = icmp eq i64 %i.en, %n.vec.1
  br label %.lr.ph.us.us.1

.lr.ph.us.us.1:                                   ; preds = %._crit_edge.us.us.1, %.lr.ph.us.us.preheader.1
  %.0128296.us.us.1 = phi i64 [ %i.fp, %._crit_edge.us.us.1 ], [ %.0131310.us.us, %.lr.ph.us.us.preheader.1 ] ; 2 uses
  %i.ew = mul nsw i64 %.0128296.us.us.1, %6       ; 2 uses
  %i.ex = getelementptr [8 x i8], ptr %i.ep, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !399
  %i.ez = getelementptr [8 x i8], ptr %i.eq, i64 %i.ew ; 2 uses
  %i.fa = fneg double %i.ey                       ; 2 uses
  %brmerge391 = select i1 %min.iters.check.1, i1 true, i1 %i.ev
  br i1 %brmerge391, label %scalar.ph.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %.lr.ph.us.us.1
  %broadcast.splatinsert.1 = insertelement <2 x double> poison, double %i.fa, i64 0
  %broadcast.splat.1 = shufflevector <2 x double> %broadcast.splatinsert.1, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %index.1 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load.1 = load <2 x double>, ptr %i.fb, align 8, !tbaa !399, !alias.scope !1281
  %wide.load383.1 = load <2 x double>, ptr %i.fc, align 8, !tbaa !399, !alias.scope !1281
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %index.1 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %wide.load384.1 = load <2 x double>, ptr %i.fd, align 8, !tbaa !399, !alias.scope !1284, !noalias !1281
  %wide.load385.1 = load <2 x double>, ptr %i.fe, align 8, !tbaa !399, !alias.scope !1284, !noalias !1281
  %i.ff = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.1, <2 x double> %wide.load.1, <2 x double> %wide.load384.1)
  %i.fg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat.1, <2 x double> %wide.load383.1, <2 x double> %wide.load385.1)
  store <2 x double> %i.ff, ptr %i.fd, align 8, !tbaa !399, !alias.scope !1284, !noalias !1281
  store <2 x double> %i.fg, ptr %i.fe, align 8, !tbaa !399, !alias.scope !1284, !noalias !1281
  %index.next.1 = add nuw i64 %index.1, 4         ; 2 uses
  %i.fh = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.fh, label %middle.block.1, label %vector.body.1, !llvm.loop !1286

middle.block.1:                                   ; preds = %vector.body.1
  br i1 %cmp.n.1, label %._crit_edge.us.us.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %.lr.ph.us.us.1, %middle.block.1
  %.0127295.us.us.ph.1 = phi i64 [ %n.vec.1, %middle.block.1 ], [ 0, %.lr.ph.us.us.1 ]
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.1, %scalar.ph.preheader.1
  %.0127295.us.us.1 = phi i64 [ %i.fn, %scalar.ph.1 ], [ %.0127295.us.us.ph.1, %scalar.ph.preheader.1 ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.0127295.us.us.1
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !399
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.0127295.us.us.1 ; 2 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !399
  %i.fm = call double @llvm.fmuladd.f64(double %i.fa, double %i.fj, double %i.fl)
  store double %i.fm, ptr %i.fk, align 8, !tbaa !399
  %i.fn = add nuw nsw i64 %.0127295.us.us.1, 1    ; 2 uses
  %i.fo = icmp slt i64 %i.fn, %i.en
  br i1 %i.fo, label %scalar.ph.1, label %._crit_edge.us.us.1, !llvm.loop !1278

._crit_edge.us.us.1:                              ; preds = %scalar.ph.1, %middle.block.1
  %i.fp = add nuw nsw i64 %.0128296.us.us.1, 1    ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi2ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1273 ; 2 uses
  %.not158 = icmp eq ptr %i.w, null
  br i1 %.not158, label %bb.h, label %_ZN5Eigen8internal14aligned_mallocEm.exit195

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.x = shl nuw i64 %i.f, 3                      ; 2 uses
  %i.y = icmp samesign ult i64 %i.f, 16385
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = add nuw nsw i64 %i.x, 15
  %i.aa = alloca i8, i64 %i.z, align 16           ; 2 uses
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit195

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call noalias ptr @malloc(i64 noundef %i.x) #43 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %_ZN5Eigen8internal14aligned_mallocEm.exit195

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
          to label %.noexc194 unwind label %bb.af

.noexc194:                                        ; preds = %bb.k
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit195:     ; preds = %bb.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.i
  %i.ae = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.aa, %bb.i ], [ %i.ab, %bb.j ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %i.f, 16384       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  %i.ah = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.p, !prof !35

bb.l:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit195
  %i.aj = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #38
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #38
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #38
  br label %.body

bb.p:                                             ; preds = %bb.n, %bb.l, %_ZN5Eigen8internal14aligned_mallocEm.exit195
  %i.al = icmp sgt i64 %1, 0
  br i1 %i.al, label %bb.q, label %.thread.thread

bb.q:                                             ; preds = %bb.p
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !1274
  %.sroa.speculated278 = tail call i64 @llvm.smax.i64(i64 %6, i64 %0)
  %i.an = shl i64 %.sroa.speculated278, 5
  %.fr = freeze i64 %i.am
  %i.ao = udiv i64 %.fr, %i.an
  %i.ap = and i64 %i.ao, 576460752303423484       ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = icmp sgt i64 %0, 0
  %. = select i1 %i.aq, i64 4, i64 %i.ap          ; 7 uses
  br i1 %i.ar, label %.lr.ph310.us.preheader, label %._crit_edge

.thread.thread:                                   ; preds = %bb.p
  %i.as = icmp sgt i64 %0, 0
  br i1 %i.as, label %.lr.ph326.split.preheader, label %._crit_edge

.lr.ph326.split.preheader:                        ; preds = %.thread.thread
  %i.at = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.av = sub nsw i64 %0, %i.b                    ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.lr.ph, label %._crit_edge

.lr.ph.lr.ph:                                     ; preds = %.lr.ph326.split.preheader
  %.sroa.speculated219373 = tail call i64 @llvm.smin.i64(i64 %i.b, i64 %0)
  br label %.lr.ph

.lr.ph310.us.preheader:                           ; preds = %bb.q
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
  br label %.lr.ph310.us

.lr.ph310.us:                                     ; preds = %.loopexit.us, %.lr.ph310.us.preheader
  %indvar = phi i64 [ %indvar.next, %.loopexit.us ], [ 0, %.lr.ph310.us.preheader ] ; 3 uses
  %.0135324.us = phi i64 [ %i.cl, %.loopexit.us ], [ %0, %.lr.ph310.us.preheader ] ; 5 uses
  %i.bx = mul i64 %i.be, %indvar                  ; 2 uses
  %i.by = add i64 %i.bh, %i.bx
  %i.bz = mul i64 %i.bp, %indvar                  ; 2 uses
  %i.ca = add i64 %i.bm, %i.bz
  %smin = call i64 @llvm.smin.i64(i64 %i.b, i64 %.0135324.us) ; 9 uses
  %i.cb = sub nsw i64 %.0135324.us, %smin         ; 2 uses
  %i.cc = getelementptr [8 x i8], ptr %2, i64 %i.cb
  %i.cd = getelementptr [8 x i8], ptr %4, i64 %i.cb
  br i1 %i.bc, label %.lr.ph306.us.us.preheader, label %._crit_edge311.us

.lr.ph306.us.us.preheader:                        ; preds = %.lr.ph310.us
  %i.ce = getelementptr i8, ptr %i.bt, i64 %i.bx
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.bz
  br label %.lr.ph306.us.us

bb.r:                                             ; preds = %.lr.ph.us, %bb.v
  %.0323.us = phi i64 [ 0, %.lr.ph.us ], [ %i.cj, %bb.v ] ; 4 uses
  %i.cg = sub nsw i64 %i.cl, %.0323.us
  %.sroa.speculated.us = call i64 @llvm.smin.i64(i64 %i.cg, i64 %.sroa.speculated244) ; 3 uses
  %i.ch = icmp sgt i64 %.sroa.speculated.us, 0
  br i1 %i.ch, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  %gep.us328 = getelementptr [8 x i8], ptr %invariant.gep.us331, i64 %.0323.us
  store ptr %gep.us328, ptr %14, align 8
  store i64 %3, ptr %i.ba, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %smin, i64 noundef %.sroa.speculated.us, i64 noundef 0, i64 noundef 0)
          to label %bb.t unwind label %.split.us332

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.ci = getelementptr [8 x i8], ptr %4, i64 %.0323.us
  store ptr %i.ci, ptr %15, align 8
  store i64 %6, ptr %i.bb, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated.us, i64 noundef %smin, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.u unwind label %.split334.us

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %i.cj = add nsw i64 %.0323.us, %.sroa.speculated244 ; 2 uses
  %i.ck = icmp slt i64 %i.cj, %i.cl
  br i1 %i.ck, label %bb.r, label %.loopexit.us, !llvm.loop !1563

.loopexit.us:                                     ; preds = %bb.v
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph310.us, !llvm.loop !1564

._crit_edge311.us:                                ; preds = %._crit_edge307.us.us, %.lr.ph310.us
  %i.cl = sub nsw i64 %.0135324.us, %i.b          ; 5 uses
  %i.cm = icmp sgt i64 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.us, label %._crit_edge

.lr.ph306.us.us:                                  ; preds = %.lr.ph306.us.us.preheader, %._crit_edge307.us.us
  %indvar375 = phi i64 [ %indvar.next376, %._crit_edge307.us.us ], [ 0, %.lr.ph306.us.us.preheader ] ; 4 uses
  %.0134308.us.us = phi i64 [ %i.gl, %._crit_edge307.us.us ], [ 0, %.lr.ph306.us.us.preheader ] ; 13 uses
  %i.cn = or disjoint i64 %.0134308.us.us, 1
  %i.co = mul i64 %., %indvar375                  ; 2 uses
  %i.cp = sub i64 %1, %i.co
  %smin388 = call i64 @llvm.smin.i64(i64 %., i64 %i.cp)
  %i.cq = add i64 %smin388, %.0134308.us.us
  %smax389 = call i64 @llvm.smax.i64(i64 %i.cn, i64 %i.cq) ; 2 uses
  %i.cr = sub i64 %smax389, %i.co                 ; 2 uses
  %i.cs = mul i64 %i.bg, %indvar375               ; 2 uses
  %i.ct = add i64 %i.by, %i.cs
  %i.cu = or disjoint i64 %.0134308.us.us, 1
  %i.cv = mul i64 %., %indvar375                  ; 2 uses
  %i.cw = sub i64 %1, %i.cv
  %smin381 = call i64 @llvm.smin.i64(i64 %., i64 %i.cw)
  %i.cx = add i64 %smin381, %.0134308.us.us
  %smax = call i64 @llvm.smax.i64(i64 %i.cu, i64 %i.cx)
  %i.cy = xor i64 %i.cv, -1
  %i.cz = add i64 %smax, %i.cy
  %i.da = mul i64 %i.bi, %i.cz
  %i.db = add i64 %i.ct, %i.da
  %i.dc = sub nsw i64 %1, %.0134308.us.us         ; 2 uses
  %.sroa.speculated214.us.us = call i64 @llvm.smin.i64(i64 %., i64 %i.dc) ; 3 uses
  %i.dd = add nsw i64 %.sroa.speculated214.us.us, %.0134308.us.us ; 2 uses
  %i.de = icmp slt i64 %i.dc, 1
  %i.df = mul nuw nsw i64 %.0134308.us.us, %smin
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.df ; 2 uses
  %i.dh = mul nsw i64 %.0134308.us.us, %6         ; 2 uses
  %invariant.gep.us.us = getelementptr [8 x i8], ptr %4, i64 %i.dh
  %i.di = getelementptr [8 x i8], ptr %i.cd, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.ce, i64 %i.cs
  %min.iters.check391 = icmp ugt i64 %i.cr, 3
  %or.cond = and i1 %min.iters.check391, %ident.check.not
  %i.dk = and i64 %smax389, 3                     ; 2 uses
  %n.vec393 = sub nuw i64 %i.cr, %i.dk            ; 2 uses
  %i.dl = add i64 %.0134308.us.us, %n.vec393
  %cmp.n402 = icmp eq i64 %i.dk, 0
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %.lr.ph306.us.us
  %indvar377 = phi i64 [ %indvar.next378, %bb.ab ], [ 0, %.lr.ph306.us.us ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ab ], [ %smin, %.lr.ph306.us.us ] ; 3 uses
  %.0133304.us.us = phi i64 [ %i.fm, %bb.ab ], [ 0, %.lr.ph306.us.us ] ; 4 uses
  %i.dm = mul i64 %indvar377, -32                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dj, i64 %i.dm
  %smin379 = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 4) ; 2 uses
  %i.dn = mul i64 %smin379, -8
  %scevgep380 = getelementptr i8, ptr %scevgep, i64 %i.dn
  %i.do = add i64 %i.db, %i.dm
  %i.dp = mul i64 %i.br, %indvar377               ; 2 uses
  %i.dq = add i64 %i.ca, %i.dp
  %i.dr = shl i64 %smin379, 3
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 1)
  %i.du = call i64 @llvm.umin.i64(i64 %i.dt, i64 4)
  %i.dv = sub nsw i64 %smin, %.0133304.us.us      ; 3 uses
  %.sroa.speculated208.us.us = call i64 @llvm.smin.i64(i64 %i.dv, i64 4) ; 7 uses
  %i.dw = icmp slt i64 %i.dv, 1
  %brmerge = select i1 %i.dw, i1 true, i1 %i.de
  br i1 %brmerge, label %._crit_edge.split.us.us, label %.lr.ph301.us.us.preheader

.lr.ph301.us.us.preheader:                        ; preds = %bb.w
  %i.dx = getelementptr i8, ptr %2, i64 %i.ds
  %i.dy = getelementptr i8, ptr %i.cf, i64 %i.dp
  br label %.lr.ph301.us.us

.lr.ph301.us.us:                                  ; preds = %.lr.ph301.us.us.preheader, %._crit_edge302.us.us
  %.0132303.us.us = phi i64 [ %i.fo, %._crit_edge302.us.us ], [ 0, %.lr.ph301.us.us.preheader ] ; 6 uses
  %i.dz = shl i64 %.0132303.us.us, 3
  %i.ea = sub i64 %i.do, %i.dz
  %scevgep382 = getelementptr i8, ptr %4, i64 %i.ea
  %i.eb = mul i64 %i.bs, %.0132303.us.us
  %scevgep383 = getelementptr i8, ptr %i.dx, i64 %i.eb
  %i.ec = mul i64 %i.bo, %.0132303.us.us
  %scevgep384 = getelementptr i8, ptr %i.dy, i64 %i.ec
  %i.ed = add nuw nsw i64 %.0132303.us.us, %.0133304.us.us
  %i.ee = xor i64 %i.ed, -1
  %i.ef = add nsw i64 %.0135324.us, %i.ee         ; 4 uses
  %i.eg = xor i64 %.0132303.us.us, -1
  %i.eh = add nsw i64 %.sroa.speculated208.us.us, %i.eg ; 6 uses
  %i.ei = sub nsw i64 %i.ef, %i.eh                ; 2 uses
  %i.ej = mul nsw i64 %i.ef, %3                   ; 2 uses
  %i.ek = getelementptr [8 x i8], ptr %2, i64 %i.ef
  %i.el = getelementptr [8 x i8], ptr %i.ek, i64 %i.ej
  %i.em = load double, ptr %i.el, align 8, !tbaa !399
  %i.en = fdiv double 1.000000e+00, %i.em         ; 3 uses
  %i.eo = getelementptr [8 x i8], ptr %4, i64 %i.ef ; 3 uses
  %i.ep = getelementptr [8 x i8], ptr %4, i64 %i.ei
  %i.eq = getelementptr [8 x i8], ptr %2, i64 %i.ei
  %i.er = getelementptr [8 x i8], ptr %i.eq, i64 %i.ej ; 2 uses
  %i.es = icmp sgt i64 %i.eh, 0
  br i1 %i.es, label %.lr.ph.us.us.us.preheader, label %.lr.ph301.split.us314.us.preheader

.lr.ph.us.us.us.preheader:                        ; preds = %.lr.ph301.us.us
  %min.iters.check = icmp ult i64 %i.eh, 4
  %bound0 = icmp ult ptr %scevgep380, %scevgep384
  %bound1 = icmp ult ptr %scevgep383, %scevgep382
  %found.conflict = and i1 %bound0, %bound1
  %i.et = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.eh, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.eh, %n.vec
  br label %.lr.ph.us.us.us

.lr.ph301.split.us314.us.preheader:               ; preds = %.lr.ph301.us.us
  br i1 %or.cond, label %vector.ph392, label %.lr.ph301.split.us314.us.preheader404

vector.ph392:                                     ; preds = %.lr.ph301.split.us314.us.preheader
  %broadcast.splatinsert394 = insertelement <2 x double> poison, double %i.en, i64 0
  %broadcast.splat395 = shufflevector <2 x double> %broadcast.splatinsert394, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %i.eo, i64 %.0134308.us.us
  br label %vector.body396

vector.body396:                                   ; preds = %vector.body396, %vector.ph392
  %index397 = phi i64 [ 0, %vector.ph392 ], [ %index.next400, %vector.body396 ] ; 2 uses
  %i.ev = getelementptr [8 x i8], ptr %i.eu, i64 %index397 ; 3 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 16     ; 2 uses
  %wide.load398 = load <2 x double>, ptr %i.ev, align 8, !tbaa !399
  %wide.load399 = load <2 x double>, ptr %i.ew, align 8, !tbaa !399
  %i.ex = fmul <2 x double> %broadcast.splat395, %wide.load398
  %i.ey = fmul <2 x double> %broadcast.splat395, %wide.load399
  store <2 x double> %i.ex, ptr %i.ev, align 8, !tbaa !399
  store <2 x double> %i.ey, ptr %i.ew, align 8, !tbaa !399
  %index.next400 = add nuw i64 %index397, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next400, %n.vec393
  br i1 %i.ez, label %middle.block401, label %vector.body396, !llvm.loop !1565

middle.block401:                                  ; preds = %vector.body396
  br i1 %cmp.n402, label %._crit_edge302.us.us, label %.lr.ph301.split.us314.us.preheader404

.lr.ph301.split.us314.us.preheader404:            ; preds = %.lr.ph301.split.us314.us.preheader, %middle.block401
  %.0131299.us312.us.ph = phi i64 [ %.0134308.us.us, %.lr.ph301.split.us314.us.preheader ], [ %i.dl, %middle.block401 ]
  br label %.lr.ph301.split.us314.us

.lr.ph301.split.us314.us:                         ; preds = %.lr.ph301.split.us314.us.preheader404, %.lr.ph301.split.us314.us
  %.0131299.us312.us = phi i64 [ %i.fe, %.lr.ph301.split.us314.us ], [ %.0131299.us312.us.ph, %.lr.ph301.split.us314.us.preheader404 ] ; 2 uses
  %i.fa = mul nsw i64 %.0131299.us312.us, %6
  %i.fb = getelementptr [8 x i8], ptr %i.eo, i64 %i.fa ; 2 uses
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !399
  %i.fd = fmul double %i.en, %i.fc
  store double %i.fd, ptr %i.fb, align 8, !tbaa !399
  %i.fe = add nuw nsw i64 %.0131299.us312.us, 1   ; 2 uses
  %i.ff = icmp slt i64 %i.fe, %i.dd
  br i1 %i.ff, label %.lr.ph301.split.us314.us, label %._crit_edge302.us.us, !llvm.loop !1566

._crit_edge.split.us.us:                          ; preds = %._crit_edge302.us.us, %bb.w
  %i.fg = sub nsw i64 %i.dv, %.sroa.speculated208.us.us ; 5 uses
  %i.fh = add i64 %.0133304.us.us, %.sroa.speculated208.us.us
  %i.fi = sub i64 %.0135324.us, %i.fh             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  %gep.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us, i64 %i.fi
  store ptr %gep.us.us, ptr %11, align 8
  store i64 %6, ptr %i.ax, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 noundef %.sroa.speculated208.us.us, i64 noundef %.sroa.speculated214.us.us, i64 noundef %smin, i64 noundef %i.fg)
          to label %bb.x unwind label %.split.us.split.us

bb.x:                                             ; preds = %._crit_edge.split.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  %i.fj = icmp sgt i64 %i.fg, 0
  br i1 %i.fj, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.fk = mul nsw i64 %i.fi, %3
  %i.fl = getelementptr [8 x i8], ptr %i.cc, i64 %i.fk
  store ptr %i.fl, ptr %12, align 8
  store i64 %3, ptr %i.ay, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 noundef %.sroa.speculated208.us.us, i64 noundef %i.fg, i64 noundef 0, i64 noundef 0)
          to label %bb.z unwind label %.split318.us.split.us

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  store ptr %i.di, ptr %13, align 8
  store i64 %6, ptr %i.az, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.r, ptr noundef nonnull %i.dg, i64 noundef %i.fg, i64 noundef %.sroa.speculated208.us.us, i64 noundef %.sroa.speculated214.us.us, double noundef -1.000000e+00, i64 noundef %.sroa.speculated208.us.us, i64 noundef %smin, i64 noundef 0, i64 noundef %i.fg)
          to label %bb.aa unwind label %.split321.us.split.us

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %i.fm = add nuw nsw i64 %.0133304.us.us, 4      ; 2 uses
  %i.fn = icmp slt i64 %i.fm, %smin
  %indvars.iv.next = add i64 %indvars.iv, -4
  %indvar.next378 = add i64 %indvar377, 1
  br i1 %i.fn, label %bb.w, label %._crit_edge307.us.us, !llvm.loop !1567

._crit_edge302.us.us:                             ; preds = %.lr.ph301.split.us314.us, %._crit_edge.us.us.us, %middle.block401
  %i.fo = add nuw nsw i64 %.0132303.us.us, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.fo, %i.du
  br i1 %exitcond.not, label %._crit_edge.split.us.us, label %.lr.ph301.us.us, !llvm.loop !1568

.lr.ph.us.us.us:                                  ; preds = %.lr.ph.us.us.us.preheader, %._crit_edge.us.us.us
  %.0131299.us.us.us = phi i64 [ %i.gj, %._crit_edge.us.us.us ], [ %.0134308.us.us, %.lr.ph.us.us.us.preheader ] ; 2 uses
  %i.fp = mul nsw i64 %.0131299.us.us.us, %6      ; 2 uses
  %i.fq = getelementptr [8 x i8], ptr %i.eo, i64 %i.fp ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !399
  %i.fs = fmul double %i.en, %i.fr                ; 2 uses
  store double %i.fs, ptr %i.fq, align 8, !tbaa !399
  %i.ft = getelementptr [8 x i8], ptr %i.ep, i64 %i.fp ; 2 uses
  %i.fu = fneg double %i.fs                       ; 2 uses
  %brmerge407 = select i1 %min.iters.check, i1 true, i1 %i.et
  br i1 %brmerge407, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us.us
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fu, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %index ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %wide.load = load <2 x double>, ptr %i.fv, align 8, !tbaa !399, !alias.scope !1569
  %wide.load385 = load <2 x double>, ptr %i.fw, align 8, !tbaa !399, !alias.scope !1569
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %index ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %wide.load386 = load <2 x double>, ptr %i.fx, align 8, !tbaa !399, !alias.scope !1572, !noalias !1569
end_hunk_2
begin_hunk_3_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1831", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.1831", align 1 ; 3 uses
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
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !2081

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
  %i.p = load i32, ptr %i.f, align 8, !tbaa !2047 ; 5 uses
  %i.q = load i32, ptr %i.n, align 8, !tbaa !2047 ; 5 uses
  %i.r = icmp slt i32 %i.p, %i.q
  %i.s = load i32, ptr %i.o, align 8, !tbaa !2047 ; 6 uses
  br i1 %i.r, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph42
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %0, align 8, !tbaa !32
  store i32 %i.q, ptr %0, align 8, !tbaa !32
  store i32 %i.u, ptr %i.n, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !1814
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !1814
  store ptr %i.x, ptr %i.g, align 8, !tbaa !1814
  store ptr %i.w, ptr %i.v, align 8, !tbaa !1814
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.y = icmp slt i32 %i.p, %i.s
  %i.z = load i32, ptr %0, align 8, !tbaa !32     ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.s, ptr %0, align 8, !tbaa !32
  store i32 %i.z, ptr %i.o, align 8, !tbaa !32
  %i.aa = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !1814
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !1814
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !1814
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !1814
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i32 %i.p, ptr %0, align 8, !tbaa !32
  store i32 %i.z, ptr %i.f, align 8, !tbaa !32
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !1814
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !1814
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !1814
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !1814
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph42
  %i.af = icmp slt i32 %i.p, %i.s
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %0, align 8, !tbaa !32
  store i32 %i.p, ptr %0, align 8, !tbaa !32
  store i32 %i.ag, ptr %i.f, align 8, !tbaa !32
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !1814
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !1814
  store ptr %i.ai, ptr %i.g, align 8, !tbaa !1814
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !1814
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp slt i32 %i.q, %i.s
  %i.ak = load i32, ptr %0, align 8, !tbaa !32    ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.s, ptr %0, align 8, !tbaa !32
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !32
  %i.al = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !1814
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !1814
  store ptr %i.an, ptr %i.g, align 8, !tbaa !1814
  store ptr %i.am, ptr %i.al, align 8, !tbaa !1814
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.q, ptr %0, align 8, !tbaa !32
  store i32 %i.ak, ptr %i.n, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !1814
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !1814
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !1814
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !1814
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader, %bb.o
  %.sroa.010.0.i.i = phi ptr [ %i.au, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge2041, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %i.ar = load i32, ptr %0, align 8, !tbaa !2047  ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i ], [ %i.au, %bb.m ] ; 9 uses
  %i.as = load i32, ptr %.sroa.010.1.i.i, align 8, !tbaa !2047 ; 2 uses
  %i.at = icmp slt i32 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.at, label %bb.m, label %.preheader.i.i, !llvm.loop !2082

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.av = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !2047 ; 2 uses
  %i.aw = icmp slt i32 %i.ar, %i.av
  br i1 %i.aw, label %.preheader.i.i, label %bb.n, !llvm.loop !2083

bb.n:                                             ; preds = %.preheader.i.i
  %i.ax = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ax, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %i.av, ptr %.sroa.010.1.i.i, align 4, !tbaa !32
  store i32 %i.as, ptr %.sroa.0.1.i.i, align 4, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !1814
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !1814
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !1814
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !1814
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i, !llvm.loop !2084

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2041, i64 noundef %i.l)
  %i.bc = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bd = sub i64 %i.bc, %i.a
  %i.be = ashr exact i64 %i.bd, 4                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 16
  br i1 %i.bf, label %bb.b, label %.loopexit, !llvm.loop !2081

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
  %i.f = load i32, ptr %.sroa.09.021.i.ptr, align 8, !tbaa !2047 ; 5 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !2047
  %i.h = icmp slt i32 %i.f, %i.g
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8 ; 2 uses
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %i.i = add i64 %indvar, 1
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
  store i32 %i.n, ptr %i.m, align 8, !tbaa !2047
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1814
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !2049
  %i.r = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter64.next = add i64 %prol.iter64, 1     ; 2 uses
  %prol.iter64.cmp.not = icmp eq i64 %prol.iter64.next, %xtraiter62
  br i1 %prol.iter64.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2085

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
  store i32 %i.v, ptr %i.u, align 8, !tbaa !2047
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1814
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !2049
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !32
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !2047
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1814
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !2049
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !32
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !2047
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1814
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !2049
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.an = load i32, ptr %i.al, align 8, !tbaa !32
  store i32 %i.an, ptr %i.am, align 8, !tbaa !2047
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1814
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !2049
  %i.ar = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.as = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, !llvm.loop !2086

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i32 %i.f, ptr %0, align 8, !tbaa !2047
  store ptr %.sroa.48.0.copyload.i, ptr %i.e, align 8, !tbaa !2049
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.at = load i32, ptr %.pn20.i, align 8, !tbaa !2047 ; 2 uses
  %i.au = icmp slt i32 %i.f, %i.at
  br i1 %i.au, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.av = phi i32 [ %i.az, %.lr.ph.i.i ], [ %i.at, %bb.c ]
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.c ] ; 3 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.09.021.i.ptr, %bb.c ] ; 3 uses
  store i32 %i.av, ptr %.sroa.06.010.i.i, align 8, !tbaa !2047
  %i.aw = getelementptr inbounds i8, ptr %.sroa.06.010.i.i, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1814
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !2049
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -16 ; 2 uses
  %i.az = load i32, ptr %.sroa.0.0.i.i, align 8, !tbaa !2047 ; 2 uses
  %i.ba = icmp slt i32 %i.f, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, !llvm.loop !2087

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.09.021.i.ptr, %bb.c ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %i.f, ptr %.sroa.06.0.lcssa.i.i, align 8, !tbaa !2047
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 8
  store ptr %.sroa.48.0.copyload.i, ptr %i.bb, align 8, !tbaa !2049
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i
  %.sroa.09.021.i.add = add nuw nsw i64 %.sroa.09.021.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.09.021.i.add, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.b, !llvm.loop !2088

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
  %i.bd = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !2047 ; 2 uses
  %i.be = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bf = phi i32 [ %i.bj, %.lr.ph.i.i16 ], [ %i.bd, %.lr.ph.i12 ]
  %.sroa.0.011.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.06.010.i.i18 = phi ptr [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  store i32 %i.bf, ptr %.sroa.06.010.i.i18, align 8, !tbaa !2047
  %i.bg = getelementptr inbounds i8, ptr %.sroa.06.010.i.i18, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1814
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i18, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !2049
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17, i64 -16 ; 2 uses
  %i.bj = load i32, ptr %.sroa.0.0.i.i19, align 8, !tbaa !2047 ; 2 uses
  %i.bk = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, !llvm.loop !2087

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i14, align 8, !tbaa !2047
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i14, i64 8
  store ptr %.sroa.55.0.copyload.i.i, ptr %i.bl, align 8, !tbaa !2049
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bm, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12, !llvm.loop !2089

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
  %i.bp = load i32, ptr %.sroa.09.021.i24, align 8, !tbaa !2047 ; 5 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !2047
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
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !2047
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1814
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !2049
  %i.cd = add nsw i64 %.010.i.i.i.i.i.i39.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol, !llvm.loop !2090

end_hunk_3
begin_hunk_4_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.2743", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.2743", align 1 ; 3 uses
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
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !2439

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
  %i.p = load i32, ptr %i.f, align 8, !tbaa !2408 ; 5 uses
  %i.q = load i32, ptr %i.n, align 8, !tbaa !2408 ; 5 uses
  %i.r = icmp slt i32 %i.p, %i.q
  %i.s = load i32, ptr %i.o, align 8, !tbaa !2408 ; 6 uses
  br i1 %i.r, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph42
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %0, align 8, !tbaa !32
  store i32 %i.q, ptr %0, align 8, !tbaa !32
  store i32 %i.u, ptr %i.n, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !2204
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !2204
  store ptr %i.x, ptr %i.g, align 8, !tbaa !2204
  store ptr %i.w, ptr %i.v, align 8, !tbaa !2204
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.y = icmp slt i32 %i.p, %i.s
  %i.z = load i32, ptr %0, align 8, !tbaa !32     ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.s, ptr %0, align 8, !tbaa !32
  store i32 %i.z, ptr %i.o, align 8, !tbaa !32
  %i.aa = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !2204
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !2204
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !2204
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !2204
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i32 %i.p, ptr %0, align 8, !tbaa !32
  store i32 %i.z, ptr %i.f, align 8, !tbaa !32
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !2204
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !2204
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !2204
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !2204
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph42
  %i.af = icmp slt i32 %i.p, %i.s
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %0, align 8, !tbaa !32
  store i32 %i.p, ptr %0, align 8, !tbaa !32
  store i32 %i.ag, ptr %i.f, align 8, !tbaa !32
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !2204
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !2204
  store ptr %i.ai, ptr %i.g, align 8, !tbaa !2204
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !2204
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp slt i32 %i.q, %i.s
  %i.ak = load i32, ptr %0, align 8, !tbaa !32    ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.s, ptr %0, align 8, !tbaa !32
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !32
  %i.al = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !2204
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !2204
  store ptr %i.an, ptr %i.g, align 8, !tbaa !2204
  store ptr %i.am, ptr %i.al, align 8, !tbaa !2204
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.q, ptr %0, align 8, !tbaa !32
  store i32 %i.ak, ptr %i.n, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !2204
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !2204
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !2204
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !2204
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader, %bb.o
  %.sroa.010.0.i.i = phi ptr [ %i.au, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge2041, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %i.ar = load i32, ptr %0, align 8, !tbaa !2408  ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i ], [ %i.au, %bb.m ] ; 9 uses
  %i.as = load i32, ptr %.sroa.010.1.i.i, align 8, !tbaa !2408 ; 2 uses
  %i.at = icmp slt i32 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.at, label %bb.m, label %.preheader.i.i, !llvm.loop !2440

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.av = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !2408 ; 2 uses
  %i.aw = icmp slt i32 %i.ar, %i.av
  br i1 %i.aw, label %.preheader.i.i, label %bb.n, !llvm.loop !2441

bb.n:                                             ; preds = %.preheader.i.i
  %i.ax = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ax, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %i.av, ptr %.sroa.010.1.i.i, align 4, !tbaa !32
  store i32 %i.as, ptr %.sroa.0.1.i.i, align 4, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !2204
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !2204
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !2204
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !2204
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i, !llvm.loop !2442

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2041, i64 noundef %i.l)
  %i.bc = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bd = sub i64 %i.bc, %i.a
  %i.be = ashr exact i64 %i.bd, 4                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 16
  br i1 %i.bf, label %bb.b, label %.loopexit, !llvm.loop !2439

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
  %i.f = load i32, ptr %.sroa.09.021.i.ptr, align 8, !tbaa !2408 ; 5 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !2408
  %i.h = icmp slt i32 %i.f, %i.g
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8 ; 2 uses
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %i.i = add i64 %indvar, 1
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
  store i32 %i.n, ptr %i.m, align 8, !tbaa !2408
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2204
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !2410
  %i.r = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter64.next = add i64 %prol.iter64, 1     ; 2 uses
  %prol.iter64.cmp.not = icmp eq i64 %prol.iter64.next, %xtraiter62
  br i1 %prol.iter64.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2443

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
  store i32 %i.v, ptr %i.u, align 8, !tbaa !2408
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2204
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !2410
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !32
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !2408
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2204
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !2410
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !32
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !2408
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2204
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !2410
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.an = load i32, ptr %i.al, align 8, !tbaa !32
  store i32 %i.an, ptr %i.am, align 8, !tbaa !2408
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2204
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !2410
  %i.ar = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.as = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, !llvm.loop !2444

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i32 %i.f, ptr %0, align 8, !tbaa !2408
  store ptr %.sroa.48.0.copyload.i, ptr %i.e, align 8, !tbaa !2410
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.at = load i32, ptr %.pn20.i, align 8, !tbaa !2408 ; 2 uses
  %i.au = icmp slt i32 %i.f, %i.at
  br i1 %i.au, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.av = phi i32 [ %i.az, %.lr.ph.i.i ], [ %i.at, %bb.c ]
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.c ] ; 3 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.09.021.i.ptr, %bb.c ] ; 3 uses
  store i32 %i.av, ptr %.sroa.06.010.i.i, align 8, !tbaa !2408
  %i.aw = getelementptr inbounds i8, ptr %.sroa.06.010.i.i, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2204
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !2410
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -16 ; 2 uses
  %i.az = load i32, ptr %.sroa.0.0.i.i, align 8, !tbaa !2408 ; 2 uses
  %i.ba = icmp slt i32 %i.f, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, !llvm.loop !2445

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.09.021.i.ptr, %bb.c ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %i.f, ptr %.sroa.06.0.lcssa.i.i, align 8, !tbaa !2408
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 8
  store ptr %.sroa.48.0.copyload.i, ptr %i.bb, align 8, !tbaa !2410
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i
  %.sroa.09.021.i.add = add nuw nsw i64 %.sroa.09.021.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.09.021.i.add, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.b, !llvm.loop !2446

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
  %i.bd = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !2408 ; 2 uses
  %i.be = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bf = phi i32 [ %i.bj, %.lr.ph.i.i16 ], [ %i.bd, %.lr.ph.i12 ]
  %.sroa.0.011.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.06.010.i.i18 = phi ptr [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  store i32 %i.bf, ptr %.sroa.06.010.i.i18, align 8, !tbaa !2408
  %i.bg = getelementptr inbounds i8, ptr %.sroa.06.010.i.i18, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2204
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i18, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !2410
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17, i64 -16 ; 2 uses
  %i.bj = load i32, ptr %.sroa.0.0.i.i19, align 8, !tbaa !2408 ; 2 uses
  %i.bk = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, !llvm.loop !2445

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i14, align 8, !tbaa !2408
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i14, i64 8
  store ptr %.sroa.55.0.copyload.i.i, ptr %i.bl, align 8, !tbaa !2410
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bm, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12, !llvm.loop !2447

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
  %i.bp = load i32, ptr %.sroa.09.021.i24, align 8, !tbaa !2408 ; 5 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !2408
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
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !2408
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2204
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !2410
  %i.cd = add nsw i64 %.010.i.i.i.i.i.i39.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol, !llvm.loop !2448

end_hunk_4
begin_hunk_5_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3477", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.3477", align 1 ; 3 uses
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
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !2783

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
  %i.p = load i32, ptr %i.f, align 8, !tbaa !2752 ; 5 uses
  %i.q = load i32, ptr %i.n, align 8, !tbaa !2752 ; 5 uses
  %i.r = icmp slt i32 %i.p, %i.q
  %i.s = load i32, ptr %i.o, align 8, !tbaa !2752 ; 6 uses
  br i1 %i.r, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph42
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %0, align 8, !tbaa !32
  store i32 %i.q, ptr %0, align 8, !tbaa !32
  store i32 %i.u, ptr %i.n, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !2561
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !2561
  store ptr %i.x, ptr %i.g, align 8, !tbaa !2561
  store ptr %i.w, ptr %i.v, align 8, !tbaa !2561
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.y = icmp slt i32 %i.p, %i.s
  %i.z = load i32, ptr %0, align 8, !tbaa !32     ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.s, ptr %0, align 8, !tbaa !32
  store i32 %i.z, ptr %i.o, align 8, !tbaa !32
  %i.aa = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !2561
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !2561
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !2561
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !2561
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i32 %i.p, ptr %0, align 8, !tbaa !32
  store i32 %i.z, ptr %i.f, align 8, !tbaa !32
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !2561
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !2561
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !2561
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !2561
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph42
  %i.af = icmp slt i32 %i.p, %i.s
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %0, align 8, !tbaa !32
  store i32 %i.p, ptr %0, align 8, !tbaa !32
  store i32 %i.ag, ptr %i.f, align 8, !tbaa !32
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !2561
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !2561
  store ptr %i.ai, ptr %i.g, align 8, !tbaa !2561
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !2561
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp slt i32 %i.q, %i.s
  %i.ak = load i32, ptr %0, align 8, !tbaa !32    ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.s, ptr %0, align 8, !tbaa !32
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !32
  %i.al = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !2561
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !2561
  store ptr %i.an, ptr %i.g, align 8, !tbaa !2561
  store ptr %i.am, ptr %i.al, align 8, !tbaa !2561
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.q, ptr %0, align 8, !tbaa !32
  store i32 %i.ak, ptr %i.n, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !2561
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !2561
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !2561
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !2561
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader, %bb.o
  %.sroa.010.0.i.i = phi ptr [ %i.au, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge2041, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %i.ar = load i32, ptr %0, align 8, !tbaa !2752  ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i ], [ %i.au, %bb.m ] ; 9 uses
  %i.as = load i32, ptr %.sroa.010.1.i.i, align 8, !tbaa !2752 ; 2 uses
  %i.at = icmp slt i32 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.at, label %bb.m, label %.preheader.i.i, !llvm.loop !2784

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.av = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !2752 ; 2 uses
  %i.aw = icmp slt i32 %i.ar, %i.av
  br i1 %i.aw, label %.preheader.i.i, label %bb.n, !llvm.loop !2785

bb.n:                                             ; preds = %.preheader.i.i
  %i.ax = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ax, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %i.av, ptr %.sroa.010.1.i.i, align 4, !tbaa !32
  store i32 %i.as, ptr %.sroa.0.1.i.i, align 4, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !2561
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !2561
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !2561
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !2561
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i, !llvm.loop !2786

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2041, i64 noundef %i.l)
  %i.bc = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bd = sub i64 %i.bc, %i.a
  %i.be = ashr exact i64 %i.bd, 4                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 16
  br i1 %i.bf, label %bb.b, label %.loopexit, !llvm.loop !2783

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
  %i.f = load i32, ptr %.sroa.09.021.i.ptr, align 8, !tbaa !2752 ; 5 uses
  %i.g = load i32, ptr %0, align 8, !tbaa !2752
  %i.h = icmp slt i32 %i.f, %i.g
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8 ; 2 uses
  br i1 %i.h, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %i.i = add i64 %indvar, 1
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
  store i32 %i.n, ptr %i.m, align 8, !tbaa !2752
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !2561
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !2754
  %i.r = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter64.next = add i64 %prol.iter64, 1     ; 2 uses
  %prol.iter64.cmp.not = icmp eq i64 %prol.iter64.next, %xtraiter62
  br i1 %prol.iter64.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !2787

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
  store i32 %i.v, ptr %i.u, align 8, !tbaa !2752
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2561
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !2754
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.ab = load i32, ptr %i.z, align 8, !tbaa !32
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !2752
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !2561
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !2754
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.ah = load i32, ptr %i.af, align 8, !tbaa !32
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !2752
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2561
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !2754
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.an = load i32, ptr %i.al, align 8, !tbaa !32
  store i32 %i.an, ptr %i.am, align 8, !tbaa !2752
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !2561
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !2754
  %i.ar = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.as = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, !llvm.loop !2788

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i32 %i.f, ptr %0, align 8, !tbaa !2752
  store ptr %.sroa.48.0.copyload.i, ptr %i.e, align 8, !tbaa !2754
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.at = load i32, ptr %.pn20.i, align 8, !tbaa !2752 ; 2 uses
  %i.au = icmp slt i32 %i.f, %i.at
  br i1 %i.au, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.av = phi i32 [ %i.az, %.lr.ph.i.i ], [ %i.at, %bb.c ]
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.c ] ; 3 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.09.021.i.ptr, %bb.c ] ; 3 uses
  store i32 %i.av, ptr %.sroa.06.010.i.i, align 8, !tbaa !2752
  %i.aw = getelementptr inbounds i8, ptr %.sroa.06.010.i.i, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !2561
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !2754
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -16 ; 2 uses
  %i.az = load i32, ptr %.sroa.0.0.i.i, align 8, !tbaa !2752 ; 2 uses
  %i.ba = icmp slt i32 %i.f, %i.az
  br i1 %i.ba, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, !llvm.loop !2789

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.09.021.i.ptr, %bb.c ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %i.f, ptr %.sroa.06.0.lcssa.i.i, align 8, !tbaa !2752
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 8
  store ptr %.sroa.48.0.copyload.i, ptr %i.bb, align 8, !tbaa !2754
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i
  %.sroa.09.021.i.add = add nuw nsw i64 %.sroa.09.021.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.09.021.i.add, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.b, !llvm.loop !2790

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
  %i.bd = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !2752 ; 2 uses
  %i.be = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bf = phi i32 [ %i.bj, %.lr.ph.i.i16 ], [ %i.bd, %.lr.ph.i12 ]
  %.sroa.0.011.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.06.010.i.i18 = phi ptr [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  store i32 %i.bf, ptr %.sroa.06.010.i.i18, align 8, !tbaa !2752
  %i.bg = getelementptr inbounds i8, ptr %.sroa.06.010.i.i18, i64 -8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !2561
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i18, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !2754
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17, i64 -16 ; 2 uses
  %i.bj = load i32, ptr %.sroa.0.0.i.i19, align 8, !tbaa !2752 ; 2 uses
  %i.bk = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bj
  br i1 %i.bk, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, !llvm.loop !2789

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i14, align 8, !tbaa !2752
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i14, i64 8
  store ptr %.sroa.55.0.copyload.i.i, ptr %i.bl, align 8, !tbaa !2754
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bm, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12, !llvm.loop !2791

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
  %i.bp = load i32, ptr %.sroa.09.021.i24, align 8, !tbaa !2752 ; 5 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !2752
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
  store i32 %i.bz, ptr %i.by, align 8, !tbaa !2752
  %i.ca = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !2561
  %i.cc = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !2754
  %i.cd = add nsw i64 %.010.i.i.i.i.i.i39.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol, !llvm.loop !2792

end_hunk_5
