Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/ObserverManager?download=true
inline.NumInlined: 5076
inline.NumDeleted: 2581
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZNKSt14__basic_futureIvE13_M_get_resultEv:bb.a

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14__basic_futureIvE6_ResetD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3668, !nonnull !316, !align !675 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !1900
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1825 ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !1825
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !1828
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !1829
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !169
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !call_target !1834, !inline_history !3666
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !169
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26, !call_target !1847, !inline_history !3666
  br label %_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !625
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !155
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit, !prof !672

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #26
  br label %_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit

_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EE5resetEv.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef align 8) local_unnamed_addr #21

declare noundef zeroext i1 @_ZNSt28__atomic_futex_unsigned_base19_M_futex_wait_untilEPjjbNSt6chrono8durationIlSt5ratioILl1ELl1EEEENS2_IlS3_ILl1ELl1000000000EEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i32 noundef, i1 noundef zeroext, i64, i64) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1825 ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !1828
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !1829
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !169
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !call_target !1834, !inline_history !75
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !169
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !call_target !1847, !inline_history !75
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !625
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !155
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !672

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN5folly15observer_detail15ObserverManager9Singleton13createManagerEv() #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #37 ; 3 uses
  invoke void @_ZN5folly15observer_detail15ObserverManager14UpdatesManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #38
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly9SingletonINS_15observer_detail15ObserverManager14UpdatesManagerENS_6detail10DefaultTagES5_EC2ESt8functionIFPS3_vEES7_IFvS8_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef align 8 %1, ptr noundef align 8 %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.377", align 8 ; 11 uses
  %4 = alloca %"class.std::function.379", align 8 ; 9 uses
  %5 = alloca %"class.std::function.379", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !802
  %.not.i.i.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail25singletonThrowNullCreatorERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) @_ZTIN5folly15observer_detail15ObserverManager14UpdatesManagerE) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_14SingletonVaultENS0_10DefaultTagENS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %_ZN5folly14SingletonVault9singletonINS_6detail10DefaultTagEEEPS0_v.exit, !prof !672

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS_14SingletonVaultENS0_10DefaultTagENS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly14SingletonVault9singletonINS_6detail10DefaultTagEEEPS0_v.exit

_ZN5folly14SingletonVault9singletonINS_6detail10DefaultTagEEEPS0_v.exit: ; preds = %bb.c, %bb.d
  %i.e = phi ptr [ %i.d, %bb.d ], [ %i.c, %bb.c ]
  %i.f = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_15SingletonHolderINS_15observer_detail15ObserverManager14UpdatesManagerEE4ImplINS0_10DefaultTagES9_EEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZN5folly9SingletonINS_15observer_detail15ObserverManager14UpdatesManagerENS_6detail10DefaultTagES5_E8getEntryEv.exit, !prof !672

bb.e:                                             ; preds = %_ZN5folly14SingletonVault9singletonINS_6detail10DefaultTagEEEPS0_v.exit
  %i.g = tail call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_15SingletonHolderINS_15observer_detail15ObserverManager14UpdatesManagerEE4ImplINS0_10DefaultTagES9_EEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly9SingletonINS_15observer_detail15ObserverManager14UpdatesManagerENS_6detail10DefaultTagES5_E8getEntryEv.exit

