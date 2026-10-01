Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/slam2d_linear?download=true
inline.NumInlined: 7562
inline.NumDeleted: 4021
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE8RowBlockESaIS6_EESaIS8_EE17_M_default_appendEm:bb.a
  br label %_ZNSt12_Vector_baseISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE8RowBlockESaIS7_EESaIS9_EE13_M_deallocateEPS9_m.exit37

_ZNSt12_Vector_baseISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE8RowBlockESaIS7_EESaIS9_EE13_M_deallocateEPS9_m.exit37: ; preds = %_ZNSt6vectorIS_IN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE8RowBlockESaIS6_EESaIS8_EE11_S_relocateEPS8_SB_SB_RS9_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !255
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !256
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !261
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPSt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE8RowBlockESaIS7_EEmS9_ET_SB_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt6vectorIN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLi3ELi2ELi0ELi3ELi2EEEE8RowBlockESaIS7_EESaIS9_EE13_M_deallocateEPS9_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.634", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter.634", align 1 ; 3 uses
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
  br i1 %i.j, label %._crit_edge, label %.lr.ph42, !llvm.loop !856

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
  %i.p = load i32, ptr %i.f, align 8, !tbaa !377  ; 5 uses
  %i.q = load i32, ptr %i.n, align 8, !tbaa !377  ; 5 uses
  %i.r = icmp slt i32 %i.p, %i.q
  %i.s = load i32, ptr %i.o, align 8, !tbaa !377  ; 6 uses
  br i1 %i.r, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph42
  %i.t = icmp slt i32 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %0, align 8, !tbaa !48
  store i32 %i.q, ptr %0, align 8, !tbaa !48
  store i32 %i.u, ptr %i.n, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !230
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !230
  store ptr %i.x, ptr %i.g, align 8, !tbaa !230
  store ptr %i.w, ptr %i.v, align 8, !tbaa !230
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.e:                                             ; preds = %bb.c
  %i.y = icmp slt i32 %i.p, %i.s
  %i.z = load i32, ptr %0, align 8, !tbaa !48     ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.s, ptr %0, align 8, !tbaa !48
  store i32 %i.z, ptr %i.o, align 8, !tbaa !48
  %i.aa = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !230
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !230
  store ptr %i.ac, ptr %i.g, align 8, !tbaa !230
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !230
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.g:                                             ; preds = %bb.e
  store i32 %i.p, ptr %0, align 8, !tbaa !48
  store i32 %i.z, ptr %i.f, align 8, !tbaa !48
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !230
  %i.ae = load ptr, ptr %i.h, align 8, !tbaa !230
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !230
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !230
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.h:                                             ; preds = %.lr.ph42
  %i.af = icmp slt i32 %i.p, %i.s
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %0, align 8, !tbaa !48
  store i32 %i.p, ptr %0, align 8, !tbaa !48
  store i32 %i.ag, ptr %i.f, align 8, !tbaa !48
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !230
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !230
  store ptr %i.ai, ptr %i.g, align 8, !tbaa !230
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !230
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.aj = icmp slt i32 %i.q, %i.s
  %i.ak = load i32, ptr %0, align 8, !tbaa !48    ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.s, ptr %0, align 8, !tbaa !48
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !48
  %i.al = getelementptr inbounds i8, ptr %storemerge2041, i64 -8 ; 2 uses
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !230
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !230
  store ptr %i.an, ptr %i.g, align 8, !tbaa !230
  store ptr %i.am, ptr %i.al, align 8, !tbaa !230
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

bb.l:                                             ; preds = %bb.j
  store i32 %i.q, ptr %0, align 8, !tbaa !48
  store i32 %i.ak, ptr %i.n, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !230
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !230
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !230
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !230
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader: ; preds = %bb.l, %bb.k, %bb.i, %bb.g, %bb.f, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader, %bb.o
  %.sroa.010.0.i.i = phi ptr [ %i.au, %bb.o ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.o ], [ %storemerge2041, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i.preheader ]
  %i.ar = load i32, ptr %0, align 8, !tbaa !377   ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i ], [ %i.au, %bb.m ] ; 9 uses
  %i.as = load i32, ptr %.sroa.010.1.i.i, align 8, !tbaa !377 ; 2 uses
  %i.at = icmp slt i32 %i.as, %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16 ; 2 uses
  br i1 %i.at, label %bb.m, label %.preheader.i.i, !llvm.loop !857

