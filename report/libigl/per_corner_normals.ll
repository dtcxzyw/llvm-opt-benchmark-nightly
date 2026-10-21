Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/per_corner_normals?download=true
inline.NumInlined: 2599
inline.NumDeleted: 1283
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN3igl12parallel_forIlZNS_12parallel_forIlZNS_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IlLin1ELi1ELi0ELin1ELi1EEES7_S5_EEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EENS9_6ScalarERKNS8_IT1_EERKNS8_IT2_EERNS3_15PlainObjectBaseIT3_EEEUllE0_EEbS9_RKSD_mEUlmE_ZNS1_IlSU_EEbS9_SW_mEUllmE_SX_EEbS9_SW_RKSI_RKSM_m:bb.a
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp82, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.au, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.m ], [ %i.aq, %bb.e ]
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 0, ptr %i.b, align 8, !tbaa !98
  %i.e = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IlLin1ELi1ELi0ELin1ELi1EEESB_S9_EEvRKNS7_10MatrixBaseIT_EERKNSC_IT0_EENSD_6ScalarERKNSC_IT1_EERKNSC_IT2_EERNS7_15PlainObjectBaseIT3_EEEUllE0_EEbSD_RKSH_mEUlmE_ZNS5_IlSY_EEbSD_S10_mEUllmE_S11_EEbSD_S10_RKSM_RKSQ_mEUlllmE_llmEEEEEE, i64 16), ptr %i.e, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %4, align 8, !tbaa !71
  store i64 %i.g, ptr %i.f, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.i, ptr %i.h, align 8, !tbaa !102
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load i64, ptr %2, align 8, !tbaa !71
  store i64 %i.k, ptr %i.j, align 8, !tbaa !104
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = load i64, ptr %1, align 8, !tbaa !58
  store i64 %i.m, ptr %i.l, align 8, !tbaa !58
  store ptr %i.e, ptr %5, align 8, !tbaa !106
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 %5, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %5, align 8, !tbaa !106    ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlS18_RmEvEEOSB_DpOT0_.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #22, !inline_history !18
  br label %_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlS18_RmEvEEOSB_DpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %5, align 8, !tbaa !106    ; 3 uses
  %.not.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i8.i, label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit10.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #22, !inline_history !18
  br label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit10.i

_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit10.i: ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.d
  resume { ptr, i32 } %i.r

_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlS18_RmEvEEOSB_DpOT0_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !94
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IlLin1ELi1ELi0ELin1ELi1EEESC_SA_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EENSE_6ScalarERKNSD_IT1_EERKNSD_IT2_EERNS8_15PlainObjectBaseIT3_EEEUllE0_EEbSE_RKSI_mEUlmE_ZNS6_IlSZ_EEbSE_S11_mEUllmE_S12_EEbSE_S11_RKSN_RKSR_mEUlllmE_RlS1B_RmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !96
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 0, ptr %i.b, align 8, !tbaa !98
  %i.e = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IlLin1ELi1ELi0ELin1ELi1EEESB_S9_EEvRKNS7_10MatrixBaseIT_EERKNSC_IT0_EENSD_6ScalarERKNSC_IT1_EERKNSC_IT2_EERNS7_15PlainObjectBaseIT3_EEEUllE0_EEbSD_RKSH_mEUlmE_ZNS5_IlSY_EEbSD_S10_mEUllmE_S11_EEbSD_S10_RKSM_RKSQ_mEUlllmE_llmEEEEEE, i64 16), ptr %i.e, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %4, align 8, !tbaa !71
  store i64 %i.g, ptr %i.f, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.i, ptr %i.h, align 8, !tbaa !102
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load i64, ptr %2, align 8, !tbaa !71
  store i64 %i.k, ptr %i.j, align 8, !tbaa !104
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.m = load i64, ptr %1, align 8, !tbaa !58
  store i64 %i.m, ptr %i.l, align 8, !tbaa !58
  store ptr %i.e, ptr %5, align 8, !tbaa !106
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 %5, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %5, align 8, !tbaa !106    ; 3 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlRKlRmEvEEOSB_DpOT0_.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n) #22, !inline_history !19
  br label %_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlRKlRmEvEEOSB_DpOT0_.exit

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %5, align 8, !tbaa !106    ; 3 uses
  %.not.i8.i = icmp eq ptr %i.s, null
  br i1 %.not.i8.i, label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit10.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s) #22, !inline_history !19
  br label %_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit10.i

_ZNSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EED2Ev.exit10.i: ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.d
  resume { ptr, i32 } %i.r

_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlRKlRmEvEEOSB_DpOT0_.exit: ; preds = %bb.c, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !94
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IlLin1ELi1ELi0ELin1ELi1EEESC_SA_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EENSE_6ScalarERKNSD_IT1_EERKNSD_IT2_EERNS8_15PlainObjectBaseIT3_EEEUllE0_EEbSE_RKSI_mEUlmE_ZNS6_IlSZ_EEbSE_S11_mEUllmE_S12_EEbSE_S11_RKSN_RKSR_mEUlllmE_RlRKlRmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !96
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlRKlRmEvEEOSB_DpOT0_.exit
  %i.y = phi ptr [ %.pre, %bb.e ], [ %i.x, %_ZNSt6threadC2IRKZN3igl12parallel_forIlZNS1_12parallel_forIlZNS1_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IlLin1ELi1ELi0ELin1ELi1EEES9_S7_EEvRKNS5_10MatrixBaseIT_EERKNSA_IT0_EENSB_6ScalarERKNSA_IT1_EERKNSA_IT2_EERNS5_15PlainObjectBaseIT3_EEEUllE0_EEbSB_RKSF_mEUlmE_ZNS3_IlSW_EEbSB_SY_mEUllmE_SZ_EEbSB_SY_RKSK_RKSO_mEUlllmE_JRlRKlRmEvEEOSB_DpOT0_.exit ]
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  ret ptr %i.z
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZN3igl18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IlLin1ELi1ELi0ELin1ELi1EEES5_S3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EENS7_6ScalarERKNS6_IT1_EERKNS6_IT2_EERNS1_15PlainObjectBaseIT3_EEENKUllE0_clEl(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !536, !nonnull !85, !align !86
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51, !noalias !537 ; 3 uses
  %.idx.i.i.i.i = mul nsw i64 %1, 24
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i.i.i.i ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !538, !nonnull !85, !align !86
  %i.f = load i64, ptr %i.e, align 8, !tbaa !71   ; 4 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !539, !nonnull !85 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr [4 x i8], ptr %i.j, i64 %1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !540, !nonnull !85
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !85
  %i.s = getelementptr i8, ptr %i.c, i64 16       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !85, !align !86 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = mul i64 %i.f, %1
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !541, !nonnull !85, !align !86 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40, !noalias !542 ; 2 uses
  %i.aa = getelementptr [8 x i8], ptr %i.z, i64 %i.x ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !41, !noalias !542 ; 18 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.af = icmp sgt i64 %i.ac, 1
  %i.ag = icmp sgt i64 %i.ac, 0                   ; 2 uses
  %i.ah = mul i64 %i.f, %1
  %i.ai = shl i64 %i.ac, 3
  %i.aj = add i64 %i.ah, %i.ac
  %scevgep56 = getelementptr i8, ptr %i.b, i64 %i.ai
  %i.ak = add i64 %i.ac, -1                       ; 3 uses
  %i.al = add i64 %i.ac, -2
  %min.iters.check59 = icmp ugt i64 %i.ac, 3
  %n.vec61 = and i64 %i.ac, 9223372036854775804   ; 3 uses
  %cmp.n72 = icmp eq i64 %i.ac, %n.vec61
  %xtraiter = and i64 %i.ac, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %xtraiter78 = and i64 %i.ak, 3                  ; 3 uses
  %i.am = icmp ult i64 %i.al, 3
  %unroll_iter = and i64 %i.ak, -4
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  %lcmp.mod81 = icmp ne i64 %xtraiter78, 0
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
  %scevgep = getelementptr i8, ptr %i.z, i64 %i.ao
  %i.ap = mul nsw i64 %i.l, %.01945
  %i.aq = getelementptr [4 x i8], ptr %i.m, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !44
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [8 x i8], ptr %i.p, i64 %i.as ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !71
  %i.av = getelementptr i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !71 ; 2 uses
  %sext = shl i64 %i.au, 32
  %i.ax = ashr exact i64 %sext, 32                ; 2 uses
  %i.ay = icmp sgt i64 %i.aw, %i.ax
  br i1 %i.ay, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.az = load ptr, ptr %i.r, align 8, !tbaa !76
  %.pre50 = load double, ptr %i.u, align 8, !tbaa !46
  %.pre52 = load double, ptr %i.s, align 8, !tbaa !46
  %i.ba = getelementptr [8 x i8], ptr %i.aa, i64 %.01945 ; 5 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit, %bb.b
  %i.bb = getelementptr [8 x i8], ptr %i.aa, i64 %.01945 ; 12 uses
  br i1 %i.ad, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE9normalizeEv.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.bc = load i64, ptr %i.ae, align 8, !tbaa !42 ; 11 uses
  %i.bd = load double, ptr %i.bb, align 8, !tbaa !46 ; 2 uses
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
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !46 ; 2 uses
  %i.bi = fmul double %i.bh, %i.bh
  %i.bj = fadd double %.02223.i.i.i.i.i, %i.bi
  %i.bk = add nuw nsw i64 %.01724.i.i.i.i.i, 1
  %i.bl = mul nsw i64 %i.bk, %i.bc
  %i.bm = getelementptr [8 x i8], ptr %i.bb, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !46 ; 2 uses
  %i.bo = fmul double %i.bn, %i.bn
  %i.bp = fadd double %i.bj, %i.bo
  %i.bq = add nuw nsw i64 %.01724.i.i.i.i.i, 2
  %i.br = mul nsw i64 %i.bq, %i.bc
  %i.bs = getelementptr [8 x i8], ptr %i.bb, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !46 ; 2 uses
  %i.bu = fmul double %i.bt, %i.bt
  %i.bv = fadd double %i.bp, %i.bu
  %i.bw = add nuw nsw i64 %.01724.i.i.i.i.i, 3
  %i.bx = mul nsw i64 %i.bw, %i.bc
  %i.by = getelementptr [8 x i8], ptr %i.bb, i64 %i.bx
  %i.bz = load double, ptr %i.by, align 8, !tbaa !46 ; 2 uses
  %i.ca = fmul double %i.bz, %i.bz
  %i.cb = fadd double %i.bv, %i.ca                ; 3 uses
  %i.cc = add nuw nsw i64 %.01724.i.i.i.i.i, 4    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %lcmp.mod79.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cc, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.epil.init = phi double [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cb, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod81)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.epil = phi i64 [ %i.ci, %.lr.ph.i.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.02223.i.i.i.i.i.epil = phi double [ %i.ch, %.lr.ph.i.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ]
  %i.cd = mul nsw i64 %.01724.i.i.i.i.i.epil, %i.bc
  %i.ce = getelementptr [8 x i8], ptr %i.bb, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !46 ; 2 uses
  %i.cg = fmul double %i.cf, %i.cf
  %i.ch = fadd double %.02223.i.i.i.i.i.epil, %i.cg ; 2 uses
  %i.ci = add nuw nsw i64 %.01724.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter78
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !522

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
  br i1 %or.cond, label %vector.ph, label %.lr.ph.i.i.i.i.i.i.i.preheader77

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.scalar.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ck, align 8, !tbaa !46
  %i.cl = fdiv <2 x double> %wide.load, %broadcast.splat
  store <2 x double> %i.cl, ptr %i.ck, align 8, !tbaa !46
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !523

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE9normalizeEv.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader77

.lr.ph.i.i.i.i.i.i.i.preheader77:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.cn = sub nsw i64 %i.ac, %.05.i.i.i.i.i.i.i.ph
  %xtraiter82 = and i64 %i.cn, 3                  ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader77, %.lr.ph.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.prol = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader77 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader77 ]
  %i.co = mul nsw i64 %.05.i.i.i.i.i.i.i.prol, %i.bc
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.co ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !46
  %i.cr = fdiv double %i.cq, %.scalar.i
  store double %i.cr, ptr %i.cp, align 8, !tbaa !46
  %i.cs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter82
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !524

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader77
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader77 ], [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ct = sub nsw i64 %.05.i.i.i.i.i.i.i.ph, %i.ac
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE9normalizeEv.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.cv = mul nsw i64 %.05.i.i.i.i.i.i.i, %i.bc
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.cv ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !46
  %i.cy = fdiv double %i.cx, %.scalar.i
  store double %i.cy, ptr %i.cw, align 8, !tbaa !46
  %i.cz = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1
  %i.da = mul nsw i64 %i.cz, %i.bc
  %i.db = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.da ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !46
  %i.dd = fdiv double %i.dc, %.scalar.i
  store double %i.dd, ptr %i.db, align 8, !tbaa !46
  %i.de = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2
  %i.df = mul nsw i64 %i.de, %i.bc
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.df ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !46
  %i.di = fdiv double %i.dh, %.scalar.i
  store double %i.di, ptr %i.dg, align 8, !tbaa !46
  %i.dj = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 3
  %i.dk = mul nsw i64 %i.dj, %i.bc
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.dk ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !46
  %i.dn = fdiv double %i.dm, %.scalar.i
  store double %i.dn, ptr %i.dl, align 8, !tbaa !46
  %i.do = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.do, %i.ac
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE9normalizeEv.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !525

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE9normalizeEv.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block, %._crit_edge, %_ZNK5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE11squaredNormEv.exit.i, %bb.d
  %i.dp = add nuw nsw i64 %.01945, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dp, %i.f
  br i1 %exitcond.not, label %._crit_edge48, label %bb.b, !llvm.loop !526

bb.e:                                             ; preds = %.lr.ph, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit
  %2 = phi double [ %.pre52, %.lr.ph ], [ %4, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit ] ; 3 uses
  %3 = phi double [ %.pre50, %.lr.ph ], [ %5, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit ] ; 3 uses
  %indvars.iv = phi i64 [ %i.ax, %.lr.ph ], [ %indvars.iv.next, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit ] ; 2 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !71 ; 2 uses
  %.idx.i.i.i.i21 = mul nsw i64 %i.dr, 24         ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.b, i64 %.idx.i.i.i.i21 ; 7 uses
  %i.dt = load <2 x double>, ptr %i.c, align 8, !tbaa !81
  %i.du = load <2 x double>, ptr %i.ds, align 1, !tbaa !81
  %i.dv = fmul <2 x double> %i.dt, %i.du          ; 2 uses
  %shift = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.dv, %shift
  %i.dw = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dx = getelementptr i8, ptr %i.ds, i64 16
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !46
  %i.dz = fmul double %2, %i.dy
  %i.ea = fadd double %i.dw, %i.dz
  %i.eb = fcmp ogt double %i.ea, %3
  br i1 %i.eb, label %bb.f, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit

bb.f:                                             ; preds = %bb.e
  %i.ec = load ptr, ptr %i.v, align 8, !tbaa !543, !nonnull !85, !align !86
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !67
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.dr
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !46, !noalias !544 ; 4 uses
  %i.eg = load i64, ptr %i.ae, align 8, !tbaa !42 ; 4 uses
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.f
  %ident.check55.not = icmp eq i64 %i.eg, 1
  %or.cond74 = select i1 %min.iters.check59, i1 %ident.check55.not, i1 false
  br i1 %or.cond74, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i.preheader76

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep57 = getelementptr i8, ptr %scevgep56, i64 %.idx.i.i.i.i21
  %bound0 = icmp ult ptr %i.ba, %scevgep57
  %bound1 = icmp ult ptr %i.ds, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader76, label %vector.ph60

vector.ph60:                                      ; preds = %vector.memcheck
  %broadcast.splatinsert62 = insertelement <2 x double> poison, double %i.ef, i64 0
  %broadcast.splat63 = shufflevector <2 x double> %broadcast.splatinsert62, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph60
  %index65 = phi i64 [ 0, %vector.ph60 ], [ %index.next70, %vector.body64 ] ; 3 uses
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %index65 ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index65 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load66 = load <2 x double>, ptr %i.ei, align 8, !tbaa !46, !alias.scope !545
  %wide.load67 = load <2 x double>, ptr %i.ej, align 8, !tbaa !46, !alias.scope !545
  %i.ek = fmul <2 x double> %broadcast.splat63, %wide.load66
  %i.el = fmul <2 x double> %broadcast.splat63, %wide.load67
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %wide.load68 = load <2 x double>, ptr %i.eh, align 8, !tbaa !46, !alias.scope !546, !noalias !545
  %wide.load69 = load <2 x double>, ptr %i.em, align 8, !tbaa !46, !alias.scope !546, !noalias !545
  %i.en = fadd <2 x double> %i.ek, %wide.load68
  %i.eo = fadd <2 x double> %i.el, %wide.load69
  store <2 x double> %i.en, ptr %i.eh, align 8, !tbaa !46, !alias.scope !546, !noalias !545
  store <2 x double> %i.eo, ptr %i.em, align 8, !tbaa !46, !alias.scope !546, !noalias !545
  %index.next70 = add nuw i64 %index65, 4         ; 2 uses
  %i.ep = icmp eq i64 %index.next70, %n.vec61
  br i1 %i.ep, label %middle.block71, label %vector.body64, !llvm.loop !532

middle.block71:                                   ; preds = %vector.body64
  br i1 %cmp.n72, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader76

.lr.ph.i.i.i.i.i.i.preheader76:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block71
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec61, %middle.block71 ] ; 5 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader76
  %i.eq = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.eg
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.05.i.i.i.i.i.i.ph
  %i.et = load double, ptr %i.es, align 8, !tbaa !46
  %i.eu = fmul double %i.ef, %i.et
  %i.ev = load double, ptr %i.er, align 8, !tbaa !46
  %i.ew = fadd double %i.eu, %i.ev
  store double %i.ew, ptr %i.er, align 8, !tbaa !46
  %i.ex = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader76
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader76 ], [ %i.ex, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ey = icmp eq i64 %i.ak, %.05.i.i.i.i.i.i.ph
  br i1 %i.ey, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.fo, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ez = mul nsw i64 %.05.i.i.i.i.i.i, %i.eg
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.ez ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %.05.i.i.i.i.i.i
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !46
  %i.fd = fmul double %i.ef, %i.fc
  %i.fe = load double, ptr %i.fa, align 8, !tbaa !46
  %i.ff = fadd double %i.fd, %i.fe
  store double %i.ff, ptr %i.fa, align 8, !tbaa !46
  %i.fg = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.fh = mul nsw i64 %i.fg, %i.eg
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.fh ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.fg
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !46
  %i.fl = fmul double %i.ef, %i.fk
  %i.fm = load double, ptr %i.fi, align 8, !tbaa !46
  %i.fn = fadd double %i.fl, %i.fm
  store double %i.fn, ptr %i.fi, align 8, !tbaa !46
  %i.fo = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.fo, %i.ac
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !533

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block71
  %.pre = load double, ptr %i.u, align 8, !tbaa !46
  %.pre51 = load double, ptr %i.s, align 8, !tbaa !46
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit.loopexit, %bb.f, %bb.e
  %4 = phi double [ %.pre51, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit.loopexit ], [ %2, %bb.f ], [ %2, %bb.e ]
  %5 = phi double [ %.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEpLINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS1_INS2_IdLin1ELi3ELi1ELin1ELi3EEELi1ELi3ELb1EEEKNS_14CwiseNullaryOpINS8_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEERS4_RKNS0_IT_EE.exit.loopexit ], [ %3, %bb.f ], [ %3, %bb.e ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.fp = icmp sgt i64 %i.aw, %indvars.iv.next
  br i1 %i.fp, label %bb.e, label %._crit_edge, !llvm.loop !534
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt6threadSaIS0_EE17_M_realloc_insertIJRKZN3igl12parallel_forIlZNS4_12parallel_forIlZNS4_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS9_IiLin1ELin1ELi0ELin1ELin1EEENS9_IlLin1ELi1ELi0ELin1ELi1EEESC_SA_EEvRKNS8_10MatrixBaseIT_EERKNSD_IT0_EENSE_6ScalarERKNSD_IT1_EERKNSD_IT2_EERNS8_15PlainObjectBaseIT3_EEEUllE0_EEbSE_RKSI_mEUlmE_ZNS6_IlSZ_EEbSE_S11_mEUllmE_S12_EEbSE_S11_RKSN_RKSR_mEUlllmE_RlS1B_RmEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !93     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
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
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #25 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %i.q, align 8, !tbaa !98
  %i.r = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #25
          to label %.noexc unwind label %bb.g     ; 6 uses

.noexc:                                           ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IlLin1ELi1ELi0ELin1ELi1EEESB_S9_EEvRKNS7_10MatrixBaseIT_EERKNSC_IT0_EENSD_6ScalarERKNSC_IT1_EERKNSC_IT2_EERNS7_15PlainObjectBaseIT3_EEEUllE0_EEbSD_RKSH_mEUlmE_ZNS5_IlSY_EEbSD_S10_mEUllmE_S11_EEbSD_S10_RKSM_RKSQ_mEUlllmE_llmEEEEEE, i64 16), ptr %i.r, align 8, !tbaa !36
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %5, align 8, !tbaa !71
  store i64 %i.t, ptr %i.s, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %4, align 8, !tbaa !71
  store i64 %i.v, ptr %i.u, align 8, !tbaa !102
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = load i64, ptr %3, align 8, !tbaa !71
  store i64 %i.x, ptr %i.w, align 8, !tbaa !104
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.z = load i64, ptr %2, align 8, !tbaa !58
  store i64 %i.z, ptr %i.y, align 8, !tbaa !58
  store ptr %i.r, ptr %6, align 8, !tbaa !106
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 %6, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %6, align 8, !tbaa !106   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #22, !inline_history !18
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.af = load ptr, ptr %6, align 8, !tbaa !106   ; 3 uses
  %.not.i8.i = icmp eq ptr %i.af, null
  br i1 %.not.i8.i, label %bb.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i: ; preds = %bb.d
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #22, !inline_history !18
  br label %bb.i

bb.e:                                             ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !71, !alias.scope !554
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !71, !alias.scope !553
  store i64 0, ptr %.0911.i.i.i, align 8, !tbaa !71, !alias.scope !554
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.al, %.lr.ph.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 8 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i30
  %.012.i.i.i31 = phi ptr [ %i.ap, %.lr.ph.i.i.i30 ], [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 2 uses
  %.0911.i.i.i32 = phi ptr [ %i.ao, %.lr.ph.i.i.i30 ], [ %1, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !555)
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %i.an = load i64, ptr %.0911.i.i.i32, align 8, !tbaa !71, !alias.scope !556
  store i64 %i.an, ptr %.012.i.i.i31, align 8, !tbaa !71, !alias.scope !555
  store i64 0, ptr %.0911.i.i.i32, align 8, !tbaa !71, !alias.scope !556
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i33, label %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, label %.lr.ph.i.i.i30, !llvm.loop !1

_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35: ; preds = %.lr.ph.i.i.i30, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i34 = phi ptr [ %i.am, %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ap, %.lr.ph.i.i.i30 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !95
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #26
  br label %_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseISt6threadSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorISt6threadSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit35, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !93
  store ptr %.0.lcssa.i.i.i34, ptr %i.a, align 8, !tbaa !94
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !95
  ret void

bb.g:                                             ; preds = %_ZNKSt6vectorISt6threadSaIS0_EE12_M_check_lenEmPKc.exit
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.d, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.g ], [ %i.ae, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i9.i ], [ %i.ae, %bb.d ]
  %i.ax = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ay = call ptr @__cxa_begin_catch(ptr %i.ax) #22 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #26
  invoke void @__cxa_rethrow() #23
          to label %bb.l unwind label %bb.h

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aw

bb.k:                                             ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  call void @__clang_call_terminate(ptr %i.ba) #27
  unreachable

bb.l:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IlLin1ELi1ELi0ELin1ELi1EEESB_S9_EEvRKNS7_10MatrixBaseIT_EERKNSC_IT0_EENSD_6ScalarERKNSC_IT1_EERKNSC_IT2_EERNS7_15PlainObjectBaseIT3_EEEUllE0_EEbSD_RKSH_mEUlmE_ZNS5_IlSY_EEbSD_S10_mEUllmE_S11_EEbSD_S10_RKSM_RKSQ_mEUlllmE_llmEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #18 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS3_12parallel_forIlZNS3_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS8_IiLin1ELin1ELi0ELin1ELin1EEENS8_IlLin1ELi1ELi0ELin1ELi1EEESB_S9_EEvRKNS7_10MatrixBaseIT_EERKNSC_IT0_EENSD_6ScalarERKNSC_IT1_EERKNSC_IT2_EERNS7_15PlainObjectBaseIT3_EEEUllE0_EEbSD_RKSH_mEUlmE_ZNS5_IlSY_EEbSD_S10_mEUllmE_S11_EEbSD_S10_RKSM_RKSQ_mEUlllmE_llmEEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.b, align 8, !tbaa !71   ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.f = icmp slt i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZNSt6thread8_InvokerISt5tupleIJZN3igl12parallel_forIlZNS2_12parallel_forIlZNS2_18per_corner_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS7_IiLin1ELin1ELi0ELin1ELin1EEENS7_IlLin1ELi1ELi0ELin1ELi1EEESA_S8_EEvRKNS6_10MatrixBaseIT_EERKNSB_IT0_EENSC_6ScalarERKNSB_IT1_EERKNSB_IT2_EERNS6_15PlainObjectBaseIT3_EEEUllE0_EEbSC_RKSG_mEUlmE_ZNS4_IlSX_EEbSC_SZ_mEUllmE_S10_EEbSC_SZ_RKSL_RKSP_mEUlllmE_llmEEEclEv.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !559, !nonnull !85, !align !86
end_hunk_0
