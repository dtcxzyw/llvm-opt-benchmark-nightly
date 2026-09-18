Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/LevelSetTubes?download=true
inline.NumInlined: 71639
inline.NumDeleted: 23517
loop-unroll.NumCompletelyUnrolled: 184
loop-unroll.NumRuntimeUnrolled: 212
loop-unroll.NumUnrolled: 885
begin_hunk_0_@_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E15doTreeTileSizesINS0_8TypeListIJS9_SA_EEEEEvRSt6vectorIiSaIiEE:bb.a

bb.j:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 4 %i.ab, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %.not.i17.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !2932
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.as) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  store ptr %i.am, ptr %0, align 8, !tbaa !2930
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !2931
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.at, ptr %i.c, align 8, !tbaa !2932
  br label %_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E15doTreeTileSizesINS0_8TypeListIJS9_EEEEEvRSt6vectorIiSaIiEE.exit

_ZN7openvdb5v13_05tools15ConvexVoxelizerINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS1_6lvlset16CapsuleVoxelizerISE_NS0_4util15NullInterrupterEEESI_E15doTreeTileSizesINS0_8TypeListIJS9_EEEEEvRSt6vectorIiSaIiEE.exit: ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbRdS0_RKdS2_EN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS5_4GridINS5_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS5_4util15NullInterrupterEE24capsuleBottomTopVerticalMUlS0_S0_S2_S2_E_EE9_M_invokeERKSt9_Any_dataS0_S0_S2_S2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8937   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 480 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !1150 ; 2 uses
  %i.g = load double, ptr %i.d, align 8, !tbaa !1150 ; 2 uses
  %i.h = fcmp olt double %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 392 ; 2 uses
  %i.j = select i1 %i.h, double %i.f, double %i.g
  %i.k = load double, ptr %i.i, align 8, !tbaa !1150 ; 2 uses
  %i.l = fmul double %i.k, %i.k
  %i.m = load double, ptr %3, align 8, !tbaa !1150
  %i.n = load double, ptr %i.b, align 8, !tbaa !1150
  %i.o = fsub double %i.m, %i.n                   ; 2 uses
  %i.p = fmul double %i.o, %i.o
  %i.q = fsub double %i.l, %i.p
  %i.r = load double, ptr %4, align 8, !tbaa !1150
  %i.s = load double, ptr %i.c, align 8, !tbaa !1150
  %i.t = fsub double %i.r, %i.s                   ; 2 uses
  %i.u = fmul double %i.t, %i.t
  %i.v = fsub double %i.q, %i.u
  %i.w = tail call noundef double @sqrt(double noundef %i.v) #23
  %i.x = fsub double %i.j, %i.w
  store double %i.x, ptr %1, align 8, !tbaa !1150
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.aa = load double, ptr %i.d, align 8, !tbaa !1150 ; 2 uses
  %i.ab = load double, ptr %i.e, align 8, !tbaa !1150 ; 2 uses
  %i.ac = fcmp olt double %i.aa, %i.ab
  %i.ad = select i1 %i.ac, double %i.ab, double %i.aa
  %i.ae = load double, ptr %i.i, align 8, !tbaa !1150 ; 2 uses
  %i.af = fmul double %i.ae, %i.ae
  %i.ag = load double, ptr %3, align 8, !tbaa !1150
  %i.ah = load double, ptr %i.y, align 8, !tbaa !1150
  %i.ai = fsub double %i.ag, %i.ah                ; 2 uses
  %i.aj = fmul double %i.ai, %i.ai
  %i.ak = fsub double %i.af, %i.aj
  %i.al = load double, ptr %4, align 8, !tbaa !1150
  %i.am = load double, ptr %i.z, align 8, !tbaa !1150
  %i.an = fsub double %i.al, %i.am                ; 2 uses
  %i.ao = fmul double %i.an, %i.an
  %i.ap = fsub double %i.ak, %i.ao
  %i.aq = tail call noundef double @sqrt(double noundef %i.ap) #23
  %i.ar = fadd double %i.ad, %i.aq                ; 2 uses
  store double %i.ar, ptr %2, align 8, !tbaa !1150
  %i.as = load double, ptr %1, align 8, !tbaa !1150
  %i.at = tail call double @llvm.fabs.f64(double %i.as)
  %i.au = fcmp one double %i.at, +inf
  %i.av = tail call double @llvm.fabs.f64(double %i.ar)
  %i.aw = fcmp one double %i.av, +inf
  %i.ax = select i1 %i.au, i1 %i.aw, i1 false
  ret i1 %i.ax
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbRdS0_RKdS2_EN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS5_4GridINS5_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS5_4util15NullInterrupterEE24capsuleBottomTopVerticalMUlS0_S0_S2_S2_E_EE10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS2_4GridINS2_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS2_4util15NullInterrupterEE24capsuleBottomTopVerticalMUlRdSM_RKdSO_E_EE10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE24capsuleBottomTopVerticalMUlRdSK_RKdSM_E_E, ptr %0, align 8, !tbaa !2510
  br label %_ZNSt14_Function_base13_Base_managerIN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS2_4GridINS2_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS2_4util15NullInterrupterEE24capsuleBottomTopVerticalMUlRdSM_RKdSO_E_EE10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !1042
  br label %_ZNSt14_Function_base13_Base_managerIN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS2_4GridINS2_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS2_4util15NullInterrupterEE24capsuleBottomTopVerticalMUlRdSM_RKdSO_E_EE10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !1795
  store i64 %i.a, ptr %0, align 8, !tbaa !1795
  br label %_ZNSt14_Function_base13_Base_managerIN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS2_4GridINS2_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS2_4util15NullInterrupterEE24capsuleBottomTopVerticalMUlRdSM_RKdSO_E_EE10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS2_4GridINS2_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS2_4util15NullInterrupterEE24capsuleBottomTopVerticalMUlRdSM_RKdSO_E_EE10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbRdS0_RKdS2_EN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS5_4GridINS5_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS5_4util15NullInterrupterEE16capsuleBottomTopMUlS0_S0_S2_S2_E_EE9_M_invokeERKSt9_Any_dataS0_S0_S2_S2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #6 comdat align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16capsuleBottomTopMUlRdSK_RKdSM_E_clESK_SK_SM_SM_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFbRdS0_RKdS2_EN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS5_4GridINS5_4tree4TreeINSA_8RootNodeINSA_12InternalNodeINSD_INSA_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS5_4util15NullInterrupterEE16capsuleBottomTopMUlS0_S0_S2_S2_E_EE10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS2_4GridINS2_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS2_4util15NullInterrupterEE16capsuleBottomTopMUlRdSM_RKdSO_E_EE10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16capsuleBottomTopMUlRdSK_RKdSM_E_E, ptr %0, align 8, !tbaa !2510
  br label %_ZNSt14_Function_base13_Base_managerIN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS2_4GridINS2_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS2_4util15NullInterrupterEE16capsuleBottomTopMUlRdSM_RKdSO_E_EE10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !1042
  br label %_ZNSt14_Function_base13_Base_managerIN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS2_4GridINS2_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS2_4util15NullInterrupterEE16capsuleBottomTopMUlRdSM_RKdSO_E_EE10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !1795
  store i64 %i.a, ptr %0, align 8, !tbaa !1795
  br label %_ZNSt14_Function_base13_Base_managerIN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS2_4GridINS2_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS2_4util15NullInterrupterEE16capsuleBottomTopMUlRdSM_RKdSO_E_EE10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS2_4GridINS2_4tree4TreeINS7_8RootNodeINS7_12InternalNodeINSA_INS7_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS2_4util15NullInterrupterEE16capsuleBottomTopMUlRdSM_RKdSO_E_EE10_M_managerERSt9_Any_dataRKSR_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE16capsuleBottomTopMUlRdSK_RKdSM_E_clESK_SK_SM_SM_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8941   ; 26 uses
  %i.b = load double, ptr %3, align 8, !tbaa !1150 ; 5 uses
  %i.c = load double, ptr %4, align 8, !tbaa !1150 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.f = load double, ptr %i.d, align 8, !tbaa !1150 ; 2 uses
  %i.g = fsub double %i.b, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.i = load double, ptr %i.h, align 8, !tbaa !1150 ; 2 uses
  %i.j = fsub double %i.c, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %i.l = load double, ptr %i.k, align 8, !tbaa !3629 ; 2 uses
  %i.m = load <2 x double>, ptr %i.e, align 8, !tbaa !1150 ; 3 uses
  %i.n = extractelement <2 x double> %i.m, i64 1
  %i.o = fmul double %i.j, %i.n
  %i.p = extractelement <2 x double> %i.m, i64 0
  %i.q = tail call noundef double @llvm.fmuladd.f64(double %i.g, double %i.p, double %i.o)
  %i.r = insertelement <2 x double> poison, double %i.q, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x double> %i.m, %i.s
  %i.u = insertelement <2 x double> poison, double %i.l, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fdiv <2 x double> %i.t, %i.v             ; 2 uses
  %i.x = extractelement <2 x double> %i.w, i64 0
  %i.y = fadd double %i.f, %i.x                   ; 2 uses
  %i.z = extractelement <2 x double> %i.w, i64 1
  %i.aa = fadd double %i.i, %i.z                  ; 2 uses
  %i.ab = fsub double %i.b, %i.y                  ; 2 uses
  %i.ac = fsub double %i.c, %i.aa                 ; 2 uses
  %i.ad = fmul double %i.ac, %i.ac
  %i.ae = tail call noundef double @llvm.fmuladd.f64(double %i.ab, double %i.ab, double %i.ad) ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.ag = load double, ptr %i.af, align 8, !tbaa !3630 ; 2 uses
  %i.ah = fcmp uge double %i.ag, %i.ae
  br i1 %i.ah, label %bb.b, label %_ZNK7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE25infiniteCylinderBottomTopERdSJ_RKdSL_.exit

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 464 ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !3631 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 488 ; 2 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !3632 ; 2 uses
  %i.am = fcmp une double %i.aj, %i.al            ; 2 uses
  %i.an = fsub double %i.y, %i.aj
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 472 ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8         ; 2 uses
  %i.aq = fsub double %i.aa, %i.ap
  %.sink.i = select i1 %i.am, double %i.an, double %i.aq
  %.sink56.i = select i1 %i.am, i64 424, i64 432
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sink56.i
  %i.as = load double, ptr %i.ar, align 8, !tbaa !1150
  %i.at = fdiv double %.sink.i, %i.as
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %.sroa.9.0.copyload.i = load double, ptr %.sroa.9.0..sroa_idx.i, align 8 ; 3 uses
  %i.au = fmul double %.sroa.9.0.copyload.i, %i.at
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %.sroa.7.0.copyload.i = load double, ptr %.sroa.7.0..sroa_idx.i, align 8 ; 3 uses
  %i.av = fadd double %.sroa.7.0.copyload.i, %i.au ; 2 uses
  %i.aw = fsub double %i.ag, %i.ae
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 416 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !3633 ; 2 uses
  %i.az = fmul double %i.aw, %i.ay
  %i.ba = fdiv double %i.az, %i.l
  %i.bb = tail call noundef double @sqrt(double noundef %i.ba) #23 ; 2 uses
  %5 = fsub double %i.av, %i.bb                   ; 2 uses
  %6 = fadd double %i.av, %i.bb                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !1150, !noalias !8942
  %i.be = fsub double %i.b, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !1150, !noalias !8942
  %7 = fsub double %i.c, %i.bg
  %i.bh = fsub double %5, %.sroa.7.0.copyload.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !1150
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !1150
  %i.bm = fmul double %7, %i.bl
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bj, double %i.bm) ; 2 uses
  %8 = tail call noundef double @llvm.fmuladd.f64(double %i.bh, double %.sroa.9.0.copyload.i, double %i.bn) ; 2 uses
  %i.bo = fsub double %6, %.sroa.7.0.copyload.i
  %9 = tail call noundef double @llvm.fmuladd.f64(double %i.bo, double %.sroa.9.0.copyload.i, double %i.bn) ; 2 uses
  %i.bp = fcmp olt double %8, 0.000000e+00
  br i1 %i.bp, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.bs = load double, ptr %i.br, align 8, !tbaa !1150 ; 2 uses
  %i.bt = fmul double %i.bs, %i.bs
  %i.bu = fsub double %i.b, %i.aj                 ; 2 uses
  %i.bv = fmul double %i.bu, %i.bu
  %i.bw = fsub double %i.bt, %i.bv
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.bx = fcmp ogt double %8, %i.ay
  br i1 %i.bx, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !1150 ; 2 uses
  %i.cc = fmul double %i.cb, %i.cb
  %i.cd = fsub double %i.b, %i.al                 ; 2 uses
  %i.ce = fmul double %i.cd, %i.cd
  %i.cf = fsub double %i.cc, %i.ce
  %i.cg = load double, ptr %i.by, align 8, !tbaa !1150
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  %.sink64 = phi double [ %i.cg, %bb.e ], [ %i.ap, %bb.c ]
  %.sink60 = phi double [ %i.cf, %bb.e ], [ %i.bw, %bb.c ]
  %.sink57.in = phi ptr [ %i.bz, %bb.e ], [ %i.bq, %bb.c ]
  %.sink57 = load double, ptr %.sink57.in, align 8, !tbaa !1150
  %i.ch = fsub double %i.c, %.sink64              ; 2 uses
  %i.ci = fmul double %i.ch, %i.ch
  %i.cj = fsub double %.sink60, %i.ci
  %i.ck = tail call noundef double @sqrt(double noundef %i.cj) #23
  %i.cl = fsub double %.sink57, %i.ck
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d
  %.sink = phi double [ %5, %bb.d ], [ %i.cl, %.sink.split ]
  store double %.sink, ptr %1, align 8, !tbaa !1150
  %i.cm = fcmp olt double %9, 0.000000e+00
  br i1 %i.cm, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.cp = load double, ptr %i.co, align 8, !tbaa !1150 ; 2 uses
  %i.cq = fmul double %i.cp, %i.cp
  %i.cr = load double, ptr %3, align 8, !tbaa !1150
  %i.cs = load double, ptr %i.ai, align 8, !tbaa !1150
  %i.ct = fsub double %i.cr, %i.cs                ; 2 uses
  %i.cu = fmul double %i.ct, %i.ct
  %i.cv = fsub double %i.cq, %i.cu
  %i.cw = load double, ptr %4, align 8, !tbaa !1150
  %i.cx = load double, ptr %i.ao, align 8, !tbaa !1150
  %i.cy = fsub double %i.cw, %i.cx                ; 2 uses
  %i.cz = fmul double %i.cy, %i.cy
  %i.da = fsub double %i.cv, %i.cz
  br label %.sink.split65

