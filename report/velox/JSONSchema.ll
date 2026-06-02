inline.NumInlined: 10037
inline.NumDeleted: 4349
begin_hunk_0_@_ZN5folly6detail11MemoryIdler16futexWaitPreIdleISt6atomicIjENSt6chrono10time_pointINS5_3_V212steady_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEESC_EEbRNS0_11FutexResultERT_jRKT0_jT1_mf:bb.a
  %i.f = mul i64 %i.e, -7070675565921424023       ; 2 uses
  %i.g = lshr i64 %i.f, 47
  %i.h = xor i64 %i.c, %i.g
  %i.i = xor i64 %i.h, %i.f
  %i.j = mul i64 %i.i, -7070675565921424023       ; 2 uses
  %i.k = lshr i64 %i.j, 47
  %i.l = xor i64 %i.k, %i.j                       ; 2 uses
  %i.m = mul i64 %i.l, -7070675565921424023
  %i.n = xor i64 %i.m, -1
  %i.o = mul i64 %i.l, 4692019660866977792
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = lshr i64 %i.p, 24
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, 265                        ; 2 uses
  %i.t = lshr i64 %i.s, 14
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, 21                         ; 2 uses
  %i.w = lshr i64 %i.v, 28
  %i.x = xor i64 %i.w, %i.v
  %i.y = mul i64 %i.x, 2147483649
  %i.z = fmul float %7, f0x1F800000
  %i.aa = uitofp i64 %i.y to float
  %i.ab = fmul float %i.z, %i.aa
  %i.ac = uitofp nneg i64 %5 to float
  %i.ad = fadd float %i.ab, 1.000000e+00
  %i.ae = fmul float %i.ad, %i.ac
  %i.af = fptoui float %i.ae to i64
  %i.ag = tail call i64 @llvm.smax.i64(i64 %i.af, i64 0)
  br label %_ZN5folly6detail11MemoryIdler19getVariationTimeoutINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_RKS8_f.exit

_ZN5folly6detail11MemoryIdler19getVariationTimeoutINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_RKS8_f.exit: ; preds = %bb.c, %bb.b
  %.sroa.031.0 = phi i64 [ %5, %bb.b ], [ %i.ag, %bb.c ] ; 2 uses
  %.not42 = icmp eq i64 %.sroa.031.0, 0
  br i1 %.not42, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5folly6detail11MemoryIdler19getVariationTimeoutINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_RKS8_f.exit
  %i.ah = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #23
  %i.ai = add nsw i64 %i.ah, %.sroa.031.0         ; 2 uses
  %.sroa.0.0.copyload.i2.i = load i64, ptr %3, align 8, !tbaa !321
  %i.aj = icmp slt i64 %i.ai, %.sroa.0.0.copyload.i2.i
  br i1 %i.aj, label %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit, label %.thread

_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i64 %i.ai, ptr %8, align 8
  %i.ak = call noundef i32 @_ZN5folly6detail13futexWaitImplEPKSt6atomicIjEjPKNSt6chrono10time_pointINS5_3_V212system_clockENS5_8durationIlSt5ratioILl1ELl1000000000EEEEEEPKNS6_INS7_12steady_clockESC_EEj(ptr noundef nonnull %1, i32 noundef %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %4) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.not = icmp eq i32 %i.ak, 3
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit
  store i32 %i.ak, ptr %0, align 4, !tbaa !1662
  br label %.thread

bb.f:                                             ; preds = %_ZN5folly6detail14futexWaitUntilISt6atomicIjENSt6chrono3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEENS0_11FutexResultEPKT_jRKNS4_10time_pointIT0_T1_EEj.exit, %_ZN5folly6detail11MemoryIdler19getVariationTimeoutINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEET_RKS8_f.exit
  call void @_ZN5folly6detail11MemoryIdler22flushLocalMallocCachesEv()
  call void @_ZN5folly6detail11MemoryIdler16unmapUnusedStackEm(i64 noundef %6)
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.e, %bb.a, %bb.f
  %.2 = phi i1 [ false, %bb.a ], [ false, %bb.f ], [ true, %bb.e ], [ false, %bb.d ]
  ret i1 %.2
}

declare void @_ZN5folly6detail11MemoryIdler22flushLocalMallocCachesEv() local_unnamed_addr #6

declare void @_ZN5folly6detail11MemoryIdler16unmapUnusedStackEm(i64 noundef) local_unnamed_addr #6

declare noundef i64 @_ZN5folly18getCurrentThreadIDEv() local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZN5folly6detail39singletonWarnDoubleRegistrationAndAbortERKNS0_14TypeDescriptorE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFvPN5folly10jsonschema9ValidatorEEZNS0_9SingletonIS2_NS0_6detail10DefaultTagES7_E15getTeardownFuncESt8functionIS4_EEUlS3_E_E9_M_invokeERKSt9_Any_dataOS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZSt10__invoke_rIvRZN5folly9SingletonINS0_10jsonschema9ValidatorENS0_6detail10DefaultTagES5_E15getTeardownFuncESt8functionIFvPS3_EEEUlS8_E_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #23, !call_target !1665, !inline_history !7333
  br label %_ZSt10__invoke_rIvRZN5folly9SingletonINS0_10jsonschema9ValidatorENS0_6detail10DefaultTagES5_E15getTeardownFuncESt8functionIFvPS3_EEEUlS8_E_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit

