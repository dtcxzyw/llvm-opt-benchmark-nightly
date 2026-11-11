Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/per_corner_normals?download=true
inline.NumInlined: 2599
inline.NumDeleted: 1283
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IlLin1ELi1ELi0ELin1ELi1EEES7_S5_EEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EENS9_6ScalarERKNS8_IT1_EERKNS8_IT2_EERNS3_15PlainObjectBaseIT3_EEEUllE0_EEbS9_RKSD_mEUlmE_ZNS1_IlSU_EEbS9_SW_mEUllmE_SX_EEbS9_SW_RKSI_RKSM_m:bb.a
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp85, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bh, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.bd, %bb.e ]
  call void @_ZNSt6vectorISt6threadSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %.pn.pn

.loopexit58:                                      ; preds = %.lr.ph, %.preheader57, %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit, %bb.a
  %.135 = phi i1 [ false, %bb.a ], [ true, %_ZNSt6vectorISt6threadSaIS0_EED2Ev.exit ], [ false, %.preheader57 ], [ false, %.lr.ph ]
  ret i1 %.135
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IlLin1ELi1ELi0ELin1ELi1EEESC_SA_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EENSE_6ScalarERKNSD_IT1_EERKNSD_IT2_EERNS8_15PlainObjectBaseIT3_EEEUllE0_EEbSE_RKSI_mEUlmE_ZNS6_IlSZ_EEbSE_S11_mEUllmE_S12_EEbSE_S11_RKSN_RKSR_mEUlllmE_RlS1B_RmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 0, ptr %i.b, align 8, !tbaa !97
  %i.e = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IlLin1ELi1ELi0ELin1ELi1EEESB_S9_EEvRKNS7_10MatrixBaseIT_EERKNSC_IT0_EENSD_6ScalarERKNSC_IT1_EERKNSC_IT2_EERNS7_15PlainObjectBaseIT3_EEEUllE0_EEbSD_RKSH_mEUlmE_ZNS5_IlSY_EEbSD_S10_mEUllmE_S11_EEbSD_S10_RKSM_RKSQ_mEUlllmE_llmEEEEEE, i64 16), ptr %i.e, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %4, align 8, !tbaa !70
  store i64 %i.g, ptr %i.f, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %3, align 8, !tbaa !70
  store i64 %i.i, ptr %i.h, align 8, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load i64, ptr %2, align 8, !tbaa !70
  store i64 %i.k, ptr %i.j, align 8, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = load i64, ptr %1, align 8, !tbaa !57
  store i64 %i.m, ptr %i.l, align 8, !tbaa !57
  store ptr %i.e, ptr %5, align 8, !tbaa !105
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 %5, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %5, align 8, !tbaa !105    ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlS18_RmEvEEOSB_DpOT0_.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #22, !inline_history !17
  br label %_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlS18_RmEvEEOSB_DpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %5, align 8, !tbaa !105    ; 3 uses
  %.not.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i8.i, label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit10.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #22, !inline_history !17
  br label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit10.i

_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit10.i: ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.d
  resume { ptr, i32 } %i.r

