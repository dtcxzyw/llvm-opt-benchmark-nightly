Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/propagator?download=true
inline.NumInlined: 5754
inline.NumDeleted: 2455
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN3gmx10PropagatorILNS_16IntegrationStageE1EE23positionScalingCallbackEv:bb.a
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef ptr @_ZN3gmx10PropagatorILNS_16IntegrationStageE1EE21viewOnPRScalingMatrixEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN3gmx10PropagatorILNS_16IntegrationStageE1EE17prScalingCallbackEv(ptr dead_on_unwind noalias writable sret(%"class.std::function.115") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8
  %i.d = ptrtoint ptr %1 to i64
  store i64 %i.d, ptr %0, align 8, !tbaa !55
  store ptr @_ZNSt17_Function_handlerIFvlEZN3gmx10PropagatorILNS1_16IntegrationStageE1EE17prScalingCallbackEvEUllE_E9_M_invokeERKSt9_Any_dataOl, ptr %i.b, align 8, !tbaa !914
  store ptr @_ZNSt17_Function_handlerIFvlEZN3gmx10PropagatorILNS1_16IntegrationStageE1EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.a, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvlEZN3gmx10PropagatorILNS1_16IntegrationStageE1EE17prScalingCallbackEvEUllE_E9_M_invokeERKSt9_Any_dataOl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !471
  %i.b = load ptr, ptr %0, align 8, !tbaa !918
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i64 %i.a, ptr %i.c, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvlEZN3gmx10PropagatorILNS1_16IntegrationStageE1EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3gmx10PropagatorILNS1_16IntegrationStageE1EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN3gmx10PropagatorILNS_16IntegrationStageE1EE17prScalingCallbackEvEUllE_, ptr %0, align 8, !tbaa !104
  br label %_ZNSt14_Function_base13_Base_managerIZN3gmx10PropagatorILNS1_16IntegrationStageE1EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !106
  br label %_ZNSt14_Function_base13_Base_managerIZN3gmx10PropagatorILNS1_16IntegrationStageE1EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !55
  store i64 %i.a, ptr %0, align 8, !tbaa !55
  br label %_ZNSt14_Function_base13_Base_managerIZN3gmx10PropagatorILNS1_16IntegrationStageE1EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3gmx10PropagatorILNS1_16IntegrationStageE1EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN3gmx10PropagatorILNS_16IntegrationStageE1EE21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerERKNS_13PropagatorTagENS_8TimeStepE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %7, float %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::unique_ptr.368", align 8 ; 4 uses
  %10 = alloca %"struct.gmx::PropagatorConnection", align 8 ; 31 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %i.d = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #29, !noalias !920 ; 3 uses
  %i.e = fpext float %8 to double
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !464, !noalias !920
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !465, !noalias !920
  invoke void @_ZN3gmx10PropagatorILNS_16IntegrationStageE1EEC1EdPNS_19StatePropagatorDataEPKNS_7MDAtomsEP13gmx_wallcycle(ptr noundef nonnull align 8 dereferenceable(200) %i.d, double noundef %i.e, ptr noundef %2, ptr noundef %i.f, ptr noundef %i.g)
          to label %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE1EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !920

common.resume:                                    ; preds = %bb.k, %bb.l, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.bk, %bb.l ], [ %i.bj, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 200) #28, !noalias !920
  br label %common.resume

_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE1EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %9, align 8, !tbaa !55, !alias.scope !920
  %i.i = invoke noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_10PropagatorILNS_16IntegrationStageE1EEEEEPT_St10unique_ptrIS5_St14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %9)
          to label %bb.c unwind label %bb.k       ; 2 uses

bb.c:                                             ; preds = %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE1EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.j = load ptr, ptr %9, align 8, !tbaa !55     ; 8 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE1EEESt14default_deleteIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i:              ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i:             ; preds = %bb.f, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE1EEEEclEPS3_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #28
  br label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE1EEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE1EEEEclEPS3_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 200) #28
  br label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE1EEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE1EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE1EEEEclEPS3_.exit.i
  %.val = load ptr, ptr %7, align 8, !tbaa !441   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val11 = load i64, ptr %i.af, align 8, !tbaa !466 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ag, ptr %10, align 8, !tbaa !470, !alias.scope !923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !923
  store i64 %.val11, ptr %i.a, align 8, !tbaa !471, !noalias !923
  %i.ah = icmp ugt i64 %.val11, 15
  br i1 %i.ah, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE1EEESt14default_deleteIS3_EED2Ev.exit
  %i.ai = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ai, ptr %10, align 8, !tbaa !441, !alias.scope !923
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !471, !noalias !923
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !445, !alias.scope !923
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE1EEESt14default_deleteIS3_EED2Ev.exit
  %i.ak = phi ptr [ %i.ai, %.noexc.i.i.i ], [ %i.ag, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE1EEESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  switch i64 %.val11, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE1EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.al = load i8, ptr %.val, align 1, !tbaa !445, !noalias !923
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !445
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE1EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr readonly align 1 %.val, i64 %.val11, i1 false)
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE1EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