_ZSt10__invoke_rIvRZN5folly9SingletonINS0_10jsonschema9ValidatorENS0_6detail10DefaultTagES5_E15getTeardownFuncESt8functionIFvPS3_EEEUlS8_E_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFvPN5folly10jsonschema9ValidatorEEZNS0_9SingletonIS2_NS0_6detail10DefaultTagES7_E15getTeardownFuncESt8functionIS4_EEUlS3_E_E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN5folly9SingletonINS1_10jsonschema9ValidatorENS1_6detail10DefaultTagES6_E15getTeardownFuncESt8functionIFvPS4_EEEUlS9_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIZN5folly9SingletonINS1_10jsonschema9ValidatorENS1_6detail10DefaultTagES6_E15getTeardownFuncESt8functionIFvPS4_EEEUlS9_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIZN5folly9SingletonINS1_10jsonschema9ValidatorENS1_6detail10DefaultTagES6_E15getTeardownFuncESt8functionIFvPS4_EEEUlS9_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIZN5folly9SingletonINS1_10jsonschema9ValidatorENS1_6detail10DefaultTagES6_E15getTeardownFuncESt8functionIFvPS4_EEEUlS9_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @_ZTIZN5folly9SingletonINS_10jsonschema9ValidatorENS_6detail10DefaultTagES4_E15getTeardownFuncESt8functionIFvPS2_EEEUlS7_E_, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !26
  br label %_ZNSt14_Function_base13_Base_managerIZN5folly9SingletonINS1_10jsonschema9ValidatorENS1_6detail10DefaultTagES6_E15getTeardownFuncESt8functionIFvPS4_EEEUlS9_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN5folly9SingletonINS1_10jsonschema9ValidatorENS1_6detail10DefaultTagES6_E15getTeardownFuncESt8functionIFvPS4_EEEUlS9_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIZN5folly9SingletonINS1_10jsonschema9ValidatorENS1_6detail10DefaultTagES6_E15getTeardownFuncESt8functionIFvPS4_EEEUlS9_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5folly10jsonschema9ValidatorD2Ev(ptr nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #29 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define void @_ZN5folly10jsonschema9ValidatorD0Ev(ptr noundef nonnull readnone align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #30 align 2 {
bb.a:
  tail call void @llvm.trap() #47
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !47
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.31) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #46
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !14

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #46
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #48 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !58
  store i64 %i.c, ptr %i.a, align 8, !tbaa !18
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !18
  store i8 %i.j, ptr %i.i, align 1, !tbaa !18
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !18
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #31 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.306", align 8 ; 5 uses
  %4 = alloca %"class.std::unique_ptr.306", align 8 ; 6 uses
  %5 = alloca %"struct.std::pair.866", align 8    ; 15 uses
  %6 = alloca %"class.std::vector.80", align 8    ; 5 uses
  %7 = alloca %"class.std::unique_ptr.306", align 8 ; 6 uses
  %8 = alloca %"class.std::unique_ptr.306", align 8 ; 6 uses
  %9 = alloca %"class.boost::basic_regex", align 8 ; 9 uses
  %10 = alloca %"class.std::unique_ptr.306", align 8 ; 6 uses
  %11 = alloca %"class.std::unique_ptr.306", align 8 ; 5 uses
  %12 = alloca %"class.std::unique_ptr.306", align 8 ; 5 uses
  %13 = alloca %"class.std::unique_ptr.306", align 8 ; 6 uses
  %14 = alloca %"class.std::unique_ptr.306", align 8 ; 5 uses
  %15 = alloca %"struct.folly::dynamic", align 8  ; 9 uses
  %16 = alloca %"class.std::unique_ptr.306", align 8 ; 5 uses
  %17 = alloca %"struct.folly::dynamic", align 8  ; 5 uses
  %18 = alloca %"class.boost::basic_regex", align 8 ; 8 uses
  %19 = alloca %"struct.folly::dynamic", align 8  ; 5 uses
  %20 = alloca %"struct.folly::dynamic", align 8  ; 5 uses
  %21 = alloca %"struct.folly::dynamic", align 8  ; 5 uses
  %22 = alloca %"struct.folly::dynamic", align 8  ; 8 uses
  %23 = alloca %"class.boost::iterator_range", align 8 ; 6 uses
  %24 = alloca %"struct.boost::algorithm::detail::first_finderF", align 8 ; 5 uses
  %25 = alloca %"class.boost::iterator_range", align 8 ; 6 uses
  %26 = alloca %"struct.boost::algorithm::detail::first_finderF", align 8 ; 5 uses
  %27 = alloca %"class.std::unique_ptr.407", align 8 ; 7 uses
  %28 = alloca %"class.std::vector.80", align 8   ; 16 uses
  %29 = alloca %"class.std::unique_ptr.306", align 8 ; 5 uses
  %30 = alloca %"class.std::unique_ptr.415", align 8 ; 5 uses
  %31 = alloca %"class.std::unique_ptr.423", align 8 ; 5 uses
  %32 = alloca %"class.std::unique_ptr.423", align 8 ; 5 uses
  %33 = alloca %"class.std::unique_ptr.447", align 8 ; 5 uses
  %34 = alloca %"class.std::unique_ptr.455", align 8 ; 5 uses
  %35 = alloca %"class.std::unique_ptr.471", align 8 ; 8 uses
  %36 = alloca %"class.std::unique_ptr.479", align 8 ; 5 uses
  %37 = alloca %"class.std::unique_ptr.487", align 8 ; 5 uses
  %38 = alloca %"class.std::unique_ptr.495", align 8 ; 5 uses
  %39 = alloca %"class.std::unique_ptr.503", align 8 ; 5 uses
  %40 = alloca %"class.std::unique_ptr.511", align 8 ; 5 uses
  %41 = alloca %"class.std::unique_ptr.519", align 8 ; 5 uses
  %42 = alloca %"class.std::unique_ptr.519", align 8 ; 5 uses
  %43 = alloca %"class.std::unique_ptr.527", align 8 ; 5 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !7334
  %.not.i.i.i = icmp eq i32 %i.a, 5
  br i1 %.not.i.i.i, label %_ZNK5folly7dynamic5emptyEv.exit, label %.critedge

_ZNK5folly7dynamic5emptyEv.exit:                  ; preds = %bb.a
  %i.b = tail call noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNK5folly7dynamic5emptyEv.exit
  %i.c = tail call noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nonnull @.str.32, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.32, i64 4)) ; 8 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.bk, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %i.c, align 8, !tbaa !7334
  %.not.i.i.i215 = icmp eq i32 %i.d, 6
  br i1 %.not.i.i.i215, label %_ZNK5folly7dynamic11stringPieceEv.exit, label %bb.bk

_ZNK5folly7dynamic11stringPieceEv.exit:           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18
  %i.h = icmp eq i8 %i.g, 35
  br i1 %i.h, label %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit, label %bb.bk

