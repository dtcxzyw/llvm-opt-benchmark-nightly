Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/trotterisation?download=true
inline.NumInlined: 282
inline.NumDeleted: 157
begin_hunk_0_@_Z53applyTrotterizedMultiStateControlledPauliStrSumGadget5QuregSt6vectorIiSaIiEES2_11PauliStrSumdii:bb.a
  %i.w = lshr exact i64 %i.v, 2
  %i.x = trunc i64 %i.w to i32                    ; 3 uses
  tail call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.applyTrotterizedMultiStateControlledPauliStrSumGadget)
  tail call void @_Z26validate_pauliStrSumFields11PauliStrSumPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %3, ptr noundef nonnull @__func__.applyTrotterizedMultiStateControlledPauliStrSumGadget)
  tail call void @_Z31validate_pauliStrSumIsHermitian11PauliStrSumPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %3, ptr noundef nonnull @__func__.applyTrotterizedMultiStateControlledPauliStrSumGadget)
  tail call void @_Z38validate_controlsAndPauliStrSumTargets5QuregPii11PauliStrSumPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef %i.q, i32 noundef %i.x, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %3, ptr noundef nonnull @__func__.applyTrotterizedMultiStateControlledPauliStrSumGadget)
  tail call void @_Z22validate_controlStatesPiiPKc(ptr noundef %i.r, i32 noundef %i.x, ptr noundef nonnull @__func__.applyTrotterizedMultiStateControlledPauliStrSumGadget)
  tail call void @_Z22validate_trotterParams5QuregiiPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i32 noundef %5, i32 noundef %6, ptr noundef nonnull @__func__.applyTrotterizedMultiStateControlledPauliStrSumGadget)
  tail call void @_Z35internal_applyAllTrotterRepetitions5QuregPiS0_i11PauliStrSumSt7complexIdEiib(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef %i.q, ptr noundef %i.r, i32 noundef %i.x, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %3, double %4, double 0.000000e+00, i32 noundef %5, i32 noundef %6, i1 noundef zeroext false)
  ret void
}

