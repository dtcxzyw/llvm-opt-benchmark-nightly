inline.NumInlined: 1485
inline.NumDeleted: 956
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12v8_inspector22V8InspectorSessionImpl10wrapObjectEN2v85LocalINS1_7ContextEEENS2_INS1_5ValueEEERKNS_8String16Eb:bb.a
  %. = select i1 %5, i32 2, i32 1
  store i32 %., ptr %8, align 8
  store i32 2147483647, ptr %i.j, align 8
  store ptr null, ptr %i.k, align 8
  call void @_ZN12v8_inspector14InjectedScript10wrapObjectEN2v85LocalINS1_5ValueEEERKNS_8String16ERKNS_11WrapOptionsEPSt10unique_ptrINS_8protocol7Runtime12RemoteObjectESt14default_deleteISE_EE(ptr dead_on_unwind nonnull writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %7, ptr noundef nonnull align 8 dereferenceable(272) %i.i, ptr %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %0) #17
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZN8v8_crdtp16DispatchResponseD2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6: ; preds = %bb.b
  %i.p = load i64, ptr %i.n, align 8
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #19
  br label %_ZN8v8_crdtp16DispatchResponseD2Ev.exit8

_ZN8v8_crdtp16DispatchResponseD2Ev.exit8:         ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN12v8_inspector11WrapOptionsD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8v8_crdtp16DispatchResponseD2Ev.exit8
  call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.s) #17
  br label %_ZN12v8_inspector11WrapOptionsD2Ev.exit

_ZN12v8_inspector11WrapOptionsD2Ev.exit:          ; preds = %_ZN8v8_crdtp16DispatchResponseD2Ev.exit8, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.d