_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit:      ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val16.i.i = load i64, ptr %i.j, align 8, !tbaa !7337
  %.not.i.i = icmp ugt i64 %.val16.i.i, 20
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.020.028.i.i = load ptr, ptr %i.k, align 8, !tbaa !53 ; 3 uses
  %i.l = icmp eq ptr %.sroa.020.028.i.i, null
  br i1 %i.l, label %.loopexit1115, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val9.i.i = load i64, ptr %i.m, align 8, !tbaa !50
  %.val9.fr.i.i = freeze i64 %.val9.i.i           ; 3 uses
  %i.n = icmp eq i64 %.val9.fr.i.i, 0
  br i1 %i.n, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.us.i.i
  %.sroa.020.029.us.i.i = phi ptr [ %.sroa.020.0.us.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.us.i.i ], [ %.sroa.020.028.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.o = getelementptr i8, ptr %.sroa.020.029.us.i.i, i64 16
  %.val11.us.i.i = load i64, ptr %i.o, align 8, !tbaa !50
  %i.p = icmp eq i64 %.val11.us.i.i, 0
  br i1 %i.p, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.us.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %.sroa.020.0.us.i.i = load ptr, ptr %.sroa.020.029.us.i.i, align 8, !tbaa !53 ; 2 uses
  %i.q = icmp eq ptr %.sroa.020.0.us.i.i, null
  br i1 %i.q, label %.loopexit1115, label %.lr.ph.split.us.i.i, !llvm.loop !7338

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.i.i
  %.sroa.020.029.i.i = phi ptr [ %.sroa.020.0.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.i.i ], [ %.sroa.020.028.i.i, %.lr.ph.i.i ] ; 4 uses
  %i.r = getelementptr i8, ptr %.sroa.020.029.i.i, i64 16
  %.val11.i.i = load i64, ptr %i.r, align 8, !tbaa !50
  %i.s = icmp eq i64 %.val9.fr.i.i, %.val11.i.i
  br i1 %i.s, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i: ; preds = %.lr.ph.split.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.020.029.i.i, i64 8
  %.val10.i.i = load ptr, ptr %i.t, align 8
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.f, ptr readonly %.val10.i.i, i64 %.val9.fr.i.i)
  %i.u = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.u, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i, %.lr.ph.split.i.i
  %.sroa.020.0.i.i = load ptr, ptr %.sroa.020.029.i.i, align 8, !tbaa !53 ; 2 uses
  %i.v = icmp eq ptr %.sroa.020.0.i.i, null
  br i1 %i.v, label %.loopexit1115, label %.lr.ph.split.i.i, !llvm.loop !7338

bb.e:                                             ; preds = %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.val6.i.i = load i64, ptr %i.w, align 8, !tbaa !50
  %i.x = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull %i.f, i64 noundef %.val6.i.i, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i unwind label %bb.f ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #47
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i: ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val7.i.i = load i64, ptr %i.aa, align 8, !tbaa !45 ; 3 uses
  %i.ab = urem i64 %i.x, %.val7.i.i               ; 3 uses
  %.val12.i.i = load ptr, ptr %i.i, align 8, !tbaa !36
  %.val14.i.i = load ptr, ptr %i.e, align 8
  %.val15.i.i = load i64, ptr %i.w, align 8
  %.8.val4.fr.i.i.i.i = freeze i64 %.val15.i.i    ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val12.i.i, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !52 ; 2 uses
  %.not.i.i.i.i217 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i217, label %.loopexit1115, label %bb.g

bb.g:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53 ; 3 uses
  %i.af = icmp eq i64 %.8.val4.fr.i.i.i.i, 0
  %.phi.trans.insert11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %.val.i.us.pre.i.i.i.i = load i64, ptr %.phi.trans.insert11.i.i.i.i, align 8, !tbaa !54 ; 2 uses
  br i1 %i.af, label %.split.us.i.i.i.i, label %.split.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.g, %bb.i
  %.val.i.us.i.i.i.i = phi i64 [ %.val23.us.i.i.i.i, %bb.i ], [ %.val.i.us.pre.i.i.i.i, %bb.g ]
  %.0.us.i.i.i.i = phi ptr [ %i.aj, %bb.i ], [ %i.ae, %bb.g ] ; 3 uses
  %i.ag = icmp eq i64 %i.x, %.val.i.us.i.i.i.i
  br i1 %i.ag, label %bb.h, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i

bb.h:                                             ; preds = %.split.us.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i.i, i64 16
  %.val7.i.us.i.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !50
  %i.ai = icmp eq i64 %.val7.i.us.i.i.i.i, 0
  br i1 %i.ai, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i: ; preds = %bb.h, %.split.us.i.i.i.i
  %i.aj = load ptr, ptr %.0.us.i.i.i.i, align 8, !tbaa !53 ; 3 uses
  %.not18.us.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not18.us.i.i.i.i, label %.loopexit1115, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 48
  %.val23.us.i.i.i.i = load i64, ptr %i.ak, align 8, !tbaa !54 ; 2 uses
  %i.al = urem i64 %.val23.us.i.i.i.i, %.val7.i.i
  %.not19.us.i.i.i.i = icmp eq i64 %i.al, %i.ab
  br i1 %.not19.us.i.i.i.i, label %.split.us.i.i.i.i, label %.loopexit1115, !llvm.loop !56

.split.i.i.i.i:                                   ; preds = %bb.g, %bb.k
  %.val.i.i.i.i.i = phi i64 [ %.val23.i.i.i.i, %bb.k ], [ %.val.i.us.pre.i.i.i.i, %bb.g ]
  %.0.i.i.i.i = phi ptr [ %i.ar, %bb.k ], [ %i.ae, %bb.g ] ; 4 uses
  %i.am = icmp eq i64 %i.x, %.val.i.i.i.i.i
  br i1 %i.am, label %bb.j, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i

bb.j:                                             ; preds = %.split.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %.val7.i.i.i.i.i = load i64, ptr %i.an, align 8, !tbaa !50
  %i.ao = icmp eq i64 %.8.val4.fr.i.i.i.i, %.val7.i.i.i.i.i
  br i1 %i.ao, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %.val6.i.i.i.i.i = load ptr, ptr %i.ap, align 8
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val14.i.i, ptr readonly %.val6.i.i.i.i.i, i64 %.8.val4.fr.i.i.i.i)
  %i.aq = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.aq, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i, %bb.j, %.split.i.i.i.i
  %i.ar = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !53 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not18.i.i.i.i, label %.loopexit1115, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i
  %i.as = getelementptr i8, ptr %i.ar, i64 48
  %.val23.i.i.i.i = load i64, ptr %i.as, align 8, !tbaa !54 ; 2 uses
  %i.at = urem i64 %.val23.i.i.i.i, %.val7.i.i
  %.not19.i.i.i.i = icmp eq i64 %i.at, %i.ab
  br i1 %.not19.i.i.i.i, label %.split.i.i.i.i, label %.loopexit1115, !llvm.loop !56

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN5folly10jsonschema12_GLOBAL__N_110IValidatorESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_.exit: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i, %.lr.ph.split.us.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PN5folly10jsonschema12_GLOBAL__N_110IValidatorEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i, %bb.h
end_hunk_0
begin_hunk_1_@_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE:bb.a
  %i.anv = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body.i.i.i unwind label %bb.gx, !noalias !9540, !inline_history !9566

bb.gx:                                            ; preds = %bb.gw
  %i.anw = landingpad { ptr, i32 }
          catch ptr null
  %i.anx = extractvalue { ptr, i32 } %i.anw, 0
  call void @__clang_call_terminate(ptr %i.anx) #47, !noalias !9540, !inline_history !9566
  unreachable

bb.gy:                                            ; preds = %bb.gv
  unreachable

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i.i: ; preds = %bb.gu, %._crit_edge.i.i.i.i.i.i
  store i64 %i.ana, ptr %i.ake, align 8, !tbaa !9546, !noalias !9540
  store ptr %.0.i.i.i.i.i.i.i755, ptr %i.akc, align 8, !tbaa !9544, !noalias !9540
  %i.any = urem i64 %i.alh, %i.ana
  br label %bb.gz

