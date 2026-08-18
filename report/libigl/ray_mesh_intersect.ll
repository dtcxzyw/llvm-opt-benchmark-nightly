inline.NumInlined: 1502
inline.NumDeleted: 660
begin_hunk_0_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_SU_:bb.a

bb.o:                                             ; preds = %.lr.ph49
  %i.cp = fcmp olt float %i.ch, %i.cm
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.e, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cq = fcmp olt float %i.cj, %i.cm
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.cg, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cg, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.cf, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cf, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cv, %bb.v ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2548, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i.preheader ]
  %i.cr = load float, ptr %i.g, align 4, !tbaa !92 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i ], [ %i.cv, %bb.t ] ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !92
  %i.cu = fcmp olt float %i.ct, %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 20 ; 2 uses
  br i1 %i.cu, label %bb.t, label %.preheader.i.i, !llvm.loop !98

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -20 ; 5 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !92
  %i.cy = fcmp olt float %i.cr, %i.cx
  br i1 %i.cy, label %.preheader.i.i, label %bb.u, !llvm.loop !99

bb.u:                                             ; preds = %.preheader.i.i
  %i.cz = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cz, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEESM_SM_SM_SQ_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.010.1.i.i, i64 20, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.010.1.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.1.i.i, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.1.i.i, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SM_SQ_.exit.i, !llvm.loop !100

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEESM_SM_SM_SQ_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_SU_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2548, i64 noundef %i.cd)
  %i.da = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.db = sub i64 %i.da, %i.a                     ; 3 uses
  %i.dc = icmp sgt i64 %i.db, 320
  br i1 %i.dc, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SQ_.exit, !llvm.loop !91

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_SQ_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEESM_SM_SM_SQ_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SM_RSQ_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.03.i.i21 = alloca { i32, i32, float, float }, align 8 ; 4 uses
  %2 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %.sroa.03.i.i12 = alloca { i32, i32, float, float }, align 8 ; 4 uses
  %.sroa.03.i.i = alloca { i32, i32, float, float }, align 8 ; 4 uses
  %3 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 320
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %scevgep = getelementptr i8, ptr %0, i64 20
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 20, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 36
  %i.g = load float, ptr %i.f, align 4, !tbaa !92 ; 4 uses
  %i.h = load float, ptr %i.e, align 4, !tbaa !92
  %i.i = fcmp olt float %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.019.i.ptr, i64 20, i1 false), !tbaa.struct !54
  %i.j = icmp samesign ugt i64 %.sroa.0.019.i.idx, 20
  br i1 %i.j, label %bb.d, label %bb.e, !prof !87

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.k, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !54
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.019.i.ptr, i64 16, i1 false), !tbaa.struct !54
  %i.l = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  %i.m = load float, ptr %i.l, align 4, !tbaa !92
  %i.n = fcmp olt float %i.g, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.06.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.06.09.i.i, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.06.09.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.i.i, i64 20, i1 false), !tbaa.struct !54
  %i.o = getelementptr inbounds i8, ptr %.sroa.06.09.i.i, i64 -24
  %i.p = load float, ptr %i.o, align 4, !tbaa !92
  %i.q = fcmp olt float %i.g, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i, !llvm.loop !101

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i, i64 16, i1 false), !tbaa.struct !54
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 16
  store float %i.g, ptr %.sroa.4.0..sroa_idx4.i.i, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 20 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 320
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit, label %bb.b, !llvm.loop !102

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.not6.i = icmp eq ptr %i.r, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i14
  %.sroa.0.07.i = phi ptr [ %i.y, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i14 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.07.i, i64 16, i1 false), !tbaa.struct !54
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !55 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -4
  %i.t = load float, ptr %i.s, align 4, !tbaa !92
  %i.u = fcmp olt float %.sroa.4.0.copyload.i.i, %i.t
  br i1 %i.u, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i14

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i18
  %.sroa.06.09.i.i19 = phi ptr [ %.sroa.0.0.i.i20, %.lr.ph.i.i18 ], [ %.sroa.0.07.i, %.lr.ph.i13 ] ; 3 uses
  %.sroa.0.0.i.i20 = getelementptr inbounds i8, ptr %.sroa.06.09.i.i19, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.06.09.i.i19, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.i.i20, i64 20, i1 false), !tbaa.struct !54
  %i.v = getelementptr inbounds i8, ptr %.sroa.06.09.i.i19, i64 -24
  %i.w = load float, ptr %i.v, align 4, !tbaa !92
  %i.x = fcmp olt float %.sroa.4.0.copyload.i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i14, !llvm.loop !101

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i14: ; preds = %.lr.ph.i.i18, %.lr.ph.i13
  %.sroa.06.0.lcssa.i.i15 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i13 ], [ %.sroa.0.0.i.i20, %.lr.ph.i.i18 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.0.lcssa.i.i15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12, i64 16, i1 false), !tbaa.struct !54
  %.sroa.4.0..sroa_idx4.i.i16 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i15, i64 16
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx4.i.i16, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 20 ; 2 uses
  %.not.i17 = icmp eq ptr %i.y, %1
  br i1 %.not.i17, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit, label %.lr.ph.i13, !llvm.loop !103