.preheader.i.i:                                   ; preds = %bb.m, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.m ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 5 uses
  %i.av = load i32, ptr %.sroa.0.1.i.i, align 8, !tbaa !377 ; 2 uses
  %i.aw = icmp slt i32 %i.ar, %i.av
  br i1 %i.aw, label %.preheader.i.i, label %bb.n, !llvm.loop !858

bb.n:                                             ; preds = %.preheader.i.i
  %i.ax = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ax, label %bb.o, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit

bb.o:                                             ; preds = %bb.n
  store i32 %i.av, ptr %.sroa.010.1.i.i, align 4, !tbaa !48
  store i32 %i.as, ptr %.sroa.0.1.i.i, align 4, !tbaa !48
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !230
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !230
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !230
  store ptr %i.ba, ptr %i.az, align 8, !tbaa !230
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_SL_SO_.exit.i, !llvm.loop !859

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEESL_SL_SL_SO_.exit: ; preds = %bb.n
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2041, i64 noundef %i.l)
  %i.bc = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bd = sub i64 %i.bc, %i.a
  %i.be = ashr exact i64 %i.bd, 4                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 16
  br i1 %i.bf, label %bb.b, label %.loopexit, !llvm.loop !856

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
  %.pre23.i = load i32, ptr %0, align 8, !tbaa !377
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %bb.d ], [ 0, %.lr.ph.i ] ; 2 uses
  %2 = phi i32 [ %3, %bb.d ], [ %.pre23.i, %.lr.ph.i ]
  %.sroa.09.021.i.idx = phi i64 [ %.sroa.09.021.i.add, %bb.d ], [ 16, %.lr.ph.i ] ; 3 uses
  %.pn20.i = phi ptr [ %.sroa.09.021.i.ptr, %bb.d ], [ %0, %.lr.ph.i ] ; 4 uses
  %.sroa.09.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.09.021.i.idx ; 6 uses
  %i.f = load i32, ptr %.sroa.09.021.i.ptr, align 8, !tbaa !377 ; 6 uses
  %i.g = icmp slt i32 %i.f, %2
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24
  %.sroa.48.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8 ; 2 uses
  br i1 %i.g, label %.lr.ph.i.i.i.i.i.preheader.i, label %bb.c

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %i.h = lshr exact i64 %.sroa.09.021.i.idx, 4    ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32 ; 2 uses
  %xtraiter62 = and i64 %i.h, 3                   ; 2 uses
  %lcmp.mod63.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod63.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %.lr.ph.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.p, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.h, %.lr.ph.i.i.i.i.i.preheader.i ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.prol ], [ %i.i, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i.i.prol ], [ %.sroa.09.021.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %prol.iter64 = phi i64 [ %prol.iter64.next, %.lr.ph.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ]
  %i.j = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.l = load i32, ptr %i.j, align 4, !tbaa !48
  store i32 %i.l, ptr %i.k, align 8, !tbaa !377
  %i.m = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !230
  %i.o = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !378
  %i.p = add nsw i64 %.010.i.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter64.next = add i64 %prol.iter64, 1     ; 2 uses
  %prol.iter64.cmp.not = icmp eq i64 %prol.iter64.next, %xtraiter62
  br i1 %prol.iter64.cmp.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol, !llvm.loop !860

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.h, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.k, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.09.021.i.ptr, %.lr.ph.i.i.i.i.i.preheader.i ], [ %i.j, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.q = icmp ult i64 %indvar, 3
  br i1 %i.q, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.r = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.s = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.t = load i32, ptr %i.r, align 4, !tbaa !48
  store i32 %i.t, ptr %i.s, align 8, !tbaa !377
  %i.u = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !230
  %i.w = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !378
  %i.x = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.y = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  %i.z = load i32, ptr %i.x, align 8, !tbaa !48
  store i32 %i.z, ptr %i.y, align 8, !tbaa !377
  %i.aa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !230
  %i.ac = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !378
  %i.ad = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48
  %i.ae = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48
  %i.af = load i32, ptr %i.ad, align 8, !tbaa !48
  store i32 %i.af, ptr %i.ae, align 8, !tbaa !377
  %i.ag = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !230
  %i.ai = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !378
  %i.aj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.al = load i32, ptr %i.aj, align 8, !tbaa !48
  store i32 %i.al, ptr %i.ak, align 8, !tbaa !377
  %i.am = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !230
  %i.ao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !378
  %i.ap = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.aq = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, !llvm.loop !861

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i32 %i.f, ptr %0, align 8, !tbaa !377
  store ptr %.sroa.48.0.copyload.i, ptr %i.e, align 8, !tbaa !378
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ar = load i32, ptr %.pn20.i, align 8, !tbaa !377 ; 2 uses
  %i.as = icmp slt i32 %i.f, %i.ar
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.at = phi i32 [ %i.ax, %.lr.ph.i.i ], [ %i.ar, %bb.c ]
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.c ] ; 3 uses
  %.sroa.06.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.09.021.i.ptr, %bb.c ] ; 3 uses
  store i32 %i.at, ptr %.sroa.06.010.i.i, align 8, !tbaa !377
  %i.au = getelementptr inbounds i8, ptr %.sroa.06.010.i.i, i64 -8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !230
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !378
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -16 ; 2 uses
  %i.ax = load i32, ptr %.sroa.0.0.i.i, align 8, !tbaa !377 ; 2 uses
  %i.ay = icmp slt i32 %i.f, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, !llvm.loop !862

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.09.021.i.ptr, %bb.c ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %i.f, ptr %.sroa.06.0.lcssa.i.i, align 8, !tbaa !377
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 8
  store ptr %.sroa.48.0.copyload.i, ptr %i.az, align 8, !tbaa !378
  %.pre.i = load i32, ptr %0, align 8, !tbaa !377
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i
  %3 = phi i32 [ %i.f, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i ]
  %.sroa.09.021.i.add = add nuw nsw i64 %.sroa.09.021.i.idx, 16 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.09.021.i.add, 256
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.b, !llvm.loop !863

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit: ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %.not6.i = icmp eq ptr %i.ba, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13
  %.sroa.0.07.i = phi ptr [ %i.bk, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13 ], [ %i.ba, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit ] ; 6 uses
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.07.i, align 8 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.55.0.copyload.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i, align 8
  %.sroa.0.09.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -16 ; 2 uses
  %i.bb = load i32, ptr %.sroa.0.09.i.i, align 8, !tbaa !377 ; 2 uses
  %i.bc = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bb
  br i1 %i.bc, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13