bb.gz:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i.i, %._crit_edge.i.i.i.i
  %i.anz = phi ptr [ %.0.i.i.i.i.i.i.i755, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %.0.i30.i.i.i = phi i64 [ %i.any, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit.i.i.i.i ], [ %i.alk, %._crit_edge.i.i.i.i ]
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.amd, i64 48
  store i64 %i.alh, ptr %i.aoa, align 8, !tbaa !54, !noalias !9540
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %i.anz, i64 %.0.i30.i.i.i ; 3 uses
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !52, !noalias !9540 ; 2 uses
  %.not.i.i31.i.i.i = icmp eq ptr %i.aoc, null
  br i1 %.not.i.i31.i.i.i, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !53, !noalias !9540
  store ptr %i.aod, ptr %i.amd, align 8, !tbaa !53, !noalias !9540
  %i.aoe = load ptr, ptr %i.aob, align 8, !tbaa !52, !noalias !9540
  store ptr %i.amd, ptr %i.aoe, align 8, !tbaa !53, !noalias !9540
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i

bb.hb:                                            ; preds = %bb.gz
  %i.aof = load ptr, ptr %i.akf, align 8, !tbaa !9570, !noalias !9540 ; 3 uses
  store ptr %i.aof, ptr %i.amd, align 8, !tbaa !53, !noalias !9540
  store ptr %i.amd, ptr %i.akf, align 8, !tbaa !9570, !noalias !9540
  %.not11.i.i.i.i.i = icmp eq ptr %i.aof, null
  br i1 %.not11.i.i.i.i.i, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %.val12.i.i.i.i.i = load i64, ptr %i.ake, align 8, !tbaa !9546, !noalias !9540
  %i.aog = getelementptr i8, ptr %i.aof, i64 48
  %.val13.i.i.i.i.i = load i64, ptr %i.aog, align 8, !tbaa !54, !noalias !9540
  %i.aoh = urem i64 %.val13.i.i.i.i.i, %.val12.i.i.i.i.i
  %i.aoi = getelementptr inbounds nuw [8 x i8], ptr %i.anz, i64 %i.aoh
  store ptr %i.amd, ptr %i.aoi, align 8, !tbaa !52, !noalias !9540
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.hb
  store ptr %i.akf, ptr %i.aob, align 8, !tbaa !52, !noalias !9540
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i: ; preds = %bb.hd, %bb.ha
  %i.aoj = load i64, ptr %i.akv, align 8, !tbaa !9568, !noalias !9540
  %i.aok = add i64 %i.aoj, 1
  store i64 %i.aok, ptr %i.akv, align 8, !tbaa !9568, !noalias !9540
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit.i

bb.he:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeC2IJRKSt21piecewise_construct_tSt5tupleIJRS7_EESZ_IJEEEEEPNSI_16_Hashtable_allocISaINSI_10_Hash_nodeISG_Lb1EEEEEEDpOT_.exit.i.i.i
  %i.aol = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.he, %bb.gw
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aol, %bb.he ], [ %i.anv, %bb.gw ]
  call fastcc void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr nonnull %i.amd) #23, !noalias !9540, !inline_history !9566
  br label %.body64.i

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i.i.i, %bb.fy, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i
  %.pn.i.i.i = phi ptr [ %i.amd, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSI_18_Mod_range_hashingENSI_20_Default_ranged_hashENSI_20_Prime_rehash_policyENSI_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i.i ], [ %.0.us.i.i.i.i.i, %bb.fy ], [ %.0.i.i.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISD_EEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISH_Lb1EEE.exit.i.i.i.i.i ]
  %.1.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 40 ; 2 uses
  %i.aom = load ptr, ptr %.1.i.i.i, align 8, !tbaa !62, !noalias !9540 ; 3 uses
  store ptr %i.aky, ptr %.1.i.i.i, align 8, !tbaa !62, !noalias !9540
  %.not.i.i.i66.i = icmp eq ptr %i.aom, null
  br i1 %.not.i.i.i66.i, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i754, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i736

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i736: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit.i
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !30, !noalias !9540
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aon, i64 8
  %i.aop = load ptr, ptr %i.aoo, align 8, !noalias !9540
  call void %i.aop(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aom) #23, !noalias !9540, !call_target !7519, !inline_history !9572
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i754

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i754: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISA_EESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SD_EEEixERSJ_.exit.i, %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i736
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !9540
  br label %bb.hg

bb.hf:                                            ; preds = %bb.ft
  %i.aoq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i730

.loopexit1094:                                    ; preds = %.loopexit42.i.i.i
  %lpad.loopexit1096 = landingpad { ptr, i32 }
          cleanup
  br label %.body64.i

.loopexit.split-lp1095:                           ; preds = %bb.fv
  %lpad.loopexit.split-lp1097 = landingpad { ptr, i32 }
          cleanup
  br label %.body64.i

.body64.i:                                        ; preds = %.loopexit1094, %.loopexit.split-lp1095, %bb.gh, %.body.i.i.i
  %eh.lpad-body65.i = phi { ptr, i32 } [ %i.amp, %bb.gh ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %lpad.loopexit1096, %.loopexit1094 ], [ %lpad.loopexit.split-lp1097, %.loopexit.split-lp1095 ]
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #23, !noalias !9540, !inline_history !9566
  br label %.body.i730