_ZN3gmxL13getConnectionILNS_16IntegrationStageE1EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !471, !noalias !923 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !466, !alias.scope !923
  %i.ao = load ptr, ptr %10, align 8, !tbaa !441, !alias.scope !923
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !923
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 256
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 288
  %i.aw = ptrtoint ptr %i.i to i64                ; 6 uses
  store i64 %i.aw, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.0.i.i.i.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.0.i.i.i.i.sroa.4.0..sroa_idx, i8 0, i64 192, i1 false), !alias.scope !923
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr @_ZNSt17_Function_handlerIFviN3gmx15ScaleVelocitiesEEZNS0_L13getConnectionILNS0_16IntegrationStageE1EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUliS1_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation, ptr %i.ax, align 8, !tbaa !106, !alias.scope !923
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr @_ZNSt17_Function_handlerIFviN3gmx15ScaleVelocitiesEEZNS0_L13getConnectionILNS0_16IntegrationStageE1EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUliS1_E_E9_M_invokeERKSt9_Any_dataOiOS1_, ptr %i.ay, align 8, !tbaa !106, !alias.scope !923
  store i64 %i.aw, ptr %i.at, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 208
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE1EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.az, align 8, !tbaa !106, !alias.scope !923
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 216
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE1EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.ba, align 8, !tbaa !106, !alias.scope !923
  store i64 %i.aw, ptr %i.ar, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE1EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.bb, align 8, !tbaa !106, !alias.scope !923
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 120
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE1EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.bc, align 8, !tbaa !106, !alias.scope !923
  store i64 %i.aw, ptr %i.as, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 144
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE1EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE1_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.bd, align 8, !tbaa !106, !alias.scope !923
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 152
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE1EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE1_E9_M_invokeERKSt9_Any_data, ptr %i.be, align 8, !tbaa !106, !alias.scope !923
  store i64 %i.aw, ptr %i.au, align 8
  %.sroa.0.i.i.i19.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 264
  store i64 0, ptr %.sroa.0.i.i.i19.i.sroa.4.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 272
  store ptr @_ZNSt17_Function_handlerIFPN3gmx14BasicMatrix3x3IfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE1EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE2_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.bf, align 8, !tbaa !106, !alias.scope !923
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 280
  store ptr @_ZNSt17_Function_handlerIFPN3gmx14BasicMatrix3x3IfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE1EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE2_E9_M_invokeERKSt9_Any_data, ptr %i.bg, align 8, !tbaa !106, !alias.scope !923
  store i64 %i.aw, ptr %i.av, align 8
  %.sroa.0.i.i.i21.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 296
  store i64 0, ptr %.sroa.0.i.i.i21.i.sroa.4.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 304
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE1EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE3_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.bh, align 8, !tbaa !106, !alias.scope !923
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 312
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE1EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE3_E9_M_invokeERKSt9_Any_data, ptr %i.bi, align 8, !tbaa !106, !alias.scope !923
  invoke void @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper18registerPropagatorENS_20PropagatorConnectionE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %10)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE1EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  ret ptr %i.i

bb.k:                                             ; preds = %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE1EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE1EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  br label %common.resume

bb.l:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE1EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_10PropagatorILNS_16IntegrationStageE1EEEEEPT_St10unique_ptrIS5_St14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.368", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !472    ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !55     ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !55
  store ptr null, ptr %1, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !475  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !478
  %.not.i.i = icmp eq ptr %i.d, %i.f
  %i.g = inttoptr i64 %i.b to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !55
  store ptr %i.g, ptr %i.d, align 8, !tbaa !479
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !475
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE1EEES3_ISB_EEEEERS5_DpOT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !482  ; 12 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #26
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i3 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i3)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29
          to label %.noexc5 unwind label %bb.f    ; 12 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr null, ptr %2, align 8, !tbaa !55
  store ptr %i.g, ptr %i.v, align 8, !tbaa !479
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc5
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aa = add i64 %i.k, -8
  %i.ab = sub i64 %i.aa, %i.l
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ad
  %scevgep13 = getelementptr i8, ptr %i.j, i64 %i.ad
  %bound0 = icmp ult ptr %i.u, %scevgep13
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check14 = icmp ult i64 %i.x, 120
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.z, 12
  %n.vec = and i64 %i.z, 4611686018427387888      ; 4 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.j, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ai ; 4 uses
  %next.gep15 = getelementptr i8, ptr %i.j, i64 %i.ai ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %i.aj = getelementptr i8, ptr %next.gep15, i64 32
  %i.ak = getelementptr i8, ptr %next.gep15, i64 64
  %i.al = getelementptr i8, ptr %next.gep15, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep15, align 8, !tbaa !488, !alias.scope !931, !noalias !926
  %wide.load16 = load <4 x i64>, ptr %i.aj, align 8, !tbaa !488, !alias.scope !931, !noalias !926
  %wide.load17 = load <4 x i64>, ptr %i.ak, align 8, !tbaa !488, !alias.scope !931, !noalias !926
  %wide.load18 = load <4 x i64>, ptr %i.al, align 8, !tbaa !488, !alias.scope !931, !noalias !926
  %i.am = getelementptr i8, ptr %next.gep, i64 32
  %i.an = getelementptr i8, ptr %next.gep, i64 64
  %i.ao = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !488, !alias.scope !934, !noalias !931
  store <4 x i64> %wide.load16, ptr %i.am, align 8, !tbaa !488, !alias.scope !934, !noalias !931
  store <4 x i64> %wide.load17, ptr %i.an, align 8, !tbaa !488, !alias.scope !934, !noalias !931
  store <4 x i64> %wide.load18, ptr %i.ao, align 8, !tbaa !488, !alias.scope !934, !noalias !931
  %i.ap = getelementptr i8, ptr %next.gep15, i64 32
  %i.aq = getelementptr i8, ptr %next.gep15, i64 64
  %i.ar = getelementptr i8, ptr %next.gep15, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep15, align 8, !tbaa !488, !alias.scope !931, !noalias !926
  store <4 x ptr> splat (ptr null), ptr %i.ap, align 8, !tbaa !488, !alias.scope !931, !noalias !926
  store <4 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !488, !alias.scope !931, !noalias !926
  store <4 x ptr> splat (ptr null), ptr %i.ar, align 8, !tbaa !488, !alias.scope !931, !noalias !926
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !936

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.z, 4611686018427387900    ; 3 uses
  %i.at = shl i64 %n.vec20, 3                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.u, i64 %i.at   ; 2 uses
  %i.av = getelementptr i8, ptr %i.j, i64 %i.at
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 2 uses
  %i.aw = shl i64 %index21, 3                     ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.u, i64 %i.aw
  %next.gep23 = getelementptr i8, ptr %i.j, i64 %i.aw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %wide.load24 = load <4 x i64>, ptr %next.gep23, align 8, !tbaa !488, !alias.scope !931, !noalias !926
  store <4 x i64> %wide.load24, ptr %next.gep22, align 8, !tbaa !488, !alias.scope !934, !noalias !931
  store <4 x ptr> splat (ptr null), ptr %next.gep23, align 8, !tbaa !488, !alias.scope !931, !noalias !926
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !937

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %i.z, %n.vec20
  br i1 %cmp.n26, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.u, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !926)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %i.ay = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !488, !alias.scope !929, !noalias !926
  store i64 %i.ay, ptr %.012.i.i.i.i, align 8, !tbaa !488, !alias.scope !926, !noalias !929
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !488, !alias.scope !929, !noalias !926
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !938

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc5
end_hunk_0
begin_hunk_1_@_ZN3gmx10PropagatorILNS_16IntegrationStageE2EE23positionScalingCallbackEv:bb.a
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef ptr @_ZN3gmx10PropagatorILNS_16IntegrationStageE2EE21viewOnPRScalingMatrixEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN3gmx10PropagatorILNS_16IntegrationStageE2EE17prScalingCallbackEv(ptr dead_on_unwind noalias writable sret(%"class.std::function.115") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8
  %i.d = ptrtoint ptr %1 to i64
  store i64 %i.d, ptr %0, align 8, !tbaa !63
  store ptr @_ZNSt17_Function_handlerIFvlEZN3gmx10PropagatorILNS1_16IntegrationStageE2EE17prScalingCallbackEvEUllE_E9_M_invokeERKSt9_Any_dataOl, ptr %i.b, align 8, !tbaa !914
  store ptr @_ZNSt17_Function_handlerIFvlEZN3gmx10PropagatorILNS1_16IntegrationStageE2EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.a, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvlEZN3gmx10PropagatorILNS1_16IntegrationStageE2EE17prScalingCallbackEvEUllE_E9_M_invokeERKSt9_Any_dataOl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !471
  %i.b = load ptr, ptr %0, align 8, !tbaa !1353
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i64 %i.a, ptr %i.c, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvlEZN3gmx10PropagatorILNS1_16IntegrationStageE2EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3gmx10PropagatorILNS1_16IntegrationStageE2EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN3gmx10PropagatorILNS_16IntegrationStageE2EE17prScalingCallbackEvEUllE_, ptr %0, align 8, !tbaa !104
  br label %_ZNSt14_Function_base13_Base_managerIZN3gmx10PropagatorILNS1_16IntegrationStageE2EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !106
  br label %_ZNSt14_Function_base13_Base_managerIZN3gmx10PropagatorILNS1_16IntegrationStageE2EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !63
  store i64 %i.a, ptr %0, align 8, !tbaa !63
  br label %_ZNSt14_Function_base13_Base_managerIZN3gmx10PropagatorILNS1_16IntegrationStageE2EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3gmx10PropagatorILNS1_16IntegrationStageE2EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN3gmx10PropagatorILNS_16IntegrationStageE2EE21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerERKNS_13PropagatorTagENS_8TimeStepE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %7, float %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::unique_ptr.416", align 8 ; 4 uses
  %10 = alloca %"struct.gmx::PropagatorConnection", align 8 ; 31 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  %i.d = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #29, !noalias !1355 ; 3 uses
  %i.e = fpext float %8 to double
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !464, !noalias !1355
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !465, !noalias !1355
  invoke void @_ZN3gmx10PropagatorILNS_16IntegrationStageE2EEC1EdPNS_19StatePropagatorDataEPKNS_7MDAtomsEP13gmx_wallcycle(ptr noundef nonnull align 8 dereferenceable(200) %i.d, double noundef %i.e, ptr noundef %2, ptr noundef %i.f, ptr noundef %i.g)
          to label %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE2EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1355

common.resume:                                    ; preds = %bb.k, %bb.l, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.bk, %bb.l ], [ %i.bj, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 200) #28, !noalias !1355
  br label %common.resume