bb.h:                                             ; preds = %bb.a
  %i.z = icmp eq ptr %0, %1
  br i1 %i.z, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit, label %.preheader.i22

.preheader.i22:                                   ; preds = %bb.h
  %.sroa.0.016.i23 = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.not17.i24 = icmp eq ptr %.sroa.0.016.i23, %1
  br i1 %.not17.i24, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.preheader.i22
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i25
  %.sroa.0.019.i26 = phi ptr [ %.sroa.0.016.i23, %.lr.ph.i25 ], [ %.sroa.0.0.i31, %bb.o ] ; 7 uses
  %.pn18.i27 = phi ptr [ %0, %.lr.ph.i25 ], [ %.sroa.0.019.i26, %bb.o ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 36
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !92 ; 4 uses
  %i.ad = load float, ptr %i.aa, align 4, !tbaa !92
  %i.ae = fcmp olt float %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.019.i26, i64 20, i1 false), !tbaa.struct !54
  %i.af = ptrtoint ptr %.sroa.0.019.i26 to i64
  %i.ag = sub i64 %i.af, %i.b                     ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 20
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !87

bb.k:                                             ; preds = %bb.j
  %4 = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 40
  %.neg24.i37 = udiv exact i64 %i.ag, 20
  %.neg24.neg.i38 = sub nsw i64 0, %.neg24.i37
  %5 = getelementptr inbounds [20 x i8], ptr %4, i64 %.neg24.neg.i38
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %5, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

bb.l:                                             ; preds = %bb.j
  %i.ai = icmp eq i64 %i.ag, 20
  br i1 %i.ai, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aj, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !54
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i21, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.019.i26, i64 16, i1 false), !tbaa.struct !54
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !92
  %i.am = fcmp olt float %i.ac, %i.al
  br i1 %i.am, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i28

.lr.ph.i.i33:                                     ; preds = %bb.n, %.lr.ph.i.i33
  %.sroa.06.09.i.i34 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i33 ], [ %.sroa.0.019.i26, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.06.09.i.i34, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.06.09.i.i34, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.i.i35, i64 20, i1 false), !tbaa.struct !54
  %i.an = getelementptr inbounds i8, ptr %.sroa.06.09.i.i34, i64 -24
  %i.ao = load float, ptr %i.an, align 4, !tbaa !92
  %i.ap = fcmp olt float %i.ac, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i28, !llvm.loop !101

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i28: ; preds = %.lr.ph.i.i33, %bb.n
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.0.019.i26, %bb.n ], [ %.sroa.0.0.i.i35, %.lr.ph.i.i33 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.0.lcssa.i.i29, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i21, i64 16, i1 false), !tbaa.struct !54
  %.sroa.4.0..sroa_idx4.i.i30 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 16
  store float %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i30, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i21)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36
  %.sroa.0.0.i31 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i26, i64 20 ; 2 uses
  %.not.i32 = icmp eq ptr %.sroa.0.0.i31, %1
  br i1 %.not.i32, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit, label %bb.i, !llvm.loop !102

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SQ_.exit.i14, %.preheader.i22, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi1ELi3ELi1ELi1ELi3EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSD_5BlockIKNSE_IiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEEbRKNSD_10MatrixBaseIT_EERKNSL_IT0_EERKNSL_IT1_EERKNSL_IT2_EERS6_INS3_INSU_6ScalarEEESaIS13_EEEUlRKS4_S18_E_EEEvSM_SM_SQ_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_SR_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.014.i.i = alloca { i32, i32, float, float }, align 8 ; 4 uses
  %3 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %4 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %5 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %6 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %7 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %8 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %9 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %.sroa.06.i.i.i = alloca { i32, i32, float, float }, align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 320
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph49

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEESJ_SJ_SJ_SN_.exit
  %i.i = icmp eq i64 %i.cd, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph49, !llvm.loop !104

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa45 = phi i64 [ %i.c, %.lr.ph ], [ %i.db, %bb.b ]
  %storemerge25.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.lcssa45, 20             ; 3 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %i.j, 1
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i, %._crit_edge
  %.08.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ar, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i ] ; 8 uses
  %i.t = getelementptr inbounds [20 x i8], ptr %0, i64 %.08.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false)
  %.sroa.417.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.417.0.copyload.i.i = load float, ptr %.sroa.417.0..sroa.0.0..sroa_idx.i.i, align 4, !tbaa !55 ; 2 uses
  %i.u = icmp slt i64 %.08.i.i, %i.n
  br i1 %i.u, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.08.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.038.i.i.i, 1                   ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [20 x i8], ptr %0, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [20 x i8], ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !92
  %i.ae = fcmp olt float %i.ab, %i.ad
  %spec.select.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [20 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ag = getelementptr inbounds [20 x i8], ptr %0, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ag, ptr noundef nonnull align 4 dereferenceable(20) %i.af, i64 20, i1 false), !tbaa.struct !54
  %i.ah = icmp slt i64 %spec.select.i.i.i, %i.n
  br i1 %i.ah, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !105

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.08.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i.i.i, %i.l
  %or.cond.i.i = select i1 %i.p, i1 %i.ai, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(20) %i.r, i64 20, i1 false), !tbaa.struct !54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i.i.i, %.08.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ak = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !92
  %i.an = fcmp olt float %i.am, %.sroa.417.0.copyload.i.i
  br i1 %i.an, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.ao = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ao, ptr noundef nonnull align 4 dereferenceable(20) %i.ak, i64 20, i1 false), !tbaa.struct !54
  %i.ap = icmp sgt i64 %.0919.i.i.i.i, %.08.i.i
  br i1 %i.ap, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i, !llvm.loop !106

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.aq = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store float %.sroa.417.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i.i)
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.ar = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !107

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_RSN_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.as, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_RSN_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.as, i64 16, i1 false)
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4
  %.sroa.49.0.copyload.i.i.i = load float, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 4, !tbaa !55 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.as, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !54
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.a                     ; 3 uses
  %i.av = sdiv exact i64 %i.au, 20                ; 3 uses
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = sdiv i64 %i.aw, 2
  %i.ay = icmp sgt i64 %i.au, 40
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.az = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds [20 x i8], ptr %0, i64 %i.ba
  %i.bc = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bd = getelementptr inbounds [20 x i8], ptr %0, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = load float, ptr %i.be, align 4, !tbaa !92
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !92
  %i.bi = fcmp olt float %i.bf, %i.bh
  %spec.select.i.i.i.i = select i1 %i.bi, i64 %i.bc, i64 %i.ba ; 4 uses
  %i.bj = getelementptr inbounds [20 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bk = getelementptr inbounds [20 x i8], ptr %0, i64 %.038.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bk, ptr noundef nonnull align 4 dereferenceable(20) %i.bj, i64 20, i1 false), !tbaa.struct !54
  %i.bl = icmp slt i64 %spec.select.i.i.i.i, %i.ax
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !105

