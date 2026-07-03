inline.NumInlined: 368
inline.NumDeleted: 260
begin_hunk_0_@_ZN12v8_inspector12_GLOBAL__N_112bodyCallbackERKN2v820FunctionCallbackInfoINS1_5ValueEEE:bb.a
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load i64, ptr %i.de, align 8
  store i64 %i.em, ptr %i.el, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit, %.critedge, %_ZN12v8_inspector8String16D2Ev.exit88, %_ZN2v811ReturnValueINS_5ValueEE3SetIS1_EEvNS_5LocalIT_EE.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.f, %_ZN12v8_inspector8String16D2Ev.exit64, %bb.n, %bb.t, %_ZN12v8_inspector8String16D2Ev.exit85, %bb.ac, %_ZN12v8_inspector8String16D2Ev.exit79, %bb.p, %_ZN12v8_inspector8String16D2Ev.exit70, %bb.j, %_ZN12v8_inspector8String16D2Ev.exit58, %bb.b
  call void @_ZN2v88TryCatchD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  ret void
}

declare void @_ZN12v8_inspector16toProtocolStringEPN2v87IsolateENS0_5LocalINS0_6StringEEE(ptr dead_on_unwind writable sret(%"class.v8_inspector::String16") align 8, ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN12v8_inspector12_GLOBAL__N_117getInjectedScriptEN2v85LocalINS1_7ContextEEEi(ptr %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #9
  %i.b = tail call noundef ptr @_ZN2v85debug12GetInspectorEPNS_7IsolateE(ptr noundef %i.a) #9
  %i.c = tail call noundef i32 @_ZN12v8_inspector16InspectedContext9contextIdEN2v85LocalINS1_7ContextEEE(ptr %0) #9
  %i.d = tail call noundef ptr @_ZNK12v8_inspector15V8InspectorImpl10getContextEi(ptr noundef nonnull align 8 dereferenceable(520) %i.b, i32 noundef %i.c) #9 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN12v8_inspector16InspectedContext17getInjectedScriptEi(ptr noundef nonnull align 8 dereferenceable(288) %i.d, i32 noundef %1) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @_ZN12v8_inspector14InjectedScript10bindObjectEN2v85LocalINS1_5ValueEEERKNS_8String16E(ptr dead_on_unwind writable sret(%"class.v8_inspector::String16") align 8, ptr noundef nonnull align 8 dereferenceable(272), ptr, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v88TryCatchD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2v815MicrotasksScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17)) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN2v87Isolate10GetCurrentEv() local_unnamed_addr #2

declare noundef ptr @_ZN2v85debug12GetInspectorEPNS_7IsolateE(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN12v8_inspector16InspectedContext9contextIdEN2v85LocalINS1_7ContextEEE(ptr) local_unnamed_addr #2

declare noundef i32 @_ZNK12v8_inspector15V8InspectorImpl14contextGroupIdEi(ptr noundef nonnull align 8 dereferenceable(520), i32 noundef) local_unnamed_addr #2

declare ptr @_ZNK2v88TryCatch7MessageEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #2

declare ptr @_ZNK2v87Message3GetEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare ptr @_ZN2v86String6ConcatEPNS_7IsolateENS_5LocalIS0_EES4_(ptr noundef, ptr, ptr) local_unnamed_addr #2

declare noundef ptr @_ZN12v8_inspector15V8InspectorImpl27ensureConsoleMessageStorageEi(ptr noundef nonnull align 8 dereferenceable(520), i32 noundef) local_unnamed_addr #2

declare void @_ZN12v8_inspector23V8ConsoleMessageStorage10addMessageESt10unique_ptrINS_16V8ConsoleMessageESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef) local_unnamed_addr #2

declare void @_ZN12v8_inspector16V8ConsoleMessage19createForConsoleAPIEN2v85LocalINS1_7ContextEEEiiPNS_15V8InspectorImplEdNS_14ConsoleAPITypeENS1_10MemorySpanIKNS2_INS1_5ValueEEEEERKNS_8String16ESt10unique_ptrINS_16V8StackTraceImplESt14default_deleteISH_EE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.198") align 8, ptr, i32 noundef, i32 noundef, ptr noundef, double noundef, i32 noundef, ptr noundef byval(%"class.v8::MemorySpan") align 8, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN12v8_inspector16V8ConsoleMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240)) unnamed_addr #4

declare ptr @_ZN2v87Isolate14ThrowExceptionENS_5LocalINS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v86String12StringEqualsENS_5LocalIS0_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr) local_unnamed_addr #2

declare void @_ZN12v8_inspector14InjectedScript10wrapObjectEN2v85LocalINS1_5ValueEEERKNS_8String16ERKNS_11WrapOptionsENS1_10MaybeLocalIS3_EEiPSt10unique_ptrINS_8protocol7Runtime12RemoteObjectESt14default_deleteISG_EE(ptr dead_on_unwind writable sret(%"class.v8_crdtp::DispatchResponse") align 8, ptr noundef nonnull align 8 dereferenceable(272), ptr, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24), ptr, i32 noundef, ptr noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN8v8_crdtp4json17ConvertCBORToJSONESt4spanIKhLm18446744073709551615EEPSt6vectorIhSaIhEE(ptr, i64, ptr noundef) local_unnamed_addr #2

declare void @_ZNK8v8_crdtp12Serializable9SerializeEv(ptr dead_on_unwind writable sret(%"class.std::vector.239") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @_ZN2v84JSON5ParseENS_5LocalINS_7ContextEEENS1_INS_6StringEEESt8optionalINS_12ScriptOriginEE(ptr, ptr, ptr noundef byval(%"class.std::optional.271") align 8) local_unnamed_addr #2

declare ptr @_ZN12v8_inspector10toV8StringEPN2v87IsolateERKNS_10StringViewE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEEjNS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, ptr) local_unnamed_addr #2

declare void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK2v85Value7IsInt32Ev(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare noundef i32 @_ZNK2v85Int325ValueEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare ptr @_ZN2v812api_internal23GetFunctionTemplateDataEPNS_7IsolateENS_5LocalINS_4DataEEE(ptr noundef, ptr) local_unnamed_addr #2

declare noundef ptr @_ZNK12v8_inspector15V8InspectorImpl10getContextEi(ptr noundef nonnull align 8 dereferenceable(520), i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN12v8_inspector16InspectedContext17getInjectedScriptEi(ptr noundef nonnull align 8 dereferenceable(288), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8optionalIN12v8_inspector8String16EEaSIRKS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES7_ISt6__and_IJSt9is_scalarIS1_ES8_IS1_NSt5decayISB_E4typeEEEEESt16is_constructibleIS1_JSB_EESt13is_assignableIRS1_SB_EEERS2_E4typeEOSB_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !14, !noundef !15
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.e, ptr %i.f, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 7 uses
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.j, 1       ; 3 uses
  %i.k = icmp ugt i64 %i.j, 7
  br i1 %i.k, label %bb.d, label %._crit_edge.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.j, 4611686018427387903
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #12
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = icmp eq i64 %i.j, 4611686018427387903
  br i1 %i.m, label %bb.g, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !16

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #12
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.n = add nuw nsw i64 %.idx.i.i.i.i.i, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #11 ; 2 uses
  store ptr %i.o, ptr %0, align 8
  store i64 %i.j, ptr %i.g, align 8
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i, %bb.c
  %i.p = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i.i.i.i ], [ %i.g, %bb.c ] ; 3 uses
  switch i64 %i.j, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt19_Optional_base_implIN12v8_inspector8String16ESt14_Optional_baseIS1_Lb0ELb0EEE12_M_constructIJRKS1_EEEvDpOT_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.q = load i16, ptr %i.h, align 2
  store i16 %i.q, ptr %i.p, align 2
  br label %_ZNSt19_Optional_base_implIN12v8_inspector8String16ESt14_Optional_baseIS1_Lb0ELb0EEE12_M_constructIJRKS1_EEEvDpOT_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.p, ptr align 2 %i.h, i64 %.idx.i.i.i.i.i, i1 false)
  br label %_ZNSt19_Optional_base_implIN12v8_inspector8String16ESt14_Optional_baseIS1_Lb0ELb0EEE12_M_constructIJRKS1_EEEvDpOT_.exit

_ZNSt19_Optional_base_implIN12v8_inspector8String16ESt14_Optional_baseIS1_Lb0ELb0EEE12_M_constructIJRKS1_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.h, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  store i16 0, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load i64, ptr %i.u, align 8
  store i64 %i.v, ptr %i.t, align 8
  store i8 1, ptr %i.a, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt19_Optional_base_implIN12v8_inspector8String16ESt14_Optional_baseIS1_Lb0ELb0EEE12_M_constructIJRKS1_EEEvDpOT_.exit, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 9 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 7, i64 %i.f          ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit
  %i.i = icmp ugt i64 %i.b, 4611686018427387903
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i64 %i.g, 1                  ; 2 uses
  %i.k = icmp samesign ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 4611686018427387903)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 3 uses
  %i.l = icmp samesign ugt i64 %.0, 4611686018427387902
  br i1 %i.l, label %bb.e, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit, !prof !16

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #12
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit: ; preds = %bb.d
  %i.m = shl nuw nsw i64 %.0, 1
  %i.n = add nuw nsw i64 %i.m, 2
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #11 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit
  %i.p = shl i64 %i.f, 1
  %i.q = add i64 %i.p, 2
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.q) #10
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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }
attributes #11 = { builtin nounwind allocsize(0) }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN12v8_inspector8protocol7Runtime13CustomPreview6createEv: argument 0"}
!7 = distinct !{!7, !"_ZN12v8_inspector8protocol7Runtime13CustomPreview6createEv"}
!8 = distinct !{null, null, null, null, null}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{null, null}
!12 = distinct !{null, null}
!13 = distinct !{!13, !10}
!14 = !{i8 0, i8 2}
!15 = !{}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