.lr.ph.i.i16:                                     ; preds = %.lr.ph.i12, %.lr.ph.i.i16
  %i.bd = phi i32 [ %i.bh, %.lr.ph.i.i16 ], [ %i.bb, %.lr.ph.i12 ]
  %.sroa.0.011.i.i17 = phi ptr [ %.sroa.0.0.i.i19, %.lr.ph.i.i16 ], [ %.sroa.0.09.i.i, %.lr.ph.i12 ] ; 3 uses
  %.sroa.06.010.i.i18 = phi ptr [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ], [ %.sroa.0.07.i, %.lr.ph.i12 ] ; 3 uses
  store i32 %i.bd, ptr %.sroa.06.010.i.i18, align 8, !tbaa !377
  %i.be = getelementptr inbounds i8, ptr %.sroa.06.010.i.i18, i64 -8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !230
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i18, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !378
  %.sroa.0.0.i.i19 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17, i64 -16 ; 2 uses
  %i.bh = load i32, ptr %.sroa.0.0.i.i19, align 8, !tbaa !377 ; 2 uses
  %i.bi = icmp slt i32 %.sroa.03.0.copyload.i.i, %i.bh
  br i1 %i.bi, label %.lr.ph.i.i16, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, !llvm.loop !862

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13: ; preds = %.lr.ph.i.i16, %.lr.ph.i12
  %.sroa.06.0.lcssa.i.i14 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.011.i.i17, %.lr.ph.i.i16 ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.lcssa.i.i14, align 8, !tbaa !377
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i14, i64 8
  store ptr %.sroa.55.0.copyload.i.i, ptr %i.bj, align 8, !tbaa !378
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bk, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i12, !llvm.loop !864