end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_SR_:bb.a

bb.o:                                             ; preds = %.lr.ph49
  %i.cp = fcmp olt float %i.ch, %i.cm
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.e, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cq = fcmp olt float %i.cj, %i.cm
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.cg, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cg, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.cf, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cf, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cv, %bb.v ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2548, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader ]
  %i.cr = load float, ptr %i.g, align 4, !tbaa !92 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i ], [ %i.cv, %bb.t ] ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !92
  %i.cu = fcmp olt float %i.ct, %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 20 ; 2 uses
  br i1 %i.cu, label %bb.t, label %.preheader.i.i, !llvm.loop !109

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -20 ; 5 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !92
  %i.cy = fcmp olt float %i.cr, %i.cx
  br i1 %i.cy, label %.preheader.i.i, label %bb.u, !llvm.loop !110

bb.u:                                             ; preds = %.preheader.i.i
  %i.cz = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cz, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEESJ_SJ_SJ_SN_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.010.1.i.i, i64 20, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.010.1.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.1.i.i, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.1.i.i, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i, !llvm.loop !111

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEESJ_SJ_SJ_SN_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_SR_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2548, i64 noundef %i.cd)
  %i.da = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.db = sub i64 %i.da, %i.a                     ; 3 uses
  %i.dc = icmp sgt i64 %i.db, 320
  br i1 %i.dc, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit, !llvm.loop !104

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEESJ_SJ_SJ_SN_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_RSN_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.03.i.i21 = alloca { i32, i32, float, float }, align 8 ; 4 uses
  %2 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %.sroa.03.i.i12 = alloca { i32, i32, float, float }, align 8 ; 4 uses
  %.sroa.03.i.i = alloca { i32, i32, float, float }, align 8 ; 4 uses
  %3 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 320
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %scevgep = getelementptr i8, ptr %0, i64 20
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 20, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 36
  %i.g = load float, ptr %i.f, align 4, !tbaa !92 ; 4 uses
  %i.h = load float, ptr %i.e, align 4, !tbaa !92
  %i.i = fcmp olt float %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.019.i.ptr, i64 20, i1 false), !tbaa.struct !54
  %i.j = icmp samesign ugt i64 %.sroa.0.019.i.idx, 20
  br i1 %i.j, label %bb.d, label %bb.e, !prof !87

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.k, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !54
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.019.i.ptr, i64 16, i1 false), !tbaa.struct !54
  %i.l = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  %i.m = load float, ptr %i.l, align 4, !tbaa !92
  %i.n = fcmp olt float %i.g, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.06.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.06.09.i.i, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.06.09.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.i.i, i64 20, i1 false), !tbaa.struct !54
  %i.o = getelementptr inbounds i8, ptr %.sroa.06.09.i.i, i64 -24
  %i.p = load float, ptr %i.o, align 4, !tbaa !92
  %i.q = fcmp olt float %i.g, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i, !llvm.loop !112

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i, i64 16, i1 false), !tbaa.struct !54
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 16
  store float %i.g, ptr %.sroa.4.0..sroa_idx4.i.i, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 20 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 320
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %bb.b, !llvm.loop !113

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.not6.i = icmp eq ptr %i.r, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14
  %.sroa.0.07.i = phi ptr [ %i.y, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.07.i, i64 16, i1 false), !tbaa.struct !54
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !55 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -4
  %i.t = load float, ptr %i.s, align 4, !tbaa !92
  %i.u = fcmp olt float %.sroa.4.0.copyload.i.i, %i.t
  br i1 %i.u, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i18
  %.sroa.06.09.i.i19 = phi ptr [ %.sroa.0.0.i.i20, %.lr.ph.i.i18 ], [ %.sroa.0.07.i, %.lr.ph.i13 ] ; 3 uses
  %.sroa.0.0.i.i20 = getelementptr inbounds i8, ptr %.sroa.06.09.i.i19, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.06.09.i.i19, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.i.i20, i64 20, i1 false), !tbaa.struct !54
  %i.v = getelementptr inbounds i8, ptr %.sroa.06.09.i.i19, i64 -24
  %i.w = load float, ptr %i.v, align 4, !tbaa !92
  %i.x = fcmp olt float %.sroa.4.0.copyload.i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14, !llvm.loop !112

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14: ; preds = %.lr.ph.i.i18, %.lr.ph.i13
  %.sroa.06.0.lcssa.i.i15 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i13 ], [ %.sroa.0.0.i.i20, %.lr.ph.i.i18 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.0.lcssa.i.i15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12, i64 16, i1 false), !tbaa.struct !54
  %.sroa.4.0..sroa_idx4.i.i16 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i15, i64 16
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx4.i.i16, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 20 ; 2 uses
  %.not.i17 = icmp eq ptr %i.y, %1
  br i1 %.not.i17, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %.lr.ph.i13, !llvm.loop !114