_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE2EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %9, align 8, !tbaa !63, !alias.scope !1355
  %i.i = invoke noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_10PropagatorILNS_16IntegrationStageE2EEEEEPT_St10unique_ptrIS5_St14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %9)
          to label %bb.c unwind label %bb.k       ; 2 uses

bb.c:                                             ; preds = %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE2EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.j = load ptr, ptr %9, align 8, !tbaa !63     ; 8 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE2EEESt14default_deleteIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i:              ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i:             ; preds = %bb.f, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE2EEEEclEPS3_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #28
  br label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE2EEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE2EEEEclEPS3_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 200) #28
  br label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE2EEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE2EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE2EEEEclEPS3_.exit.i
  %.val = load ptr, ptr %7, align 8, !tbaa !441   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val11 = load i64, ptr %i.af, align 8, !tbaa !466 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ag, ptr %10, align 8, !tbaa !470, !alias.scope !1358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !1358
  store i64 %.val11, ptr %i.a, align 8, !tbaa !471, !noalias !1358
  %i.ah = icmp ugt i64 %.val11, 15
  br i1 %i.ah, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE2EEESt14default_deleteIS3_EED2Ev.exit
  %i.ai = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ai, ptr %10, align 8, !tbaa !441, !alias.scope !1358
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !471, !noalias !1358
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !445, !alias.scope !1358
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE2EEESt14default_deleteIS3_EED2Ev.exit
  %i.ak = phi ptr [ %i.ai, %.noexc.i.i.i ], [ %i.ag, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE2EEESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  switch i64 %.val11, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE2EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.al = load i8, ptr %.val, align 1, !tbaa !445, !noalias !1358
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !445
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE2EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr readonly align 1 %.val, i64 %.val11, i1 false)
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE2EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