bb.e:                                             ; preds = %bb.a
  %i.bl = icmp eq ptr %0, %1
  br i1 %i.bl, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.e
  %.sroa.09.018.i21 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not19.i22 = icmp eq ptr %.sroa.09.018.i21, %1
  br i1 %.not19.i22, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.preheader.i20
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i24 = load i32, ptr %0, align 8, !tbaa !377
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i23
  %4 = phi i32 [ %.pre23.i24, %.lr.ph.i23 ], [ %5, %bb.i ]
  %.pn20.i25 = phi ptr [ %.sroa.09.018.i21, %.lr.ph.i23 ], [ %.sroa.09.0.i30, %bb.i ] ; 8 uses
  %.pn20.i26 = phi ptr [ %0, %.lr.ph.i23 ], [ %.pn20.i25, %bb.i ] ; 4 uses
  %i.bn = load i32, ptr %.pn20.i25, align 8, !tbaa !377 ; 6 uses
  %i.bo = icmp slt i32 %i.bn, %4
  %.sroa.48.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %.pn20.i26, i64 24
  %.sroa.48.0.copyload.i27 = load ptr, ptr %.sroa.48.0..sroa_idx.i26, align 8 ; 2 uses
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bp = ptrtoint ptr %.pn20.i25 to i64
  %i.bq = sub i64 %i.bp, %i.b
  %i.br = ashr exact i64 %i.bq, 4                 ; 5 uses
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i.preheader.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36

.lr.ph.i.i.i.i.i.preheader.i37:                   ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn20.i26, i64 32 ; 2 uses
  %xtraiter = and i64 %i.br, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol

.lr.ph.i.i.i.i.i.i38.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i37, %.lr.ph.i.i.i.i.i.i38.prol
  %.010.i.i.i.i.i.i39.prol = phi i64 [ %i.ca, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.br, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %.069.i.i.i.i.i.i40.prol = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i.i38.prol ], [ %i.bt, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %.078.i.i.i.i.i.i41.prol = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i38.prol ], [ %.pn20.i25, %.lr.ph.i.i.i.i.i.preheader.i37 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i38.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i37 ]
  %i.bu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -16 ; 3 uses
  %i.bv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -16 ; 3 uses
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !48
  store i32 %i.bw, ptr %i.bv, align 8, !tbaa !377
  %i.bx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41.prol, i64 -8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !230
  %i.bz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40.prol, i64 -8
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !378
  %i.ca = add nsw i64 %.010.i.i.i.i.i.i39.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i38.prol.loopexit, label %.lr.ph.i.i.i.i.i.i38.prol, !llvm.loop !865

.lr.ph.i.i.i.i.i.i38.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i38.prol, %.lr.ph.i.i.i.i.i.preheader.i37
  %.010.i.i.i.i.i.i39.unr = phi i64 [ %i.br, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.ca, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.069.i.i.i.i.i.i40.unr = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.bv, %.lr.ph.i.i.i.i.i.i38.prol ]
  %.078.i.i.i.i.i.i41.unr = phi ptr [ %.pn20.i25, %.lr.ph.i.i.i.i.i.preheader.i37 ], [ %i.bu, %.lr.ph.i.i.i.i.i.i38.prol ]
  %i.cb = icmp ult i64 %i.br, 4
  br i1 %i.cb, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, label %.lr.ph.i.i.i.i.i.i38