bb.h:                                             ; preds = %bb.a
  %i.z = icmp eq ptr %0, %1
  br i1 %i.z, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %.preheader.i22

.preheader.i22:                                   ; preds = %bb.h
  %.sroa.0.016.i23 = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.not17.i24 = icmp eq ptr %.sroa.0.016.i23, %1
  br i1 %.not17.i24, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.preheader.i22
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i25
  %.sroa.0.019.i26 = phi ptr [ %.sroa.0.016.i23, %.lr.ph.i25 ], [ %.sroa.0.0.i31, %bb.o ] ; 7 uses
  %.pn18.i27 = phi ptr [ %0, %.lr.ph.i25 ], [ %.sroa.0.019.i26, %bb.o ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 36
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !92 ; 4 uses
  %i.ad = load float, ptr %i.aa, align 4, !tbaa !92
  %i.ae = fcmp olt float %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.019.i26, i64 20, i1 false), !tbaa.struct !54
  %i.af = ptrtoint ptr %.sroa.0.019.i26 to i64
  %i.ag = sub i64 %i.af, %i.b                     ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 20
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !87

bb.k:                                             ; preds = %bb.j
  %4 = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 40
  %.neg24.i37 = udiv exact i64 %i.ag, 20
  %.neg24.neg.i38 = sub nsw i64 0, %.neg24.i37
  %5 = getelementptr inbounds [20 x i8], ptr %4, i64 %.neg24.neg.i38
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %5, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

bb.l:                                             ; preds = %bb.j
  %i.ai = icmp eq i64 %i.ag, 20
  br i1 %i.ai, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aj, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !54
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i21, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.019.i26, i64 16, i1 false), !tbaa.struct !54
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !92
  %i.am = fcmp olt float %i.ac, %i.al
  br i1 %i.am, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i28