_ZN3gmxL13getConnectionILNS_16IntegrationStageE2EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !471, !noalias !1358 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !466, !alias.scope !1358
  %i.ao = load ptr, ptr %10, align 8, !tbaa !441, !alias.scope !1358
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !1358
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 256
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 288
  %i.aw = ptrtoint ptr %i.i to i64                ; 6 uses
  store i64 %i.aw, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.0.i.i.i.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.0.i.i.i.i.sroa.4.0..sroa_idx, i8 0, i64 192, i1 false), !alias.scope !1358
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr @_ZNSt17_Function_handlerIFviN3gmx15ScaleVelocitiesEEZNS0_L13getConnectionILNS0_16IntegrationStageE2EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUliS1_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation, ptr %i.ax, align 8, !tbaa !106, !alias.scope !1358
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr @_ZNSt17_Function_handlerIFviN3gmx15ScaleVelocitiesEEZNS0_L13getConnectionILNS0_16IntegrationStageE2EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUliS1_E_E9_M_invokeERKSt9_Any_dataOiOS1_, ptr %i.ay, align 8, !tbaa !106, !alias.scope !1358
  store i64 %i.aw, ptr %i.at, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 208
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE2EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.az, align 8, !tbaa !106, !alias.scope !1358
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 216
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE2EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.ba, align 8, !tbaa !106, !alias.scope !1358
  store i64 %i.aw, ptr %i.ar, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE2EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.bb, align 8, !tbaa !106, !alias.scope !1358
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 120
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE2EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.bc, align 8, !tbaa !106, !alias.scope !1358
  store i64 %i.aw, ptr %i.as, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 144
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE2EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE1_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.bd, align 8, !tbaa !106, !alias.scope !1358
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 152
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE2EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE1_E9_M_invokeERKSt9_Any_data, ptr %i.be, align 8, !tbaa !106, !alias.scope !1358
  store i64 %i.aw, ptr %i.au, align 8
  %.sroa.0.i.i.i19.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 264
  store i64 0, ptr %.sroa.0.i.i.i19.i.sroa.4.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 272
  store ptr @_ZNSt17_Function_handlerIFPN3gmx14BasicMatrix3x3IfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE2EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE2_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.bf, align 8, !tbaa !106, !alias.scope !1358
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 280
  store ptr @_ZNSt17_Function_handlerIFPN3gmx14BasicMatrix3x3IfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE2EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE2_E9_M_invokeERKSt9_Any_data, ptr %i.bg, align 8, !tbaa !106, !alias.scope !1358
  store i64 %i.aw, ptr %i.av, align 8
  %.sroa.0.i.i.i21.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 296
  store i64 0, ptr %.sroa.0.i.i.i21.i.sroa.4.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 304
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE2EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE3_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.bh, align 8, !tbaa !106, !alias.scope !1358
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 312
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE2EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE3_E9_M_invokeERKSt9_Any_data, ptr %i.bi, align 8, !tbaa !106, !alias.scope !1358
  invoke void @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper18registerPropagatorENS_20PropagatorConnectionE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %10)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE2EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  ret ptr %i.i

bb.k:                                             ; preds = %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE2EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE2EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  br label %common.resume

bb.l:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE2EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_10PropagatorILNS_16IntegrationStageE2EEEEEPT_St10unique_ptrIS5_St14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.416", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !472    ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !63     ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !63
  store ptr null, ptr %1, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !475  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !478
  %.not.i.i = icmp eq ptr %i.d, %i.f
  %i.g = inttoptr i64 %i.b to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !63
  store ptr %i.g, ptr %i.d, align 8, !tbaa !479
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !475
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE2EEES3_ISB_EEEEERS5_DpOT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !482  ; 12 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #26
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i3 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i3)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29
          to label %.noexc5 unwind label %bb.f    ; 12 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr null, ptr %2, align 8, !tbaa !63
  store ptr %i.g, ptr %i.v, align 8, !tbaa !479
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc5
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aa = add i64 %i.k, -8
  %i.ab = sub i64 %i.aa, %i.l
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ad
  %scevgep13 = getelementptr i8, ptr %i.j, i64 %i.ad
  %bound0 = icmp ult ptr %i.u, %scevgep13
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check14 = icmp ult i64 %i.x, 120
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.z, 12
  %n.vec = and i64 %i.z, 4611686018427387888      ; 4 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.j, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ai ; 4 uses
  %next.gep15 = getelementptr i8, ptr %i.j, i64 %i.ai ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %i.aj = getelementptr i8, ptr %next.gep15, i64 32
  %i.ak = getelementptr i8, ptr %next.gep15, i64 64
  %i.al = getelementptr i8, ptr %next.gep15, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep15, align 8, !tbaa !488, !alias.scope !1366, !noalias !1361
  %wide.load16 = load <4 x i64>, ptr %i.aj, align 8, !tbaa !488, !alias.scope !1366, !noalias !1361
  %wide.load17 = load <4 x i64>, ptr %i.ak, align 8, !tbaa !488, !alias.scope !1366, !noalias !1361
  %wide.load18 = load <4 x i64>, ptr %i.al, align 8, !tbaa !488, !alias.scope !1366, !noalias !1361
  %i.am = getelementptr i8, ptr %next.gep, i64 32
  %i.an = getelementptr i8, ptr %next.gep, i64 64
  %i.ao = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !488, !alias.scope !1369, !noalias !1366
  store <4 x i64> %wide.load16, ptr %i.am, align 8, !tbaa !488, !alias.scope !1369, !noalias !1366
  store <4 x i64> %wide.load17, ptr %i.an, align 8, !tbaa !488, !alias.scope !1369, !noalias !1366
  store <4 x i64> %wide.load18, ptr %i.ao, align 8, !tbaa !488, !alias.scope !1369, !noalias !1366
  %i.ap = getelementptr i8, ptr %next.gep15, i64 32
  %i.aq = getelementptr i8, ptr %next.gep15, i64 64
  %i.ar = getelementptr i8, ptr %next.gep15, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep15, align 8, !tbaa !488, !alias.scope !1366, !noalias !1361
  store <4 x ptr> splat (ptr null), ptr %i.ap, align 8, !tbaa !488, !alias.scope !1366, !noalias !1361
  store <4 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !488, !alias.scope !1366, !noalias !1361
  store <4 x ptr> splat (ptr null), ptr %i.ar, align 8, !tbaa !488, !alias.scope !1366, !noalias !1361
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1371

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.z, 4611686018427387900    ; 3 uses
  %i.at = shl i64 %n.vec20, 3                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.u, i64 %i.at   ; 2 uses
  %i.av = getelementptr i8, ptr %i.j, i64 %i.at
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 2 uses
  %i.aw = shl i64 %index21, 3                     ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.u, i64 %i.aw
  %next.gep23 = getelementptr i8, ptr %i.j, i64 %i.aw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %wide.load24 = load <4 x i64>, ptr %next.gep23, align 8, !tbaa !488, !alias.scope !1366, !noalias !1361
  store <4 x i64> %wide.load24, ptr %next.gep22, align 8, !tbaa !488, !alias.scope !1369, !noalias !1366
  store <4 x ptr> splat (ptr null), ptr %next.gep23, align 8, !tbaa !488, !alias.scope !1366, !noalias !1361
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1372

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %i.z, %n.vec20
  br i1 %cmp.n26, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.u, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1364)
  %i.ay = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !488, !alias.scope !1364, !noalias !1361
  store i64 %i.ay, ptr %.012.i.i.i.i, align 8, !tbaa !488, !alias.scope !1361, !noalias !1364
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !488, !alias.scope !1364, !noalias !1361
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1373

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc5
end_hunk_1
begin_hunk_2_@_ZN3gmx10PropagatorILNS_16IntegrationStageE3EE23positionScalingCallbackEv:bb.a
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef ptr @_ZN3gmx10PropagatorILNS_16IntegrationStageE3EE21viewOnPRScalingMatrixEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN3gmx10PropagatorILNS_16IntegrationStageE3EE17prScalingCallbackEv(ptr dead_on_unwind noalias writable sret(%"class.std::function.115") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8
  %i.d = ptrtoint ptr %1 to i64
  store i64 %i.d, ptr %0, align 8, !tbaa !71
  store ptr @_ZNSt17_Function_handlerIFvlEZN3gmx10PropagatorILNS1_16IntegrationStageE3EE17prScalingCallbackEvEUllE_E9_M_invokeERKSt9_Any_dataOl, ptr %i.b, align 8, !tbaa !914
  store ptr @_ZNSt17_Function_handlerIFvlEZN3gmx10PropagatorILNS1_16IntegrationStageE3EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation, ptr %i.a, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvlEZN3gmx10PropagatorILNS1_16IntegrationStageE3EE17prScalingCallbackEvEUllE_E9_M_invokeERKSt9_Any_dataOl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !471
  %i.b = load ptr, ptr %0, align 8, !tbaa !1786
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store i64 %i.a, ptr %i.c, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvlEZN3gmx10PropagatorILNS1_16IntegrationStageE3EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN3gmx10PropagatorILNS1_16IntegrationStageE3EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN3gmx10PropagatorILNS_16IntegrationStageE3EE17prScalingCallbackEvEUllE_, ptr %0, align 8, !tbaa !104
  br label %_ZNSt14_Function_base13_Base_managerIZN3gmx10PropagatorILNS1_16IntegrationStageE3EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !106
  br label %_ZNSt14_Function_base13_Base_managerIZN3gmx10PropagatorILNS1_16IntegrationStageE3EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !71
  store i64 %i.a, ptr %0, align 8, !tbaa !71
  br label %_ZNSt14_Function_base13_Base_managerIZN3gmx10PropagatorILNS1_16IntegrationStageE3EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN3gmx10PropagatorILNS1_16IntegrationStageE3EE17prScalingCallbackEvEUllE_E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN3gmx10PropagatorILNS_16IntegrationStageE3EE21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerERKNS_13PropagatorTagENS_8TimeStepE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %7, float %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::unique_ptr.464", align 8 ; 4 uses
  %10 = alloca %"struct.gmx::PropagatorConnection", align 8 ; 31 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  %i.d = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #29, !noalias !1788 ; 3 uses
  %i.e = fpext float %8 to double
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !464, !noalias !1788
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !465, !noalias !1788
  invoke void @_ZN3gmx10PropagatorILNS_16IntegrationStageE3EEC1EdPNS_19StatePropagatorDataEPKNS_7MDAtomsEP13gmx_wallcycle(ptr noundef nonnull align 8 dereferenceable(200) %i.d, double noundef %i.e, ptr noundef %2, ptr noundef %i.f, ptr noundef %i.g)
          to label %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE3EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1788

common.resume:                                    ; preds = %bb.k, %bb.l, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.bk, %bb.l ], [ %i.bj, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 200) #28, !noalias !1788
  br label %common.resume