.body.i730:                                       ; preds = %bb.fu, %bb.hf, %.body64.i
  %.pn50.i = phi { ptr, i32 } [ %eh.lpad-body65.i, %.body64.i ], [ %i.aoq, %bb.hf ], [ %i.alc, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !9540
  br label %bb.iy

bb.hg:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit.i754, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i
  %i.aor = getelementptr inbounds i8, ptr %.sroa.01033.01242, i64 -16
  %.neg.i.i.i.i.i.i = mul nsw i64 %.sroa.91036.01243, -8
  %i.aos = getelementptr inbounds i8, ptr %i.aor, i64 %.neg.i.i.i.i.i.i ; 2 uses
  %.not19.i6.i.i.i.i = icmp eq i64 %.sroa.91036.01243, 0
  br i1 %.not19.i6.i.i.i.i, label %.critedge.i.i.i.i.i.preheader, label %thread-pre-split.i.i.i.i

.critedge.i.i.i.i.i.preheader:                    ; preds = %bb.hh, %bb.hg
  br label %.critedge.i.i.i.i.i

bb.hh:                                            ; preds = %thread-pre-split.i.i.i.i
  %.not19.i.i.i.i68.i = icmp eq i64 %i.aov, 0
  br i1 %.not19.i.i.i.i68.i, label %.critedge.i.i.i.i.i.preheader, label %thread-pre-split.i.i.i.i

thread-pre-split.i.i.i.i:                         ; preds = %bb.hg, %bb.hh
  %i.aot = phi i64 [ %i.aov, %bb.hh ], [ %.sroa.91036.01243, %bb.hg ]
  %i.aou = phi ptr [ %i.aow, %bb.hh ], [ %.sroa.01033.01242, %bb.hg ]
  %i.aov = add nsw i64 %i.aot, -1                 ; 4 uses
  %i.aow = getelementptr inbounds i8, ptr %i.aou, i64 -8 ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aos, i64 %i.aov
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !18, !noalias !9540
  %.not.i.i.i67.i = icmp eq i8 %i.aoy, 0
  br i1 %.not.i.i.i67.i, label %bb.hh, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.backedge, !prof !14, !llvm.loop !9573

.critedge.i.i.i.i.i:                              ; preds = %.critedge.i.i.i.i.i.preheader, %bb.hi
  %.017.i.i.i.i.i = phi ptr [ %i.apc, %bb.hi ], [ %i.aos, %.critedge.i.i.i.i.i.preheader ] ; 4 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i, i64 14
  %i.apa = load i8, ptr %i.aoz, align 1, !tbaa !18, !noalias !9540
  %i.apb = and i8 %i.apa, 15
  %.not2.i.i.i.i = icmp eq i8 %i.apb, 0
  br i1 %.not2.i.i.i.i, label %bb.hi, label %.loopexit1093, !prof !296

bb.hi:                                            ; preds = %.critedge.i.i.i.i.i
  %i.apc = getelementptr inbounds i8, ptr %.017.i.i.i.i.i, i64 -128 ; 3 uses
  %i.apd = load <16 x i8>, ptr %i.apc, align 16, !tbaa !18, !noalias !9540
  %i.ape = icmp slt <16 x i8> %i.apd, zeroinitializer
  %i.apf = bitcast <16 x i1> %i.ape to i16
  %i.apg = and i16 %i.apf, 16383                  ; 2 uses
  %i.aph = getelementptr inbounds i8, ptr %.017.i.i.i.i.i, i64 -256
  call void @llvm.prefetch.p0(ptr nonnull %i.aph, i32 0, i32 3, i32 1), !noalias !9540
  %.not3.i.i.i.i = icmp eq i16 %i.apg, 0
  br i1 %.not3.i.i.i.i, label %.critedge.i.i.i.i.i, label %bb.hj, !prof !14, !llvm.loop !9574

bb.hj:                                            ; preds = %bb.hi
  %i.api = zext nneg i16 %i.apg to i32
  %i.apj = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.api, i1 true)
  %i.apk = xor i32 %i.apj, 31
  %i.apl = zext nneg i32 %i.apk to i64            ; 2 uses
  %i.apm = icmp ne ptr %i.apc, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.apm), !noalias !9540
  %i.apn = getelementptr inbounds i8, ptr %.017.i.i.i.i.i, i64 -112
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %i.apn, i64 %i.apl
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.backedge

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.backedge: ; preds = %thread-pre-split.i.i.i.i, %bb.hj
  %.sroa.91036.01243.be = phi i64 [ %i.apl, %bb.hj ], [ %i.aov, %thread-pre-split.i.i.i.i ]
  %.sroa.01033.01242.be = phi ptr [ %i.apo, %bb.hj ], [ %i.aow, %thread-pre-split.i.i.i.i ]
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i

.loopexit1093:                                    ; preds = %.critedge.i.i.i.i.i, %_ZNK5folly7dynamic5itemsEv.exit.i, %bb.fs, %bb.fr
  %.not41.i = icmp eq ptr %i.ajv, null
  br i1 %.not41.i, label %.loopexit1084, label %bb.hk

bb.hk:                                            ; preds = %.loopexit1093
  %i.app = load i32, ptr %i.ajv, align 8, !tbaa !7334, !noalias !9540
  %.not.i.i.i69.i = icmp eq i32 %i.app, 5
  br i1 %.not.i.i.i69.i, label %_ZNK5folly7dynamic5itemsEv.exit72.i, label %.loopexit1084

_ZNK5folly7dynamic5itemsEv.exit72.i:              ; preds = %bb.hk
  %i.apq = getelementptr inbounds nuw i8, ptr %i.ajv, i64 24
  %i.apr = load i64, ptr %i.apq, align 8, !tbaa !9555, !noalias !9540 ; 3 uses
  %i.aps = and i64 %i.apr, -8                     ; 2 uses
  %.not10601245 = icmp eq i64 %i.aps, 0
  br i1 %.not10601245, label %.loopexit1084, label %.lr.ph1248

.lr.ph1248:                                       ; preds = %_ZNK5folly7dynamic5itemsEv.exit72.i
  %i.apt = inttoptr i64 %i.aps to ptr
  %i.apu = shl i64 %i.apr, 1
  %i.apv = and i64 %i.apu, 14
  %i.apw = lshr i64 %i.apr, 3
  %i.apx = and i64 %i.apw, 1
  %i.apy = or disjoint i64 %i.apv, %i.apx
  %i.apz = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.akb, i64 72 ; 4 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.akb, i64 80 ; 3 uses
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit123.i

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit123.i: ; preds = %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit123.i.backedge, %.lr.ph1248
  %.sroa.9.01247 = phi i64 [ %i.apy, %.lr.ph1248 ], [ %.sroa.9.01247.be, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit123.i.backedge ] ; 3 uses
  %.sroa.01027.01246 = phi ptr [ %i.apt, %.lr.ph1248 ], [ %.sroa.01027.01246.be, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit123.i.backedge ] ; 3 uses
  %i.aqc = load ptr, ptr %.sroa.01027.01246, align 8, !tbaa !9556, !noalias !9540 ; 4 uses
  %i.aqd = load i32, ptr %i.aqc, align 8, !tbaa !7334, !noalias !9540
  %.not.i.i.i75.i = icmp eq i32 %i.aqd, 6
  br i1 %.not.i.i.i75.i, label %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit78.i, label %bb.iq

_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit78.i:  ; preds = %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit123.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !9540
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqc, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false), !noalias !9540
  %i.aqf = load ptr, ptr %i.aqe, align 8, !tbaa !58, !noalias !9540 ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqc, i64 16
  %i.aqh = load i64, ptr %i.aqg, align 8, !tbaa !50, !noalias !9540
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.aqh
  %i.aqj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEE9do_assignEPKcS7_j(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.aqf, ptr noundef %i.aqi, i32 noundef 0)
          to label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EEj.exit.i unwind label %bb.hl, !noalias !9540, !inline_history !9566 ; 0 uses