.lr.ph.i.i33:                                     ; preds = %bb.n, %.lr.ph.i.i33
  %.sroa.06.09.i.i34 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i33 ], [ %.sroa.0.019.i26, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.06.09.i.i34, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.06.09.i.i34, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.i.i35, i64 20, i1 false), !tbaa.struct !54
  %i.an = getelementptr inbounds i8, ptr %.sroa.06.09.i.i34, i64 -24
  %i.ao = load float, ptr %i.an, align 4, !tbaa !92
  %i.ap = fcmp olt float %i.ac, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i28, !llvm.loop !112

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i28: ; preds = %.lr.ph.i.i33, %bb.n
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.0.019.i26, %bb.n ], [ %.sroa.0.0.i.i35, %.lr.ph.i.i33 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.0.lcssa.i.i29, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i21, i64 16, i1 false), !tbaa.struct !54
  %.sroa.4.0..sroa_idx4.i.i30 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 16
  store float %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i30, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i21)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36
  %.sroa.0.0.i31 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i26, i64 20 ; 2 uses
  %.not.i32 = icmp eq ptr %.sroa.0.0.i31, %1
  br i1 %.not.i32, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %bb.i, !llvm.loop !113

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14, %.preheader.i22, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_SR_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.014.i.i = alloca { i32, i32, float, float }, align 8 ; 4 uses
  %3 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %4 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %5 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %6 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %7 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %8 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %9 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %.sroa.06.i.i.i = alloca { i32, i32, float, float }, align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 320
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph49

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEESJ_SJ_SJ_SN_.exit
  %i.i = icmp eq i64 %i.cd, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph49, !llvm.loop !115

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa45 = phi i64 [ %i.c, %.lr.ph ], [ %i.db, %bb.b ]
  %storemerge25.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.lcssa45, 20             ; 3 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %i.j, 1
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i, %._crit_edge
  %.08.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ar, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i ] ; 8 uses
  %i.t = getelementptr inbounds [20 x i8], ptr %0, i64 %.08.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.t, i64 16, i1 false)
  %.sroa.417.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.417.0.copyload.i.i = load float, ptr %.sroa.417.0..sroa.0.0..sroa_idx.i.i, align 4, !tbaa !55 ; 2 uses
  %i.u = icmp slt i64 %.08.i.i, %i.n
  br i1 %i.u, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.08.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.038.i.i.i, 1                   ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [20 x i8], ptr %0, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [20 x i8], ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !92
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !92
  %i.ae = fcmp olt float %i.ab, %i.ad
  %spec.select.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [20 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ag = getelementptr inbounds [20 x i8], ptr %0, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ag, ptr noundef nonnull align 4 dereferenceable(20) %i.af, i64 20, i1 false), !tbaa.struct !54
  %i.ah = icmp slt i64 %spec.select.i.i.i, %i.n
  br i1 %i.ah, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !116

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.08.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i.i.i, %i.l
  %or.cond.i.i = select i1 %i.p, i1 %i.ai, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, ptr noundef nonnull align 4 dereferenceable(20) %i.r, i64 20, i1 false), !tbaa.struct !54
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i.i.i, %.08.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ak = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !92
  %i.an = fcmp olt float %i.am, %.sroa.417.0.copyload.i.i
  br i1 %i.an, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.ao = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ao, ptr noundef nonnull align 4 dereferenceable(20) %i.ak, i64 20, i1 false), !tbaa.struct !54
  %i.ap = icmp sgt i64 %.0919.i.i.i.i, %.08.i.i
  br i1 %i.ap, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i, !llvm.loop !117

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.aq = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.i.i, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store float %.sroa.417.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i.i)
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.ar = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !118

.lr.ph.i.i:                                       ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_RSN_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.as, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_RSN_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.as, i64 16, i1 false)
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4
  %.sroa.49.0.copyload.i.i.i = load float, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 4, !tbaa !55 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.as, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !54
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.a                     ; 3 uses
  %i.av = sdiv exact i64 %i.au, 20                ; 3 uses
  %i.aw = add nsw i64 %i.av, -1
  %i.ax = sdiv i64 %i.aw, 2
  %i.ay = icmp sgt i64 %i.au, 40
  br i1 %i.ay, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.az = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.ba = add i64 %i.az, 2                        ; 2 uses
  %i.bb = getelementptr inbounds [20 x i8], ptr %0, i64 %i.ba
  %i.bc = or disjoint i64 %i.az, 1                ; 2 uses
  %i.bd = getelementptr inbounds [20 x i8], ptr %0, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = load float, ptr %i.be, align 4, !tbaa !92
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !92
  %i.bi = fcmp olt float %i.bf, %i.bh
  %spec.select.i.i.i.i = select i1 %i.bi, i64 %i.bc, i64 %i.ba ; 4 uses
  %i.bj = getelementptr inbounds [20 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.bk = getelementptr inbounds [20 x i8], ptr %0, i64 %.038.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bk, ptr noundef nonnull align 4 dereferenceable(20) %i.bj, i64 20, i1 false), !tbaa.struct !54
  %i.bl = icmp slt i64 %spec.select.i.i.i.i, %i.ax
  br i1 %i.bl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !116

end_hunk_1
begin_hunk_2_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_SR_:bb.a

