Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/mttk?download=true
inline.NumInlined: 2333
inline.NumDeleted: 1270
begin_hunk_0_@"_ZNSt17_Function_handlerIFvvEZN3gmx14MttkBoxScaling12scheduleTaskEldRKSt8functionIFvS3_IS0_EEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvvEZN3gmx14MttkBoxScaling12scheduleTaskEldRKSt8functionIFvS3_IS0_EEEE3$_0E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN3gmx14MttkBoxScaling12scheduleTaskEldRKSt8functionIFvS3_IFvvEEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN3gmx14MttkBoxScaling12scheduleTaskEldRKSt8functionIFvS1_IFvvEEEEE3$_0", ptr %0, align 8, !tbaa !275
  br label %"_ZNSt14_Function_base13_Base_managerIZN3gmx14MttkBoxScaling12scheduleTaskEldRKSt8functionIFvS3_IFvvEEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !222
  br label %"_ZNSt14_Function_base13_Base_managerIZN3gmx14MttkBoxScaling12scheduleTaskEldRKSt8functionIFvS3_IFvvEEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !71
  store i64 %.val.i, ptr %0, align 8, !tbaa !71
  br label %"_ZNSt14_Function_base13_Base_managerIZN3gmx14MttkBoxScaling12scheduleTaskEldRKSt8functionIFvS3_IFvvEEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN3gmx14MttkBoxScaling12scheduleTaskEldRKSt8functionIFvS3_IFvvEEEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx14MttkBoxScaling8scaleBoxEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !350
  %i.c = tail call noundef ptr @_ZN3gmx19StatePropagatorData3boxEv(ptr noundef nonnull align 8 dereferenceable(632) %i.b) ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !351  ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !279
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load float, ptr %i.h, align 8, !tbaa !349
  %i.j = fmul float %i.g, %i.i
  %i.k = tail call noundef float @expf(float noundef %i.j) #33 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.s = load <8 x float>, ptr %i.c, align 4, !tbaa !114
  %i.t = insertelement <8 x float> poison, float %i.k, i64 0
  %i.u = shufflevector <8 x float> %i.t, <8 x float> poison, <8 x i32> zeroinitializer
  %i.v = fmul <8 x float> %i.u, %i.s              ; 2 uses
  store <8 x float> %i.v, ptr %i.c, align 4, !tbaa !114
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 3 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !114
  %i.y = fmul float %i.k, %i.x
  store float %i.y, ptr %i.w, align 4, !tbaa !114
  %i.z = load float, ptr %i.f, align 4, !tbaa !279 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.ab = extractelement <8 x float> %i.v, i64 0
  %i.ac = fmul float %i.ab, %i.z
  store float %i.ac, ptr %i.aa, align 4, !tbaa !114
  %i.ad = load float, ptr %i.l, align 4, !tbaa !114
  %i.ae = fmul float %i.z, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store float %i.ae, ptr %i.af, align 4, !tbaa !114
  %i.ag = load float, ptr %i.m, align 4, !tbaa !114
  %i.ah = fmul float %i.z, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store float %i.ah, ptr %i.ai, align 4, !tbaa !114
  %i.aj = load float, ptr %i.n, align 4, !tbaa !114
  %i.ak = fmul float %i.z, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store float %i.ak, ptr %i.al, align 4, !tbaa !114
  %i.am = load float, ptr %i.o, align 4, !tbaa !114
  %i.an = fmul float %i.z, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  store float %i.an, ptr %i.ao, align 4, !tbaa !114
  %i.ap = load float, ptr %i.p, align 4, !tbaa !114
  %i.aq = fmul float %i.z, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store float %i.aq, ptr %i.ar, align 4, !tbaa !114
  %i.as = load float, ptr %i.q, align 4, !tbaa !114
  %i.at = fmul float %i.z, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store float %i.at, ptr %i.au, align 4, !tbaa !114
  %i.av = load float, ptr %i.r, align 4, !tbaa !114
  %i.aw = fmul float %i.z, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store float %i.aw, ptr %i.ax, align 4, !tbaa !114
  %i.ay = load float, ptr %i.w, align 4, !tbaa !114
  %i.az = fmul float %i.z, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 84
  store float %i.az, ptr %i.ba, align 4, !tbaa !114
  tail call void @_ZN3gmx8MttkData25calculateIntegralIfNeededEv(ptr noundef nonnull align 8 dereferenceable(152) %i.e)
  ret void
}