bb.d:                                             ; preds = %_ZN8v8_crdtp16DispatchResponseD2Ev.exit, %_ZN12v8_inspector11WrapOptionsD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare void @_ZN12v8_inspector14InjectedScript10wrapObjectEN2v85LocalINS1_5ValueEEERKNS_8String16ERKNS_11WrapOptionsEPSt10unique_ptrINS_8protocol7Runtime12RemoteObjectESt14default_deleteISE_EE(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8, ptr noundef nonnull align 8 dereferenceable(272), ptr, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector22V8InspectorSessionImpl9wrapTableEN2v85LocalINS1_7ContextEEENS2_INS1_6ObjectEEENS1_10MaybeLocalINS1_5ArrayEEE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.414") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.v8_crdtp::DispatchResponse", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call noundef i32 @_ZN12v8_inspector16InspectedContext9contextIdEN2v85LocalINS1_7ContextEEE(ptr %2) #17
  call void @_ZN12v8_inspector22V8InspectorSessionImpl18findInjectedScriptEiRPNS_14InjectedScriptE(ptr dead_on_unwind nonnull writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %5, ptr noundef nonnull align 8 dereferenceable(216) %1, i32 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN8v8_crdtp16DispatchResponseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #19
  br label %_ZN8v8_crdtp16DispatchResponseD2Ev.exit

_ZN8v8_crdtp16DispatchResponseD2Ev.exit:          ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN8v8_crdtp16DispatchResponseD2Ev.exit
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %_ZN8v8_crdtp16DispatchResponseD2Ev.exit
  call void @_ZN12v8_inspector14InjectedScript9wrapTableEN2v85LocalINS1_6ObjectEEENS1_10MaybeLocalINS1_5ArrayEEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.414") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %i.i, ptr %3, ptr %4) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare void @_ZN12v8_inspector14InjectedScript9wrapTableEN2v85LocalINS1_6ObjectEEENS1_10MaybeLocalINS1_5ArrayEEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.414") align 8, ptr noundef nonnull align 8 dereferenceable(272), ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector22V8InspectorSessionImpl31setCustomObjectFormatterEnabledEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(216) initializes((40, 41)) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %i.c = zext i1 %1 to i8                         ; 2 uses
  store i8 %i.c, ptr %i.a, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.c, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4
  store i32 %i.f, ptr %i.b, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i32, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.a, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr @"_ZNSt17_Function_handlerIFvPN12v8_inspector16InspectedContextEEZNS0_22V8InspectorSessionImpl31setCustomObjectFormatterEnabledEbE3$_0E9_M_invokeERKSt9_Any_dataOS2_", ptr %i.l, align 8
  store ptr @"_ZNSt17_Function_handlerIFvPN12v8_inspector16InspectedContextEEZNS0_22V8InspectorSessionImpl31setCustomObjectFormatterEnabledEbE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.k, align 8
  call void @_ZN12v8_inspector15V8InspectorImpl14forEachContextEiRKSt8functionIFvPNS_16InspectedContextEEE(ptr noundef nonnull align 8 dereferenceable(520) %i.h, i32 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %i.m = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #17, !inline_history !61 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector22V8InspectorSessionImpl17reportAllContextsEPNS_18V8RuntimeAgentImplE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(216) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.i, align 8
  store i64 %i.f, ptr %2, align 8
  store ptr @"_ZNSt17_Function_handlerIFvPN12v8_inspector16InspectedContextEEZNS0_22V8InspectorSessionImpl17reportAllContextsEPNS0_18V8RuntimeAgentImplEE3$_0E9_M_invokeERKSt9_Any_dataOS2_", ptr %i.h, align 8
  store ptr @"_ZNSt17_Function_handlerIFvPN12v8_inspector16InspectedContextEEZNS0_22V8InspectorSessionImpl17reportAllContextsEPNS0_18V8RuntimeAgentImplEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.g, align 8
  call void @_ZN12v8_inspector15V8InspectorImpl14forEachContextEiRKSt8functionIFvPNS_16InspectedContextEEE(ptr noundef nonnull align 8 dereferenceable(520) %i.c, i32 noundef %i.e, ptr noundef nonnull align 8 dereferenceable(32) %2) #17
  %i.j = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #17, !inline_history !61 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN12v8_inspector22V8InspectorSessionImpl23dispatchProtocolMessageENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr nofree noundef readonly byval(%"class.v8_inspector::StringView") align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.324", align 8   ; 9 uses
  %3 = alloca %"class.v8_inspector::String16", align 8 ; 6 uses
  %4 = alloca %"struct.v8_crdtp::Status", align 8 ; 7 uses
  %5 = alloca %"class.std::unique_ptr.308", align 8 ; 3 uses
  %6 = alloca %"class.std::unique_ptr.316", align 8 ; 3 uses
  %7 = alloca %"class.v8_crdtp::DispatchResponse", align 8 ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string.303", align 8 ; 4 uses
  %9 = alloca %"class.v8_crdtp::Dispatchable", align 8 ; 9 uses
  %10 = alloca %"class.std::unique_ptr.308", align 8 ; 3 uses
  %11 = alloca %"class.std::unique_ptr.316", align 8 ; 3 uses
  %12 = alloca %"class.v8_crdtp::DispatchResponse", align 8 ; 4 uses
  %13 = alloca %"class.std::unique_ptr.308", align 8 ; 3 uses
  %14 = alloca %"class.std::unique_ptr.316", align 8 ; 3 uses
  %15 = alloca %"class.v8_crdtp::DispatchResponse", align 8 ; 4 uses
  %16 = alloca %"class.v8_crdtp::UberDispatcher::DispatchResult", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.b = load ptr, ptr %i.a, align 8, !noalias !81 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN12v8_inspector22V8InspectorSessionImpl21KeepSessionAliveScopeC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 8, !noalias !81
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i.i = phi i32 [ %i.d, %bb.b ], [ %i.h, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i, label %_ZN12v8_inspector22V8InspectorSessionImpl21KeepSessionAliveScopeC2ERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.f = cmpxchg weak ptr %i.c, i32 %.06.i.i.i.i.i.i, i32 %i.e acq_rel monotonic, align 8, !noalias !81 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1
  %i.h = extractvalue { i32, i1 } %i.f, 0
  br i1 %i.g, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.c, !llvm.loop !84

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.d
  %i.i = load atomic i32, ptr %i.c monotonic, align 8, !noalias !81 ; 0 uses
  br label %_ZN12v8_inspector22V8InspectorSessionImpl21KeepSessionAliveScopeC2ERKS0_.exit

_ZN12v8_inspector22V8InspectorSessionImpl21KeepSessionAliveScopeC2ERKS0_.exit: ; preds = %bb.c, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, %bb.a
  %.sroa.330.1 = phi ptr [ null, %bb.a ], [ %i.b, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ], [ null, %bb.c ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %.sroa.025.0.copyload = load i8, ptr %1, align 8
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.227.0.copyload = load i64, ptr %.sroa.227.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 6 uses
  %i.j = trunc nuw i8 %.sroa.025.0.copyload to i1 ; 2 uses
  %i.k = icmp ugt i64 %.sroa.227.0.copyload, 2
  %or.cond.not.i = select i1 %i.j, i1 %i.k, i1 false
  br i1 %or.cond.not.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN12v8_inspector22V8InspectorSessionImpl21KeepSessionAliveScopeC2ERKS0_.exit
  %i.l = load i8, ptr %.sroa.3.0.copyload, align 1
  %i.m = icmp eq i8 %i.l, -40
  br i1 %i.m, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 1
  %i.o = load i8, ptr %i.n, align 1
  switch i8 %i.o, label %.sink.split [
    i8 90, label %_ZN12v8_inspector12_GLOBAL__N_113IsCBORMessageENS_10StringViewE.exit.thread39
    i8 24, label %_ZN12v8_inspector12_GLOBAL__N_113IsCBORMessageENS_10StringViewE.exit
  ]

_ZN12v8_inspector12_GLOBAL__N_113IsCBORMessageENS_10StringViewE.exit: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 2
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.q, 90
  br i1 %i.r, label %_ZN12v8_inspector12_GLOBAL__N_113IsCBORMessageENS_10StringViewE.exit.thread39, label %.sink.split

_ZN12v8_inspector12_GLOBAL__N_113IsCBORMessageENS_10StringViewE.exit.thread39: ; preds = %bb.f, %_ZN12v8_inspector12_GLOBAL__N_113IsCBORMessageENS_10StringViewE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load ptr, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN12v8_inspector8String16C1EPKc(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @.str) #17
  call void @_ZN12v8_inspector8protocol15DictionaryValue10setBooleanERKNS_8String16Eb(ptr noundef nonnull align 8 dereferenceable(96) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %3, i1 noundef zeroext true) #17
  %i.v = load ptr, ptr %3, align 8                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN12v8_inspector8String16D2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN12v8_inspector12_GLOBAL__N_113IsCBORMessageENS_10StringViewE.exit.thread39
  %i.y = load i64, ptr %i.w, align 8
  %i.z = shl i64 %i.y, 1
  %i.aa = add i64 %i.z, 2
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.aa) #19
  br label %_ZN12v8_inspector8String16D2Ev.exit

_ZN12v8_inspector8String16D2Ev.exit:              ; preds = %_ZN12v8_inspector12_GLOBAL__N_113IsCBORMessageENS_10StringViewE.exit.thread39, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.k

bb.g:                                             ; preds = %_ZN12v8_inspector22V8InspectorSessionImpl21KeepSessionAliveScopeC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  br i1 %i.j, label %bb.h, label %bb.i

.sink.split:                                      ; preds = %bb.f, %bb.e, %_ZN12v8_inspector12_GLOBAL__N_113IsCBORMessageENS_10StringViewE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  %i.ab = call { i32, i64 } @_ZN8v8_crdtp4json17ConvertJSONToCBORESt4spanIKhLm18446744073709551615EEPSt6vectorIhSaIhEE(ptr %.sroa.3.0.copyload, i64 %.sroa.227.0.copyload, ptr noundef nonnull %2) #17
  br label %_ZN12v8_inspector12_GLOBAL__N_113ConvertToCBORENS_10StringViewEPSt6vectorIhSaIhEE.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = call { i32, i64 } @_ZN8v8_crdtp4json17ConvertJSONToCBORESt4spanIKtLm18446744073709551615EEPSt6vectorIhSaIhEE(ptr %.sroa.3.0.copyload, i64 %.sroa.227.0.copyload, ptr noundef nonnull %2) #17
  br label %_ZN12v8_inspector12_GLOBAL__N_113ConvertToCBORENS_10StringViewEPSt6vectorIhSaIhEE.exit

_ZN12v8_inspector12_GLOBAL__N_113ConvertToCBORENS_10StringViewEPSt6vectorIhSaIhEE.exit: ; preds = %bb.h, %bb.i
  %.pn.i = phi { i32, i64 } [ %i.ab, %bb.h ], [ %i.ac, %bb.i ] ; 2 uses
  %i.ad = extractvalue { i32, i64 } %.pn.i, 0     ; 2 uses
  store i32 %i.ad, ptr %4, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = extractvalue { i32, i64 } %.pn.i, 1
  store i64 %i.af, ptr %i.ae, align 8
  %i.ag = icmp eq i32 %i.ad, 0
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN12v8_inspector12_GLOBAL__N_113ConvertToCBORENS_10StringViewEPSt6vectorIhSaIhEE.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  call void @_ZNK8v8_crdtp6Status13ToASCIIStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.303") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %4) #17
  call void @_ZN8v8_crdtp16DispatchResponse10ParseErrorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %7, ptr noundef nonnull %8) #17
  call void @_ZN8v8_crdtp23CreateErrorNotificationENS_16DispatchResponseE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.316") align 8 %6, ptr noundef nonnull %7) #17
  call void @_ZN12v8_inspector22V8InspectorSessionImpl20serializeForFrontendESt10unique_ptrIN8v8_crdtp12SerializableESt14default_deleteIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.308") align 8 %5, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull %6)
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull %5) #17
  %i.am = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN12v8_inspector12StringBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN12v8_inspector12StringBufferEEclEPS1_.exit.i: ; preds = %bb.j
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #17, !inline_history !66
  br label %_ZNSt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.j, %_ZNKSt14default_deleteIN12v8_inspector12StringBufferEEclEPS1_.exit.i
  %i.aq = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i2 = icmp eq ptr %i.aq, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIN8v8_crdtp12SerializableESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN8v8_crdtp12SerializableEEclEPS1_.exit.i

_ZNKSt14default_deleteIN8v8_crdtp12SerializableEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS1_EED2Ev.exit
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #17, !inline_history !67
  br label %_ZNSt10unique_ptrIN8v8_crdtp12SerializableESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN8v8_crdtp12SerializableESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN8v8_crdtp12SerializableEEclEPS1_.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN8v8_crdtp16DispatchResponseD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN8v8_crdtp12SerializableESt14default_deleteIS1_EED2Ev.exit
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #19
  br label %_ZN8v8_crdtp16DispatchResponseD2Ev.exit

_ZN8v8_crdtp16DispatchResponseD2Ev.exit:          ; preds = %_ZNSt10unique_ptrIN8v8_crdtp12SerializableESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ba = load ptr, ptr %8, align 8               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN8v8_crdtp16DispatchResponseD2Ev.exit
  %i.bd = load i64, ptr %i.bb, align 8
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZN8v8_crdtp16DispatchResponseD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12v8_inspector12_GLOBAL__N_113ConvertToCBORENS_10StringViewEPSt6vectorIhSaIhEE.exit
  %i.bf = load ptr, ptr %2, align 8               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN12v8_inspector8String16D2Ev.exit
  %.sroa.6.1 = phi i64 [ %.sroa.227.0.copyload, %_ZN12v8_inspector8String16D2Ev.exit ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.sroa.028.1 = phi ptr [ %.sroa.3.0.copyload, %_ZN12v8_inspector8String16D2Ev.exit ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @_ZN8v8_crdtp12DispatchableC1ESt4spanIKhLm18446744073709551615EE(ptr noundef nonnull align 8 dereferenceable(96) %9, ptr %.sroa.028.1, i64 %.sroa.6.1) #17
  %i.bl = call noundef zeroext i1 @_ZNK8v8_crdtp12Dispatchable2okEv(ptr noundef nonnull align 8 dereferenceable(96) %9) #17
  br i1 %i.bl, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.bn = load i8, ptr %i.bm, align 8, !range !63, !noundef !64
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8            ; 4 uses
  br i1 %i.bo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNK8v8_crdtp12Dispatchable13DispatchErrorEv(ptr dead_on_unwind nonnull writable sret(%"class.v8_crdtp::DispatchResponse") align 8 %12, ptr noundef nonnull align 8 dereferenceable(96) %9) #17
  call void @_ZN8v8_crdtp23CreateErrorNotificationENS_16DispatchResponseE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.316") align 8 %11, ptr noundef nonnull %12) #17
  call void @_ZN12v8_inspector22V8InspectorSessionImpl20serializeForFrontendESt10unique_ptrIN8v8_crdtp12SerializableESt14default_deleteIS3_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.308") align 8 %10, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull %11)
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull %10) #17
  %i.bu = load ptr, ptr %10, align 8              ; 3 uses
  %.not.i3 = icmp eq ptr %i.bu, null
  br i1 %.not.i3, label %_ZNSt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS1_EED2Ev.exit5, label %_ZNKSt14default_deleteIN12v8_inspector12StringBufferEEclEPS1_.exit.i4

_ZNKSt14default_deleteIN12v8_inspector12StringBufferEEclEPS1_.exit.i4: ; preds = %bb.m
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bu) #17, !inline_history !66
  br label %_ZNSt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS1_EED2Ev.exit5

_ZNSt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS1_EED2Ev.exit5: ; preds = %bb.m, %_ZNKSt14default_deleteIN12v8_inspector12StringBufferEEclEPS1_.exit.i4
  %i.by = load ptr, ptr %11, align 8              ; 3 uses
  %.not.i6 = icmp eq ptr %i.by, null
  br i1 %.not.i6, label %_ZNSt10unique_ptrIN8v8_crdtp12SerializableESt14default_deleteIS1_EED2Ev.exit8, label %_ZNKSt14default_deleteIN8v8_crdtp12SerializableEEclEPS1_.exit.i7

_ZNKSt14default_deleteIN8v8_crdtp12SerializableEEclEPS1_.exit.i7: ; preds = %_ZNSt10unique_ptrIN12v8_inspector12StringBufferESt14default_deleteIS1_EED2Ev.exit5
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.by) #17, !inline_history !67
  br label %_ZNSt10unique_ptrIN8v8_crdtp12SerializableESt14default_deleteIS1_EED2Ev.exit8
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10unique_ptrIN12v8_inspector18V8InspectorSession11InspectableESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_:bb.a

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector18V8InspectorSession11InspectableESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #19
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector18V8InspectorSession11InspectableESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN12v8_inspector18V8InspectorSession11InspectableESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN12v8_inspector18V8InspectorSession11InspectableESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.q, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i21, ptr %i.b, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bl, ptr %i.bh, align 8
  ret void
}