bb.o:                                             ; preds = %.lr.ph49
  %i.cp = fcmp olt float %i.ch, %i.cm
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.e, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.e, ptr noundef nonnull align 4 dereferenceable(20) %6, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  %i.cq = fcmp olt float %i.cj, %i.cm
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.cg, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cg, ptr noundef nonnull align 4 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %i.cf, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cf, ptr noundef nonnull align 4 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader: ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %bb.m, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader, %bb.v
  %.sroa.010.0.i.i = phi ptr [ %i.cv, %bb.v ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.v ], [ %storemerge2548, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i.preheader ]
  %i.cr = load float, ptr %i.g, align 4, !tbaa !92 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i ], [ %i.cv, %bb.t ] ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 16
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !92
  %i.cu = fcmp olt float %i.ct, %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 20 ; 2 uses
  br i1 %i.cu, label %bb.t, label %.preheader.i.i, !llvm.loop !120

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.t ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -20 ; 5 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !92
  %i.cy = fcmp olt float %i.cr, %i.cx
  br i1 %i.cy, label %.preheader.i.i, label %bb.u, !llvm.loop !121

bb.u:                                             ; preds = %.preheader.i.i
  %i.cz = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.cz, label %bb.v, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEESJ_SJ_SJ_SN_.exit

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.010.1.i.i, i64 20, i1 false), !tbaa.struct !54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.010.1.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.1.i.i, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.1.i.i, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SJ_SN_.exit.i, !llvm.loop !122

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEESJ_SJ_SJ_SN_.exit: ; preds = %bb.u
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_SR_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge2548, i64 noundef %i.cd)
  %i.da = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.db = sub i64 %i.da, %i.a                     ; 3 uses
  %i.dc = icmp sgt i64 %i.db, 320
  br i1 %i.dc, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit, !llvm.loop !115

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEESJ_SJ_SJ_SN_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_RSN_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.03.i.i21 = alloca { i32, i32, float, float }, align 8 ; 4 uses
  %2 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %.sroa.03.i.i12 = alloca { i32, i32, float, float }, align 8 ; 4 uses
  %.sroa.03.i.i = alloca { i32, i32, float, float }, align 8 ; 4 uses
  %3 = alloca %"struct.igl::Hit.31", align 4      ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 320
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %scevgep = getelementptr i8, ptr %0, i64 20
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.019.i.idx = phi i64 [ 20, %.lr.ph.i ], [ %.sroa.0.019.i.add, %bb.g ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.019.i.ptr, %bb.g ] ; 3 uses
  %.sroa.0.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 36
  %i.g = load float, ptr %i.f, align 4, !tbaa !92 ; 4 uses
  %i.h = load float, ptr %i.e, align 4, !tbaa !92
  %i.i = fcmp olt float %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.019.i.ptr, i64 20, i1 false), !tbaa.struct !54
  %i.j = icmp samesign ugt i64 %.sroa.0.019.i.idx, 20
  br i1 %i.j, label %bb.d, label %bb.e, !prof !87

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.k, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !54
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.019.i.ptr, i64 16, i1 false), !tbaa.struct !54
  %i.l = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 16
  %i.m = load float, ptr %i.l, align 4, !tbaa !92
  %i.n = fcmp olt float %i.g, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.06.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.019.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.06.09.i.i, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.06.09.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.i.i, i64 20, i1 false), !tbaa.struct !54
  %i.o = getelementptr inbounds i8, ptr %.sroa.06.09.i.i, i64 -24
  %i.p = load float, ptr %i.o, align 4, !tbaa !92
  %i.q = fcmp olt float %i.g, %i.p
  br i1 %i.q, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i, !llvm.loop !123

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.06.0.lcssa.i.i = phi ptr [ %.sroa.0.019.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i, i64 16, i1 false), !tbaa.struct !54
  %.sroa.4.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i, i64 16
  store float %i.g, ptr %.sroa.4.0..sroa_idx4.i.i, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.019.i.add = add nuw nsw i64 %.sroa.0.019.i.idx, 20 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.019.i.add, 320
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %bb.b, !llvm.loop !124

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %.not6.i = icmp eq ptr %i.r, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14
  %.sroa.0.07.i = phi ptr [ %i.y, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14 ], [ %i.r, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.07.i, i64 16, i1 false), !tbaa.struct !54
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !55 ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.07.i, i64 -4
  %i.t = load float, ptr %i.s, align 4, !tbaa !92
  %i.u = fcmp olt float %.sroa.4.0.copyload.i.i, %i.t
  br i1 %i.u, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14

.lr.ph.i.i18:                                     ; preds = %.lr.ph.i13, %.lr.ph.i.i18
  %.sroa.06.09.i.i19 = phi ptr [ %.sroa.0.0.i.i20, %.lr.ph.i.i18 ], [ %.sroa.0.07.i, %.lr.ph.i13 ] ; 3 uses
  %.sroa.0.0.i.i20 = getelementptr inbounds i8, ptr %.sroa.06.09.i.i19, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.06.09.i.i19, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.i.i20, i64 20, i1 false), !tbaa.struct !54
  %i.v = getelementptr inbounds i8, ptr %.sroa.06.09.i.i19, i64 -24
  %i.w = load float, ptr %i.v, align 4, !tbaa !92
  %i.x = fcmp olt float %.sroa.4.0.copyload.i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14, !llvm.loop !123

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14: ; preds = %.lr.ph.i.i18, %.lr.ph.i13
  %.sroa.06.0.lcssa.i.i15 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i13 ], [ %.sroa.0.0.i.i20, %.lr.ph.i.i18 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.0.lcssa.i.i15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i12, i64 16, i1 false), !tbaa.struct !54
  %.sroa.4.0..sroa_idx4.i.i16 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i15, i64 16
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx4.i.i16, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i12)
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 20 ; 2 uses
  %.not.i17 = icmp eq ptr %i.y, %1
  br i1 %.not.i17, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %.lr.ph.i13, !llvm.loop !125