declare noundef ptr @_ZN3gmx19StatePropagatorData3boxEv(ptr noundef nonnull align 8 dereferenceable(632)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #26

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3gmx14MttkBoxScaling21getElementPointerImplEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataEPNS_26FreeEnergyPerturbationDataEPNS_25GlobalCommunicationHelperEPNS_18ObservablesReducerERKNS_31MttkPropagatorConnectionDetailsE(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readnone captures(none) %4, ptr nofree noundef readnone captures(none) %5, ptr nofree noundef readnone captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(212) %7) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::unique_ptr.561", align 8 ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.a, ptr %8, align 8, !tbaa !115, !alias.scope !621
  store i64 7022344665465910349, ptr %i.a, align 8, !alias.scope !621
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 8, ptr %i.b, align 8, !tbaa !116, !alias.scope !621
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 0, ptr %i.c, align 8, !tbaa !25, !alias.scope !621
  %i.d = load ptr, ptr %1, align 8, !tbaa !119
  %i.e = invoke { ptr, i8 } @_ZN3gmx32ModularSimulatorAlgorithmBuilder14simulationDataINS_8MttkDataEEESt8optionalIPT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(712) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper14simulationDataINS_8MttkDataEEESt8optionalIPT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper14simulationDataINS_8MttkDataEEESt8optionalIPT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a
  %i.f = extractvalue { ptr, i8 } %i.e, 1
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = load ptr, ptr %8, align 8, !tbaa !24     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper14simulationDataINS_8MttkDataEEESt8optionalIPT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.j = load i64, ptr %i.a, align 8, !tbaa !25
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper14simulationDataINS_8MttkDataEEESt8optionalIPT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN3gmx8MttkData5buildEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataERKNS_31MttkPropagatorConnectionDetailsE(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(212) %7)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %8, align 8, !tbaa !24     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.c
  %i.o = load i64, ptr %i.a, align 8, !tbaa !25
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.k

bb.d:                                             ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !113
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.t, ptr %10, align 8, !tbaa !115, !alias.scope !622
  store i64 7022344665465910349, ptr %i.t, align 8, !alias.scope !622
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 8, ptr %i.u, align 8, !tbaa !116, !alias.scope !622
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i8 0, ptr %i.v, align 8, !tbaa !25, !alias.scope !622
  %i.w = load ptr, ptr %1, align 8, !tbaa !119
  %i.x = invoke { ptr, i8 } @_ZN3gmx32ModularSimulatorAlgorithmBuilder14simulationDataINS_8MttkDataEEESt8optionalIPT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(712) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper14simulationDataINS_8MttkDataEEESt8optionalIPT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit16 unwind label %bb.i ; 2 uses

_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper14simulationDataINS_8MttkDataEEESt8optionalIPT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit16: ; preds = %bb.d
  %i.y = extractvalue { ptr, i8 } %i.x, 0
  %i.z = extractvalue { ptr, i8 } %i.x, 1
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZNOSt8optionalIPN3gmx8MttkDataEE5valueEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper14simulationDataINS_8MttkDataEEESt8optionalIPT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit16
  invoke void @_ZSt27__throw_bad_optional_accessv() #31
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNOSt8optionalIPN3gmx8MttkDataEE5valueEv.exit:   ; preds = %_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper14simulationDataINS_8MttkDataEEESt8optionalIPT_ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit16
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %i.ab = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #34
          to label %.noexc17 unwind label %bb.i, !noalias !623 ; 3 uses

.noexc17:                                         ; preds = %_ZNOSt8optionalIPN3gmx8MttkDataEE5valueEv.exit
  %i.ac = load double, ptr %i.s, align 8, !tbaa !286, !noalias !623
  %i.ad = fptrunc double %i.ac to float
  invoke void @_ZN3gmx14MttkBoxScalingC1EfPNS_19StatePropagatorDataEPNS_8MttkDataE(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, float noundef %i.ad, ptr noundef %2, ptr noundef %i.y)
          to label %bb.g unwind label %bb.f, !noalias !623

bb.f:                                             ; preds = %.noexc17
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 32) #30, !noalias !623
  br label %.body