declare void @_ZN2v824EscapableHandleScopeBaseC2EPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

declare void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvPN12v8_inspector16InspectedContextEEZNS0_22V8InspectorSessionImpl22discardInjectedScriptsEvE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %.val2 = load ptr, ptr %1, align 8
  %.val.val = load i32, ptr %.val, align 4
  tail call void @_ZN12v8_inspector16InspectedContext21discardInjectedScriptEi(ptr noundef nonnull align 8 dereferenceable(288) %.val2, i32 noundef %.val.val) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPN12v8_inspector16InspectedContextEEZNS0_22V8InspectorSessionImpl22discardInjectedScriptsEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl22discardInjectedScriptsEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl22discardInjectedScriptsEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl22discardInjectedScriptsEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl22discardInjectedScriptsEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl22discardInjectedScriptsEvE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN12v8_inspector16InspectedContext21discardInjectedScriptEi(ptr noundef nonnull align 8 dereferenceable(288), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvPN12v8_inspector16InspectedContextEEZNS0_22V8InspectorSessionImpl18releaseObjectGroupERKNS0_8String16EE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !64, !align !199
  %i.c = load i32, ptr %i.b, align 4
  %i.d = tail call noundef ptr @_ZN12v8_inspector16InspectedContext17getInjectedScriptEi(ptr noundef nonnull align 8 dereferenceable(288) %.val, i32 noundef %i.c) #17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIvRZN12v8_inspector22V8InspectorSessionImpl18releaseObjectGroupERKNS0_8String16EE3$_0JPNS0_16InspectedContextEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !64, !align !200
  tail call void @_ZN12v8_inspector14InjectedScript18releaseObjectGroupERKNS_8String16E(ptr noundef nonnull align 8 dereferenceable(272) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.e) #17
  br label %"_ZSt10__invoke_rIvRZN12v8_inspector22V8InspectorSessionImpl18releaseObjectGroupERKNS0_8String16EE3$_0JPNS0_16InspectedContextEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit"

"_ZSt10__invoke_rIvRZN12v8_inspector22V8InspectorSessionImpl18releaseObjectGroupERKNS0_8String16EE3$_0JPNS0_16InspectedContextEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESA_E4typeEOSB_DpOSC_.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPN12v8_inspector16InspectedContextEEZNS0_22V8InspectorSessionImpl18releaseObjectGroupERKNS0_8String16EE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl18releaseObjectGroupERKNS1_8String16EE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl18releaseObjectGroupERKNS1_8String16EE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl18releaseObjectGroupERKNS1_8String16EE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl18releaseObjectGroupERKNS1_8String16EE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl18releaseObjectGroupERKNS1_8String16EE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN12v8_inspector14InjectedScript18releaseObjectGroupERKNS_8String16E(ptr noundef nonnull align 8 dereferenceable(272), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvPN12v8_inspector16InspectedContextEEZNS0_22V8InspectorSessionImpl31setCustomObjectFormatterEnabledEbE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %1, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !64, !align !199
  %i.c = load i32, ptr %i.b, align 4
  %i.d = tail call noundef ptr @_ZN12v8_inspector16InspectedContext17getInjectedScriptEi(ptr noundef nonnull align 8 dereferenceable(288) %.val, i32 noundef %i.c) #17 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %"_ZSt10__invoke_rIvRZN12v8_inspector22V8InspectorSessionImpl31setCustomObjectFormatterEnabledEbE3$_0JPNS0_16InspectedContextEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !64
  %i.f = load i8, ptr %i.e, align 1, !range !63, !noundef !64
  %i.g = trunc nuw i8 %i.f to i1
  tail call void @_ZN12v8_inspector14InjectedScript31setCustomObjectFormatterEnabledEb(ptr noundef nonnull align 8 dereferenceable(272) %i.d, i1 noundef zeroext %i.g) #17
  br label %"_ZSt10__invoke_rIvRZN12v8_inspector22V8InspectorSessionImpl31setCustomObjectFormatterEnabledEbE3$_0JPNS0_16InspectedContextEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit"

"_ZSt10__invoke_rIvRZN12v8_inspector22V8InspectorSessionImpl31setCustomObjectFormatterEnabledEbE3$_0JPNS0_16InspectedContextEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES7_E4typeEOS8_DpOS9_.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPN12v8_inspector16InspectedContextEEZNS0_22V8InspectorSessionImpl31setCustomObjectFormatterEnabledEbE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl31setCustomObjectFormatterEnabledEbE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl31setCustomObjectFormatterEnabledEbE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl31setCustomObjectFormatterEnabledEbE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl31setCustomObjectFormatterEnabledEbE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl31setCustomObjectFormatterEnabledEbE3$_0E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFvPN12v8_inspector16InspectedContextEEZNS0_22V8InspectorSessionImpl17reportAllContextsEPNS0_18V8RuntimeAgentImplEE3$_0E9_M_invokeERKSt9_Any_dataOS2_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %.val2 = load ptr, ptr %1, align 8
  %.val.val = load ptr, ptr %.val, align 8
  tail call void @_ZN12v8_inspector18V8RuntimeAgentImpl29reportExecutionContextCreatedEPNS_16InspectedContextE(ptr noundef nonnull align 8 dereferenceable(176) %.val.val, ptr noundef %.val2) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvPN12v8_inspector16InspectedContextEEZNS0_22V8InspectorSessionImpl17reportAllContextsEPNS0_18V8RuntimeAgentImplEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl17reportAllContextsEPNS1_18V8RuntimeAgentImplEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl17reportAllContextsEPNS1_18V8RuntimeAgentImplEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl17reportAllContextsEPNS1_18V8RuntimeAgentImplEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl17reportAllContextsEPNS1_18V8RuntimeAgentImplEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN12v8_inspector22V8InspectorSessionImpl17reportAllContextsEPNS1_18V8RuntimeAgentImplEE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZN12v8_inspector18V8RuntimeAgentImpl29reportExecutionContextCreatedEPNS_16InspectedContextE(ptr noundef nonnull align 8 dereferenceable(176), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 9 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8
  %i.g = select i1 %i.e, i64 7, i64 %i.f          ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit
  %i.i = icmp ugt i64 %i.b, 4611686018427387903
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i64 %i.g, 1                  ; 2 uses
  %i.k = icmp samesign ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 4611686018427387903)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 3 uses
  %i.l = icmp samesign ugt i64 %.0, 4611686018427387902
  br i1 %i.l, label %bb.e, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit, !prof !6

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit: ; preds = %bb.d
  %i.m = shl nuw nsw i64 %.0, 1
  %i.n = add nuw nsw i64 %i.m, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #18 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit
  %2 = load i64, ptr %i.d, align 8
  %i.p = shl i64 %2, 1
  %i.q = add i64 %i.p, 2
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.q) #19
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i
  store ptr %i.o, ptr %0, align 8
  store i64 %.0, ptr %i.d, align 8
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8
  store i16 0, ptr %i.c, align 2
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.s = phi ptr [ %i.o, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.t = load ptr, ptr %1, align 8                ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.u = load i16, ptr %i.t, align 2
  store i16 %i.u, ptr %i.s, align 2
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit

bb.h:                                             ; preds = %.split12
  %i.v = shl i64 %i.b, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.s, ptr align 2 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit: ; preds = %bb.g, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.w, align 8
  %i.x = load ptr, ptr %0, align 8
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.b
  store i16 0, ptr %i.y, align 2
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE7_S_copyEPDsPKDsm.exit, %.split, %bb.a
  ret void
}