bb.h:                                             ; preds = %bb.a
  %i.z = icmp eq ptr %0, %1
  br i1 %i.z, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %.preheader.i22

.preheader.i22:                                   ; preds = %bb.h
  %.sroa.0.016.i23 = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %.not17.i24 = icmp eq ptr %.sroa.0.016.i23, %1
  br i1 %.not17.i24, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.preheader.i22
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i25
  %.sroa.0.019.i26 = phi ptr [ %.sroa.0.016.i23, %.lr.ph.i25 ], [ %.sroa.0.0.i31, %bb.o ] ; 7 uses
  %.pn18.i27 = phi ptr [ %0, %.lr.ph.i25 ], [ %.sroa.0.019.i26, %bb.o ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 36
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !92 ; 4 uses
  %i.ad = load float, ptr %i.aa, align 4, !tbaa !92
  %i.ae = fcmp olt float %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.019.i26, i64 20, i1 false), !tbaa.struct !54
  %i.af = ptrtoint ptr %.sroa.0.019.i26 to i64
  %i.ag = sub i64 %i.af, %i.b                     ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 20
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !87

bb.k:                                             ; preds = %bb.j
  %4 = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 40
  %.neg24.i37 = udiv exact i64 %i.ag, 20
  %.neg24.neg.i38 = sub nsw i64 0, %.neg24.i37
  %5 = getelementptr inbounds [20 x i8], ptr %4, i64 %.neg24.neg.i38
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %5, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ag, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

bb.l:                                             ; preds = %bb.j
  %i.ai = icmp eq i64 %i.ag, 20
  br i1 %i.ai, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.aj, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false), !tbaa.struct !54
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i21)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i21, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.019.i26, i64 16, i1 false), !tbaa.struct !54
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn18.i27, i64 16
  %i.al = load float, ptr %i.ak, align 4, !tbaa !92
  %i.am = fcmp olt float %i.ac, %i.al
  br i1 %i.am, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i28

.lr.ph.i.i33:                                     ; preds = %bb.n, %.lr.ph.i.i33
  %.sroa.06.09.i.i34 = phi ptr [ %.sroa.0.0.i.i35, %.lr.ph.i.i33 ], [ %.sroa.0.019.i26, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i35 = getelementptr inbounds i8, ptr %.sroa.06.09.i.i34, i64 -20 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.06.09.i.i34, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.0.0.i.i35, i64 20, i1 false), !tbaa.struct !54
  %i.an = getelementptr inbounds i8, ptr %.sroa.06.09.i.i34, i64 -24
  %i.ao = load float, ptr %i.an, align 4, !tbaa !92
  %i.ap = fcmp olt float %i.ac, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i33, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i28, !llvm.loop !123

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i28: ; preds = %.lr.ph.i.i33, %bb.n
  %.sroa.06.0.lcssa.i.i29 = phi ptr [ %.sroa.0.019.i26, %bb.n ], [ %.sroa.0.0.i.i35, %.lr.ph.i.i33 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.06.0.lcssa.i.i29, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.i.i21, i64 16, i1 false), !tbaa.struct !54
  %.sroa.4.0..sroa_idx4.i.i30 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i29, i64 16
  store float %i.ac, ptr %.sroa.4.0..sroa_idx4.i.i30, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i21)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i28, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i36
  %.sroa.0.0.i31 = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i26, i64 20 ; 2 uses
  %.not.i32 = icmp eq ptr %.sroa.0.0.i31, %1
  br i1 %.not.i32, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit, label %bb.i, !llvm.loop !124

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_.exit.i14, %.preheader.i22, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIfEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIfLi3ELi1ELi0ELi3ELi1EEESF_NSE_IfLin1ELi3ELi1ELin1ELi3EEENSE_IiLin1ELi3ELi1ELin1ELi3EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SN_SR_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.014.i.i = alloca { i32, i32, double, double }, align 8 ; 4 uses
  %3 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %4 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %5 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %6 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %7 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %8 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %9 = alloca %"struct.igl::Hit", align 8         ; 4 uses
  %.sroa.06.i.i.i = alloca { i32, i32, double, double }, align 8 ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph57

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEESJ_SJ_SJ_SN_.exit
  %i.j = icmp eq i64 %i.ce, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph57, !llvm.loop !126

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa53 = phi i64 [ %i.d, %.lr.ph ], [ %i.dd, %bb.b ] ; 2 uses
  %.lcssa51 = phi i64 [ %i.c, %.lr.ph ], [ %i.dc, %bb.b ] ; 2 uses
  %storemerge27.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.010.1.i.i, %bb.b ]
  %i.k = add nsw i64 %.lcssa53, -2                ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %.lcssa53, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %.lcssa51, 32
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i, %._crit_edge
  %.08.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.ar, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i ] ; 8 uses
  %i.t = getelementptr inbounds [32 x i8], ptr %0, i64 %.08.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %.sroa.417.0..sroa.0.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.417.0.copyload.i.i = load double, ptr %.sroa.417.0..sroa.0.0..sroa_idx.i.i, align 8, !tbaa !18 ; 2 uses
  %i.u = icmp slt i64 %.08.i.i, %i.n
  br i1 %i.u, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.038.i.i.i = phi i64 [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %.08.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.038.i.i.i, 1                   ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [32 x i8], ptr %0, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [32 x i8], ptr %0, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !78
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !78
  %i.ae = fcmp olt double %i.ab, %i.ad
  %spec.select.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i
  %i.ag = getelementptr inbounds [32 x i8], ptr %0, i64 %.038.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 32, i1 false), !tbaa.struct !16
  %i.ah = icmp slt i64 %spec.select.i.i.i, %i.n
  br i1 %i.ah, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !127

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.08.i.i, %bb.c ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ai = icmp eq i64 %.0.lcssa.i.i.i, %i.l
  %or.cond.i.i = select i1 %i.p, i1 %i.ai, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false), !tbaa.struct !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.q, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i.i.i, %.08.i.i
  br i1 %i.aj, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i