bb.hl:                                            ; preds = %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit78.i
  %i.aqk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5boost13re_detail_50026basic_regex_implementationIcNS0_12regex_traitsIcNS0_16cpp_regex_traitsIcEEEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #23, !noalias !9540, !inline_history !9566
  br label %.body79.i

_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EEj.exit.i: ; preds = %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit78.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23, !noalias !9540
  call void @llvm.experimental.noalias.scope.decl(metadata !9575)
  %i.aql = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #48
          to label %.noexc82.i unwind label %bb.io ; 7 uses

.noexc82.i:                                       ; preds = %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEEC2ISt11char_traitsIcESaIcEEERKNSt7__cxx1112basic_stringIcT_T0_EEj.exit.i
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqc, i64 40
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aql, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 16), ptr %i.aql, align 8, !tbaa !30, !noalias !9578
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorE, i64 72), ptr %i.aqn, align 8, !tbaa !30, !noalias !9578
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aql, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aqo, i8 0, i64 24, i1 false), !noalias !9578
  store ptr %i.aql, ptr %10, align 8, !tbaa !32, !alias.scope !9575, !noalias !9540
  invoke fastcc void @_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator10loadSchemaERNS1_22SchemaValidatorContextERKNS_7dynamicE(ptr noundef nonnull align 8 dereferenceable(40) %i.aql, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.aqm)
          to label %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit85.i unwind label %bb.hm, !noalias !9579, !inline_history !9565

bb.hm:                                            ; preds = %.noexc82.i
  %i.aqp = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #23, !noalias !9540, !inline_history !9565
  br label %.body83.i

_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit85.i: ; preds = %.noexc82.i
  %.val.i = load ptr, ptr %9, align 8, !noalias !9540 ; 2 uses
  %.val58.i = load ptr, ptr %i.apz, align 8, !noalias !9540 ; 6 uses
  %i.aqq = load ptr, ptr %i.aqa, align 8, !tbaa !9582, !noalias !9540 ; 10 uses
  %i.aqr = load ptr, ptr %i.aqb, align 8, !tbaa !9583, !noalias !9540
  %.not.i86.i = icmp eq ptr %i.aqq, %i.aqr
  br i1 %.not.i86.i, label %bb.hr, label %bb.hn

bb.hn:                                            ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit85.i
  store ptr %.val.i, ptr %i.aqq, align 8, !tbaa !7477, !noalias !9540
  %44 = getelementptr inbounds nuw i8, ptr %i.aqq, i64 8
  store ptr %.val58.i, ptr %44, align 8, !tbaa !74, !noalias !9540
  %.not.i.i.i.i.i.i.i.i722 = icmp eq ptr %.val58.i, null
  br i1 %.not.i.i.i.i.i.i.i.i722, label %_ZSt12construct_atISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEJS7_S8_INSB_15SchemaValidatorESD_ISH_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSL_DpOSM_.exit.i.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.aqs = getelementptr inbounds nuw i8, ptr %.val58.i, i64 8 ; 3 uses
  %i.aqt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18, !noalias !9540
  %.not.i.i.i.i.i.i.i.i.i723 = icmp eq i8 %i.aqt, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i723, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.aqu = load i32, ptr %i.aqs, align 4, !tbaa !7, !noalias !9540
  %i.aqv = add nsw i32 %i.aqu, 1
  store i32 %i.aqv, ptr %i.aqs, align 4, !tbaa !7, !noalias !9540
  br label %_ZSt12construct_atISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEJS7_S8_INSB_15SchemaValidatorESD_ISH_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSL_DpOSM_.exit.i.i

bb.hq:                                            ; preds = %bb.ho
  %i.aqw = atomicrmw volatile add ptr %i.aqs, i32 1 acq_rel, align 4, !noalias !9540 ; 0 uses
  %.pre.i.i = load ptr, ptr %i.aqa, align 8, !tbaa !9582, !noalias !9540
  br label %_ZSt12construct_atISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEJS7_S8_INSB_15SchemaValidatorESD_ISH_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSL_DpOSM_.exit.i.i

_ZSt12construct_atISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEJS7_S8_INSB_15SchemaValidatorESD_ISH_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSL_DpOSM_.exit.i.i: ; preds = %bb.hq, %bb.hp, %bb.hn
  %i.aqx = phi ptr [ %i.aqq, %bb.hn ], [ %i.aqq, %bb.hp ], [ %.pre.i.i, %bb.hq ]
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqq, i64 16
  store ptr %i.aql, ptr %i.aqy, align 8, !tbaa !7363, !noalias !9540
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqx, i64 24
  store ptr %i.aqz, ptr %i.aqa, align 8, !tbaa !9582, !noalias !9540
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit108.i

bb.hr:                                            ; preds = %_ZN5folly10jsonschema12_GLOBAL__N_115SchemaValidator4makeERNS1_22SchemaValidatorContextERKNS_7dynamicE.exit85.i
  %.val30.i.i.i = load ptr, ptr %i.aki, align 8, !tbaa !9584, !noalias !9540 ; 6 uses
  %i.ara = ptrtoint ptr %i.aqq to i64
  %i.arb = ptrtoint ptr %.val30.i.i.i to i64      ; 2 uses
  %i.arc = sub i64 %i.ara, %i.arb                 ; 3 uses
  %i.ard = icmp eq i64 %i.arc, 9223372036854775800
  br i1 %i.ard, label %bb.hs, label %_ZNKSt6vectorISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_EE12_M_check_lenEmPKc.exit.i.i.i

bb.hs:                                            ; preds = %bb.hr
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #46
          to label %.noexc90.i unwind label %.loopexit.split-lp1086, !noalias !9540, !inline_history !9566

.noexc90.i:                                       ; preds = %bb.hs
  unreachable

_ZNKSt6vectorISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.hr
  %i.are = sdiv exact i64 %i.arc, 24              ; 3 uses
  %i.arf = icmp eq ptr %i.aqq, %.val30.i.i.i      ; 2 uses
  %.sroa.speculated.i.i.i.i725 = select i1 %i.arf, i64 1, i64 %i.are
  %i.arg = add nsw i64 %.sroa.speculated.i.i.i.i725, %i.are ; 2 uses
  %i.arh = icmp ult i64 %i.arg, %i.are
  %i.ari = call i64 @llvm.umin.i64(i64 %i.arg, i64 384307168202282325)
  %i.arj = select i1 %i.arh, i64 384307168202282325, i64 %i.ari ; 3 uses
  %.not.i.i.i87.i = icmp ne i64 %i.arj, 0
  call void @llvm.assume(i1 %.not.i.i.i87.i), !noalias !9540
  %i.ark = mul nuw nsw i64 %i.arj, 24
  %i.arl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ark) #48
          to label %.noexc91.i unwind label %.loopexit1085, !noalias !9540, !inline_history !9566 ; 5 uses