_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE3EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.d, ptr %9, align 8, !tbaa !71, !alias.scope !1788
  %i.i = invoke noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_10PropagatorILNS_16IntegrationStageE3EEEEEPT_St10unique_ptrIS5_St14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %9)
          to label %bb.c unwind label %bb.k       ; 2 uses

bb.c:                                             ; preds = %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE3EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.j = load ptr, ptr %9, align 8, !tbaa !71     ; 8 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE3EEESt14default_deleteIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i:              ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i:             ; preds = %bb.f, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE3EEEEclEPS3_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #28
  br label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE3EEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE3EEEEclEPS3_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 200) #28
  br label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE3EEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE3EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE3EEEEclEPS3_.exit.i
  %.val = load ptr, ptr %7, align 8, !tbaa !441   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val11 = load i64, ptr %i.af, align 8, !tbaa !466 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1791)
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ag, ptr %10, align 8, !tbaa !470, !alias.scope !1791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !1791
  store i64 %.val11, ptr %i.a, align 8, !tbaa !471, !noalias !1791
  %i.ah = icmp ugt i64 %.val11, 15
  br i1 %i.ah, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE3EEESt14default_deleteIS3_EED2Ev.exit
  %i.ai = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ai, ptr %10, align 8, !tbaa !441, !alias.scope !1791
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !471, !noalias !1791
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !445, !alias.scope !1791
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE3EEESt14default_deleteIS3_EED2Ev.exit
  %i.ak = phi ptr [ %i.ai, %.noexc.i.i.i ], [ %i.ag, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE3EEESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  switch i64 %.val11, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE3EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.al = load i8, ptr %.val, align 1, !tbaa !445, !noalias !1791
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !445
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE3EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr readonly align 1 %.val, i64 %.val11, i1 false)
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE3EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