bb.g:                                             ; preds = %.noexc17
  store ptr %i.ab, ptr %9, align 8, !tbaa !71, !alias.scope !623
  %i.af = invoke noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_14MttkBoxScalingEEEPT_St10unique_ptrIS3_St14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 %9)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %9, align 8, !tbaa !71    ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx14MttkBoxScalingESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx14MttkBoxScalingEEclEPS1_.exit.i

_ZNKSt14default_deleteIN3gmx14MttkBoxScalingEEclEPS1_.exit.i: ; preds = %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrIN3gmx14MttkBoxScalingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx14MttkBoxScalingESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.h, %_ZNKSt14default_deleteIN3gmx14MttkBoxScalingEEclEPS1_.exit.i
  %i.ah = load ptr, ptr %10, align 8, !tbaa !24   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.t
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt10unique_ptrIN3gmx14MttkBoxScalingESt14default_deleteIS1_EED2Ev.exit
  %i.aj = load i64, ptr %i.t, align 8, !tbaa !25
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt10unique_ptrIN3gmx14MttkBoxScalingESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  ret ptr %i.af

bb.i:                                             ; preds = %_ZNOSt8optionalIPN3gmx8MttkDataEE5valueEv.exit, %bb.e, %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %9, align 8, !tbaa !71    ; 2 uses
  %.not.i21 = icmp eq ptr %i.an, null
  br i1 %.not.i21, label %.body, label %_ZNKSt14default_deleteIN3gmx14MttkBoxScalingEEclEPS1_.exit.i22