.noexc91.i:                                       ; preds = %_ZNKSt6vectorISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arl, i64 %i.arc ; 3 uses
  store ptr %.val.i, ptr %i.arm, align 8, !tbaa !7477, !noalias !9540
  %45 = getelementptr inbounds nuw i8, ptr %i.arm, i64 8
  store ptr %.val58.i, ptr %45, align 8, !tbaa !74, !noalias !9540
  %.not.i.i.i.i.i.i.i10.i.i = icmp eq ptr %.val58.i, null
  br i1 %.not.i.i.i.i.i.i.i10.i.i, label %bb.hw, label %bb.ht

bb.ht:                                            ; preds = %.noexc91.i
  %i.arn = getelementptr inbounds nuw i8, ptr %.val58.i, i64 8 ; 3 uses
  %i.aro = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18, !noalias !9540
  %.not.i.i.i.i.i.i.i.i.i88.i = icmp eq i8 %i.aro, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i88.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.arp = load i32, ptr %i.arn, align 4, !tbaa !7, !noalias !9540
  %i.arq = add nsw i32 %i.arp, 1
  store i32 %i.arq, ptr %i.arn, align 4, !tbaa !7, !noalias !9540
  br label %bb.hw

bb.hv:                                            ; preds = %bb.ht
  %i.arr = atomicrmw volatile add ptr %i.arn, i32 1 acq_rel, align 4, !noalias !9540 ; 0 uses
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.hu, %.noexc91.i
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arm, i64 16
  store ptr %i.aql, ptr %i.ars, align 8, !tbaa !7363, !noalias !9540
  br i1 %i.arf, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESH_SaISG_EET0_T_SK_SJ_RT1_.exit42.i.thread.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESH_SaISG_EET0_T_SK_SJ_RT1_.exit42.i.thread.i.i: ; preds = %bb.hw
  %i.art = getelementptr inbounds nuw i8, ptr %i.arl, i64 24
  br label %_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.hw, %bb.ia
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.asf, %bb.ia ], [ %i.arl, %bb.hw ] ; 4 uses
  %.sroa.010.011.i.i.i.i.i.i.i.i = phi ptr [ %i.ase, %bb.ia ], [ %.val30.i.i.i, %bb.hw ] ; 4 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i.i, i64 8
  %i.arv = load ptr, ptr %i.aru, align 8, !tbaa !74, !noalias !9540 ; 2 uses
  %i.arw = load <2 x ptr>, ptr %.sroa.010.011.i.i.i.i.i.i.i.i, align 8, !tbaa !26, !noalias !9540
  store <2 x ptr> %i.arw, ptr %.012.i.i.i.i.i.i.i.i, align 8, !tbaa !26, !noalias !9540
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.arv, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ia, label %bb.hx

bb.hx:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arv, i64 8 ; 3 uses
  %i.ary = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18, !noalias !9540
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ary, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.arz = load i32, ptr %i.arx, align 4, !tbaa !7, !noalias !9540
  %i.asa = add nsw i32 %i.arz, 1
  store i32 %i.asa, ptr %i.arx, align 4, !tbaa !7, !noalias !9540
  br label %bb.ia

bb.hz:                                            ; preds = %bb.hx
  %i.asb = atomicrmw volatile add ptr %i.arx, i32 1 acq_rel, align 4, !noalias !9540 ; 0 uses
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy, %.lr.ph.i.i.i.i.i.i.i.i
  %i.asc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 16
  %i.asd = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.asd, align 8, !tbaa !62, !noalias !9540
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.asc, align 8, !tbaa !62, !noalias !9540
  store ptr null, ptr %i.asd, align 8, !tbaa !62, !noalias !9540
  %i.ase = getelementptr inbounds nuw i8, ptr %.sroa.010.011.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 24
  %i.asg = icmp eq ptr %i.ase, %i.aqq
  br i1 %i.asg, label %.lr.ph.i.i.i.i.i726, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !9585

.lr.ph.i.i.i.i.i726:                              ; preds = %bb.ia, %_ZSt8_DestroyISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.atd, %_ZSt8_DestroyISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvPT_.exit.i.i.i.i.i ], [ %.val30.i.i.i, %bb.ia ] ; 3 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.asi = load ptr, ptr %i.ash, align 8, !tbaa !62, !noalias !9540 ; 3 uses
  %.not.i.i.i.i.i.i43.i.i.i = icmp eq ptr %i.asi, null
  br i1 %.not.i.i.i.i.i.i43.i.i.i, label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i.i.i.i727

_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i.i.i.i727: ; preds = %.lr.ph.i.i.i.i.i726
  %i.asj = load ptr, ptr %i.asi, align 8, !tbaa !30, !noalias !9540
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asj, i64 8
  %i.asl = load ptr, ptr %i.ask, align 8, !noalias !9540
  call void %i.asl(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.asi) #23, !noalias !9540, !call_target !7519, !inline_history !9586
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5folly10jsonschema12_GLOBAL__N_110IValidatorEEclEPS3_.exit.i.i.i.i.i.i.i.i.i727, %.lr.ph.i.i.i.i.i726
  %i.asm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !74, !noalias !9540 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.asn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvPT_.exit.i.i.i.i.i, label %bb.ib

bb.ib:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 8 ; 4 uses
  %i.asp = load atomic i64, ptr %i.aso acquire, align 8, !noalias !9540 ; 2 uses
  %i.asq = icmp eq i64 %i.asp, 4294967297
  %i.asr = trunc i64 %i.asp to i32                ; 2 uses
  br i1 %i.asq, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  store i32 0, ptr %i.aso, align 8, !tbaa !77, !noalias !9540
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asn, i64 12
  store i32 0, ptr %i.ass, align 4, !tbaa !79, !noalias !9540
  %i.ast = load ptr, ptr %i.asn, align 8, !tbaa !30, !noalias !9540
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 16
  %i.asv = load ptr, ptr %i.asu, align 8, !noalias !9540
  call void %i.asv(ptr noundef nonnull align 8 dereferenceable(16) %i.asn) #23, !noalias !9540, !call_target !80, !inline_history !9587
  %i.asw = load ptr, ptr %i.asn, align 8, !tbaa !30, !noalias !9540
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 24
  %i.asy = load ptr, ptr %i.asx, align 8, !noalias !9540
  call void %i.asy(ptr noundef nonnull align 8 dereferenceable(16) %i.asn) #23, !noalias !9540, !call_target !113, !inline_history !9587
  br label %_ZSt8_DestroyISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvPT_.exit.i.i.i.i.i