_ZN3gmxL13getConnectionILNS_16IntegrationStageE3EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.am = load i64, ptr %i.a, align 8, !tbaa !471, !noalias !1791 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !466, !alias.scope !1791
  %i.ao = load ptr, ptr %10, align 8, !tbaa !441, !alias.scope !1791
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 0, ptr %i.ap, align 1, !tbaa !445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !1791
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 256
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 288
  %i.aw = ptrtoint ptr %i.i to i64                ; 6 uses
  store i64 %i.aw, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.0.i.i.i.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %.sroa.0.i.i.i.i.sroa.4.0..sroa_idx, i8 0, i64 192, i1 false), !alias.scope !1791
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr @_ZNSt17_Function_handlerIFviN3gmx15ScaleVelocitiesEEZNS0_L13getConnectionILNS0_16IntegrationStageE3EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUliS1_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation, ptr %i.ax, align 8, !tbaa !106, !alias.scope !1791
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr @_ZNSt17_Function_handlerIFviN3gmx15ScaleVelocitiesEEZNS0_L13getConnectionILNS0_16IntegrationStageE3EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUliS1_E_E9_M_invokeERKSt9_Any_dataOiOS1_, ptr %i.ay, align 8, !tbaa !106, !alias.scope !1791
  store i64 %i.aw, ptr %i.at, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 208
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE3EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.az, align 8, !tbaa !106, !alias.scope !1791
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 216
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE3EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.ba, align 8, !tbaa !106, !alias.scope !1791
  store i64 %i.aw, ptr %i.ar, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE3EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.bb, align 8, !tbaa !106, !alias.scope !1791
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 120
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE3EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.bc, align 8, !tbaa !106, !alias.scope !1791
  store i64 %i.aw, ptr %i.as, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 144
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE3EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE1_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.bd, align 8, !tbaa !106, !alias.scope !1791
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 152
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE3EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE1_E9_M_invokeERKSt9_Any_data, ptr %i.be, align 8, !tbaa !106, !alias.scope !1791
  store i64 %i.aw, ptr %i.au, align 8
  %.sroa.0.i.i.i19.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 264
  store i64 0, ptr %.sroa.0.i.i.i19.i.sroa.4.0..sroa_idx, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 272
  store ptr @_ZNSt17_Function_handlerIFPN3gmx14BasicMatrix3x3IfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE3EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE2_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.bf, align 8, !tbaa !106, !alias.scope !1791
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 280
  store ptr @_ZNSt17_Function_handlerIFPN3gmx14BasicMatrix3x3IfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE3EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE2_E9_M_invokeERKSt9_Any_data, ptr %i.bg, align 8, !tbaa !106, !alias.scope !1791
  store i64 %i.aw, ptr %i.av, align 8
  %.sroa.0.i.i.i21.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 296
  store i64 0, ptr %.sroa.0.i.i.i21.i.sroa.4.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 304
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE3EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE3_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.bh, align 8, !tbaa !106, !alias.scope !1791
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 312
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE3EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE3_E9_M_invokeERKSt9_Any_data, ptr %i.bi, align 8, !tbaa !106, !alias.scope !1791
  invoke void @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper18registerPropagatorENS_20PropagatorConnectionE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %10)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE3EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  ret ptr %i.i

bb.k:                                             ; preds = %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE3EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE3EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  br label %common.resume

bb.l:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE3EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_10PropagatorILNS_16IntegrationStageE3EEEEEPT_St10unique_ptrIS5_St14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.464", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !472    ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !71     ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !71
  store ptr null, ptr %1, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !475  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !478
  %.not.i.i = icmp eq ptr %i.d, %i.f
  %i.g = inttoptr i64 %i.b to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !71
  store ptr %i.g, ptr %i.d, align 8, !tbaa !479
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !475
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE3EEES3_ISB_EEEEERS5_DpOT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !482  ; 12 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #26
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i3 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i3)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29
          to label %.noexc5 unwind label %bb.f    ; 12 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr null, ptr %2, align 8, !tbaa !71
  store ptr %i.g, ptr %i.v, align 8, !tbaa !479
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc5
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aa = add i64 %i.k, -8
  %i.ab = sub i64 %i.aa, %i.l
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ad
  %scevgep13 = getelementptr i8, ptr %i.j, i64 %i.ad
  %bound0 = icmp ult ptr %i.u, %scevgep13
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check14 = icmp ult i64 %i.x, 120
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.z, 12
  %n.vec = and i64 %i.z, 4611686018427387888      ; 4 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.j, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ai ; 4 uses
  %next.gep15 = getelementptr i8, ptr %i.j, i64 %i.ai ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  %i.aj = getelementptr i8, ptr %next.gep15, i64 32
  %i.ak = getelementptr i8, ptr %next.gep15, i64 64
  %i.al = getelementptr i8, ptr %next.gep15, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep15, align 8, !tbaa !488, !alias.scope !1799, !noalias !1794
  %wide.load16 = load <4 x i64>, ptr %i.aj, align 8, !tbaa !488, !alias.scope !1799, !noalias !1794
  %wide.load17 = load <4 x i64>, ptr %i.ak, align 8, !tbaa !488, !alias.scope !1799, !noalias !1794
  %wide.load18 = load <4 x i64>, ptr %i.al, align 8, !tbaa !488, !alias.scope !1799, !noalias !1794
  %i.am = getelementptr i8, ptr %next.gep, i64 32
  %i.an = getelementptr i8, ptr %next.gep, i64 64
  %i.ao = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !488, !alias.scope !1802, !noalias !1799
  store <4 x i64> %wide.load16, ptr %i.am, align 8, !tbaa !488, !alias.scope !1802, !noalias !1799
  store <4 x i64> %wide.load17, ptr %i.an, align 8, !tbaa !488, !alias.scope !1802, !noalias !1799
  store <4 x i64> %wide.load18, ptr %i.ao, align 8, !tbaa !488, !alias.scope !1802, !noalias !1799
  %i.ap = getelementptr i8, ptr %next.gep15, i64 32
  %i.aq = getelementptr i8, ptr %next.gep15, i64 64
  %i.ar = getelementptr i8, ptr %next.gep15, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep15, align 8, !tbaa !488, !alias.scope !1799, !noalias !1794
  store <4 x ptr> splat (ptr null), ptr %i.ap, align 8, !tbaa !488, !alias.scope !1799, !noalias !1794
  store <4 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !488, !alias.scope !1799, !noalias !1794
  store <4 x ptr> splat (ptr null), ptr %i.ar, align 8, !tbaa !488, !alias.scope !1799, !noalias !1794
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1804

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.z, 4611686018427387900    ; 3 uses
  %i.at = shl i64 %n.vec20, 3                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.u, i64 %i.at   ; 2 uses
  %i.av = getelementptr i8, ptr %i.j, i64 %i.at
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 2 uses
  %i.aw = shl i64 %index21, 3                     ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.u, i64 %i.aw
  %next.gep23 = getelementptr i8, ptr %i.j, i64 %i.aw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  %wide.load24 = load <4 x i64>, ptr %next.gep23, align 8, !tbaa !488, !alias.scope !1799, !noalias !1794
  store <4 x i64> %wide.load24, ptr %next.gep22, align 8, !tbaa !488, !alias.scope !1802, !noalias !1799
  store <4 x ptr> splat (ptr null), ptr %next.gep23, align 8, !tbaa !488, !alias.scope !1799, !noalias !1794
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1805

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %i.z, %n.vec20
  br i1 %cmp.n26, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.u, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  %i.ay = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !488, !alias.scope !1797, !noalias !1794
  store i64 %i.ay, ptr %.012.i.i.i.i, align 8, !tbaa !488, !alias.scope !1794, !noalias !1797
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !488, !alias.scope !1797, !noalias !1794
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.az, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1806

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc5
end_hunk_2
begin_hunk_3_@_ZN3gmx10PropagatorILNS_16IntegrationStageE4EE21viewOnPRScalingMatrixEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.63)
  %i.a = load ptr, ptr %1, align 8, !tbaa !441
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.81, ptr noundef %i.a, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx10PropagatorILNS_16IntegrationStageE4EE21viewOnPRScalingMatrixEvENKUlvE_clEv, ptr noundef nonnull @.str.58, i32 noundef 911) #26
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %1, align 8, !tbaa !441    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.f = load i64, ptr %i.d, align 8, !tbaa !445
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN3gmx10PropagatorILNS_16IntegrationStageE4EE17prScalingCallbackEv(ptr dead_on_unwind noalias writable sret(%"class.std::function.115") align 8 %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.63)
  %i.a = load ptr, ptr %2, align 8, !tbaa !441
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.81, ptr noundef %i.a, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx10PropagatorILNS_16IntegrationStageE4EE17prScalingCallbackEvENKUlvE_clEv, ptr noundef nonnull @.str.58, i32 noundef 921) #26
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %2, align 8, !tbaa !441    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.f = load i64, ptr %i.d, align 8, !tbaa !445
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN3gmx10PropagatorILNS_16IntegrationStageE4EE21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerERKNS_13PropagatorTagENS_8TimeStepE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(32) %7, float %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"class.std::unique_ptr.520", align 8 ; 4 uses
  %10 = alloca %"struct.gmx::PropagatorConnection", align 8 ; 20 uses
  %i.b = fcmp oeq float %8, 0.000000e+00
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx10PropagatorILNS_16IntegrationStageE4EE21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerERKNS_13PropagatorTagENS_8TimeStepEENKUlvE_clEv, ptr noundef nonnull @.str.58, i32 noundef 987) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  %i.e = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #29, !noalias !1917 ; 3 uses
  %i.f = fpext float %8 to double
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !464, !noalias !1917
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !465, !noalias !1917
  invoke void @_ZN3gmx10PropagatorILNS_16IntegrationStageE4EEC1EdPNS_19StatePropagatorDataEPKNS_7MDAtomsEP13gmx_wallcycle(ptr noundef nonnull align 8 dereferenceable(200) %i.e, double noundef %i.f, ptr noundef %2, ptr noundef %i.g, ptr noundef %i.h)
          to label %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE4EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.d, !noalias !1917