.lr.ph.i.i.i.i17:                                 ; preds = %bb.e, %bb.f
  %.018.i.i.i.i = phi i64 [ %.0919.i.i.i.i, %bb.f ], [ %.1.i.i.i, %bb.e ] ; 3 uses
  %.0919.in.i.i.i.i = add nsw i64 %.018.i.i.i.i, -1
  %.0919.i.i.i.i = sdiv i64 %.0919.in.i.i.i.i, 2  ; 4 uses
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0919.i.i.i.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load double, ptr %i.al, align 8, !tbaa !78
  %i.an = fcmp olt double %i.am, %.sroa.417.0.copyload.i.i
  br i1 %i.an, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.018.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !tbaa.struct !16
  %i.ap = icmp sgt i64 %.0919.i.i.i.i, %.08.i.i
  br i1 %i.ap, label %.lr.ph.i.i.i.i17, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i, !llvm.loop !128

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i17, %bb.e
  %.0.lcssa.i.i.i.i16 = phi i64 [ %.1.i.i.i, %bb.e ], [ %.0919.i.i.i.i, %bb.f ], [ %.018.i.i.i.i, %.lr.ph.i.i.i.i17 ]
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.014.i.i, i64 24, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store double %.sroa.417.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i.i)
  %.not.i.i = icmp eq i64 %.08.i.i, 0
  %i.ar = add nsw i64 %.08.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit, label %bb.c, !llvm.loop !129

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SN_SN_SR_SV_.exit.i.i
  %i.as = icmp sgt i64 %.lcssa51, 32
  br i1 %i.as, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_RSN_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.at, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_RSN_.exit.i.i ], [ %storemerge27.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN3igl3HitIdEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_18ray_mesh_intersectIN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEESF_NSE_IdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEEEEbRKNSD_10MatrixBaseIT_EERKNSI_IT0_EERKNSI_IT1_EERKNSI_IT2_EERS6_INS3_INSR_6ScalarEEESaIS10_EEEUlRKS4_S15_E_EEEvSJ_SJ_SJ_SN_.exit ] ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  %.sroa.49.0.copyload.i.i.i = load double, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !16
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.a                     ; 3 uses
  %i.aw = ashr exact i64 %i.av, 5                 ; 3 uses
  %i.ax = add nsw i64 %i.aw, -1
  %i.ay = lshr i64 %i.ax, 1
  %i.az = icmp sgt i64 %i.aw, 2
  br i1 %i.az, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.ba = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.bb = add i64 %i.ba, 2                        ; 2 uses
  %i.bc = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bb
  %i.bd = or disjoint i64 %i.ba, 1                ; 2 uses
  %i.be = getelementptr inbounds [32 x i8], ptr %0, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !78
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !78
  %i.bj = fcmp olt double %i.bg, %i.bi
  %spec.select.i.i.i.i = select i1 %i.bj, i64 %i.bd, i64 %i.bb ; 4 uses
  %i.bk = getelementptr inbounds [32 x i8], ptr %0, i64 %spec.select.i.i.i.i
end_hunk_2