_ZN5folly9SingletonINS_15observer_detail15ObserverManager14UpdatesManagerENS_6detail10DefaultTagES5_E8getEntryEv.exit: ; preds = %_ZN5folly14SingletonVault9singletonINS_6detail10DefaultTagEEEPS0_v.exit, %bb.e
  %i.h = phi ptr [ %i.g, %bb.e ], [ %i.f, %_ZN5folly14SingletonVault9singletonINS_6detail10DefaultTagEEEPS0_v.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3057
  store ptr %i.k, ptr %i.i, align 8, !tbaa !3057
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !802  ; 2 uses
  %.not.i.i.not.i2 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.not.i2, label %_ZNSt8functionIFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEEC2EOS6_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5folly9SingletonINS_15observer_detail15ObserverManager14UpdatesManagerENS_6detail10DefaultTagES5_E8getEntryEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !757
  store ptr %i.l, ptr %i.m, align 8, !tbaa !802
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEEC2EOS6_.exit

_ZNSt8functionIFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEEC2EOS6_.exit: ; preds = %_ZN5folly9SingletonINS_15observer_detail15ObserverManager14UpdatesManagerENS_6detail10DefaultTagES5_E8getEntryEv.exit, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3059 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !3059
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !802  ; 3 uses
  %.not.i.i.not.i3 = icmp eq ptr %i.r, null
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br i1 %.not.i.i.not.i3, label %_ZN5folly9SingletonINS_15observer_detail15ObserverManager14UpdatesManagerENS_6detail10DefaultTagES5_E15getTeardownFuncESt8functionIFvPS3_EE.exit, label %_ZNSt8functionIFvPN5folly15observer_detail15ObserverManager14UpdatesManagerEEEC2EOS6_.exit.i

_ZNSt8functionIFvPN5folly15observer_detail15ObserverManager14UpdatesManagerEEEC2EOS6_.exit.i: ; preds = %_ZNSt8functionIFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEEC2EOS6_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !757
  store ptr %i.r, ptr %6, align 8, !tbaa !802
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  br label %_ZN5folly9SingletonINS_15observer_detail15ObserverManager14UpdatesManagerENS_6detail10DefaultTagES5_E15getTeardownFuncESt8functionIFvPS3_EE.exit

_ZN5folly9SingletonINS_15observer_detail15ObserverManager14UpdatesManagerENS_6detail10DefaultTagES5_E15getTeardownFuncESt8functionIFvPS3_EE.exit: ; preds = %_ZNSt8functionIFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEEC2EOS6_.exit, %_ZNSt8functionIFvPN5folly15observer_detail15ObserverManager14UpdatesManagerEEEC2EOS6_.exit.i
  %i.t = phi ptr [ %i.s, %_ZNSt8functionIFvPN5folly15observer_detail15ObserverManager14UpdatesManagerEEEC2EOS6_.exit.i ], [ %6, %_ZNSt8functionIFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEEC2EOS6_.exit ] ; 2 uses
  %.sink3.i = phi ptr [ %i.s, %_ZNSt8functionIFvPN5folly15observer_detail15ObserverManager14UpdatesManagerEEEC2EOS6_.exit.i ], [ %4, %_ZNSt8functionIFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEEC2EOS6_.exit ]
  %.sink2.i = phi ptr [ %i.p, %_ZNSt8functionIFvPN5folly15observer_detail15ObserverManager14UpdatesManagerEEEC2EOS6_.exit.i ], [ @_ZNSt17_Function_handlerIFvPN5folly15observer_detail15ObserverManager14UpdatesManagerEEZNS0_9SingletonIS3_NS0_6detail10DefaultTagES8_E15getTeardownFuncESt8functionIS5_EEUlS4_E_E9_M_invokeERKSt9_Any_dataOS4_, %_ZNSt8functionIFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEEC2EOS6_.exit ]
  %.sink.i = phi ptr [ %i.r, %_ZNSt8functionIFvPN5folly15observer_detail15ObserverManager14UpdatesManagerEEEC2EOS6_.exit.i ], [ @_ZNSt17_Function_handlerIFvPN5folly15observer_detail15ObserverManager14UpdatesManagerEEZNS0_9SingletonIS3_NS0_6detail10DefaultTagES8_E15getTeardownFuncESt8functionIS5_EEUlS4_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation, %_ZNSt8functionIFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEEC2EOS6_.exit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink3.i, i8 0, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.sink2.i, ptr %i.u, align 8, !tbaa !3059, !alias.scope !3671
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %.sink.i, ptr %i.v, align 8, !tbaa !802, !alias.scope !3671
  invoke void @_ZN5folly6detail15SingletonHolderINS_15observer_detail15ObserverManager14UpdatesManagerEE17registerSingletonESt8functionIFPS4_vEES6_IFvS7_EE(ptr noundef nonnull align 8 dereferenceable(2304) %i.h, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 %4)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %_ZN5folly9SingletonINS_15observer_detail15ObserverManager14UpdatesManagerENS_6detail10DefaultTagES5_E15getTeardownFuncESt8functionIFvPS3_EE.exit
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !802  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = invoke noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @__clang_call_terminate(ptr %i.z) #39
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.g, %bb.h
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !802 ; 2 uses
  %.not.i4 = icmp eq ptr %i.aa, null
  br i1 %.not.i4, label %_ZNSt14_Function_baseD2Ev.exit5, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit5 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #39
  unreachable

_ZNSt14_Function_baseD2Ev.exit5:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !802 ; 2 uses
  %.not.i6 = icmp eq ptr %i.af, null
  br i1 %.not.i6, label %_ZNSt14_Function_baseD2Ev.exit7, label %bb.l

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit5
  %i.ag = invoke noundef zeroext i1 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit7 unwind label %bb.m ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #39
  unreachable

_ZNSt14_Function_baseD2Ev.exit7:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit5, %bb.l
  %i.aj = load atomic ptr, ptr @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_15SingletonHolderINS_15observer_detail15ObserverManager14UpdatesManagerEE4ImplINS0_10DefaultTagES9_EEvNS1_9ArgCreateILb0EEEEERT1_vE3arg acquire, align 8 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i8, label %bb.n, label %_ZN5folly9SingletonINS_15observer_detail15ObserverManager14UpdatesManagerENS_6detail10DefaultTagES5_E8getEntryEv.exit9, !prof !672

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit7
  %i.ak = call noundef ptr @_ZN5folly6detail30StaticSingletonManagerWithRtti7create_ILb0EEEPvRNS1_3ArgE(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN5folly6detail30StaticSingletonManagerWithRtti6globalINS0_15SingletonHolderINS_15observer_detail15ObserverManager14UpdatesManagerEE4ImplINS0_10DefaultTagES9_EEvNS1_9ArgCreateILb0EEEEERT1_vE3arg)
  br label %_ZN5folly9SingletonINS_15observer_detail15ObserverManager14UpdatesManagerENS_6detail10DefaultTagES5_E8getEntryEv.exit9

_ZN5folly9SingletonINS_15observer_detail15ObserverManager14UpdatesManagerENS_6detail10DefaultTagES5_E8getEntryEv.exit9: ; preds = %_ZNSt14_Function_baseD2Ev.exit7, %bb.n
  %i.al = phi ptr [ %i.ak, %bb.n ], [ %i.aj, %_ZNSt14_Function_baseD2Ev.exit7 ]
  call void @_ZN5folly14SingletonVault17registerSingletonEPNS_6detail19SingletonHolderBaseE(ptr noundef nonnull align 8 dereferenceable(425) %i.e, ptr noundef nonnull %i.al)
  ret void

bb.o:                                             ; preds = %_ZN5folly9SingletonINS_15observer_detail15ObserverManager14UpdatesManagerENS_6detail10DefaultTagES5_E15getTeardownFuncESt8functionIFvPS3_EE.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !802 ; 2 uses
  %.not.i10 = icmp eq ptr %i.an, null
  br i1 %.not.i10, label %_ZNSt14_Function_baseD2Ev.exit11, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit11 unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #39
  unreachable

_ZNSt14_Function_baseD2Ev.exit11:                 ; preds = %bb.o, %bb.p
  %i.ar = load ptr, ptr %i.t, align 8, !tbaa !802 ; 2 uses
  %.not.i12 = icmp eq ptr %i.ar, null
  br i1 %.not.i12, label %_ZNSt14_Function_baseD2Ev.exit13, label %bb.r

bb.r:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit11
  %i.as = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit13 unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #39
  unreachable

_ZNSt14_Function_baseD2Ev.exit13:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit11, %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !802 ; 2 uses
  %.not.i14 = icmp eq ptr %i.aw, null
  br i1 %.not.i14, label %_ZNSt14_Function_baseD2Ev.exit15, label %bb.t

bb.t:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit13
  %i.ax = invoke noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit15 unwind label %bb.u ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #39
  unreachable

_ZNSt14_Function_baseD2Ev.exit15:                 ; preds = %_ZNSt14_Function_baseD2Ev.exit13, %bb.t
  resume { ptr, i32 } %i.am
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt17_Function_handlerIFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEPS5_E9_M_invokeERKSt9_Any_data(ptr noundef nonnull align 8 dereferenceable(16) %0) #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !645
  %i.b = tail call noundef ptr %i.a(), !inline_history !3672
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEPS5_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIPFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEE10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit [
    i32 0, label %_ZNSt14_Function_base13_Base_managerIPFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEE10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit.sink.split
    i32 1, label %bb.b
    i32 2, label %.sink.split.i
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNSt14_Function_base13_Base_managerIPFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEE10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit.sink.split

.sink.split.i:                                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !645
  br label %_ZNSt14_Function_base13_Base_managerIPFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEE10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit.sink.split

_ZNSt14_Function_base13_Base_managerIPFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEE10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit.sink.split: ; preds = %bb.a, %bb.b, %.sink.split.i
  %.sink = phi ptr [ %i.a, %.sink.split.i ], [ %1, %bb.b ], [ @_ZTIPFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvE, %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !645
  br label %_ZNSt14_Function_base13_Base_managerIPFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEE10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIPFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEE10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit: ; preds = %_ZNSt14_Function_base13_Base_managerIPFPN5folly15observer_detail15ObserverManager14UpdatesManagerEvEE10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit.sink.split, %bb.a
  ret i1 false
}

; Function Attrs: noreturn
declare void @_ZN5folly6detail25singletonThrowNullCreatorERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail15SingletonHolderINS_15observer_detail15ObserverManager14UpdatesManagerEE17registerSingletonESt8functionIFPS4_vEES6_IFvS7_EE(ptr noundef nonnull align 8 dereferenceable(2304) %0, ptr noundef align 8 %1, ptr noundef align 8 %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function.379", align 16 ; 9 uses
  %4 = alloca %"class.std::function.377", align 16 ; 9 uses
  %5 = alloca %"class.folly::detail::TypeDescriptor", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #40
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load atomic i32, ptr %i.c seq_cst, align 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3675)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load <2 x i64>, ptr %i.e, align 8, !tbaa !1760, !noalias !3675
  store <2 x i64> %i.f, ptr %5, align 16, !tbaa !1760, !alias.scope !3675
  invoke void @_ZN5folly6detail39singletonWarnDoubleRegistrationAndAbortERKNS0_14TypeDescriptorE(ptr noundef nonnull align 8 dereferenceable(16) %5) #40
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.h = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 0 uses
end_hunk_0