_ZNKSt14default_deleteIN3gmx14MttkBoxScalingEEclEPS1_.exit.i22: ; preds = %bb.j
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 32) #30
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN3gmx14MttkBoxScalingEEclEPS1_.exit.i22, %bb.j, %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %i.al, %bb.i ], [ %i.am, %bb.j ], [ %i.am, %_ZNKSt14default_deleteIN3gmx14MttkBoxScalingEEclEPS1_.exit.i22 ]
  %i.ao = load ptr, ptr %10, align 8, !tbaa !24   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.t
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.body
  %i.aq = load i64, ptr %i.t, align 8, !tbaa !25
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3gmx38ModularSimulatorAlgorithmBuilderHelper12storeElementINS_14MttkBoxScalingEEEPT_St10unique_ptrIS3_St14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef align 8 %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !119    ; 4 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !71     ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  store ptr null, ptr %1, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 184 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !329  ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !330
  %.not.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %i.e, align 8, !tbaa !333
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.d, align 8, !tbaa !329
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_14MttkBoxScalingES3_IS9_EEEEERS5_DpOT_.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !334  ; 9 uses
  %i.k = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #31
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i6 = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i6)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #34
          to label %.noexc8 unwind label %bb.f    ; 9 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store ptr %i.c, ptr %i.v, align 8, !tbaa !333
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc8
  %i.w = add i64 %i.k, -8
  %i.x = sub i64 %i.w, %i.l                       ; 3 uses
  %i.y = lshr i64 %i.x, 3
  %i.z = add nuw nsw i64 %i.y, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.x, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check18 = icmp ult i64 %i.x, 120
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.z, 12
  %n.vec = and i64 %i.z, 4611686018427387888      ; 4 uses
  %i.ab = shl i64 %n.vec, 3                       ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ae ; 4 uses
  %next.gep19 = getelementptr i8, ptr %i.j, i64 %i.ae ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.af = getelementptr i8, ptr %next.gep19, i64 32 ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep19, i64 64 ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep19, i64 96 ; 2 uses
  %wide.load = load <4 x i64>, ptr %next.gep19, align 8, !tbaa !335, !alias.scope !631
  %wide.load20 = load <4 x i64>, ptr %i.af, align 8, !tbaa !335, !alias.scope !631
  %wide.load21 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !335, !alias.scope !631
  %wide.load22 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !335, !alias.scope !631
  %i.ai = getelementptr i8, ptr %next.gep, i64 32
  %i.aj = getelementptr i8, ptr %next.gep, i64 64
  %i.ak = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !335, !alias.scope !630
  store <4 x i64> %wide.load20, ptr %i.ai, align 8, !tbaa !335, !alias.scope !630
  store <4 x i64> %wide.load21, ptr %i.aj, align 8, !tbaa !335, !alias.scope !630
  store <4 x i64> %wide.load22, ptr %i.ak, align 8, !tbaa !335, !alias.scope !630
  store <4 x ptr> splat (ptr null), ptr %next.gep19, align 8, !tbaa !335, !alias.scope !631
  store <4 x ptr> splat (ptr null), ptr %i.af, align 8, !tbaa !335, !alias.scope !631
  store <4 x ptr> splat (ptr null), ptr %i.ag, align 8, !tbaa !335, !alias.scope !631
  store <4 x ptr> splat (ptr null), ptr %i.ah, align 8, !tbaa !335, !alias.scope !631
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !627

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !299

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.z, 4611686018427387900    ; 3 uses
  %i.am = shl i64 %n.vec23, 3                     ; 2 uses
  %i.an = getelementptr i8, ptr %i.u, i64 %i.am   ; 2 uses
  %i.ao = getelementptr i8, ptr %i.j, i64 %i.am
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next28, %vec.epilog.vector.body ] ; 2 uses
  %i.ap = shl i64 %index24, 3                     ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.u, i64 %i.ap
  %next.gep26 = getelementptr i8, ptr %i.j, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %wide.load27 = load <4 x i64>, ptr %next.gep26, align 8, !tbaa !335, !alias.scope !631
  store <4 x i64> %wide.load27, ptr %next.gep25, align 8, !tbaa !335, !alias.scope !630
  store <4 x ptr> splat (ptr null), ptr %next.gep26, align 8, !tbaa !335, !alias.scope !631
  %index.next28 = add nuw i64 %index24, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next28, %n.vec23
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !628

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n29 = icmp eq i64 %i.z, %n.vec23
  br i1 %cmp.n29, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.ar = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !335, !alias.scope !631
  store i64 %i.ar, ptr %.012.i.i.i.i, align 8, !tbaa !335, !alias.scope !630
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !335, !alias.scope !631
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !629

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc8
  %.0.lcssa.i.i.i.i = phi ptr [ %i.u, %.noexc8 ], [ %i.an, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !330
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.ax) #30
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.u, ptr %i.i, align 8, !tbaa !334
  store ptr %i.au, ptr %i.d, align 8, !tbaa !329
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ay, ptr %i.f, align 8, !tbaa !330
  br label %_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_14MttkBoxScalingES3_IS9_EEEEERS5_DpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN3gmx17ISimulatorElementESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS0_INS1_14MttkBoxScalingES3_IS9_EEEEERS5_DpOT_.exit.i: ; preds = %.noexc, %bb.b
  %i.az = phi ptr [ %i.e, %bb.b ], [ %.0.lcssa.i.i.i.i, %.noexc ]
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !335 ; 2 uses
  tail call void @_ZN3gmx32ModularSimulatorAlgorithmBuilder23registerExistingElementINS_14MttkBoxScalingEEEvPT_(ptr noundef nonnull align 8 dereferenceable(712) %i.a, ptr noundef %i.ba)
  ret ptr %i.ba
end_hunk_0