.lr.ph.i.i.i.i.i.i38:                             ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38
  %.010.i.i.i.i.i.i39 = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i.i38 ], [ %.010.i.i.i.i.i.i39.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i40 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i38 ], [ %.069.i.i.i.i.i.i40.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i41 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i38 ], [ %.078.i.i.i.i.i.i41.unr, %.lr.ph.i.i.i.i.i.i38.prol.loopexit ] ; 8 uses
  %i.cc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -16
  %i.cd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -16
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !48
  store i32 %i.ce, ptr %i.cd, align 8, !tbaa !377
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !230
  %i.ch = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -8
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !378
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -32
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -32
  %i.ck = load i32, ptr %i.ci, align 8, !tbaa !48
  store i32 %i.ck, ptr %i.cj, align 8, !tbaa !377
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !230
  %i.cn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -24
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !378
  %i.co = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -48
  %i.cp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -48
  %i.cq = load i32, ptr %i.co, align 8, !tbaa !48
  store i32 %i.cq, ptr %i.cp, align 8, !tbaa !377
  %i.cr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !230
  %i.ct = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -40
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !378
  %i.cu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -64 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -64 ; 2 uses
  %i.cw = load i32, ptr %i.cu, align 8, !tbaa !48
  store i32 %i.cw, ptr %i.cv, align 8, !tbaa !377
  %i.cx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i41, i64 -56
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !230
  %i.cz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i40, i64 -56
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !378
  %i.da = add nsw i64 %.010.i.i.i.i.i.i39, -4
  %i.db = icmp sgt i64 %.010.i.i.i.i.i.i39, 4
  br i1 %i.db, label %.lr.ph.i.i.i.i.i.i38, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36, !llvm.loop !861

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36: ; preds = %.lr.ph.i.i.i.i.i.i38.prol.loopexit, %.lr.ph.i.i.i.i.i.i38, %bb.g
  store i32 %i.bn, ptr %0, align 8, !tbaa !377
  store ptr %.sroa.48.0.copyload.i27, ptr %i.bm, align 8, !tbaa !378
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.dc = load i32, ptr %.pn20.i26, align 8, !tbaa !377 ; 2 uses
  %i.dd = icmp slt i32 %i.bn, %i.dc
  br i1 %i.dd, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28

.lr.ph.i.i32:                                     ; preds = %bb.h, %.lr.ph.i.i32
  %i.de = phi i32 [ %i.di, %.lr.ph.i.i32 ], [ %i.dc, %bb.h ]
  %.sroa.0.011.i.i33 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i32 ], [ %.pn20.i26, %bb.h ] ; 3 uses
  %.sroa.06.010.i.i34 = phi ptr [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ], [ %.pn20.i25, %bb.h ] ; 3 uses
  store i32 %i.de, ptr %.sroa.06.010.i.i34, align 8, !tbaa !377
  %i.df = getelementptr inbounds i8, ptr %.sroa.06.010.i.i34, i64 -8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !230
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i34, i64 8
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !378
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.0.011.i.i33, i64 -16 ; 2 uses
  %i.di = load i32, ptr %.sroa.0.0.i.i35, align 8, !tbaa !377 ; 2 uses
  %i.dj = icmp slt i32 %i.bn, %i.di
  br i1 %i.dj, label %.lr.ph.i.i32, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, !llvm.loop !862

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28: ; preds = %.lr.ph.i.i32, %bb.h
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.pn20.i25, %bb.h ], [ %.sroa.0.011.i.i33, %.lr.ph.i.i32 ] ; 2 uses
  store i32 %i.bn, ptr %.sroa.06.0.lcssa.i.i29, align 8, !tbaa !377
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 8
  store ptr %.sroa.48.0.copyload.i27, ptr %i.dk, align 8, !tbaa !378
  %.pre.i31 = load i32, ptr %0, align 8, !tbaa !377
  br label %bb.i