bb.id:                                            ; preds = %bb.ib
  %i.asz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18, !noalias !9540
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.asz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.ata = add nsw i32 %i.asr, -1
  store i32 %i.ata, ptr %i.aso, align 8, !tbaa !7, !noalias !9540
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.if:                                            ; preds = %bb.id
  %i.atb = atomicrmw volatile add ptr %i.aso, i32 -1 acq_rel, align 4, !noalias !9540
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.if, %bb.ie
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.asr, %bb.ie ], [ %i.atb, %bb.if ]
  %i.atc = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.atc, label %bb.ig, label %_ZSt8_DestroyISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvPT_.exit.i.i.i.i.i, !prof !14

bb.ig:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.asn) #23, !noalias !9540, !inline_history !9566
  br label %_ZSt8_DestroyISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.ig, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ic, %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteIS3_EED2Ev.exit.i.i.i.i.i.i.i.i
  %i.atd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i89.i = icmp eq ptr %i.atd, %i.aqq
  br i1 %.not.i.i.i.i89.i, label %_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.loopexit.i.i, label %.lr.ph.i.i.i.i.i726, !llvm.loop !9588

_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.loopexit.i.i: ; preds = %_ZSt8_DestroyISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvPT_.exit.i.i.i.i.i
  %i.ate = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 48
  br label %_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.i.i

_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.loopexit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESH_SaISG_EET0_T_SK_SJ_RT1_.exit42.i.thread.i.i
  %i.atf = phi ptr [ %i.art, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESH_SaISG_EET0_T_SK_SJ_RT1_.exit42.i.thread.i.i ], [ %i.ate, %_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.loopexit.i.i ]
  %.not.i44.i.i.i = icmp eq ptr %.val30.i.i.i, null
  br i1 %.not.i44.i.i.i, label %_ZNSt6vectorISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_EE17_M_realloc_insertIJS7_S8_INSB_15SchemaValidatorESD_ISK_EEEEEvN9__gnu_cxx17__normal_iteratorIPSG_SI_EEDpOT_.exit.i.i, label %bb.ih

bb.ih:                                            ; preds = %_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.i.i
  %i.atg = load ptr, ptr %i.aqb, align 8, !tbaa !9583, !noalias !9540
  %i.ath = ptrtoint ptr %i.atg to i64
  %i.ati = sub i64 %i.ath, %i.arb
  call void @_ZdlPvm(ptr noundef nonnull %.val30.i.i.i, i64 noundef %i.ati) #49, !noalias !9540, !inline_history !9566
  br label %_ZNSt6vectorISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_EE17_M_realloc_insertIJS7_S8_INSB_15SchemaValidatorESD_ISK_EEEEEvN9__gnu_cxx17__normal_iteratorIPSG_SI_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_EE17_M_realloc_insertIJS7_S8_INSB_15SchemaValidatorESD_ISK_EEEEEvN9__gnu_cxx17__normal_iteratorIPSG_SI_EEDpOT_.exit.i.i: ; preds = %bb.ih, %_ZSt8_DestroyIPSt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEEvT_SI_.exit.i.i.i
  store ptr %i.arl, ptr %i.aki, align 8, !tbaa !9584, !noalias !9540
  store ptr %i.atf, ptr %i.aqa, align 8, !tbaa !9582, !noalias !9540
  %i.atj = getelementptr inbounds nuw [24 x i8], ptr %i.arl, i64 %i.arj
  store ptr %i.atj, ptr %i.aqb, align 8, !tbaa !9583, !noalias !9540
  br label %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit108.i

_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit108.i: ; preds = %_ZSt12construct_atISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEEJS7_S8_INSB_15SchemaValidatorESD_ISH_EEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSL_DpOSM_.exit.i.i, %_ZNSt6vectorISt4pairIN5boost11basic_regexIcNS1_12regex_traitsIcNS1_16cpp_regex_traitsIcEEEEEESt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_110IValidatorESt14default_deleteISC_EEESaISG_EE17_M_realloc_insertIJS7_S8_INSB_15SchemaValidatorESD_ISK_EEEEEvN9__gnu_cxx17__normal_iteratorIPSG_SI_EEDpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !9540
  %i.atk = load ptr, ptr %i.apz, align 8, !tbaa !74, !noalias !9540 ; 8 uses
  %.not.i.i.i109.i = icmp eq ptr %i.atk, null
  br i1 %.not.i.i.i109.i, label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i, label %bb.ii

bb.ii:                                            ; preds = %_ZNSt10unique_ptrIN5folly10jsonschema12_GLOBAL__N_115SchemaValidatorESt14default_deleteIS3_EED2Ev.exit108.i
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atk, i64 8 ; 4 uses
  %i.atm = load atomic i64, ptr %i.atl acquire, align 8, !noalias !9540 ; 2 uses
  %i.atn = icmp eq i64 %i.atm, 4294967297
  %i.ato = trunc i64 %i.atm to i32                ; 2 uses
  br i1 %i.atn, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  store i32 0, ptr %i.atl, align 8, !tbaa !77, !noalias !9540
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atk, i64 12
  store i32 0, ptr %i.atp, align 4, !tbaa !79, !noalias !9540
  %i.atq = load ptr, ptr %i.atk, align 8, !tbaa !30, !noalias !9540
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 16
  %i.ats = load ptr, ptr %i.atr, align 8, !noalias !9540
  call void %i.ats(ptr noundef nonnull align 8 dereferenceable(16) %i.atk) #23, !noalias !9540, !call_target !80, !inline_history !9589
  %i.att = load ptr, ptr %i.atk, align 8, !tbaa !30, !noalias !9540
  %i.atu = getelementptr inbounds nuw i8, ptr %i.att, i64 24
  %i.atv = load ptr, ptr %i.atu, align 8, !noalias !9540
  call void %i.atv(ptr noundef nonnull align 8 dereferenceable(16) %i.atk) #23, !noalias !9540, !call_target !113, !inline_history !9589
  br label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i

bb.ik:                                            ; preds = %bb.ii
  %i.atw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18, !noalias !9540
  %.not.i.i.i.i110.i = icmp eq i8 %i.atw, 0
  br i1 %.not.i.i.i.i110.i, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.atx = add nsw i32 %i.ato, -1
  store i32 %i.atx, ptr %i.atl, align 8, !tbaa !7, !noalias !9540
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.im:                                            ; preds = %bb.ik
  %i.aty = atomicrmw volatile add ptr %i.atl, i32 -1 acq_rel, align 4, !noalias !9540
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.im, %bb.il
  %.0.i.i.i.i.i.i = phi i32 [ %i.ato, %bb.il ], [ %i.aty, %bb.im ]
  %i.atz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.atz, label %bb.in, label %_ZN5boost11basic_regexIcNS_12regex_traitsIcNS_16cpp_regex_traitsIcEEEEED2Ev.exit.i, !prof !14

bb.in:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.atk) #23, !noalias !9540, !inline_history !9566
end_hunk_1
