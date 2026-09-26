Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/mttk?download=true
inline.NumInlined: 2333
inline.NumDeleted: 1268
begin_hunk_0_@"_ZNSt17_Function_handlerIFfldEZN3gmx8MttkData5buildEPNS1_19LegacySimulatorDataEPNS1_38ModularSimulatorAlgorithmBuilderHelperEPNS1_19StatePropagatorDataEPNS1_10EnergyDataERKNS1_31MttkPropagatorConnectionDetailsEE3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation":bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK3gmx8MttkData27temperatureCouplingIntegralEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, double noundef %1) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load double, ptr %i.a, align 8, !tbaa !273
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef nonnull ptr @"_ZNSt17_Function_handlerIFPA3_KfvEZN3gmx8MttkData5buildEPNS4_19LegacySimulatorDataEPNS4_38ModularSimulatorAlgorithmBuilderHelperEPNS4_19StatePropagatorDataEPNS4_10EnergyDataERKNS4_31MttkPropagatorConnectionDetailsEE3$_1E9_M_invokeERKSt9_Any_data"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) #23 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !411
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 52
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFPA3_KfvEZN3gmx8MttkData5buildEPNS4_19LegacySimulatorDataEPNS4_38ModularSimulatorAlgorithmBuilderHelperEPNS4_19StatePropagatorDataEPNS4_10EnergyDataERKNS4_31MttkPropagatorConnectionDetailsEE3$_1E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN3gmx8MttkData5buildEPNS1_19LegacySimulatorDataEPNS1_38ModularSimulatorAlgorithmBuilderHelperEPNS1_19StatePropagatorDataEPNS1_10EnergyDataERKNS1_31MttkPropagatorConnectionDetailsEE3$_1E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN3gmx8MttkData5buildEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataERKNS_31MttkPropagatorConnectionDetailsEE3$_1", ptr %0, align 8, !tbaa !275
  br label %"_ZNSt14_Function_base13_Base_managerIZN3gmx8MttkData5buildEPNS1_19LegacySimulatorDataEPNS1_38ModularSimulatorAlgorithmBuilderHelperEPNS1_19StatePropagatorDataEPNS1_10EnergyDataERKNS1_31MttkPropagatorConnectionDetailsEE3$_1E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !222
  br label %"_ZNSt14_Function_base13_Base_managerIZN3gmx8MttkData5buildEPNS1_19LegacySimulatorDataEPNS1_38ModularSimulatorAlgorithmBuilderHelperEPNS1_19StatePropagatorDataEPNS1_10EnergyDataERKNS1_31MttkPropagatorConnectionDetailsEE3$_1E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !217
  store i64 %.val.i, ptr %0, align 8, !tbaa !217
  br label %"_ZNSt14_Function_base13_Base_managerIZN3gmx8MttkData5buildEPNS1_19LegacySimulatorDataEPNS1_38ModularSimulatorAlgorithmBuilderHelperEPNS1_19StatePropagatorDataEPNS1_10EnergyDataERKNS1_31MttkPropagatorConnectionDetailsEE3$_1E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN3gmx8MttkData5buildEPNS1_19LegacySimulatorDataEPNS1_38ModularSimulatorAlgorithmBuilderHelperEPNS1_19StatePropagatorDataEPNS1_10EnergyDataERKNS1_31MttkPropagatorConnectionDetailsEE3$_1E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvN3gmx8ArrayRefIKfEENS0_35ReferenceTemperatureChangeAlgorithmEEZNS0_8MttkData5buildEPNS0_19LegacySimulatorDataEPNS0_38ModularSimulatorAlgorithmBuilderHelperEPNS0_19StatePropagatorDataEPNS0_10EnergyDataERKNS0_31MttkPropagatorConnectionDetailsEE3$_2E9_M_invokeERKSt9_Any_dataOS3_OS4_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree nonnull readonly align 4 captures(none) %2) #24 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !413   ; 2 uses
  %.val3 = load ptr, ptr %1, align 8
  %.val3.val = load float, ptr %.val3, align 4, !tbaa !114 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 96 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !276
  %i.c = fdiv float %.val3.val, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.e = load float, ptr %i.d, align 8, !tbaa !277
  %i.f = fmul float %i.e, %i.c
  store float %i.f, ptr %i.d, align 8, !tbaa !277
  store float %.val3.val, ptr %i.a, align 8, !tbaa !276
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvN3gmx8ArrayRefIKfEENS0_35ReferenceTemperatureChangeAlgorithmEEZNS0_8MttkData5buildEPNS0_19LegacySimulatorDataEPNS0_38ModularSimulatorAlgorithmBuilderHelperEPNS0_19StatePropagatorDataEPNS0_10EnergyDataERKNS0_31MttkPropagatorConnectionDetailsEE3$_2E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN3gmx8MttkData5buildEPNS1_19LegacySimulatorDataEPNS1_38ModularSimulatorAlgorithmBuilderHelperEPNS1_19StatePropagatorDataEPNS1_10EnergyDataERKNS1_31MttkPropagatorConnectionDetailsEE3$_2E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN3gmx8MttkData5buildEPNS_19LegacySimulatorDataEPNS_38ModularSimulatorAlgorithmBuilderHelperEPNS_19StatePropagatorDataEPNS_10EnergyDataERKNS_31MttkPropagatorConnectionDetailsEE3$_2", ptr %0, align 8, !tbaa !275
  br label %"_ZNSt14_Function_base13_Base_managerIZN3gmx8MttkData5buildEPNS1_19LegacySimulatorDataEPNS1_38ModularSimulatorAlgorithmBuilderHelperEPNS1_19StatePropagatorDataEPNS1_10EnergyDataERKNS1_31MttkPropagatorConnectionDetailsEE3$_2E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !222
  br label %"_ZNSt14_Function_base13_Base_managerIZN3gmx8MttkData5buildEPNS1_19LegacySimulatorDataEPNS1_38ModularSimulatorAlgorithmBuilderHelperEPNS1_19StatePropagatorDataEPNS1_10EnergyDataERKNS1_31MttkPropagatorConnectionDetailsEE3$_2E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !217
  store i64 %.val.i, ptr %0, align 8, !tbaa !217
  br label %"_ZNSt14_Function_base13_Base_managerIZN3gmx8MttkData5buildEPNS1_19LegacySimulatorDataEPNS1_38ModularSimulatorAlgorithmBuilderHelperEPNS1_19StatePropagatorDataEPNS1_10EnergyDataERKNS1_31MttkPropagatorConnectionDetailsEE3$_2E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN3gmx8MttkData5buildEPNS1_19LegacySimulatorDataEPNS1_38ModularSimulatorAlgorithmBuilderHelperEPNS1_19StatePropagatorDataEPNS1_10EnergyDataERKNS1_31MttkPropagatorConnectionDetailsEE3$_2E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx8MttkData26updateReferenceTemperatureEfNS_35ReferenceTemperatureChangeAlgorithmE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(152) %0, float noundef %1, i32 noundef %2) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !276
  %i.c = fdiv float %1, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load float, ptr %i.d, align 8, !tbaa !277
  %i.f = fmul float %i.e, %i.c
  store float %i.f, ptr %i.d, align 8, !tbaa !277
  store float %1, ptr %i.a, align 8, !tbaa !276
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx8MttkDataC2EfffffffPA3_KfPKNS_19StatePropagatorDataEPNS_24MttkPropagatorConnectionE(ptr noundef nonnull align 8 dereferenceable(152) initializes((0, 20), (24, 32), (48, 100), (104, 120)) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, ptr nofree noundef readonly captures(none) %8, ptr noundef %9, ptr noundef %10) unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3gmx8MttkDataE, i64 16), ptr %0, align 8, !tbaa !263
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %3, ptr %i.a, align 8, !tbaa !278
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !279
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load float, ptr %8, align 4, !tbaa !114
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.f = load float, ptr %i.e, align 4, !tbaa !114
  %i.g = fadd float %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.i = load float, ptr %i.h, align 4, !tbaa !114
  %i.j = fadd float %i.g, %i.i
  %i.k = fpext float %i.j to double
  %i.l = fmul double %i.k, f0x40309AFAE1F7C60E
  %i.m = fmul double %i.l, f0x3F81072C483AF26D
  %i.n = fpext float %1 to double
  %i.o = fmul double %i.m, %i.n
  %i.p = fmul float %5, 3.000000e+00
  %i.q = fpext float %i.p to double
  %i.r = fpext float %4 to double
  %i.s = fdiv double %i.r, f0x401921FB54442D18    ; 2 uses
  %i.t = fmul double %i.s, %i.s
  %i.u = fmul double %i.t, %i.q
  %i.v = fdiv double %i.o, %i.u
  %i.w = fptrunc double %i.v to float             ; 2 uses
  store float %i.w, ptr %i.c, align 8, !tbaa !277
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.x, align 8
  store float %2, ptr %i.aa, align 8, !tbaa !280
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ab, i8 0, i64 36, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  store float %6, ptr %i.ac, align 8, !tbaa !281
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 92
  store float %7, ptr %i.ad, align 4, !tbaa !282
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  store float %1, ptr %i.ae, align 8, !tbaa !276
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %9, ptr %i.af, align 8, !tbaa !283
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %10, ptr %i.ag, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !115
  store i64 7022344665465910349, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 8, ptr %i.aj, align 8, !tbaa !116
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.ak, align 8, !tbaa !25
  %i.al = fdiv float 0.000000e+00, %i.w
  %i.am = fpext float %i.al to double
  %i.an = fmul float %5, %2
  %i.ao = fpext float %i.an to double
  %i.ap = fdiv double %i.ao, f0x40309AFAE1F7C60E
  %i.aq = fadd double %i.ap, %i.am
  store double %i.aq, ptr %i.y, align 8, !tbaa !273
  store double 0.000000e+00, ptr %i.z, align 8, !tbaa !284
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx8MttkData17calculateIntegralEf(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(152) initializes((32, 48)) %0, float noundef %1) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load float, ptr %i.a, align 4, !tbaa !279
  %i.c = fpext float %i.b to double               ; 2 uses
  %i.d = fmul double %i.c, 5.000000e-01
  %i.e = fmul double %i.d, %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load float, ptr %i.f, align 8, !tbaa !277
  %i.h = fpext float %i.g to double
  %i.i = fdiv double %i.e, %i.h
  %i.j = fptrunc double %i.i to float
  %i.k = fpext float %i.j to double
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load float, ptr %i.l, align 8, !tbaa !280
  %i.n = fmul float %1, %i.m
  %i.o = fpext float %i.n to double
  %i.p = fdiv double %i.o, f0x40309AFAE1F7C60E
  %i.q = fadd double %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.q, ptr %i.r, align 8, !tbaa !273
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load double, ptr %i.s, align 8, !tbaa !285
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.t, ptr %i.u, align 8, !tbaa !284
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN3gmx8MttkDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(152) initializes((0, 20), (24, 52), (88, 96), (104, 120)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1) unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.c = add nuw i64 %i.a, 120
  %rt.bound0 = icmp ugt i64 %i.c, %i.b
  %i.d = add nuw i64 %i.b, 137
  %rt.bound0.a = icmp ugt i64 %i.d, %i.a
  %rt.conflict = and i1 %rt.bound0, %rt.bound0.a
  %rt.guard = freeze i1 %rt.conflict
  br i1 %rt.guard, label %._crit_edge.i.i.rtscalar, label %._crit_edge.i.i.rtvec, !prof !414