common.resume:                                    ; preds = %bb.m, %bb.n, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.bc, %bb.n ], [ %i.bb, %bb.m ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 200) #28, !noalias !1917
  br label %common.resume

_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE4EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.c
  store ptr %i.e, ptr %9, align 8, !tbaa !80, !alias.scope !1917
  %i.j = invoke noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_10PropagatorILNS_16IntegrationStageE4EEEEEPT_St10unique_ptrIS5_St14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %9)
          to label %bb.e unwind label %bb.m       ; 2 uses

bb.e:                                             ; preds = %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE4EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.k = load ptr, ptr %9, align 8, !tbaa !80     ; 8 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE4EEESt14default_deleteIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !50
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i:              ; preds = %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49   ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #28
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i

_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i:             ; preds = %bb.h, %_ZNSt6vectorIfSaIfEED2Ev.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !49  ; 3 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE4EEEEclEPS3_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #28
  br label %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE4EEEEclEPS3_.exit.i

_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE4EEEEclEPS3_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIfSaIfEED2Ev.exit2.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 200) #28
  br label %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE4EEESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE4EEESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN3gmx10PropagatorILNS0_16IntegrationStageE4EEEEclEPS3_.exit.i
  %.val = load ptr, ptr %7, align 8, !tbaa !441   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.val11 = load i64, ptr %i.ag, align 8, !tbaa !466 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1920)
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ah, ptr %10, align 8, !tbaa !470, !alias.scope !1920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12, !noalias !1920
  store i64 %.val11, ptr %i.a, align 8, !tbaa !471, !noalias !1920
  %i.ai = icmp ugt i64 %.val11, 15
  br i1 %i.ai, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE4EEESt14default_deleteIS3_EED2Ev.exit
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.aj, ptr %10, align 8, !tbaa !441, !alias.scope !1920
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !471, !noalias !1920
  store i64 %i.ak, ptr %i.ah, align 8, !tbaa !445, !alias.scope !1920
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE4EEESt14default_deleteIS3_EED2Ev.exit
  %i.al = phi ptr [ %i.aj, %.noexc.i.i.i ], [ %i.ah, %_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE4EEESt14default_deleteIS3_EED2Ev.exit ] ; 2 uses
  switch i64 %.val11, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE4EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = load i8, ptr %.val, align 1, !tbaa !445, !noalias !1920
  store i8 %i.am, ptr %i.al, align 1, !tbaa !445
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE4EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr readonly align 1 %.val, i64 %.val11, i1 false)
  br label %_ZN3gmxL13getConnectionILNS_16IntegrationStageE4EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit

_ZN3gmxL13getConnectionILNS_16IntegrationStageE4EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit: ; preds = %._crit_edge.i.i.i.i, %bb.j, %bb.k
  %i.an = load i64, ptr %i.a, align 8, !tbaa !471, !noalias !1920 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !466, !alias.scope !1920
  %i.ap = load ptr, ptr %10, align 8, !tbaa !441, !alias.scope !1920
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12, !noalias !1920
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.au = ptrtoint ptr %i.j to i64                ; 3 uses
  store i64 %i.au, ptr %i.ar, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.0.i.i.i.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0.i.i.i.i.sroa.4.0..sroa_idx, i8 0, i64 256, i1 false), !alias.scope !1920
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr @_ZNSt17_Function_handlerIFviN3gmx15ScaleVelocitiesEEZNS0_L13getConnectionILNS0_16IntegrationStageE4EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUliS1_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation, ptr %i.av, align 8, !tbaa !106, !alias.scope !1920
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr @_ZNSt17_Function_handlerIFviN3gmx15ScaleVelocitiesEEZNS0_L13getConnectionILNS0_16IntegrationStageE4EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUliS1_E_E9_M_invokeERKSt9_Any_dataOiOS1_, ptr %i.aw, align 8, !tbaa !106, !alias.scope !1920
  store i64 %i.au, ptr %i.at, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 208
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE4EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE_E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation, ptr %i.ax, align 8, !tbaa !106, !alias.scope !1920
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 216
  store ptr @_ZNSt17_Function_handlerIFSt8functionIFvlEEvEZN3gmxL13getConnectionILNS4_16IntegrationStageE4EEENS4_20PropagatorConnectionEPNS4_10PropagatorIXT_EEERKNS4_13PropagatorTagEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.ay, align 8, !tbaa !106, !alias.scope !1920
  store i64 %i.au, ptr %i.as, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE4EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE0_E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation, ptr %i.az, align 8, !tbaa !106, !alias.scope !1920
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 120
  store ptr @_ZNSt17_Function_handlerIFN3gmx8ArrayRefIfEEvEZNS0_L13getConnectionILNS0_16IntegrationStageE4EEENS0_20PropagatorConnectionEPNS0_10PropagatorIXT_EEERKNS0_13PropagatorTagEEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.ba, align 8, !tbaa !106, !alias.scope !1920
  invoke void @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper18registerPropagatorENS_20PropagatorConnectionE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %10)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE4EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  ret ptr %i.j