bb.h:                                             ; preds = %bb.f
  %i.db = load double, ptr %i.ax, align 8, !tbaa !3633
  %i.dc = fcmp ogt double %9, %i.db
  br i1 %i.dc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.dg = load double, ptr %i.df, align 8, !tbaa !1150 ; 2 uses
  %i.dh = fmul double %i.dg, %i.dg
  %i.di = load double, ptr %3, align 8, !tbaa !1150
  %i.dj = load double, ptr %i.ak, align 8, !tbaa !1150
  %i.dk = fsub double %i.di, %i.dj                ; 2 uses
  %i.dl = fmul double %i.dk, %i.dk
  %i.dm = fsub double %i.dh, %i.dl
  %i.dn = load double, ptr %4, align 8, !tbaa !1150
  %i.do = load double, ptr %i.dd, align 8, !tbaa !1150
  %i.dp = fsub double %i.dn, %i.do                ; 2 uses
  %i.dq = fmul double %i.dp, %i.dp
  %i.dr = fsub double %i.dm, %i.dq
  br label %.sink.split65

.sink.split65:                                    ; preds = %bb.g, %bb.i
  %.sink68 = phi double [ %i.dr, %bb.i ], [ %i.da, %bb.g ]
  %.sink66.in = phi ptr [ %i.de, %bb.i ], [ %i.cn, %bb.g ]
  %.sink66 = load double, ptr %.sink66.in, align 8, !tbaa !1150
  %i.ds = tail call noundef double @sqrt(double noundef %.sink68) #23
  %i.dt = fadd double %.sink66, %i.ds
  br label %bb.j