._crit_edge.i.i.rtvec:                            ; preds = %._crit_edge.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3gmx8MttkDataE, i64 16), ptr %0, align 8, !tbaa !263
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load <2 x float>, ptr %i.f, align 8, !tbaa !114
  store <2 x float> %i.g, ptr %i.e, align 8, !tbaa !114
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load float, ptr %i.i, align 8, !tbaa !277
  store float %i.j, ptr %i.h, align 8, !tbaa !277
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !286
  store <2 x double> %i.m, ptr %i.k, align 8, !tbaa !286
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load double, ptr %i.o, align 8, !tbaa !284
  store double %i.p, ptr %i.n, align 8, !tbaa !284
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.u = load <2 x ptr>, ptr %i.t, align 8, !tbaa !222
  store <2 x ptr> %i.u, ptr %i.s, align 8, !tbaa !222
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !115
  store i64 7022344665465910349, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 8, ptr %i.x, align 8, !tbaa !116
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.y, align 8, !tbaa !25
  %i.z = load <8 x float>, ptr %i.r, align 8, !tbaa !114
  store <8 x float> %i.z, ptr %i.q, align 8, !tbaa !114
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = load <4 x float>, ptr %i.aa, align 8, !tbaa !114
  store <4 x float> %i.ac, ptr %i.ab, align 8, !tbaa !114
  br label %._crit_edge.i.i.rtcont