bb.m:                                             ; preds = %_ZSt11make_uniqueIN3gmx10PropagatorILNS0_16IntegrationStageE4EEEJRNS0_8TimeStepERPNS0_19StatePropagatorDataERPNS0_7MDAtomsERP13gmx_wallcycleEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN3gmx10PropagatorILNS0_16IntegrationStageE4EEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #12
  br label %common.resume

bb.n:                                             ; preds = %_ZN3gmxL13getConnectionILNS_16IntegrationStageE4EEENS_20PropagatorConnectionEPNS_10PropagatorIXT_EEERKNS_13PropagatorTagE.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20PropagatorConnectionD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %10) #12
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_10PropagatorILNS_16IntegrationStageE4EEEEEPT_St10unique_ptrIS5_St14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.520", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !472    ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !80     ; 2 uses
  store i64 %i.b, ptr %2, align 8, !tbaa !80
  store ptr null, ptr %1, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !475  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !478
  %.not.i.i = icmp eq ptr %i.d, %i.f
  %i.g = inttoptr i64 %i.b to ptr                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !80
  store ptr %i.g, ptr %i.d, align 8, !tbaa !479
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !475
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_10PropagatorILNS1_16IntegrationStageE4EEES3_ISB_EEEEERS5_DpOT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !482  ; 12 uses
  %i.k = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #26
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i3 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i3)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29
          to label %.noexc5 unwind label %bb.f    ; 12 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr null, ptr %2, align 8, !tbaa !80
  store ptr %i.g, ptr %i.v, align 8, !tbaa !479
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc5
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aa = add i64 %i.k, -8
  %i.ab = sub i64 %i.aa, %i.l
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ad
  %scevgep13 = getelementptr i8, ptr %i.j, i64 %i.ad
  %bound0 = icmp ult ptr %i.u, %scevgep13
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check14 = icmp ult i64 %i.x, 120
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.z, 12
  %n.vec = and i64 %i.z, 4611686018427387888      ; 4 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.j, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ai ; 4 uses
  %next.gep15 = getelementptr i8, ptr %i.j, i64 %i.ai ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  %i.aj = getelementptr i8, ptr %next.gep15, i64 32
  %i.ak = getelementptr i8, ptr %next.gep15, i64 64
  %i.al = getelementptr i8, ptr %next.gep15, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep15, align 8, !tbaa !488, !alias.scope !1928, !noalias !1923
  %wide.load16 = load <4 x i64>, ptr %i.aj, align 8, !tbaa !488, !alias.scope !1928, !noalias !1923
  %wide.load17 = load <4 x i64>, ptr %i.ak, align 8, !tbaa !488, !alias.scope !1928, !noalias !1923
  %wide.load18 = load <4 x i64>, ptr %i.al, align 8, !tbaa !488, !alias.scope !1928, !noalias !1923
  %i.am = getelementptr i8, ptr %next.gep, i64 32
  %i.an = getelementptr i8, ptr %next.gep, i64 64
  %i.ao = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !488, !alias.scope !1931, !noalias !1928
  store <4 x i64> %wide.load16, ptr %i.am, align 8, !tbaa !488, !alias.scope !1931, !noalias !1928
  store <4 x i64> %wide.load17, ptr %i.an, align 8, !tbaa !488, !alias.scope !1931, !noalias !1928
  store <4 x i64> %wide.load18, ptr %i.ao, align 8, !tbaa !488, !alias.scope !1931, !noalias !1928
  %i.ap = getelementptr i8, ptr %next.gep15, i64 32
  %i.aq = getelementptr i8, ptr %next.gep15, i64 64
  %i.ar = getelementptr i8, ptr %next.gep15, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep15, align 8, !tbaa !488, !alias.scope !1928, !noalias !1923
  store <4 x ptr> splat (ptr null), ptr %i.ap, align 8, !tbaa !488, !alias.scope !1928, !noalias !1923
  store <4 x ptr> splat (ptr null), ptr %i.aq, align 8, !tbaa !488, !alias.scope !1928, !noalias !1923
  store <4 x ptr> splat (ptr null), ptr %i.ar, align 8, !tbaa !488, !alias.scope !1928, !noalias !1923
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1933

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !495

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.z, 4611686018427387900    ; 3 uses
  %i.at = shl i64 %n.vec20, 3                     ; 2 uses
  %i.au = getelementptr i8, ptr %i.u, i64 %i.at   ; 2 uses
  %i.av = getelementptr i8, ptr %i.j, i64 %i.at
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 2 uses
  %i.aw = shl i64 %index21, 3                     ; 2 uses
  %next.gep22 = getelementptr i8, ptr %i.u, i64 %i.aw
  %next.gep23 = getelementptr i8, ptr %i.j, i64 %i.aw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  %wide.load24 = load <4 x i64>, ptr %next.gep23, align 8, !tbaa !488, !alias.scope !1928, !noalias !1923
  store <4 x i64> %wide.load24, ptr %next.gep22, align 8, !tbaa !488, !alias.scope !1931, !noalias !1928
  store <4 x ptr> splat (ptr null), ptr %next.gep23, align 8, !tbaa !488, !alias.scope !1928, !noalias !1923
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next25, %n.vec20
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1934

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %i.z, %n.vec20
  br i1 %cmp.n26, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.u, %vector.memcheck ], [ %i.ag, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1923)
end_hunk_3