_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlS18_RmEvEEOSB_DpOT0_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !93
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IlLin1ELi1ELi0ELin1ELi1EEESC_SA_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EENSE_6ScalarERKNSD_IT1_EERKNSD_IT2_EERNS8_15PlainObjectBaseIT3_EEEUllE0_EEbSE_RKSI_mEUlmE_ZNS6_IlSZ_EEbSE_S11_mEUllmE_S12_EEbSE_S11_RKSN_RKSR_mEUlllmE_RlS1B_RmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !95
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlS18_RmEvEEOSB_DpOT0_.exit
  %i.y = phi ptr [ %.pre, %bb.e ], [ %i.x, %_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlS18_RmEvEEOSB_DpOT0_.exit ]
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  ret ptr %i.z
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorISt6threadSaIS0_EE12emplace_backIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IlLin1ELi1ELi0ELin1ELi1EEESC_SA_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EENSE_6ScalarERKNSD_IT1_EERKNSD_IT2_EERNS8_15PlainObjectBaseIT3_EEEUllE0_EEbSE_RKSI_mEUlmE_ZNS6_IlSZ_EEbSE_S11_mEUllmE_S12_EEbSE_S11_RKSN_RKSR_mEUlllmE_RlRKlRmEEERS0_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 0, ptr %i.b, align 8, !tbaa !97
  %i.e = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IlLin1ELi1ELi0ELin1ELi1EEESB_S9_EEvRKNS7_10MatrixBaseIT_EERKNSC_IT0_EENSD_6ScalarERKNSC_IT1_EERKNSC_IT2_EERNS7_15PlainObjectBaseIT3_EEEUllE0_EEbSD_RKSH_mEUlmE_ZNS5_IlSY_EEbSD_S10_mEUllmE_S11_EEbSD_S10_RKSM_RKSQ_mEUlllmE_llmEEEEEE, i64 16), ptr %i.e, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %4, align 8, !tbaa !70
  store i64 %i.g, ptr %i.f, align 8, !tbaa !99
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %3, align 8, !tbaa !70
  store i64 %i.i, ptr %i.h, align 8, !tbaa !101
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load i64, ptr %2, align 8, !tbaa !70
  store i64 %i.k, ptr %i.j, align 8, !tbaa !103
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = load i64, ptr %1, align 8, !tbaa !57
  store i64 %i.m, ptr %i.l, align 8, !tbaa !57
  store ptr %i.e, ptr %5, align 8, !tbaa !105
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 %5, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %5, align 8, !tbaa !105    ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlRKlRmEvEEOSB_DpOT0_.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #22, !inline_history !18
  br label %_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlRKlRmEvEEOSB_DpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %5, align 8, !tbaa !105    ; 3 uses
  %.not.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i8.i, label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit10.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #22, !inline_history !18
  br label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit10.i

_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit10.i: ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.d
  resume { ptr, i32 } %i.r