._crit_edge.i.i.rtscalar:                         ; preds = %._crit_edge.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3gmx8MttkDataE, i64 16), ptr %0, align 8, !tbaa !263
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load float, ptr %i.ae, align 8, !tbaa !278
  store float %i.af, ptr %i.ad, align 8, !tbaa !278
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !279
  store float %i.ai, ptr %i.ag, align 4, !tbaa !279
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load float, ptr %i.ak, align 8, !tbaa !277
  store float %i.al, ptr %i.aj, align 8, !tbaa !277
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load double, ptr %i.an, align 8, !tbaa !285
  store double %i.ao, ptr %i.am, align 8, !tbaa !285
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !273
  store double %i.ar, ptr %i.ap, align 8, !tbaa !273
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load double, ptr %i.at, align 8, !tbaa !284
  store double %i.au, ptr %i.as, align 8, !tbaa !284
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !280
  store float %i.ax, ptr %i.av, align 8, !tbaa !280
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ba = load float, ptr %i.az, align 8, !tbaa !281
  store float %i.ba, ptr %i.ay, align 8, !tbaa !281
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !282
  store float %i.bd, ptr %i.bb, align 4, !tbaa !282
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !283
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !283
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !64
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !64
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !115
  store i64 7022344665465910349, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 8, ptr %i.bm, align 8, !tbaa !116
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 0, ptr %i.bn, align 8, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bq = load float, ptr %i.bo, align 4, !tbaa !114
  store float %i.bq, ptr %i.bp, align 4, !tbaa !114
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bs = load float, ptr %i.br, align 8, !tbaa !114
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.bs, ptr %i.bt, align 8, !tbaa !114
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !114
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.bv, ptr %i.bw, align 4, !tbaa !114
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bz = load float, ptr %i.bx, align 8, !tbaa !114
  store float %i.bz, ptr %i.by, align 8, !tbaa !114
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !114
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %i.cb, ptr %i.cc, align 4, !tbaa !114
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !114
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 72
  store float %i.ce, ptr %i.cf, align 8, !tbaa !114
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ci = load float, ptr %i.cg, align 4, !tbaa !114
  store float %i.ci, ptr %i.ch, align 4, !tbaa !114
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !114
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %i.ck, ptr %i.cl, align 8, !tbaa !114
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !114
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 84
  store float %i.cn, ptr %i.co, align 4, !tbaa !114
  br label %._crit_edge.i.i.rtcont