declare void @_Z28validate_controlsMatchStatesiiPKc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @applyTrotterizedUnitaryTimeEvolution(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %1, double noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.applyTrotterizedUnitaryTimeEvolution)
  tail call void @_Z26validate_pauliStrSumFields11PauliStrSumPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, ptr noundef nonnull @__func__.applyTrotterizedUnitaryTimeEvolution)
  tail call void @_Z27validate_pauliStrSumTargets11PauliStrSum5QuregPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.applyTrotterizedUnitaryTimeEvolution)
  tail call void @_Z31validate_pauliStrSumIsHermitian11PauliStrSumPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, ptr noundef nonnull @__func__.applyTrotterizedUnitaryTimeEvolution)
  tail call void @_Z22validate_trotterParams5QuregiiPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i32 noundef %3, i32 noundef %4, ptr noundef nonnull @__func__.applyTrotterizedUnitaryTimeEvolution)
  %i.a = fneg double %2
  tail call void @_Z35internal_applyAllTrotterRepetitions5QuregPiS0_i11PauliStrSumSt7complexIdEiib(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, double %i.a, double 0.000000e+00, i32 noundef %3, i32 noundef %4, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @applyTrotterizedImaginaryTimeEvolution(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %1, double noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.applyTrotterizedImaginaryTimeEvolution)
  tail call void @_Z26validate_pauliStrSumFields11PauliStrSumPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, ptr noundef nonnull @__func__.applyTrotterizedImaginaryTimeEvolution)
  tail call void @_Z27validate_pauliStrSumTargets11PauliStrSum5QuregPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.applyTrotterizedImaginaryTimeEvolution)
  tail call void @_Z31validate_pauliStrSumIsHermitian11PauliStrSumPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, ptr noundef nonnull @__func__.applyTrotterizedImaginaryTimeEvolution)
  tail call void @_Z22validate_trotterParams5QuregiiPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i32 noundef %3, i32 noundef %4, ptr noundef nonnull @__func__.applyTrotterizedImaginaryTimeEvolution)
  tail call void @_Z35internal_applyAllTrotterRepetitions5QuregPiS0_i11PauliStrSumSt7complexIdEiib(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, double 0.000000e+00, double %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @applyTrotterizedNoisyTimeEvolution(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.PauliStrSum) align 8 captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, double noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %8 = alloca %"class.std::vector.5", align 8     ; 15 uses
  %9 = alloca %"class.std::vector.10", align 8    ; 15 uses
  %10 = alloca %"class.std::function", align 8    ; 9 uses
  %11 = alloca %"class.std::function", align 8    ; 9 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %12 = alloca %struct.PauliStrSum, align 8       ; 5 uses
  %13 = alloca %struct.PauliStrSum, align 8       ; 5 uses
  %14 = alloca %struct.PauliStrSum, align 8       ; 4 uses
  %15 = alloca %struct.PauliStrSum, align 8       ; 5 uses
  %16 = alloca %struct.PauliStrSum, align 8       ; 5 uses
  tail call void @_Z20validate_quregFields5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.applyTrotterizedNoisyTimeEvolution)
  tail call void @_Z29validate_quregIsDensityMatrix5QuregPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.applyTrotterizedNoisyTimeEvolution)
  tail call void @_Z26validate_pauliStrSumFields11PauliStrSumPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, ptr noundef nonnull @__func__.applyTrotterizedNoisyTimeEvolution)
  tail call void @_Z27validate_pauliStrSumTargets11PauliStrSum5QuregPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.applyTrotterizedNoisyTimeEvolution)
  tail call void @_Z31validate_pauliStrSumIsHermitian11PauliStrSumPKc(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, ptr noundef nonnull @__func__.applyTrotterizedNoisyTimeEvolution)
  tail call void @_Z22validate_trotterParams5QuregiiPKc(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, i32 noundef %6, i32 noundef %7, ptr noundef nonnull @__func__.applyTrotterizedNoisyTimeEvolution)
  tail call void @_Z24validate_lindbladJumpOpsP11PauliStrSumi5QuregPKc(ptr noundef %3, i32 noundef %4, ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef nonnull @__func__.applyTrotterizedNoisyTimeEvolution)
  tail call void @_Z29validate_lindbladDampingRatesPdiPKc(ptr noundef %2, i32 noundef %4, ptr noundef nonnull @__func__.applyTrotterizedNoisyTimeEvolution)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.c = tail call noundef i64 @_Z40internal_getNumTotalSuperPropagatorTerms11PauliStrSumPS_i(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %1, ptr noundef %3, i32 noundef %4) ; 3 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !17
  tail call void @_Z40validate_numLindbladSuperPropagatorTermsxPKc(i64 noundef %i.c, ptr noundef nonnull @__func__.applyTrotterizedNoisyTimeEvolution)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.d = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.g, align 8
  store i64 %i.d, ptr %10, align 8, !tbaa !30
  store ptr @"_ZNSt17_Function_handlerIFvvEZ34applyTrotterizedNoisyTimeEvolutionE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.f, align 8, !tbaa !46
  store ptr @"_ZNSt17_Function_handlerIFvvEZ34applyTrotterizedNoisyTimeEvolutionE3$_0E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", ptr %i.e, align 8, !tbaa !47
  invoke void @_Z19util_tryAllocVectorRSt6vectorI8PauliStrSaIS0_EExSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(24) %8, i64 noundef %i.c, ptr nofree noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !47   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #15
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.o, align 8
  store i64 %i.d, ptr %11, align 8, !tbaa !30
  store ptr @"_ZNSt17_Function_handlerIFvvEZ34applyTrotterizedNoisyTimeEvolutionE3$_1E9_M_invokeERKSt9_Any_data", ptr %i.n, align 8, !tbaa !46
  store ptr @"_ZNSt17_Function_handlerIFvvEZ34applyTrotterizedNoisyTimeEvolutionE3$_1E10_M_managerERSt9_Any_dataRKS3_St18_Manager_operation", ptr %i.m, align 8, !tbaa !47
  invoke void @_Z19util_tryAllocVectorRSt6vectorISt7complexIdESaIS1_EExSt8functionIFvvEE(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.l, ptr nofree noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %.not.i110 = icmp eq ptr %i.p, null
  br i1 %.not.i110, label %_ZNSt14_Function_baseD2Ev.exit111, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit111 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #15
  unreachable

_ZNSt14_Function_baseD2Ev.exit111:                ; preds = %bb.e, %bb.f
  %i.t = load i64, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt14_Function_baseD2Ev.exit111
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aa = load i32, ptr %i.z, align 4
  br label %bb.n

._crit_edge:                                      ; preds = %bb.v, %_ZNSt14_Function_baseD2Ev.exit111
  %.095.lcssa = phi i64 [ 0, %_ZNSt14_Function_baseD2Ev.exit111 ], [ %i.cd, %bb.v ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i32 -1, ptr %i.b, align 4, !tbaa !26
  %i.ab = icmp sgt i32 %4, 0
  br i1 %i.ab, label %.lr.ph156, label %._crit_edge157

.lr.ph156:                                        ; preds = %._crit_edge
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.b, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !48 ; 2 uses
  %.sroa.11.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.13.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.15.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %13, i64 24
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.11.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.13.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.15.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %15, i64 24
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.y

bb.h:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  %.not.i112 = icmp eq ptr %i.af, null
  br i1 %.not.i112, label %_ZNSt14_Function_baseD2Ev.exit113, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit113 unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #15
  unreachable

bb.k:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = load ptr, ptr %i.m, align 8, !tbaa !47  ; 2 uses
  %.not.i114 = icmp eq ptr %i.ak, null
  br i1 %.not.i114, label %_ZNSt14_Function_baseD2Ev.exit113, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = invoke noundef zeroext i1 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit113 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #15
  unreachable

bb.n:                                             ; preds = %.lr.ph, %bb.v
  %.095152 = phi i64 [ 0, %.lr.ph ], [ %i.cd, %bb.v ] ; 5 uses
  %.097151 = phi i64 [ 0, %.lr.ph ], [ %i.ce, %bb.v ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.097151 ; 2 uses
  %.sroa.041.0.copyload = load i64, ptr %i.ao, align 8, !tbaa !17 ; 3 uses
  %.sroa.743.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.743.0.copyload = load i64, ptr %.sroa.743.0..sroa_idx, align 8, !tbaa !17 ; 3 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.097151 ; 2 uses
  %.sroa.0141.0.copyload = load double, ptr %i.ap, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx143 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx143, align 8, !tbaa !49 ; 6 uses
  %i.aq = load ptr, ptr %8, align 8, !tbaa !51
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aq, i64 %.095152 ; 2 uses
  store i64 %.sroa.041.0.copyload, ptr %i.ar, align 8, !tbaa !17
  %.sroa.743.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %.sroa.743.0.copyload, ptr %.sroa.743.0..sroa_idx44, align 8, !tbaa !17
  %i.as = fmul double %.sroa.0141.0.copyload, 0.000000e+00
  %i.at = fmul double %.sroa.6.0.copyload, -0.000000e+00
  %i.au = fsub double %.sroa.6.0.copyload, %i.as  ; 3 uses
  %i.av = fsub double %i.at, %.sroa.0141.0.copyload ; 3 uses
  %i.aw = fcmp uno double %i.au, 0.000000e+00
  br i1 %i.aw, label %bb.o, label %bb.q, !prof !18

bb.o:                                             ; preds = %bb.n
  %i.ax = fcmp uno double %i.av, 0.000000e+00
  br i1 %i.ax, label %bb.p, label %bb.q, !prof !18

bb.p:                                             ; preds = %bb.o
  %i.ay = call noundef { double, double } @__muldc3(double noundef -0.000000e+00, double noundef -1.000000e+00, double noundef %.sroa.0141.0.copyload, double noundef %.sroa.6.0.copyload) #11 ; 2 uses
  %i.az = extractvalue { double, double } %i.ay, 0
  %i.ba = extractvalue { double, double } %i.ay, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bb = phi double [ %i.au, %bb.n ], [ %i.au, %bb.o ], [ %i.az, %bb.p ]
  %i.bc = phi double [ %i.av, %bb.n ], [ %i.av, %bb.o ], [ %i.ba, %bb.p ]
  %i.bd = load ptr, ptr %9, align 8, !tbaa !53
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %.095152 ; 2 uses
  store double %i.bb, ptr %i.be, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store double %i.bc, ptr %.sroa.540.0..sroa_idx, align 8, !tbaa !49
  %i.bf = invoke { i64, i64 } @_Z25paulis_getShiftedPauliStr8PauliStri(i64 %.sroa.041.0.copyload, i64 %.sroa.743.0.copyload, i32 noundef %i.aa)
          to label %bb.r unwind label %bb.w       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bg = extractvalue { i64, i64 } %i.bf, 0
  %i.bh = extractvalue { i64, i64 } %i.bf, 1
  %i.bi = load ptr, ptr %8, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %.095152 ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 %i.bg, ptr %17, align 8, !tbaa !17
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i64 %i.bh, ptr %.sroa.538.0..sroa_idx, align 8, !tbaa !17
  %i.bk = invoke noundef i32 @_Z28paulis_getSignOfPauliStrConj8PauliStr(i64 %.sroa.041.0.copyload, i64 %.sroa.743.0.copyload)
          to label %bb.s unwind label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.bl = sitofp i32 %i.bk to double              ; 4 uses
  %i.bm = call double @llvm.copysign.f64(double 0.000000e+00, double %i.bl) ; 3 uses
  %i.bn = fneg double %.sroa.6.0.copyload
  %i.bo = fmul double %.sroa.0141.0.copyload, %i.bm
  %i.bp = fmul double %.sroa.0141.0.copyload, %i.bl
  %i.bq = fmul double %.sroa.6.0.copyload, %i.bl
  %i.br = fadd double %i.bq, %i.bo                ; 3 uses
  %i.bs = fmul double %.sroa.6.0.copyload, %i.bm
  %i.bt = fsub double %i.bp, %i.bs                ; 3 uses
  %i.bu = fcmp uno double %i.br, 0.000000e+00
  br i1 %i.bu, label %bb.t, label %bb.v, !prof !18

bb.t:                                             ; preds = %bb.s
  %i.bv = fcmp uno double %i.bt, 0.000000e+00
  br i1 %i.bv, label %bb.u, label %bb.v, !prof !18

bb.u:                                             ; preds = %bb.t
  %i.bw = call noundef { double, double } @__muldc3(double noundef %i.bm, double noundef %i.bl, double noundef %.sroa.0141.0.copyload, double noundef %i.bn) #11 ; 2 uses
  %i.bx = extractvalue { double, double } %i.bw, 0
  %i.by = extractvalue { double, double } %i.bw, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %i.bz = phi double [ %i.br, %bb.s ], [ %i.br, %bb.t ], [ %i.bx, %bb.u ]
  %i.ca = phi double [ %i.bt, %bb.s ], [ %i.bt, %bb.t ], [ %i.by, %bb.u ]
  %i.cb = load ptr, ptr %9, align 8, !tbaa !53
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %.095152 ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store double %i.bz, ptr %18, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store double %i.ca, ptr %.sroa.534.0..sroa_idx, align 8, !tbaa !49
  %i.cd = add nuw nsw i64 %.095152, 2             ; 2 uses
  %i.ce = add nuw nsw i64 %.097151, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !42

bb.w:                                             ; preds = %bb.q
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit113

bb.x:                                             ; preds = %bb.r
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit113

._crit_edge157:                                   ; preds = %bb.ac, %._crit_edge
  %.196.lcssa = phi i64 [ %.095.lcssa, %._crit_edge ], [ %i.de, %bb.ac ] ; 2 uses
  %i.ch = load i64, ptr %i.a, align 8, !tbaa !17
  %.not = icmp eq i64 %.196.lcssa, %i.ch
  br i1 %.not, label %bb.ah, label %bb.af

bb.y:                                             ; preds = %.lr.ph156, %bb.ac
  %indvars.iv = phi i64 [ 0, %.lr.ph156 ], [ %indvars.iv.next, %bb.ac ] ; 3 uses
  %.196153 = phi i64 [ %.095.lcssa, %.lr.ph156 ], [ %i.de, %bb.ac ] ; 3 uses
  %i.ci = load ptr, ptr %8, align 8, !tbaa !51
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %.196153
  %i.ck = load ptr, ptr %9, align 8, !tbaa !53
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %.196153
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %indvars.iv ; 4 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !14 ; 2 uses
  %i.co = mul nsw i64 %i.cn, %i.cn                ; 2 uses
  %i.cp = add nsw i64 %i.co, %.196153             ; 3 uses
  store i64 %i.co, ptr %12, align 8, !tbaa !17
  store ptr %i.cj, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !31
  store ptr %i.cl, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !54
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !56
  invoke void @_Z53paulis_setPauliStrSumToScaledTensorProdOfConjWithSelf11PauliStrSumdS_i(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %12, double noundef %i.cr, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %i.cm, i32 noundef %i.ad)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.cs = load ptr, ptr %8, align 8, !tbaa !51
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.cp ; 2 uses
  %i.cu = load ptr, ptr %9, align 8, !tbaa !53
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cp ; 2 uses
  %i.cw = invoke noundef i64 @_Z52paulis_getNumTermsInPauliStrSumProdOfAdjointWithSelf11PauliStrSum(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %i.cm)
          to label %bb.aa unwind label %bb.ad     ; 5 uses

bb.aa:                                            ; preds = %bb.z
  store i64 %i.cw, ptr %13, align 8, !tbaa !17
  store ptr %i.ct, ptr %.sroa.11.0..sroa_idx19, align 8, !tbaa !31
  store ptr %i.cv, ptr %.sroa.13.0..sroa_idx23, align 8, !tbaa !54
  store ptr %i.b, ptr %.sroa.15.0..sroa_idx27, align 8, !tbaa !23
  %i.cx = load double, ptr %i.cq, align 8, !tbaa !56
  %i.cy = fmul double %i.cx, -5.000000e-01
  invoke void @_Z50paulis_setPauliStrSumToScaledProdOfAdjointWithSelf11PauliStrSumdS_(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %13, double noundef %i.cy, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %i.cm)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.cz = add nsw i64 %i.cw, %i.cp                ; 3 uses
  %i.da = load ptr, ptr %8, align 8, !tbaa !51
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load ptr, ptr %9, align 8, !tbaa !53
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.cz
  store i64 %i.cw, ptr %14, align 8, !tbaa !17
  store ptr %i.db, ptr %.sroa.63.0..sroa_idx, align 8, !tbaa !31
  store ptr %i.dd, ptr %.sroa.74.0..sroa_idx, align 8, !tbaa !54
  store i64 %i.cw, ptr %15, align 8, !tbaa !17
  store ptr %i.ct, ptr %.sroa.11.0..sroa_idx21, align 8, !tbaa !31
  store ptr %i.cv, ptr %.sroa.13.0..sroa_idx25, align 8, !tbaa !54
  store ptr %i.b, ptr %.sroa.15.0..sroa_idx29, align 8, !tbaa !23
  invoke void @_Z34paulis_setPauliStrSumToShiftedConj11PauliStrSumS_i(ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %14, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %15, i32 noundef %i.ad)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.de = add nsw i64 %i.cz, %i.cw                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond161.not, label %._crit_edge157, label %bb.y, !llvm.loop !43

bb.ad:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ae:                                            ; preds = %bb.ab
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.af:                                            ; preds = %._crit_edge157
  invoke void @_Z41error_unexpectedNumLindbladSuperpropTermsv()
          to label %._crit_edge162 unwind label %bb.ag

._crit_edge162:                                   ; preds = %bb.af
  %.pre = load i64, ptr %i.a, align 8, !tbaa !17
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ah:                                            ; preds = %._crit_edge162, %._crit_edge157
  %i.di = phi i64 [ %.pre, %._crit_edge162 ], [ %.196.lcssa, %._crit_edge157 ]
  %i.dj = load ptr, ptr %8, align 8, !tbaa !51
  %i.dk = load ptr, ptr %9, align 8, !tbaa !53
  %i.dl = fneg double %5
  store i64 %i.di, ptr %16, align 8, !tbaa !17
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.dj, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !31
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %i.dk, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !54
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !23
  invoke void @_Z35internal_applyAllTrotterRepetitions5QuregPiS0_i11PauliStrSumSt7complexIdEiib(ptr noundef nonnull byval(%struct.Qureg) align 8 %0, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull byval(%struct.PauliStrSum) align 8 %16, double 0.000000e+00, double %i.dl, i32 noundef %6, i32 noundef %7, i1 noundef zeroext true)
          to label %bb.ai unwind label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.dm = load ptr, ptr %9, align 8, !tbaa !53    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !57
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dr) #14
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.ds = load ptr, ptr %8, align 8, !tbaa !51    ; 3 uses
  %.not.i.i.i126 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorI8PauliStrSaIS0_EED2Ev.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !58
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.ds to i64
  %i.dx = sub i64 %i.dv, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dx) #14
  br label %_ZNSt6vectorI8PauliStrSaIS0_EED2Ev.exit

_ZNSt6vectorI8PauliStrSaIS0_EED2Ev.exit:          ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void

bb.al:                                            ; preds = %bb.ah
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %bb.ad, %bb.ae, %bb.al, %bb.ag
  %.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.ag ], [ %i.dy, %bb.al ], [ %i.dg, %bb.ae ], [ %i.df, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %_ZNSt14_Function_baseD2Ev.exit113

_ZNSt14_Function_baseD2Ev.exit113:                ; preds = %bb.w, %bb.x, %bb.l, %bb.k, %bb.i, %bb.h, %bb.am
  %.pn100.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.am ], [ %i.ae, %bb.i ], [ %i.aj, %bb.l ], [ %i.ae, %bb.h ], [ %i.aj, %bb.k ], [ %i.cg, %bb.x ], [ %i.cf, %bb.w ]
  %i.dz = load ptr, ptr %9, align 8, !tbaa !53    ; 3 uses
  %.not.i.i.i127 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i127, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit128, label %bb.an

bb.an:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit113
  %i.ea = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dz to i64
  %i.ee = sub i64 %i.ec, %i.ed
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.ee) #14
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit128

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit128:   ; preds = %_ZNSt14_Function_baseD2Ev.exit113, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.ef = load ptr, ptr %8, align 8, !tbaa !51    ; 3 uses
  %.not.i.i.i129 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i129, label %_ZNSt6vectorI8PauliStrSaIS0_EED2Ev.exit130, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit128
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !58
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #14
  br label %_ZNSt6vectorI8PauliStrSaIS0_EED2Ev.exit130

_ZNSt6vectorI8PauliStrSaIS0_EED2Ev.exit130:       ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit128, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  resume { ptr, i32 } %.pn100.pn.pn.pn.pn
}

end_hunk_0