bb.j:                                             ; preds = %.sink.split65, %bb.h
  %.sink56 = phi double [ %6, %bb.h ], [ %i.dt, %.sink.split65 ] ; 2 uses
  store double %.sink56, ptr %2, align 8, !tbaa !1150
  %i.du = load double, ptr %1, align 8, !tbaa !1150
  %i.dv = tail call double @llvm.fabs.f64(double %i.du)
  %i.dw = fcmp ueq double %i.dv, +inf
  br i1 %i.dw, label %_ZNK7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE25infiniteCylinderBottomTopERdSJ_RKdSL_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dx = tail call double @llvm.fabs.f64(double %.sink56)
  %i.dy = fcmp one double %i.dx, +inf
  br label %_ZNK7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE25infiniteCylinderBottomTopERdSJ_RKdSL_.exit

_ZNK7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE25infiniteCylinderBottomTopERdSJ_RKdSL_.exit: ; preds = %bb.a, %bb.j, %bb.k
  %.0 = phi i1 [ %i.dy, %bb.k ], [ false, %bb.j ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools6lvlset16CapsuleVoxelizerINS0_4GridINS0_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE10initializeIfEEvRKNS0_4math4Vec3IT_EESP_RKSM_(ptr noundef nonnull align 8 dereferenceable(513) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function.830", align 16 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load double, ptr %i.a, align 8, !tbaa !3618 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load double, ptr %i.c, align 8, !tbaa !3619
  %i.e = load float, ptr %1, align 4, !tbaa !1119 ; 2 uses
  %i.f = load float, ptr %2, align 4, !tbaa !1119 ; 2 uses
  %i.g = fcmp ugt float %i.e, %i.f                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.sroa.932.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  %. = select i1 %i.g, float %i.f, float %i.e
  %.68 = select i1 %i.g, ptr %2, ptr %1           ; 2 uses
  %.69 = select i1 %i.g, ptr %1, ptr %2           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.68, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !1119
  %i.k = getelementptr inbounds nuw i8, ptr %.68, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !1119
  %i.m = fpext float %i.l to double
  %i.n = fdiv double %i.m, %i.b                   ; 3 uses
  %i.o = insertelement <2 x float> poison, float %., i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.j, i64 1
  %i.q = fpext <2 x float> %i.p to <2 x double>
  %i.r = insertelement <2 x double> poison, double %i.b, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.t = fdiv <2 x double> %i.q, %i.s             ; 4 uses
  store <2 x double> %i.t, ptr %i.h, align 8
  store double %i.n, ptr %.sroa.932.0..sroa_idx, align 8
  %.pn53.in.in = getelementptr inbounds nuw i8, ptr %.69, i64 8
  %.pn53.in = load float, ptr %.pn53.in.in, align 4, !tbaa !1119
  %.pn53 = fpext float %.pn53.in to double
  %.sink = fdiv double %.pn53, %i.b               ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.v = load <2 x float>, ptr %.69, align 4, !tbaa !1119
  %i.w = fpext <2 x float> %i.v to <2 x double>
  %i.x = fdiv <2 x double> %i.w, %i.s             ; 4 uses
  store <2 x double> %i.x, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 312
  store double %.sink, ptr %i.y, align 8
  %i.z = load float, ptr %3, align 4, !tbaa !1119
  %i.aa = fpext float %i.z to double
  %i.ab = fdiv double %i.aa, %i.b                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 408
  store double %i.ab, ptr %i.ac, align 8, !tbaa !3634
  %i.ad = fadd double %i.d, %i.ab                 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 392
  store double %i.ad, ptr %i.ae, align 8, !tbaa !3635
  %i.af = fmul double %i.ad, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 400
  store double %i.af, ptr %i.ag, align 8, !tbaa !3630
  %i.ah = extractelement <2 x double> %i.t, i64 0 ; 2 uses
  %i.ai = extractelement <2 x double> %i.x, i64 0 ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.x, %i.t ; 3 uses
  %i.aj = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 5 uses
  %i.ak = extractelement <2 x double> %i.t, i64 1 ; 3 uses
  %i.al = extractelement <2 x double> %i.x, i64 1 ; 3 uses
  %i.am = fsub double %i.al, %i.ak                ; 5 uses
  %i.an = fsub double %.sink, %i.n                ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 320
  store double %i.aj, ptr %i.ao, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store double %i.am, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store double %i.an, ptr %.sroa.8.0..sroa_idx, align 8
  %i.ap = fmul double %i.am, %i.am                ; 2 uses
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.aj, double %i.ap)
  %i.ar = tail call noundef double @llvm.fmuladd.f64(double %i.an, double %i.an, double %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 416
  store double %i.ar, ptr %i.as, align 8, !tbaa !3633
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 464
  store double %i.ah, ptr %i.at, align 8, !tbaa !3631
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 472
  store double %i.ak, ptr %i.au, align 8, !tbaa !3636
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 480
  store double %i.n, ptr %i.av, align 8, !tbaa !8943
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 488
  store double %i.ai, ptr %i.aw, align 8, !tbaa !3632
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 496
  store double %i.al, ptr %i.ax, align 8, !tbaa !3637
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 504
  store double %.sink, ptr %i.ay, align 8, !tbaa !8944
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 424
  store double %i.aj, ptr %i.az, align 8, !tbaa !3638
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 432
  store double %i.am, ptr %i.ba, align 8, !tbaa !3639
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 440
  store double %i.an, ptr %i.bb, align 8, !tbaa !8945
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 344
  store double %i.ah, ptr %i.bc, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store double %i.ak, ptr %.sroa.416.0..sroa_idx, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 360
  store double %i.ai, ptr %i.bd, align 8
  %.sroa.4.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 368
  store double %i.al, ptr %.sroa.4.0..sroa_idx14, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 376
  store double %i.aj, ptr %i.be, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 384
  store double %i.am, ptr %.sroa.4.0..sroa_idx, align 8
  %foldExtExtBinop71 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop
  %i.bf = extractelement <2 x double> %foldExtExtBinop71, i64 0
  %i.bg = fadd double %i.bf, %i.ap                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 456
  store double %i.bg, ptr %i.bh, align 8, !tbaa !3629
  %sqrt = tail call double @llvm.sqrt.f64(double %i.bg) ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 448
  store double %sqrt, ptr %i.bi, align 8, !tbaa !3640
  %i.bj = tail call double @llvm.fabs.f64(double %sqrt)
  %i.bk = fcmp ule double %i.bj, 1.000000e-15     ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bm = zext i1 %i.bk to i8
  store i8 %i.bm, ptr %i.bl, align 8, !tbaa !3641
  %.v = select i1 %i.bk, i64 208, i64 240
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %.v ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1790 ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8functionIFbRdS0_RKdS2_EEC2ERKS4_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bs = invoke noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i32 noundef 2)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.bt = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !1042
  br label %_ZNSt8functionIFbRdS0_RKdS2_EEC2ERKS4_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %i.bp, align 16, !tbaa !1790 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.bu

_ZNSt8functionIFbRdS0_RKdS2_EEC2ERKS4_.exit.i:    ; preds = %bb.c, %bb.a
  %i.bz = phi <2 x ptr> [ splat (ptr null), %bb.a ], [ %i.bt, %bb.c ]
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !726
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.bo, i64 16, i1 false), !tbaa.struct !1831
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.bo, align 8, !tbaa !726
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cb = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !1042
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !1042 ; 2 uses
  store <2 x ptr> %i.cb, ptr %i.bp, align 16, !tbaa !1042
  store <2 x ptr> %i.bz, ptr %i.ca, align 8, !tbaa !1042
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %_ZNSt8functionIFbRdS0_RKdS2_EEaSERKS4_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8functionIFbRdS0_RKdS2_EEC2ERKS4_.exit.i
  %i.cd = invoke noundef zeroext i1 %i.cc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt8functionIFbRdS0_RKdS2_EEaSERKS4_.exit unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #33
  unreachable

_ZNSt8functionIFbRdS0_RKdS2_EEaSERKS4_.exit:      ; preds = %_ZNSt8functionIFbRdS0_RKdS2_EEC2ERKS4_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
end_hunk_0