_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlRKlRmEvEEOSB_DpOT0_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !93
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IlLin1ELi1ELi0ELin1ELi1EEESC_SA_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EENSE_6ScalarERKNSD_IT1_EERKNSD_IT2_EERNS8_15PlainObjectBaseIT3_EEEUllE0_EEbSE_RKSI_mEUlmE_ZNS6_IlSZ_EEbSE_S11_mEUllmE_S12_EEbSE_S11_RKSN_RKSR_mEUlllmE_RlRKlRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !95
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlRKlRmEvEEOSB_DpOT0_.exit
  %i.y = phi ptr [ %.pre, %bb.e ], [ %i.x, %_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlRKlRmEvEEOSB_DpOT0_.exit ]
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  ret ptr %i.z
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3igl18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IlLin1ELi1ELi0ELin1ELi1EEES5_S3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EENS7_6ScalarERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EEENKUllE0_clEl(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !691, !nonnull !84, !align !85
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50, !noalias !692 ; 3 uses
  %.idx.i.i.i.i = mul nsw i64 %1, 24
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i.i.i.i ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !693, !nonnull !84, !align !85
  %i.f = load i64, ptr %i.e, align 8, !tbaa !70   ; 4 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !694, !nonnull !84 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !32
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !695, !nonnull !84
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !84
  %i.s = getelementptr i8, ptr %i.c, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !84, !align !85
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = mul i64 %i.f, %1
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !696, !nonnull !84, !align !85 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39, !noalias !697 ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.x ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !40, !noalias !697 ; 18 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.af = icmp sgt i64 %i.ac, 1
  %i.ag = icmp sgt i64 %i.ac, 0                   ; 2 uses
  %i.ah = shl i64 %i.ac, 3
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.ah
  %i.ai = mul i64 %i.f, %1
  %i.aj = add i64 %i.ai, %i.ac
  %i.ak = add i64 %i.ac, -1                       ; 3 uses
  %i.al = add i64 %i.ac, -2
  %min.iters.check60 = icmp ugt i64 %i.ac, 3
  %n.vec62 = and i64 %i.ac, 9223372036854775804   ; 3 uses
  %cmp.n73 = icmp eq i64 %i.ac, %n.vec62
  %xtraiter = and i64 %i.ac, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter79 = and i64 %i.ak, 3                  ; 3 uses
  %i.am = icmp ult i64 %i.al, 3
  %unroll_iter = and i64 %i.ak, -4
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  %lcmp.mod82 = icmp ne i64 %xtraiter79, 0
  %min.iters.check = icmp ne i64 %i.ac, 1
  %n.vec = and i64 %i.ac, 9223372036854775806     ; 3 uses
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br label %bb.b

._crit_edge48:                                    ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE9normalizeEv.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph47, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE9normalizeEv.exit
  %.01945 = phi i64 [ 0, %.lr.ph47 ], [ %i.dp, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE9normalizeEv.exit ] ; 5 uses
  %i.an = add i64 %i.aj, %.01945
  %i.ao = shl i64 %i.an, 3
  %scevgep58 = getelementptr i8, ptr %i.z, i64 %i.ao
  %i.ap = mul nsw i64 %i.l, %.01945
  %i.aq = getelementptr [4 x i8], ptr %i.m, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !43
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [8 x i8], ptr %i.p, i64 %i.as ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !70
  %i.av = getelementptr i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !70 ; 2 uses
  %sext = shl i64 %i.au, 32
  %i.ax = ashr exact i64 %sext, 32                ; 2 uses
  %i.ay = icmp sgt i64 %i.aw, %i.ax
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.az = load ptr, ptr %i.r, align 8, !tbaa !75
  %i.ba = getelementptr [8 x i8], ptr %i.aa, i64 %.01945 ; 5 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit, %bb.b
  %i.bb = getelementptr [8 x i8], ptr %i.aa, i64 %.01945 ; 12 uses
  br i1 %i.ad, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE9normalizeEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bc = load i64, ptr %i.ae, align 8, !tbaa !41 ; 11 uses
  %i.bd = load double, ptr %i.bb, align 8, !tbaa !45 ; 2 uses
  %i.be = fmul double %i.bd, %i.bd                ; 3 uses
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.01724.i.i.i.i.i = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %.02223.i.i.i.i.i = phi double [ %i.cb, %.lr.ph.i.i.i.i.i ], [ %i.be, %.lr.ph.i.i.i.i.i.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.bf = mul nsw i64 %.01724.i.i.i.i.i, %i.bc
  %i.bg = getelementptr [8 x i8], ptr %i.bb, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !45 ; 2 uses
  %i.bi = fmul double %i.bh, %i.bh
  %i.bj = fadd double %.02223.i.i.i.i.i, %i.bi
  %i.bk = add nuw nsw i64 %.01724.i.i.i.i.i, 1
  %i.bl = mul nsw i64 %i.bk, %i.bc
  %i.bm = getelementptr [8 x i8], ptr %i.bb, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !45 ; 2 uses
  %i.bo = fmul double %i.bn, %i.bn
  %i.bp = fadd double %i.bj, %i.bo
  %i.bq = add nuw nsw i64 %.01724.i.i.i.i.i, 2
  %i.br = mul nsw i64 %i.bq, %i.bc
  %i.bs = getelementptr [8 x i8], ptr %i.bb, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !45 ; 2 uses
  %i.bu = fmul double %i.bt, %i.bt
  %i.bv = fadd double %i.bp, %i.bu
  %i.bw = add nuw nsw i64 %.01724.i.i.i.i.i, 3
  %i.bx = mul nsw i64 %i.bw, %i.bc
  %i.by = getelementptr [8 x i8], ptr %i.bb, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !45 ; 2 uses
  %i.ca = fmul double %i.bz, %i.bz
  %i.cb = fadd double %i.bv, %i.ca                ; 3 uses
  %i.cc = add nuw nsw i64 %.01724.i.i.i.i.i, 4    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %lcmp.mod80.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.epil.init = phi double [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cb, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod82)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.epil = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.02223.i.i.i.i.i.epil = phi double [ %i.ch, %.lr.ph.i.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %i.cd = mul nsw i64 %.01724.i.i.i.i.i.epil, %i.bc
  %i.ce = getelementptr [8 x i8], ptr %i.bb, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !45 ; 2 uses
  %i.cg = fmul double %i.cf, %i.cf
  %i.ch = fadd double %.02223.i.i.i.i.i.epil, %i.cg ; 2 uses
  %i.ci = add nuw nsw i64 %.01724.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter79
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !677

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.c
  %.0.i.i.i = phi double [ %i.be, %bb.c ], [ %i.cb, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.loopexit.unr-lcssa ], [ %i.ch, %.lr.ph.i.i.i.i.i.epil ] ; 2 uses
  %i.cj = fcmp ogt double %.0.i.i.i, 0.000000e+00
  br i1 %i.cj, label %bb.d, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE9normalizeEv.exit

bb.d:                                             ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i
  %.scalar.i = tail call double @llvm.sqrt.f64(double %.0.i.i.i) ; 6 uses
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE9normalizeEv.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.d
  %ident.check.not = icmp eq i64 %i.bc, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %.lr.ph.i.i.i.i.i.i.i.preheader78

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ck, align 8, !tbaa !45
  %i.cl = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.cl, ptr %i.ck, align 8, !tbaa !45
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !678

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE9normalizeEv.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader78

.lr.ph.i.i.i.i.i.i.i.preheader78:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.cn = sub nsw i64 %i.ac, %.05.i.i.i.i.i.i.i.ph
  %xtraiter83 = and i64 %i.cn, 3                  ; 2 uses
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader78, %.lr.ph.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.prol = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader78 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader78 ]
  %i.co = mul nsw i64 %.05.i.i.i.i.i.i.i.prol, %i.bc
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.co ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !45
  %i.cr = fdiv double %i.cq, %.scalar.i
  store double %i.cr, ptr %i.cp, align 8, !tbaa !45
  %i.cs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter83
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !679

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader78
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader78 ], [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ct = sub nsw i64 %.05.i.i.i.i.i.i.i.ph, %i.ac
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE9normalizeEv.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.cv = mul nsw i64 %.05.i.i.i.i.i.i.i, %i.bc
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.cv ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !45
  %i.cy = fdiv double %i.cx, %.scalar.i
  store double %i.cy, ptr %i.cw, align 8, !tbaa !45
  %i.cz = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1
  %i.da = mul nsw i64 %i.cz, %i.bc
  %i.db = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.da ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !45
  %i.dd = fdiv double %i.dc, %.scalar.i
  store double %i.dd, ptr %i.db, align 8, !tbaa !45
  %i.de = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2
  %i.df = mul nsw i64 %i.de, %i.bc
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.df ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !45
  %i.di = fdiv double %i.dh, %.scalar.i
  store double %i.di, ptr %i.dg, align 8, !tbaa !45
  %i.dj = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 3
  %i.dk = mul nsw i64 %i.dj, %i.bc
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.dk ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !45
  %i.dn = fdiv double %i.dm, %.scalar.i
  store double %i.dn, ptr %i.dl, align 8, !tbaa !45
  %i.do = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.do, %i.ac
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE9normalizeEv.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !680

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE9normalizeEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block, %._crit_edge, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i, %bb.d
  %i.dp = add nuw nsw i64 %.01945, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dp, %i.f
  br i1 %exitcond.not, label %._crit_edge48, label %bb.b, !llvm.loop !681

bb.e:                                             ; preds = %.lr.ph, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit ] ; 2 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !70 ; 2 uses
  %.idx.i.i.i.i21 = mul nsw i64 %i.dr, 24         ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i.i.i.i21 ; 7 uses
  %i.dt = load <2 x double>, ptr %i.c, align 1, !tbaa !80
  %i.du = load <2 x double>, ptr %i.ds, align 1, !tbaa !80
  %i.dv = fmul <2 x double> %i.dt, %i.du          ; 2 uses
  %shift = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.dv, %shift
  %i.dw = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dx = getelementptr i8, ptr %i.ds, i64 16
  %2 = load double, ptr %i.s, align 8, !tbaa !45
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !45
  %i.dz = fmul double %2, %i.dy
  %i.ea = fadd double %i.dw, %i.dz
  %3 = load double, ptr %i.u, align 8, !tbaa !45
  %i.eb = fcmp ogt double %i.ea, %3
  br i1 %i.eb, label %bb.f, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit

bb.f:                                             ; preds = %bb.e
  %i.ec = load ptr, ptr %i.v, align 8, !tbaa !698, !nonnull !84, !align !85
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !66
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.dr
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !45, !noalias !699 ; 4 uses
  %i.eg = load i64, ptr %i.ae, align 8, !tbaa !41 ; 4 uses
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.f
  %ident.check55.not = icmp eq i64 %i.eg, 1
  %or.cond75 = select i1 %min.iters.check60, i1 %ident.check55.not, i1 false
  br i1 %or.cond75, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i.preheader77

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.eh = getelementptr i8, ptr %scevgep, i64 %.idx.i.i.i.i21
  %bound0 = icmp ult ptr %i.ba, %i.eh
  %bound1 = icmp ult ptr %i.ds, %scevgep58
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader77, label %vector.ph61

vector.ph61:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert63 = insertelement <2 x double> poison, double %i.ef, i64 0
  %broadcast.splat64 = shufflevector <2 x double> %broadcast.splatinsert63, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph61
  %index66 = phi i64 [ 0, %vector.ph61 ], [ %index.next71, %vector.body65 ] ; 3 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %index66 ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index66 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load67 = load <2 x double>, ptr %i.ej, align 8, !tbaa !45, !alias.scope !700
  %wide.load68 = load <2 x double>, ptr %i.ek, align 8, !tbaa !45, !alias.scope !700
  %i.el = fmul <2 x double> %broadcast.splat64, %wide.load67
  %i.em = fmul <2 x double> %broadcast.splat64, %wide.load68
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %wide.load69 = load <2 x double>, ptr %i.ei, align 8, !tbaa !45, !alias.scope !701, !noalias !700
  %wide.load70 = load <2 x double>, ptr %i.en, align 8, !tbaa !45, !alias.scope !701, !noalias !700
  %i.eo = fadd <2 x double> %i.el, %wide.load69
  %i.ep = fadd <2 x double> %i.em, %wide.load70
  store <2 x double> %i.eo, ptr %i.ei, align 8, !tbaa !45, !alias.scope !701, !noalias !700
  store <2 x double> %i.ep, ptr %i.en, align 8, !tbaa !45, !alias.scope !701, !noalias !700
  %index.next71 = add nuw i64 %index66, 4         ; 2 uses
  %i.eq = icmp eq i64 %index.next71, %n.vec62
  br i1 %i.eq, label %middle.block72, label %vector.body65, !llvm.loop !687

middle.block72:                                   ; preds = %vector.body65
  br i1 %cmp.n73, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader77

.lr.ph.i.i.i.i.i.i.preheader77:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block72
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec62, %middle.block72 ] ; 5 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader77
  %i.er = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.eg
  %i.es = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.er ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.05.i.i.i.i.i.i.ph
  %i.eu = load double, ptr %i.et, align 8, !tbaa !45
  %i.ev = fmul double %i.ef, %i.eu
  %i.ew = load double, ptr %i.es, align 8, !tbaa !45
  %i.ex = fadd double %i.ev, %i.ew
  store double %i.ex, ptr %i.es, align 8, !tbaa !45
  %i.ey = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader77
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader77 ], [ %i.ey, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ez = icmp eq i64 %i.ak, %.05.i.i.i.i.i.i.ph
  br i1 %i.ez, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.fp, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.fa = mul nsw i64 %.05.i.i.i.i.i.i, %i.eg
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.05.i.i.i.i.i.i
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !45
  %i.fe = fmul double %i.ef, %i.fd
  %i.ff = load double, ptr %i.fb, align 8, !tbaa !45
  %i.fg = fadd double %i.fe, %i.ff
  store double %i.fg, ptr %i.fb, align 8, !tbaa !45
  %i.fh = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.fi = mul nsw i64 %i.fh, %i.eg
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.fh
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !45
  %i.fm = fmul double %i.ef, %i.fl
  %i.fn = load double, ptr %i.fj, align 8, !tbaa !45
  %i.fo = fadd double %i.fm, %i.fn
  store double %i.fo, ptr %i.fj, align 8, !tbaa !45
  %i.fp = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.fp, %i.ac
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !688

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block72, %bb.f, %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.fq = icmp sgt i64 %i.aw, %indvars.iv.next
  br i1 %i.fq, label %bb.e, label %._crit_edge, !llvm.loop !689
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IlLin1ELi1ELi0ELin1ELi1EEESC_SA_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EENSE_6ScalarERKNSD_IT1_EERKNSD_IT2_EERNS8_15PlainObjectBaseIT3_EEEUllE0_EEbSE_RKSI_mEUlmE_ZNS6_IlSZ_EEbSE_S11_mEUllmE_S12_EEbSE_S11_RKSN_RKSR_mEUlllmE_RlS1B_RmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !92     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
  unreachable

_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !97
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IlLin1ELi1ELi0ELin1ELi1EEESB_S9_EEvRKNS7_10MatrixBaseIT_EERKNSC_IT0_EENSD_6ScalarERKNSC_IT1_EERKNSC_IT2_EERNS7_15PlainObjectBaseIT3_EEEUllE0_EEbSD_RKSH_mEUlmE_ZNS5_IlSY_EEbSD_S10_mEUllmE_S11_EEbSD_S10_RKSM_RKSQ_mEUlllmE_llmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !70
  store i64 %i.t, ptr %i.s, align 8, !tbaa !99
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !70
  store i64 %i.v, ptr %i.u, align 8, !tbaa !101
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !70
  store i64 %i.x, ptr %i.w, align 8, !tbaa !103
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !57
  store i64 %i.z, ptr %i.y, align 8, !tbaa !57
  store ptr %i.r, ptr %6, align 8, !tbaa !105
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !105   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #22, !inline_history !17
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !105   ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #22, !inline_history !17
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %i.aj = add i64 %i.m, -8
  %i.ak = sub i64 %i.aj, %i.e                     ; 2 uses
  %i.al = lshr i64 %i.ak, 3
  %i.am = add nuw nsw i64 %i.al, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ak, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader74, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.am, 4611686018427387900     ; 3 uses
  %i.an = shl i64 %n.vec, 3                       ; 2 uses
  %i.ao = getelementptr i8, ptr %i.p, i64 %i.an   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.aq ; 2 uses
  %next.gep54 = getelementptr i8, ptr %i.c, i64 %i.aq ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.ar = getelementptr i8, ptr %next.gep54, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep54, align 8, !tbaa !70, !alias.scope !716
  %wide.load55 = load <2 x i64>, ptr %i.ar, align 8, !tbaa !70, !alias.scope !716
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !70, !alias.scope !715
  store <2 x i64> %wide.load55, ptr %i.as, align 8, !tbaa !70, !alias.scope !715
  store <2 x i64> zeroinitializer, ptr %next.gep54, align 8, !tbaa !70, !alias.scope !716
  store <2 x i64> zeroinitializer, ptr %i.ar, align 8, !tbaa !70, !alias.scope !716
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !705

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader74

.lr.ph.i.i.i.preheader74:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.ao, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader74, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader74 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  %i.au = load i64, ptr %.0911.i.i.i, align 8, !tbaa !70, !alias.scope !716
  store i64 %i.au, ptr %.012.i.i.i, align 8, !tbaa !70, !alias.scope !715
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !70, !alias.scope !716
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !706

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ao, %middle.block ], [ %i.aw, %.lr.ph.i.i.i ] ; 2 uses
  %i.ax = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader

.lr.ph.i.i.i30.preheader:                         ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.ay = add i64 %i.d, -8
  %i.az = sub i64 %i.ay, %i.m                     ; 3 uses
  %i.ba = lshr i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check59 = icmp ult i64 %i.az, 152
  br i1 %min.iters.check59, label %.lr.ph.i.i.i30.preheader73, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i30.preheader
  %i.bc = and i64 %i.az, -8                       ; 2 uses
  %i.bd = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %i.bf = getelementptr i8, ptr %1, i64 %i.bc
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %bound0 = icmp ult ptr %i.ax, %i.bg
  %bound1 = icmp ult ptr %1, %i.be
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i30.preheader73, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck
  %n.vec61 = and i64 %i.bb, 4611686018427387900   ; 3 uses
  %i.bh = shl i64 %n.vec61, 3                     ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ax, i64 %i.bh  ; 2 uses
  %i.bj = getelementptr i8, ptr %1, i64 %i.bh
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %i.bk = shl i64 %index63, 3                     ; 2 uses
  %next.gep64 = getelementptr i8, ptr %i.ax, i64 %i.bk ; 2 uses
  %next.gep65 = getelementptr i8, ptr %1, i64 %i.bk ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.bl = getelementptr i8, ptr %next.gep65, i64 16 ; 2 uses
  %wide.load66 = load <2 x i64>, ptr %next.gep65, align 8, !tbaa !70, !alias.scope !719
  %wide.load67 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !70, !alias.scope !719
  %i.bm = getelementptr i8, ptr %next.gep64, i64 16
  store <2 x i64> %wide.load66, ptr %next.gep64, align 8, !tbaa !70, !alias.scope !720, !noalias !721
  store <2 x i64> %wide.load67, ptr %i.bm, align 8, !tbaa !70, !alias.scope !720, !noalias !721
  store <2 x i64> zeroinitializer, ptr %next.gep65, align 8, !tbaa !70, !alias.scope !719
  store <2 x i64> zeroinitializer, ptr %i.bl, align 8, !tbaa !70, !alias.scope !719
  %index.next68 = add nuw i64 %index63, 4         ; 2 uses
  %i.bn = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.bn, label %middle.block69, label %vector.body62, !llvm.loop !713

middle.block69:                                   ; preds = %vector.body62
  %cmp.n70 = icmp eq i64 %i.bb, %n.vec61
  br i1 %cmp.n70, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30.preheader73
end_hunk_0