bb.i:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36
  %5 = phi i32 [ %i.bn, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i36 ], [ %.pre.i31, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i28 ]
  %.sroa.09.0.i30 = getelementptr inbounds nuw i8, ptr %.pn20.i25, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %.sroa.09.0.i30, %1
  br i1 %.not.i31, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit, label %bb.f, !llvm.loop !863

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit: ; preds = %bb.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_.exit.i13, %.preheader.i20, %bb.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SO_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 16
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.f, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -16 ; 4 uses
  %.sroa.04.0.copyload.i = load i32, ptr %i.f, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -8 ; 2 uses
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.g = load i32, ptr %0, align 4, !tbaa !48
  store i32 %i.g, ptr %i.f, align 8, !tbaa !377
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !230
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !378
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.i, %i.a                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 3 uses
  %i.l = add nsw i64 %i.k, -1
  %i.m = lshr i64 %i.l, 1
  %i.n = icmp sgt i64 %i.k, 2
  br i1 %i.n, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.038.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.o = shl i64 %.038.i.i, 1                     ; 2 uses
  %i.p = add i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr inbounds [16 x i8], ptr %0, i64 %i.p
  %i.r = or disjoint i64 %i.o, 1                  ; 2 uses
  %i.s = getelementptr inbounds [16 x i8], ptr %0, i64 %i.r
  %i.t = load i32, ptr %i.q, align 8, !tbaa !377
  %i.u = load i32, ptr %i.s, align 8, !tbaa !377
  %i.v = icmp slt i32 %i.t, %i.u
  %spec.select.i.i = select i1 %i.v, i64 %i.r, i64 %i.p ; 4 uses
  %i.w = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i.i ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i.i ; 2 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !48
  store i32 %i.y, ptr %i.x, align 8, !tbaa !377
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !230
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !378
  %i.ac = icmp slt i64 %spec.select.i.i, %i.m
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !19

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ad = and i64 %i.j, 16
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.af = add nsw i64 %i.k, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i, %i.ag
  br i1 %i.ah, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0.lcssa.i.i ; 2 uses
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !48
  store i32 %i.am, ptr %i.al, align 8, !tbaa !377
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !230
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !378
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.020.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.aj, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.020.i.i.i = phi i64 [ %.0921.i.i910.i, %bb.e ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0921.in.i.i.i = add nsw i64 %.020.i.i.i, -1
  %.0921.i.i910.i = lshr i64 %.0921.in.i.i.i, 1   ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.0921.i.i910.i ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !377 ; 2 uses
  %i.as = icmp slt i32 %i.ar, %.sroa.04.0.copyload.i
  br i1 %i.as, label %bb.e, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.at = getelementptr inbounds [16 x i8], ptr %0, i64 %.020.i.i.i ; 2 uses
  store i32 %i.ar, ptr %i.at, align 8, !tbaa !377
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !230
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !378
  %.not11.i = icmp eq i64 %.0921.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, label %.lr.ph.i.i.i, !llvm.loop !20

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.020.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.ax = getelementptr inbounds [16 x i8], ptr %0, i64 %.0.lcssa.i.i.i ; 2 uses
  store i32 %.sroa.04.0.copyload.i, ptr %i.ax, align 8, !tbaa !377
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %i.ay, align 8, !tbaa !378
  %i.az = icmp sgt i64 %i.j, 16
  br i1 %i.az, label %bb.b, label %._crit_edge, !llvm.loop !866

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_SL_RSO_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SL_RSO_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 16
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %i.m = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit, %bb.b
  %.011 = phi i64 [ %i.g, %bb.b ], [ %i.aw, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit ] ; 8 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %0, i64 %.011 ; 2 uses
  %.sroa.04.0.copyload = load i32, ptr %i.r, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %i.s = icmp slt i64 %.011, %i.i
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.038.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.011, %bb.c ] ; 2 uses
  %i.t = shl i64 %.038.i, 1                       ; 2 uses
  %i.u = add i64 %i.t, 2                          ; 2 uses
  %i.v = getelementptr inbounds [16 x i8], ptr %0, i64 %i.u
  %i.w = or disjoint i64 %i.t, 1                  ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %0, i64 %i.w
  %i.y = load i32, ptr %i.v, align 8, !tbaa !377
  %i.z = load i32, ptr %i.x, align 8, !tbaa !377
  %i.aa = icmp slt i32 %i.y, %i.z
  %spec.select.i = select i1 %i.aa, i64 %i.w, i64 %i.u ; 4 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %0, i64 %spec.select.i ; 2 uses
  %i.ac = getelementptr inbounds [16 x i8], ptr %0, i64 %.038.i ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !48
  store i32 %i.ad, ptr %i.ac, align 8, !tbaa !377
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !230
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !378
  %i.ah = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !19

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.011, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.aj = load i32, ptr %i.n, align 4, !tbaa !48
  store i32 %i.aj, ptr %i.o, align 8, !tbaa !377
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !230
  store ptr %i.ak, ptr %i.q, align 8, !tbaa !378
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.al = icmp sgt i64 %.1.i, %.011
  br i1 %i.al, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIiPN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZN3g2o17SparseBlockMatrixIS5_E19takePatternFromHashERNSF_24SparseBlockMatrixHashMapIS5_EEEUlRKT_RKT0_E_EEEvSL_SO_SO_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
end_hunk_0