._crit_edge.i.i.rtcont:                           ; preds = %._crit_edge.i.i.rtscalar, %._crit_edge.i.i.rtvec
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx8MttkData25calculateIntegralIfNeededEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(152) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !285
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !278
  %i.e = fpext float %i.d to double
  %i.f = fdiv double %i.b, %i.e
  %i.g = tail call i64 @lround(double noundef %i.f) #33
  %i.h = sitofp i64 %i.g to float
  %i.i = load float, ptr %i.c, align 8, !tbaa !278
  %i.j = fmul float %i.i, %i.h
  %i.k = fpext float %i.j to double
  %i.l = load double, ptr %i.a, align 8, !tbaa !285
  %i.m = fsub double %i.k, %i.l                   ; 2 uses
  %i.n = fmul double %i.m, %i.m
  %i.o = fcmp olt double %i.n, f0x3D71979980000000
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !283
  %i.r = tail call noundef ptr @_ZNK3gmx19StatePropagatorData8constBoxEv(ptr noundef nonnull align 8 dereferenceable(632) %i.q) ; 9 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !114
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !114 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.y = load float, ptr %i.x, align 4, !tbaa !114 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 28
  %i.aa = load float, ptr %i.z, align 4, !tbaa !114 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !114 ; 2 uses
  %i.ad = fneg float %i.ac
  %i.ae = fmul float %i.aa, %i.ad
  %i.af = tail call float @llvm.fmuladd.f32(float %i.v, float %i.y, float %i.ae)
  %i.ag = load float, ptr %i.t, align 4, !tbaa !114
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !114 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !114
  %i.al = fneg float %i.ak                        ; 2 uses
  %i.am = fmul float %i.aa, %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.y, float %i.am)
  %i.ao = fneg float %i.an
  %i.ap = fmul float %i.ag, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.s, float %i.af, float %i.ap)
  %i.ar = load float, ptr %i.w, align 4, !tbaa !114
  %i.as = fmul float %i.v, %i.al
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ac, float %i.as)
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.at, float %i.aq)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aw = load float, ptr %i.av, align 4, !tbaa !279
  %i.ax = fpext float %i.aw to double             ; 2 uses
  %i.ay = fmul double %i.ax, 5.000000e-01
  %i.az = fmul double %i.ay, %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !277
  %i.bc = fpext float %i.bb to double
end_hunk_0