declare noundef ptr @_ZN2v824EscapableHandleScopeBase10EscapeSlotEPm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { builtin nounwind allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{null, null, null}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN12v8_inspector12_GLOBAL__N_110ParseStateENS_10StringViewE: argument 0"}
!9 = distinct !{!9, !"_ZN12v8_inspector12_GLOBAL__N_110ParseStateENS_10StringViewE"}
!10 = !{!11}
!11 = distinct !{!11, !12, !"_ZN12v8_inspector8protocol15DictionaryValue4castESt10unique_ptrINS0_5ValueESt14default_deleteIS3_EE: argument 0"}
!12 = distinct !{!12, !"_ZN12v8_inspector8protocol15DictionaryValue4castESt10unique_ptrINS0_5ValueESt14default_deleteIS3_EE"}
!13 = !{!11, !8}
!14 = distinct !{null, null, null}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN12v8_inspector8protocol15DictionaryValue6createEv: argument 0"}
!17 = distinct !{!17, !"_ZN12v8_inspector8protocol15DictionaryValue6createEv"}
!18 = !{!16, !8}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZN12v8_inspector8protocol15DictionaryValue6createEv: argument 0"}
!21 = distinct !{!21, !"_ZN12v8_inspector8protocol15DictionaryValue6createEv"}
!22 = distinct !{ptr @_ZN12v8_inspector22V8InspectorSessionImpl10agentStateERKNS_8String16E, null, null}
!23 = distinct !{null, null, null}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZN12v8_inspector8protocol15DictionaryValue6createEv: argument 0"}
!26 = distinct !{!26, !"_ZN12v8_inspector8protocol15DictionaryValue6createEv"}
!27 = distinct !{null, null, null}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN12v8_inspector8protocol15DictionaryValue6createEv: argument 0"}
!30 = distinct !{!30, !"_ZN12v8_inspector8protocol15DictionaryValue6createEv"}
!31 = distinct !{null, null, null}
!32 = !{!33}
!33 = distinct !{!33, !34, !"_ZN12v8_inspector8protocol15DictionaryValue6createEv: argument 0"}
!34 = distinct !{!34, !"_ZN12v8_inspector8protocol15DictionaryValue6createEv"}
!35 = distinct !{null, null, null}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZN12v8_inspector8protocol15DictionaryValue6createEv: argument 0"}
!38 = distinct !{!38, !"_ZN12v8_inspector8protocol15DictionaryValue6createEv"}
!39 = distinct !{null, null, null}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN12v8_inspector8protocol15DictionaryValue6createEv: argument 0"}
!42 = distinct !{!42, !"_ZN12v8_inspector8protocol15DictionaryValue6createEv"}
!43 = distinct !{null, null, null}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZN12v8_inspector8protocol15DictionaryValue6createEv: argument 0"}
!46 = distinct !{!46, !"_ZN12v8_inspector8protocol15DictionaryValue6createEv"}
!47 = distinct !{null, null}
!48 = distinct !{ptr @_ZN12v8_inspector22V8InspectorSessionImpl22discardInjectedScriptsEv, null, null, null, null, null, null, null, null}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{ptr @_ZN12v8_inspector22V8InspectorSessionImpl22discardInjectedScriptsEv, null}
!52 = distinct !{null, null, null}
!53 = distinct !{null, null, null, null, null, null, null}
!54 = distinct !{null, null}
!55 = distinct !{null, null}
!56 = distinct !{null, null}
!57 = distinct !{null, null}
!58 = distinct !{null, null}
!59 = distinct !{null, null}
!60 = distinct !{null, null, null, null, null, null, null, null}
!61 = distinct !{null}
!62 = !{ptr @_ZN12v8_inspector22V8InspectorSessionImplD0Ev}
!63 = !{i8 0, i8 2}
!64 = !{}
!65 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!66 = distinct !{null, null}
!67 = distinct !{null, null}
!68 = !{ptr @_ZN12v8_inspector22V8InspectorSessionImpl20SendProtocolResponseEiSt10unique_ptrIN8v8_crdtp12SerializableESt14default_deleteIS3_EE}
!69 = distinct !{ptr @_ZN12v8_inspector22V8InspectorSessionImpl20SendProtocolResponseEiSt10unique_ptrIN8v8_crdtp12SerializableESt14default_deleteIS3_EE, null, null}
!70 = distinct !{ptr @_ZN12v8_inspector22V8InspectorSessionImpl20SendProtocolResponseEiSt10unique_ptrIN8v8_crdtp12SerializableESt14default_deleteIS3_EE, null, null}
!71 = !{ptr @_ZN12v8_inspector22V8InspectorSessionImpl24SendProtocolNotificationESt10unique_ptrIN8v8_crdtp12SerializableESt14default_deleteIS3_EE}
!72 = distinct !{ptr @_ZN12v8_inspector22V8InspectorSessionImpl24SendProtocolNotificationESt10unique_ptrIN8v8_crdtp12SerializableESt14default_deleteIS3_EE, null, null}
!73 = distinct !{ptr @_ZN12v8_inspector22V8InspectorSessionImpl24SendProtocolNotificationESt10unique_ptrIN8v8_crdtp12SerializableESt14default_deleteIS3_EE, null, null}
!74 = !{ptr @_ZN12v8_inspector22V8InspectorSessionImpl26FlushProtocolNotificationsEv}
!75 = distinct !{ptr @_ZN12v8_inspector22V8InspectorSessionImpl18releaseObjectGroupERKNS_8String16E, null}
!76 = distinct !{null, null, null, null, null}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN12v8_inspector22V8InspectorSessionImpl18findInjectedScriptEPNS_18RemoteObjectIdBaseERPNS_14InjectedScriptE: argument 0"}
!79 = distinct !{!79, !"_ZN12v8_inspector22V8InspectorSessionImpl18findInjectedScriptEPNS_18RemoteObjectIdBaseERPNS_14InjectedScriptE"}
!80 = !{ptr @_ZN12v8_inspector22V8InspectorSessionImpl18findInjectedScriptEPNS_18RemoteObjectIdBaseERPNS_14InjectedScriptE}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZNKSt8weak_ptrIN12v8_inspector22V8InspectorSessionImplEE4lockEv: argument 0"}
!83 = distinct !{!83, !"_ZNKSt8weak_ptrIN12v8_inspector22V8InspectorSessionImplEE4lockEv"}
!84 = distinct !{!84, !50}
!85 = distinct !{null, null}
!86 = distinct !{null, null, null, null}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZSt19__relocate_object_aISt10unique_ptrIN12v8_inspector8protocol6Schema3API6DomainESt14default_deleteIS5_EES8_SaIS8_EEvPT_PT0_RT1_: argument 0"}
!89 = distinct !{!89, !"_ZSt19__relocate_object_aISt10unique_ptrIN12v8_inspector8protocol6Schema3API6DomainESt14default_deleteIS5_EES8_SaIS8_EEvPT_PT0_RT1_"}
!90 = !{!91}
!91 = distinct !{!91, !89, !"_ZSt19__relocate_object_aISt10unique_ptrIN12v8_inspector8protocol6Schema3API6DomainESt14default_deleteIS5_EES8_SaIS8_EEvPT_PT0_RT1_: argument 1"}
!92 = !{!91, !93}
!93 = distinct !{!93, !94}
!94 = distinct !{!94, !"LVerDomain"}
!95 = !{!88, !96}
!96 = distinct !{!96, !94}
!97 = distinct !{!97, !50, !98, !99}
!98 = !{!"llvm.loop.isvectorized", i32 1}
!99 = !{!"llvm.loop.unroll.runtime.disable"}
!100 = distinct !{!100, !50, !98}
!101 = distinct !{!101, !50}
!102 = distinct !{null, null, null, null, null, null, null}
!103 = distinct !{!103, !50}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZN12v8_inspector8protocol6Schema6Domain6createEv: argument 0"}
!106 = distinct !{!106, !"_ZN12v8_inspector8protocol6Schema6Domain6createEv"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZN12v8_inspector8protocol6Schema6Domain6createEv: argument 0"}
!109 = distinct !{!109, !"_ZN12v8_inspector8protocol6Schema6Domain6createEv"}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZSt19__relocate_object_aISt10unique_ptrIN12v8_inspector8protocol6Schema6DomainESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_: argument 0"}
!112 = distinct !{!112, !"_ZSt19__relocate_object_aISt10unique_ptrIN12v8_inspector8protocol6Schema6DomainESt14default_deleteIS4_EES7_SaIS7_EEvPT_PT0_RT1_"}
!113 = !{!114}
end_hunk_1
